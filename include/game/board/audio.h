#ifndef _BOARD_AUDIO_H
#define _BOARD_AUDIO_H

#include "dolphin/types.h"

void BoardMusStartBoard(void);
void BoardMusStart(s32 arg0, s32 arg1, s8 arg2, u16 arg3);
void BoardAudSeqFadeOutFast(s32 arg0);
void BoardAudSeqFadeOut(s32 arg0, u16 arg1);
void BoardMusLoudSet(s32 arg0, s32 arg1);
void BoardMusVolPanSet(s32 arg0, s8 arg1, u16 arg2);
void BoardAudSeqPause(s32 arg0, s32 arg1, u16 arg2);
s32 BoardMusStatusGet(s32 arg0);
void BoardAudSeqClear(void);
void BoardAudSeqFadeOutAll(void);
void BoardAudFXPlay(void);
void BoardAudFXStop(void);

#endif
