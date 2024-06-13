#ifndef _GAME_FLAG_H
#define _GAME_FLAG_H

#include "dolphin/types.h"

#define FLAG_ID_MAKE(group, index) (((group) << 16)|(index))

s32 _CheckFlag(u32 flag);
void _SetFlag(u32 flag);
void _ClearFlag(u32 flag);
void _InitFlag(void);

#endif