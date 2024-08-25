#ifndef _GAME_SPRITE_H
#define _GAME_SPRITE_H

#include "dolphin.h"

#define HUSPR_MAX 400
#define HUSPR_GRP_MAX 256

#define HUSPR_NONE -1
#define HUSPR_GRP_NONE -1

#define HUSPR_ATTR_NOANIM 0x1
#define HUSPR_ATTR_LOOP 0x2
#define HUSPR_ATTR_DISPOFF 0x4
#define HUSPR_ATTR_LINEAR 0x8
#define HUSPR_ATTR_FUNC 0x10
#define HUSPR_ATTR_NOPAUSE 0x20
#define HUSPR_ATTR_REVERSE 0x40
#define HUSPR_ATTR_ADDCOL 0x80
#define HUSPR_ATTR_INVCOL 0x100

#include "game/animdata.h"

typedef struct HuSprite_s HUSPRITE;

typedef s16 HUSPRID;
typedef s16 HUSPRGRPID;

typedef void (*HUSPRFUNC)(HUSPRITE *);

struct HuSprite_s {
    u8 r;
    u8 g;
    u8 b;
    u8 drawNo;
    s16 frame;
    s16 bank;
    s16 attr;
    s16 dirty;
    s16 prio;
    float time;
    float posX;
    float posY;
    float zRot;
    float scaleX;
    float scaleY;
    float speed;
    float a;
    GXTexWrapMode wrapS;
    GXTexWrapMode wrapT;
    s16 uvScaleX;
    s16 uvScaleY;
    Mtx *groupMtx;
    union {
        ANIMDATA *data;
        HUSPRFUNC func;
    };
    ANIMPAT *patP;
    ANIMFRAME *frameP;
    s16 work[4];
    ANIMDATA *bg;
    u16 bgBank;
    s16 scissorX;
    s16 scissorY;
    s16 scissorW;
    s16 scissorH;
};

typedef struct HuSprGrp_s {
    s16 sprNum;
    float posX;
    float posY;
    float zRot;
    float scaleX;
    float scaleY;
    float centerX;
    float centerY;
    HUSPRID *sprId;
    Mtx mtx;
    s16 work[4];
} HUSPRGRP;

extern HUSPRITE HuSprData[HUSPR_MAX];
extern HUSPRGRP HuSprGrpData[HUSPR_GRP_MAX];

void HuSprInit(void);
void HuSprClose(void);
void HuSprExec(s16 drawNo);
void HuSprBegin(void);
HUSPRITE *HuSprCall(void);
void HuSprFinish(void);
void HuSprPauseSet(BOOL value);
ANIMDATA *HuSprAnimRead(void *data);
void HuSprAnimLock(ANIMDATA *anim);
HUSPRID HuSprCreate(ANIMDATA *anim, s16 prio, s16 bank);
HUSPRID HuSprFuncCreate(HUSPRFUNC func, s16 prio);
HUSPRGRPID HuSprGrpCreate(s16 sprNum);
HUSPRGRPID HuSprGrpCopy(HUSPRGRPID grpId);
void HuSprGrpMemberSet(HUSPRGRPID grpId, s16 member, HUSPRID sprId);
void HuSprGrpMemberKill(HUSPRGRPID grpId, s16 member);
void HuSprGrpKill(HUSPRGRPID grpId);
void HuSprKill(HUSPRID sprId);
void HuSprAnimKill(ANIMDATA *anim);
void HuSprAttrSet(HUSPRGRPID grpId, s16 member, s32 attr);
void HuSprAttrReset(HUSPRGRPID grpId, s16 member, s32 attr);
void HuSprPosSet(HUSPRGRPID grpId, s16 member, float posX, float posY);
void HuSprZRotSet(HUSPRGRPID grpId, s16 member, float z_rot);
void HuSprScaleSet(HUSPRGRPID grpId, s16 member, float scaleX, float scaleY);
void HuSprTPLvlSet(HUSPRGRPID grpId, s16 member, float tpLvl);
void HuSprColorSet(HUSPRGRPID grpId, s16 member, u8 r, u8 g, u8 b);
void HuSprSpeedSet(HUSPRGRPID grpId, s16 member, float speed);
void HuSprBankSet(HUSPRGRPID grpId, s16 member, s16 bank);
void HuSprGrpPosSet(HUSPRGRPID grpId, float posX, float posY);
void HuSprGrpCenterSet(HUSPRGRPID grpId, float centerX, float centerY);
void HuSprGrpZRotSet(HUSPRGRPID grpId, float z_rot);
void HuSprGrpScaleSet(HUSPRGRPID grpId, float scaleX, float scaleY);
void HuSprGrpTPLvlSet(HUSPRGRPID grpId, float tpLvl);
void HuSprGrpDrawNoSet(HUSPRGRPID grpId, s32 drawNo);
void HuSprDrawNoSet(HUSPRGRPID grpId, s16 member, s32 drawNo);
void HuSprPriSet(HUSPRGRPID grpId, s16 member, s16 prio);
void HuSprGrpScissorSet(HUSPRGRPID grpId, s16 x, s16 y, s16 w, s16 h);
void HuSprScissorSet(HUSPRGRPID grpId, s16 member, s16 x, s16 y, s16 w, s16 h);
ANIMDATA *HuSprAnimMake(s16 sizeX, s16 sizeY, s16 dataFmt);
void HuSprBGSet(HUSPRGRPID grpId, s16 member,  ANIMDATA *bg, s16 bgBank);
void HuSprSprBGSet(HUSPRID sprite, ANIMDATA *bg, s16 bgBank);
void AnimDebug(ANIMDATA *anim);

void HuSprDispInit(void);
void HuSprDisp(HUSPRITE *sprite);
void HuSprTexLoad(ANIMDATA *anim, s16 bmpNo, s16 texMapId, GXTexWrapMode wrapS, GXTexWrapMode wrapT, GXTexFilter filter);
void HuSprExecLayerInit(void);
void HuSprExecLayerCameraSet(s16 drawNo, s16 camera, s16 layer);
void HuSprExecLayerSet(s16 drawNo, s16 layer);

#endif