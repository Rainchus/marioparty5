#include "game/sprite.h"
#include "game/memory.h"
#include "game/init.h"

#include "dolphin/mtx.h"

#define HUSPR_ORDER_MAX 768

#define SPRITE_DIRTY_ATTR 0x1
#define SPRITE_DIRTY_XFORM 0x2
#define SPRITE_DIRTY_COLOR 0x4

typedef struct HuSprOrder_s {
    u16 group;
    u16 sprite;
    u16 prio;
    u16 next;
} HUSPRORDER;

HUSPRITE HuSprData[HUSPR_MAX];
HUSPRGRP HuSprGrpData[HUSPR_GRP_MAX];
static HUSPRORDER HuSprOrder[HUSPR_ORDER_MAX];

static s16 HuSprOrderNum;
static s16 HuSprOrderNo;
static BOOL HuSprPauseF;

static void HuSprOrderEntry(s16 group, s16 sprite);


void HuSprInit(void)
{
    s16 i;
    HUSPRITE *sp;
    HUSPRGRP *gp;
    for(sp = &HuSprData[1], i=1; i<HUSPR_MAX; i++, sp++) {
        sp->data = NULL;
    }
    for(gp = HuSprGrpData, i=0; i<HUSPR_GRP_MAX; i++, gp++) {
        gp->sprNum = 0;
    }
    HuSprExecLayerInit();
    sp = &HuSprData[0];
    sp->prio = 0;
    sp->data = (void *)1;
    HuSprPauseF = FALSE;
}

void HuSprClose(void)
{
    s16 i;
    HUSPRGRP *gp;
    HUSPRITE *sprite;
    
    for(gp = HuSprGrpData, i=0; i<HUSPR_GRP_MAX; i++, gp++) {
        if(gp->sprNum != 0) {
            HuSprGrpKill(i);
        }
    }
    for(sprite = &HuSprData[1], i=1; i<HUSPR_MAX; i++, sprite++) {
        if(sprite->data) {
            HuSprKill(i);
        }
    }
    HuSprExecLayerInit();
    HuSprPauseF = FALSE;
}

void HuSprExec(s16 draw_no)
{
    HUSPRITE *sprite;
    while(sprite = HuSprCall()) {
        if(!(sprite->attr & HUSPR_ATTR_DISPOFF) && sprite->draw_no == draw_no) {
            HuSprDisp(sprite);
        }
    }
}

void HuSprBegin(void)
{
    Mtx temp, rot;
    s16 i, j;
    Vec axis = {0, 0, 1};
    HUSPRGRP *gp;
    gp = HuSprGrpData;
    HuSprOrderNum = 1;
    HuSprOrder[0].next = 0;
    HuSprOrder[0].prio = -1;
    for(i=0; i<HUSPR_GRP_MAX; i++, gp++) {
        if(gp->sprNum != 0) {
            MTXTrans(temp, gp->center_x*gp->scale_x, gp->center_y*gp->scale_y, 0.0f);
            MTXRotAxisDeg(rot, &axis, gp->z_rot);
            MTXConcat(rot, temp, gp->mtx);
            MTXScale(temp, gp->scale_x, gp->scale_y, 1.0f);
            MTXConcat(gp->mtx, temp, gp->mtx);
            mtxTransCat(gp->mtx, gp->x, gp->y, 0);
            for(j=0; j<gp->sprNum; j++) {
                if(gp->sprite[j] != -1) {
                    HuSprOrderEntry(i, gp->sprite[j]);
                }
            }
        }
    }
    HuSprOrderNo = 0;
}

static void HuSprOrderEntry(s16 group, s16 sprite)
{
    HUSPRORDER *order = &HuSprOrder[HuSprOrderNum];
    s16 prio = HuSprData[sprite].prio;
    s16 prev, next;
    if(HuSprOrderNum >= HUSPR_ORDER_MAX) {
        OSReport("Order Max Over!\n");
        return;
    }
    next = HuSprOrder[0].next;
    for(prev = 0; next != 0; prev = next, next = HuSprOrder[next].next) {
        if(HuSprOrder[next].prio < prio) {
            break;
        }
    }
    order->next = HuSprOrder[prev].next;
    HuSprOrder[prev].next = HuSprOrderNum;
    order->prio = prio;
    order->group = group;
    order->sprite = sprite;
    HuSprOrderNum++;
}

