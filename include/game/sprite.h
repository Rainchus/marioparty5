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

typedef void (*HUSPRFUNC)(HUSPRITE *);

struct HuSprite_s {
    u8 r;
    u8 g;
    u8 b;
    u8 draw_no;
    s16 frame;
    s16 bank;
    s16 attr;
    s16 dirty_flag;
    s16 prio;
    float time;
    float x;
    float y;
    float z_rot;
    float scale_x;
    float scale_y;
    float speed;
    float a;
    GXTexWrapMode wrap_s;
    GXTexWrapMode wrap_t;
    s16 tex_scale_x;
    s16 tex_scale_y;
    Mtx *group_mtx;
    union {
        ANIMDATA *data;
        HUSPRFUNC func;
    };
    ANIMPAT *pat_data;
    ANIMFRAME *frame_data;
    s16 work[4];
    ANIMDATA *bg;
    u16 bg_bank;
    s16 scissor_x;
    s16 scissor_y;
    s16 scissor_w;
    s16 scissor_h;
};

typedef struct HuSprGrp_s {
    s16 sprNum;
    float x;
    float y;
    float z_rot;
    float scale_x;
    float scale_y;
    float center_x;
    float center_y;
    s16 *sprite;
    Mtx mtx;
    s16 work[4];
} HUSPRGRP;

extern HUSPRITE HuSprData[HUSPR_MAX];
extern HUSPRGRP HuSprGrpData[HUSPR_GRP_MAX];

void HuSprInit(void);
void HuSprClose(void);
void HuSprExec(s16 draw_no);
void HuSprBegin(void);
HUSPRITE *HuSprCall(void);
void HuSprFinish(void);
void HuSprPauseSet(BOOL value);
ANIMDATA *HuSprAnimRead(void *data);
void HuSprAnimLock(ANIMDATA *anim);
s16 HuSprCreate(ANIMDATA *anim, s16 prio, s16 bank);
s16 HuSprFuncCreate(HUSPRFUNC func, s16 prio);
s16 HuSprGrpCreate(s16 sprNum);
s16 HuSprGrpCopy(s16 group);
void HuSprGrpMemberSet(s16 group, s16 member, s16 sprite);
void HuSprGrpMemberKill(s16 group, s16 member);
void HuSprGrpKill(s16 group);
void HuSprKill(s16 sprite);
void HuSprAnimKill(ANIMDATA *anim);
void HuSprAttrSet(s16 group, s16 member, s32 attr);
void HuSprAttrReset(s16 group, s16 member, s32 attr);
void HuSprPosSet(s16 group, s16 member, float x, float y);
void HuSprZRotSet(s16 group, s16 member, float z_rot);
void HuSprScaleSet(s16 group, s16 member, float x, float y);
void HuSprTPLvlSet(s16 group, s16 member, float tp_lvl);
void HuSprColorSet(s16 group, s16 member, u8 r, u8 g, u8 b);
void HuSprSpeedSet(s16 group, s16 member, float speed);
void HuSprBankSet(s16 group, s16 member, s16 bank);
void HuSprGrpPosSet(s16 group, float x, float y);
void HuSprGrpCenterSet(s16 group, float x, float y);
void HuSprGrpZRotSet(s16 group, float z_rot);
void HuSprGrpScaleSet(s16 group, float x, float y);
void HuSprGrpTPLvlSet(s16 group, float tp_lvl);
#ifndef HUSPR_USE_OLD_DEFS
void HuSprGrpDrawNoSet(s16 group, s32 draw_no);
#endif
void HuSprDrawNoSet(s16 group, s16 member, s32 draw_no);
void HuSprPriSet(s16 group, s16 member, s16 prio);
void HuSprGrpScissorSet(s16 group, s16 x, s16 y, s16 w, s16 h);
void HuSprScissorSet(s16 group, s16 member, s16 x, s16 y, s16 w, s16 h);
ANIMDATA *HuSprAnimMake(s16 sizeX, s16 sizeY, s16 dataFmt);
void HuSprBGSet(s16 group, s16 member,  ANIMDATA *bg, s16 bg_bank);
void HuSprSprBGSet(s16 sprite, ANIMDATA *bg, s16 bg_bank);
void AnimDebug(ANIMDATA *anim);

void HuSprDispInit(void);
void HuSprDisp(HUSPRITE *sprite);
void HuSprExecLayerInit(void);
void HuSprTexLoad(ANIMDATA *anim, s16 bmp, s16 slot, GXTexWrapMode wrap_s, GXTexWrapMode wrap_t, GXTexFilter filter);
void HuSprExecLayerSet(s16 draw_no, s16 layer);

#endif