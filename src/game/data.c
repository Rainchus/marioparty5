#include "game/data.h"
#include "game/dvd.h"

#include "game/armem.h"
#include "game/process.h"
#include "dolphin/dvd.h"

#define STAT_ID_ARAM 0x10000

#define PTR_OFFSET(ptr, offset) (void *)(((u8 *)(ptr)+(u32)(offset)))
#define DATA_EFF_SIZE(size) (((size)+1) & ~0x1)

static void **HuDataReadMultiSub(DATA_DATANUM *dataNum, BOOL use_num, s32 num);

#define DATA_MAX_READSTAT 128


typedef struct DataDirStat_s {
    char *name;
    s32 fileId;
} DATADIRSTAT;

#define DATADIR(name) { "data/" #name ".bin", -1 },

static DATADIRSTAT DataDirStat[] = {
    #include "datadir_table.h"
    { NULL, -1 }
};

#undef DATADIR

u32 DirDataSize;
static u32 DataDirMax;
static s32 shortAccessSleep;
static HUDATASTAT ATTRIBUTE_ALIGN(32) ReadDataStat[DATA_MAX_READSTAT];

void HuDataInit(void)
{
    s32 i = 0;
    DATADIRSTAT *dirStat = DataDirStat;
    HUDATASTAT *readStat;
    while(dirStat->name) {
        if((dirStat->fileId = DVDConvertPathToEntrynum(dirStat->name)) == -1) {
            OSReport("data.c: Data File Error(%s)\n", dirStat->name);
            OSPanic("data.c", 66, "\n");
        }
        i++;
        dirStat++;
    }
    DataDirMax = i;
    for(i=0, readStat = ReadDataStat; i<DATA_MAX_READSTAT; i++, readStat++) {
        readStat->dirId = -1;
        readStat->used = FALSE;
        readStat->status = 0;
    }
}

static s32 HuDataReadStatusGet(void)
{
    s32 i;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].dirId == -1) {
            break;
        }
    }
    if(i >= DATA_MAX_READSTAT) {
        i = -1;
    }
    return i;
}

s32 HuDataReadChk(DATA_DATANUM dirNum)
{
    s32 i;
    dirNum >>= 16;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].dirId == dirNum && ReadDataStat[i].status != 1) {
            break;
        }
    }
    if(i >= DATA_MAX_READSTAT) {
        i = -1;
    }
    return i;
}

HUDATASTAT *HuDataGetStatus(void *dirP)
{
    s32 i;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].dirP == dirP) {
            break;
        }
    }
    if(i > DATA_MAX_READSTAT) {
        return NULL;
    }
    return &ReadDataStat[i];
}

void *HuDataGetDirPtr(DATA_DATANUM dirNum)
{
    s32 statId = HuDataReadChk(dirNum);
    if(statId < 0) {
        return NULL;
    }
    return ReadDataStat[statId].dirP;
}

HUDATASTAT *HuDataDirRead(DATA_DATANUM dataNum)
{
    HUDATASTAT *readStat;
    s32 statId;
    s32 dirId;
    dirId  = dataNum >> 16;
    if(DataDirMax <= dirId) {
        OSReport("data.c: Data Number Error(%d)\n", dataNum);
        return NULL;
    }
    
    if((statId = HuDataReadChk(dataNum)) < 0) {
        AMEM_PTR dirAMemP;
        if(dirAMemP = HuARDirCheck(dataNum)) {
            HuAR_ARAMtoMRAM(dirAMemP);
            while(HuARDMACheck());
            statId = HuDataReadChk(dataNum);
            readStat = &ReadDataStat[statId];
        } else {
            if((statId = HuDataReadStatusGet()) == -1) {
                OSReport("data.c: Data Work Max Error\n");
                return NULL;
            }
            readStat = &ReadDataStat[statId];
            readStat->dirP = HuDvdDataFastRead(DataDirStat[dirId].fileId);
            if(readStat->dirP) {
                readStat->dirId = dirId;
            }
        }
    } else {
        readStat = &ReadDataStat[statId];
        DirDataSize = readStat->dvdFile.length;
    }
    return readStat;
}

