#ifndef _BOARD_VIEW_H
#define _BOARD_VIEW_H

#include "dolphin.h"

void BoardViewOverheadExec(s32 arg0);
void BoardViewFocusGetPos(Vec *arg0);
void BoardViewFocusSet(Vec *arg0, u16 arg1);
void BoardViewMoveStart(Vec *arg0, Vec *arg1, u16 arg2);
BOOL BoardViewMoveCheck(void);
void BoardViewMoveEnd(void);
void BoardViewWait(void);
void BoardViewMapExec(s32 arg0);

#endif
