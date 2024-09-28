#include "game/object.h"
#include "game/objdll.h"
#include "game/sprite.h"
#include "game/memory.h"
#include "game/data.h"
#include "game/pad.h"
#include "game/printfunc.h"
#include "game/audio.h"
#include "game/window.h"

#include "game/esprite.h"
#include "game/flag.h"

#define OMOVLHIS_MAX 16

//External definitions that should be cleaned up later

extern void GMesPracticeCreate(void);
extern void GMesClose(void);
extern void MgActorInit(void);
extern void MgActorClose(void);
extern void MgScoreWinKill(void);
extern void CharModelKill(s16 charNo);
extern void SLMessWinReset(void);

OMOBJ *omDBGSysKeyObj;
static HUPROCESS *omwatchproc;
static OMOVL omnextovl;
OMOVL omcurovl;
s32 omcurdll;
s32 omovlhisidx;
s32 omovlevtno;
static s32 omnextovlevtno;
s32 omovlstat;
static s32 omnextovlstat;
u8 omUPauseFlag;
s16 omSysExitReq;
s16 omdispinfo;

static OMOVLHIS omovlhis[OMOVLHIS_MAX];

u8 omSysPauseEnableFlag = TRUE;
OMOVL omprevovl = DLL_NONE;

static void omWatchOverlayProc(void);

void omMasterInit(s32 watchPrio, OVLTBL *ovlTbl, OMOVL ovlMax, OMOVL ovlInit)
{
    s16 i;
    omDLLInit(ovlTbl);
    omwatchproc = HuPrcCreate(omWatchOverlayProc, watchPrio, 12288, 0);
    HuPrcSetStat(omwatchproc, HU_PRC_STAT_PAUSE_ON|HU_PRC_STAT_UPAUSE_ON);
    omcurovl = DLL_NONE;
    omovlhisidx = -1;
    omOvlCall(ovlInit, 0, 0);
    omDBGSysKeyObj = NULL;
    for(i=0; i<16; i++) {
        sdWorkInt[i] = sdWorkFloat[i] = 0;
    }
    omSysPauseEnable(TRUE);
}

static void omWatchOverlayProc(void)
{
    while(1) {
        if(omcurovl == DLL_NONE) {
            if(omnextovl >= 0 && fadeStat == FALSE) {
                HuPrcSleep(0);
                OSReport("++++++++++++++++++++ Start New OVL %d (EVT:%d STAT:0x%08x) ++++++++++++++++++\n", omnextovl, omnextovlevtno, omnextovlstat);
                HuMemHeapDump(HuMemHeapPtrGet(HUHEAPTYPE_HEAP), -1);
                HuMemHeapDump(HuMemHeapPtrGet(HUHEAPTYPE_MODEL), -1);
                HuMemHeapDump(HuMemHeapPtrGet(HUHEAPTYPE_DVD), -1);
                OSReport("objman>Used Memory Size:%08x\n", HuMemUsedMallocSizeGet(HUHEAPTYPE_HEAP));
                OSReport("objman>Used Memory Cnt:%d\n", HuMemUsedMallocBlockGet(HUHEAPTYPE_HEAP));
                OSReport("objman>Init esp\n");
                espInit();
                OSReport("objman>Call objectsetup\n");
                HuAudDllSndGrpSet(omnextovl);
                omcurovl = omnextovl;
                omovlevtno = omnextovlevtno;
                omovlstat = omnextovlstat;
                omnextovl = DLL_NONE;
                if(_CheckFlag(FLAGNUM(1, 15))) {
                    GMesPracticeCreate();
                }
                omSysPauseEnable(TRUE);
                MgActorInit();
                omcurdll = omDLLStart(omcurovl, FALSE);
                OSReport("objman>ObjectSetup end\n");
                if(omcurovl != DLL_NONE) {
                    goto watch;
                } else {
                    continue;
                }
            } else {
                HuPrcVSleep();
            }
        } else {
            watch:
            HuPrcChildWatch();
        }
    }
}

