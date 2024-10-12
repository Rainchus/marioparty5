#ifndef _BOARD_STATUS_H
#define _BOARD_STATUS_H

#include "dolphin/types.h"

#define STATUS_COLOR_GRAY 0
#define STATUS_COLOR_BLUE 1
#define STATUS_COLOR_RED 2
#define STATUS_COLOR_GREEN 3

void MBStatusInit(void);
void MBStatusDispForceSetAll(BOOL dispF);
void MBStatusColorAllSet(s32 color);
void MBStatusClose(void);

#endif