HUSPRITE *HuSprCall(void)
{
    HuSprOrderNo = HuSprOrder[HuSprOrderNo].next;
    if(HuSprOrderNo != 0) {
        HUSPRORDER *order = &HuSprOrder[HuSprOrderNo];
        HUSPRITE *sp = &HuSprData[order->sprite];
        sp->group_mtx = &HuSprGrpData[order->group].mtx;
        if(sp->attr & HUSPR_ATTR_FUNC) {
            return sp;
        }
        sp->frame_data = &sp->data->bank[sp->bank].frame[sp->frame];
        sp->pat_data = &sp->data->pat[sp->frame_data->pat];
        return sp;
    } else {
        return NULL;
    }
}

static inline void SpriteCalcFrame(HUSPRITE *sp, ANIMBANK *bank, ANIMFRAME **frame, s16 loop)
{
    if(sp->time >= (*frame)->time) {
        sp->frame++;
        sp->time -= (*frame)->time;
        if(sp->frame >= bank->timeNum || (*frame)[1].time == -1) {
            if(loop) {
                sp->frame = 0;
            } else {
                sp->frame = bank->timeNum-1;
            }
        }
        *frame = &bank->frame[sp->frame];
    } else if(sp->time < 0) {
        sp->frame--;
        if(sp->frame < 0) {
            if(loop) {
                sp->frame = bank->timeNum-1;
            } else {
                sp->frame = 0;
            }
        }
        *frame = &bank->frame[sp->frame];
        sp->time += (*frame)->time;
    }
}

void HuSprFinish(void)
{
    ANIMDATA *anim;
    ANIMBANK *bank;
    ANIMFRAME *frame;
    HUSPRITE *sprite;
    s16 i;
    s16 j;
    s16 loop;
    s16 dir;
    
    for(sprite = &HuSprData[1], i=1; i<HUSPR_MAX; i++, sprite++) {
        if(sprite->data && !(sprite->attr & HUSPR_ATTR_FUNC)) {
            if(!HuSprPauseF || (sprite->attr & HUSPR_ATTR_NOPAUSE)) {
                anim = sprite->data;
                bank = &anim->bank[sprite->bank];
                frame = &bank->frame[sprite->frame];
                loop = (sprite->attr & HUSPR_ATTR_LOOP) ? 0 : 1;
                if(!(sprite->attr & HUSPR_ATTR_NOANIM)) {
                    dir = (sprite->attr & HUSPR_ATTR_REVERSE) ? -1 : 1;
                    for(j=0; j<(s32)sprite->speed*minimumVcount; j++) {
                        sprite->time += dir;
                        SpriteCalcFrame(sprite, bank, &frame, loop);
                    }
                    sprite->time += (sprite->speed*(float)minimumVcount)-j;
                    SpriteCalcFrame(sprite, bank, &frame, loop);
                }
                sprite->dirty_flag = 0;
            }
        }
    }
}

void HuSprPauseSet(BOOL value)
{
    HuSprPauseF = value;
}

ANIMDATA *HuSprAnimRead(void *data)
{
    s16 i;
    ANIMBMP *bmp;
    ANIMBANK *bank;
    ANIMPAT *pat;
    
    ANIMDATA *anim = (ANIMDATA *)data;
    if((u32)anim->bank & 0xFFFF0000) {
        anim->useNum++;
        return anim;
    }
    bank = (ANIMBANK *)((u32)anim->bank+(u32)data);
    anim->bank = bank;
    pat = (ANIMPAT *)((u32)anim->pat+(u32)data);
    anim->pat = pat;
    bmp = (ANIMBMP *)((u32)anim->bmp+(u32)data);
    anim->bmp = bmp;
    for(i=0; i<anim->bankNum; i++, bank++) {
        bank->frame = (ANIMFRAME *)((u32)bank->frame+(u32)data);
    }
    for(i=0; i<anim->patNum; i++, pat++) {
        pat->layer = (ANIMLAYER *)((u32)pat->layer+(u32)data);
    }
    for(i=0; i<anim->bmpNum; i++, bmp++) {
        bmp->palData = (void *)((u32)bmp->palData+(u32)data);
        bmp->data = (void *)((u32)bmp->data+(u32)data);
    }
    anim->useNum = 0;
    return anim;
}