void omOvlCallEx(OMOVL ovl, s16 unlinkF, s32 evtno, s32 stat)
{
    OSReport("objman>Call New Ovl %d(%d)\n", ovl, unlinkF);
    if(omovlhisidx >= OMOVLHIS_MAX) {
        OSReport("objman>OVL Call over error\n");
    } else {
        omovlhis[++omovlhisidx].ovl = ovl;
        omovlhis[omovlhisidx].evtno = evtno;
        omovlhis[omovlhisidx].stat = stat;
        omOvlGotoEx(ovl, unlinkF, evtno, stat);
    }
}

void omOvlGotoEx(OMOVL ovl, s16 unlinkF, s32 evtno, s32 stat)
{
    omprevovl = omcurovl;
    if(omcurovl >= 0) {
        omOvlKill(unlinkF);
    }
    omnextovl = ovl;
    omnextovlevtno = evtno;
    omnextovlstat = stat;
}

void omOvlReturnEx(s16 hisOfs, s16 unlinkF)
{
    if(omnextovl >= 0) {
        return;
    }
    omovlhisidx -= hisOfs;
    OSReport("objman>Ovl Return %d=%d(%d)\n", hisOfs, omovlhisidx, unlinkF);
    if(omovlhisidx < 0) {
        OSReport("objman>OVL under error\n");
        omovlhisidx = 0;
    }
    omOvlGotoEx(omovlhis[omovlhisidx].ovl, unlinkF, omovlhis[omovlhisidx].evtno, omovlhis[omovlhisidx].stat);
}

void omOvlKill(s16 unlinkF)
{
    MgActorClose();
    CharModelKill(-1);
    GMesClose();
    Hu3DAllKill();
    HuWinAllKill();
    HuSprClose();
    HuPrcChildKill(omwatchproc);
    HuMemDirectFreeNum(HUHEAPTYPE_HEAP, HU_MEMNUM_OVL);
    HuDataDirCloseNum(HU_MEMNUM_OVL);
    HuMemDirectFreeNum(HUHEAPTYPE_DVD, HU_MEMNUM_OVL);
    HuMemDirectFreeNum(HUHEAPTYPE_MODEL, HU_MEMNUM_OVL);
    SLMessWinReset();
    HuPadRumbleAllStop();
    HuAudFXListnerKill();
    OSReport("OvlKill %d\n", unlinkF);
    omSysExitReq = FALSE;
    omDLLNumEnd(omcurovl, unlinkF);
    omcurovl = DLL_NONE;
    omDBGSysKeyObj = NULL;
}

void omOvlHisChg(s32 hisOfs, OMOVL ovl, s32 evtno, s32 stat)
{
    OMOVLHIS *his;
    if(omovlhisidx-hisOfs < 0 || omovlhisidx-hisOfs >= OMOVLHIS_MAX) {
        OSReport("objman> omOvlHisChg: overlay 実行履歴の範囲外を変更しようとしました\n");
        return;
    }
    his = &omovlhis[omovlhisidx-hisOfs];
    his->ovl = ovl;
    his->evtno = evtno;
    his->stat = stat;
}

OMOVLHIS *omOvlHisGet(s32 hisOfs)
{
    if(omovlhisidx-hisOfs < 0 || omovlhisidx-hisOfs >= OMOVLHIS_MAX) {
        OSReport("objman> omOvlHisGet: overlay 実行履歴の範囲外を参照しようとしました\n");
        return NULL;
    }
    return &omovlhis[omovlhisidx-hisOfs];
}

#define OMOBJGRP_MAX 10
#define OMOBJ_NONE -1

typedef struct omObjGrp_s {
    u16 memberNo;
    u16 objMax;
    u16 objNum;
    u16 *memberNext;
    OMOBJ **memberList;
} OMOBJGRP;

typedef struct omObjWork_s {
    s16 objMax;
    s16 objIdx;
    s16 objNext;
    s16 objLast;
    s16 objFirst;
    OMOBJ *objData;
    OMOBJGRP *grpData;
} OMOBJWORK;