static HUDATASTAT *HuDataDirReadNum(DATA_DATANUM dataNum, s32 num)
{
    HUDATASTAT *readStat;
    s32 statId;
    s32 dirId;
    dirId  = dataNum >> 16;
    if(DataDirMax <= dirId) {
        OSReport("data.c: Data Number Error(%d)\n", dataNum);
        return NULL;
    }
    
    if((statId = HuDataReadChk(dataNum)) < 0) {
        AMEM_PTR dirAMemP;
        if((dirAMemP = HuARDirCheck(dataNum))) {
            OSReport("ARAM data num %x\n", dataNum);
            HuAR_ARAMtoMRAMNum(dirAMemP, num);
            while(HuARDMACheck());
            statId = HuDataReadChk(dataNum);
            readStat = &ReadDataStat[statId];
            readStat->used = TRUE;
            readStat->num = num;
        } else {
            OSReport("data num %x\n", dataNum);
            if((statId = HuDataReadStatusGet()) == -1) {
                OSReport("data.c: Data Work Max Error\n");
                return NULL;
            }
            readStat = &ReadDataStat[statId];
            readStat->dirP = HuDvdDataFastReadNum(DataDirStat[dirId].fileId, num);
            if(readStat->dirP) {
                readStat->dirId = dirId;
                readStat->used = TRUE;
                readStat->num = num;
            }
        }
    } else {
        readStat = &ReadDataStat[statId];
    }
    return readStat;
}

HUDATASTAT *HuDataDirSet(void *dirP, DATA_DATANUM dataNum)
{
    HUDATASTAT *readStat = HuDataGetStatus(dirP);
    s32 statId;
    if((statId = HuDataReadChk(readStat->dirId << 16)) >= 0) {
        HuDataDirClose(dataNum);
    }
    if((statId = HuDataReadStatusGet()) == -1) {
        OSReport("data.c: Data Work Max Error\n");
        return NULL;
    } else {
        readStat = &ReadDataStat[statId];
        readStat->dirP = dirP;
        readStat->dirId = dataNum >>16;
        return readStat;
    }
}

void HuDataDirReadAsyncCallBack(s32 result, DVDFileInfo* fileInfo)
{
    HUDATASTAT *readStat;
    s32 i;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].status == 1 && ReadDataStat[i].dvdFile.startAddr == fileInfo->startAddr) {
            break;
        }
    }
    if(i >= DATA_MAX_READSTAT) {
        OSPanic("data.c", 361, "dvd.c AsyncCallBack Error");
    }
    readStat = &ReadDataStat[i];
    if(result == DVD_RESULT_CANCELED) {
        DVDClose(&readStat->dvdFile);
        readStat->status = 0;
        return;
    }
    readStat->readOfs += HU_DVD_BLOCKSIZE;
    if(readStat->readLen > readStat->readOfs) {
        u32 readSize = readStat->readLen-readStat->readOfs;
        if(readSize > HU_DVD_BLOCKSIZE) {
            readSize = HU_DVD_BLOCKSIZE;
        }
        DVDReadAsyncPrio(fileInfo, ((u8 *)readStat->dirP)+readStat->readOfs, OSRoundUp32B(readSize), readStat->readOfs, HuDataDirReadAsyncCallBack, 3);
    } else {
        readStat->status = 0;
        DVDClose(&readStat->dvdFile);
    }
}

void HuDataDirCancel(s16 statId)
{
    s32 ret = DVDCancel(&ReadDataStat[statId].dvdFile.cb);
    while(ReadDataStat[statId].status);
    HuDataDirClose(ReadDataStat[statId].dirId << 16);
}

void HuDataDirCancelAsync(s16 statId)
{
    DVDCancelAsync(&ReadDataStat[statId].dvdFile.cb, NULL);
}

BOOL HuDataDirCloseAsync(s16 statId)
{
    if(ReadDataStat[statId].status) {
        return FALSE;
    }
    HuDataDirClose(ReadDataStat[statId].dirId << 16);
    return TRUE;
}


