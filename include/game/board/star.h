#ifndef _BOARD_STAR_H
#define _BOARD_STAR_H

#include "game/board/space.h"

#include "dolphin.h"

void BoardStarHostSet(s16 arg0);
s16 BoardStarHostMdlGet(void);
void BoardStarExec(s32 arg0, s32 arg1);
void BoardStarGive(s32 arg0, Vec *arg1);
void BoardStarShowNext(s32 arg0);

extern s32 boardStarSndTbl[];

#endif
