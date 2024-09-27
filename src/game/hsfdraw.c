#include "game/hu3d.h"

#include "game/hsfload.h"
#include "game/sprite.h"
#include "game/disp.h"

#include "humath.h"
#include "string.h"

#define DRAW_OBJ_MAX 512

#define PTR_INVALID ((void *)-1)

#define HSF_TEXID_TL32 0x8000

#define MTXBUF_MAX 96

static void objCall(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void objMesh(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void FaceDraw(HU3DDRAWOBJ *modelP, HSFFACE *face);

static GXTevKColorSel SetKColor(GXTevStageID tevStage, u8 color);
static GXTevKColorSel SetKColorRGB(GXTevStageID tevStage, GXColor *color);
static void FlushKColor(void);
static void SetReflect(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 texCoord, u8 color);
static void SetReflectTexMtx(HU3DDRAWOBJ *drawObj);
static void SetProjection(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 projNo, s16 texCoord, GXTexMapID texMap, u32 texMtx);
static void SetShadowTex(void);
static void SetShadow(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 texCoord);
static void FaceDrawShadow(HU3DDRAWOBJ *modelP, HSFFACE *face);
static s32 LoadTexture(HU3DMODEL *modelP, HSFBITMAP *bmpPtr, HSFATTRIBUTE *attrP, s16 texId);
static void objNull(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void objRoot(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void objJoint(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void objMap(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void objReplica(HU3DMODEL *modelP, HSFOBJECT *objPtr);
static void ObjDraw(HU3DDRAWOBJ *arg0);
static void MDObjCall(HSFDATA *hsf, HSFOBJECT *objPtr);
static void MDObjMesh(HSFDATA *hsf, HSFOBJECT *objPtr);
static void MDFaceDraw(HSFOBJECT *objPtr, HSFFACE *face);
static s32 MakeCalcNBT(HSFOBJECT *objPtr, HSFFACE *face, s16 vtx12, s16 vtx3);
static s32 MakeNBT(HSFOBJECT *objPtr, HSFFACE *face, s16 vtx12, s16 vtx3);
static void MDFaceCnt(HSFOBJECT *objPtr, HSFFACE *face);

void GXResetWriteGatherPipe(void);


static HU3DDRAWOBJ DrawObjData[DRAW_OBJ_MAX];
static HSFATTRIBUTE *BmpPtrBak[8];
static Mtx MTXBuf[MTXBUF_MAX];
static HuVecF scaleBuf[MTXBUF_MAX];
static GXColor texCol[16];
static Mtx hiliteMtx;
static s16 DrawObjNum[DRAW_OBJ_MAX];
static HuVecF NBTB;
static HuVecF NBTT;
HuVecF PGMaxPos;
HuVecF PGMinPos;

s16 MTXIdx;
static HSFMATERIAL *materialBak;
static u8 polyTypeBak;
static s32 shadingBak;
static void *DLBufP;
static void *DLBufStartP;
static HSFDRAWDATA *DrawData;
static s32 drawCnt;
static s16 lightBit;
static s16 DrawObjIdx;
static HSFCONSTDATA *Hu3DObjInfoP;
static s16 reflectionMapNo;
static s16 hiliteMapNo;
static s16 vtxModeBak;
static s32 attachMotionF;
static s16 shadowMapNo;
static s16 toonMapNo;
static s16 projectionMapNo;
static GXColor kColor;
static s32 kColorIdx;
static HU3DMODELID hookIdx;
u32 totalPolyCnt;
u32 totalPolyCnted;
u32 totalMatCnt;
u32 totalMatCnted;
u32 totalTexCnt;
u32 totalTexCnted;
u32 totalTexCacheCnt;
u32 totalTexCacheCnted;
s16 modelMeshNum;
s16 modelObjNum;
static BOOL DLFirstF;
static u16 matChgCnt;
static u16 triCnt;
static u16 quadCnt;
static u16 faceCnt;
static u16 *faceNumBuf;
static s32 DLTotalNum;
static u32 totalSize;
static u32 mallocNo;
static s32 curModelID;
static s16 polySize;
static BOOL PGFinishF;
static char *PGName;
static BOOL matHookCallF;
static BOOL TL32F;
static BOOL CancelTRXF;

u8 texMtxTbl[] = {
    GX_TEXMTX0, GX_TEXMTX1,
    GX_TEXMTX2, GX_TEXMTX3,
    GX_TEXMTX4, GX_TEXMTX5,
    GX_TEXMTX6, GX_TEXMTX7,
    GX_TEXMTX8, GX_TEXMTX9
};

static s16 oneceF = TRUE;
static GXColor firstTev = { 255, 255, 0, 0 };
static GXColor secondTev = { 0, 0, 255, 255 };

void Hu3DDrawPreInit(void)
{
    DrawObjIdx = 0;
}

void Hu3DDraw(HU3DMODEL *modelP, Mtx mtx, HuVecF *scale)
{
    HU3DDRAWOBJ *drawObj;
    HSFDATA *hsf;
    float z;
    HuVecF pos;
    s16 i;

    hsf = modelP->hsf;
    if(modelP->attr & HU3D_ATTR_HOOKFUNC) {
        drawObj = &DrawObjData[DrawObjIdx];
        PSMTXCopy(mtx, drawObj->matrix);
        pos.x = drawObj->matrix[0][3];
        pos.y = drawObj->matrix[1][3];
        pos.z = drawObj->matrix[2][3];
        z = VECMag(&pos);
        drawObj->z = z;
        drawObj->model = modelP;
        DrawObjIdx++;
        return;
    }
    modelMeshNum = 0;
    modelObjNum = 0;
    GXSetCullMode(GX_CULL_BACK);
    for(i=0; i<8; i++) {
        BmpPtrBak[i] = PTR_INVALID;
    }
    PSMTXCopy(mtx, MTXBuf[0]);
    scaleBuf[0] = *scale;
    MTXIdx = 1;
    CancelTRXF = FALSE;
    hookIdx = HU3D_MODELID_NONE;
    shadingBak = -1;
    vtxModeBak = -1;
    materialBak = PTR_INVALID;
    matHookCallF = FALSE;
    if(modelP->motId != HU3D_MOTID_NONE) {
        attachMotionF = TRUE;
    } else {
        attachMotionF = FALSE;
    }
    objCall(modelP, hsf->root);
    GXSetNumTevStages(1);
    oneceF = TRUE;
}

static void objCall(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    modelObjNum++;
    switch (objPtr->type) {
        case HSF_OBJ_MESH:
            objMesh(modelP, objPtr);
            modelMeshNum++;
            break;
            
        case HSF_OBJ_JOINT:
            objJoint(modelP, objPtr);
            break;
            
        case HSF_OBJ_NULL2:
            if(objPtr->name[0] != 'e') {
                objNull(modelP, objPtr);
            }
            break;
            
        case HSF_OBJ_NULL1:
            objNull(modelP, objPtr);
            break;
            
        case HSF_OBJ_REPLICA:
            objReplica(modelP, objPtr);
            break;
            
        case HSF_OBJ_ROOT:
            objRoot(modelP, objPtr);
            break;
            
        case HSF_OBJ_NULL3:
            objNull(modelP, objPtr);
            break;
            
        case HSF_OBJ_MAP:
            objMap(modelP, objPtr);
            break;
    }
}

static void objMesh(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HU3DDRAWOBJ *drawObj;
    HSFCONSTDATA *constData;
    HSFTRANSFORM *transformP;
    HSFDATA *hsf;
    HU3DMODEL *hookMdlP;
    Mtx mtx;
    HuVecF pos;
    HuVecF *prevScale;
    HuVecF *scale;
    HSFFACE *faceData;
    HU3DMODELID hookIdxOld;
    s16 i;
    s16 applyF;
    s16 dispF;
    float z;
    HSFBUFFER *faceBuf;

    faceBuf = objPtr->mesh.face;
    faceData = faceBuf->data;
    drawObj = &DrawObjData[DrawObjIdx];
    hsf = modelP->hsf;
    if(attachMotionF == FALSE) {
        transformP = &objPtr->mesh.base;
    } else {
        transformP = &objPtr->mesh.curr;
    }
    constData = objPtr->constData;
    if(!(constData->attr & HU3D_CONST_LOCK)) {
        if(CancelTRXF == FALSE) {
            if(objPtr->mesh.cenvNum != 0 && hookIdx == HU3D_MODELID_NONE) {
                i = objPtr - hsf->object;
                PSMTXConcat(MTXBuf[0], hsf->matrix->data[i+hsf->matrix->base_idx], MTXBuf[MTXIdx]);
            } else {
                PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
                mtxRotCat(mtx, transformP->rot.x, transformP->rot.y, transformP->rot.z);
                mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
                PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
            }
            scale = &scaleBuf[MTXIdx];
            prevScale = scale-1;
            scale->x = prevScale->x * transformP->scale.x;
            scale->y = prevScale->y * transformP->scale.y;
            scale->z = prevScale->z * transformP->scale.z;
            drawObj->scale = *scale;
            if(objPtr->flags & HSF_MATERIAL_BBOARD) {
                PSMTXInverse(MTXBuf[MTXIdx], mtx);
                mtx[0][3] = mtx[1][3] = mtx[2][3] = 0.0f;
                PSMTXConcat(MTXBuf[MTXIdx], mtx, drawObj->matrix);
                mtxScaleCat(drawObj->matrix, scale->x, scale->y, scale->z);
            } else {
                PSMTXCopy(MTXBuf[MTXIdx], drawObj->matrix);
            }
            MTXIdx++;
            applyF = TRUE;
        } else {
            if(objPtr->flags & HSF_MATERIAL_BBOARD) {
                PSMTXInverse(MTXBuf[MTXIdx-1], mtx);
                mtx[0][3] = mtx[1][3] = mtx[2][3] = 0.0f;
                PSMTXConcat(MTXBuf[MTXIdx-1], mtx, drawObj->matrix);
                mtxScaleCat(drawObj->matrix, scaleBuf[MTXIdx-1].x, scaleBuf[MTXIdx-1].y, scaleBuf[MTXIdx-1].z);
            } else {
                PSMTXCopy(MTXBuf[MTXIdx-1], drawObj->matrix);
            }
            drawObj->scale = scaleBuf[MTXIdx-1];
            CancelTRXF = FALSE;
            applyF = FALSE;
        }
        PSMTXCopy(drawObj->matrix, constData->matrix);
        if(constData->hookMdlId != HU3D_MODELID_NONE) {
            hookMdlP = &Hu3DData[constData->hookMdlId];
            if(!(hookMdlP->attr & HU3D_ATTR_DISPOFF)) {
                i = attachMotionF;
                if(hookMdlP->motId != HU3D_MOTID_NONE) {
                    attachMotionF = 1;
                } else {
                    attachMotionF = 0;
                }
                hookIdxOld = hookIdx;
                hookIdx = constData->hookMdlId;
                PSMTXScale(mtx, hookMdlP->scale.x, hookMdlP->scale.y, hookMdlP->scale.z);
                mtxRotCat(mtx, hookMdlP->rot.x, hookMdlP->rot.y, hookMdlP->rot.z);
                mtxTransCat(mtx, hookMdlP->pos.x, hookMdlP->pos.y, hookMdlP->pos.z);
                PSMTXConcat(mtx, hookMdlP->mtx, mtx);
                PSMTXConcat(drawObj->matrix, mtx, MTXBuf[MTXIdx]);
                scale = &scaleBuf[MTXIdx];
                prevScale = scale-1;
                scale->x = prevScale->x*hookMdlP->scale.x;
                scale->y = prevScale->y*hookMdlP->scale.y;
                scale->z = prevScale->z*hookMdlP->scale.z;
                MTXIdx++;
                objCall(hookMdlP, hookMdlP->hsf->root);
                MTXIdx--;
                hookIdx = hookIdxOld;
                attachMotionF = i;
            }
        } else {
            if(modelP->attr & HU3D_ATTR_NOCULL) {
                dispF = ObjCullCheck(modelP->hsf, objPtr, drawObj->matrix);
            } else {
                dispF = TRUE;
            }
            if((constData->attr & HU3D_CONST_DISPOFF) || (objPtr->flags & HSF_MATERIAL_DISPOFF)) {
                dispF = FALSE;
            }
            if(dispF != FALSE && (transformP->scale.x != 0.0f || transformP->scale.y != 0.0f || transformP->scale.z != 0.0f)) {
                drawObj->model = modelP;
                drawObj->object = objPtr;
                if(!(constData->attr & HU3D_CONST_REFLECTMODEL)
                    && (constData->attr & (HU3D_ATTR_CAMERA|HU3D_ATTR_MOT_EXEC|HU3D_ATTR_DISPOFF) && shadowModelDrawF == FALSE)) {
                    pos.x = drawObj->matrix[0][3];
                    pos.y = drawObj->matrix[1][3];
                    pos.z = drawObj->matrix[2][3];
                    z = VECMag(&pos);
                    if(constData->attr & HU3D_CONST_NEAR) {
                        drawObj->z = -(900000.0f - z);
                    } else {
                        drawObj->z = -(1000000.0f - z);
                    }
                    DrawObjIdx++;
                    if(DrawObjIdx > DRAW_OBJ_MAX) {
                        OSReport("Error: DrawObjIdx Over\n");
                        DrawObjIdx--;
                    }
                } else if(modelP->attr & HU3D_ATTR_ZCMP_OFF) {
                    drawObj->z = -1000000.0f;
                    DrawObjIdx++;
                    if(DrawObjIdx > DRAW_OBJ_MAX) {
                        OSReport("Error: DrawObjIdx Over\n");
                        DrawObjIdx--;
                    }
                } else {
                    materialBak = PTR_INVALID;
                    ObjDraw(drawObj);
                }
            }
        }
        for(i=0; i<objPtr->mesh.childNum; i++) {
            objCall(modelP, objPtr->mesh.child[i]);
        }
        if(applyF) {
            MTXIdx--;
        }
    }
}

BOOL ObjCullCheck(HSFDATA *hsf, HSFOBJECT *objPtr, Mtx mtx)
{
    HuVecF *min;
    HU3DCAMERA *cameraP;
    HuVecF *max;
    float centerX;
    float centerY;
    float centerZ;
    float cameraW;
    float cameraH;
    float scale;
    float scaleX;
    float scaleY;
    float scaleZ;
    float radius;
    float x;
    float y;
    float z;
    float fovTan;
    float fov;
    float near;
    float far;
    float aspect;
    Mtx cullMtx;
    
    if(shadowModelDrawF == FALSE) {
        cameraP = &Hu3DCamera[Hu3DCameraNo];
        fov = cameraP->fov;
        far = cameraP->far;
        near = cameraP->near;
        aspect = cameraP->aspect;
    } else {
        fov = Hu3DShadow->fov;
        far = Hu3DShadow->far;
        near = Hu3DShadow->near;
        aspect = 1.0f;
    }
    min = &objPtr->mesh.mesh.min;
    max = &objPtr->mesh.mesh.max;
    scaleX = scaleBuf[MTXIdx-1].x;
    scaleY = scaleBuf[MTXIdx-1].y;
    scaleZ = scaleBuf[MTXIdx-1].z;
    if(scaleX > scaleY) {
        if(scaleX > scaleZ) {
            scale = scaleX;
        } else if(scaleY > scaleZ) {
            scale = scaleY;
        } else {
            scale = scaleZ;
        }
    } else if(scaleY > scaleZ) {
        scale = scaleY;
    } else if(scaleX > scaleZ) {
        scale = scaleX;
    } else {
        scale = scaleZ;
    }
    centerX = (max->x-min->x)*0.5;
    centerY = (max->y-min->y)*0.5;
    centerZ = (max->z-min->z)*0.5;
    MTXTrans(cullMtx, centerX+min->x, centerY+min->y, centerZ+min->z);
    MTXConcat(mtx, cullMtx, cullMtx);
    radius = scale*HuMagPoint3D(centerX, centerY, centerZ);
    x = cullMtx[0][3];
    y = cullMtx[1][3];
    z = -cullMtx[2][3];
    if((z+radius) < near || (z-radius) > far) {
        return FALSE;
    }
    fovTan = HuSin(fov*0.5)/HuCos(fov*0.5);
    cameraH = fovTan*z;
    cameraW = cameraH*aspect;
    cameraW = radius+HuAbs(cameraW);
    cameraH = radius+HuAbs(cameraH);
    if(HuAbs(x) < cameraW && HuAbs(y) < cameraH) {
        return TRUE;
    }
    return FALSE;
}

static void FaceDraw(HU3DDRAWOBJ *drawObj, HSFFACE *face)
{
    s16 i;
    HU3DMODEL *modelP;
    HSFMATERIAL *matP;
    HSFOBJECT *objPtr;
    s16 j;
    HSFBITMAP *bitMapPtr;
    HSFATTRIBUTE *attrP;
    HU3DATTRANIM *animWorkP;
    s16 vtxMode;
    s16 texNo;
    u32 flags;
    HSFCONSTDATA *constDataP;
    s16 tevStageNo;
    s16 hiliteAnimNo;
    s16 reflectAnimNo;
    GXColor color;
    void *list;
    HU3DTEXANIM *texAnimP;
    HU3DMATHOOK matHook;

    objPtr = drawObj->object;
    modelP = drawObj->model;
    constDataP = objPtr->constData;
    
    kColorIdx = 0;
    matP = &objPtr->mesh.material[face->mat & 0xFFF];
    flags = objPtr->flags | matP->flags;
    if(flags & (HSF_MATERIAL_ADDCOL|HSF_MATERIAL_INVCOL)) {
        if(flags & HSF_MATERIAL_ADDCOL) {
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_ONE, GX_LO_NOOP);
        } else {
            GXSetBlendMode(GX_BM_BLEND, GX_BL_ZERO, GX_BL_INVDSTCLR, GX_LO_NOOP);
        }
    } else {
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_NOOP);
    }
    if(matP != materialBak) {
        totalMatCnt++;
        materialBak = matP;
        color.r = matP->litColor[0]*(modelP->ambR * Hu3DAmbColR);
        color.g = matP->litColor[0]*(modelP->ambG * Hu3DAmbColG);
        color.b = matP->litColor[0]*(modelP->ambB * Hu3DAmbColB);
        color.a  = 255;
        GXSetChanAmbColor(GX_COLOR0A0, color);
        color.r = matP->color[0];
        color.g = matP->color[0];
        color.b = matP->color[0];
        color.a  = 255;
        GXSetChanMatColor(GX_COLOR0A0, color);
        if(modelP->attr & HU3D_ATTR_ZCMP_OFF) {
            i = FALSE;
        } else {
            i = TRUE;
        }
        if((modelP->attr & HU3D_ATTR_REFLECT_MODEL)
            || (flags & HSF_MATERIAL_REFLECTMODEL)
            || ((matP->invAlpha != 0.0f || (matP->pass & 0xF) || (constDataP->attr & HU3D_CONST_ALTBLEND))
            && !((modelP->attr & HU3D_ATTR_ZWRITE_OFF) | (flags & (HSF_MATERIAL_DISABLE_ZWRITE|HSF_MATERIAL_NEAR))))) {
            GXSetZMode(i, GX_LEQUAL, GX_FALSE);
        } else {
            GXSetZMode(i, GX_LEQUAL, GX_TRUE);
        }
        if(modelP->attr & HU3D_ATTR_COLOR_NOUPDATE) {
            GXSetColorUpdate(GX_FALSE);
        } else {
            GXSetColorUpdate(GX_TRUE);
        }
        if(flags & (HSF_MATERIAL_DISABLE_ZWRITE|HSF_MATERIAL_NEAR)) {
            GXSetAlphaCompare(GX_GEQUAL, 128, GX_AOP_OR, GX_GEQUAL, 128);
        } else {
            GXSetAlphaCompare(GX_GEQUAL, 1, GX_AOP_AND, GX_GEQUAL, 1);
        }
        if(flags & HSF_MATERIAL_NOCULL) {
            GXSetCullMode(GX_CULL_NONE);
        } else if(modelP->attr & HU3D_ATTR_CULL_FRONT) {
            GXSetCullMode(GX_CULL_FRONT);
        } else {
            GXSetCullMode(GX_CULL_BACK);
        }
        if(TL32F) {
            for(i=GX_TEVSTAGE0; i<GX_MAX_TEVSTAGE; i++) {
                GXSetTevSwapMode(i, GX_TEV_SWAP0, GX_TEV_SWAP0);
            }
            TL32F = FALSE;
        }
        if(matHookCallF) {
            GXSetNumIndStages(0);
            for(tevStageNo=0; tevStageNo<GX_MAX_TEXCOORD; tevStageNo++) {
                GXSetTevDirect(tevStageNo);
                GXSetTexCoordScaleManually(tevStageNo, 0, 0, 0);
            }
            for(; tevStageNo<GX_MAX_TEVSTAGE; tevStageNo++) {
                GXSetTevDirect(tevStageNo);
            }
        }
        for(i=GX_TEVSTAGE0; i<GX_MAX_TEVSTAGE; i++) {
            GXSetTevKAlphaSel(i, GX_TEV_KASEL_1);
        }
        if(matP->attrNum == 0) {
            vtxMode = (matP->vtxMode == 5) ? 4 : 0;
            if(vtxMode != vtxModeBak) {
                vtxModeBak = vtxMode;
                GXClearVtxDesc();
                GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
                GXSetArray(GX_VA_POS, objPtr->mesh.vertex->data, sizeof(HuVecF));
                GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
                if(modelP->hsf->cenvNum == 0) {
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S8, 0);
                    GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, 3*sizeof(s8));
                } else {
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
                    GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, sizeof(HuVecF));
                }
                if(vtxMode & 4) {
                    GXSetVtxDesc(GX_VA_CLR0, GX_INDEX16);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
                    GXSetArray(GX_VA_CLR0, objPtr->mesh.color->data, sizeof(GXColor));
                }
                GXSetZCompLoc(GX_TRUE);
            }
            if(matP->refAlpha != 0.0f) {
                reflectionMapNo = 0;
                BmpPtrBak[0] = PTR_INVALID;
                if(modelP->reflectType != HU3D_REFLECT_TYPE_NONE) {
                    reflectAnimNo = modelP->reflectType;
                } else {
                    reflectAnimNo = reflectMapNo;
                }
                HuSprTexLoad(reflectAnim[reflectAnimNo], 0, reflectionMapNo, GX_REPEAT, GX_REPEAT, GX_LINEAR);
            }
            if(Hu3DShadowF && shadowNum && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
                shadowMapNo = 1;
                SetShadowTex();
                BmpPtrBak[1] = PTR_INVALID;
            }
            if(modelP->attr & HU3D_ATTR_TOON_MAP) {
                toonMapNo = 2;
                HuSprTexLoad(toonAnim, 0, toonMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                BmpPtrBak[2] = PTR_INVALID;
            }
            if(modelP->projBit) {
                projectionMapNo = 3;
                hiliteMapNo = projectionMapNo+1;
                for(i=0, j=1; i<HU3D_PROJ_MAX; i++, j <<= 1) {
                    if(j & modelP->projBit) {
                        HuSprTexLoad(Hu3DProjection[i].anim, 0, projectionMapNo+i, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                        BmpPtrBak[projectionMapNo+i] = PTR_INVALID;
                        hiliteMapNo++;
                    }
                }
            } else {
                hiliteMapNo = 3;
            }
            if((modelP->attr & HU3D_ATTR_HILITE) || (flags & HSF_MATERIAL_HILITE)) {
                if(!constDataP->hiliteMap) {
                    if(matP->flags) {
                        hiliteAnimNo = (matP->pass >> 4) & 0xF;
                    } else {
                        hiliteAnimNo = (objPtr->mesh.matPass >> 4) & 0xF;
                    }
                    HuSprTexLoad(hiliteAnim[hiliteAnimNo], 0, hiliteMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                } else {
                    HuSprTexLoad(constDataP->hiliteMap, 0, hiliteMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                }
                BmpPtrBak[hiliteMapNo] = PTR_INVALID;
            }
            if(flags & HSF_MATERIAL_MATHOOK) {
                if(modelP->matHook) {
                    matHook = modelP->matHook;
                    matHook(drawObj, matP);
                    matHookCallF = TRUE;
                    for(j=0; j<8; j++) {
                        BmpPtrBak[j] = PTR_INVALID;
                    }
                }
            } else {
                Hu3DTevStageNoTexSet(drawObj, matP);
            }
        } else {
            vtxMode = (matP->vtxMode == 5) ? 5 : 1;
            if(DrawData[drawCnt].flags & 2) {
                vtxMode |= 0x2;
            }
            if(vtxMode != vtxModeBak) {
                vtxModeBak = vtxMode;
                GXClearVtxDesc();
                GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
                GXSetArray(GX_VA_POS, objPtr->mesh.vertex->data, sizeof(HuVecF));
                if(vtxMode & 2) {
                    GXSetVtxDesc(GX_VA_NBT, GX_DIRECT);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_NRM_NBT, GX_S16, 8);
                } else {
                    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
                    if(modelP->hsf->cenvNum == 0) {
                        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S8, 0);
                        GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, sizeof(s8)*3);
                    } else {
                        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
                        GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, sizeof(HuVecF));
                    }
                }
                GXSetVtxDesc(GX_VA_TEX0, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
                GXSetArray(GX_VA_TEX0, objPtr->mesh.st->data, sizeof(HuVec2F));
                if(vtxMode & 4) {
                    GXSetVtxDesc(GX_VA_CLR0, GX_INDEX16);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
                    GXSetArray(GX_VA_CLR0, objPtr->mesh.color->data, sizeof(GXColor));
                }
                GXSetZCompLoc(GX_FALSE);
            }
            texNo = matP->attrNum;
            for(i=0; i<matP->attrNum; i++) {
                attrP = &objPtr->mesh.attribute[matP->attr[i]];
                bitMapPtr = attrP->bitmap;
                if(attrP->animWorkP) {
                    texCol[i].a = 0;
                    animWorkP = attrP->animWorkP;
                    texAnimP = &Hu3DTexAnimData[animWorkP->animId];
                    if((animWorkP->attr & HU3D_ATTRANIM_ATTR_ANIM2D) && !(texAnimP->attr & HU3D_ANIM_ATTR_NOUSE)) {
                        if(Hu3DAnimSet(drawObj->model, attrP, (s16)i)) {
                            BmpPtrBak[i] = PTR_INVALID;
                            totalTexCnt++;
                            continue;
                        }
                    } else if(animWorkP->attr & HU3D_ATTRANIM_ATTR_BMPANIM) {
                        bitMapPtr = animWorkP->bitMapPtr;
                        if(bitMapPtr->dataFmt != HSF_BMPFMT_CI_IA8) {
                            LoadTexture(drawObj->model, bitMapPtr, attrP, (s16)i);
                        } else {
                            LoadTexture(drawObj->model, animWorkP->bitMapPtr, attrP, (s16)i);
                            LoadTexture(drawObj->model, animWorkP->bitMapPtr, attrP, texNo|HSF_TEXID_TL32);
                            texCol[i].r = (s32)texNo;
                            texCol[i].a = 2;
                            texNo++;
                        }
                        if(bitMapPtr->sizeX * bitMapPtr->sizeY * bitMapPtr->pixSize > 0x40000) {
                            for(j=0; j<8; j++) {
                                BmpPtrBak[j] = PTR_INVALID;
                            }
                        } else {
                            BmpPtrBak[i] = PTR_INVALID;
                        }
                        totalTexCnt++;
                        continue;
                    }
                }
                if(BmpPtrBak[i] != attrP) {
                    if(BmpPtrBak[i] != PTR_INVALID && BmpPtrBak[i]->bitmap == bitMapPtr && attrP->wrapS == BmpPtrBak[i]->wrapS && attrP->wrapT == BmpPtrBak[i]->wrapT) {
                        if(bitMapPtr->dataFmt == HSF_BMPFMT_CI_IA8) {
                            TL32F = TRUE;
                        }
                        totalTexCacheCnt++;
                    } else {
                        texCol[i].a = 0;
                        if(bitMapPtr->dataFmt != HSF_BMPFMT_CI_IA8) {
                            LoadTexture(drawObj->model, bitMapPtr, attrP, (s16)i);
                        } else {
                            LoadTexture(drawObj->model, bitMapPtr, attrP, (s16)i);
                            LoadTexture(drawObj->model, bitMapPtr, attrP, texNo|HSF_TEXID_TL32);
                            texCol[i].r = (s32)texNo;
                            texCol[i].a = 2;
                            texNo++;
                        }
                        if(bitMapPtr->sizeX * bitMapPtr->sizeY * bitMapPtr->pixSize > 0x40000) {
                            for(j=0; j<8; j++) {
                                BmpPtrBak[j] = PTR_INVALID;
                            }
                        } else {
                            BmpPtrBak[i] = attrP;
                        }
                        totalTexCnt++;
                    }
                } else {
                    totalTexCacheCnt++;
                }
            }
            if(matP->refAlpha != 0.0f) {
                reflectionMapNo = (s16)texNo;
                shadowMapNo = reflectionMapNo+1;
                if(modelP->reflectType != HU3D_REFLECT_TYPE_NONE) {
                    reflectAnimNo = modelP->reflectType;
                } else {
                    reflectAnimNo = reflectMapNo;
                }
                HuSprTexLoad(reflectAnim[reflectAnimNo], 0, reflectionMapNo, GX_REPEAT, GX_REPEAT, GX_LINEAR);
                BmpPtrBak[reflectionMapNo] = PTR_INVALID;
            } else {
                shadowMapNo = (s16)texNo;
            }
            if(Hu3DShadowF && shadowNum && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
                toonMapNo = shadowMapNo+1;
                SetShadowTex();
                BmpPtrBak[shadowMapNo] = PTR_INVALID;
            } else {
                toonMapNo = shadowMapNo;
            }
            if(modelP->attr & HU3D_ATTR_TOON_MAP) {
                HuSprTexLoad(toonAnim, 0, toonMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                BmpPtrBak[toonMapNo] = PTR_INVALID;
                projectionMapNo = toonMapNo+1;
            } else {
                projectionMapNo = toonMapNo;
            }
            if(modelP->projBit) {
                for(i=0, j=1; i<HU3D_PROJ_MAX; i++, j <<= 1) {
                    if(j & modelP->projBit) {
                        HuSprTexLoad(Hu3DProjection[i].anim, 0, projectionMapNo+i, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                        BmpPtrBak[projectionMapNo+i] = PTR_INVALID;
                        hiliteMapNo = projectionMapNo+i+1;
                    }
                }
            } else {
                hiliteMapNo = projectionMapNo;
            }
            if((modelP->attr & HU3D_ATTR_HILITE) || (flags & HSF_MATERIAL_HILITE)) {
                if(!constDataP->hiliteMap) {
                    if(matP->flags) {
                        hiliteAnimNo = (matP->pass >> 4) & 0xF;
                    } else {
                        hiliteAnimNo = (objPtr->mesh.matPass >> 4) & 0xF;
                    }
                    HuSprTexLoad(hiliteAnim[hiliteAnimNo], 0, hiliteMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                } else {
                    HuSprTexLoad(constDataP->hiliteMap, 0, hiliteMapNo, GX_CLAMP, GX_CLAMP, GX_LINEAR);
                }
                BmpPtrBak[toonMapNo] = PTR_INVALID;
            }
            if(flags & HSF_MATERIAL_MATHOOK) {
                if(modelP->matHook) {
                    matHook = modelP->matHook;
                    matHook(drawObj, matP);
                    matHookCallF = TRUE;
                    for(j=0; j<8; j++) {
                        BmpPtrBak[j] = PTR_INVALID;
                    }
                }
            } else {
                Hu3DTevStageTexSet(drawObj, matP);
            }
        }
        list = (u8 *) DLBufStartP + DrawData[drawCnt].dlOfs;
        GXCallDisplayList(list, DrawData[drawCnt].dlSize);
        
    } else {
        list = (u8 *) DLBufStartP + DrawData[drawCnt].dlOfs;
        GXFastCallDisplayList(list, DrawData[drawCnt].dlSize);
    }
    drawCnt++;
    
}

void Hu3DTevStageNoTexSet(HU3DDRAWOBJ *drawObj, HSFMATERIAL *matP)
{
    GXColor color;
    HU3DMODEL *modelP;
    HSFOBJECT *objPtr;
    float hiliteScale;
    s16 j;
    s16 matHiliteF;
    s16 i;
    s16 texMap;
    s16 tevStage;
    s16 lightOnF;
    u32 shading;
    GXChannelID colorChan;
    GXTevAlphaArg alphaSrc;
    u32 alphaLightF;
    u32 flags;
    Mtx mtx;

    tevStage = 1;
    texMap = 0;
    objPtr = drawObj->object;
    modelP = drawObj->model;
    flags = objPtr->flags | matP->flags;
    if(matP->vtxMode == 2 || matP->vtxMode == 3) {
        matHiliteF = TRUE;
        lightOnF = TRUE;
    } else {
        matHiliteF = FALSE;
        if(matP->vtxMode == 0 || matP->vtxMode == 5) {
            lightOnF = FALSE;
        } else {
            lightOnF = TRUE;
        }
    }
    if((Hu3DObjInfoP->attr & HU3D_CONST_XLUVERTEX) && matP->vtxMode == 5) {
        colorChan = GX_COLOR0A0;
        alphaSrc = GX_CA_RASA;
        alphaLightF = TRUE;
    } else {
        colorChan = GX_COLOR0;
        alphaSrc = GX_CA_KONST;
        alphaLightF = FALSE;
    }
    color.a = 255.0f * (1.0f - matP->invAlpha);
    if(modelP->attr & HU3D_ATTR_TOON_MAP) {
        color.r = matP->color[0];
        color.g = matP->color[1];
        color.b = matP->color[2];
        GXSetTevColor(GX_TEVREG0, color);
        GXSetTexCoordGen(texMap, GX_TG_SRTG, GX_TG_COLOR0, GX_IDENTITY);
        GXSetTevOrder(GX_TEVSTAGE0, texMap, toonMapNo, GX_COLOR0A0);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_KONST, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        texMap++;
    } else {
        GXSetTevColor(GX_TEVREG0, color);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, colorChan);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, alphaSrc);
        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    }
    if(matP->refAlpha != 0.0f) {
        SetReflect(drawObj, tevStage, (s16) texMap, matP->refAlpha * 255.0f);
        tevStage++;
        texMap++;
    }
    if(Hu3DShadowF != 0 && shadowNum != 0 && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
        SetShadow(drawObj, tevStage, (s16) texMap);
        tevStage++;
        texMap++;
    }
    if(matHiliteF) {
        if((modelP->attr & HU3D_ATTR_HILITE) || (flags & HSF_MATERIAL_HILITE)) {
            GXSetTexCoordGen(texMap, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX7);
            GXSetTevOrder(tevStage, texMap, hiliteMapNo, GX_COLOR0A0);
            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
            hiliteScale = 6.0f * (matP->hiliteScale / 300.0f);
            if(hiliteScale < 0.1) {
                hiliteScale = 0.1f;
            }
            PSMTXCopy(hiliteMtx, mtx);
            mtxScaleCat(mtx, hiliteScale, hiliteScale, hiliteScale);
            GXLoadTexMtxImm(mtx, GX_TEXMTX7, GX_MTX2x4);
            tevStage++;
            texMap++;
            lightOnF = TRUE;
            matHiliteF = FALSE;
        } else {
            GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR1A1);
            GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_ONE, GX_CC_RASC, GX_CC_ZERO);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            tevStage++;
        }
    } else if(matP->invAlpha != 0.0f) {
        GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_ONE, GX_CC_CPREV, GX_CC_ZERO);
        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
        GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        tevStage++;
    }
    if(modelP->projBit != 0) {
        for(i = 0, j=1; i<HU3D_PROJ_MAX; i++, j<<=1) {
            if(j & modelP->projBit) {
                SetProjection(drawObj, tevStage, i, (GXTexMapID) texMap, projectionMapNo+i, texMtxTbl[i+3]);
                texMap++;
                tevStage += 2;
            }
        }
    }
    FlushKColor();
    GXSetNumTexGens(texMap);
    GXSetNumTevStages(tevStage);
    shading = (matHiliteF) ? 2 : matP->vtxMode;
    if(shading != shadingBak) {
        shadingBak = shading;
        lightBit = Hu3DLightSet(drawObj->model, Hu3DCameraMtx, Hu3DCameraMtxXPose, (matHiliteF) ? matP->hiliteScale : 0.0f);
    }
    if(matHiliteF) {
        GXSetNumChans(2);
        if(matP->vtxMode == 5) {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_NONE, GX_AF_SPEC);
            if(alphaLightF) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPEC);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_NONE, GX_AF_SPEC);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
    } else {
        GXSetNumChans(1);
        if(matP->vtxMode == 5) {
            GXSetChanCtrl(GX_COLOR0, lightOnF, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            if(alphaLightF) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, lightOnF, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
        GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    }
}

static Mtx refMtx = {
    { 0.25f,   0.0f,  0.0f, -0.5f },
    {  0.0f, -0.25f,  0.0f, -0.5f },
    {  0.0f,   0.0f, 0.25f, -0.5f }
};

void Hu3DTevStageTexSet(HU3DDRAWOBJ *drawObj, HSFMATERIAL *matP)
{
    GXColor color;
    GXTexMapID bumpTexMap;
    GXTevStageID bumpTevStage;
    s32 texBlendF;
    u32 flags;
    GXChannelID colorChan;
    u32 alphaLightF;
    HSFATTRIBUTE *attrP;
    HSFOBJECT *objPtr;
    HU3DMODEL *modelP;
    HU3DATTRANIM *animWorkP;
    GXTevAlphaArg alphaSrc;
    float hiliteScale;
    u16 kColorId;
    u16 tevTexCoordId;
    u16 j;
    u16 texCoordId;
    u16 tevStage;
    u16 matHiliteF;
    u16 lightOnF;
    u16 i;
    s16 texMapId;
    Mtx mtx;

    kColorId = 0;
    texMapId = -1;
    objPtr = drawObj->object;
    modelP = drawObj->model;
    flags = objPtr->flags | matP->flags;
    if(matP->vtxMode == 2 || matP->vtxMode == 3) {
        matHiliteF = TRUE;
    } else {
        matHiliteF = FALSE;
        if(matP->vtxMode == 0 || matP->vtxMode == 5) {
            lightOnF = GX_FALSE;
        } else {
            lightOnF = GX_TRUE;
        }
    }
    if((Hu3DObjInfoP->attr & HU3D_CONST_XLUVERTEX) && matP->vtxMode == 5) {
        colorChan = GX_COLOR0A0;
        alphaSrc = GX_CA_RASA;
        alphaLightF = TRUE;
    } else {
        colorChan = GX_COLOR0;
        alphaSrc = GX_CA_KONST;
        alphaLightF = FALSE;
    }
    if(matP->attrNum == 1) {
        texCoordId = tevStage = 1;
        attrP = &objPtr->mesh.attribute[matP->attr[0]];
        if(attrP->scale.x != 1.0f || attrP->scale.y != 1.0f) {
            PSMTXScale(mtx, 1.0f / attrP->scale.x, 1.0f / attrP->scale.y, 1.0f);
            mtxTransCat(mtx, -attrP->trans.x, -attrP->trans.y, 0.0f);
            GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
            GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
        } else if(attrP->trans.x != 0.0f || attrP->trans.y != 0.0f) {
            PSMTXTrans(mtx, -attrP->trans.x, -attrP->trans.y, 0.0f);
            GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
            GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
        } else {
            GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
        }
        if(attrP->unk20 == 1.0f) {
            if(attrP->animWorkP) {
                animWorkP = attrP->animWorkP;
                if(animWorkP->attr & HU3D_ATTRANIM_ATTR_TEXMTX) {
                    GXLoadTexMtxImm(Hu3DTexScrData[animWorkP->texScrId].texMtx, GX_TEXMTX0, GX_MTX2x4);
                    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0);
                } else if(animWorkP->attr & HU3D_ATTRANIM_ATTR_ANIM3D) {
                    PSMTXTrans(mtx, animWorkP->trans3D.x, animWorkP->trans3D.y, animWorkP->trans3D.z);
                    mtxRotCat(mtx, animWorkP->rot.x, animWorkP->rot.y, animWorkP->rot.z);
                    mtxScaleCat(mtx, animWorkP->scale3D.x, animWorkP->scale3D.y, animWorkP->scale3D.z);
                    MTXInverse(mtx, mtx);
                    GXLoadTexMtxImm(mtx, GX_TEXMTX0, GX_MTX2x4);
                    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0);
                } else if(animWorkP->attr & HU3D_ATTRANIM_ATTR_ANIM2D) {
                    PSMTXScale(mtx, animWorkP->scale.x, animWorkP->scale.y, 1.0f);
                    mtxTransCat(mtx, animWorkP->trans.x, animWorkP->trans.y, 0.0f);
                    GXLoadTexMtxImm(mtx, GX_TEXMTX0, GX_MTX2x4);
                    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0);
                }
            }
            if(attrP->unk8[2] == 0) {
                GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
                GXSetTevOrder(tevStage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_TEXA, GX_CC_ZERO);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                tevStage++;
            } else {
                GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0);
                if(!(modelP->attr & HU3D_ATTR_TOON_MAP)) {
                    if(texCol[0].a == 1) {
                        color = texCol[0];
                        color.a = 255;
                        SetKColorRGB(GX_TEVSTAGE0, &color);
                        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
                        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, colorChan);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_CPREV, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, alphaSrc, GX_CA_ZERO);
                        GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        tevStage++;
                    } else if(texCol[0].a == 2) {
                        GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_ALPHA, GX_CH_ALPHA, GX_CH_ALPHA);
                        GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
                        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP1);
                        SetKColorRGB(GX_TEVSTAGE0, &firstTev);
                        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
                        GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP2);
                        SetKColorRGB(tevStage, &secondTev);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_CPREV);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_KONST, GX_CA_TEXA, GX_CA_ZERO);
                        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevOrder(tevStage, GX_TEXCOORD0, texCol->r, GX_COLOR_NULL);
                        tevStage++;
                    } else {
                        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, alphaSrc, GX_CA_ZERO);
                        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                    }
                } else {
                    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_ZERO);
                    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
                    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                }
            }
        } else {
            GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
        }
        if(modelP->attr & HU3D_ATTR_TOON_MAP) {
            GXSetTexCoordGen(texCoordId, GX_TG_SRTG, GX_TG_COLOR0, GX_IDENTITY);
            GXSetTevOrder(tevStage, texCoordId, toonMapNo, GX_COLOR0A0);
            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_KONST, GX_CA_APREV, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            texCoordId++;
            tevStage++;
        }
        color.a = 255.0f * (1.0f - matP->invAlpha);
        GXSetTevColor(GX_TEVREG0, color);
        if(matP->refAlpha != 0.0f) {
            SetReflect(drawObj, tevStage, (u16) texCoordId, 255.0f * matP->refAlpha);
            texCoordId++;
            tevStage++;
        }
        if(Hu3DShadowF != 0 && shadowNum != 0 && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
            SetShadow(drawObj, tevStage, (u16) texCoordId);
            texCoordId++;
            tevStage++;
        }
        if(matHiliteF) {
            if((modelP->attr & HU3D_ATTR_HILITE) || (flags & HSF_MATERIAL_HILITE)) {
                GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX7);
                GXSetTevOrder(tevStage, texCoordId, hiliteMapNo, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                hiliteScale = 6.0f * (matP->hiliteScale / 300.0f);
                if(hiliteScale < 0.1) {
                    hiliteScale = 0.1f;
                }
                PSMTXCopy(hiliteMtx, mtx);
                mtxScaleCat(mtx, hiliteScale, hiliteScale, hiliteScale);
                GXLoadTexMtxImm(mtx, GX_TEXMTX7, GX_MTX2x4);
                tevStage++;
                texCoordId++;
                matHiliteF = FALSE;
                lightOnF = GX_TRUE;
            } else {
                if(attrP->unk20 == 1.0f) {
                    GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR1A1);
                    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_ONE, GX_CC_RASC, GX_CC_ZERO);
                } else {
                    GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                    GXSetTevOrder(tevStage, texCoordId, GX_TEXMAP0, GX_COLOR1A1);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_CPREV);
                    texCoordId++;
                }
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                tevStage++;
            }
        } else if(matP->invAlpha != 0.0f) {
            GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            tevStage++;
        }
        if(modelP->projBit != 0) {
            for(i=0, j=1; i<HU3D_PROJ_MAX; i++, j<<=1) {
                if(j & modelP->projBit) {
                    SetProjection(drawObj, tevStage, i, (u16) texCoordId, projectionMapNo + i, texMtxTbl[i + 3]);
                    texCoordId++;
                    tevStage += 2;
                }
            }
        }
    } else {
        texBlendF = FALSE;
        texCoordId = 0;
        bumpTexMap = -1;
        for(i = tevStage = 0; i < matP->attrNum; i++) {
            attrP = &objPtr->mesh.attribute[matP->attr[i]];
            if(attrP->nbtTpLvl != 0.0f) {
                GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_BUMP0, GX_TG_TEXCOORD0, GX_IDENTITY);
                SetKColor(tevStage, attrP->nbtTpLvl * 10.0f);
                GXSetTevOrder(tevStage, texCoordId, i, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_RASC);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                tevStage++;
                bumpTexMap = i;
                bumpTevStage = tevStage;
                GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_A1, GX_CC_CPREV);
                GXSetTevColorOp(tevStage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                texCoordId++;
                texBlendF = TRUE;
            } else if(attrP->unk20 != 1.0f) {
                texMapId = i;
                continue;
            } else {
                if(attrP->animWorkP) {
                    animWorkP = attrP->animWorkP;
                    if(animWorkP->attr & HU3D_ATTRANIM_ATTR_TEXMTX) {
                        GXLoadTexMtxImm(Hu3DTexScrData[animWorkP->texScrId].texMtx, texMtxTbl[texCoordId], GX_MTX2x4);
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
                        tevTexCoordId = (u16) texCoordId;
                        texCoordId++;
                    } else if(animWorkP->attr & HU3D_ATTRANIM_ATTR_ANIM3D) {
                        PSMTXTrans(mtx, animWorkP->trans3D.x, animWorkP->trans3D.y, animWorkP->trans3D.z);
                        mtxRotCat(mtx, animWorkP->rot.x, animWorkP->rot.y, animWorkP->rot.z);
                        mtxScaleCat(mtx, animWorkP->scale3D.x, animWorkP->scale3D.y, animWorkP->scale3D.z);
                        MTXInverse(mtx, mtx);
                        GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
                        tevTexCoordId = (u16) texCoordId;
                        texCoordId++;
                    } else if(animWorkP->attr & HU3D_ATTRANIM_ATTR_ANIM2D) {
                        PSMTXScale(mtx, animWorkP->scale.x, animWorkP->scale.y, 1.0f);
                        mtxTransCat(mtx, animWorkP->trans.x, animWorkP->trans.y, 0.0f);
                        GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
                        tevTexCoordId = (u16) texCoordId;
                        texCoordId++;
                    } else {
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                        tevTexCoordId = (u16) texCoordId;
                        texCoordId++;
                    }
                } else {
                    if(attrP->scale.x != 1.0f || attrP->scale.y != 1.0f) {
                        PSMTXScale(mtx, 1.0f / attrP->scale.x, 1.0f / attrP->scale.y, 1.0f);
                        mtxTransCat(mtx, -attrP->trans.x, -attrP->trans.y, 0.0f);
                        GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
                    } else if(attrP->trans.x != 0.0f || attrP->trans.y != 0.0f) {
                        PSMTXTrans(mtx, -attrP->trans.x, -attrP->trans.y, 0.0f);
                        GXLoadTexMtxImm(mtx, texMtxTbl[texCoordId], GX_MTX2x4);
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, texMtxTbl[texCoordId]);
                    } else {
                        GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                    }
                    tevTexCoordId = (u16) texCoordId;
                    texCoordId++;
                }
                GXSetTevOrder(tevStage, tevTexCoordId, i, GX_COLOR0A0);
                if(i == 0) {
                    if(texCol[i].a == 1) {
                        color = texCol[i];
                        color.a = 255;
                        kColorId = SetKColorRGB(GX_TEVSTAGE0, &color);
                        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
                        GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        tevStage++;
                        GXSetTevKColorSel(tevStage, kColorId);
                        GXSetTevOrder(tevStage, tevTexCoordId, i, colorChan);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_CPREV, GX_CC_KONST, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
                    } else if(texCol[i].a == 2) {
                        GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_ALPHA, GX_CH_ALPHA, GX_CH_ALPHA);
                        GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
                        GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP1);
                        SetKColorRGB(tevStage, &firstTev);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVREG2);
                        GXSetTevOrder(tevStage, GX_TEXCOORD0, i, GX_COLOR_NULL);
                        tevStage++;
                        GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP2);
                        SetKColorRGB(tevStage, &secondTev);
                        GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_KONST, GX_CC_C2);
                        GXSetTevAlphaIn(tevStage, GX_CA_APREV, GX_CA_KONST, GX_CA_TEXA, GX_CA_ZERO);
                        GXSetTevOrder(tevStage, GX_TEXCOORD0, texCol->r, GX_COLOR_NULL);
                    } else {
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, alphaSrc, GX_CA_ZERO);
                    }
                } else if(texBlendF) {
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_CPREV, GX_CC_TEXC, GX_CC_ZERO);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
                    texBlendF = FALSE;
                } else if(attrP->unk8[2] == 0) {
                    if(attrP->kColor != 1.0f) {
                        color.a = attrP->kColor * 255.0f;
                        SetKColorRGB(tevStage, &color);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_ZERO);
                        GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        tevStage++;
                        GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
                        GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_C2, GX_CC_A2, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                    } else {
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
                        GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                        tevStage++;
                        GXSetTevOrder(tevStage, tevTexCoordId, i, GX_COLOR0A0);
                        GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_C2, GX_CC_TEXA, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                    }
                } else if(texCol[i].a == 1) {
                    color = texCol[i];
                    color.a = 255;
                    SetKColorRGB(tevStage, &color);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_KONST, GX_CA_APREV, GX_CA_ZERO);
                    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                    tevStage++;
                    GXSetTevOrder(tevStage, tevTexCoordId, i, GX_COLOR0A0);
                    SetKColor(tevStage, attrP->kColor * 255.0f);
                    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_C2, GX_CC_KONST, GX_CC_ZERO);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO);
                } else if(texCol[i].a == 2) {
                    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_ALPHA, GX_CH_ALPHA, GX_CH_ALPHA);
                    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
                    GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP1);
                    SetKColorRGB(tevStage, &firstTev);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVREG2);
                    GXSetTevOrder(tevStage, GX_TEXCOORD0, i, GX_COLOR_NULL);
                    tevStage++;
                    GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP2);
                    SetKColorRGB(tevStage, &secondTev);
                    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_KONST, GX_CC_C2);
                    GXSetTevAlphaIn(tevStage, GX_CA_APREV, GX_CA_KONST, GX_CA_TEXA, GX_CA_ZERO);
                    GXSetTevOrder(tevStage, GX_TEXCOORD0, texCol->r, GX_COLOR_NULL);
                } else {
                    SetKColor(tevStage, attrP->kColor * 255.0f);
                    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO);
                }
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            }
            tevStage++;
        }
        if(modelP->attr & HU3D_ATTR_TOON_MAP) {
            GXSetTexCoordGen(texCoordId, GX_TG_SRTG, GX_TG_COLOR0, GX_IDENTITY);
            GXSetTevOrder(tevStage, texCoordId, toonMapNo, GX_COLOR0A0);
            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_KONST, GX_CA_APREV, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            texCoordId++;
            tevStage++;
        }
        if(matP->refAlpha != 0.0f) {
            if(texMapId != -1) {
                SetKColor(tevStage, matP->refAlpha * 255.0f);
                GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                GXSetTevOrder(tevStage, texCoordId, texMapId, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVREG2);
                tevStage++;
                texCoordId++;
                GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX8);
                GXSetTevOrder(tevStage, texCoordId, reflectionMapNo, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_C2, GX_CC_ZERO);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
            } else {
                SetKColor(tevStage, matP->refAlpha * 255.0f);
                GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX8);
                GXSetTevOrder(tevStage, texCoordId, reflectionMapNo, GX_COLOR0A0);
                GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
            }
            SetReflectTexMtx(drawObj);
            tevStage++;
            texCoordId++;
        }
        if(Hu3DShadowF != 0 && shadowNum != 0 && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
            SetShadow(drawObj, tevStage, (u16) texCoordId);
            texCoordId++;
            tevStage++;
        }
        color.a = (1.0f - matP->invAlpha) * 255.0f;
        GXSetTevColor(GX_TEVREG0, color);
        if(matHiliteF) {
            if((modelP->attr & HU3D_ATTR_HILITE) || (flags & HSF_MATERIAL_HILITE)) {
                hiliteScale = (matP->hiliteScale / 300.0f) * 6.0f;
                if(hiliteScale < 0.1) {
                    hiliteScale = 0.1f;
                }
                PSMTXCopy(hiliteMtx, mtx);
                mtxScaleCat(mtx, hiliteScale, hiliteScale, hiliteScale);
                GXLoadTexMtxImm(mtx, 0x33, GX_MTX2x4);
                if(texMapId == -1) {
                    GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX7);
                    GXSetTevOrder(tevStage, texCoordId, hiliteMapNo, GX_COLOR0A0);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
                    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                } else {
                    GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                    GXSetTevOrder(tevStage, texCoordId, texMapId, GX_COLOR0A0);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_ZERO);
                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
                    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVREG0);
                    tevStage++;
                    texCoordId++;
                    GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX7);
                    GXSetTevOrder(tevStage, texCoordId, hiliteMapNo, GX_COLOR0A0);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_CPREV);
                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
                    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
                }
                tevStage++;
                texCoordId++;
                matHiliteF = FALSE;
                lightOnF = GX_TRUE;
            } else {
                if(texMapId == -1) {
                    GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR1A1);
                    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_ONE, GX_CC_RASC, GX_CC_ZERO);
                } else {
                    GXSetTexCoordGen(texCoordId, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
                    GXSetTevOrder(tevStage, texCoordId, texMapId, GX_COLOR1A1);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_CPREV);
                    texCoordId++;
                }
                GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
                GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
                tevStage++;
            }
        } else if(matP->invAlpha != 0.0f) {
            GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
            GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_A0, GX_CA_ZERO);
            GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            tevStage++;
        }
        if(modelP->projBit != 0) {
            for(i=0, j=1; i<HU3D_PROJ_MAX; i++, j<<=1) {
                if(j&modelP->projBit) {
                    SetProjection(drawObj, tevStage, i, (u16) texCoordId, projectionMapNo + i, texMtxTbl[i + 3]);
                    texCoordId++;
                    tevStage += 2;
                }
            }
        }
        if(bumpTexMap != -1) {
            GXSetTexCoordGen(texCoordId, GX_TG_BUMP0, GX_TG_TEXCOORD0, GX_IDENTITY);
            GXSetTevOrder(bumpTevStage, texCoordId, bumpTexMap, GX_COLOR0A0);
            texCoordId++;
        }
    }
    FlushKColor();
    GXSetNumTexGens(texCoordId);
    GXSetNumTevStages(tevStage);
    if(matP->vtxMode != shadingBak) {
        shadingBak = matP->vtxMode;
        lightBit = Hu3DLightSet(drawObj->model, Hu3DCameraMtx, Hu3DCameraMtxXPose, (matHiliteF) ? matP->hiliteScale : 0.0f);
    }
    if(matHiliteF) {
        GXSetNumChans(2);
        if(matP->vtxMode == 5) {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_NONE, GX_AF_SPEC);
            if(alphaLightF) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPEC);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_NONE, GX_AF_SPEC);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
    } else {
        GXSetNumChans(1);
        if(matP->vtxMode == 5) {
            GXSetChanCtrl(GX_COLOR0, lightOnF, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            if(alphaLightF) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, lightOnF, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
        GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    }
}

void Hu3DMatLightSet(HU3DMODEL *modelP, u32 flags, float hilitePower)
{
    BOOL enableF = (flags & 0x2) ? GX_FALSE : GX_TRUE;
    u16 lightBit;
    shadingBak = 0;
    lightBit = Hu3DLightSet(modelP, Hu3DCameraMtx, Hu3DCameraMtxXPose, hilitePower);
    if(0.0f != hilitePower) {
        GXSetNumChans(2);
        if(flags & 0x1) {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_NONE, GX_AF_SPEC);
            if(flags & 0x81) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPEC);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_COLOR1, GX_TRUE, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_NONE, GX_AF_SPEC);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            GXSetChanCtrl(GX_ALPHA1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
    } else {
        GXSetNumChans(1);
        if(flags & 0x1) {
            GXSetChanCtrl(GX_COLOR0, enableF, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            if(flags & 0x81) {
                GXSetChanCtrl(GX_ALPHA0, GX_TRUE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            } else {
                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
            }
        } else {
            GXSetChanCtrl(GX_COLOR0, enableF, GX_SRC_REG, GX_SRC_REG, lightBit, GX_DF_CLAMP, GX_AF_SPOT);
            GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, lightBit, GX_DF_CLAMP, GX_AF_NONE);
        }
        GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    }
}

static GXTevKColorSel kColorSelTbl[] = {
    GX_TEV_KCSEL_K0_R,
	GX_TEV_KCSEL_K0_G,
	GX_TEV_KCSEL_K0_B,
    GX_TEV_KCSEL_K1_R,
	GX_TEV_KCSEL_K1_G,
	GX_TEV_KCSEL_K1_B,
    GX_TEV_KCSEL_K2_R,
	GX_TEV_KCSEL_K2_G,
	GX_TEV_KCSEL_K2_B,
    GX_TEV_KCSEL_K3_R,
	GX_TEV_KCSEL_K3_G,
	GX_TEV_KCSEL_K3_B
};

static GXTevKColorID kColorTbl[] = {
    GX_KCOLOR0,
    GX_KCOLOR1,
    GX_KCOLOR2,
    GX_KCOLOR3
};

static GXTevKColorSel kColorSelTbl2[] = {
	GX_TEV_KCSEL_K0,
	GX_TEV_KCSEL_K1,
	GX_TEV_KCSEL_K2,
	GX_TEV_KCSEL_K3
};

static GXTevKAlphaSel kColorSelATbl[] = {
	GX_TEV_KASEL_K0_A,
	GX_TEV_KASEL_K1_A,
	GX_TEV_KASEL_K2_A,
	GX_TEV_KASEL_K3_A
};

static GXTevKColorSel SetKColor(GXTevStageID tevStage, u8 color)
{
    GXTevKColorSel kColorSel;

    switch (kColorIdx % 3) {
        case 0:
            kColor.r = color;
            break;
        case 1:
            kColor.g = color;
            break;
        case 2:
            kColor.b = color;
            kColor.a = 255;
            GXSetTevKColor(kColorTbl[kColorIdx / 3], kColor);
            break;
    }
    kColorSel = kColorSelTbl[kColorIdx];
    GXSetTevKColorSel(tevStage, kColorSel);
    GXSetTevKAlphaSel(tevStage, kColorSelATbl[kColorIdx / 3]);
    kColorIdx++;
    if(kColorIdx > 12) {
        kColorIdx = 11;
    }
    return kColorSel;
}

static GXTevKColorSel SetKColorRGB(GXTevStageID tevStage, GXColor *color)
{
    GXTevKColorSel kColorSel;
    if(kColorIdx % 3) {
        GXSetTevKColor(kColorTbl[kColorIdx / 3], kColor);
        kColorIdx = ((kColorIdx / 3) + 1) * 3;
    }
    
    GXSetTevKColor(kColorTbl[kColorIdx / 3], *color);
    kColorSel = kColorSelTbl2[kColorIdx / 3];
    GXSetTevKColorSel(tevStage, kColorSel);
    GXSetTevKAlphaSel(tevStage, kColorSelATbl[kColorIdx / 3]);
    kColorIdx += 3;
    if(kColorIdx > 12) {
        kColorIdx = 11;
    }
    return kColorSel;
}

static void FlushKColor(void)
{
    kColor.a = 255;
    if(kColorIdx % 3 != 0) {
        GXSetTevKColor(kColorTbl[kColorIdx / 3], kColor);
    }
}

static void SetReflect(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 texCoord, u8 color)
{
    GXTevKColorSel kColorSel;

    switch (kColorIdx % 3) {
        case 0:
            kColor.r = color;
            break;
        case 1:
            kColor.g = color;
            break;
        case 2:
            kColor.b = color;
            kColor.a = 255;
            GXSetTevKColor(kColorTbl[kColorIdx / 3], kColor);
            break;
    }
    kColorSel = kColorSelTbl[kColorIdx];
    GXSetTevKColorSel(tevStage, kColorSel);
    GXSetTevKAlphaSel(tevStage, kColorSelATbl[kColorIdx / 3]);
    kColorIdx++;
    if(kColorIdx > 12) {
        kColorIdx = 11;
    }
    GXSetTexCoordGen(texCoord, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX8);
    GXSetTevOrder(tevStage, texCoord, reflectionMapNo, GX_COLOR0A0);
    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO);
    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
    SetReflectTexMtx(drawObj);
}

