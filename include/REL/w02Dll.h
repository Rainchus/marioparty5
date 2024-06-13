#ifndef W02DLL
#define W02DLL

#include "math.h"
#include "dolphin.h"
#include "game/process.h"
#include "game/gamework_data.h"
#include "game/board/model.h"
#include "game/board/space.h"
#include "game/board/main.h"
#include "game/board/player.h"
#include "game/board/window.h"
#include "game/board/map_object.h"

extern s16 lbl_1_bss_30[0x10]; // Model List

// main.c
extern void fn_1_770();
extern void fn_1_72C();
extern s32 fn_1_774();
extern s32 fn_1_800();
extern void fn_1_92C();
extern s32 fn_1_1128(); 
extern void fn_1_121C(u32);

// roulette.c
extern void fn_1_D3AC();
extern s32 fn_1_D8C4();
extern void fn_1_DF48();
// unorganized
extern void fn_1_394C(s32);
extern void fn_1_3BF4();
extern void fn_1_39F4();
extern void fn_1_5CF8();
extern void fn_1_5D28();
extern void fn_1_5F90(); 
extern void fn_1_79BC(s16* itemList);
extern void fn_1_8244(s32);
extern void fn_1_9250();
extern void fn_1_93C8(s32 spaceFlag);
extern void fn_1_BC1C();
extern  s32 fn_1_BE88();
extern  s32 fn_1_C108(s32);
extern void fn_1_CD04(s32); 
extern void fn_1_E41C();

#endif   //W02DLL