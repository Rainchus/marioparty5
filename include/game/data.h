#ifndef _GAME_DATA_H
#define _GAME_DATA_H

#include "game/memory.h"

typedef struct file_list_entry {
    char *name;
    s32 file_id;
} FileListEntry;

#include "datadir_enum.h"

#define DATA_DECODE_NONE 0
#define DATA_DECODE_LZ 1
#define DATA_DECODE_SLIDE 2
#define DATA_DECODE_FSLIDE_ALT 3
#define DATA_DECODE_FSLIDE 4
#define DATA_DECODE_RLE 5

#define DATA_NUM_LISTEND -1

#include "dolphin/types.h"


typedef struct HuDataStat_s {
    s32 dirId;
    void *dirMemP;
    void *fileDataP;
    u32 rawLen;
    u32 readLen;
    u32 readOfs;
    u32 decodeType;
    BOOL used;
    s32 num;
    u32 status;
    DVDFileInfo dvdFile;
} HUDATASTAT;

void HuDataInit(void);
s32 HuDataReadChk(s32 data_num);
HUDATASTAT *HuDataGetStatus(void *dir_ptr);
void *HuDataGetDirPtr(s32 data_num);
HUDATASTAT *HuDataDirRead(s32 data_num);
HUDATASTAT *HuDataDirReadNum(s32 data_num, s32 num);
HUDATASTAT *HuDataDirSet(void *dir_ptr, s32 data_num);
void HuDataDirReadAsyncCallBack(s32 result, DVDFileInfo* fileInfo);
s32 HuDataDirReadAsync(s32 data_num);
s32 HuDataDirReadNumAsync(s32 data_num, s32 num);
BOOL HuDataGetAsyncStat(s32 status);
void *HuDataRead(s32 data_num);
void *HuDataReadNum(s32 data_num, s32 num);
void *HuDataSelHeapRead(s32 data_num, HUHEAPTYPE heap);
void *HuDataSelHeapReadNum(s32 data_num, s32 num, HUHEAPTYPE heap);
void **HuDataReadMulti(s32 *data_ids);
s32 HuDataGetSize(s32 data_num);
void HuDataClose(void *ptr);
void HuDataCloseMulti(void **ptrs);
void HuDataDirClose(s32 data_id);
void HuDataDirCloseNum(s32 num);
void *HuDataReadNumHeapShortForce(s32 data_id, s32 num, HUHEAPTYPE heap);

void HuDecodeData(void *src, void *dst, u32 size, s32 decode_type);

extern u32 DirDataSize;

#endif