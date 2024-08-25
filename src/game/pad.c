#include "dolphin.h"
#include "game/msm.h"
#include "game/main.h"
#include "game/pad.h"

typedef struct PadRumble_s {
    s16 maxTime;
    s16 offTime;
    s16 onTime;
    s16 time;
    s16 numRumble;
} RUMBLEDATA;

static void PadReadVSync(u32 retraceCount);
static void PadADConv(s16 pad, PADStatus *status);

static u32 GlobalCounterOld = -1;

static int padStatErrOld[4];
static RUMBLEDATA rumbleData[4];

u16 HuPadBtn[4];
u16 HuPadBtnDown[4];
u16 HuPadBtnRep[4];
s8 HuPadStkX[4];
s8 HuPadStkY[4];
s8 HuPadSubStkX[4];
s8 HuPadSubStkY[4];
u8 HuPadTrigL[4];
u8 HuPadTrigR[4];
u8 HuPadDStk[4];
u8 HuPadDStkRep[4];
s8 HuPadErr[4];
u16 _PadBtn[4];
u16 _PadBtnDown[4];
static u16 _PadRepCnt[4];
static s8 _PadStkX[4];
static s8 _PadStkY[4];
static s8 _PadSubStkX[4];
static s8 _PadSubStkY[4];
static u8 _PadTrigL[4];
static u8 _PadTrigR[4];
static u8 _PadDStk[4];
static u8 _PadDStkRep[4];
static u8 _PadDStkRepCnt[4];
static u8 _PadDStkRepOld[4];
static s8 _PadErr[4];
static u32 RumbleBit;
static s16 RumbleCounter;
s32 VCounter;

static u32 chanTbl[4] = { PAD_CHAN0_BIT, PAD_CHAN1_BIT, PAD_CHAN2_BIT, PAD_CHAN3_BIT };

extern int HuDvdErrWait;

void HuPadInit(void)
{
    int i;
    BOOL int_level;
    PADSetSpec(PAD_SPEC_5);
    PADInit();
    SISetSamplingRate(0);
    int_level = OSDisableInterrupts();
    VISetPostRetraceCallback(PadReadVSync);
    OSRestoreInterrupts(int_level);
    for(i=0; i<4; i++) {
        padStatErrOld[i] = PAD_ERR_NOT_READY;
    }
    VIWaitForRetrace();
    VIWaitForRetrace();
    HuPadRead();
    for(i=0; i<4; i++) {
        if(_PadErr[i] == PAD_ERR_NONE) {
            PADControlMotor(i, PAD_MOTOR_STOP_HARD);
        }
        rumbleData[i].maxTime = 0;
        _PadRepCnt[i] = 0;
    }
}

void HuPadRead(void)
{
    s16 i;
    for(i=0; i<4; i++) {
        HuPadBtn[i] = _PadBtn[i] & ~(PAD_BUTTON_LEFT | PAD_BUTTON_RIGHT | PAD_BUTTON_UP | PAD_BUTTON_DOWN);
        HuPadBtnDown[i] = _PadBtnDown[i] & ~(PAD_BUTTON_LEFT | PAD_BUTTON_RIGHT | PAD_BUTTON_UP | PAD_BUTTON_DOWN);
        HuPadStkX[i] = _PadStkX[i];
        HuPadStkY[i] = _PadStkY[i];
        HuPadSubStkX[i] = _PadSubStkX[i];
        HuPadSubStkY[i] = _PadSubStkY[i];
        HuPadTrigL[i] = _PadTrigL[i];
        HuPadTrigR[i] = _PadTrigR[i];
        HuPadDStk[i] = _PadDStk[i];
        HuPadDStkRep[i] = _PadDStkRep[i];
        HuPadErr[i] = _PadErr[i];
        _PadBtnDown[i] = 0;
    }
}

