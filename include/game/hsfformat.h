#ifndef _GAME_HSFFORMAT_H
#define _GAME_HSFFORMAT_H

#include "dolphin.h"
#include "humath.h"
#include "game/animdata.h"

//HSF Object types
#define HSF_OBJ_NULL1 0
#define HSF_OBJ_REPLICA 1
#define HSF_OBJ_MESH 2
#define HSF_OBJ_ROOT 3
#define HSF_OBJ_JOINT 4
#define HSF_OBJ_NULL2 5
#define HSF_OBJ_NULL3 6
#define HSF_OBJ_CAMERA 7
#define HSF_OBJ_LIGHT 8
#define HSF_OBJ_MAP 9

//HSF Object Flags
#define HSF_MATERIAL_BBOARD (1 << 0)
#define HSF_MATERIAL_NOCULL (1 << 1)
#define HSF_MATERIAL_SHADOW (1 << 2)
#define HSF_MATERIAL_SHADOWMAP (1 << 3)
#define HSF_MATERIAL_ADDCOL (1 << 4)
#define HSF_MATERIAL_INVCOL (1 << 5)
#define HSF_MATERIAL_HILITE (1 << 8)
#define HSF_MATERIAL_DISABLE_ZWRITE (1 << 9)
#define HSF_MATERIAL_DISPOFF (1 << 10)
#define HSF_MATERIAL_NEAR (1 << 12)
#define HSF_MATERIAL_MATHOOK (1 << 13)

//HSF Track Types
#define HSF_TRACK_TRANSFORM 2
#define HSF_TRACK_MORPH 3
#define HSF_TRACK_CLUSTER 5
#define HSF_TRACK_CLUSTER_WEIGHT 6
#define HSF_TRACK_MATERIAL 9
#define HSF_TRACK_ATTRIBUTE 10

//HSF Channel Types
#define HSF_CHANNEL_LITCOLOR_R 0
#define HSF_CHANNEL_LITCOLOR_G 1
#define HSF_CHANNEL_LITCOLOR_B 2
#define HSF_CHANNEL_POSX 8
#define HSF_CHANNEL_POSY 9
#define HSF_CHANNEL_POSZ 10
#define HSF_CHANNEL_TARGETX 11
#define HSF_CHANNEL_TARGETY 12
#define HSF_CHANNEL_TARGETZ 13
#define HSF_CHANNEL_UPROT 14
#define HSF_CHANNEL_FOV 15
#define HSF_CHANNEL_NEAR 17
#define HSF_CHANNEL_FAR 18

#define HSF_CHANNEL_LOCK 24
#define HSF_CHANNEL_DISPOFF 26
#define HSF_CHANNEL_ROTX 28
#define HSF_CHANNEL_ROTY 29
#define HSF_CHANNEL_ROTZ 30
#define HSF_CHANNEL_SCALEX 31
#define HSF_CHANNEL_SCALEY 32
#define HSF_CHANNEL_SCALEZ 33
#define HSF_CHANNEL_MORPH 40
#define HSF_CHANNEL_LIGHTCOLOR_R 43
#define HSF_CHANNEL_LIGHTCOLOR_G 44
#define HSF_CHANNEL_LIGHTCOLOR_B 45

#define HSF_CHANNEL_COLOR_R 49
#define HSF_CHANNEL_COLOR_G 50
#define HSF_CHANNEL_COLOR_B 51
#define HSF_CHANNEL_SHADOWCOLOR_R 52
#define HSF_CHANNEL_SHADOWCOLOR_G 53
#define HSF_CHANNEL_SHADOWCOLOR_B 54
#define HSF_CHANNEL_INVALPHA 57
#define HSF_CHANNEL_REFALPHA 60
#define HSF_CHANNEL_KCOLOR 62
#define HSF_CHANNEL_NBT_TPLVL 63
#define HSF_CHANNEL_64 64
#define HSF_CHANNEL_BITMAP 67

//HSF Curve Types
#define HSF_CURVE_STEP 0
#define HSF_CURVE_LINEAR 1
#define HSF_CURVE_BEZIER 2
#define HSF_CURVE_BITMAP 3
#define HSF_CURVE_CONST 4

#define HSF_MATERIAL_SETHILITETYPE(matPtr, hiliteType) ((matPtr)->pass = (((matPtr)->pass & 0xF)|(hiliteType)))

#define HSF_MATERIAL_SETPASS(matPtr, passNo) ((matPtr)->pass = (((matPtr)->pass & 0xF0)|(passNo)))
#define HSF_MATERIAL_GETPASS(matPtr, passNo) ((matPtr)->pass & 0xF0)