static void omMain(void);

static void omDestroyObjMan(void);


OMOBJMAN *omInitObjMan(s16 objMax, s32 objManPrio)
{
    OMOBJGRP *grpData;
    OMOBJ *objData;
    OMOBJWORK *objWork;
    OMOBJMAN *objMan;
    s32 i;
    OSReport("objman>InitObjMan start\n");
    objMax += 5;
    omSysExitReq = FALSE;
    objMan = HuPrcChildCreate(omMain, objManPrio, 24576, 0, omwatchproc);
    HuPrcSetStat(objMan, HU_PRC_STAT_PAUSE_ON|HU_PRC_STAT_UPAUSE_ON);
    objWork = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, sizeof(OMOBJWORK), HU_MEMNUM_OVL);
    objWork->objMax = objMax;
    objMan->property = objWork;
    objMan->destructor = omDestroyObjMan;
    objWork->objIdx = 0;
    objWork->objNext = 0;
    objWork->objLast = OMOBJ_NONE;
    objWork->objFirst = OMOBJ_NONE;
    objWork->objData = objData = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, sizeof(OMOBJ)*objMax, HU_MEMNUM_OVL);
    objWork->grpData = grpData = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, sizeof(OMOBJGRP)*OMOBJGRP_MAX, HU_MEMNUM_OVL);
    for(i=0; i<objMax; i++) {
        OMOBJ *obj = &objData[i];
        obj->stat = OM_STAT_DELETED;
        obj->prio = obj->prev = obj->next = OMOBJ_NONE;
        obj->mode = 0;
        obj->trans.x = obj->trans.y = obj->trans.z = obj->rot.x = obj->rot.y = obj->rot.z = 0;
        obj->scale.x = obj->scale.y = obj->scale.z = 1;
        obj->mdlId = obj->mtnId = NULL;
        obj->objFunc = obj->data = NULL;
        obj->nextNo = i+1;
        obj->mtncnt = 0;
        obj->mtnId = NULL;
    }
    for(i=0; i<OMOBJGRP_MAX; i++) {
        grpData[i].objMax = 0;
        grpData[i].objNum = 0;
        grpData[i].memberNo = 0;
        grpData[i].memberList = NULL;
        grpData[i].memberNext = NULL;
    }
    OSReport("objman>InitObjMan end\n");
    omUPauseFlag = FALSE;
    HuPrcAllUPause(0);
    omCameraViewInit();
    MgScoreWinKill();
    return objMan;
}

static void omDestroyObjMan(void)
{
    OMOBJMAN *objMan = HuPrcCurrentGet();
    OMOBJWORK *objWork = objMan->property;
    objWork->objLast = OMOBJ_NONE;
    OSReport("objman>Destory ObjMan\n");
}

static void omInsertObj(OMOBJMAN *objMan, OMOBJ *obj);

OMOBJ *omAddObjEx(OMOBJMAN *objMan, s16 prio, u16 mdlcnt, u16 mtncnt, s16 grpNo, OMOBJFUNC objFunc)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJ *objData = objWork->objData;
    OMOBJ *obj;
    s16 objNext;
    s32 i;
    if(objWork->objIdx == objWork->objMax) {
        OSReport("Error: ObjMax Over!\n");
        return NULL;
    }
    objNext = objWork->objNext;
    obj = &objData[objNext];
    obj->objNext = objNext;
    obj->prio = prio;
    omInsertObj(objMan, obj);
    if(mdlcnt) {
        obj->mdlId = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, sizeof(HU3DMODELID)*mdlcnt, HU_MEMNUM_OVL);
        obj->mdlcnt = mdlcnt;
        for(i=0; i<mdlcnt; i++) {
            obj->mdlId[i] = HU3D_MODELID_NONE;
        }
    } else {
        obj->mdlId = NULL;
        obj->mdlcnt = 0;
    }
    if(mtncnt) {
        obj->mtnId = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, sizeof(HU3DMODELID)*mtncnt, HU_MEMNUM_OVL);
        obj->mtncnt = mtncnt;
    } else {
        obj->mtnId = NULL;
        obj->mtncnt = 0;
    }
    if(grpNo >= 0) {
        omAddMember(objMan, grpNo, obj);
    } else {
        obj->grpNo = grpNo;
        obj->memberNo = 0;
    }
    obj->stat = OM_STAT_ACTIVE;
    obj->mode = 0;
    obj->objFunc = objFunc;
    obj->work[0] = obj->work[1] = obj->work[2] = obj->work[3] = 0;
    objWork->objNext = obj->nextNo;
    objWork->objIdx++;
    omSetTra(obj, 0.0f, 0.0f, 0.0f);
    omSetRot(obj, 0.0f, 0.0f, 0.0f);
    omSetSca(obj, 1.0f, 1.0f, 1.0f);
    return obj;
}