static void SetHiliteTexMtx(HU3DDRAWOBJ *drawObj)
{
    HuVecF dir;
    HuVecF halfAngle;
    HuVecF cross;
    HuVecF axis = { 0, 0, -1 };
    Mtx scale;
    Mtx invXPose;
    Mtx mtx;

    HU3DLIGHT *lightP;
    float dot;
    s16 similar;
    
    lightP = &Hu3DGlobalLight[drawObj->model->hiliteIdx];
    dir = lightP->dir;
    if(lightP->type & 0x8000) {
        PSMTXMultVecSR(Hu3DCameraMtx, &dir, &dir);
    }
    dot = VECDotProduct(&dir, &axis);
    dot *= 10000.0f;
    OSf32tos16(&dot, &similar);
    if(similar == -10000) {
        PSMTXScale(hiliteMtx, 0.0f, 0.0f, 0.0f);
    } else {
        C_VECHalfAngle(&dir, &axis, &halfAngle);
        halfAngle.x = -halfAngle.x;
        halfAngle.y = -halfAngle.y;
        halfAngle.z = -halfAngle.z;
        PSMTXScale(scale, 1.0f / drawObj->scale.x, 1.0f / drawObj->scale.y, 1.0f / drawObj->scale.z);
        PSMTXConcat(drawObj->matrix, scale, mtx);
        mtx[0][3] = mtx[1][3] = mtx[2][3] = 0.0f;
        PSMTXInvXpose(mtx, invXPose);
        if(similar == 10000) {
            PSMTXIdentity(mtx);
        } else {
            float cosDot;
            VECCrossProduct(&halfAngle, &axis, &cross);
            cosDot = acosf(VECDotProduct(&axis, &halfAngle));
            PSMTXRotAxisRad(mtx, &cross, cosDot);
        }
        PSMTXConcat(mtx, invXPose, scale);
        PSMTXTrans(mtx, 0.5f, 0.5f, 0.0f);
        PSMTXConcat(mtx, scale, hiliteMtx);
    }
}

