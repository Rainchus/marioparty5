#ifndef _GAME_ARMEM_H
#define _GAME_ARMEM_H

#include "dolphin.h"
#include "game/memory.h"
#include "game/data.h"

void HuARInit(void);
u32 HuARMalloc(u32 size);
void HuARFree(u32 amemptr);
void HuAMemDump(void);
u32 HuAR_DVDtoARAM(u32 dir);
u32 HuAR_MRAMtoARAM(s32 dir);
u32 HuAR_MRAMtoARAM2(void *dir_ptr);
void HuAR_ARAMtoMRAM(u32 amemptr);
void *HuAR_ARAMtoMRAMNum(u32 amemptr, s32 num);
s32 HuARDMACheck(void);
u32 HuARDirCheck(u32 dir);
void HuARDirFree(u32 dir);
void *HuAR_ARAMtoMRAMFileRead(u32 dir, u32 num, HeapID heap);

#endif
