#ifndef _GAME_AUDIO_H
#define _GAME_AUDIO_H

#include "msm.h"
#include "msm_grp.h"
#include "msm_se.h"

typedef struct sndGrpTbl_s {
    s16 ovl;
    s16 grpSet;
    s32 auxANo;
    s32 auxBNo;
    s8 auxAVol;
    s8 auxBVol;
} SNDGRPTBL;

void HuAudInit(void);
void HuAudAllStop(void);
void HuAudFadeOut(s32 speed);

MSM_SENO HuAudFXPlay(int seId);
MSM_SENO HuAudFXPlayVol(int seId, s16 vol);
MSM_SENO HuAudFXPlayPan(int seId, s16 pan);
MSM_SENO HuAudFXPlayVolPan(int seId, s16 vol, s16 pan);
void HuAudFXStop(MSM_SENO seNo);
void HuAudFXAllStop(void);
void HuAudFXFadeOut(MSM_SENO seNo, s32 speed);
void HuAudFXPanning(MSM_SENO seNo, s16 pan);
void HuAudFXListnerSet(Vec *pos, Vec *heading, float sndDist, float sndSpeed);
void HuAudFXListnerSetEX(Vec *pos, Vec *heading, float sndDist, float sndSpeed, float startDis, float frontSurDis, float backSurDis);
void HuAudFXListnerUpdate(Vec *pos, Vec *heading);
MSM_SENO HuAudFXEmiterPlay(int seId, Vec *pos);
void HuAudFXEmiterUpDate(MSM_SENO seNo, Vec *pos);
void HuAudFXListnerKill(void);
void HuAudFXPauseAll(BOOL pauseF);
s32 HuAudFXStatusGet(MSM_SENO seNo);
s32 HuAudFXPitchSet(MSM_SENO seNo, s16 pitch);
s32 HuAudFXVolSet(MSM_SENO seNo, s16 vol);

MSM_MUSNO HuAudSeqPlay(s16 musId);
void HuAudSeqStop(MSM_MUSNO musNo);
void HuAudSeqFadeOut(MSM_MUSNO musNo, s32 speed);
void HuAudSeqAllFadeOut(s32 speed);
void HuAudSeqAllStop(void);
void HuAudSeqPauseAll(BOOL pause);
s32 HuAudSeqMidiCtrlGet(MSM_MUSNO musNo, s8 channel, s8 ctrl);


MSM_STREAMNO HuAudSStreamChanPlay(s16 streamId, s16 chanNo);
MSM_STREAMNO HuAudSStreamPlay(s16 streamId);
MSM_STREAMNO HuAudSStreamPlayFront(s16 streamId);
MSM_STREAMNO HuAudSStreamPlayBack(s16 streamId);
void HuAudSStreamStop(MSM_STREAMNO streamNo);
void HuAudSStreamFadeOut(MSM_STREAMNO streamNo, s32 speed);
void HuAudSStreamAllFadeOut(s32 speed);
void HuAudSStreamPause(s16 streamNo, BOOL pause);
void HuAudSStreamPauseFadeOut(s16 streamNo, BOOL pause, s32 speed);
void HuAudSStreamPauseAll(BOOL pause);
void HuAudSStreamAllStop(void);
s32 HuAudSStreamStatGet(MSM_STREAMNO streamNo);
void HuAudSStreamVolSet(MSM_STREAMNO streamNo, u8 vol, u32 speed);


void HuAudDllSndGrpSet(u16 ovl);
void HuAudSndGrpSetSet(s16 grpSet);
void HuAudSndGrpSet(s16 grp);
void HuAudAUXSet(s32 auxA, s32 auxB);
void HuAudAUXVolSet(s8 volA, s8 volB);

s32 HuAudPlayerFXPlay(s16 playerNo, s16 seId);
s32 HuAudPlayerFXPlayPos(s16 playerNo, s16 seId, Vec *pos);
void HuAudPlayerFXStop(s16 playerNo, s16 seId);

s32 HuAudCharFXPlayVolPan(s16 charNo, s16 seId, s16 vol, s16 pan);
s32 HuAudCharFXPlay(s16 charNo, s16 seId);
s32 HuAudCharFXPlayVol(s16 charNo, s16 seId, s16 vol);
s32 HuAudCharFXPlayPan(s16 charNo, s16 seId, s16 pan);
s32 HuAudCharFXPlayPos(s16 charNo, s16 seId, Vec *pos);
void HuAudCharFXStop(s16 charNo, s16 seId);

extern SNDGRPTBL sndGrpTable[];

extern float Snd3DBackSurDisOffset;
extern float Snd3DFrontSurDisOffset;
extern float Snd3DStartDisOffset;
extern float Snd3DSpeedOffset;
extern float Snd3DDistOffset;
extern BOOL musicOffF;
extern u8 fadeStat;

#endif