static void SetReflectTexMtx(HU3DDRAWOBJ *drawObj)
{
    Mtx final;
    Mtx scale;
    Mtx trans;
    PSMTXScale(final, 1.0f / drawObj->scale.x, 1.0f / drawObj->scale.y, 1.0f / drawObj->scale.z);
    PSMTXConcat(drawObj->matrix, final, scale);
    scale[0][3] = scale[1][3] = scale[2][3] = 0.0f;
    MTXTrans(trans, 0.5f, 0.5f, 0.0f);
    PSMTXConcat(trans, scale, final);
    mtxScaleCat(final, -0.2f, -0.2f, -0.2f);
    GXLoadTexMtxImm(final, GX_TEXMTX8, GX_MTX2x4);
}

static void SetProjection(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 projNo, s16 texCoord, GXTexMapID texMap, u32 texMtx)
{
    GXTevKColorSel kColorSel;
    u8 color;

    GXSetTexCoordGen(texCoord, GX_TG_MTX3x4, GX_TG_POS, texMtx);
    GXSetTevOrder(tevStage, texCoord, texMap, GX_COLOR0A0);
    color = Hu3DProjection[projNo].alpha;
    switch (kColorIdx % 3) {
        case 0:
            kColor.r = color;
            break;
        case 1:
            kColor.g = color;
            break;
        case 2:
            kColor.b = color;
            kColor.a = 255;
            GXSetTevKColor(kColorTbl[kColorIdx / 3], kColor);
            break;
    }
    kColorSel = kColorSelTbl[kColorIdx];
    GXSetTevKColorSel(tevStage, kColorSel);
    GXSetTevKAlphaSel(tevStage, kColorSelATbl[kColorIdx / 3]);
    kColorIdx++;
    if(kColorIdx > 12) {
        kColorIdx = 11;
    }
    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXA, GX_CC_KONST, GX_CC_ZERO);
    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVREG2);
    tevStage++;
    GXSetTevOrder(tevStage, texCoord, texMap, GX_COLOR0A0);
    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_TEXC, GX_CC_C2, GX_CC_ZERO);
    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
}

