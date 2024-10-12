#ifndef _BOARD_CAMERA_H
#define _BOARD_CAMERA_H

#include "game/hu3d.h"

#define MB_CAMERA_FOCUS_MAX 16

typedef struct mbCamera_s MBCAMERA;

typedef void (*MBCAMERAPOSHOOK)(MBCAMERA *cameraP);

typedef struct mbCameraViewKey_s {
	HuVecF rot;
	HuVecF pos;
	float zoom;
	HuVecF ofs;
	float fov;
} MBCAMERAVIEWKEY;

typedef struct mbCameraMotion_s {
	s32 viewNo;
	s32 curveType;
	s16 time;
	s16 maxTime;
	MBCAMERAVIEWKEY viewKey[3];
} MBCAMERAMOTION;

typedef struct mbCameraFocus_s {
	s32 type;
	s32 target;
} MBCAMERAFOCUS;

struct mbCamera_s {
	union {
		struct {
			u8 cullAll : 1;
			u8 snap : 1;
			u8 quake : 1;
		};
		u8 attrAll;
	};
	u16 bit;
	float fov;
	float near;
	float far;
	float aspect;
	float viewportX;
    float viewportY;
    float viewportW;
    float viewportH;
    float viewportNear;
    float viewportFar;
	HuVecF pos;
	HuVecF up;
	HuVecF target;
	HuVecF offset;
	HuVecF rot;
	float zoom;
	float speed;
	s32 quakeTime;
	float quakePower;
	MBCAMERAPOSHOOK posHook;
	MBCAMERAMOTION motion;
	s32 focusNum;
	MBCAMERAFOCUS focus[MB_CAMERA_FOCUS_MAX];
};

void MBCameraCreate(void);
MBCAMERA *MBCameraGet(void);
void MBCameraLookAtGetInv(Mtx lookAtInv);

#endif