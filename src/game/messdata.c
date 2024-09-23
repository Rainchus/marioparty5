#include "dolphin.h"

static void *MessData_MesDataGet(void *data, u32 id)
{
    s32 i;
    s32 bankMax;
    u16 *dirTbl;
    u16 dir;
    s32 *messData;
    dir = id >> 16;
    messData = data;
    bankMax = *messData;
    messData++;
    dirTbl = (u16 *)(((u8 *)data)+(*messData));
    for(i=bankMax; i != 0; i--, dirTbl += 2) {
        if(dirTbl[0] == dir) {
            break;
        }
    }
    if(i == 0) {
        return NULL;
    } else {
        messData += dirTbl[1];
        return (((u8 *)data)+(*messData));
    }
}

static void *_MessData_MesPtrGet(void *data, u32 id)
{
    u16 num;
    s32 maxNum;
    s32 *messData;
    
    num = id & 0xFFFF;
    messData = data;
    maxNum = *messData;
    messData++;
    if(maxNum <= num) {
        return NULL;
    } else {
        messData += num;
        return (((u8 *)data)+(*messData));
    }
}

void *MessData_MesPtrGet(void *data, u32 messNum)
{
    void *bank = MessData_MesDataGet(data, messNum);
    if(bank) {
        return _MessData_MesPtrGet(bank, messNum);
    }
    return NULL;
}