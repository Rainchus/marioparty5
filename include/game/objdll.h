#ifndef _GAME_OBJDLL_H
#define _GAME_OBJDLL_H

#include "game/object.h"

void omDLLDBGOut(void);
void omDLLInit(OVLTBL *ovlList);
s32 omDLLStart(s16 dllNo, s16 reloadF);
void omDLLNumEnd(s16 dllNo, s16 reloadF);

#endif