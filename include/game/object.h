#ifndef _GAME_OBJECT_H
#define _GAME_OBJECT_H

#include "dolphin.h"
#include "game/process.h"
#include "game/hu3d.h"

#define DLL(name) DLL_##name,

typedef enum omOvl_e {
    DLL_NONE = -1,
    #include "ovl_table.h"
    DLL_MAX
} OMOVL;

#undef DLL

#define OM_STAT_DELETED 0x1
#define OM_STAT_DISABLED 0x2
#define OM_STAT_ACTIVE 0x4
#define OM_STAT_PAUSED 0x10
#define OM_STAT_NOPAUSE 0x20
#define OM_STAT_MODEL_PAUSED 0x100

#define OM_GRP_NONE -1

typedef HUPROCESS OMOBJMAN;
typedef struct omObj_s OMOBJ;
typedef void (*OMOBJFUNC)(OMOBJ *obj);

struct omObj_s {
    u16 stat;
    s16 objNext;
    s16 prio;
    s16 prev;
    s16 next;
    s16 nextNo;
    s16 grpNo;
    u16 memberNo;
    u32 mode;
    OMOBJFUNC objFunc;
    Vec trans;
    Vec rot;
    Vec scale;
    u16 mdlcnt;
    HU3DMODELID *mdlId;
    u16 mtncnt;
    HU3DMOTID *mtnId;
    u32 work[4];
    void *data;
};

typedef struct omOvlHis_s {
    OMOVL ovl;
    s32 evtno;
    s32 stat;
} OMOVLHIS;

typedef struct ovlTbl_s {
    char *name;
    s32 entryNum;
} OVLTBL;

void omOvlCallEx(OMOVL ovl, s16 unlinkF, s32 evtno, s32 stat);
void omOvlGotoEx(OMOVL ovl, s16 unlinkF, s32 evtno, s32 stat);
void omOvlReturnEx(s16 hisOfs, s16 unlinkF);
void omOvlKill(s16 unlinkF);
void omOvlHisChg(s32 hisOfs, OMOVL ovl, s32 evtno, s32 stat);
OMOVLHIS *omOvlHisGet(s32 hisOfs);
OMOBJMAN *omInitObjMan(s16 objMax, s32 objManPrio);
OMOBJ *omAddObjEx(OMOBJMAN *objMan, s16 prio, u16 mdlcnt, u16 mtncnt, s16 grpNo, OMOBJFUNC objFunc);
void omAddMember(OMOBJMAN *objMan, u16 grpNo, OMOBJ *obj);
void omDelObjEx(OMOBJMAN *objMan, OMOBJ *obj);
void omDelMember(OMOBJMAN *objMan, OMOBJ *obj);
void omMakeGroupEx(OMOBJMAN *objMan, u16 grpNo, u16 objMax);
OMOBJ **omGetGroupMemberListEx(OMOBJMAN *objMan, s16 grpNo);
void omSetStatBit(OMOBJ *obj, u16 bit);
void omResetStatBit(OMOBJ *obj, u16 bit);

void omSetTra(OMOBJ *obj, float x, float y, float z);
void omSetRot(OMOBJ *obj, float x, float y, float z);
void omSetSca(OMOBJ *obj, float x, float y, float z);

void omAllPause(BOOL pauseF);
char omPauseChk(void);
OMOVL omCurrentOvlGet(void);

void omCameraMoveInit(void);
void omSysPauseEnable(u8 flag);

extern s16 omSysExitReq;

extern float SdWorkFloat[16];
extern int SdWorkInt[16];

#endif