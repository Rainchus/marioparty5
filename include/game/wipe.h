#ifndef _GAME_WIPE_H
#define _GAME_WIPE_H

#include "dolphin.h"
#include "game/animdata.h"
#include "game/process.h"

#define WIPE_TYPE_NORMAL 0
#define WIPE_TYPE_CROSS 1
#define WIPE_TYPE_DUMMY 2
#define WIPE_MODE_IN 1
#define WIPE_MODE_OUT 2
#define WIPE_MODE_BLANK 3

typedef struct WipeWork_s {
	void *images[2];
	void *unk08[8];
    float time;
    float maxTime;
    u32 unk30;
	GXColor color;
	volatile u8 type;
    u8 mode;
	u8 stat;
} WIPEWORK;

void WipeInit(void);
void WipeExecAlways(void);
void WipeCreate(s16 mode, s16 type, s16 maxTime);
void WipeColorSet(u8 r, u8 g, u8 b);
u8 WipeStatGet(void);
u8 WipeCheck(void);
u8 WipeCheckEnd(void);

static inline void WipeWait(void)
{
    while(WipeCheckEnd()) {
        HuPrcVSleep();
    }
}

extern WIPEWORK wipeData;
extern BOOL wipeFadeInF;

#endif