#ifndef _GAME_ESPRITE_H
#define _GAME_ESPRITE_H

#include "dolphin.h"

void espInit(void);
s16 espEntry(s32 arg0, s16 arg1, s16 arg2);
void espKill(s16 arg0);
s16 espGrpIDGet(void);
void espDispOn(s16 arg0);
void espDispOff(s16 arg0);
void espAttrSet(s16 arg0, u16 arg1);
void espAttrReset(s16 arg0, u16 arg1);
void espPosSet(s16 arg0, float arg1, float arg2);
void espScaleSet(s16 arg0, float arg1, float arg2);
void espZRotSet(s16 arg0, float arg1);
void espTPLvlSet(s16 arg0, float arg1);
void espColorSet(s16 arg0, u8 arg1, u8 arg2, u8 arg3);
void espSpeedSet(s16 arg0, float arg1);
void espBankSet(s16 arg0, s16 arg1);
void espDrawNoSet(s16 arg0, s16 arg1);
void espPriSet(s16 arg0, s16 arg1);

#endif
