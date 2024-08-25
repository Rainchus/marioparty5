#ifndef _GAME_INIT_H
#define _GAME_INIT_H

#include "dolphin.h"

extern GXRenderModeObj *RenderMode;
extern OSHeapHandle currentHeapHandle;

extern void *DemoFrameBuffer1;
extern void *DemoFrameBuffer2;
extern void *DemoCurrentBuffer;
extern u32 minimumVcount;
extern float minimumVcountf;
extern u32 worstVcount;

void HuSysInit(GXRenderModeObj *mode);
void HuSysBeforeRender();
void HuSysDoneRender(s32 retraceCount);

#endif