s32 HuDataDirReadAsync(DATA_DATANUM dataNum)
{
    HUDATASTAT *readStat;
    s32 statId;
    s32 dirId;
    dirId  = dataNum >> 16;
    if(DataDirMax <= dirId) {
        OSReport("data.c: Data Number Error(%d)\n", dataNum);
        return -1;
    }
    if((statId = HuDataReadChk(dataNum)) < 0) {
        AMEM_PTR dirAMemP;
        if(dirAMemP = HuARDirCheck(dataNum)) {
            OSReport("ARAM data num %x\n", dataNum);
            HuAR_ARAMtoMRAM(dirAMemP);
            statId = STAT_ID_ARAM;
        } else {
            statId = HuDataReadStatusGet();
            if(statId == -1) {
                OSReport("data.c: Data Work Max Error\n");
                return -1;
            }
            readStat = &ReadDataStat[statId];
            readStat->status = 1;
            readStat->dirId = dirId;
            readStat->dirP = HuDvdDataFastReadAsync(DataDirStat[dirId].fileId, readStat);
        }
    } else {
        statId = -1;
    }
    return statId;
}

s32 HuDataDirReadNumAsync(DATA_DATANUM dataNum, s32 num)
{
    HUDATASTAT *readStat;
    s32 statId;
    s32 dirId;
    dirId  = dataNum >> 16;
    if(DataDirMax <= dirId) {
        OSReport("data.c: Data Number Error(%d)\n", dataNum);
        return -1;
    }
    if((statId = HuDataReadChk(dataNum)) < 0) {
        if((statId = HuDataReadStatusGet()) == -1) {
            OSReport("data.c: Data Work Max Error\n");
            return -1;
        }
        ReadDataStat[statId].status = TRUE;
        ReadDataStat[statId].dirId = dirId;
        readStat = &ReadDataStat[statId];
        readStat->used = TRUE;
        readStat->num = num;
        readStat->dirP = HuDvdDataFastReadAsync(DataDirStat[dirId].fileId, readStat);
    } else {
        statId = -1;
    }
    return statId;
}

BOOL HuDataGetAsyncStat(s32 statId)
{
    if(statId == STAT_ID_ARAM) {
        return HuARDMACheck() == 0;
    } else {
        return ReadDataStat[statId].status == 0;
    }
}

static void GetFileInfo(HUDATASTAT *readStat, s32 fileNum)
{
    u32 *ptr;
    ptr = (u32 *)PTR_OFFSET(readStat->dirP, (fileNum * 4))+1;
    readStat->fileDataP = PTR_OFFSET(readStat->dirP, *ptr);
    ptr = readStat->fileDataP;
    readStat->rawLen = *ptr++;
    readStat->decodeType = *ptr++;
    readStat->fileDataP = ptr;
}

void *HuDataRead(DATA_DATANUM dataNum)
{
    HUDATASTAT *readStat;
    s32 statId;
    void *buf;
    if(!HuDataDirRead(dataNum)) {
        return NULL;
    }
    if((statId = HuDataReadChk(dataNum)) == -1) {
        return NULL;
    }
    readStat = &ReadDataStat[statId];
    GetFileInfo(readStat, dataNum & 0xFFFF);
    buf = HuMemDirectMalloc(0, DATA_EFF_SIZE(readStat->rawLen));
    if(buf) {
        HuDecodeData(readStat->fileDataP, buf, readStat->rawLen, readStat->decodeType);
    }
    return buf;
}

void *HuDataReadNum(DATA_DATANUM dataNum, s32 num)
{
    HUDATASTAT *readStat;
    s32 statId;
    void *buf;
    if(!HuDataDirReadNum(dataNum, num)) {
        return NULL;
    }
    if((statId = HuDataReadChk(dataNum)) == -1) {
        return NULL;
    }
    readStat = &ReadDataStat[statId];
    GetFileInfo(readStat, dataNum & 0xFFFF);
    buf = HuMemDirectMallocNum(0, DATA_EFF_SIZE(readStat->rawLen), num);
    if(buf) {
        HuDecodeData(readStat->fileDataP, buf, readStat->rawLen, readStat->decodeType);
    }
    return buf;
}

