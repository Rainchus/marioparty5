#include "dolphin/types.h"

#include "game/process.h"
#include "game/object.h"

////// TYPES //////
typedef struct _unkStruct {
    s32 unk0;
    s16 unk4;
    s16 unk6;
    char unk8[0x4];
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    struct _unkStruct6* unk20;
    struct _unkStruct9* unk24;
    struct _unkStruct5* unk28;
    struct _unkStruct8* unk2C[2];
    struct _unkStruct4* unk34;
    struct _unkStruct4* unk38[23];
    s32 unk94;
    Process* unk98;
} unkStruct;

typedef struct _unkStruct2 {
    void** unk0;
    s32 unk4;
    s32 unk8;
} unkStruct2;

typedef struct _unkStruct3 {
    void* unk0;
    struct _unkStruct3* unk4;
    struct _unkStruct3* unk8;
} unkStruct3;

typedef struct _unkStruct4 {
    s32 unk0;
    s32 unk4;
    u8 unk8;
    u8 unk9;
    s16 unkA[2];
    s16 unkE;
    Vec unk10;
    Vec unk1C;
    Vec unk28;
    Vec unk34;
    Vec unk40;
    Vec unk4C;
    f32 unk58;
    f32 unk5C;
    f32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
    s32 unk78;
    s32 unk7C;
    f32 unk80;
    f32 unk84;
    f32 unk88;
    f32 unk8C;
    f32 unk90;
    f32 unk94;
} unkStruct4;

typedef struct _unkStruct5 {
    unkStruct2* unk0;
    Vec unk4;
} unkStruct5;

typedef struct _unkStruct6 {
    struct _unkStruct7* unk0;
    s16 unk4;
    s16 unk6;
    unkStruct4* unk8[21];
    s32 unk5C;
    s32 unk60;
    s32 unk64;
    s32 unk68;
    s32 unk6C;
} unkStruct6;

typedef struct _unkStruct7 {
    struct {
        s8 field00_bit0 : 1;
        s8 field00_bit1 : 1;
        s8 field00_bit2 : 1;
        s8 field00_bit3 : 1;
    };
    s32 unk4;
    s32 unk8;
    s16 unkC[9];
    Vec unk20;
    Vec unk2C;
    Vec unk38;
    f32 unk44;
    u8 unk48;
    f32 unk4C;
    f32 unk50;
} unkStruct7;

typedef struct _unkStruct8 {
    s32 unk0;
    unkStruct6* unk4;
    unkStruct7* unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    unkStruct4* unk2C[3];
    s32 unk38;
    s16 unk3C[2];
    s16 unk40[4];
    Vec unk48;
    Vec unk54;
    f32 unk60;
    u8 unk64;
    u8 unk65;
    u8 unk66;
    u8 unk67;
    s32 unk68;
    s32 unk6C;
    s32 unk70;
    s32 unk74;
    char unk78[0x4];
    s32 unk7C;
    Vec unk80;
    Vec unk8C;
    s32 unk98;
    Vec unk9C;
    Vec unkA8;
    s32 unkB4;
    f32 unkB8;
    f32 unkBC;
    f32 unkC0;
    f32 unkC4;
    s32 unkC8;
} unkStruct8;

typedef struct _unkStruct9 {
    s16 unk0[5];
    s16 unkA[2];
    s16 unkE;
    f32 unk10;
    f32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
} unkStruct9;

typedef struct _unkStruct10 {
    Vec unk0;
    Vec unkC;
    GXColor unk18;
} unkStruct10;

typedef void (*m446Func)(s32);
typedef void (*m446Func1)(unkStruct*);
typedef void (*m446Func4)(unkStruct4*);
typedef void (*m446Func8)(unkStruct8*);

////// BSS //////
// stage.c
extern unkStruct3* lbl_1_bss_A0;
// cursor.c
extern unkStruct3* lbl_1_bss_98;
// camera.c
extern Vec lbl_1_bss_8C;
extern Vec lbl_1_bss_80;
extern f32 lbl_1_bss_7C;
extern Vec lbl_1_bss_70;
extern Vec lbl_1_bss_64;
extern f32 lbl_1_bss_60;
extern Vec lbl_1_bss_54;
extern Vec lbl_1_bss_48;
extern f32 lbl_1_bss_44;
extern f32 lbl_1_bss_40;
extern f32 lbl_1_bss_3C;
extern s32 lbl_1_bss_38;
// player.c
extern unkStruct3* lbl_1_bss_30;
// table.c
extern unkStruct3* lbl_1_bss_28;
// deck.c
extern u32 lbl_1_bss_20;
// card.c
extern unkStruct3* lbl_1_bss_18;
// main.c
extern s32 lbl_1_bss_14;
extern s32 lbl_1_bss_10;
extern Process* lbl_1_bss_C;
extern omObjData* lbl_1_bss_8;
extern s32 lbl_1_bss_4;
extern unkStruct* lbl_1_bss_0;

