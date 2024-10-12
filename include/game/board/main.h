#ifndef _BOARD_MAIN_H
#define _BOARD_MAIN_H

#include "game/object.h"
#include "game/process.h"
#include "game/gamework.h"
#include "game/data.h"

#define MBNO_WORLD_1 0
#define MBNO_WORLD_2 1
#define MBNO_WORLD_3 2
#define MBNO_WORLD_4 3
#define MBNO_WORLD_5 4
#define MBNO_WORLD_6 5
#define MBNO_WORLD_7 6
#define MBNO_TUTORIAL 7
#define MBNO_CIRCUIT 8

typedef void (*MBCREATEHOOK)(void);
typedef void (*MBKILLHOOK)(void);
typedef void (*MBLIGHTHOOK)(void);
typedef void (*MBTURNHOOK)(void);

extern OMOBJMAN *mbObjMan;
extern HUPROCESS *mbMainProcess;

static inline s32 MBBoardNoGet(void)
{
	return GwSystem.boardNo;
}

void MBObjectSetup(s32 boardNo, MBCREATEHOOK createHook, MBKILLHOOK killHook);
BOOL MBEventMgCheck(void);
void MBDataClose(void);
void MBLightHookSet(MBLIGHTHOOK setHook, MBLIGHTHOOK resetHook);
void MBLightSet(void);
void MBLightReset(void);
void MBPauseFlagSet(void);
void MBPauseFlagClear(void);
BOOL MBPauseFlagCheck(void);
s32 MBDataDirReadAsync(int dataNum);
void MBDataAsyncWait(s32 statId);
void MBPreTurnHookSet(MBTURNHOOK turnHook);
void MBPostTurnHookSet(MBTURNHOOK turnHook);
void fn_8008D448(int value);
void fn_8008D450(int value);
int fn_8008D458(void);
int fn_8008D460(void);
void MBPartySaveInit(s32 boardNo);
void MBStorySaveInit(s32 mgPack, s32 storyDif);
void MBPlayerSaveInit(BOOL teamF, BOOL bonusStarF, s32 mgPack, s32 turnMax, s32 handicapP1, s32 handicapP2, s32 handicapP3, s32 handicapP4);
float MBVecDistXZ(HuVecF *a, HuVecF *b);
BOOL MBVecDistXZCheck(HuVecF *a, HuVecF *b, float maxDist);
float MBAngleWrap(float angle);
void MBAngleWrapV(HuVecF *angle);
BOOL MBAngleAdd(float *dest, float angle, float speed);
BOOL MBAngleMoveTo(float *dest, float angle, float speed);
BOOL MBVecMagCheck(HuVecF *a, HuVecF *b, float dist);
void MBMtxLookAtCalc(Mtx dest, HuVecF *eye, HuVecF *up, HuVecF *target);
void MB3Dto2D(HuVecF *src, HuVecF *dst);
void MB2Dto3D(HuVecF *src, HuVecF *dst);
float MBBezierCalc(float a, float b, float c, float t);
void MBBezierCalcV(HuVecF *a, HuVecF *b, HuVecF *c, HuVecF *dst, float t);
void MBBezierCalcVList(HuVecF *src, HuVecF *dst, float t);
float MBBezierCalcSlope(float a, float b, float c, float t);
void MBBezierCalcSlopeV(HuVecF *a, HuVecF *b, HuVecF *c, HuVecF *dst, float t);
float MBHermiteCalc(float a, float b, float c, float d, float t);
void MBHermiteCalcV(HuVecF *a, HuVecF *b, HuVecF *c, HuVecF *d, HuVecF *dst, float t);
float MBHermiteCalcSlope(float a, float b, float c, float d, float t);
float MBAngleLerp(float a, float b, float t);
float MBAngleLerpSin(float a, float b, float t);
float MBAngleLerpCos(float a, float b, float t);
void MBPointDepthScale(HuVecF *src, float scale, HuVecF *dst);

#endif