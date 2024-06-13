#ifndef _BOARD_COM_H
#define _BOARD_COM_H

#include "dolphin.h"

void BoardComKeySetLeft(void);
void BoardComKeySetRight(void);
void BoardComKeySetUp(void);
void BoardComKeySetDown(void);
s8 BoardComPreferItemGet(s32 arg0, s8 *arg1, s8 arg2);
s8 BoardComPreferItemCheck(s32 arg0, s8 arg1, s8 arg2, s8 arg3);
s32 BoardComItemWeightGet(s32 arg0, s32 arg1);
s32 BoardComUseItemSlotGet(s32 arg0);
s32 BoardComUseItemSet(s32 arg0, s32 arg1);
BOOL BoardComUseItemCheck(s32 arg0);
s32 BoardComJunctionInputGet(s32 arg0, Vec *arg1, s32 arg2, float *arg3);
s32 BoardComFarPlayerFind(void);

#endif
