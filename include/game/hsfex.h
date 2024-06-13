#ifndef _GAME_HSFEX_H
#define _GAME_HSFEX_H

#include "dolphin.h"

void CamMotionEx2(s16 arg0, s16 arg1, float arg2, s16 arg3);
void CamMotionEx(s16 arg0, s16 arg1, Vec *arg2, Vec *arg3, Vec *arg4, float arg5, s16 arg6);
float InterpolateBMLine(float *arg0, float *arg1, float arg2);
void Hu3D2Dto3D(Vec *arg0, s16 arg1, Vec *arg2);
void Hu3D3Dto2D(Vec *arg0, s16 arg1, Vec *arg2);
void Hu3DMtxTransGet(Mtx arg0, Vec *arg1);
void Hu3DMtxRotGet(Mtx arg0, Vec *arg1);
void Hu3DMtxScaleGet(Mtx arg0, Vec *arg1);

#endif
