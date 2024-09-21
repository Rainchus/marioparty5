#include "game/EnvelopeExec.h"
#include "game/hsfex.h"

#include "string.h"

static void SetEnvelopMtx(HSFOBJECT *arg0, HSFOBJECT *arg1, Mtx arg2);
static void SetEnvelopMain(HSFDATA *arg0);
static void SetEnvelop(HSFCENV *arg0);
static void SetMtx(HSFOBJECT *arg0, Mtx arg1);
static void SetRevMtx(void);
static HSFSKELETON *SearchSklenton(char *arg0);

Vec *Vertextop;
Mtx *MtxTop;
static u32 nObj;
static u32 nMesh;
static HSFOBJECT *objtop;
static HSFDATA *CurHsf;
static Vec *vtxenv;
static Vec *normenv;
static Vec *normtop;
static s32 Meshcnt;
static s32 Meshno;

void InitEnvelope(HSFDATA *arg0) {
    HSFBUFFER *spC;
    HSFBUFFER *sp8;
    HSFMATRIX *temp_r28;
    HSFOBJECT *var_r31;
    HSFSKELETON *var_r30;
    Mtx sp10;
    s32 i;
    s32 j;

    if (arg0->cenvNum != 0) {
        var_r31 = arg0->object;
        for (Meshcnt = i = 0; i < arg0->objectNum; i++, var_r31++) {
            if (var_r31->type == 2) {
                if (var_r31->mesh.vtxtop) {
                    spC = var_r31->mesh.vertex;
                    sp8 = var_r31->mesh.normal;
                    Meshcnt++;
                } else {
                    continue;
                }
            }
            var_r30 = arg0->skeleton;
            for (j = 0; j < arg0->skeletonNum; j++, var_r30++) {
                if (strcmp(var_r31->name, var_r30->name) == 0) {
                    var_r31->mesh.base = var_r30->transform;
                }
            }
            var_r31->mesh.curr = var_r31->mesh.base;
        }
        CurHsf = arg0;
        objtop = arg0->object;
        temp_r28 = CurHsf->matrix;
        if (temp_r28) {
            MtxTop = temp_r28->data;
            nObj = temp_r28->count;
            nMesh = temp_r28->base_idx;
        }
        PSMTXIdentity(sp10);
        SetMtx(arg0->root, sp10);
        SetRevMtx();
    }
}

static void SetEnvelopMtx(HSFOBJECT *arg0, HSFOBJECT *arg1, Mtx arg2) {
    Mtx sp6C;
    Mtx sp3C;
    Mtx spC;
    s32 var_r29;
    s32 i;

    PSMTXTrans(spC, arg1->mesh.curr.pos.x, arg1->mesh.curr.pos.y, arg1->mesh.curr.pos.z);
    PSMTXConcat(arg2, spC, sp3C);
    if (arg1->mesh.curr.rot.z) {
        PSMTXRotRad(sp6C, 'z', MTXDegToRad(arg1->mesh.curr.rot.z));
        PSMTXConcat(sp3C, sp6C, sp3C);
    }
    if (arg1->mesh.curr.rot.y) {
        PSMTXRotRad(sp6C, 'y', MTXDegToRad(arg1->mesh.curr.rot.y));
        PSMTXConcat(sp3C, sp6C, sp3C);
    }
    if (arg1->mesh.curr.rot.x) {
        PSMTXRotRad(sp6C, 'x', MTXDegToRad(arg1->mesh.curr.rot.x));
        PSMTXConcat(sp3C, sp6C, sp3C);
    }
    if (arg1->mesh.curr.scale.x != 1.0f) {
        sp3C[0][0] *= arg1->mesh.curr.scale.x;
        sp3C[1][0] *= arg1->mesh.curr.scale.x;
        sp3C[2][0] *= arg1->mesh.curr.scale.x;
    }
    if (arg1->mesh.curr.scale.y != 1.0f) {
        sp3C[0][1] *= arg1->mesh.curr.scale.y;
        sp3C[1][1] *= arg1->mesh.curr.scale.y;
        sp3C[2][1] *= arg1->mesh.curr.scale.y;
    }
    if (arg1->mesh.curr.scale.z != 1.0f) {
        sp3C[0][2] *= arg1->mesh.curr.scale.z;
        sp3C[1][2] *= arg1->mesh.curr.scale.z;
        sp3C[2][2] *= arg1->mesh.curr.scale.z;
    }
    var_r29 = arg1 - arg0;
    PSMTXCopy(sp3C, MtxTop[nMesh + var_r29]);
    for (i = 0; i < arg1->mesh.childNum; i++) {
        SetEnvelopMtx(arg0, arg1->mesh.child[i], sp3C);
    }
}

