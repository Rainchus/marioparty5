#ifndef DATADIR_ENUM
#define DATADIR_ENUM

#define DATADIR(name) _##name,

enum {
    #include "datadir_table.h"
};

#undef DATADIR

#define DATADIR(name) DATA_##name = (_##name) << 16,

enum {
    #include "datadir_table.h"
};

#undef DATADIR

#define DATANUM(dir, file) ((dir)+(file))

#endif