static void PadReadVSync(u32 retraceCount)
{
    u32 chan;
    s16 i;
    PADStatus status[4];
    if(!HuDvdErrWait) {
        RumbleBit = PADRead(status);
        PADClampCircle(status);
        chan = 0;
        if(GlobalCounterOld == GlobalCounter) {
             RumbleCounter++;
        } else {
            RumbleCounter = 0;
            GlobalCounterOld = GlobalCounter;
        }
        for(i=0; i<4; i++) {
            PADStatus *curr_status = &status[i];
            RUMBLEDATA *rumble = &rumbleData[i];
            if(padStatErrOld[i] && curr_status->err == PAD_ERR_NONE) {
                PADControlMotor(i, PAD_MOTOR_STOP_HARD);
                rumble->maxTime = 0;
            }
            padStatErrOld[i] = curr_status->err;
            if(curr_status->err != PAD_ERR_NONE) {
                _PadErr[i] = curr_status->err;
                if(curr_status->err != PAD_ERR_TRANSFER && curr_status->err != PAD_ERR_NOT_READY) {
                    chan |= chanTbl[i];
                }
                if(curr_status->err == PAD_ERR_NO_CONTROLLER && SIProbe(i) == 0x88000000) {
                    _PadErr[i] = 0;
                }
                _PadBtnDown[i] = _PadBtn[i] = _PadStkX[i] = _PadStkY[i] = _PadSubStkX[i] = _PadSubStkY[i] = _PadTrigL[i] = _PadTrigR[i] =  _PadDStkRep[i] = _PadDStk[i] =  HuPadBtnRep[i] = 0;
            } else {
                u16 button = curr_status->button;
                if(curr_status->triggerL & 0x80) {
                    button |= PAD_BUTTON_TRIGGER_L;
                }
                if(curr_status->triggerR & 0x80) {
                    button |= PAD_BUTTON_TRIGGER_R;
                }
                if(button && _PadBtn[i] == button) {
                    if(_PadRepCnt[i] > 20) {
                        HuPadBtnRep[i] = button;
                    } else {
                        if(RumbleCounter == 0) {
                            HuPadBtnRep[i] = 0;
                        }
                        _PadRepCnt[i]++;
                    }
                } else {
                    _PadRepCnt[i] = 0;
                    HuPadBtnRep[i] = button;
                }
                PadADConv(i, curr_status);
                _PadBtnDown[i] |= PADButtonDown(_PadBtn[i], button);
                
                if(RumbleCounter == 0 || RumbleCounter > 3) {
                    _PadBtn[i] = button;
                    _PadStkX[i] = curr_status->stickX;
                    _PadStkY[i] = curr_status->stickY;
                    _PadSubStkX[i] = curr_status->substickX;
                    _PadSubStkY[i] = curr_status->substickY;
                    _PadTrigL[i] = curr_status->triggerL;
                    _PadTrigR[i] = curr_status->triggerR;
                    RumbleCounter = 0;
                } else {
                    _PadBtn[i] |= button;
                    _PadStkX[i] |= curr_status->stickX;
                    _PadStkY[i] |= curr_status->stickY;
                    _PadSubStkX[i] |= curr_status->substickX;
                    _PadSubStkY[i] |= curr_status->substickY;
                    _PadTrigL[i] |= curr_status->triggerL;
                    _PadTrigR[i] |= curr_status->triggerR;
                }
                _PadErr[i] = curr_status->err;
                if(rumble->maxTime) {
                    if(rumble->numRumble) {
                        if(rumble->time == 0) {
                            PADControlMotor(i, PAD_MOTOR_RUMBLE);
                        }
                        rumble->numRumble--;
                    } else {
                        s16 time = rumble->time%(rumble->offTime+rumble->onTime);
                        if(time == 0) {
                            PADControlMotor(i, PAD_MOTOR_RUMBLE);
                        } else {
                            if(time == rumble->offTime) {
                                PADControlMotor(i, PAD_MOTOR_STOP);
                            }
                        }
                    }
                    rumble->time++;
                    if(rumble->time > rumble->maxTime) {
                        PADControlMotor(i, PAD_MOTOR_STOP_HARD);
                        rumble->maxTime = 0;
                    }
                }
            }
        }
        if(chan) {
            PADReset(chan);
        }
    }
    msmSysRegularProc();
    VCounter++;
}

static void PadADConv(s16 pad, PADStatus *status)
{
    s16 stickX, stickY;
    s16 spA, sp8;
    spA = 0;
    sp8 = 0;
    stickX = abs(status->stickX);
    stickY = abs(status->stickY);
    _PadDStk[pad] = 0;
    if(stickY > 20) {
        if(status->stickY > 0) {
            _PadDStk[pad] |= PAD_BUTTON_UP;
        } else {
            _PadDStk[pad] |= PAD_BUTTON_DOWN;
        }
    }
    if(stickX > 30) {
        if(status->stickX < 0) {
            _PadDStk[pad] |= PAD_BUTTON_LEFT;
        } else {
            _PadDStk[pad] |= PAD_BUTTON_RIGHT;
        }
    }
    if(stickX+stickY < 20) {
        _PadDStkRepOld[pad]  =0;
    }
    if(_PadDStkRepCnt[pad]) {
        _PadDStkRepCnt[pad]--;
        if(stickX+stickY < 20) {
            _PadDStkRepCnt[pad] = 0;
        }
        if(RumbleCounter == 0) {
            _PadDStkRep[pad] = 0;
        }
        
    } else {
        _PadDStkRep[pad] = _PadDStk[pad];
        if(_PadDStkRep[pad]) {
            if(_PadDStkRepOld[pad] == _PadDStkRep[pad]) {
                _PadDStkRepCnt[pad] = 2;
            } else {
                _PadDStkRepCnt[pad] = 20;
            }
            _PadDStkRepOld[pad] = _PadDStkRep[pad];
        }
    }
}

void HuPadRumbleSet(s16 pad, s16 maxTime, s16 offTime, s16 onTime)
{
    RUMBLEDATA *rumble = &rumbleData[pad];
    if(_PadErr[pad] == PAD_ERR_NONE) {
        rumble->maxTime = maxTime;
        rumble->offTime = offTime;
        rumble->onTime = onTime;
        rumble->time = 0;
        rumble->numRumble = 3;
    }
}

void HuPadRumbleStop(s16 pad)
{
    RUMBLEDATA *rumble = &rumbleData[pad];
    if(_PadErr[pad] == PAD_ERR_NONE) {
        rumble->maxTime = 0;
        PADControlMotor(pad, PAD_MOTOR_STOP_HARD);
    }
}

void HuPadRumbleAllStop(void)
{
    int i;
    for(i=0; i<4; i++) {
        rumbleData[i].maxTime = 0;
        if(_PadErr[i] == PAD_ERR_NONE) {
            PADControlMotor(i, PAD_MOTOR_STOP_HARD);
        }
    }
}

s16 HuPadStatGet(s16 pad)
{
    return _PadErr[pad];
}

u32 HuPadRumbleGet(void)
{
    return RumbleBit;
}