static void SetShadowTex(void)
{
    GXTexObj texObj;

    GXInitTexObj(&texObj, Hu3DShadow->buf, Hu3DShadow->size, Hu3DShadow->size, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(&texObj, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
    GXLoadTexObj(&texObj, shadowMapNo);
}

static void SetShadow(HU3DDRAWOBJ *drawObj, s16 tevStage, s16 texCoord)
{
    GXSetTexCoordGen(texCoord, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX9);
    SetKColorRGB(tevStage, &Hu3DShadow->color);
    GXSetTevOrder(tevStage, texCoord, shadowMapNo, GX_COLOR0A0);
    GXSetTevColorIn(tevStage, GX_CC_CPREV, GX_CC_KONST, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
}

static void FaceDrawShadow(HU3DDRAWOBJ *drawObj, HSFFACE *face)
{
    HSFOBJECT *objPtr;
    HU3DMODEL *modelP;
    HSFCONSTDATA *constDataP;
    HSFMATERIAL *matP;
    void *list;
    GXColor color;
    s16 vtxMode;

    objPtr = drawObj->object;
    modelP = drawObj->model;
    constDataP = objPtr->constData;
    matP = &objPtr->mesh.material[face->mat & 0xFFF];
    if(matP != materialBak) {
        if(!(constDataP->attr & HU3D_CONST_SHADOW)) {
            drawCnt++;
            return;
        }
        materialBak = matP;
        color.a = 255.0f * (1.0f - matP->invAlpha);
        GXSetTevColor(GX_TEVREG0, color);
        GXSetZMode(GX_FALSE, GX_LEQUAL, GX_FALSE);
        if(matP->attrNum == 0) {
            vtxMode = (objPtr->mesh.color) ? 4 : 0;
            if(vtxMode != vtxModeBak) {
                vtxModeBak = vtxMode;
                GXClearVtxDesc();
                GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
                GXSetArray(GX_VA_POS, objPtr->mesh.vertex->data, sizeof(HuVecF));
                GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
                if(modelP->hsf->cenvNum == 0) {
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S8, 0);
                    GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, 3*sizeof(s8));
                } else {
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
                    GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, sizeof(HuVecF));
                }
                if(vtxMode & 4) {
                    GXSetVtxDesc(GX_VA_CLR0, GX_INDEX16);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
                    GXSetArray(GX_VA_CLR0, objPtr->mesh.color->data, sizeof(GXColor));
                }
            }
            GXSetNumTexGens(0);
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_A1, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        } else {
            vtxMode = (matP->vtxMode == 5) ? 5 : 1;
            if(DrawData[drawCnt].flags & 2) {
                vtxMode |= 2;
            }
            if(vtxMode != vtxModeBak) {
                vtxModeBak = vtxMode;
                GXClearVtxDesc();
                GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
                GXSetArray(GX_VA_POS, objPtr->mesh.vertex->data, sizeof(HuVecF));
                if(vtxMode & 2) {
                    GXSetVtxDesc(GX_VA_NBT, GX_DIRECT);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_NRM_NBT, GX_S16, 8);
                } else {
                    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
                    if(modelP->hsf->cenvNum == 0) {
                        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S8, 0);
                        GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, 3*sizeof(s8));
                    } else {
                        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
                        GXSetArray(GX_VA_NRM, objPtr->mesh.normal->data, sizeof(HuVecF));
                    }
                }
                GXSetVtxDesc(GX_VA_TEX0, GX_INDEX16);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
                GXSetArray(GX_VA_TEX0, objPtr->mesh.st->data, sizeof(HuVec2F));
                if(vtxMode & 4) {
                    GXSetVtxDesc(GX_VA_CLR0, GX_INDEX16);
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
                    GXSetArray(GX_VA_CLR0, objPtr->mesh.color->data, sizeof(GXColor));
                }
            }
            GXSetNumTexGens(0);
            GXSetNumTevStages(1);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_A1, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        }
        GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        list = (u8 *) DLBufStartP + DrawData[drawCnt].dlOfs;
        GXCallDisplayList(list, DrawData[drawCnt].dlSize);
    } else {
        if(!(constDataP->attr & HU3D_CONST_SHADOW)) {
            drawCnt++;
            return;
        }
        list = (u8 *) DLBufStartP + DrawData[drawCnt].dlOfs;
        GXFastCallDisplayList(list, DrawData[drawCnt].dlSize);
    }
    drawCnt++;
}

