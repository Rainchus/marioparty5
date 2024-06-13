#ifndef _MG_SETUP_H
#define _MG_SETUP_H

#include "dolphin/types.h"

void BoardMGSetupExec(void);
void BoardMGSetupPlayClear(void);
s32 BoardMGSetupPlaySearch(s32, s16);
void BoardMGSetupPlayPush(s32, s16);
void BoardMGSetupTutorialExec(void);

#endif
