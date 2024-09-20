#ifndef _DOLPHIN_GXDISPLIST
#define _DOLPHIN_GXDISPLIST

#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void GXBeginDisplayList(void* list, u32 size);
u32 GXEndDisplayList(void);
void GXCallDisplayList(const void* list, u32 nbytes);


static inline void GXFastCallDisplayList(void* list, u32 size)
{
    (*(volatile u8 *)0xCC008000) = 0x40;
    (*(volatile void **)0xCC008000) = list;
    (*(volatile u32 *)0xCC008000)= size;
}

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GXDISPLIST