static s32 LoadTexture(HU3DMODEL *modelP, HSFBITMAP *bmpPtr, HSFATTRIBUTE *attrP, s16 texId)
{
    GXTexObj texObj;
    GXTlutObj tlutObj;
    s16 sizeX;
    s16 sizeY;
    s16 wrapX;
    s16 wrapY;
    BOOL mipmap;
    s16 texColId;

    if(!bmpPtr) {
        OSReport("Error: No Texture\n");
        return;
    }
    sizeX = bmpPtr->sizeX;
    sizeY = bmpPtr->sizeY;
    wrapX = (attrP->wrapS == TRUE) ? GX_REPEAT : GX_CLAMP;
    wrapY = (attrP->wrapT == TRUE) ? GX_REPEAT : GX_CLAMP;
    mipmap = (attrP->flag & HSF_FLAG_MIPMAP) ? GX_TRUE : GX_FALSE;
    switch (bmpPtr->dataFmt) {
        case HSF_BMPFMT_RGBA8:
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_RGBA8, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_RGB565:
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_RGB565, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_RGB5A3:
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_RGB5A3, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_CI_RGB565:
            if(bmpPtr->pixSize < 8) {
                GXInitTlutObj(&tlutObj, bmpPtr->palData, GX_TL_RGB565, bmpPtr->palSize);
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C4, wrapX, wrapY, mipmap, texId);
            } else {
                GXInitTlutObj(&tlutObj, bmpPtr->palData, GX_TL_RGB565, bmpPtr->palSize);
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C8, wrapX, wrapY, mipmap, texId);
            }
            break;
            
        case HSF_BMPFMT_CI_RGB5A3:
            if(bmpPtr->pixSize < 8) {
                GXInitTlutObj(&tlutObj, bmpPtr->palData, GX_TL_RGB5A3, bmpPtr->palSize);
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C4, wrapX, wrapY, mipmap, texId);
            } else {
                GXInitTlutObj(&tlutObj, bmpPtr->palData, GX_TL_RGB5A3, bmpPtr->palSize);
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C8, wrapX, wrapY, mipmap, texId);
            }
            break;
            
        case HSF_BMPFMT_I4:
            texColId = (s16) texId;
            texCol[texColId].r = bmpPtr->tint.r;
            texCol[texColId].g = bmpPtr->tint.g;
            texCol[texColId].b = bmpPtr->tint.b;
            texCol[texColId].a = 1;
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_I4, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_I8:
            texColId = (s16) texId;
            texCol[texColId].r = bmpPtr->tint.r;
            texCol[texColId].g = bmpPtr->tint.g;
            texCol[texColId].b = bmpPtr->tint.b;
            texCol[texColId].a = 1;
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_I8, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_IA4:
            texColId = (s16) texId;
            texCol[texColId].r = bmpPtr->tint.r;
            texCol[texColId].g = bmpPtr->tint.g;
            texCol[texColId].b = bmpPtr->tint.b;
            texCol[texColId].a = 1;
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_IA4, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_IA8:
            texColId = (s16) texId;
            texCol[texColId].r = bmpPtr->tint.r;
            texCol[texColId].g = bmpPtr->tint.g;
            texCol[texColId].b = bmpPtr->tint.b;
            texCol[texColId].a = 1;
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_IA8, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_CMPR:
            GXInitTexObj(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_CMPR, wrapX, wrapY, mipmap);
            break;
            
        case HSF_BMPFMT_CI_IA8:
            if(texId & HSF_TEXID_TL32) {
                GXInitTlutObj(&tlutObj, &bmpPtr->palData[(bmpPtr->palSize + 0xF) & 0xFFF0], GX_TL_IA8, bmpPtr->palSize);
            } else {
                GXInitTlutObj(&tlutObj, bmpPtr->palData, GX_TL_IA8, bmpPtr->palSize);
            }
            texId &= 0x7FFF;
            if(bmpPtr->pixSize < 8) {
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C4, wrapX, wrapY, mipmap, texId);
            } else {
                GXLoadTlut(&tlutObj, texId);
                GXInitTexObjCI(&texObj, bmpPtr->data, sizeX, sizeY, GX_TF_C8, wrapX, wrapY, mipmap, texId);
            }
            TL32F = 1;
            break;
    }
    if((modelP->attr & HU3D_ATTR_TEX_NEAR) || (attrP->flag & HSF_FLAG_NEAR)) {
        GXInitTexObjLOD(&texObj, GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
    } else if(mipmap) {
        GXInitTexObjLOD(&texObj, GX_LIN_MIP_LIN, GX_LINEAR, 0.0f, attrP->unk78, 0.0f, GX_FALSE, GX_TRUE, GX_ANISO_2);
    } else if(bmpPtr->maxLod == 0) {
        GXInitTexObjLOD(&texObj, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
    } else {
        GXInitTexObjLOD(&texObj, GX_LIN_MIP_LIN, GX_LINEAR, 0.0f, bmpPtr->maxLod - 1, 0.0f, GX_TRUE, GX_TRUE, GX_ANISO_1);
    }
    GXLoadTexObj(&texObj, texId);
}

static void objNull(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HSFTRANSFORM *transformP;
    HuVecF *prevScale;
    HuVecF *scale;
    s16 applyF;
    s16 i;
    Mtx mtx;

    if(CancelTRXF == FALSE) {
        if(attachMotionF == FALSE) {
            transformP = &objPtr->mesh.base;
        } else {
            transformP = &objPtr->mesh.curr;
        }
        if(modelP->hsf->cenvNum == 0 || hookIdx != HU3D_MODELID_NONE) {
            PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
            mtxRotCat(mtx, transformP->rot.x, transformP->rot.y, transformP->rot.z);
            mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
            PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
        }
        scale = &scaleBuf[MTXIdx];
        prevScale = scale-1;
        scale->x = prevScale->x*transformP->scale.x;
        scale->y = prevScale->y*transformP->scale.y;
        scale->z = prevScale->z*transformP->scale.z;
        MTXIdx++;
        applyF = TRUE;
    } else {
        CancelTRXF = FALSE;
        applyF = FALSE;
    }
    for(i=0; i<objPtr->mesh.childNum; i++) {
        objCall(modelP, objPtr->mesh.child[i]);
    }
    if(applyF) {
        MTXIdx--;
    }
}

static void objRoot(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HSFTRANSFORM *transformP;
    HuVecF *prevScale;
    HuVecF *scale;
    s16 i;
    s16 applyF;
    Mtx mtx;

    if(CancelTRXF == FALSE) {
        if(attachMotionF == FALSE) {
            transformP = &objPtr->mesh.base;
        } else {
            transformP = &objPtr->mesh.curr;
        }
        if(modelP->hsf->cenvNum == 0 || hookIdx != HU3D_MODELID_NONE) {
            PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
            mtxRotCat(mtx, transformP->rot.x, transformP->rot.y, transformP->rot.z);
            mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
            PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
        }
        scale = &scaleBuf[MTXIdx];
        prevScale = scale-1;
        scale->x = prevScale->x*transformP->scale.x;
        scale->y = prevScale->y*transformP->scale.y;
        scale->z = prevScale->z*transformP->scale.z;
        MTXIdx++;
        applyF = TRUE;
    } else {
        CancelTRXF = FALSE;
        applyF = FALSE;
    }
    for(i=0; i<objPtr->mesh.childNum; i++) {
        objCall(modelP, objPtr->mesh.child[i]);
    }
    if(applyF) {
        MTXIdx--;
    }
}

static void objJoint(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HSFTRANSFORM *transformP;
    HuVecF *prevScale;
    HuVecF *scale;
    s16 applyF;
    s16 i;
    Mtx mtx;

    if(CancelTRXF == FALSE) {
        if(attachMotionF == FALSE) {
            transformP = &objPtr->mesh.base;
        } else {
            transformP = &objPtr->mesh.curr;
        }
        if(modelP->hsf->cenvNum == 0 || hookIdx != HU3D_MODELID_NONE) {
            PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
            mtxRotCat(mtx, transformP->rot.x, transformP->rot.y, transformP->rot.z);
            mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
            PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
        }
        scale = &scaleBuf[MTXIdx];
        prevScale = scale-1;
        scale->x = prevScale->x*transformP->scale.x;
        scale->y = prevScale->y*transformP->scale.y;
        scale->z = prevScale->z*transformP->scale.z;
        MTXIdx++;
        applyF = TRUE;
    } else {
        CancelTRXF = FALSE;
        applyF = FALSE;
    }
    for(i=0; i<objPtr->mesh.childNum; i++) {
        objCall(modelP, objPtr->mesh.child[i]);
    }
    if(applyF) {
        MTXIdx--;
    }
}

static void objMap(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HSFTRANSFORM *transformP;
    HuVecF *prevScale;
    HuVecF *scale;
    s16 i;
    s16 applyF;
    Mtx mtx;

    if(CancelTRXF == FALSE) {
        if(attachMotionF == FALSE) {
            transformP = &objPtr->mesh.base;
        } else {
            transformP = &objPtr->mesh.curr;
        }
        PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
        mtxRotCat(mtx, transformP->rot.x, transformP->rot.y, transformP->rot.z);
        mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
        PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
        scale = &scaleBuf[MTXIdx];
        prevScale = scale-1;
        scale->x = prevScale->x*transformP->scale.x;
        scale->y = prevScale->y*transformP->scale.y;
        scale->z = prevScale->z*transformP->scale.z;
        MTXIdx++;
        applyF = TRUE;
    } else {
        CancelTRXF = FALSE;
        applyF = FALSE;
    }
    for(i=0; i<objPtr->mesh.childNum; i++) {
        objCall(modelP, objPtr->mesh.child[i]);
    }
    if(applyF) {
        MTXIdx--;
    }
}

static void objReplica(HU3DMODEL *modelP, HSFOBJECT *objPtr)
{
    HSFTRANSFORM *transformP;
    Mtx mtx;
    Mtx rot;

    if(attachMotionF == 0) {
        transformP = &objPtr->mesh.base;
    } else {
        transformP = &objPtr->mesh.curr;
    }
    mtxRot(rot, transformP->rot.x, transformP->rot.y, transformP->rot.z);
    PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
    PSMTXConcat(rot, mtx, mtx);
    mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
    PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
    scaleBuf[MTXIdx].x = transformP->scale.x*scaleBuf[MTXIdx-1].x;
    scaleBuf[MTXIdx].y = transformP->scale.y*scaleBuf[MTXIdx-1].y;
    scaleBuf[MTXIdx].z = transformP->scale.z*scaleBuf[MTXIdx-1].z;
    MTXIdx++;
    CancelTRXF = TRUE;
    objCall(modelP, objPtr->mesh.replica);
    CancelTRXF = FALSE;
    MTXIdx--;
}

void Hu3DDrawPost(void)
{
    GXColor color;
    HU3DMODELHOOK hookFunc;
    s16 spA;
    HSFBUFFER *faceBuf;
    HU3DDRAWOBJ *drawObj;
    s16 projBit;
    s16 temp;
    s16 invF;
    s16 drawObjNo;
    s16 drawObjNextNo;
    s16 j;
    s16 i;
    float z;
    HSFFACE *facePtr;
    Mtx shadowCam;
    Mtx mtx;
    Mtx invCamera;

    spA = 0;
    if(DrawObjIdx != 0) {
        for(i=0; i<DrawObjIdx; i++) {
            DrawObjNum[i] = i;
        }
        if(shadowModelDrawF == 0) {
            drawObjNextNo = 1;
            while (drawObjNextNo <= DrawObjIdx) {
                drawObjNextNo = drawObjNextNo * 3 + 1;
            }
            while ((drawObjNextNo /= 3) >= 1) {
                for(i = drawObjNextNo; i < DrawObjIdx; i++) {
                    temp = DrawObjNum[i];
                    z = DrawObjData[DrawObjNum[i]].z;
                    for(j=i-drawObjNextNo; j>=0;) {
                        if(DrawObjData[DrawObjNum[j]].z < z) {
                            DrawObjNum[j + drawObjNextNo] = DrawObjNum[j];
                            j -= drawObjNextNo;
                        } else {
                            break;
                        }
                    }
                    DrawObjNum[j+drawObjNextNo] = temp;
                }
            }
            for(i=0; i<DrawObjIdx-1; i++) {
                for(j=i+1; j<DrawObjIdx; j++) {
                    if(DrawObjData[DrawObjNum[i]].z != DrawObjData[DrawObjNum[j]].z) {
                        break;
                    }
                    if(DrawObjNum[j] < DrawObjNum[i]) {
                        temp = DrawObjNum[i];
                        DrawObjNum[i] = DrawObjNum[j];
                        DrawObjNum[j] = temp;
                    }
                }
            }
        }
        GXInvalidateTexAll();
        GXInvalidateVtxCache();
        materialBak = PTR_INVALID;
        for(i=0; i<8; i++) {
            BmpPtrBak[i] = PTR_INVALID;
        }
        GXSetCullMode(GX_CULL_BACK);
        for(drawObjNo=0; drawObjNo<DrawObjIdx; drawObjNo++) {
            drawObj = &DrawObjData[DrawObjNum[drawObjNo]];
            if(drawObj->model->attr & HU3D_ATTR_HOOKFUNC) {
                GXSetColorUpdate(GX_TRUE);
                hookFunc = drawObj->model->hookFunc;
                hookFunc(drawObj->model, &drawObj->matrix);
                for(i=0; i<8; i++) {
                    BmpPtrBak[i] = PTR_INVALID;
                }
                materialBak = PTR_INVALID;
                if(shadowModelDrawF == FALSE) {
                    Hu3DCameraSet(Hu3DCameraNo, Hu3DCameraMtx);
                }
            } else {
                Hu3DObjInfoP = drawObj->object->constData;
                DLBufStartP = Hu3DObjInfoP->dlBuf;
                DrawData = Hu3DObjInfoP->drawData;
                GXLoadPosMtxImm(drawObj->matrix, GX_PNMTX0);
                PSMTXInvXpose(drawObj->matrix, mtx);
                GXLoadNrmMtxImm(mtx, 0);
                if(Hu3DShadowF && shadowNum && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
                    PSMTXInverse(Hu3DCameraMtx, invCamera);
                    PSMTXConcat(invCamera, drawObj->matrix, mtx);
                    PSMTXConcat(Hu3DShadow->projMtx, Hu3DShadow->lookAtMtx, shadowCam);
                    PSMTXConcat(shadowCam, mtx, mtx);
                    GXLoadTexMtxImm(mtx, GX_TEXMTX9, GX_MTX3x4);
                    invF = TRUE;
                } else {
                    invF = FALSE;
                }
                if(drawObj->model->projBit != 0) {
                    if(invF == FALSE) {
                        PSMTXInverse(Hu3DCameraMtx, invCamera);
                    }
                    for(i=0, projBit=1; i<HU3D_PROJ_MAX; i++, projBit<<=1) {
                        if(projBit & drawObj->model->projBit) {
                            PSMTXConcat(invCamera, drawObj->matrix, mtx);
                            PSMTXConcat(Hu3DProjection[i].projMtx, Hu3DProjection[i].lookAtMtx, shadowCam);
                            PSMTXConcat(shadowCam, mtx, mtx);
                            GXLoadTexMtxImm(mtx, texMtxTbl[i+3], GX_MTX3x4);
                        }
                    }
                }
                if((drawObj->model->attr & HU3D_ATTR_HILITE) || (Hu3DObjInfoP->attr & HU3D_CONST_HILITE)) {
                    SetHiliteTexMtx(drawObj);
                }
                faceBuf = drawObj->object->mesh.face;
                facePtr = faceBuf->data;
                drawCnt = 0;
                shadingBak = -1;
                vtxModeBak = -1;
                matHookCallF = FALSE;
                materialBak = PTR_INVALID;
                if(shadowModelDrawF == 0) {
                    for(i=0; i<faceBuf->count;) {
                        FaceDraw(drawObj, facePtr);
                        if(facePtr->type == 4) {
                            i++;
                            facePtr++;
                        } else {
                            i += DrawData[drawCnt - 1].polyCnt;
                            facePtr += DrawData[drawCnt - 1].polyCnt;
                        }
                    }
                    totalPolyCnt += Hu3DObjInfoP->triCnt;
                } else {
                    color.a = 255;
                    GXSetChanAmbColor(GX_COLOR0A0, color);
                    GXSetChanMatColor(GX_COLOR0A0, color);
                    color.a = Hu3DShadow->color.a;
                    GXSetTevColor(GX_TEVREG1, color);
                    GXSetNumChans(1);
                    GXSetZCompLoc(GX_TRUE);
                    for(i=0; i<faceBuf->count;) {
                        FaceDrawShadow(drawObj, facePtr);
                        if(facePtr->type == 4) {
                            i++;
                            facePtr++;
                        } else {
                            i += DrawData[drawCnt - 1].polyCnt;
                            facePtr += DrawData[drawCnt - 1].polyCnt;
                        }
                    }
                    totalPolyCnt += Hu3DObjInfoP->triCnt;
                }
                if(TL32F != 0) {
                    for(i=GX_TEVSTAGE0; i<GX_MAX_TEVSTAGE; i++) {
                        GXSetTevSwapMode(i, GX_TEV_SWAP0, GX_TEV_SWAP0);
                    }
                    TL32F = 0;
                }
                if(matHookCallF) {
                    s16 tevStageNo;
                    GXSetNumIndStages(0);
                    for(tevStageNo=0; tevStageNo<GX_MAX_TEXCOORD; tevStageNo++) {
                        GXSetTevDirect(tevStageNo);
                        GXSetTexCoordScaleManually(tevStageNo, 0, 0, 0);
                    }
                    for(; tevStageNo<GX_MAX_TEVSTAGE; tevStageNo++) {
                        GXSetTevDirect(tevStageNo);
                    }
                }
                GXSetColorUpdate(GX_TRUE);
            }
        }
    }
}

static void ObjDraw(HU3DDRAWOBJ *drawObj)
{
    GXColor color;
    HSFBUFFER *faceBuf;
    s16 invF;
    s16 projBit;
    s16 i;

    HSFDRAWDATA *draw;
    HSFFACE *facePtr;
    Mtx shadowCam;
    Mtx mtx;
    Mtx invCamera;

    Hu3DObjInfoP = drawObj->object->constData;
    DLBufStartP = Hu3DObjInfoP->dlBuf;
    DrawData = Hu3DObjInfoP->drawData;
    GXLoadPosMtxImm(drawObj->matrix, GX_PNMTX0);
    PSMTXInvXpose(drawObj->matrix, mtx);
    GXLoadNrmMtxImm(mtx, 0);
    GXInvalidateVtxCache();
    if(Hu3DShadowF != FALSE && shadowNum != 0 && (Hu3DObjInfoP->attr & HU3D_CONST_SHADOW_MAP)) {
        PSMTXInverse(Hu3DCameraMtx, invCamera);
        PSMTXConcat(invCamera, drawObj->matrix, mtx);
        PSMTXConcat(Hu3DShadow->projMtx, Hu3DShadow->lookAtMtx, shadowCam);
        PSMTXConcat(shadowCam, mtx, mtx);
        GXLoadTexMtxImm(mtx, GX_TEXMTX9, GX_MTX3x4);
        invF = TRUE;
    } else {
        invF = FALSE;
    }
    if(drawObj->model->projBit != 0) {
        if(invF == FALSE) {
            PSMTXInverse(Hu3DCameraMtx, invCamera);
        }
        for(i=0, projBit=1; i<HU3D_PROJ_MAX; i++, projBit<<=1) {
            if(projBit & drawObj->model->projBit) {
                PSMTXConcat(invCamera, drawObj->matrix, mtx);
                PSMTXConcat(Hu3DProjection[i].projMtx, Hu3DProjection[i].lookAtMtx, shadowCam);
                PSMTXConcat(shadowCam, mtx, mtx);
                GXLoadTexMtxImm(mtx, texMtxTbl[i+3], GX_MTX3x4);
            }
        }
    }
    if((drawObj->model->attr & HU3D_ATTR_HILITE) || (Hu3DObjInfoP->attr & HU3D_CONST_HILITE)) {
        SetHiliteTexMtx(drawObj);
    }
    faceBuf = drawObj->object->mesh.face;
    facePtr = faceBuf->data;
    drawCnt = 0;
    shadingBak = -1;
    vtxModeBak = -1;
    matHookCallF = FALSE;
    materialBak = (HSFMATERIAL*) -1;
    if(shadowModelDrawF == FALSE) {
        for(i = 0; i < faceBuf->count;) {
            FaceDraw(drawObj, facePtr);
            if(facePtr->type == 4) {
                i++;
                facePtr++;
            } else {
                draw = &DrawData[drawCnt - 1];
                i += draw->polyCnt;
                facePtr += draw->polyCnt;
            }
        }
        totalPolyCnt += Hu3DObjInfoP->triCnt;
    } else {
        color.a = 255;
        GXSetChanAmbColor(GX_COLOR0A0, color);
        GXSetChanMatColor(GX_COLOR0A0, color);
        color.a = Hu3DShadow->color.a;
        GXSetTevColor(GX_TEVREG1, color);
        GXSetNumChans(1);
        GXSetZCompLoc(GX_TRUE);
        for(i=0; i<faceBuf->count;) {
            FaceDrawShadow(drawObj, facePtr);
            if(facePtr->type == 4) {
                i++;
                facePtr++;
            } else {
                i += DrawData[drawCnt - 1].polyCnt;
                facePtr += DrawData[drawCnt - 1].polyCnt;
            }
        }
        totalPolyCnt += Hu3DObjInfoP->triCnt;
    }
    if(TL32F != 0) {
        for(i = GX_TEVSTAGE0; i < GX_MAX_TEVSTAGE; i++) {
            GXSetTevSwapMode(i, GX_TEV_SWAP0, GX_TEV_SWAP0);
        }
        TL32F = 0;
    }
    if(matHookCallF) {
        s16 tevStageNo;
        GXSetNumIndStages(0);
        for(tevStageNo=0; tevStageNo<GX_MAX_TEXCOORD; tevStageNo++) {
            GXSetTevDirect(tevStageNo);
            GXSetTexCoordScaleManually(tevStageNo, 0, 0, 0);
        }
        for(; tevStageNo<GX_MAX_TEVSTAGE; tevStageNo++) {
            GXSetTevDirect(tevStageNo);
        }
    }
    GXSetColorUpdate(GX_TRUE);
}

void MakeDisplayList(HU3DMODELID modelId, u32 no)
{
    HSFDATA *hsf;
    HU3DMODEL *modelP;

    hsf = Hu3DData[modelId].hsf;
    modelP = &Hu3DData[modelId];
    curModelID = modelId;
    mallocNo = no;
    faceNumBuf = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, 0x800 * sizeof(u16), mallocNo);
    MDObjCall(hsf, hsf->root);
    HuMemDirectFree(faceNumBuf);
    if(modelP->attr & HU3D_ATTR_SHADOW) {
        shadowNum++;
    }
}

