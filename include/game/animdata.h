#ifndef _GAME_ANIMDATA_H
#define _GAME_ANIMDATA_H

#include "dolphin.h"

#define ANIM_BMP_RGBA8 0
#define ANIM_BMP_RGB565 1
#define ANIM_BMP_RGB5A3 2
#define ANIM_BMP_C8 3
#define ANIM_BMP_C4 4
#define ANIM_BMP_IA8 5
#define ANIM_BMP_IA4 6
#define ANIM_BMP_I8 7
#define ANIM_BMP_I4 8
#define ANIM_BMP_A8 9
#define ANIM_BMP_CMPR 10

#define ANIM_BMP_FMTMASK 0xF
#define ANIM_BMP_ALLOC 0x8000
#define ANIM_BMP_NUM_MASK 0x7FFF

#define ANIM_LAYER_FLIPX 0x1
#define ANIM_LAYER_FLIPY 0x2

typedef struct AnimTime_s {
    s16 pat;
    s16 time;
    s16 shiftX;
    s16 shiftY;
    s16 flip;
    s16 pad;
} ANIMFRAME;

typedef struct AnimBank_s {
    s16 timeNum;
    s16 unk;
    ANIMFRAME *frame;
} ANIMBANK;

typedef struct AnimLayer_s {
    u8 alpha;
    u8 flip;
    s16 bmpNo;
    s16 startX;
    s16 startY;
    s16 sizeX;
    s16 sizeY;
    s16 shiftX;
    s16 shiftY;
    s16 vtx[8];
} ANIMLAYER;

typedef struct AnimPat_s {
    s16 layerNum;
    s16 centerX;
    s16 centerY;
    s16 sizeX;
    s16 sizeY;
    ANIMLAYER *layer;
} ANIMPAT;

typedef struct AnimBmp_s {
    u8 pixSize;
    u8 dataFmt;
    s16 palNum;
    s16 sizeX;
    s16 sizeY;
    u32 dataSize;
    void *palData;
    void *data;
} ANIMBMP;

typedef struct AnimData_s {
    s16 bankNum;
    s16 patNum;
    s16 bmpNum;
    s16 useNum;
    ANIMBANK *bank;
    ANIMPAT *pat;
    ANIMBMP *bmp;
} ANIMDATA;

#endif