void *HuDataSelHeapRead(DATA_DATANUM dataNum, HUHEAPTYPE heap)
{
    HUDATASTAT *readStat;
    s32 statId;
    void *buf;
    if(!HuDataDirRead(dataNum)) {
        return NULL;
    }
    if((statId = HuDataReadChk(dataNum)) == -1) {
        return NULL;
    }
    readStat = &ReadDataStat[statId];
    GetFileInfo(readStat, dataNum & 0xFFFF);
    switch(heap) {
        case HUHEAPTYPE_SOUND:
            buf = HuMemDirectMalloc(HUHEAPTYPE_SOUND, DATA_EFF_SIZE(readStat->rawLen));
            break;
            
        case HUHEAPTYPE_MODEL:
            buf = HuMemDirectMalloc(HUHEAPTYPE_MODEL, DATA_EFF_SIZE(readStat->rawLen));
            break;
            
        case HUHEAPTYPE_DVD:
            buf = HuMemDirectMalloc(HUHEAPTYPE_DVD, DATA_EFF_SIZE(readStat->rawLen));
            break;
            
        default:
            buf = HuMemDirectMalloc(HUHEAPTYPE_HEAP, DATA_EFF_SIZE(readStat->rawLen));
            break;
    }
    if(buf) {
        HuDecodeData(readStat->fileDataP, buf, readStat->rawLen, readStat->decodeType);
    }
    return buf;
}

void *HuDataSelHeapReadNum(DATA_DATANUM dataNum, s32 num, HUHEAPTYPE heap)
{
    HUDATASTAT *readStat;
    s32 statId;
    void *buf;
    if(!HuDataDirReadNum(dataNum, num)) {
        return NULL;
    }
    if((statId = HuDataReadChk(dataNum)) == -1) {
        return NULL;
    }
    readStat = &ReadDataStat[statId];
    GetFileInfo(readStat, dataNum & 0xFFFF);
    switch(heap) {
        case HUHEAPTYPE_SOUND:
            buf = HuMemDirectMalloc(HUHEAPTYPE_SOUND, DATA_EFF_SIZE(readStat->rawLen));
            break;
            
        case HUHEAPTYPE_MODEL:
            buf = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, DATA_EFF_SIZE(readStat->rawLen), num);
            break;
            
        case HUHEAPTYPE_DVD:
            buf = HuMemDirectMallocNum(HUHEAPTYPE_DVD, DATA_EFF_SIZE(readStat->rawLen), num);
            break;
            
        default:
            buf = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, DATA_EFF_SIZE(readStat->rawLen), num);
            break;
    }
    if(buf) {
        HuDecodeData(readStat->fileDataP, buf, readStat->rawLen, readStat->decodeType);
    }
    return buf;
}

void **HuDataReadMulti(DATA_DATANUM *dataNum)
{
    return HuDataReadMultiSub(dataNum, FALSE, 0);
}

static void **HuDataReadMultiSub(DATA_DATANUM *dataNum, BOOL use_num, s32 num)
{
    s32 *dirIds;
    char **pathTbl;
    void **dirP;
    void **outList;
    s32 i, count, numFiles;
    u32 dirId;
    for(i=0, count=0; dataNum[i] != -1; i++) {
        dirId = dataNum[i] >> 16;
        if(DataDirMax <= dirId) {
            OSReport("data.c: Data Number Error(%d)\n", dataNum[i]);
            return NULL;
        }
        if(HuDataReadChk(dataNum[i]) < 0) {
            count++;
        }
    }
    numFiles = i;
    dirIds = HuMemDirectMalloc(HUHEAPTYPE_HEAP, (count+1)*sizeof(s32));
    for(i=0; i<count+1; i++) {
        dirIds[i] = -1;
    }
    pathTbl = HuMemDirectMalloc(HUHEAPTYPE_HEAP, (count+1)*sizeof(char *));
    for(i=0, count=0; dataNum[i] != -1; i++) {
        dirId = dataNum[i] >> 16;
        if(HuDataReadChk(dataNum[i]) < 0) {
            s32 j;
            for(j=0; dirIds[j] != -1; j++) {
                if(dirIds[j] == dirId){
                    break;
                }
            }
            if(dirIds[j] == -1) {
                dirIds[j] = dirId;
                pathTbl[count++] = DataDirStat[dirId].name;
            }
        }
    }
    dirP = HuDvdDataReadMulti(pathTbl);
    for(i=0; dirIds[i] != -1; i++) {
        s32 statId;
        if((statId = HuDataReadStatusGet()) == -1) {
            OSReport("data.c: Data Work Max Error\n");
            (void)count; //HACK to match HuDataReadMultiSub
            HuMemDirectFree(dirIds);
            HuMemDirectFree(pathTbl);
            return NULL;
        } else {
            ReadDataStat[statId].dirP = dirP[i];
            ReadDataStat[statId].dirId = dirIds[i];
        }
    }
    HuMemDirectFree(dirIds);
    HuMemDirectFree(pathTbl);
    HuMemDirectFree(dirP);
    if(use_num) {
        outList = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, (numFiles+1)*sizeof(void *), num);
    } else {
        outList = HuMemDirectMalloc(HUHEAPTYPE_HEAP, (numFiles+1)*sizeof(void *));
    }
    for(i=0; dataNum[i] != -1; i++) {
        if(use_num) {
            outList[i] = HuDataReadNum(dataNum[i], num);
        } else {
            outList[i] = HuDataRead(dataNum[i]);
        }
    }
    outList[i] = NULL;
    return outList;
}

