#include "game/perf.h"

#define PERF_TOKEN_BEGIN 0xFF00
#define PERF_TOKEN_END 0xFF01

typedef struct PerfWork_s {
    GXColor color;
    OSTime tokenEnd;
    OSTime tokenBegin;
    OSStopwatch sw;
    s16 useF;
} PERFWORK;

static void DSCallbackFunc(u16 token);

static OSStopwatch Ssw;
static PERFWORK perf[HUPERF_MAX];

static u32 met0;
static u32 met1;
static u32 vcheck;
static u32 vmiss;
static u32 vstall;
static u32 cp_req;
static u32 tc_req;
static u32 cpu_rd_req;
static u32 cpu_wr_req;
static u32 dsp_req;
static u32 io_req;
static u32 vi_req;
static u32 pe_req;
static u32 rf_req;
static u32 fi_req;
static u32 top_pixels_in;
static u32 top_pixels_out;
static u32 bot_pixels_in;
static u32 bot_pixels_out;
static u32 clr_pixels_in;
static u32 total_copy_clks;
static s16 tokenEndF;
static u8 metf;

void HuPerfInit(void) {
    s32 i;

    for (i=0; i<HUPERF_MAX; i++) {
        perf[i].useF = FALSE;
    }
    HuPerfCreate("CPU", 0, 255, 0, 255);
    HuPerfCreate("DRAW", 255, 0, 0, 255);
    GXSetDrawSyncCallback(DSCallbackFunc);
    total_copy_clks = 0;
}

s32 HuPerfCreate(char *name, u8 r, u8 g, u8 b, u8 a) {
    s32 i;

    for (i=0; i<HUPERF_MAX; i++) {
        if (perf[i].useF == FALSE) {
            break;
        }
    }
    if (i == HUPERF_MAX) {
        return -1;
    }
    OSInitStopwatch(&perf[i].sw, name);
    perf[i].tokenEnd = 0;
    perf[i].useF = TRUE;
    perf[i].color.r = r;
    perf[i].color.g = g;
    perf[i].color.b = b;
    perf[i].color.a = a;
    return i;
}

void HuPerfZero(void) {
    OSStopStopwatch(&Ssw);
    OSResetStopwatch(&Ssw);
    OSStartStopwatch(&Ssw);
}

void HuPerfBegin(s32 id)
{
    if (id == HUPERF_DRAW) {
        GXSetDrawSync(PERF_TOKEN_BEGIN);
        return;
    }
    OSStartStopwatch(&perf[id].sw);
    perf[id].tokenBegin = OSCheckStopwatch(&Ssw);
}

void HuPerfEnd(s32 id)
{
    if (id == HUPERF_DRAW) {
        GXSetDrawSync(PERF_TOKEN_END);
        return;
    }
    perf[id].tokenEnd = OSCheckStopwatch(&perf[id].sw);
    OSStopStopwatch(&perf[id].sw);
    OSResetStopwatch(&perf[id].sw);
}

static void DSCallbackFunc(u16 token) {
    switch (token) {
        case PERF_TOKEN_BEGIN:
            OSStartStopwatch(&perf[1].sw);
            perf[1].tokenBegin = OSCheckStopwatch(&Ssw);
            tokenEndF = 0;
            if (metf == 1) {
                GXClearGPMetric();
                GXClearVCacheMetric();
                GXClearMemMetric();
                GXClearPixMetric();
            }
            break;

        case PERF_TOKEN_END:
            if (tokenEndF == 0) {
                tokenEndF = 1;
                perf[1].tokenEnd = OSCheckStopwatch(&perf[1].sw);
                OSStopStopwatch(&perf[1].sw);
                OSResetStopwatch(&perf[1].sw);
                if (metf == 1) {
                    GXReadGPMetric(&met0, &met1);
                    GXReadVCacheMetric(&vcheck, &vmiss, &vstall);
                    GXReadMemMetric(&cp_req, &tc_req, &cpu_rd_req, &cpu_wr_req, &dsp_req, &io_req, &vi_req, &pe_req, &rf_req, &fi_req);
                    GXReadPixMetric(&top_pixels_in, &top_pixels_out, &bot_pixels_in, &bot_pixels_out, &clr_pixels_in, &total_copy_clks);
                }
            }
            break;
    }
}
