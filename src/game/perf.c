#include "game/perf.h"

typedef struct {
    /* 0x00 */ u8 unk00;
    /* 0x01 */ u8 unk01;
    /* 0x02 */ u8 unk02;
    /* 0x03 */ u8 unk03;
    /* 0x04 */ char unk04[4];
    /* 0x08 */ s64 unk08;
    /* 0x10 */ s64 unk10;
    /* 0x18 */ OSStopwatch unk18;
    /* 0x50 */ s16 unk50;
    /* 0x52 */ char unk52[6];
} UnknownPerfStruct; // Size 0x58

static void DSCallbackFunc(u16 arg0);

static OSStopwatch Ssw;
static UnknownPerfStruct perf[10];

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

    for (i = 0; i < 10; i++) {
        perf[i].unk50 = 0;
    }
    HuPerfCreate("CPU", 0, 0xFF, 0, 0xFF);
    HuPerfCreate("DRAW", 0xFF, 0, 0, 0xFF);
    GXSetDrawSyncCallback(DSCallbackFunc);
    total_copy_clks = 0;
}

s32 HuPerfCreate(char *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    UnknownPerfStruct *temp_r3;
    s32 i;

    for (i = 0; i < 10; i++) {
        if (perf[i].unk50 == 0) {
            break;
        }
    }
    if (i == 10) {
        return -1;
    }
    OSInitStopwatch(&perf[i].unk18, arg0);
    perf[i].unk08 = 0;
    perf[i].unk50 = 1;
    perf[i].unk00 = arg1;
    perf[i].unk01 = arg2;
    perf[i].unk02 = arg3;
    perf[i].unk03 = arg4;
    return i;
}

void HuPerfZero(void) {
    OSStopStopwatch(&Ssw);
    OSResetStopwatch(&Ssw);
    OSStartStopwatch(&Ssw);
}

void HuPerfBegin(s32 arg0) {
    UnknownPerfStruct *temp_r5;

    if (arg0 == 1) {
        GXSetDrawSync(0xFF00);
        return;
    }
    OSStartStopwatch(&perf[arg0].unk18);
    perf[arg0].unk10 = OSCheckStopwatch(&Ssw);
}

void HuPerfEnd(s32 arg0) {
    UnknownPerfStruct *temp_r5;

    if (arg0 == 1) {
        GXSetDrawSync(0xFF01);
        return;
    }
    perf[arg0].unk08 = OSCheckStopwatch(&perf[arg0].unk18);
    OSStopStopwatch(&perf[arg0].unk18);
    OSResetStopwatch(&perf[arg0].unk18);
}

static void DSCallbackFunc(u16 arg0) {
    switch (arg0) {
        case 0xFF00:
            OSStartStopwatch(&perf[1].unk18);
            perf[1].unk10 = OSCheckStopwatch(&Ssw);
            tokenEndF = 0;
            if (metf == 1) {
                GXClearGPMetric();
                GXClearVCacheMetric();
                GXClearMemMetric();
                GXClearPixMetric();
            }
            break;
        case 0xFF01:
            if (tokenEndF == 0) {
                tokenEndF = 1;
                perf[1].unk08 = OSCheckStopwatch(&perf[1].unk18);
                OSStopStopwatch(&perf[1].unk18);
                OSResetStopwatch(&perf[1].unk18);
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
