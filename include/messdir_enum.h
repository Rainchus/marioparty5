#ifndef MESSDIR_ENUM
#define MESSDIR_ENUM

#include "dolphin/types.h"

#define MESSDIR(id) MESS_##id,

enum {
    #include "messdir_table.h"
};

#undef MESSDIR

#define MESSNUM(dir, file) (u32)(((dir) << 16)|(file))

#endif