////// DATA //////
// main.c
extern Vec lbl_1_data_0;
extern Vec lbl_1_data_C;
extern f32 lbl_1_data_18;
extern Vec lbl_1_data_1C;
extern Vec lbl_1_data_28;
extern f32 lbl_1_data_34;
extern Vec lbl_1_data_38[2];
extern Vec lbl_1_data_50[2];
extern f32 lbl_1_data_68[2];
extern s32 lbl_1_data_70[2][2];
extern m446Func1 lbl_1_data_A0[5];
// card.c
extern m446Func4 lbl_1_data_150[3];
// player.c
extern s32 lbl_1_data_228[9];
extern s32 lbl_1_data_24C[9][4];
extern m446Func8 lbl_1_data_2DC[5];
// camera.c
extern Vec lbl_1_data_370;
// cursor.c
extern s32 lbl_1_data_3C8[9];
// stage.c
extern unkStruct10 lbl_1_data_460[3];
extern Vec lbl_1_data_424[5];
extern Vec lbl_1_data_4B4[3];

////// PROTOTYPES //////
// main.c
extern void ModuleProlog(void);
extern void fn_1_13C(omObjData*);
extern unkStruct* m446FlowCreate(void);
extern void fn_1_3FC(unkStruct*);
extern void fn_1_4B4(unkStruct*);
extern void fn_1_53C(unkStruct*);
extern void fn_1_958(unkStruct*);
extern void fn_1_B78(unkStruct*);
extern void fn_1_C0C(unkStruct*);
extern void fn_1_CA0(unkStruct*);
extern s32 fn_1_17FC(unkStruct*);
extern void fn_1_183C(unkStruct*);
extern void fn_1_1874(unkStruct*);
extern void fn_1_18B0(unkStruct*);
extern void fn_1_19D4(void);
// card.c
extern unkStruct2* fn_1_1C64(s32);
extern void fn_1_1CF8(unkStruct2*);
extern s32 fn_1_1D30(unkStruct2*, void*);
extern s32 fn_1_1D6C(unkStruct2*, unkStruct4**);
extern s32 fn_1_1DA8(unkStruct2*, void**);
extern BOOL fn_1_1DDC(unkStruct2*);
extern s32 fn_1_1DEC(unkStruct2*);
extern unkStruct3* fn_1_1DF4(void*);
extern void fn_1_1E5C(unkStruct3*);
extern void fn_1_1E84(unkStruct3**);
extern void fn_1_1EC8(unkStruct3*, unkStruct3*);
extern void fn_1_1F04(unkStruct3*);
extern void fn_1_1F38(u8*, u8*, s32);
extern void fn_1_1F84(u8*, s8, s32);
extern void fn_1_1FC0(u8*, s32);
extern s32 fn_1_1FFC(s8*, s8*, s32);
extern s32 fn_1_2064(void);
extern void fn_1_207C(void);
extern void fn_1_20D4(void);
extern unkStruct4* m446CardCreate(s32);
extern void fn_1_2688(unkStruct4*);
extern void fn_1_272C(unkStruct4*);
extern void fn_1_2794(unkStruct4*);
extern void fn_1_27FC(unkStruct4*, Vec*, s32);
extern void fn_1_2890(unkStruct4*, Vec*, s32, s32);
extern void fn_1_2928(unkStruct4*, Vec*, s32);
extern void fn_1_29B4(unkStruct4*, f32, s32);
extern void fn_1_2A1C(unkStruct4*);
extern void fn_1_2A58(unkStruct4*);
extern void fn_1_2A94(unkStruct4*);
extern void fn_1_2AA8(unkStruct4*);
extern void fn_1_2D94(unkStruct4*);
extern void fn_1_2DA8(unkStruct4*);
extern void fn_1_2EC0(unkStruct4*, s32);
extern void fn_1_2F64(unkStruct4*);
// deck.c
extern unkStruct5* fn_1_3064(void);
extern void fn_1_3180(unkStruct2**);
extern void fn_1_31D8(unkStruct2**, unkStruct4**, s32*, s32);
extern void fn_1_34A0(unkStruct5*, unkStruct4**, s32, s32);
extern s32 m446DeckPushCard(unkStruct5*, unkStruct4*, s32);
extern s32 m446DeckPopCard(unkStruct2**, unkStruct4**);
extern void fn_1_38B0(unkStruct2**);
extern s32 fn_1_38F0(void);
// table.c
extern s32 fn_1_3924(void);
extern void fn_1_393C(void);
extern void fn_1_3994(void);
extern unkStruct6* fn_1_39D0(void);
extern void fn_1_3B4C(unkStruct6*);
extern s32 fn_1_3BF0(unkStruct6*, unkStruct4*, s32);
extern s32 fn_1_3EB4(unkStruct6*, unkStruct4*, s32);
extern s32 fn_1_3FD0(unkStruct6*, s32, unkStruct4**);
extern void fn_1_4000(unkStruct6*, s32);
extern s32 fn_1_4088(unkStruct6*, u8, u8, s32, unkStruct4**, s32);
extern void fn_1_46AC(unkStruct6*);
extern void fn_1_46D0(unkStruct6*);
extern s32 fn_1_4720(unkStruct6*, s32);
extern void fn_1_4798(unkStruct6*);
// player.c
extern s32 fn_1_480C(void);
extern void fn_1_4824(void);
extern void fn_1_487C(void);
extern unkStruct8* m446PlayerCreate(s32, unkStruct6*);
extern void fn_1_509C(unkStruct8*);
extern s32 m446PlayerAppendCard(unkStruct8*, unkStruct4*, s32);
extern s32 m446PlayerRemoveCard(unkStruct8*, unkStruct4*, s32);
extern s32 fn_1_5648(unkStruct8*, s32, unkStruct4**);
extern s32 fn_1_5678(unkStruct8*, unkStruct4**, s32);
extern void fn_1_5B34(unkStruct8*);
extern void fn_1_5B48(unkStruct8*);
extern void fn_1_5C10(unkStruct8*);
extern void fn_1_5C24(unkStruct8*);
extern void fn_1_5CEC(unkStruct8*);
extern void fn_1_5D00(unkStruct8*);
extern void fn_1_5E54(unkStruct8*, s32);
extern void fn_1_6074(unkStruct8*);
extern void fn_1_6264(unkStruct8*, Vec*, s32);
extern void fn_1_62F0(unkStruct8*, Vec*, s32);
extern void fn_1_637C(unkStruct8*, s32);
extern void fn_1_64BC(unkStruct8*, s32, s32);
extern void fn_1_6578(unkStruct8*);
extern void fn_1_6620(unkStruct8*);
// camera.c
extern s32 fn_1_6778(void);
extern void fn_1_68D8(void);
extern void fn_1_68DC(void);
extern void fn_1_6EA0(Vec*);
extern void fn_1_6EC4(Vec*);
extern void fn_1_6EE8(f32);
extern void fn_1_6EF8(Vec*, Vec*, f32*, s32);
extern s32 fn_1_708C(void);
extern void fn_1_709C(void);
// cursor.c
extern s32 fn_1_72E0(void);
extern void fn_1_72F8(void);
extern void fn_1_7350(void);
extern unkStruct7* m446CursorCreate(s32);
extern void fn_1_76E8(unkStruct7*);
extern void fn_1_77C8(unkStruct7*, u8);
extern void fn_1_7884(unkStruct7*);
extern void fn_1_7908(unkStruct7*, Vec*, s32);
extern void fn_1_799C(unkStruct7*);
extern void fn_1_7A38(unkStruct7*);
extern void fn_1_7AB4(unkStruct7*);
// stage.c
extern s32 fn_1_7BF0(void);
extern void fn_1_7C08(void);
extern void fn_1_7C60(void);
extern unkStruct9* m446StageCreate(void);
extern void fn_1_83F0(unkStruct9*);
extern void fn_1_84AC(unkStruct9*);
extern void fn_1_852C(unkStruct9*);
extern void fn_1_860C(unkStruct9*);