static void MDObjCall(HSFDATA *hsf, HSFOBJECT *objPtr) {
    s16 i;

    switch (objPtr->type) {
        case 0:
        case 1:
        case 3:
        case 4:
        case 5:
        case 6:
        case 9:
            for(i=0; i<objPtr->mesh.childNum; i++) {
                MDObjCall(hsf, objPtr->mesh.child[i]);
            }
            break;
        case 2:
            MDObjMesh(hsf, objPtr);
            break;
    }
}

static void MDObjMesh(HSFDATA *hsf, HSFOBJECT *objPtr)
{
    HSFBUFFER *faceBuf;
    HSFFACE *facePtr;
    s16 i;

    faceBuf = objPtr->mesh.face;
    DLFirstF = FALSE;
    drawCnt = matChgCnt = triCnt = quadCnt = 0;
    faceNumBuf[0] = 0;
    materialBak = PTR_INVALID;
    polyTypeBak = 255;
    DLTotalNum = 0;
    facePtr = faceBuf->data;
    for(i=0; i<faceBuf->count; i++, facePtr++) {
        MDFaceCnt(objPtr, facePtr);
    }
    DLTotalNum = (DLTotalNum + 0x40) & ~0x1F;
    Hu3DObjInfoP = ObjConstantMake(objPtr, mallocNo);
    Hu3DObjInfoP->triCnt = triCnt;
    Hu3DObjInfoP->drawData = DrawData = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, matChgCnt * sizeof(HSFDRAWDATA), mallocNo);
    memset(DrawData, 0, matChgCnt * sizeof(HSFDRAWDATA));
    DLBufP = DLBufStartP = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, DLTotalNum, mallocNo);
    DCInvalidateRange(DLBufStartP, DLTotalNum);
    DLFirstF = FALSE;
    materialBak = PTR_INVALID;
    polyTypeBak = 255;
    totalSize = drawCnt = 0;
    facePtr = faceBuf->data;
    if(objPtr->flags & HSF_MATERIAL_SHADOW) {
        Hu3DObjInfoP->attr |= HU3D_CONST_SHADOW;
        Hu3DModelAttrSet(curModelID, HU3D_ATTR_SHADOW);
    }
    if(objPtr->flags & HSF_MATERIAL_SHADOWMAP) {
        Hu3DObjInfoP->attr |= HU3D_CONST_SHADOW_MAP;
    }
    if(objPtr->flags & (HSF_MATERIAL_ADDCOL|HSF_MATERIAL_INVCOL)) {
        Hu3DObjInfoP->attr |= HU3D_CONST_ALTBLEND;
    }
    if(objPtr->flags & HSF_MATERIAL_HILITE) {
        Hu3DObjInfoP->attr |= HU3D_CONST_HILITE;
    }
    if(objPtr->flags & HSF_MATERIAL_MATHOOK) {
        Hu3DObjInfoP->attr |= HU3D_CONST_MATHOOK;
    }
    if(objPtr->flags & HSF_MATERIAL_REFLECTMODEL) {
        Hu3DObjInfoP->attr |= HU3D_CONST_REFLECTMODEL;
    }
    for(i=0; i<faceBuf->count; i++, facePtr++) {
        MDFaceDraw(objPtr, facePtr);
    }
    Hu3DObjInfoP->dlBuf = DLBufStartP;
    if(DLTotalNum < totalSize) {
        OSReport("DLBuf Over >>>>>>>>>>>>>");
        OSReport("%x:%x:%x\n", Hu3DObjInfoP->dlBuf, totalSize, DLTotalNum);
    }
    for(i = 0; i < objPtr->mesh.childNum; i++) {
        MDObjCall(hsf, objPtr->mesh.child[i]);
    }
}

