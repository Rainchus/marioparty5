#include "dolphin.h"
#include "game/gamework.h"

static u8 _Sys_Flag[16];

static u8 *GetFlagPtr(u32 flag)
{
	u8 *ret;
	u32 group = flag >> 16;
	if((flag & 0xFFFF0000) == FLAG_GROUP_SYSTEM) {
		ret = _Sys_Flag;
	} else {
		ret = &GwSystem.flag[group][0];
	}
	return ret;
}

s32 _CheckFlag(u32 flag)
{
	u8 *ptr = GetFlagPtr(flag);
	u16 no = flag;
	return ptr[no/8] & (1 << (no % 8));
}

void _SetFlag(u32 flag)
{
	u8 *ptr = GetFlagPtr(flag);
	u16 no = flag;
	ptr[no/8] |= (1 << (no % 8));
}

void _ClearFlag(u32 flag)
{
	u8 *ptr = GetFlagPtr(flag);
	u16 no = flag;
	ptr[no/8] &= ~(1 << (no % 8));
}

void _InitFlag(void)
{
	memset(_Sys_Flag, 0, sizeof(_Sys_Flag));
}