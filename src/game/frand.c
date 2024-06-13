#include "dolphin.h"

static u32 frand_seed;

s64 OSGetTime(void);

static inline u32 frandom(void)
{
    u32 rand = frand_seed;
    s32 rand2, rand3;

    if (rand == 0) {
        rand = OSGetTime();
        rand ^= 0xD826BC89;
    }

    rand2 = rand / (u32)0x1F31D;
    rand3 = rand - (rand2 * 0x1F31D);
    rand = rand2 * 0xB14;
    rand =  rand - rand3 * 0x41A7;
    return rand;
}

u32 frand(void) {
    return frand_seed = frandom();
}

f32 frandf(void) {
    u32 value = frand();
    f32 ret;
    value &= 0x7FFFFFFF;
    ret = (f32)value/2147483648;
    return ret;
}

u32 frandmod(u32 arg0) {
    u32 ret;
    frand_seed = frandom();
    ret = (frand_seed & 0x7FFFFFFF)%arg0;
    return ret;
}