//HSF Bitmap Formats
#define HSF_BMPFMT_I4 0
#define HSF_BMPFMT_I8 1
#define HSF_BMPFMT_IA4 2
#define HSF_BMPFMT_IA8 3
#define HSF_BMPFMT_RGB565 4
#define HSF_BMPFMT_RGB5A3 5
#define HSF_BMPFMT_RGBA8 6
#define HSF_BMPFMT_CMPR 7
#define HSF_BMPFMT_CI_RGB565 9
#define HSF_BMPFMT_CI_RGB5A3 10
#define HSF_BMPFMT_CI_IA8 11

typedef float HSFCONSTANTKEY[2];
typedef float HSFLINEARKEY[2];
typedef float HSFBEZIERKEY[4];

typedef struct HsfObject_s HSFOBJECT;

typedef struct HsfSection_s {
    s32 ofs;
    s32 num;
} HSFSECTION;

typedef struct hsf_header {
    char magic[8];
    HSFSECTION scene;
    HSFSECTION color;
    HSFSECTION material;
    HSFSECTION attribute;
    HSFSECTION vertex;
    HSFSECTION normal;
    HSFSECTION st;
    HSFSECTION face;
    HSFSECTION object;
    HSFSECTION bitmap;
    HSFSECTION palette;
    HSFSECTION motion;
    HSFSECTION cenv;
    HSFSECTION skeleton;
    HSFSECTION part;
    HSFSECTION cluster;
    HSFSECTION shape;
    HSFSECTION mapAttr;
    HSFSECTION matrix;
    HSFSECTION symbol;
    HSFSECTION string;
} HSFHEADER;

typedef struct HsfScene_s {
    GXFogType fogType;
    float fogStart;
    float fogEnd;
    GXColor fogColor;
} HSFSCENE;

typedef struct HsfBitmap_s {
    char *name;
    u32 maxLod;
    u8 dataFmt;
    u8 pixSize;
    s16 sizeX;
    s16 sizeY;
    s16 palSize;
    GXColor tint;
    void *palData;
    u32 unk;
    void *data;
} HSFBITMAP;

typedef struct HsfPalette_s {
    char *name;
    s32 unk;
    u32 palSize;
    u16 *data;
} HSFPALETTE;

typedef struct HsfAttribute_s {
    char *name;
    void *animWorkP;
    u8 unk8[4];
    float kColor;
    u8 unk10[4];
    float nbtTpLvl;
    u8 unk18[8];
    float unk20;
    u8 unk24[4];
    float unk28;
    float unk2C;
    float unk30;
    float unk34;
    u8 unk38[44];
    u32 wrap_s;
    u32 wrap_t;
    u8 unk6C[12];
    u32 unk78;
    u32 flag;
    HSFBITMAP *bitmap;
} HSFATTRIBUTE;

typedef struct HsfMaterial_s {
    char *name;
    u8 unk4[4];
    u16 pass;
    u8 vtxMode;
    u8 litColor[3];
    u8 color[3];
    u8 shadowColor[3];
    float hilite_scale;
    float unk18;
    float invAlpha;
    float unk20[2];
    float refAlpha;
    float unk2C;
    u32 flags;
    u32 numAttrs;
    s32 *attrs;
} HSFMATERIAL;

typedef struct HsfBuffer_s {
    char *name;
    s32 count;
    void *data;
} HSFBUFFER;

typedef struct HsfFace_s {
    union {
        s16 type;
        u16 typeSrc;
    };
    s16 mat;
    union {
        struct {
            s16 indices[3][4];
            u32 count;
            s16 *data;
        } strip;
        s16 indices[4][4];
    };
    float nbt[3];
} HSFFACE;

typedef struct HsfTransform_s {
    HuVecF pos;
    HuVecF rot;
    HuVecF scale;
} HSFTRANSFORM;

typedef struct HsfCenvSingle_s {
    u32 target;
    u16 pos;
    u16 posNum;
    u16 normal;
    u16 normalNum;
} HSFCENVSINGLE;

typedef struct HsfCenvDualWeight_s {
    float weight;
    u16 pos;
    u16 posNum;
    u16 normal;
    u16 normalNum;
} HSFCENVDUALWEIGHT;

typedef struct HsfCenvDual_s {
    u32 target1;
    u32 target2;
    u32 weightNum;
    HSFCENVDUALWEIGHT *weight;
} HSFCENVDUAL;

typedef struct HsfCenvMultiWeight_s {
    u32 target;
    float value;
} HSFCENVMULTIWEIGHT;

typedef struct HsfCenvMulti_s {
    u32 weightNum;
    u16 pos;
    u16 posNum;
    u16 normal;
    u16 normalNum;
    HSFCENVMULTIWEIGHT *weight;
} HSFCENVMULTI;

typedef struct HsfCenv_s {
    char *name;
    HSFCENVSINGLE *singleData;
    HSFCENVDUAL *dualData;
    HSFCENVMULTI *multiData;
    u32 singleCount;
    u32 dualCount;
    u32 multiCount;
    u32 vtxCount;
    u32 copyCount;
} HSFCENV;

