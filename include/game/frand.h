#ifndef _GAME_FRAND_H
#define _GAME_FRAND_H

#include "dolphin/types.h"

#define frandBool() (((s32)frand() & 0x1))
#define frandu8() (((u32)frand() & 0xFF))
#define frand8() (((s32)frand() & 0xFF))
#define frandmods(range) ((s32)frand() % (range))
#define frand16() (((s32)frand() & 0xFFFF))
#define frandmod31(range) (((s32)frand() & 0x7FFFFFFF) % (range))

u32 frand(void);
f32 frandf(void);
u32 frandmod(u32 arg0);

#endif