s32 HuDataGetSize(DATA_DATANUM dataNum)
{
    HUDATASTAT *readStat;
    s32 statId;
    if((statId = HuDataReadChk(dataNum)) == -1) {
        return -1;
    }
    readStat = &ReadDataStat[statId];
    GetFileInfo(readStat, dataNum & 0xFFFF);
    return DATA_EFF_SIZE(readStat->rawLen);
}

void HuDataClose(void *ptr)
{
    if(ptr) {
        HuMemDirectFree(ptr);
    }
}

void HuDataCloseMulti(void **ptrs)
{
    s32 i;
    for(i=0; ptrs[i]; i++) {
        void *ptr = ptrs[i];
        if(ptr) {
            HuMemDirectFree(ptr);
        }
    }
    if(ptrs) {
        HuMemDirectFree(ptrs);
    }
}

void HuDataDirClose(s32 dataNum)
{
    HUDATASTAT *readStat;
    s32 i;
    s32 dirId = dataNum >> 16;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].dirId == dirId) {
            break;
        }
    }
    if(i >= DATA_MAX_READSTAT) {
        return;
    }
    readStat = &ReadDataStat[i];
    if(readStat->status == 1) {
        DVDCancel(&ReadDataStat[i].dvdFile.cb);
        while(ReadDataStat[i].status);
    }
    readStat->dirId = -1;
    HuDvdDataClose(readStat->dirP);
    readStat->dirP = NULL;
    readStat->used = FALSE;
    readStat->status = 0;
}

void HuDataDirCloseNum(s32 num)
{
    s32 i;
    for(i=0; i<DATA_MAX_READSTAT; i++) {
        if(ReadDataStat[i].used == TRUE && ReadDataStat[i].num == num) {
            HuDataDirClose(ReadDataStat[i].dirId << 16);
        }
    }
}

static s32 HuDataDVDdirDirectOpen(DATA_DATANUM dataNum, DVDFileInfo *fileInfo)
{
	s32 dir = dataNum >> 16;
	if(dir >= (s32)DataDirMax) {
		OSReport("data.c: Data Number Error(0x%08x)\n", dataNum);
		return 0;
	}
	if(!DVDFastOpen(DataDirStat[dir].fileId, fileInfo)) {
		char panic_str[48];
		sprintf(panic_str, "HuDataDVDdirDirectOpen: File Open Error(%08x)", dataNum);
		OSPanic("data.c", 958, panic_str);
	}
	return 1;
}

static s32 HuDataDVDdirDirectRead(DVDFileInfo *fileInfo, void *dest, s32 len, s32 offset)
{
	s32 result = DVDReadAsync(fileInfo, dest, len, offset, NULL);
	if(result != 1) {
		OSPanic("data.c", 967, "HuDataDVDdirDirectRead: File Read Error");
	}
	while(DVDGetCommandBlockStatus(&fileInfo->cb)) {
		if(shortAccessSleep) {
			HuPrcVSleep();
		}
	}
	return result;
}