void HuSprAnimLock(ANIMDATA *anim)
{
    anim->useNum++;
}

s16 HuSprCreate(ANIMDATA *anim, s16 prio, s16 bank)
{
    HUSPRITE *sprite;
    s16 i;
    for(sprite = &HuSprData[1], i=1; i<HUSPR_MAX; i++, sprite++) {
        if(!sprite->data) {
            break;
        }
    }
    if(i == HUSPR_MAX) {
        OSReport("Error: Sprite Max Over!\n");
        return HUSPR_NONE;
    }
    sprite->data = anim;
    sprite->speed = 1.0f;
    sprite->frame = 0;
    sprite->bank = bank;
    sprite->time = 0.0f;
    sprite->attr = 0;
    sprite->draw_no = 0;
    sprite->r = sprite->g = sprite->b = sprite->a = 255;
    sprite->x = sprite->y = sprite->z_rot = 0.0f;
    sprite->prio = prio;
    sprite->scale_x = sprite->scale_y = 1.0f;
    sprite->wrap_s = sprite->wrap_t = GX_CLAMP;
    sprite->tex_scale_x = sprite->tex_scale_y = 1;
    sprite->bg = NULL;
    sprite->scissor_x = sprite->scissor_y = 0;
    sprite->scissor_w = 640;
    sprite->scissor_h = 480;
    if(anim) {
        HuSprAnimLock(anim);
    }
    return i;
}

s16 HuSprFuncCreate(HUSPRFUNC func, s16 prio)
{
    HUSPRITE *sprite;
    s16 index = HuSprCreate(NULL, prio, 0);
    if(index == HUSPR_NONE) {
        return HUSPR_NONE;
    }
    sprite = &HuSprData[index];
    sprite->func = func;
    sprite->attr |= HUSPR_ATTR_FUNC;
    return index;
}

s16 HuSprGrpCreate(s16 sprNum)
{
    HUSPRGRP *gp;
    s16 i, j;
    for(gp = HuSprGrpData, i=0; i<HUSPR_GRP_MAX; i++, gp++) {
        if(gp->sprNum == 0) {
            break;
        }
    }
    if(i == HUSPR_GRP_MAX) {
        return HUSPR_GRP_NONE;
    }
    gp->sprite = HuMemDirectMalloc(HUHEAPTYPE_HEAP, sizeof(s16)*sprNum);
    for(j=0; j<sprNum; j++) {
        gp->sprite[j] = HUSPR_NONE;
    }
    gp->sprNum = sprNum;
    gp->x = gp->y = gp->z_rot = gp->center_x = gp->center_y = 0.0f;
    gp->scale_x = gp->scale_y = 1.0f;
    return i;
}

s16 HuSprGrpCopy(s16 group)
{
    HUSPRGRP *new_gp;
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 new_group = HuSprGrpCreate(gp->sprNum);
    s16 i;
    if(new_group == HUSPR_GRP_NONE) {
        return HUSPR_GRP_NONE;
    }
    new_gp = &HuSprGrpData[new_group];
    new_gp->x = gp->x;
    new_gp->y = gp->y;
    new_gp->z_rot = gp->z_rot;
    new_gp->scale_x = gp->scale_x;
    new_gp->scale_y = gp->scale_y;
    new_gp->center_x = gp->center_x;
    new_gp->center_y = gp->center_y;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HUSPRITE *old_sprite = &HuSprData[gp->sprite[i]];
            s16 new_sprite = HuSprCreate(old_sprite->data, old_sprite->prio, old_sprite->bank);
            HuSprData[new_sprite] = *old_sprite;
            HuSprGrpMemberSet(new_group, i, new_sprite);
        }
    }
    return new_group;
}

void HuSprGrpMemberSet(s16 group, s16 memberNo, s16 sprite)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    HUSPRITE *sp = &HuSprData[sprite];
    if(gp->sprNum == 0 || gp->sprNum <= memberNo || gp->sprite[memberNo] != HUSPR_NONE) {
        return;
    }
    gp->sprite[memberNo] = sprite;
}

void HuSprGrpMemberKill(s16 group, s16 memberNo)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    if(gp->sprNum == 0 || gp->sprNum <= memberNo || gp->sprite[memberNo] == HUSPR_NONE) {
        return;
    }
    HuSprKill(gp->sprite[memberNo]);
    gp->sprite[memberNo] = HUSPR_NONE;
}

