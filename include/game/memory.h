#ifndef _GAME_MEMORY_H
#define _GAME_MEMORY_H

#include "dolphin/types.h"

#define MEMORY_DEFAULT_NUM 0x10000000

typedef enum {
    HEAP_SYSTEM,
    HEAP_MUSIC,
    HEAP_DATA,
    HEAP_DVD,
    HEAP_MISC,
    HEAP_MAX
} HeapID;

void HuMemInitAll(void);
void *HuMemInit(void *ptr, s32 size);
void HuMemDCFlushAll();
void HuMemDCFlush(HeapID heap);
void *HuMemDirectMalloc(HeapID heap, s32 size);
void *HuMemDirectMallocNum(HeapID heap, s32 size, u32 num);
void HuMemDirectFree(void *ptr);
void HuMemDirectFreeNum(HeapID heap, u32 num);
s32 HuMemUsedMallocSizeGet(HeapID heap);
s32 HuMemUsedMallocBlockGet(HeapID heap);
u32 HuMemHeapSizeGet(HeapID heap);
void *HuMemHeapPtrGet(HeapID heap);

void *HuMemHeapInit(void *ptr, s32 size);
void *HuMemMemoryAlloc(void *heap_ptr, s32 size, u32 retaddr);
void *HuMemMemoryAllocNum(void *heap_ptr, s32 size, u32 num, u32 retaddr);
void HuMemMemoryFree(void *ptr, u32 retaddr);
void HuMemMemoryFreeNum(void *heap_ptr, u32 num, u32 retaddr);
s32 HuMemUsedMemorySizeGet(void *heap_ptr);
s32 HuMemUsedMemoryBlockGet(void *heap_ptr);
s32 HuMemMemorySizeGet(void *ptr);
s32 HuMemMemoryAllocSizeGet(s32 size);
void HuMemHeapDump(void *heap_ptr, s16 status);

#endif