void EnvelopeProc(HSFDATA *arg0) {
    HSFMATRIX *temp_r31;
    HSFOBJECT *temp_r29;
    Mtx sp8;

    CurHsf = arg0;
    temp_r31 = CurHsf->matrix;
    MtxTop = temp_r31->data;
    nObj = temp_r31->count;
    nMesh = temp_r31->base_idx;
    temp_r29 = arg0->root;
    PSMTXIdentity(sp8);
    SetEnvelopMtx(arg0->object, temp_r29, sp8);
    SetEnvelopMain(arg0);
}

void InitVtxParm(HSFDATA *arg0) {
    HSFOBJECT *var_r31;
    s32 i;

    var_r31 = arg0->object;
    for (i = 0; i < arg0->objectNum; i++, var_r31++) {
        if (var_r31->type == 2) {
            var_r31->mesh.writeNum = 0;
        }
    }
}

static void SetEnvelopMain(HSFDATA *arg0) {
    void *sp10;
    void *spC;
    void *sp8;
    HSFBUFFER *temp_r28;
    HSFBUFFER *temp_r30;
    HSFOBJECT *var_r31;
    s32 i;
    s32 j;
    HSFCENV *var_r25;

    var_r31 = arg0->object;
    for (Meshno = i = 0; i < arg0->objectNum; i++, var_r31++) {
        if (var_r31->type == 2) {
            PSMTXInverse(MtxTop[&var_r31[nMesh] - arg0->object], MtxTop[Meshno]);
            temp_r30 = var_r31->mesh.vertex;
            temp_r28 = var_r31->mesh.normal;
            if (var_r31->mesh.writeNum != 0) {
                Vertextop = temp_r30->data;
            } else {
                Vertextop = var_r31->mesh.vtxtop;
            }
            vtxenv = temp_r30->data;
            normtop = var_r31->mesh.normtop;
            normenv = temp_r28->data;
            var_r25 = var_r31->mesh.cenv;
            for (j = 0; j < var_r31->mesh.cenvNum; j++, var_r25++) {
                SetEnvelop(var_r25);
            }
            sp10 = temp_r30->data;
            spC = var_r31->mesh.vtxtop;
            sp8 = temp_r30->data;
            DCStoreRangeNoSync(normenv, temp_r28->count * sizeof(Vec));
            DCStoreRangeNoSync(vtxenv, temp_r30->count * sizeof(Vec));
            Meshno++;
        }
    }
}

void MTXAdd(Mtx *src1, Mtx *src2, Mtx *dst)
{
    Mtx temp;
    Mtx *writePtr;
    if(dst == src1 || dst == src2) {
        writePtr = &temp;
    } else {
        writePtr = dst;
    }
    (*writePtr)[0][0] = (*src1)[0][0]+(*src2)[0][0];
    (*writePtr)[0][1] = (*src1)[0][1]+(*src2)[0][1];
    (*writePtr)[0][2] = (*src1)[0][2]+(*src2)[0][2];
    (*writePtr)[0][3] = (*src1)[0][3]+(*src2)[0][3];
    (*writePtr)[1][0] = (*src1)[1][0]+(*src2)[1][0];
    (*writePtr)[1][1] = (*src1)[1][1]+(*src2)[1][1];
    (*writePtr)[1][2] = (*src1)[1][2]+(*src2)[1][2];
    (*writePtr)[1][3] = (*src1)[1][3]+(*src2)[1][3];
    (*writePtr)[2][0] = (*src1)[2][0]+(*src2)[2][0];
    (*writePtr)[2][1] = (*src1)[2][1]+(*src2)[2][1];
    (*writePtr)[2][2] = (*src1)[2][2]+(*src2)[2][2];
    (*writePtr)[2][3] = (*src1)[2][3]+(*src2)[2][3];
    if(writePtr == &temp) {
        MTXCopy(temp, *dst);
    }
}