void HuSprGrpKill(s16 group)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprKill(gp->sprite[i]);
        }
    }
    gp->sprNum = 0;
    HuMemDirectFree(gp->sprite);
}

void HuSprKill(s16 sprite)
{
    HUSPRITE *sp = &HuSprData[sprite];
    if(!sp->data) {
        return;
    }
    if(!(sp->attr & HUSPR_ATTR_FUNC)) {
        HuSprAnimKill(sp->data);
    }
    if(sp->bg) {
        HuSprAnimKill(sp->bg);
        sp->bg = NULL;
    }
    sp->data = NULL;
}

void HuSprAnimKill(ANIMDATA *anim)
{
    if(--anim->useNum <= 0) {
        if(anim->bmpNum & ANIM_BMP_ALLOC) {
            if(anim->bmp->data) {
                HuMemDirectFree(anim->bmp->data);
            }
            if(anim->bmp->palData) {
                HuMemDirectFree(anim->bmp->palData);
            }
        }
        HuMemDirectFree(anim);
    }
}

void HuSprAttrSet(s16 group, s16 memberNo, s32 attr)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    HUSPRITE *sp;
    if(gp->sprNum == 0 || gp->sprNum <= memberNo || gp->sprite[memberNo] == HUSPR_NONE) {
        return;
    }
    sp = &HuSprData[gp->sprite[memberNo]];
    sp->attr |= attr;
    sp->dirty_flag |= SPRITE_DIRTY_ATTR;
}

void HuSprAttrReset(s16 group, s16 memberNo, s32 attr)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    HUSPRITE *sp;
    if(gp->sprNum == 0 || gp->sprNum <= memberNo || gp->sprite[memberNo] == HUSPR_NONE) {
        return;
    }
    sp = &HuSprData[gp->sprite[memberNo]];
    sp->attr &= ~attr;
    sp->dirty_flag |= SPRITE_DIRTY_ATTR;
}

u16 HuSprAttrGet(s16 group, s16 memberNo)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    HUSPRITE *sp;
    if(gp->sprNum == 0 || gp->sprNum <= memberNo || gp->sprite[memberNo] == HUSPR_NONE) {
        return;
    }
    sp = &HuSprData[gp->sprite[memberNo]];
    return sp->attr;
}

void HuSprPosSet(s16 group, s16 memberNo, float x, float y)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->x = x;
    sp->y = y;
    sp->dirty_flag |= SPRITE_DIRTY_XFORM;
}

void HuSprZRotSet(s16 group, s16 memberNo, float z_rot)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->z_rot = z_rot;
    sp->dirty_flag |= SPRITE_DIRTY_XFORM;
}

void HuSprScaleSet(s16 group, s16 memberNo, float x, float y)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->scale_x = x;
    sp->scale_y = y;
    sp->dirty_flag |= SPRITE_DIRTY_XFORM;
}

void HuSprTPLvlSet(s16 group, s16 memberNo, float tp_lvl)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->a = tp_lvl*255;
    sp->dirty_flag |= SPRITE_DIRTY_COLOR;
}

void HuSprColorSet(s16 group, s16 memberNo, u8 r, u8 g, u8 b)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->r = r;
    sp->g = g;
    sp->b = b;
    sp->dirty_flag |= SPRITE_DIRTY_COLOR;
}

void HuSprSpeedSet(s16 group, s16 memberNo, float speed)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    HuSprData[gp->sprite[memberNo]].speed = speed;
}

void HuSprBankSet(s16 group, s16 memberNo, s16 bank)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    ANIMDATA *anim = sp->data;
    ANIMBANK *bank_ptr = &anim->bank[sp->bank];
    ANIMFRAME *frame_ptr = &bank_ptr->frame[sp->frame];
    sp->bank = bank;
    if(sp->attr & HUSPR_ATTR_REVERSE) {
        sp->frame = bank_ptr->timeNum-1;
        frame_ptr = &bank_ptr->frame[sp->frame];
        sp->time = frame_ptr->time;
    } else {
        sp->time = 0;
        sp->frame = 0;
    }
}