static void omInsertObj(OMOBJMAN *objMan, OMOBJ *obj)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJ *objData = objWork->objData;
    s16 objNext = obj->objNext;
    s16 prio = obj->prio;
    s16 next;
    s16 prev;
    OMOBJ *objNextP;
    if(objWork->objFirst == OMOBJ_NONE) {
        obj->prev = OMOBJ_NONE;
        obj->next = OMOBJ_NONE;
        objWork->objFirst = objNext;
        objWork->objLast = objNext;
        return;
    }
    for(next=objWork->objFirst; next != OMOBJ_NONE; next = objNextP->next) {
        objNextP = &objData[next];
        if(objNextP->prio <= prio) {
            break;
        }
        prev = next;
    }
    if(next != OMOBJ_NONE) {
        obj->prev = objNextP->prev;
        obj->next = next;
        if(objNextP->prev != OMOBJ_NONE) {
            objData[objNextP->prev].next = objNext;
        } else {
            objWork->objFirst = objNext;
        }
        objNextP->prev = objNext;
    } else {
        obj->next = OMOBJ_NONE;
        obj->prev = prev;
        objNextP->next = objNext;
        objWork->objLast = objNext;
    }
}

void omAddMember(OMOBJMAN *objMan, u16 grpNo, OMOBJ *obj)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJGRP *grpP = &objWork->grpData[grpNo];
    if(grpP->objNum != grpP->objMax) {
        obj->grpNo = grpNo;
        obj->memberNo = grpP->memberNo;
        grpP->memberList[grpP->memberNo] = obj;
        grpP->memberNo = grpP->memberNext[grpP->memberNo];
        grpP->objNum++;
    }
}

void omDelObjEx(OMOBJMAN *objMan, OMOBJ *obj)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJ *objData = objWork->objData;
    s16 objNext = obj->objNext;
    if(objWork->objIdx == 0 || obj->stat == OM_STAT_DELETED) {
        return;
    }
    objWork->objIdx--;
    if(obj->grpNo >= 0) {
        omDelMember(objMan, obj);
    }
    if(obj->mtnId != NULL) {
        HuMemDirectFree(obj->mtnId);
        obj->mtnId = NULL;
    }
    if(obj->mdlId != NULL) {
        HuMemDirectFree(obj->mdlId);
        obj->mdlId = NULL;
    }
    if(obj->data != NULL) {
        HuMemDirectFree(obj->data);
        obj->data = NULL;
    }
    obj->stat = OM_STAT_DELETED;
    if(obj->next >= 0) {
        objData[obj->next].prev = obj->prev;
    }
    if(obj->prev >= 0) {
        objData[obj->prev].next = obj->next;
    }
    if(objWork->objIdx) {
        if(obj->prev < 0) {
            objWork->objFirst = objData[obj->next].objNext;
        }
        if(obj->next < 0) {
            objWork->objLast = objData[obj->prev].objNext;
        }
    } else {
        objWork->objFirst = objWork->objLast = OMOBJ_NONE;
    }
    obj->nextNo = objWork->objNext;
    objWork->objNext = objNext;
}