static void SetEnvelop(HSFCENV *arg0) {
    Vec sp44;
    Vec sp38;
    Vec sp2C;
    Vec sp20;
    Vec sp14;
    s32 sp10;
    u32 spC;
    u32 sp8;
    HSFCENVDUAL *var_r20;
    HSFCENVDUALWEIGHT *var_r30;
    HSFCENVMULTI *var_r19;
    HSFCENVMULTIWEIGHT *var_r25;
    HSFCENVSINGLE *var_r27;
    Vec *temp_r22;
    Vec *temp_r26;
    Vec *temp_r28;
    Vec *temp_r31;
    float temp_f31;
    MtxPtr var_r29;
    s32 temp_r18;
    s32 temp_r21;
    s32 i;
    s32 j;
    Mtx sp1A0;
    Mtx sp170;
    Mtx sp140;
    Mtx sp110;
    Mtx spE0;
    Mtx spB0;
    Mtx sp80;

    var_r27 = arg0->singleData;
    for (i = 0; i < arg0->singleCount; i++, var_r27++) {
        temp_r18 = var_r27->normal;
        temp_r21 = var_r27->pos;
        temp_r28 = &vtxenv[temp_r21];
        temp_r31 = &Vertextop[temp_r21];
        temp_r22 = &normenv[temp_r18];
        temp_r26 = &normtop[temp_r18];
        PSMTXConcat(MtxTop[nMesh + var_r27->target], MtxTop[nMesh + nObj + nObj * Meshno + var_r27->target], sp140);
        PSMTXConcat(MtxTop[Meshno], sp140, sp1A0);
        Hu3DMtxScaleGet(&sp1A0[0], &sp14);
        if (sp14.x != 1.0f || sp14.y != 1.0f || sp14.z != 1.0f) {
            PSMTXScale(spE0, 1.0 / sp14.x, 1.0 / sp14.y, 1.0 / sp14.z);
            PSMTXConcat(spE0, sp1A0, sp170);
            PSMTXInvXpose(sp170, sp170);
        } else {
            PSMTXInvXpose(sp1A0, sp170);
        }
        if (var_r27->posNum == 1) {
            PSMTXMultVec(sp1A0, temp_r31, temp_r28);
            PSMTXMultVec(sp170, temp_r26, temp_r22);
        } else if (var_r27->posNum <= 6) {
            PSMTXMultVecArray(sp1A0, temp_r31, temp_r28, var_r27->posNum);
            PSMTXMultVecArray(sp170, temp_r26, temp_r22, var_r27->normalNum);
        } else {
            PSMTXReorder(sp1A0, (ROMtxPtr) sp140);
            PSMTXReorder(sp170, (ROMtxPtr) sp110);
            PSMTXROMultVecArray((ROMtxPtr) sp140, temp_r31, temp_r28, var_r27->posNum);
            PSMTXROMultVecArray((ROMtxPtr) sp110, temp_r26, temp_r22, var_r27->normalNum);
        }
    }
    var_r20 = arg0->dualData;
    for (i = 0; i < arg0->dualCount; i++, var_r20++) {
        spC = var_r20->target1;
        sp8 = var_r20->target2;
        PSMTXConcat(MtxTop[nMesh + spC], MtxTop[nMesh + nObj + nObj * Meshno + spC], sp140);
        PSMTXConcat(MtxTop[Meshno], sp140, sp1A0);
        PSMTXConcat(MtxTop[nMesh + sp8], MtxTop[nMesh + nObj + nObj * Meshno + sp8], sp140);
        PSMTXConcat(MtxTop[Meshno], sp140, (float (*)[4]) &spB0[0]);
        var_r30 = var_r20->weight;
        for (j = 0; j < var_r20->weightNum; j++, var_r30++) {
            temp_r18 = var_r30->normal;
            temp_r21 = var_r30->pos;
            temp_r28 = &vtxenv[temp_r21];
            temp_r31 = &Vertextop[temp_r21];
            temp_r22 = &normenv[temp_r18];
            temp_r26 = &normtop[temp_r18];
            temp_f31 = var_r30->weight;
            sp140[0][0] = sp1A0[0][0] * temp_f31;
            sp140[1][0] = sp1A0[1][0] * temp_f31;
            sp140[2][0] = sp1A0[2][0] * temp_f31;
            sp140[0][1] = sp1A0[0][1] * temp_f31;
            sp140[1][1] = sp1A0[1][1] * temp_f31;
            sp140[2][1] = sp1A0[2][1] * temp_f31;
            sp140[0][2] = sp1A0[0][2] * temp_f31;
            sp140[1][2] = sp1A0[1][2] * temp_f31;
            sp140[2][2] = sp1A0[2][2] * temp_f31;
            sp140[0][3] = sp1A0[0][3] * temp_f31;
            sp140[1][3] = sp1A0[1][3] * temp_f31;
            sp140[2][3] = sp1A0[2][3] * temp_f31;
            temp_f31 = 1.0f - var_r30->weight;
            sp110[0][0] = spB0[0][0] * temp_f31;
            sp110[1][0] = spB0[1][0] * temp_f31;
            sp110[2][0] = spB0[2][0] * temp_f31;
            sp110[0][1] = spB0[0][1] * temp_f31;
            sp110[1][1] = spB0[1][1] * temp_f31;
            sp110[2][1] = spB0[2][1] * temp_f31;
            sp110[0][2] = spB0[0][2] * temp_f31;
            sp110[1][2] = spB0[1][2] * temp_f31;
            sp110[2][2] = spB0[2][2] * temp_f31;
            sp110[0][3] = spB0[0][3] * temp_f31;
            sp110[1][3] = spB0[1][3] * temp_f31;
            sp110[2][3] = spB0[2][3] * temp_f31;
            MTXAdd(&sp110, &sp140, &sp80);
            Hu3DMtxScaleGet(&sp80[0], &sp14);
            if (sp14.x != 1.0f || sp14.y != 1.0f || sp14.z != 1.0f) {
                PSMTXScale(spE0, 1.0 / sp14.x, 1.0 / sp14.y, 1.0 / sp14.z);
                PSMTXConcat(spE0, sp80, sp110);
                PSMTXInvXpose(sp110, sp110);
            } else {
                PSMTXInvXpose(sp80, sp110);
            }
            if (var_r30->posNum == 1) {
                PSMTXMultVec(sp80, temp_r31, temp_r28);
            } else if (var_r30->posNum <= 6) {
                PSMTXMultVecArray(sp80, temp_r31, temp_r28, var_r30->posNum);
            } else {
                PSMTXReorder(sp80, (ROMtxPtr) sp140);
                PSMTXROMultVecArray((ROMtxPtr) sp140, temp_r31, temp_r28, var_r30->posNum);
            }
            if (var_r30->normalNum != 0) {
                if (var_r30->normalNum == 1) {
                    PSMTXMultVec(sp110, temp_r26, temp_r22);
                } else if (var_r30->normalNum <= 6) {
                    PSMTXMultVecArray(sp110, temp_r26, temp_r22, var_r30->normalNum);
                } else {
                    PSMTXReorder(sp110, (ROMtxPtr) sp140);
                    PSMTXROMultVecArray((ROMtxPtr) sp140, temp_r26, temp_r22, var_r30->normalNum);
                }
            }
        }
    }
    var_r19 = arg0->multiData;
    for (i = 0; i < arg0->multiCount; i++, var_r19++) {
        var_r25 = var_r19->weight;
        temp_r18 = var_r19->normal;
        temp_r21 = var_r19->pos;
        temp_r28 = &vtxenv[temp_r21];
        temp_r31 = &Vertextop[temp_r21];
        temp_r22 = &normenv[temp_r18];
        temp_r26 = &normtop[temp_r18];
        sp38.x = sp38.y = sp38.z = 0.0f;
        sp20.x = sp20.y = sp20.z = 0.0f;
        sp10 = 0;
        for (j = 0; j < var_r19->weightNum; j++, var_r25++) {
            PSMTXConcat(MtxTop[nMesh + var_r25->target], MtxTop[nMesh + nObj + nObj * Meshno + var_r25->target], sp1A0);
            PSMTXConcat(MtxTop[Meshno], sp1A0, sp1A0);
            PSMTXInvXpose(sp1A0, sp170);
            PSMTXMultVec(sp1A0, temp_r31, &sp44);
            PSMTXMultVec(sp170, temp_r26, &sp2C);
            sp44.x = var_r25->value * (sp44.x - temp_r31->x);
            sp44.y = var_r25->value * (sp44.y - temp_r31->y);
            sp44.z = var_r25->value * (sp44.z - temp_r31->z);
            VECAdd(&sp38, &sp44, &sp38);
            sp2C.x = var_r25->value * (sp2C.x - temp_r26->x);
            sp2C.y = var_r25->value * (sp2C.y - temp_r26->y);
            sp2C.z = var_r25->value * (sp2C.z - temp_r26->z);
            VECAdd(&sp20, &sp2C, &sp20);
        }
        temp_r28->x = temp_r31->x + sp38.x;
        temp_r28->y = temp_r31->y + sp38.y;
        temp_r28->z = temp_r31->z + sp38.z;
        temp_r22->x = temp_r26->x + sp20.x;
        temp_r22->y = temp_r26->y + sp20.y;
        temp_r22->z = temp_r26->z + sp20.z;
    }
    temp_r21 = arg0->vtxCount;
    temp_r28 = &vtxenv[temp_r21];
    temp_r31 = &Vertextop[temp_r21];
    for (i = 0; i < arg0->copyCount; i++, temp_r28++, temp_r31++) {
        temp_r28->x = temp_r31->x;
        temp_r28->y = temp_r31->y;
        temp_r28->z = temp_r31->z;
    }
}

