#ifndef REL_W01_H
#define REL_W01_H

#include "dolphin/types.h"

enum {
    MAPOBJ_MAX = 33
};

typedef struct {
    /* 0x00 */ struct {
        u8 unk00_field0 : 1;
    };
    /* 0x01 */ s8 unk01[2];
} UnkBoardDataStruct; // Size unknown

extern void fn_1_9D00(s32 arg0);
extern void fn_1_9DD8(void);

extern void fn_1_D740(s16 *arg0);
extern void fn_1_DD84(void);
extern void fn_1_DE94(void);

extern s16 lbl_1_bss_6C4[MAPOBJ_MAX];
extern UnkBoardDataStruct *lbl_1_bss_0;

#endif
