#ifndef _GAME_AUDIO_H
#define _GAME_AUDIO_H

#include "dolphin.h"

typedef struct hu_snd_grp_data {
    /* 0x00 */ s16 ovl;
    /* 0x02 */ s16 grpset;
    /* 0x04 */ s32 auxANo;
    /* 0x08 */ s32 auxBNo;
    /* 0x0C */ s8 auxAVol;
    /* 0x0D */ s8 auxBVol;
} HuSndGrpData;

void HuAudInit(void);
s32 HuAudStreamPlay(char *name, s32 arg1);
void HuAudStreamVolSet(s16 vol);
void HuAudStreamPauseOn(void);
void HuAudStreamPauseOff(void);
void HuAudStreamFadeOut(s32 arg0);
void HuAudAllStop(void);
void HuAudFadeOut(s32 arg0);
s32 HuAudFXPlay(s32 arg0);
s32 HuAudFXPlayVol(s32 arg0, s16 arg1);
s32 HuAudFXPlayVolPan(s32 arg0, s16 arg1, s16 arg2);
void HuAudFXStop(s32 arg0);
void HuAudFXAllStop(void);
void HuAudFXFadeOut(s32 arg0, s32 arg1);
void HuAudFXPanning(s32 arg0, s16 arg1);
void HuAudFXListnerSet(Vec* arg0, Vec* arg1, float arg2, float arg3);
void HuAudFXListnerSetEX(Vec* arg0, Vec* arg1, float sndDist, float sndSpeed, float arg4, float arg5, float arg6);
void HuAudFXListnerUpdate(Vec *arg0, Vec *arg1);
s32 HuAudFXEmiterPlay(s32 arg0, Vec *arg1);
void HuAudFXEmiterUpDate(s32 arg0, Vec *arg1);
void HuAudFXListnerKill(void);
void HuAudFXPauseAll(s32 arg0);
s32 HuAudFXStatusGet(s32 arg0);
s32 HuAudFXPitchSet(s32 arg0, s16 arg1);
s32 HuAudFXVolSet(s32 arg0, s16 arg1);
s32 HuAudSeqPlay(s16 arg0);
void HuAudSeqStop(s32 arg0);
void HuAudSeqFadeOut(s32 arg0, s32 arg1);
void HuAudSeqAllFadeOut(s32 arg0);
void HuAudSeqAllStop(void);
void HuAudSeqPauseAll(s32 arg0);
void HuAudSeqPause(s32 arg0, s32 arg1, s32 arg2);
s32 HuAudSeqMidiCtrlGet(s32 arg0, s8 arg1, s8 arg2);
s32 HuAudSStreamPlay(s16 arg0);
void HuAudSStreamStop(s32 arg0);
void HuAudSStreamFadeOut(s32 arg0, s32 arg1);
void HuAudSStreamAllFadeOut(s32 arg0);
void HuAudSStreamAllStop(void);
s32 HuAudSStreamStatGet(s32 arg0);
void HuAudDllSndGrpSet(u16 ovl);
void HuAudSndGrpSetSet(s16 arg0);
void HuAudSndGrpSet(s16 arg0);
void HuAudSndCommonGrpSet(s16 arg0, s32 arg1);
void HuAudAUXSet(s32 arg0, s32 arg1);
void HuAudAUXVolSet(s8 arg0, s8 arg1);
void HuAudVoiceInit(s16 ovl);
s32 HuAudPlayerVoicePlay(s16 arg0, s16 arg1);
s32 HuAudPlayerVoicePlayPos(s16 arg0, s16 arg1, Vec *arg2);
void HuAudPlayerVoicePlayEntry(s16 arg0, s16 arg1);
s32 HuAudCharVoicePlay(s16 arg0, s16 arg1);
s32 HuAudCharVoicePlayPos(s16 arg0, s16 arg1, Vec *arg2);
void HuAudCharVoicePlayEntry(s16 arg0, s16 arg1);

extern float Snd3DBackSurDisOffset;
extern float Snd3DFrontSurDisOffset;
extern float Snd3DStartDisOffset;
extern float Snd3DSpeedOffset;
extern float Snd3DDistOffset;
extern s32 musicOffF;
extern u8 fadeStat;

extern HuSndGrpData HuSndGrpTbl[];

#endif