static void SetMtx(HSFOBJECT *arg0, Mtx arg1) {
    HSFSKELETON *temp_r3;
    Mtx spFC;
    Mtx spCC;
    Mtx sp9C;
    s32 temp_r25;
    s32 i;

    temp_r3 = SearchSklenton(arg0->name);
    if (temp_r3) {
        arg0->mesh.base = temp_r3->transform;
    }
    PSMTXTrans(spFC, arg0->mesh.base.pos.x, arg0->mesh.base.pos.y, arg0->mesh.base.pos.z);
    
    PSMTXConcat(arg1, spFC, spFC);
    if(arg0->mesh.base.rot.z != 0.0f) {
        MTXRotDeg(sp9C, 'z', arg0->mesh.base.rot.z);
        PSMTXConcat(spFC, sp9C, spFC);
    }
    if(arg0->mesh.base.rot.y != 0.0f) {
        MTXRotDeg(sp9C, 'y', arg0->mesh.base.rot.y);
        PSMTXConcat(spFC, sp9C, spFC);
    }
    if(arg0->mesh.base.rot.x != 0.0f) {
        MTXRotDeg(sp9C, 'x', arg0->mesh.base.rot.x);
        PSMTXConcat(spFC, sp9C, spFC);
    }
    if(arg0->mesh.base.scale.x != 1.0 || arg0->mesh.base.scale.y != 1.0 || arg0->mesh.base.scale.z != 1.0) {
        PSMTXScale(spCC, arg0->mesh.base.scale.x, arg0->mesh.base.scale.y, arg0->mesh.base.scale.z);
        PSMTXConcat(spFC, spCC, spFC);
    }
    
    temp_r25 = arg0 - objtop;
    PSMTXCopy(spFC, MtxTop[nMesh + temp_r25]);
    for (i = 0; i < arg0->mesh.childNum; i++) {
        SetMtx(arg0->mesh.child[i], spFC);
    }
}

static void SetRevMtx(void) {
    HSFOBJECT *var_r29;
    s32 var_r28;
    s32 i;
    s32 var_r30;
    Mtx sp38;
    Mtx sp8;

    var_r29 = CurHsf->object;
    for (var_r28 = i = 0; i < CurHsf->objectNum; i++, var_r29++) {
        if (var_r29->type == 2) {
            PSMTXCopy(MtxTop[nMesh + i], sp8);
            for (var_r30 = 0; var_r30 < CurHsf->objectNum; var_r30++) {
                PSMTXInverse(MtxTop[nMesh + var_r30], sp38);
                PSMTXConcat(sp38, sp8, MtxTop[nMesh + nObj + nObj * var_r28 + var_r30]);
            }
            PSMTXInverse(MtxTop[nMesh + i], sp8);
            var_r28++;
        }
    }
}

static HSFSKELETON *SearchSklenton(char *arg0) {
    HSFSKELETON *var_r31;
    s32 i;

    var_r31 = CurHsf->skeleton;
    for (i = 0; i < CurHsf->skeletonNum; i++, var_r31++) {
        if (strcmp(arg0, var_r31->name) == 0) {
            return var_r31;
        }
    }
    return NULL;
}
