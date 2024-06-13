#ifndef _GAME_THPDRAW_H
#define _GAME_THPDRAW_H

#include "dolphin.h"

void THPGXRestore(void);
void THPGXYuv2RgbSetup(GXRenderModeObj *obj, GXColor *arg1, Mtx arg2);
void THPGXYuv2RgbDraw(u32 *yImage, u32 *uImage, u32 *vImage, s16 x, s16 y, s16 texWidth, s16 texHeight, s16 polyWidth, s16 polyHeight);

#endif
