#ifndef _GAME_DATA_H
#define _GAME_DATA_H

#include "game/memory.h"

#include "datadir_enum.h"

#define DATA_DECODE_NONE 0
#define DATA_DECODE_LZ 1
#define DATA_DECODE_SLIDE 2
#define DATA_DECODE_FSLIDE_ALT 3
#define DATA_DECODE_FSLIDE 4
#define DATA_DECODE_RLE 5
#define DATA_DECODE_ZLIB 7

#include "dolphin/types.h"
#include "dolphin/dvd.h"

typedef s32 DATA_DATANUM;

typedef struct HuDataStat_s {
    s32 dirId;
    void *dirP;
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
s32 HuDataReadChk(DATA_DATANUM dataNum);
HUDATASTAT *HuDataGetStatus(void *dirP);
void *HuDataGetDirPtr(DATA_DATANUM dirNum);
HUDATASTAT *HuDataDirRead(DATA_DATANUM dirNum);
HUDATASTAT *HuDataDirReadNum(DATA_DATANUM dirNum, s32 num);
HUDATASTAT *HuDataDirSet(void *dir_ptr, DATA_DATANUM data_num);
void HuDataDirReadAsyncCallBack(s32 result, DVDFileInfo* fileInfo);
s32 HuDataDirReadAsync(DATA_DATANUM data_num);
s32 HuDataDirReadNumAsync(DATA_DATANUM data_num, s32 num);
BOOL HuDataGetAsyncStat(s32 status);
void *HuDataRead(DATA_DATANUM data_num);
void *HuDataReadNum(DATA_DATANUM data_num, s32 num);
void *HuDataSelHeapRead(DATA_DATANUM data_num, HUHEAPTYPE heap);
void *HuDataSelHeapReadNum(DATA_DATANUM data_num, s32 num, HUHEAPTYPE heap);
void **HuDataReadMulti(DATA_DATANUM *data_ids);
s32 HuDataGetSize(DATA_DATANUM dataNum);
void HuDataClose(void *ptr);
void HuDataCloseMulti(void **ptrs);
void HuDataDirClose(DATA_DATANUM dataNum);
void HuDataDirCloseNum(s32 num);
void *HuDataReadNumHeapShortForce(DATA_DATANUM dataNum, s32 num, HUHEAPTYPE heap);

void HuDecodeData(void *src, void *dst, u32 size, s32 decode_type);

extern u32 DirDataSize;

#endif