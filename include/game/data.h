#ifndef _GAME_DATA_H
#define _GAME_DATA_H

#include "game/memory.h"

#include "datadir_enum.h"

#define HU_DECODE_TYPE_NONE 0
#define HU_DECODE_TYPE_LZ 1
#define HU_DECODE_TYPE_SLIDE 2
#define HU_DECODE_TYPE_FSLIDE_ALT 3
#define HU_DECODE_TYPE_FSLIDE 4
#define HU_DECODE_TYPE_RLE 5
#define HU_DECODE_TYPE_ZLIB 7

#include "dolphin/types.h"
#include "dolphin/dvd.h"

typedef s32 HU_DATANUM;
typedef u32 HU_DATANUM_U;

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
s32 HuDataReadChk(HU_DATANUM dataNum);
HUDATASTAT *HuDataGetStatus(void *dirP);
void *HuDataGetDirPtr(HU_DATANUM dirNum);
HUDATASTAT *HuDataDirRead(HU_DATANUM dirNum);
HUDATASTAT *HuDataDirReadNum(HU_DATANUM dirNum, s32 num);
HUDATASTAT *HuDataDirSet(void *dir_ptr, HU_DATANUM data_num);
void HuDataDirReadAsyncCallBack(s32 result, DVDFileInfo* fileInfo);
s32 HuDataDirReadAsync(HU_DATANUM data_num);
s32 HuDataDirReadNumAsync(HU_DATANUM data_num, s32 num);
BOOL HuDataGetAsyncStat(s32 status);
void *HuDataRead(HU_DATANUM data_num);
void *HuDataReadNum(HU_DATANUM data_num, s32 num);
void *HuDataSelHeapRead(HU_DATANUM data_num, HUHEAPTYPE heap);
void *HuDataSelHeapReadNum(HU_DATANUM data_num, s32 num, HUHEAPTYPE heap);
void **HuDataReadMulti(HU_DATANUM *data_ids);
s32 HuDataGetSize(HU_DATANUM dataNum);
void HuDataClose(void *ptr);
void HuDataCloseMulti(void **ptrs);
void HuDataDirClose(HU_DATANUM dataNum);
void HuDataDirCloseNum(s32 num);
void *HuDataReadNumHeapShortForce(HU_DATANUM dataNum, s32 num, HUHEAPTYPE heap);

void HuDecodeData(void *src, void *dst, u32 size, s32 decode_type);

extern u32 DirDataSize;

#endif