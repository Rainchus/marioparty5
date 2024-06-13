#ifndef REL_OPTION_H
#define REL_OPTION_H

#include "game/object.h"

#include "dolphin/types.h"

typedef struct {
    /* 0x00 */ Process *unk00;
    /* 0x04 */ s16 unk04;
    /* 0x06 */ char unk06[2];
    /* 0x08 */ s32 unk08;
    /* 0x0C */ s32 unk0C;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ u32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
} UnkWindowDataStruct; // Size 0x24

void fn_1_160(s16 arg0, s32 arg1, s32 arg2);
s32 fn_1_550(u16 arg0);
s32 fn_1_584(u16 arg0);
s32 fn_1_5B8(u16 arg0);

omObjData *fn_1_7F8(void);
void fn_1_A3C(omObjData *arg0);
void fn_1_A6C(omObjData *arg0, float arg1, float arg2, float arg3, s32 arg4);
void fn_1_AF0(omObjData *arg0, float arg1, float arg2, float arg3, s32 arg4);
void fn_1_B74(omObjData *arg0, float arg1, float arg2, float arg3, s32 arg4);
float fn_1_BF8(omObjData *arg0);
float fn_1_C28(omObjData *arg0);
void fn_1_C88(omObjData *arg0, float *arg1, float *arg2, float *arg3);
s32 fn_1_CB8(omObjData *arg0);

omObjData *fn_1_15A4(void);
void fn_1_1798(omObjData *arg0);
void fn_1_1A2C(omObjData *arg0, s32 arg1);
s32 fn_1_1A70(omObjData *arg0);

omObjData *fn_1_21F8(void);
void fn_1_241C(omObjData *arg0);
void fn_1_2508(omObjData *arg0, float arg1, float arg2, s32 arg3);

omObjData *fn_1_2E04(void);
void fn_1_2F4C(omObjData *arg0);

omObjData *fn_1_3158(void);
void fn_1_322C(omObjData *arg0);
void fn_1_3290(omObjData *arg0, s32 arg1);
s32 fn_1_32D4(omObjData *arg0);
void fn_1_3D54(omObjData *arg0);
void fn_1_3E1C(omObjData *arg0);
s32 fn_1_3ED0(omObjData *arg0);

omObjData *fn_1_4028(void);
void fn_1_42DC(omObjData *arg0);
void fn_1_4388(omObjData *arg0, s32 arg1);
s32 fn_1_43CC(omObjData *arg0);

omObjData *fn_1_80E4(void);
void fn_1_825C(omObjData *arg0);
void fn_1_82B0(omObjData *arg0, s32 arg1);
s32 fn_1_82F4(omObjData *arg0);

UnkWindowDataStruct *fn_1_A44C(s32 arg0);
void fn_1_A6AC(UnkWindowDataStruct *arg0);
void fn_1_A6EC(UnkWindowDataStruct *arg0);
void fn_1_A704(UnkWindowDataStruct *arg0);
void fn_1_A71C(UnkWindowDataStruct *arg0, s32 arg1);
void fn_1_A7B0(UnkWindowDataStruct *arg0, float arg1, float arg2);
void fn_1_A7F0(UnkWindowDataStruct *arg0);
void fn_1_A828(UnkWindowDataStruct *arg0);
void fn_1_A880(UnkWindowDataStruct *arg0, s32 arg1);

extern Process *lbl_1_bss_8;
extern omObjData *lbl_1_bss_10;
extern omObjData *lbl_1_bss_18;
extern omObjData *lbl_1_bss_20;
extern omObjData *lbl_1_bss_28;
extern omObjData *lbl_1_bss_30;
extern omObjData *lbl_1_bss_38;
extern omObjData *lbl_1_bss_40;

#endif
