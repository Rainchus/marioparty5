#ifndef _BOARD_SHOP_H
#define _BOARD_SHOP_H

#include "dolphin/types.h"

void BoardShopHostSet(s16 arg0);
s16 BoardShopHostGet(void);
void BoardShopInit(void);
void BoardShopKill(void);
void BoardShopExec(s32 player, s32 space);
void BoardShopTutorialExec(s32 arg0);

#endif
