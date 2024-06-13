#ifndef _BOARD_MAPOBJECT_H
#define _BOARD_MAPOBJECT_H

#include "dolphin.h"

typedef struct board_map_object {
	Vec pos;
	Vec rot;
	Vec scale;
	s32 data_num;
} BoardMapObject;

#endif