void omDelMember(OMOBJMAN *objMan, OMOBJ *obj)
{
    if(obj->grpNo != OM_GRP_NONE) {
        OMOBJWORK *objWork = objMan->property;
        OMOBJ *objData = objWork->objData;
        OMOBJGRP *grp = &objWork->grpData[obj->grpNo];
        grp->memberList[obj->memberNo] = NULL;
        grp->memberNext[obj->memberNo] = grp->memberNo;
        grp->memberNo = obj->memberNo;
        obj->grpNo = OM_GRP_NONE;
        grp->objNum--;
    }
}

void omMakeGroupEx(OMOBJMAN *objMan, u16 grpNo, u16 objMax)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJGRP *grpP = &objWork->grpData[grpNo];
    s32 i;
    if(grpP->memberList != NULL) {
        HuMemDirectFree(grpP->memberList);
    }
    if(grpP->memberNext != NULL) {
        HuMemDirectFree(grpP->memberNext);
    }
    grpP->memberNo = 0;
    grpP->objMax = objMax;
    grpP->objNum = 0;
    grpP->memberList = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, objMax*sizeof(OMOBJ *), HU_MEMNUM_OVL);
    grpP->memberNext = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, objMax*sizeof(u16), HU_MEMNUM_OVL);
    for(i=0; i<objMax; i++) {
        grpP->memberList[i] = NULL;
        grpP->memberNext[i] = i+1;
    }
}

OMOBJ **omGetGroupMemberListEx(OMOBJMAN *objMan, s16 grpNo)
{
    OMOBJWORK *objWork = objMan->property;
    return objWork->grpData[grpNo].memberList;
}

void omSetStatBit(OMOBJ *obj, u16 bit)
{
    obj->stat |= bit;
}

void omResetStatBit(OMOBJ *obj, u16 bit)
{
    obj->stat &= ~bit;
}

void omSetTra(OMOBJ *obj, float x, float y, float z)
{
    obj->trans.x = x;
    obj->trans.y = y;
    obj->trans.z = z;
}

void omSetRot(OMOBJ *obj, float x, float y, float z)
{
    obj->rot.x = x;
    obj->rot.y = y;
    obj->rot.z = z;
}

void omSetSca(OMOBJ *obj, float x, float y, float z)
{
    obj->scale.x = x;
    obj->scale.y = y;
    obj->scale.z = z;
}

#define BLACK_SHADOW "\xFD\x01"

