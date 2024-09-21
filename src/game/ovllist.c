#include "game/object.h"

#define DLL(name) { "dll/" #name ".rel", 0 },

OVLTBL _ovltbl[] = {
    #include "ovl_table.h"
    { NULL, -1 }
};

#undef DLL