#ifndef DATADIR_ENUM
#define DATADIR_ENUM

#define DATADIR_DEFINE(name, path) DATADIR_ID_##name,

enum {
    #include "datadir_table.h"
    DATADIR_ID_MAX
};

#undef DATADIR_DEFINE

#define DATADIR_DEFINE(name, path) DATADIR_##name = (DATADIR_ID_##name) << 16,

enum {
    #include "datadir_table.h"
};

#undef DATADIR_DEFINE

#define DATA_MAKE_NUM(dir, file) ((dir)+(file))

#endif