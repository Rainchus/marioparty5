#ifndef _GAME_PERF_H
#define _GAME_PERF_H

#include "dolphin.h"

void HuPerfInit(void);
s32 HuPerfCreate(char *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4);
void HuPerfZero(void);
void HuPerfBegin(s32 arg0);
void HuPerfEnd(s32 arg0);

#endif
