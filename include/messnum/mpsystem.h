#ifndef MESSNUM_MPSYSTEM_H
#define MESSNUM_MPSYSTEM_H

#include "messdir_enum.h"

enum {
    MPSYSTEM_FILESEL_CREATEFILE = MESSNUM(MESS_MPSYSTEM, 0),
    MPSYSTEM_CARD_NOCARD = MESSNUM(MESS_MPSYSTEM, 1),
    MPSYSTEM_CARD_FORMAT_CHOICE = MESSNUM(MESS_MPSYSTEM, 2),
    MPSYSTEM_CARD_WRONGDEVICE = MESSNUM(MESS_MPSYSTEM, 3),
    MPSYSTEM_CARD_FATAL_ERROR = MESSNUM(MESS_MPSYSTEM, 4),
    MPSYSTEM_CARD_INSSPACE = MESSNUM(MESS_MPSYSTEM, 5),
    MPSYSTEM_CARD_NOENT = MESSNUM(MESS_MPSYSTEM, 6),
    MPSYSTEM_CARD_CREATEFILE = MESSNUM(MESS_MPSYSTEM, 7),
    MPSYSTEM_SELECTFILE = MESSNUM(MESS_MPSYSTEM, 8),
    MPSYSTEM_NAMEENTER = MESSNUM(MESS_MPSYSTEM, 9),
    MPSYSTEM_CONFIRM = MESSNUM(MESS_MPSYSTEM, 10),
    MPSYSTEM_MES_CARD_WRITE = MESSNUM(MESS_MPSYSTEM, 11),
    MPSYSTEM_CARD_COPY_NOENT = MESSNUM(MESS_MPSYSTEM, 12),
    MPSYSTEM_SELECT_COPY = MESSNUM(MESS_MPSYSTEM, 13),
    MPSYSTEM_CARD_COPY = MESSNUM(MESS_MPSYSTEM, 14),
    MPSYSTEM_CARD_COPY_WARN = MESSNUM(MESS_MPSYSTEM, 15),
    MPSYSTEM_COPY_END = MESSNUM(MESS_MPSYSTEM, 16),
    MPSYSTEM_ERASE_FAIL = MESSNUM(MESS_MPSYSTEM, 17),
    MPSYSTEM_ERASE_SELECT = MESSNUM(MESS_MPSYSTEM, 18),
    MPSYSTEM_ERASE_CONFIRM = MESSNUM(MESS_MPSYSTEM, 19),
    MPSYSTEM_ERASE_CONFIRM_HARD = MESSNUM(MESS_MPSYSTEM, 20),
    MPSYSTEM_CARD_ERASE_WARN = MESSNUM(MESS_MPSYSTEM, 21),
    MPSYSTEM_ERASE_END = MESSNUM(MESS_MPSYSTEM, 22),
    MPSYSTEM_NOSAVE = MESSNUM(MESS_MPSYSTEM, 23),
    MPSYSTEM_NOSAVE_CHOICE = MESSNUM(MESS_MPSYSTEM, 24),
    MPSYSTEM_CARD_FORMAT_UNMOUNT = MESSNUM(MESS_MPSYSTEM, 25),
    MPSYSTEM_CARD_FORMAT = MESSNUM(MESS_MPSYSTEM, 26),
    MPSYSTEM_CARD_FORMAT_WARN = MESSNUM(MESS_MPSYSTEM, 27),
    MPSYSTEM_CARD_FORMAT_ERROR = MESSNUM(MESS_MPSYSTEM, 28),
    MPSYSTEM_CARD_DAMAGE = MESSNUM(MESS_MPSYSTEM, 29),
    MPSYSTEM_CARD_FORMAT_END = MESSNUM(MESS_MPSYSTEM, 30),
    MPSYSTEM_CARD_INSERT = MESSNUM(MESS_MPSYSTEM, 31),
    MPSYSTEM_GOTO_IPL_CARD_WARN = MESSNUM(MESS_MPSYSTEM, 32),
    MPSYSTEM_CARD_INVALID = MESSNUM(MESS_MPSYSTEM, 33),
    MPSYSTEM_CARD_SERIAL_INVALID = MESSNUM(MESS_MPSYSTEM, 34),
    MPSYSTEM_SAVE_BROKEN = MESSNUM(MESS_MPSYSTEM, 35),
    MPSYSTEM_SAVE_REPAIR = MESSNUM(MESS_MPSYSTEM, 36),
    MPSYSTEM_TITLE_RETURN = MESSNUM(MESS_MPSYSTEM, 37),
    MPSYSTEM_CARD_REMOVE = MESSNUM(MESS_MPSYSTEM, 38),
    MPSYSTEM_FILE_CHOICE = MESSNUM(MESS_MPSYSTEM, 39),
    MPSYSTEM_MES_SAVE_COPY = MESSNUM(MESS_MPSYSTEM, 40),
    MPSYSTEM_MES_SAVE_ERASE = MESSNUM(MESS_MPSYSTEM, 41),
    MPSYSTEM_MES_SAVE_SAVE = MESSNUM(MESS_MPSYSTEM, 42),
    MPSYSTEM_MES_SAVE_FORMAT = MESSNUM(MESS_MPSYSTEM, 43),
    MPSYSTEM_FILE_CHOICE_NOCOPY = MESSNUM(MESS_MPSYSTEM, 44),
    MPSYSTEM_FAT_CORRUPT = MESSNUM(MESS_MPSYSTEM, 45),
    MPSYSTEM_DISABLE_SAVE = MESSNUM(MESS_MPSYSTEM, 46),
    MPSYSTEM_CARD_FORMATA = MESSNUM(MESS_MPSYSTEM, 47),
    MPSYSTEM_RETRY = MESSNUM(MESS_MPSYSTEM, 48),
    MPSYSTEM_GOTO_IPL_CARD = MESSNUM(MESS_MPSYSTEM, 49),
    MPSYSTEM_NAME_GAME = MESSNUM(MESS_MPSYSTEM, 50),
    MPSYSTEM_NAME_DEFAULT = MESSNUM(MESS_MPSYSTEM, 51),
    MPSYSTEM_SAVE_SLOT_REPAIR = MESSNUM(MESS_MPSYSTEM, 52),
    MPSYSTEM_CARD_FULL = MESSNUM(MESS_MPSYSTEM, 53),
    MPSYSTEM_CARD_SLOTA = MESSNUM(MESS_MPSYSTEM, 54),
    MPSYSTEM_CARD_SLOTB = MESSNUM(MESS_MPSYSTEM, 55),
    MPSYSTEM_CARD_BOTH = MESSNUM(MESS_MPSYSTEM, 56),
    MPSYSTEM_INVALID_MAGIC = MESSNUM(MESS_MPSYSTEM, 57),
    MPSYSTEM_CARD_REINSERT = MESSNUM(MESS_MPSYSTEM, 58),
};

#endif