static void *HuDataDecodeIt(void *bufP, s32 bufOfs, s32 num, HUHEAPTYPE heap)
{
	void *dataStart;
	s32 *buf;
	s32 rawLen, decodeType;
	
	void *dest;
	buf =  (s32 *)((u8 *)bufP+bufOfs);
	if((u32)buf & 0x3) {
		u8 *data = (u8 *)buf;
		rawLen = *data++ << 24;
		rawLen += *data++ << 16;
		rawLen += *data++ << 8;
		rawLen += *data++;
		decodeType = *data++ << 24;
		decodeType += *data++ << 16;
		decodeType += *data++ << 8;
		decodeType += *data++;
		dataStart = data;
	} else {
		s32 *data = buf;
		rawLen = *data++;
		decodeType = *data++;
		dataStart = data;
	}
	switch(heap) {
        case HUHEAPTYPE_SOUND:
            dest = HuMemDirectMalloc(HUHEAPTYPE_SOUND, DATA_EFF_SIZE(rawLen));
            break;
            
        case HUHEAPTYPE_MODEL:
            dest = HuMemDirectMallocNum(HUHEAPTYPE_MODEL, DATA_EFF_SIZE(rawLen), num);
            break;
            
        case HUHEAPTYPE_DVD:
            dest = HuMemDirectMallocNum(HUHEAPTYPE_DVD, DATA_EFF_SIZE(rawLen), num);
            break;
            
        default:
            dest = HuMemDirectMallocNum(HUHEAPTYPE_HEAP, DATA_EFF_SIZE(rawLen), num);
            break;
    }
    if(dest) {
        HuDecodeData(dataStart, dest, rawLen, decodeType);
    }
    return dest;
}

void *HuDataReadNumHeapShortForce(DATA_DATANUM dataNum, s32 num, HUHEAPTYPE heap)
{
	DVDFileInfo fileInfo;
	s32 *data_hdr;
	s32 *file_data;
	void *file_raw_buf;
	s32 read_len;
	s32 fileId;
	s32 file_ofs;
	s32 read_ofs;
	s32 data_ofs;
	void *ret;
	s32 dir;
	s32 data_len;
	s32 file_max;

	if(!HuDataDVDdirDirectOpen(dataNum, &fileInfo)) {
		return NULL;
	}
	dir = (dataNum >> 16) & 0xFFFF0000;
	fileId = dataNum & 0xFFFF;
	file_ofs = (fileId*4)+4;
	data_len = OSRoundUp32B(file_ofs+8);
	file_data = HuMemDirectMalloc(HUHEAPTYPE_HEAP, data_len);
	if(!HuDataDVDdirDirectRead(&fileInfo, file_data, data_len, 0)) {
		HuMemDirectFree(file_data);
		DVDClose(&fileInfo);
		return NULL;
	}
	file_max = *file_data;
	if(file_max <= fileId) {
		HuMemDirectFree(file_data);
		OSReport("data.c%d: Data Number Error(0x%08x)\n", 1068, dataNum);
		DVDClose(&fileInfo);
		return NULL;
	}
	data_hdr = file_data;
	data_hdr += fileId+1;
	file_ofs = *data_hdr;
	read_ofs = OSRoundDown32B(file_ofs);
	if(file_max <= fileId+1) {
		read_len = fileInfo.length;
		data_ofs = read_len-read_ofs;
	} else {
		data_hdr++;
		data_ofs = (*data_hdr)-read_ofs;
		read_len = fileInfo.length;
	}
	read_len = OSRoundUp32B(data_ofs);
	HuMemDirectFree(file_data);
	file_raw_buf = HuMemDirectMalloc(HUHEAPTYPE_HEAP, (read_len+4) & ~0x3);
	if(file_raw_buf == NULL) {
		OSReport("data.c: couldn't allocate read buffer(0x%08x)\n", dataNum);
		DVDClose(&fileInfo);
		return NULL;
	}
	if(!HuDataDVDdirDirectRead(&fileInfo, file_raw_buf, read_len, read_ofs)) {
		HuMemDirectFree(file_raw_buf);
		DVDClose(&fileInfo);
		return NULL;
	}
	DVDClose(&fileInfo);
	data_ofs = file_ofs-read_ofs;
	ret = HuDataDecodeIt(file_raw_buf, data_ofs, num, heap);
	HuMemDirectFree(file_raw_buf);
    return ret;
}

char lbl_8011FDA6[] = "** dcnt %d tmp %08x sp1 %08x\n";
char lbl_8011FDC4[] = "** dcnt %d lastNum %08x\n";