HSFCONSTDATA *ObjConstantMake(HSFOBJECT *object, u32 no)
{
    HSFCONSTDATA *constDataP;

    constDataP = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, sizeof(HSFCONSTDATA), no);
    object->constData = constDataP;
    constDataP->attr = HU3D_CONST_NONE;
    constDataP->hookMdlId = HU3D_MODELID_NONE;
    constDataP->hiliteMap = NULL;
    return constDataP;
}

#define VTX_COLOR(obj, idx) (&((GXColor *) obj->mesh.color->data)[idx])
static void MDFaceDraw(HSFOBJECT *objPtr, HSFFACE *face)
{
    HSFMATERIAL *matP;
    s16 *stripPtr;
    s16 nbtAttrIdx;
    s16 i;
    s16 nbtAttr;
    s32 colorIdx;
    u32 dlSize;
    BOOL stF;

    nbtAttrIdx = -1;
    matP = &objPtr->mesh.material[face->mat & 0xFFF];
    if(matP != materialBak || polyTypeBak != (face->type & 7) || (face->type & 7) == 4) {
        polyTypeBak = face->type & 7;
        materialBak = matP;
        DrawData[drawCnt].dlOfs = (u32) DLBufP - (u32) DLBufStartP;
        GXBeginDisplayList(DLBufP, 0x20000);
        GXResetWriteGatherPipe();
        if(matP->attrNum == 0) {
            stF = FALSE;
        } else {
            stF = TRUE;
            for(i=0; i<matP->attrNum; i++) {
                if(objPtr->mesh.attribute[matP->attr[i]].nbtTpLvl != 0.0) {
                    Hu3DObjInfoP->attr |= HU3D_CONST_KCOLOR_XLU;
                    DrawData[drawCnt].flags |= 2;
                    nbtAttrIdx = i;
                }
            }
            if(nbtAttrIdx != -1 && nbtAttrIdx != 0) {
                nbtAttr = matP->attr[nbtAttrIdx];
                for(i=matP->attrNum-2; i>=0; i--) {
                    if(i != nbtAttrIdx) {
                        matP->attr[i+1] = matP->attr[i];
                    }
                }
                matP->attr[0] = nbtAttr;
            }
        }
        if(matP->invAlpha != 0.0 || (matP->pass & 0xF)) {
            Hu3DObjInfoP->attr |= HU3D_CONST_XLU;
        }
        if(matP->flags & (HSF_MATERIAL_ADDCOL|HSF_MATERIAL_INVCOL)) {
            Hu3DObjInfoP->attr |= HU3D_CONST_ALTBLEND;
        }
        if(matP->flags & HSF_MATERIAL_MATHOOK) {
            Hu3DObjInfoP->attr |= HU3D_CONST_MATHOOK;
        }
        if(matP->refAlpha != 0.0) {
            Hu3DObjInfoP->attr |= HU3D_CONST_REFLECT;
        }
        if(matP->flags & HSF_MATERIAL_HILITE) {
            Hu3DObjInfoP->attr |= HU3D_CONST_HILITE;
        }
        if(matP->flags & HSF_MATERIAL_NEAR) {
            Hu3DObjInfoP->attr |= HU3D_CONST_NEAR;
        }
        if(matP->flags & HSF_MATERIAL_REFLECTMODEL) {
            Hu3DObjInfoP->attr |= HU3D_CONST_REFLECTMODEL;
        }
        faceCnt = 0;
        switch (face->type & 7) {
            case 0:
            case 1:
                break;
            case 2:
                GXBegin(GX_TRIANGLES, GX_VTXFMT0, faceNumBuf[drawCnt]);
                for(i = 0; i < faceNumBuf[drawCnt] / 3; i++, face++) {
                    GXPosition1x16(face->indices[0][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[0][1]);
                    } else {
                        MakeCalcNBT(objPtr, face, 0, 1);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[0][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[0][3]);
                    }
                    GXPosition1x16(face->indices[2][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[2][1]);
                    } else {
                        MakeNBT(objPtr, face, 2, 0);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[2][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[2][3]);
                    }
                    GXPosition1x16(face->indices[1][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[1][1]);
                    } else {
                        MakeNBT(objPtr, face, 1, 2);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[1][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[1][3]);
                    }
                }
                faceCnt = faceNumBuf[drawCnt] / 3;
                break;
            case 3:
                GXBegin(GX_QUADS, GX_VTXFMT0, faceNumBuf[drawCnt]);
                for(i = 0; i < faceNumBuf[drawCnt] / 4; i++, face++) {
                    GXPosition1x16(face->indices[0][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[0][1]);
                    } else {
                        MakeCalcNBT(objPtr, face, 0, 1);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[0][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[0][3]);
                    }
                    GXPosition1x16(face->indices[2][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[2][1]);
                    } else {
                        MakeNBT(objPtr, face, 2, 0);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[2][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[2][3]);
                    }
                    GXPosition1x16(face->indices[3][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[3][1]);
                    } else {
                        MakeNBT(objPtr, face, 3, 2);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[3][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXPosition1x16(face->indices[3][3]);
                    }
                    GXPosition1x16(face->indices[1][0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(face->indices[1][1]);
                    } else {
                        MakeNBT(objPtr, face, 1, 3);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = face->indices[1][2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(face->indices[1][3]);
                    }
                }
                faceCnt = faceNumBuf[drawCnt] / 4;
                break;
            case 4:
                GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, faceNumBuf[drawCnt]);
                GXPosition1x16(face->indices[0][0]);
                if(nbtAttrIdx == -1) {
                    GXNormal1x16(face->indices[0][1]);
                } else {
                    MakeCalcNBT(objPtr, face, 0, 1);
                }
                if(matP->vtxMode == 5) {
                    colorIdx = face->indices[0][2];
                    GXColor1x16(colorIdx);
                    if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                        Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                    }
                }
                if(stF) {
                    GXTexCoord1x16(face->indices[0][3]);
                }
                GXPosition1x16(face->indices[2][0]);
                if(nbtAttrIdx == -1) {
                    GXNormal1x16(face->indices[2][1]);
                } else {
                    MakeNBT(objPtr, face, 2, 0);
                }
                if(matP->vtxMode == 5) {
                    colorIdx = face->indices[2][2];
                    GXColor1x16(colorIdx);
                    if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                        Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                    }
                }
                if(stF) {
                    GXTexCoord1x16(face->indices[2][3]);
                }
                GXPosition1x16(face->indices[1][0]);
                if(nbtAttrIdx == -1) {
                    GXNormal1x16(face->indices[1][1]);
                } else {
                    MakeNBT(objPtr, face, 1, 2);
                }
                if(matP->vtxMode == 5) {
                    colorIdx = face->indices[1][2];
                    GXColor1x16(colorIdx);
                    if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                        Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                    }
                }
                if(stF) {
                    GXTexCoord1x16(face->indices[1][3]);
                }
                stripPtr = face->strip.data;
                for(i = 0; i < face->strip.count; i++, stripPtr += 4) {
                    GXPosition1x16(stripPtr[0]);
                    if(nbtAttrIdx == -1) {
                        GXNormal1x16(stripPtr[1]);
                    } else {
                        MakeCalcNBT(objPtr, face, 0, 1);
                    }
                    if(matP->vtxMode == 5) {
                        colorIdx = stripPtr[2];
                        GXColor1x16(colorIdx);
                        if(VTX_COLOR(objPtr, colorIdx)->a != 255) {
                            Hu3DObjInfoP->attr |= HU3D_CONST_XLUVERTEX|HU3D_CONST_XLU;
                        }
                    }
                    if(stF) {
                        GXTexCoord1x16(stripPtr[3]);
                    }
                }
                faceCnt = face->strip.count + 1;
                break;
        }
        dlSize = GXEndDisplayList();
        DrawData[drawCnt].dlSize = dlSize;
        DrawData[drawCnt].polyCnt = faceCnt;
        totalSize += dlSize;
        drawCnt++;
        DLBufP = (u8 *) DLBufP + dlSize;
    }
}

#undef VTX_COLOR

static s32 MakeCalcNBT(HSFOBJECT *objPtr, HSFFACE *face, s16 vtx12, s16 vtx3) {
    HuVecF NBT;
    HuVecF *vertex;
    HuVecF *normal;
    HSFS8VEC *s8Normal;
    s16 idx2;
    s16 idx3;
    s16 idx1;

    vertex = objPtr->mesh.vertex->data;
    idx1 = face->indices[vtx12][1];
    idx2 = face->indices[vtx12][0];
    idx3 = face->indices[vtx3][0];
    if(objPtr->mesh.cenvNum != 0) {
        normal = objPtr->mesh.normal->data;
        NBT.x = normal[idx1].x;
        NBT.y = normal[idx1].y;
        NBT.z = normal[idx1].z;
    } else {
        s8Normal = objPtr->mesh.normal->data;
        NBT.x = s8Normal[idx1].x;
        NBT.y = s8Normal[idx1].y;
        NBT.z = s8Normal[idx1].z;
        VECNormalize(&NBT, &NBT);
    }
    NBTB.x = vertex[idx2].x - vertex[idx3].x;
    NBTB.y = vertex[idx2].y - vertex[idx3].y;
    NBTB.z = vertex[idx2].z - vertex[idx3].z;
    VECNormalize(&NBTB, &NBTB);
    VECCrossProduct(&NBTB, &NBT, &NBTT);
    GXPosition3s16(NBT.x * 256.0f, NBT.y * 256.0f, NBT.z * 256.0f);
    GXPosition3s16(NBTB.x * 256.0f, NBTB.y * 256.0f, NBTB.z * 256.0f);
    GXPosition3s16(NBTT.x * 256.0f, NBTT.y * 256.0f, NBTT.z * 256.0f);
}

static s32 MakeNBT(HSFOBJECT *arg0, HSFFACE *arg1, s16 vtx12, s16 vtx3) {
    HuVecF NBT;
    HuVecF *vertex;
    HuVecF *normal;
    HSFS8VEC *s8Normal;
    s16 idx;

    vertex = arg0->mesh.vertex->data;
    idx = arg1->indices[vtx12][1];
    if(arg0->mesh.cenvNum != 0) {
        normal = arg0->mesh.normal->data;
        NBT.x = normal[idx].x;
        NBT.y = normal[idx].y;
        NBT.z = normal[idx].z;
    } else {
        s8Normal = arg0->mesh.normal->data;
        NBT.x = s8Normal[idx].x;
        NBT.y = s8Normal[idx].y;
        NBT.z = s8Normal[idx].z;
        VECNormalize(&NBT, &NBT);
    }
    GXPosition3s16(NBT.x * 256.0f, NBT.y * 256.0f, NBT.z * 256.0f);
    GXPosition3s16(NBTB.x * 256.0f, NBTB.y * 256.0f, NBTB.z * 256.0f);
    GXPosition3s16(NBTT.x * 256.0f, NBTT.y * 256.0f, NBTT.z * 256.0f);
}

static void MDFaceCnt(HSFOBJECT *objPtr, HSFFACE *face) {
    HSFMATERIAL *matP;
    s16 i;

    matP = &objPtr->mesh.material[face->mat & 0xFFF];
    if(matP != materialBak || (polyTypeBak != face->type & 7) || (face->type & 7) == 4) {
        polySize = 4;
        polyTypeBak = face->type & 7;
        materialBak = matP;
        matChgCnt++;
        if(DLFirstF) {
            drawCnt++;
            faceNumBuf[drawCnt] = 0;
            DLTotalNum = ((DLTotalNum + 0x20) & ~0x1F) + 0x20;
        } else {
            DLFirstF = TRUE;
        }
        if(matP->attrNum != 0) {
            polySize += 2;
            for(i=0; i<matP->attrNum; i++) {
                if(objPtr->mesh.attribute[matP->attr[i]].nbtTpLvl != 0.0) {
                    polySize += 0x12;
                }
            }
        }
        if(matP->vtxMode == 5) {
            polySize += 2;
        }
    }
    switch (face->type & 7) {
        case 0:
            OSReport("Error\n");
            break;
        case 1:
            OSReport("Error\n");
            break;
        case 2:
            triCnt++;
            faceNumBuf[drawCnt] += 3;
            DLTotalNum += polySize * 3;
            break;
        case 3:
            triCnt += 2;
            quadCnt++;
            faceNumBuf[drawCnt] += 4;
            DLTotalNum += polySize * 4;
            break;
        case 4:
            triCnt += face->strip.count;
            faceNumBuf[drawCnt] += face->strip.count + 3;
            DLTotalNum += polySize * 3;
            DLTotalNum += polySize * face->strip.count;
            break;
        default:
            OSReport("Error\n");
            break;
    }
}

void mtxTransCat(Mtx mtx, float x, float y, float z)
{
    if(x != 0.0f || y != 0.0f || z != 0.0f) {
        mtx[0][3] += x;
        mtx[1][3] += y;
        mtx[2][3] += z;
    }
}

void mtxRotCat(Mtx mtx, float x, float y, float z)
{
    Mtx temp;

    if(x != 0.0f) {
        PSMTXRotRad(temp, 'X', MTXDegToRad(x));
        PSMTXConcat(temp, mtx, mtx);
    }
    if(y != 0.0f) {
        PSMTXRotRad(temp, 'Y', MTXDegToRad(y));
        PSMTXConcat(temp, mtx, mtx);
    }
    if(z != 0.0f) {
        PSMTXRotRad(temp, 'Z', MTXDegToRad(z));
        PSMTXConcat(temp, mtx, mtx);
    }
}

void mtxRot(Mtx mtx, float x, float y, float z)
{
    Mtx rotY;
    Mtx rotZ;

    if(x != 0.0f) {
        PSMTXRotRad(mtx, 'X', MTXDegToRad(x));
    } else {
        PSMTXIdentity(mtx);
    }
    if(y != 0.0f) {
        PSMTXRotRad(rotY, 'Y', MTXDegToRad(y));
        PSMTXConcat(rotY, mtx, mtx);
    }
    if(z != 0.0f) {
        PSMTXRotRad(rotZ, 'Z', MTXDegToRad(z));
        PSMTXConcat(rotZ, mtx, mtx);
    }
}

void mtxScaleCat(Mtx mtx, float x, float y, float z)
{
    mtx[0][0] *= x;
    mtx[1][0] *= x;
    mtx[2][0] *= x;
    mtx[0][1] *= y;
    mtx[1][1] *= y;
    mtx[2][1] *= y;
    mtx[0][2] *= z;
    mtx[1][2] *= z;
    mtx[2][2] *= z;
}