static void omMain(void)
{
    OMOBJMAN *objMan = HuPrcCurrentGet();
    OMOBJWORK *objWork = objMan->property;
    OMOBJ *objData = objWork->objData;
    s16 objIdx;
    omDLLDBGOut();
    while(1) {
        if(omdispinfo) {
            float scale = 1.5f;
            GXColor color;
            color.a = 96;
            color.r = 0;
            color.g = 0;
            color.b = 255;
            printWin(15, 31, 128*scale, 48*scale, &color);
            fontcolor = FONT_COLOR_YELLOW;
            print8(16, 32, scale, BLACK_SHADOW "H:%08lX(%ld)", HuMemUsedMallocSizeGet(HUHEAPTYPE_HEAP), HuMemUsedMallocBlockGet(HUHEAPTYPE_HEAP));
            print8(16, 32+(8*scale), scale, BLACK_SHADOW "M:%08lX(%ld)", HuMemUsedMallocSizeGet(HUHEAPTYPE_MODEL), HuMemUsedMallocBlockGet(HUHEAPTYPE_MODEL));
            print8(16, 32+(16*scale), scale, BLACK_SHADOW "OBJ:%d/%d", objWork->objIdx, objWork->objMax);
            print8(16, 32+(24*scale), scale, BLACK_SHADOW "OVL:%ld(%ld<%ld)", omovlhisidx, omcurovl, omprevovl);
            print8(16, 32+(32*scale), scale, BLACK_SHADOW "POL:%ld", totalPolyCnted);
            print8(16, 32+(40*scale), scale, BLACK_SHADOW "D:%08lX(%ld)", HuMemUsedMallocSizeGet(HUHEAPTYPE_DVD), HuMemUsedMallocBlockGet(HUHEAPTYPE_DVD));
        }
        objIdx = objWork->objLast;
        while(objIdx != OMOBJ_NONE) {
            OMOBJ *obj = &objData[objIdx];
            objIdx = obj->prev;
            if((obj->stat & (OM_STAT_DELETED|OM_STAT_DISABLED)) == 0) {
                if(obj->objFunc != NULL && (obj->stat & (0x40|0x8|OM_STAT_PAUSED)) == 0) {
                    obj->objFunc(obj);
                }
                if(omcurovl == DLL_NONE || objWork->objLast == OMOBJ_NONE) {
                    break;
                }
                if((obj->stat & (OM_STAT_DELETED|OM_STAT_DISABLED)) == 0) {
                    if((objData[objIdx].stat & (OM_STAT_DELETED|OM_STAT_DISABLED)) != 0) {
                        objIdx = obj->prev;
                    }
                    if(obj->mdlId != NULL && obj->mdlId[0] != HU3D_MODELID_NONE && !(obj->stat & OM_STAT_MODEL_PAUSED)) {
                        Hu3DModelPosSet(obj->mdlId[0], obj->trans.x, obj->trans.y, obj->trans.z);
                        Hu3DModelRotSet(obj->mdlId[0], obj->rot.x, obj->rot.y, obj->rot.z);
                        Hu3DModelScaleSet(obj->mdlId[0], obj->scale.x, obj->scale.y, obj->scale.z);
                    }
                }
            }
        }
        HuPrcVSleep();
    }
}

//Dummy function to force string literals in binary
static void omDumpObj(OMOBJMAN *objMan)
{
    OMOBJWORK *objWork = objMan->property;
    OMOBJ *objData = objWork->objData;
    s32 i;
    OSReport("=================== 現在登録されている OBJECT ==================\n");
    OSReport("STAT PRI GRPN MEMN PROG (TRA) (ROT) (SCA) mdlcnt mtncnt work[0] work[1] work[2] work[3] *data\n");
    for(i=0; i<objWork->objMax; i++) {
        OMOBJ *object = &objData[i];
        OSReport("%04d:%04X %04X %d %d %08X (%.2f %.2f %.2f) (%.2f %.2f %.2f) (%.2f %.2f %.2f) %d %d %08X %08X %08X %08X %08X\n",
            object->stat, object->stat, object->prio, object->grpNo, object->mode, object->objFunc,
            object->trans.x, object->trans.y, object->trans.z, 
            object->rot.x, object->rot.y, object->rot.z, 
            object->scale.x, object->scale.y, object->scale.z, 
            object->mdlcnt, object->mtncnt, object->work[0], object->work[1], object->work[2], object->work[3], object->data);
    }
    OSReport("================================================================\n");
}

void omAllPause(BOOL pauseF)
{
    OMOBJMAN *objMan = HuPrcCurrentGet();
    OMOBJWORK *objWork = objMan->property;
    s32 i;
    if(pauseF) {
        for(i=0; i<objWork->objMax; i++) {
            if((objWork->objData[i].stat & (OM_STAT_DELETED|OM_STAT_NOPAUSE)) == 0) {
                omSetStatBit(&objWork->objData[i], OM_STAT_PAUSED);
            }
        }
    } else {
        for(i=0; i<objWork->objMax; i++) {
            if((objWork->objData[i].stat & (OM_STAT_DELETED|OM_STAT_NOPAUSE)) == 0) {
                omResetStatBit(&objWork->objData[i], OM_STAT_PAUSED);
            }
        }
    }
}

char omPauseChk(void)
{
    if(omDBGSysKeyObj == NULL) {
        return 0;
    } else {
        return omDBGSysKeyObj->work[0] & 0x1;
    }
}

OMOVL omCurrentOvlGet(void)
{
    return omcurovl;
}