typedef struct HsfPart_s {
    char *name;
    u32 num;
    u16 *vertex;
} HSFPART;

typedef struct HsfCluster_s {
    char *name[2];
    union {
        char *targetName;
        s32 target;
    };
    HSFPART *part;
    float index;
    float weight[32];
    u8 adjusted;
    u8 unk95;
    u16 type;
    u32 vertexNum;
    HSFBUFFER **vertex;
} HSFCLUSTER;

typedef struct HsfShape_s {
    char *name;
    union {
        u16 num16[2];
        u32 vertexNum;
    };
    HSFBUFFER **vertex;
} HSFSHAPE;

typedef struct HsfMesh_s {
    HSFOBJECT *parent;
    u32 childNum;
    HSFOBJECT **child;
    HSFTRANSFORM base;
    HSFTRANSFORM curr;
    union {
        struct {
            HuVecF min;
            HuVecF max;
            float baseMorph;
            float morphWeight[33];
        } mesh;
        HSFOBJECT *replica;
    };
    
    HSFBUFFER *face;
    HSFBUFFER *vertex;
    HSFBUFFER *normal;
    HSFBUFFER *color;
    HSFBUFFER *st;
    HSFMATERIAL *material;
    HSFATTRIBUTE *attribute;
    u8 writeNum;
    u8 unk121;
    u8 shapeType;
    u8 matPass;
    u32 shapeNum;
    HSFBUFFER **shape;
    u32 clusterNum;
    HSFCLUSTER **cluster;
    u32 cenvNum;
    HSFCENV *cenv;
    HuVecF *vtxtop;
    HuVecF *normtop;
} HSFMESH;

typedef struct hsf_camera {
    HuVecF pos;
    HuVecF target;
    float upRot;
    float fov;
    float near;
    float far;
} HSFCAMERA;

typedef struct hsf_light {
    HuVecF pos;
    HuVecF target;
    u8 type;
    u8 r;
    u8 g;
    u8 b;
    float unk2C;
    float refDistance;
    float refBrightness;
    float cutoff;
} HSFLIGHT;

typedef struct HsfObject_s {
    char *name;
    u32 type;
    void *constData;
    u32 flags;
    union {
        HSFMESH mesh;
        HSFCAMERA camera;
        HSFLIGHT light;
    };
} HSFOBJECT;

typedef struct HsfSkeleton_s {
    char *name;
    HSFTRANSFORM transform;
} HSFSKELETON;

typedef struct HsfBitmapKey_s {
    float time;
    HSFBITMAP *data;
} HSFBITMAPKEY;

typedef struct HsfTrack_s {
    u8 type;
    u8 start;
    union {
        u16 target;
        s16 cluster;
    };
    union {
        s32 clusterWeight;
        struct {
            union {
                s16 attrIdx;
                u16 index;
            };
            union {
                u16 channel;
                s16 morphWeight;
            };
        };
    };
    u16 curveType;
    union {
        u16 numKeyframes;
        s16 dataNum;
    };
    
    union {
        float value;
        void *data;
    };
} HSFTRACK;

typedef struct HsfMotion_s {
    char *name;
    s32 numTracks;
    HSFTRACK *track;
    float maxTime;
} HSFMOTION;

typedef struct HsfMapAttr_s {
    float minX;
    float minZ;
    float maxX;
    float maxZ;
    u16 *data;
    u32 dataLen;
} HSFMAPATTR;

typedef struct HsfMatrix_s {
    u32 base_idx;
    u32 count;
    Mtx *data;
} HSFMATRIX;

typedef struct HsfData_s {
    u8 magic[8];
    HSFSCENE *scene;
    HSFATTRIBUTE *attribute;
    HSFMATERIAL *material;
    HSFBUFFER *vertex;
    HSFBUFFER *normal;
    HSFBUFFER *st;
    HSFBUFFER *color;
    HSFBUFFER *face;
    HSFBITMAP *bitmap;
    HSFPALETTE *palette;
    HSFOBJECT *root;
    HSFCENV *cenv;
    HSFSKELETON *skeleton;
    HSFCLUSTER *cluster;
    HSFPART *part;
    HSFSHAPE *shape;
    HSFMOTION *motion;
    HSFOBJECT *object;
    HSFMAPATTR *mapAttr;
    HSFMATRIX *matrix;
    s16 sceneNum;
    s16 attributeNum;
    s16 materialNum;
    s16 vertexNum;
    s16 normalNum;
    s16 stNum;
    s16 colorNum;
    s16 faceNum;
    s16 bitmapNum;
    s16 paletteNum;
    s16 objectNum;
    s16 cenvNum;
    s16 skeletonNum;
    s16 clusterNum;
    s16 partNum;
    s16 shapeNum;
    s16 mapAttrNum;
    s16 motionNum;
    s16 matrixNum;
} HSFDATA;

#endif