s16 HmfInverseMtxF3X3(Mtx src, Mtx dst)
{
    float detA;
    float detB;
    float detC;
    float det;

    detA = src[1][1] * src[2][2] - src[2][1] * src[1][2];
    detB = src[2][1] * src[0][2] - src[0][1] * src[2][2];
    detC = src[0][1] * src[1][2] - src[1][1] * src[0][2];
    det = src[0][0] * detA + src[1][0] * detB + src[2][0] * detC;
    if(det == 0.0f) {
        return FALSE;
    }
    det = 1.0f / det;
    dst[0][0] = detA * det;
    dst[0][1] = detB * det;
    dst[0][2] = detC * det;
    dst[1][0] = det * (src[2][0] * src[1][2] - src[1][0] * src[2][2]);
    dst[2][0] = det * (src[1][0] * src[2][1] - src[2][0] * src[1][1]);
    dst[1][1] = det * (src[0][0] * src[2][2] - src[2][0] * src[0][2]);
    dst[2][1] = det * (src[2][0] * src[0][1] - src[0][0] * src[2][1]);
    dst[1][2] = det * (src[1][0] * src[0][2] - src[0][0] * src[1][2]);
    dst[2][2] = det * (src[0][0] * src[1][1] - src[1][0] * src[0][1]);
    dst[0][3] = dst[1][3] = dst[2][3] = 0.0f;
    return TRUE;
}

static void SetDefLightColor(GXLightObj *lightObj, u8 colorR, u8 colorG, u8 colorB, u8 ambR, u8 ambG, u8 ambB, u8 matR, u8 matG, u8 matB)
{
    GXColor color;

    color.r = colorR;
    color.g = colorG;
    color.b = colorB;
    color.a = 255;
    GXInitLightColor(lightObj, color);
    GXLoadLightObjImm(lightObj, GX_LIGHT0);
    color.r = ambR;
    color.g = ambG;
    color.b = ambB;
    GXSetChanAmbColor(GX_COLOR0A0, color);
    color.r = matR;
    color.g = matG;
    color.b = matB;
    GXSetChanMatColor(GX_COLOR0A0, color);
}

void SetDefLight(HuVecF *pos, HuVecF *dir, u8 colorR, u8 colorG, u8 colorB, u8 ambR, u8 ambG, u8 ambB, u8 matR, u8 matG, u8 matB)
{
    GXLightObj lightObj;

    GXInitLightAttn(&lightObj, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    GXInitLightSpot(&lightObj, 20.0f, GX_SP_COS);
    GXInitLightPos(&lightObj, pos->x, pos->y, pos->z);
    GXInitLightDir(&lightObj, dir->x, dir->y, dir->z);
    SetDefLightColor(&lightObj, colorR, colorG, colorB, ambR, ambG, ambB, matR, matG, matB);
}

void Hu3DModelObjPosGet(HU3DMODELID modelId, char *objName, HuVecF *pos)
{
    Mtx mtx;

    Hu3DModelObjMtxGet(modelId, objName, mtx);
    pos->x = mtx[0][3];
    pos->y = mtx[1][3];
    pos->z = mtx[2][3];
    if(PGFinishF == 0) {
        OSReport("Error: Not Found %s forObjPosGet\n", objName);
        pos->x = pos->y = pos->z = 0.0f;
    }
}

void Hu3DModelObjMtxGet(HU3DMODELID modelId, char *objName, Mtx mtx)
{
    HU3DMODEL *modelP;
    HSFDATA *hsf;
    Mtx scale;
    Mtx rot;

    modelP = &Hu3DData[modelId];
    hsf = modelP->hsf;
    mtxRot(rot, modelP->rot.x, modelP->rot.y, modelP->rot.z);
    PSMTXScale(scale, modelP->scale.x, modelP->scale.y, modelP->scale.z);
    PSMTXConcat(rot, scale, MTXBuf[0]);
    mtxTransCat(MTXBuf[0], modelP->pos.x, modelP->pos.y, modelP->pos.z);
    PGMaxPos.x = PGMaxPos.y = PGMaxPos.z = -1000000.0f;
    PGMinPos.x = PGMinPos.y = PGMinPos.z = 1000000.0f;
    MTXIdx = 1;
    CancelTRXF = FALSE;
    PGFinishF = FALSE;
    hookIdx = HU3D_MODELID_NONE;
    PGName = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, 0x200, HU_MEMNUM_OVL);
    strcpy(PGName, MakeObjectName(objName));
    if(modelP->motId != HU3D_MOTID_NONE) {
        attachMotionF = TRUE;
    } else {
        attachMotionF = FALSE;
    }
    PGObjCall(modelP, hsf->root);
    PSMTXCopy(MTXBuf[MTXIdx-1], mtx);
    if(PGFinishF == FALSE && *PGName != '\0') {
        OSReport("Error: Not Found %s forObjPosGet\n", objName);
        PSMTXIdentity(MTXBuf[MTXIdx]);
    }
    HuMemDirectFree(PGName);
}

void PGObjCall(HU3DMODEL *model, HSFOBJECT *object)
{
    switch (object->type) {
        case HSF_OBJ_NULL1:
        case HSF_OBJ_MESH:
        case HSF_OBJ_ROOT:
        case HSF_OBJ_JOINT:
        case HSF_OBJ_NULL2:
        case HSF_OBJ_NULL3:
        case HSF_OBJ_MAP:
            PGObjCalc(model, object);
            break;
        case HSF_OBJ_REPLICA:
            PGObjReplica(model, object);
            break;
    }
}

void PGObjCalc(HU3DMODEL *model, HSFOBJECT *object)
{
    HuVecF pos;
    HU3DMODELID hookIdxOld;
    s16 applyF;
    s16 i;
    
    HSFCONSTDATA *constDataP;
    HSFTRANSFORM *transformP;
    HU3DMODEL *hookMdlP;
    Mtx mtx;
    Mtx rot;

    if(CancelTRXF == FALSE) {
        if(attachMotionF == FALSE) {
            transformP = &object->mesh.base;
        } else {
            transformP = &object->mesh.curr;
        }
        mtxRot(rot, transformP->rot.x, transformP->rot.y, transformP->rot.z);
        PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
        PSMTXConcat(rot, mtx, mtx);
        mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
        PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
        MTXIdx++;
        applyF = TRUE;
    } else {
        CancelTRXF = FALSE;
        applyF = FALSE;
    }
    if(strcmp(PGName, object->name) == 0) {
        PGFinishF = TRUE;
        return;
    }
    constDataP = object->constData;
    if(constDataP && constDataP->hookMdlId != HU3D_MODELID_NONE) {
        hookMdlP = &Hu3DData[constDataP->hookMdlId];
        if(!(hookMdlP->attr & HU3D_ATTR_DISPOFF)) {
            i = attachMotionF;
            if(hookMdlP->motId != HU3D_MOTID_NONE) {
                attachMotionF = TRUE;
            } else {
                attachMotionF = FALSE;
            }
            hookIdxOld = hookIdx;
            hookIdx = constDataP->hookMdlId;
            PSMTXScale(mtx, hookMdlP->scale.x, hookMdlP->scale.y, hookMdlP->scale.z);
            mtxRotCat(mtx, hookMdlP->rot.x, hookMdlP->rot.y, hookMdlP->rot.z);
            mtxTransCat(mtx, hookMdlP->pos.x, hookMdlP->pos.y, hookMdlP->pos.z);
            PSMTXConcat(mtx, hookMdlP->mtx, mtx);
            PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
            MTXIdx++;
            PGObjCall(hookMdlP, hookMdlP->hsf->root);
            MTXIdx--;
            hookIdx = hookIdxOld;
            attachMotionF = i;
        }
    }
    if(*PGName == 0 && object->type == HSF_OBJ_MESH) {
        HSFOBJECT *obj = object;
        PSMTXMultVec(MTXBuf[MTXIdx-1], &obj->mesh.mesh.min, &pos);
        if(pos.x < PGMinPos.x) {
            PGMinPos.x = pos.x;
        }
        if(pos.y < PGMinPos.y) {
            PGMinPos.y = pos.y;
        }
        if(pos.z < PGMinPos.z) {
            PGMinPos.z = pos.z;
        }
        if(pos.x > PGMaxPos.x) {
            PGMaxPos.x = pos.x;
        }
        if(pos.y > PGMaxPos.y) {
            PGMaxPos.y = pos.y;
        }
        if(pos.z > PGMaxPos.z) {
            PGMaxPos.z = pos.z;
        }
        PSMTXMultVec(MTXBuf[MTXIdx-1], &obj->mesh.mesh.max, &pos);
        if(pos.x < PGMinPos.x) {
            PGMinPos.x = pos.x;
        }
        if(pos.y < PGMinPos.y) {
            PGMinPos.y = pos.y;
        }
        if(pos.z < PGMinPos.z) {
            PGMinPos.z = pos.z;
        }
        if(pos.x > PGMaxPos.x) {
            PGMaxPos.x = pos.x;
        }
        if(pos.y > PGMaxPos.y) {
            PGMaxPos.y = pos.y;
        }
        if(pos.z > PGMaxPos.z) {
            PGMaxPos.z = pos.z;
        }
    }
    for(i=0; i<object->mesh.childNum; i++) {
        PGObjCall(model, object->mesh.child[i]);
        if(PGFinishF) {
            return;
        }
    }
    if(applyF) {
        MTXIdx--;
    }
}

void PGObjReplica(HU3DMODEL *model, HSFOBJECT *object)
{
    HSFTRANSFORM *transformP;
    Mtx mtx;
    Mtx rot;

    if(attachMotionF == FALSE) {
        transformP = &object->mesh.base;
    } else {
        transformP = &object->mesh.curr;
    }
    mtxRot(rot, transformP->rot.x, transformP->rot.y, transformP->rot.z);
    PSMTXScale(mtx, transformP->scale.x, transformP->scale.y, transformP->scale.z);
    PSMTXConcat(rot, mtx, mtx);
    mtxTransCat(mtx, transformP->pos.x, transformP->pos.y, transformP->pos.z);
    PSMTXConcat(MTXBuf[MTXIdx-1], mtx, MTXBuf[MTXIdx]);
    MTXIdx++;
    CancelTRXF = TRUE;
    PGObjCall(model, object->mesh.replica);
    if(PGFinishF == FALSE) {
        CancelTRXF = FALSE;
        MTXIdx--;
    }
}

HSFOBJECT *Hu3DObjDuplicate(HSFDATA *hsf, u32 mallocNo)
{
    HSFOBJECT *objBuf;
    HSFOBJECT *srcObj;
    HSFOBJECT *objPtr;
    s16 i;
    s16 j;

    objPtr = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, hsf->objectNum * sizeof(HSFOBJECT), mallocNo);
    objBuf = objPtr;
    srcObj = hsf->object;
    memcpy(objBuf, srcObj, hsf->objectNum * sizeof(HSFOBJECT));
    for(i=0; i<hsf->objectNum; i++, objPtr++, srcObj++) {
        if(objPtr->type != HSF_OBJ_LIGHT && objPtr->type != HSF_OBJ_CAMERA) {
            if(objPtr->type == HSF_OBJ_REPLICA) {
                HSFOBJECT *objReplicaP = objPtr;
                objReplicaP->mesh.replica = (HSFOBJECT*) ((u8 *) objBuf + ((u32)objReplicaP->mesh.replica - (u32)hsf->object));
            }
            if(objPtr->mesh.parent) {
                objPtr->mesh.parent = (HSFOBJECT*) ((u8 *)objBuf + ((u32)srcObj->mesh.parent - (u32)hsf->object));
            }
            objPtr->mesh.child = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, srcObj->mesh.childNum*sizeof(HSFOBJECT *), mallocNo);
            if(srcObj->constData) {
                objPtr->constData = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, sizeof(HSFCONSTDATA), mallocNo);
                memcpy(objPtr->constData, srcObj->constData, sizeof(HSFCONSTDATA));
            }
            for(j = 0; j < srcObj->mesh.childNum; j++) {
                objPtr->mesh.child[j] = (HSFOBJECT*) ((u8 *)objBuf + ((u32)srcObj->mesh.child[j] - (u32)hsf->object));
            }
        }
    }
    return objBuf;
}

HSFATTRIBUTE *Hu3DAttrDuplicate(HSFDATA *hsf, u32 mallocNo)
{
    HSFATTRIBUTE *attrBuf;
    HSFOBJECT *objPtr;
    HSFATTRIBUTE *attrPtr;
    s16 i;
    s16 j;

    attrPtr = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, hsf->attributeNum * sizeof(HSFATTRIBUTE), mallocNo);
    attrBuf = attrPtr;
    
    memcpy(attrBuf, hsf->attribute, hsf->attributeNum * sizeof(HSFATTRIBUTE));
    for(i=0; i<hsf->attributeNum; i++, attrPtr++) {
        if(attrPtr->animWorkP) {
            HU3DATTRANIM *oldWorkP = attrPtr->animWorkP;
            attrPtr->animWorkP = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, sizeof(HU3DATTRANIM), mallocNo);
            memcpy(attrPtr->animWorkP, oldWorkP, sizeof(HU3DATTRANIM));
        }
    }
    objPtr = hsf->object;
    for(i=0; i<hsf->objectNum; i++, objPtr++) {
        if(objPtr->type == HSF_OBJ_MESH) {
            objPtr->mesh.attribute = (HSFATTRIBUTE *) (attrBuf + (objPtr->mesh.attribute - hsf->attribute));
        }
    }
    hsf->attribute = attrBuf;
    return attrBuf;
}

HSFMATERIAL *Hu3DMatDuplicate(HSFDATA *hsf, u32 mallocNo)
{
    HSFMATERIAL *matBuf;
    HSFOBJECT *objPtr;
    HSFMATERIAL *matPtr;
    s16 i;
    s16 j;

    matBuf = matPtr = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, hsf->materialNum * sizeof(HSFMATERIAL), mallocNo);
    
    memcpy(matBuf, hsf->material, hsf->materialNum * sizeof(HSFMATERIAL));
    objPtr = hsf->object;
    for(i=0; i<hsf->objectNum; i++, objPtr++) {
        if(objPtr->type == HSF_OBJ_MESH) {
            objPtr->mesh.material = (HSFMATERIAL *) (matBuf + (objPtr->mesh.material - hsf->material));
        }
    }
    hsf->material = matBuf;
    return matBuf;
}

void Hu3DModelObjDrawInit(void) {
    s16 i;

    GXSetCullMode(GX_CULL_BACK);
    for(i=0; i<8; i++) {
        BmpPtrBak[i] = PTR_INVALID;
    }
    CancelTRXF = FALSE;
    hookIdx = HU3D_MODELID_NONE;
    shadingBak = -1;
    vtxModeBak = -1;
    matHookCallF = FALSE;
    materialBak = PTR_INVALID;
    attachMotionF = FALSE;
}

void Hu3DModelObjDraw(HU3DMODELID modelId, char *objName, Mtx mtx)
{
    HU3DDRAWOBJ drawObj;
    HSFCONSTDATA *constData;
    HSFOBJECT *objPtr;

    drawObj.model = &Hu3DData[modelId];
    drawObj.object = objPtr = Hu3DModelObjPtrGet(modelId, objName);
    constData = objPtr->constData;
    PSMTXCopy(mtx, drawObj.matrix);
    drawObj.scale.x = drawObj.scale.y = drawObj.scale.z = 1.0f;
    ObjDraw(&drawObj);
}

void Hu3DModelObjPtrDraw(HU3DMODELID modelId, HSFOBJECT *objPtr, Mtx mtx)
{
    HU3DDRAWOBJ drawObj;
    HSFCONSTDATA *constData;

    drawObj.model = &Hu3DData[modelId];
    drawObj.object = objPtr;
    constData = objPtr->constData;
    PSMTXCopy(mtx, drawObj.matrix);
    drawObj.scale.x = drawObj.scale.y = drawObj.scale.z = 1.0f;
    ObjDraw(&drawObj);
}
