#ifndef _GAME_DVD_H
#define _GAME_DVD_H

#include "dolphin.h"
#include "game/memory.h"

typedef struct data_read_stat DataReadStat;

typedef struct file_list_entry {
    char *name;
    s32 file_id;
} FileListEntry;

void *HuDvdDataRead(char *path);
void **HuDvdDataReadMulti(char **paths);
void *HuDvdDataReadDirect(char *path, HeapID heap);
void *HuDvdDataFastRead(s32 entrynum);
void *HuDvdDataFastReadNum(s32 entrynum, s32 num);
void *HuDvdDataFastReadAsync(s32 entrynum, DataReadStat *stat);
void HuDvdDataClose(void *ptr);
void HuDvdErrorWatch();


#endif