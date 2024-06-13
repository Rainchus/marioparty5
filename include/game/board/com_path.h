#ifndef _BOARD_COM_PATH_H
#define _BOARD_COM_PATH_H

#include "dolphin/types.h"

s16 BoardComPathShortcutLenGet(s16 space, u32 type, s32 block_pipe);
s16 BoardComPathBestGet(s16 space);
s16 BoardComPathLenGet(s16 space, s16 space_other);
s16 BoardComPathBestGetFlag(s16 space, u32 flag, s16 len);

#endif
