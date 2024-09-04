#ifndef _GAME_PERF_H
#define _GAME_PERF_H

#include "dolphin.h"

#define HUPERF_MAX 10
#define HUPERF_CPU 0
#define HUPERF_DRAW 1
#define HUPERF_USR0 2
#define HUPERF_USR1 3

void HuPerfInit(void);
s32 HuPerfCreate(char *name, u8 r, u8 g, u8 b, u8 a);
void HuPerfZero(void);
void HuPerfBegin(s32 id);
void HuPerfEnd(s32 id);

#endif
