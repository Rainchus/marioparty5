#ifndef _BOARD_CHAR_WHEEL_H
#define _BOARD_CHAR_WHEEL_H

#include "dolphin/types.h"

s32 BoardCharWheelInit(s32 arg0, s32 arg1);
BOOL BoardCharWheelCheck(void);
void BoardCharWheelWait(void);
s32 BoardCharWheelResultGet(void);
void BoardCharWheelSpeedSet(float arg0);
void BoardCharWheelTargetSet(s16 arg0);

#endif
