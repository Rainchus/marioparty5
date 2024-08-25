#ifndef _GAME_DVD_H
#define _GAME_DVD_H

#include "dolphin.h"
#include "game/memory.h"
#include "game/data.h"


void *HuDvdDataRead(char *path);
void **HuDvdDataReadMulti(char **paths);
void *HuDvdDataReadDirect(char *path, HUHEAPTYPE heap);
void *HuDvdDataFastRead(s32 entrynum);
void *HuDvdDataFastReadNum(s32 entrynum, s32 num);
void *HuDvdDataFastReadAsync(s32 entrynum, HUDATASTAT *stat);
void HuDvdDataClose(void *ptr);
void HuDvdErrorWatch();


#endif