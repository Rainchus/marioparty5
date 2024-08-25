#include "game/init.h"
#include "game/fault.h"
#include "dolphin/os.h"
#include "dolphin/gx.h"
#include "dolphin/dvd.h"
#include "dolphin/vi.h"
#include "dolphin/pad.h"

#define FIFO_SIZE 0x80000

struct memory_info {
    void *start;
    void *end;
};

extern void HuAudInit();
extern void HuCardInit();
extern void HuARInit();
extern u32 frand();

static GXRenderModeObj rmodeobj;

static BOOL FirstFrame = TRUE;
GXRenderModeObj *RenderMode;
OSHeapHandle currentHeapHandle;
static void *DefaultFifo;
static GXFifoObj *DefaultFifoObj;
void *DemoFrameBuffer1;
void *DemoFrameBuffer2;
void *DemoCurrentBuffer;
u32 minimumVcount;
float minimumVcountf;
u32 worstVcount;
static BOOL DemoStatEnable;


static void InitRenderMode(GXRenderModeObj *mode);
static void InitMem();
static void InitGX();
static void InitVI();
static void SwapBuffers();
static void LoadMemInfo();

void HuSysInit(GXRenderModeObj *mode)
{
    u32 rndSeed;
    OSInit();
    DVDInit();
    VIInit();
    PADInit();
    if(VIGetTvFormat() != 2 && OSGetProgressiveMode() == 1 && VIGetDTVStatus() == 1) {
        mode = &GXNtsc480Prog;
    }
    InitRenderMode(mode);
    InitMem();
    VIConfigure(RenderMode);
    VIConfigurePan(0, 0, 640, 480);
    DefaultFifo = OSAlloc(FIFO_SIZE);
    DefaultFifoObj = GXInit(DefaultFifo, FIFO_SIZE);
    InitGX();
    InitVI();
    HuFaultInitXfbDirectDraw(RenderMode);
    HuFaultSetXfbAddress(0, DemoFrameBuffer1);
    HuFaultSetXfbAddress(1, DemoFrameBuffer2);
    HuDvdErrDispInit(RenderMode, DemoFrameBuffer1, DemoFrameBuffer2);
    rndSeed = frand();
    HuMemInitAll();
    HuAudInit();
    HuARInit();
    minimumVcount = minimumVcountf = 1.0f;
    worstVcount = 0;
    OSInitFastCast();
    HuCardInit();
}

static void InitRenderMode(GXRenderModeObj *mode)
{
    if(mode != NULL) {
        RenderMode = mode;
        return;
    }
    switch(VIGetTvFormat()) {
        case 0:
            RenderMode = &GXNtsc480IntDf;
            break;
            
        case 1:
            RenderMode = &GXPal528IntDf;
            break;
            
        case 2:
            RenderMode = &GXMpal480IntDf;
            break;
            
        default:
            OSPanic("init.c", 176, "DEMOInit: invalid TV format\n");
            break;
    }
    GXAdjustForOverscan(RenderMode, &rmodeobj, 0, 16);
    RenderMode = &rmodeobj;
}

static void InitGX()
{
    GXSetViewport(0, 0, RenderMode->fbWidth, RenderMode->xfbHeight, 0, 1);
    GXSetScissor(0, 0, RenderMode->fbWidth, RenderMode->efbHeight);
    GXSetDispCopySrc(0, 0, RenderMode->fbWidth, RenderMode->efbHeight);
    GXSetDispCopyDst(RenderMode->fbWidth, RenderMode->xfbHeight);
    OSReport("%D\n", RenderMode->xfbHeight);
    GXSetDispCopyYScale(GXGetYScaleFactor(RenderMode->efbHeight, RenderMode->xfbHeight));
    GXSetCopyFilter(RenderMode->aa, RenderMode->sample_pattern, GX_TRUE, RenderMode->vfilter);
    if(RenderMode->aa) {
        GXSetPixelFmt(GX_PF_RGB565_Z16, GX_ZC_LINEAR);
    } else {
        GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
    }
    GXCopyDisp(DemoCurrentBuffer, GX_TRUE);
    GXSetDispCopyGamma(GX_GM_1_0);
}

static void InitMem()
{
    void *arenaLo = OSGetArenaLo();
    void *arenaHi = OSGetArenaHi();
    u32 fbSize = (u16)(((u16)RenderMode->fbWidth+15) & ~15)*RenderMode->xfbHeight*2;
    u32 *fb1;
    u32 *fb2;
    u32 i;
    DemoFrameBuffer1 = (void *)OSRoundUp32B((u32)arenaLo);
    DemoFrameBuffer2 = (void *)OSRoundUp32B((u32)DemoFrameBuffer1+fbSize);
    DemoCurrentBuffer = DemoFrameBuffer2;
    fb1 = DemoFrameBuffer1;
    fb2 = DemoFrameBuffer2;
    for(i=0; i<fbSize/4; i++, fb1++, fb2++) {
        *fb1 = *fb2 = 0x800080;
    }
    DCStoreRangeNoSync(DemoFrameBuffer1, fbSize);
    DCStoreRangeNoSync(DemoFrameBuffer2, fbSize);
    arenaLo = (void *)OSRoundUp32B((u32)DemoFrameBuffer2+fbSize);
    OSSetArenaLo(arenaLo);
    if(OSGetConsoleType() == OS_CONSOLE_DEVHW1 && OSGetPhysicalMemSize() != 0x400000 && OSGetConsoleSimulatedMemSize() < 0x1800000) {
        LoadMemInfo();
    } else {
        arenaLo = OSGetArenaLo();
        arenaHi = OSGetArenaHi();
        arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
        OSSetArenaLo(arenaLo);
        arenaLo = (void *)OSRoundUp32B((u32)arenaLo);
        arenaHi = (void *)OSRoundDown32B((u32)arenaHi);
        OSSetCurrentHeap(currentHeapHandle = OSCreateHeap(arenaLo, arenaHi));
        arenaLo = arenaHi;
        OSSetArenaLo(arenaLo);
    }
}