void HuSprAnimNoSet(s16 group, s16 memberNo, s16 animNo)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    ANIMDATA *anim = sp->data;
    ANIMBANK *bank_ptr = &anim->bank[sp->bank];
    if(bank_ptr->timeNum <= animNo) {
        OSReport("Error: AnimNoSet Over %d\n", animNo);
        animNo = 0;
    }
    sp->frame = animNo;
    sp->time = 0;
}

void HuSprAnimNoSetPause(s16 group, s16 memberNo, s16 animNo)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    HuSprAnimNoSet(group, memberNo, animNo);
    sp->attr |= HUSPR_ATTR_NOANIM;
}

void HuSprGrpPosSet(s16 group, float x, float y)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    gp->x = x;
    gp->y = y;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != -1) {
            HuSprData[gp->sprite[i]].dirty_flag |= SPRITE_DIRTY_XFORM;
        }
    }
}

void HuSprGrpCenterSet(s16 group, float x, float y)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    gp->center_x = x;
    gp->center_y = y;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprData[gp->sprite[i]].dirty_flag |= SPRITE_DIRTY_XFORM;
        }
    }
}

void HuSprGrpZRotSet(s16 group, float z_rot)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    gp->z_rot = z_rot;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprData[gp->sprite[i]].dirty_flag |= SPRITE_DIRTY_XFORM;
        }
    }
}

void HuSprGrpScaleSet(s16 group, float x, float y)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    gp->scale_x = x;
    gp->scale_y = y;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprData[gp->sprite[i]].dirty_flag |= SPRITE_DIRTY_XFORM;
        }
    }
}

void HuSprGrpTPLvlSet(s16 group, float tp_lvl)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprData[gp->sprite[i]].a = tp_lvl*255;
            HuSprData[gp->sprite[i]].dirty_flag |= SPRITE_DIRTY_COLOR;
        }
    }
}

void HuSprGrpDrawNoSet(s16 group, s32 draw_no)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprData[gp->sprite[i]].draw_no = draw_no;
        }
    }
}

void HuSprDrawNoSet(s16 group, s16 memberNo, s32 draw_no)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->draw_no = draw_no;
}

void HuSprPriSet(s16 group, s16 memberNo, s16 prio)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->prio = prio;
}

void HuSprGrpScissorSet(s16 group, s16 x, s16 y, s16 w, s16 h)
{
    HUSPRGRP *gp = &HuSprGrpData[group];
    s16 i;
    for(i=0; i<gp->sprNum; i++) {
        if(gp->sprite[i] != HUSPR_NONE) {
            HuSprScissorSet(group, i, x, y, w, h);
        }
    }
}

void HuSprScissorSet(s16 group, s16 memberNo, s16 x, s16 y, s16 w, s16 h)
{
    HUSPRITE *sp = &HuSprData[HuSprGrpData[group].sprite[memberNo]];
    sp->scissor_x = x;
    sp->scissor_y = y;
    sp->scissor_w = w;
    sp->scissor_h = h;
}

static s16 bitSizeTbl[11] = { 32, 24, 16, 8, 4, 16, 8, 8, 4, 8, 4 };

