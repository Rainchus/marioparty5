#ifndef REL_BOARD_EXECUTOR_H
#define REL_BOARD_EXECUTOR_H

#ifdef __cplusplus
extern "C" {
#endif

#include "dolphin/types.h"

extern s32 _prolog();
extern void _epilog();

typedef void (*VoidFunc)(void);
extern const VoidFunc _ctors[];
extern const VoidFunc _dtors[];

extern void BoardCommonInit(VoidFunc create, VoidFunc destroy);

extern void BoardCreate(void);
extern void BoardDestroy(void);

#ifdef __cplusplus
}
#endif

#endif /* REL_BOARD_EXECUTOR_H */
