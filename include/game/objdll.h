#ifndef _GAME_OBJDLL_H
#define _GAME_OBJDLL_H

#include "game/object.h"

#define OMDLLINFO_MAX 20

typedef struct omDllinfo_s {
	char *name;
	OSModuleHeader *module;
	void *bss;
	s32 ret;
} OMDLLINFO;

void omDLLDBGOut(void);
void omDLLInit(OVLTBL *ovlList);
s32 omDLLStart(s16 dllno, s16 reloadF);
void omDLLNumEnd(s16 dllno, s16 reloadF);
void omDLLEnd(s16 dll, s16 reloadF);

OMDLLINFO *omDLLLink(OMDLLINFO **dllInfoP, s16 dllno, s16 prologF);
void omDLLUnlink(OMDLLINFO *dllInfo, s16 epilogF);
s32 omDLLSearch(s16 dllno);
void omDLLInfoDump(OSModuleInfo *module);
void omDLLHeaderDump(OSModuleHeader *module);

extern OMDLLINFO *omDLLinfoTbl[OMDLLINFO_MAX];

#endif