ANIMDATA *HuSprAnimMake(s16 sizeX, s16 sizeY, s16 dataFmt)
{
    ANIMLAYER *layer;
    ANIMBMP *bmp;
    ANIMDATA *anim;
    ANIMPAT *pat;
    ANIMFRAME *frame;
    void *temp;
    ANIMBANK *bank;
    ANIMDATA *new_anim;

    anim = new_anim = HuMemDirectMalloc(HUHEAPTYPE_MODEL, sizeof(ANIMDATA)+sizeof(ANIMBANK)+sizeof(ANIMFRAME)
                                            +sizeof(ANIMPAT)+sizeof(ANIMLAYER)+sizeof(ANIMBMP));

    bank = temp = &new_anim[1];
    anim->bank = bank;
    frame = temp = ((char *)temp+sizeof(ANIMBANK));
    bank->frame = frame;
    pat = temp = ((char *)temp+sizeof(ANIMFRAME));
    anim->pat = pat;
    layer = temp = ((char *)temp+sizeof(ANIMPAT));
    pat->layer = layer;
    bmp = temp = ((char *)temp+sizeof(ANIMLAYER));
    anim->bmp = bmp;
    anim->useNum = 0;
    anim->bankNum = 1;
    anim->patNum = 1;
    anim->bmpNum = (1|ANIM_BMP_ALLOC);
    bank->timeNum = 1;
    bank->unk = 10;
    frame->pat = 0;
    frame->time = 10;
    frame->shiftX = frame->shiftY = frame->flip = 0;
    pat->layerNum = 1;
    pat->centerX = sizeX/2;
    pat->centerY = sizeY/2;
    pat->sizeX = sizeX;
    pat->sizeY = sizeY;
    layer->alpha = 255;
    layer->flip = 0;
    layer->bmpNo = 0;
    layer->startX = layer->startY = 0;
    layer->sizeX = sizeX;
    layer->sizeY = sizeY;
    layer->shiftX = layer->shiftY = 0;
    layer->vtx[0] = layer->vtx[1] = 0;
    layer->vtx[2] = sizeX;
    layer->vtx[3] = 0;
    layer->vtx[4] = sizeX;
    layer->vtx[5] = sizeY;
    layer->vtx[6] = 0;
    layer->vtx[7] = sizeY;
    bmp->pixSize = bitSizeTbl[dataFmt];
    bmp->dataFmt = dataFmt;
    bmp->palNum = 0;
    bmp->sizeX = sizeX;
    bmp->sizeY = sizeY;
    bmp->dataSize = sizeX*sizeY*bitSizeTbl[dataFmt]/8;
    bmp->palData = NULL;
    bmp->data = NULL;
    return anim;
}

void HuSprBGSet(s16 group, s16 memberNo, ANIMDATA *bg, s16 bg_bank)
{
    s16 sprite = HuSprGrpData[group].sprite[memberNo];
    HuSprSprBGSet(sprite, bg, bg_bank);
}

void HuSprSprBGSet(s16 sprite, ANIMDATA *bg, s16 bg_bank)
{
    HUSPRITE *sp = &HuSprData[sprite];
    sp->bg = bg;
    sp->bg_bank = bg_bank;
    sp->wrap_t = sp->wrap_s = GX_REPEAT;
    sp->attr &= ~HUSPR_ATTR_LINEAR;
    HuSprAnimLock(bg);
}

void AnimDebug(ANIMDATA *anim)
{
    ANIMPAT *pat;
    ANIMLAYER *layer;
    s16 i;
    s16 j;
    ANIMFRAME *frame;
    ANIMBANK *bank;
    ANIMBMP *bmp;
    
    OSReport("patNum %d,bankNum %d,bmpNum %d\n", anim->patNum, anim->bankNum, anim->bmpNum & ANIM_BMP_NUM_MASK);
    pat = anim->pat;
    for(i=0; i<anim->patNum; i++) {
        OSReport("PATTERN%d:\n", i);
        OSReport("\tlayerNum %d,center (%d,%d),size (%d,%d)\n", pat->layerNum, pat->centerX, pat->centerX, pat->sizeX, pat->sizeY);
        layer = pat->layer;
        for(j=0; j<pat->layerNum; j++) {
            OSReport("\t\tfileNo %d,flip %x\n", layer->bmpNo, layer->flip);
            OSReport("\t\tstart (%d,%d),size (%d,%d),shift (%d,%d)\n", layer->startX, layer->startY, layer->sizeX, layer->sizeY, layer->shiftX, layer->shiftY);
            if(j != pat->layerNum-1) {
                OSReport("\n");
            }
            layer++;
        }
        pat++;
    }
    bank = anim->bank;
    for(i=0; i<anim->bankNum; i++) {
        OSReport("BANK%d:\n", i);
        OSReport("\ttimeNum %d\n", bank->timeNum);
        frame = bank->frame;
        for(j=0; j<bank->timeNum; j++) {
            OSReport("\t\tpat %d,time %d,shift(%d,%d),flip %x\n", frame->pat, frame->time, frame->shiftX, frame->shiftY, frame->flip);
            frame++;
        }
        bank++;
    }
    bmp = anim->bmp;
    for(i=0; i<anim->bmpNum & ANIM_BMP_NUM_MASK; i++) {
        OSReport("BMP%d:\n", i);
        OSReport("\tpixSize %d,palNum %d,size (%d,%d)\n", bmp->pixSize, bmp->palNum, bmp->sizeX, bmp->sizeY);
        bmp++;
    }
}