static void InitVI()
{
    u32 interlace;
    VISetNextFrameBuffer(DemoFrameBuffer1);
    DemoCurrentBuffer = DemoFrameBuffer2;
    VIFlush();
    VIWaitForRetrace();
    interlace = RenderMode->viTVmode & 0x1;
    if(interlace) {
        VIWaitForRetrace();
    }
}

void HuSysBeforeRender()
{
    if(RenderMode->field_rendering) {
        GXSetViewportJitter(0, 0, RenderMode->fbWidth, RenderMode->xfbHeight, 0, 1, VIGetNextField());
    } else {
        GXSetViewport(0, 0, RenderMode->fbWidth, RenderMode->xfbHeight, 0, 1);
    }
    GXInvalidateVtxCache();
    GXInvalidateTexAll();
}

void HuSysDoneRender(s32 retrace_count)
{
    s32 retrace_dist;
    if(DemoStatEnable) {
        GXDrawDone();
        DEMOUpdateStats(1);
        DEMOPrintStats();
        GXDrawDone();
        DEMOUpdateStats(0);
    }
    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetColorUpdate(GX_TRUE);
    GXDrawDone();
    GXCopyDisp(DemoCurrentBuffer, GX_TRUE);
    if(minimumVcount != 0) {
        retrace_dist = VIGetRetraceCount()-retrace_count;
        if(worstVcount < retrace_dist) {
            worstVcount = retrace_dist;
        }
        while(VIGetRetraceCount()-retrace_count < minimumVcount-1) {
            VIWaitForRetrace();
        }
    }
    SwapBuffers();
}

static void SwapBuffers()
{
    VISetNextFrameBuffer(DemoCurrentBuffer);
    if(FirstFrame) {
        VISetBlack(GX_FALSE);
        FirstFrame = FALSE;
    }
    VIFlush();
    VIWaitForRetrace();
    if(DemoCurrentBuffer == DemoFrameBuffer1) {
        DemoCurrentBuffer = DemoFrameBuffer2;
    } else {
        DemoCurrentBuffer = DemoFrameBuffer1;
    }
}

static void LoadMemInfo()
{
    u32 size;
    u32 copy_size;
    u32 offset;
    u32 entries;
    u32 i;
    void *arenaLo;
    void *arenaHi;
    void *alloc_max;
    void *alloc_min;
    
    struct memory_info *buf_ptr;
    DVDFileInfo file;
    char buf[240];
    
    OSReport("\nNow, try to find memory info file...\n\n");
    if(!DVDOpen("/meminfo.bin", &file)) {
        OSReport("\nCan't find memory info file. Use /XXX toolname/ to maximize available\n");
        OSReport("memory space. For now, we only use the first %dMB.\n", (OSGetConsoleSimulatedMemSize()/1024)/1024);
        arenaLo = OSGetArenaLo();
        arenaHi = OSGetArenaHi();
        arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
        OSSetArenaLo(arenaLo);
        arenaLo = (void *)OSRoundUp32B((u32)arenaLo);
        arenaHi = (void *)OSRoundDown32B((u32)arenaHi);
        OSSetCurrentHeap(OSCreateHeap(arenaLo, arenaHi));
        arenaLo = arenaHi;
        OSSetArenaLo(arenaLo);
    } else {
        buf_ptr = (struct memory_info *)OSRoundUp32B((u32)buf);
        alloc_max = OSGetArenaHi();
        alloc_min = (void *)(OSGetConsoleSimulatedMemSize()+0x80000000);
        OSSetArenaHi((void *)(OSGetPhysicalMemSize()+0x80000000));
        arenaLo = OSGetArenaLo();
        arenaHi = OSGetArenaHi();
        arenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
        OSSetArenaLo(arenaLo);
        arenaLo = (void *)OSRoundUp32B((u32)arenaLo);
        arenaHi = (void *)OSRoundDown32B((u32)arenaHi);
        OSSetCurrentHeap(OSCreateHeap(arenaLo, arenaHi));
        arenaLo = arenaHi;
        OSSetArenaLo(arenaLo);
        OSAllocFixed(&alloc_max, &alloc_min);
        size = file.length;
        offset = 0;
        while(size) {
            OSReport("loop\n");
            copy_size = (size < 32) ? size : 32;
            if(DVDRead(&file, buf_ptr, OSRoundUp32B(copy_size), offset) < 0) {
                OSPanic("init.c", 595, "An error occurred when issuing read to /meminfo.bin\n");
            }
            entries = copy_size/sizeof(struct memory_info);
            for(i=0; i<entries; i++) {
                OSReport("start: 0x%08x, end: 0x%08x\n", buf_ptr[i].start, buf_ptr[i].end);
                OSAllocFixed(&buf_ptr[i].start, &buf_ptr[i].end);
                OSReport("Removed 0x%08x - 0x%08x from the current heap\n", buf_ptr[i].start, (u32)buf_ptr[i].end-1);
            }
            size -= copy_size;
            offset += copy_size;
        }
        DVDClose(&file);
        OSDumpHeap(__OSCurrHeap);
    }
}