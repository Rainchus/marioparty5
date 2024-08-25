#ifndef _GAME_MEMORY_H
#define _GAME_MEMORY_H

#include "dolphin/types.h"

#define HuRestMemGet(heap) (HuMemHeapSizeGet((heap))-HuMemUsedMallocSizeGet((heap)))

typedef enum HuHeapType_e {
    HUHEAPTYPE_HEAP,
    HUHEAPTYPE_SOUND,
    HUHEAPTYPE_MODEL,
    HUHEAPTYPE_DVD,
    HUHEAPTYPE_SPACE,
    HUHEAPTYPE_MAX
} HUHEAPTYPE;


void HuMemInitAll(void);
void *HuMemInit(void *ptr, s32 size);
void HuMemDCFlushAll();
void HuMemDCFlush(HUHEAPTYPE heap);
void *HuMemDirectMalloc(HUHEAPTYPE heap, s32 size);
void *HuMemDirectMallocNum(HUHEAPTYPE heap, s32 size, u32 num);
void *HuMemDirectTailMalloc(HUHEAPTYPE heap, s32 size);
void HuMemDirectFree(void *ptr);
void HuMemDirectFreeNum(HUHEAPTYPE heap, u32 num);
s32 HuMemUsedMallocSizeGet(HUHEAPTYPE heap);
s32 HuMemUsedMallocBlockGet(HUHEAPTYPE heap);
u32 HuMemHeapSizeGet(HUHEAPTYPE heap);
void *HuMemHeapPtrGet(HUHEAPTYPE heap);

void *HuMemHeapInit(void *heap, s32 size);
void *HuMemMemoryAlloc(void *heap, s32 size, u32 retAddr);
void *HuMemMemoryAllocNum(void *heap, s32 size, u32 num, u32 retAddr);
void *HuMemTailMemoryAlloc(void *heap, s32 size, u32 retAddr);

void HuMemMemoryFree(void *heap, u32 retAddr);
void HuMemMemoryFreeNum(void *heap, u32 num, u32 retAddr);
s32 HuMemUsedMemorySizeGet(void *heap);
s32 HuMemUsedMemoryBlockGet(void *heap);
s32 HuMemMemorySizeGet(void *heap);
s32 HuMemMemoryAllocSizeGet(s32 size);
void HuMemHeapDump(void *heap, s16 status);

#endif