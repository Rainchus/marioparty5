.include "include/macros.s"

.section .sdata, "wa"  # 0x80288000 - 0x802885A0 ; 0x000005A0


.global lbl_80288000
lbl_80288000:

	# ROM: 0x1D50A0
	.asciz "USR0"

.global lbl_80288005
lbl_80288005:

	# ROM: 0x1D50A5
	.byte 0x55, 0x53, 0x52
	.4byte 0x31000000

.global lbl_8028800C
lbl_8028800C:

	# ROM: 0x1D50AC
	.4byte 0x0000D9ED

.global lbl_80288010
lbl_80288010:

	# ROM: 0x1D50B0
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80288018
lbl_80288018:

	# ROM: 0x1D50B8
	.asciz "dvd.c"

.global lbl_8028801E
lbl_8028801E:

	# ROM: 0x1D50BE
	.2byte 0x0A00

.global lbl_80288020
lbl_80288020:

	# ROM: 0x1D50C0
	.asciz "data.c"

.global lbl_80288027
lbl_80288027:

	# ROM: 0x1D50C7
	.byte 0x0A
	.4byte 0
	.4byte 0

.global lbl_80288030
lbl_80288030:

	# ROM: 0x1D50D0
	.asciz "1.1.4"
	.balign 4

.global lbl_80288038
lbl_80288038:

	# ROM: 0x1D50D8
	.4byte 0x00000001

.global lbl_8028803C
lbl_8028803C:

	# ROM: 0x1D50DC
	.asciz "init.c"

.global lbl_80288043
lbl_80288043:

	# ROM: 0x1D50E3
	.byte 0x25
	.byte 0x44, 0x0A, 0x00

.global lbl_80288047
lbl_80288047:

	# ROM: 0x1D50E7
	.byte 0x6C
	.asciz "oop\n"
	.balign 4

.global lbl_80288050
lbl_80288050:

	# ROM: 0x1D50F0
	.2byte 0x0A00

.global lbl_80288052
lbl_80288052:

	# ROM: 0x1D50F2
	.byte 0x42, 0x4D
	.asciz "P%d:\n"
	.balign 4
	.4byte 0

.global lbl_80288060
lbl_80288060:

	# ROM: 0x1D5100
	.2byte 0x0001

.global lbl_80288062
lbl_80288062:

	# ROM: 0x1D5102
	.byte 0xFF, 0xFF
	.byte 0x00, 0x00

.global lbl_80288066
lbl_80288066:

	# ROM: 0x1D5106
	.balign 4
	.byte 0xFF, 0xFF

.global lbl_8028806A
lbl_8028806A:

	# ROM: 0x1D510A
	.byte 0x45, 0x72
	.asciz "ror\n"
	.balign 4
	.4byte 0

.global lbl_80288078
lbl_80288078:

	# ROM: 0x1D5118
	.4byte 0x43505500

.global lbl_8028807C
lbl_8028807C:

	# ROM: 0x1D511C
	.asciz "DRAW"
	.balign 4
	.4byte 0

.global lbl_80288088
lbl_80288088:

	# ROM: 0x1D5128
	.4byte 0x01000000

.global lbl_8028808C
lbl_8028808C:

	# ROM: 0x1D512C
	.4byte 0xFFFFFFFF

.global lbl_80288090
lbl_80288090:

	# ROM: 0x1D5130
	.4byte lbl_801BB85F

.global lbl_80288094
lbl_80288094:

	# ROM: 0x1D5134
	.asciz "%s:%d"
	.balign 4
	.4byte 0

.global func_802880A0
func_802880A0:

	# ROM: 0x1D5140
	.4byte 0xFFFFFFFF

.global lbl_802880A4
lbl_802880A4:

	# ROM: 0x1D5144
	.4byte 0x213F2E00

.global lbl_802880A8
lbl_802880A8:

	# ROM: 0x1D5148
	.4byte 0xCEDFB0BD
	.byte 0xDE, 0x00

.global lbl_802880AE
lbl_802880AE:

	# ROM: 0x1D514E
	.byte 0x50, 0x41
	.4byte 0x55534500

.global lbl_802880B4
lbl_802880B4:

	# ROM: 0x1D5154
	.4byte lbl_802880A8
	.4byte lbl_802880AE
	.4byte 0

.global lbl_802880C0
lbl_802880C0:

	# ROM: 0x1D5160
	.4byte 0x03E80000

.global lbl_802880C4
lbl_802880C4:

	# ROM: 0x1D5164
	.4byte 0x00000001

.global lbl_802880C8
lbl_802880C8:

	# ROM: 0x1D5168
	.4byte 0x004D01F8
	.4byte 0xFFFF0000

.global lbl_802880D0
lbl_802880D0:

	# ROM: 0x1D5170
	.byte 0x00

.global lbl_802880D1
lbl_802880D1:

	# ROM: 0x1D5171
	.byte 0x65, 0x79, 0x65
	.byte 0x31, 0x00

.global lbl_802880D6
lbl_802880D6:

	# ROM: 0x1D5176
	.byte 0x65, 0x79
	.byte 0x65, 0x32, 0x00

.global lbl_802880DB
lbl_802880DB:

	# ROM: 0x1D517B
	.byte 0x47
	.asciz "C-eyes"

.global lbl_802880E3
lbl_802880E3:

	# ROM: 0x1D5183
	.byte 0x6D
	.asciz "at87"

.global lbl_802880E9
lbl_802880E9:

	# ROM: 0x1D5189
	.byte 0x6D, 0x61, 0x74
	.byte 0x38, 0x39, 0x00

.global lbl_802880EF
lbl_802880EF:

	# ROM: 0x1D518F
	.byte 0x03
	.4byte 0x37E7E7E7
	.4byte 0xE7E7E700

.global lbl_802880F8
lbl_802880F8:

	# ROM: 0x1D5198
	.4byte 0
	.4byte 0

.global lbl_80288100
lbl_80288100:

	# ROM: 0x1D51A0
	.4byte 0x0411E7E7
	.4byte 0xE7E7E7E7

.global lbl_80288108
lbl_80288108:

	# ROM: 0x1D51A8
	.4byte 0
	.4byte 0

.global lbl_80288110
lbl_80288110:

	# ROM: 0x1D51B0
	.4byte 0x0117E7E7
	.4byte 0xE7E7E7E7

.global lbl_80288118
lbl_80288118:

	# ROM: 0x1D51B8
	.4byte 0
	.4byte 0

.global lbl_80288120
lbl_80288120:

	# ROM: 0x1D51C0
	.asciz "hair1"
	.balign 4

.global lbl_80288128
lbl_80288128:

	# ROM: 0x1D51C8
	.4byte 0x54485000
	.4byte 0

.global lbl_80288130
lbl_80288130:

	# ROM: 0x1D51D0
	.byte 0x00

.global lbl_80288131
lbl_80288131:

	# ROM: 0x1D51D1
	.byte 0x25, 0x64, 0x0A
	.4byte 0

.global func_80288138
func_80288138:

	# ROM: 0x1D51D8
	.4byte 0xFFD815FF

.global func_8028813C
func_8028813C:

	# ROM: 0x1D51DC
	.4byte 0xFFFFFFFF

.global func_80288140
func_80288140:

	# ROM: 0x1D51E0
	.4byte 0x42FF7AFF
	.4byte 0

.global lbl_80288148
lbl_80288148:

	# ROM: 0x1D51E8
	.4byte 0x00000001

.global lbl_8028814C
lbl_8028814C:

	# ROM: 0x1D51EC
	.4byte 0xFFFFFFFF

.global lbl_80288150
lbl_80288150:

	# ROM: 0x1D51F0
	.asciz "MARIPA5"

.global lbl_80288158
lbl_80288158:

	# ROM: 0x1D51F8
	.asciz "ERASE"

.global lbl_8028815E
lbl_8028815E:

	# ROM: 0x1D51FE
	.2byte 0xFFFF

.global lbl_80288160
lbl_80288160:

	# ROM: 0x1D5200
	.asciz "EMPT"

.global lbl_80288165
lbl_80288165:

	# ROM: 0x1D5205
	.byte 0x53, 0x41, 0x56
	.4byte 0x45000000
	.4byte 0

.global lbl_80288170
lbl_80288170:

	# ROM: 0x1D5210
	.4byte 0
	.4byte 0

.global lbl_80288178
lbl_80288178:

	# ROM: 0x1D5218
	.4byte 0xFF000000

.global lbl_8028817C
lbl_8028817C:

	# ROM: 0x1D521C
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80288188
lbl_80288188:

	# ROM: 0x1D5228
	.4byte lbl_8006966C
	.4byte lbl_80069704

.global lbl_80288190
lbl_80288190:

	# ROM: 0x1D5230
	.4byte lbl_8006AA50
	.4byte 0

.global lbl_80288198
lbl_80288198:

	# ROM: 0x1D5238
	.4byte 0xCFD8B500

.global lbl_8028819C
lbl_8028819C:

	# ROM: 0x1D523C
	.asciz "MARIO"

.global lbl_802881A2
lbl_802881A2:

	# ROM: 0x1D5242
	.byte 0xD9, 0xB2
	.4byte 0xB0BCDE00

.global lbl_802881A8
lbl_802881A8:

	# ROM: 0x1D5248
	.asciz "LUIGI"

.global lbl_802881AE
lbl_802881AE:

	# ROM: 0x1D524E
	.byte 0xCB, 0xDF
	.byte 0xB0, 0xC1, 0x00

.global lbl_802881B3
lbl_802881B3:

	# ROM: 0x1D5253
	.byte 0x50
	.asciz "EACH"

.global lbl_802881B9
lbl_802881B9:

	# ROM: 0x1D5259
	.byte 0xD6, 0xAF, 0xBC
	.byte 0xB0, 0x00

.global lbl_802881BE
lbl_802881BE:

	# ROM: 0x1D525E
	.byte 0x59, 0x4F
	.4byte 0x53484900

.global lbl_802881C4
lbl_802881C4:

	# ROM: 0x1D5264
	.4byte 0xDCD8B500

.global lbl_802881C8
lbl_802881C8:

	# ROM: 0x1D5268
	.asciz "WARIO"

.global lbl_802881CE
lbl_802881CE:

	# ROM: 0x1D526E
	.byte 0xC3, 0xDE
	.4byte 0xB2BCDEB0
	.byte 0x00

.global lbl_802881D5
lbl_802881D5:

	# ROM: 0x1D5275
	.byte 0x44, 0x41, 0x49
	.byte 0x53, 0x59, 0x00

.global lbl_802881DB
lbl_802881DB:

	# ROM: 0x1D527B
	.byte 0xDC
	.4byte 0xD9B2B0BC
	.byte 0xDE, 0x00

.global lbl_802881E2
lbl_802881E2:

	# ROM: 0x1D5282
	.byte 0x57, 0x41
	.asciz "LUIGI"

.global lbl_802881EA
lbl_802881EA:

	# ROM: 0x1D528A
	.byte 0xB7, 0xC9
	.4byte 0xCBDFB500

.global lbl_802881F0
lbl_802881F0:

	# ROM: 0x1D5290
	.asciz "TOAD"

.global lbl_802881F5
lbl_802881F5:

	# ROM: 0x1D5295
	.byte 0xC3, 0xDA, 0xBB
	.byte 0x00

.global lbl_802881F9
lbl_802881F9:

	# ROM: 0x1D5299
	.byte 0x42, 0x4F, 0x4F
	.byte 0x00

.global lbl_802881FD
lbl_802881FD:

	# ROM: 0x1D529D
	.byte 0x42, 0x55, 0x55
	.asciz " HUU"

.global lbl_80288205
lbl_80288205:

	# ROM: 0x1D52A5
	.byte 0xD0, 0xC6, 0xB8
	.4byte 0xAFCADF00

.global lbl_8028820C
lbl_8028820C:

	# ROM: 0x1D52AC
	.4byte 0xD0C6B8AF
	.4byte 0xCADF5200

.global lbl_80288214
lbl_80288214:

	# ROM: 0x1D52B4
	.4byte 0xD0C6B8AF
	.4byte 0xCADF4700

.global lbl_8028821C
lbl_8028821C:

	# ROM: 0x1D52BC
	.4byte 0xD0C6B8AF
	.4byte 0xCADF4200

.global lbl_80288224
lbl_80288224:

	# ROM: 0x1D52C4
	.4byte 0xC4DEDDB7
	.byte 0xB0, 0x00

.global lbl_8028822A
lbl_8028822A:

	# ROM: 0x1D52CA
	.byte 0x44, 0x4B
	.byte 0x00

.global lbl_8028822D
lbl_8028822D:

	# ROM: 0x1D52CD
	.byte 0xB8, 0xAF, 0xCA
	.byte 0xDF, 0x00

.global lbl_80288232
lbl_80288232:

	# ROM: 0x1D52D2
	.byte 0x42, 0x4F
	.asciz "WSER"
	.balign 4
	.4byte 0

.global lbl_80288240
lbl_80288240:

	# ROM: 0x1D52E0
	.4byte 0xFFFFFFFF

.global lbl_80288244
lbl_80288244:

	# ROM: 0x1D52E4
	.4byte 0x00000014

.global lbl_80288248
lbl_80288248:

	# ROM: 0x1D52E8
	.4byte 0x00000014
	.4byte 0

.global lbl_80288250
lbl_80288250:

	# ROM: 0x1D52F0
	.asciz "eye1"

.global lbl_80288255
lbl_80288255:

	# ROM: 0x1D52F5
	.byte 0x65, 0x79, 0x65
	.byte 0x32, 0x00

.global lbl_8028825A
lbl_8028825A:

	# ROM: 0x1D52FA
	.byte 0x6D, 0x61
	.4byte 0x74313400

.global lbl_80288260
lbl_80288260:

	# ROM: 0x1D5300
	.asciz "mat16"

.global lbl_80288266
lbl_80288266:

	# ROM: 0x1D5306
	.byte 0x6D, 0x61
	.4byte 0x74363500

.global lbl_8028826C
lbl_8028826C:

	# ROM: 0x1D530C
	.asciz "mat66"

.global lbl_80288272
lbl_80288272:

	# ROM: 0x1D5312
	.byte 0x4D, 0x61
	.4byte 0x72696F00

.global lbl_80288278
lbl_80288278:

	# ROM: 0x1D5318
	.asciz "Luigi"

.global lbl_8028827E
lbl_8028827E:

	# ROM: 0x1D531E
	.byte 0x50, 0x65
	.4byte 0x61636800

.global lbl_80288284
lbl_80288284:

	# ROM: 0x1D5324
	.asciz "Yoshi"

.global lbl_8028828A
lbl_8028828A:

	# ROM: 0x1D532A
	.byte 0x57, 0x61
	.4byte 0x72696F00

.global lbl_80288290
lbl_80288290:

	# ROM: 0x1D5330
	.asciz "Daisy"

.global lbl_80288296
lbl_80288296:

	# ROM: 0x1D5336
	.byte 0x57, 0x61
	.asciz "luigi"

.global lbl_8028829E
lbl_8028829E:

	# ROM: 0x1D533E
	.byte 0x4B, 0x69
	.asciz "nopio"

.global lbl_802882A6
lbl_802882A6:

	# ROM: 0x1D5346
	.byte 0x54, 0x65
	.asciz "resa"
	.balign 4

.global lbl_802882B0
lbl_802882B0:

	# ROM: 0x1D5350
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_802882B8
lbl_802882B8:

	# ROM: 0x1D5358
	.4byte lbl_8024D368

.global lbl_802882BC
lbl_802882BC:

	# ROM: 0x1D535C
	.byte 0xFF

.global lbl_802882BD
lbl_802882BD:

	# ROM: 0x1D535D
	.byte 0xFF

.global lbl_802882BE
lbl_802882BE:

	# ROM: 0x1D535E
	.byte 0xC0

.global lbl_802882BF
lbl_802882BF:

	# ROM: 0x1D535F
	.byte 0x00

.global lbl_802882C0
lbl_802882C0:

	# ROM: 0x1D5360
	.byte 0xFF

.global lbl_802882C1
lbl_802882C1:

	# ROM: 0x1D5361
	.byte 0xFF

.global lbl_802882C2
lbl_802882C2:

	# ROM: 0x1D5362
	.byte 0xFF

.global lbl_802882C3
lbl_802882C3:

	# ROM: 0x1D5363
	.byte 0xFF
	.4byte 0

.global lbl_802882C8
lbl_802882C8:

	# ROM: 0x1D5368
	.2byte 0xFFFF

.global lbl_802882CA
lbl_802882CA:

	# ROM: 0x1D536A
	.byte 0x69, 0x38
	.4byte 0x74657800

.global lbl_802882D0
lbl_802882D0:

	# ROM: 0x1D5370
	.4byte 0x00080016
	.4byte 0x00080017

.global lbl_802882D8
lbl_802882D8:

	# ROM: 0x1D5378
	.4byte 0x25640000
	.4byte 0

.global lbl_802882E0
lbl_802882E0:

	# ROM: 0x1D5380
	.4byte 0x25640000
	.4byte 0

.global lbl_802882E8
lbl_802882E8:

	# ROM: 0x1D5388
	.4byte 0xFFFFFFFF

.global lbl_802882EC
lbl_802882EC:

	# ROM: 0x1D538C
	.asciz "BATTLE"
	.balign 4
	.4byte 0

.global lbl_802882F8
lbl_802882F8:

	# ROM: 0x1D5398
	.2byte 0xFF00

.global lbl_802882FA
lbl_802882FA:

	# ROM: 0x1D539A
	.2byte 0xFFFF

.global lbl_802882FC
lbl_802882FC:

	# ROM: 0x1D539C
	.4byte 0xFFFFFFFF

.global lbl_80288300
lbl_80288300:

	# ROM: 0x1D53A0
	.4byte 0x3F6B851F
	.4byte 0

.global lbl_80288308
lbl_80288308:

	# ROM: 0x1D53A8
	.4byte 0x25640000
	.4byte 0

.global lbl_80288310
lbl_80288310:

	# ROM: 0x1D53B0
	.4byte 0xFFFFFFFF

.global lbl_80288314
lbl_80288314:

	# ROM: 0x1D53B4
	.4byte 0xFFFFFFFF

.global curPlayerIndexUsedItem # RAM 0x80288318
curPlayerIndexUsedItem:

	# ROM: 0x1D53B8
	.4byte 0xFFFFFFFF

.global curItemUsedID
curItemUsedID:

	# ROM: 0x1D53BC # RAM 0x8028831C
	.4byte 0xFFFFFFFF

.global lbl_80288320
lbl_80288320:

	# ROM: 0x1D53C0
	.4byte 0xFFFFFFFF

.global lbl_80288324
lbl_80288324:

	# ROM: 0x1D53C4
	.4byte 0xFFFFFFFF

.global lbl_80288328
lbl_80288328:

	# ROM: 0x1D53C8
	.4byte 0xFFFFFFFF

.global lbl_8028832C
lbl_8028832C:

	# ROM: 0x1D53CC
	.4byte 0xFFFFFFFF

.global lbl_80288330
lbl_80288330:

	# ROM: 0x1D53D0
	.4byte 0x0008002A

.global lbl_80288334
lbl_80288334:

	# ROM: 0x1D53D4
	.byte 0x25, 0x64, 0x00

.global lbl_80288337
lbl_80288337:

	# ROM: 0x1D53D7
	.byte 0xFF

.global lbl_80288338
lbl_80288338:

	# ROM: 0x1D53D8
	.byte 0xFF

.global lbl_80288339
lbl_80288339:

	# ROM: 0x1D53D9
	.byte 0x80

.global lbl_8028833A
lbl_8028833A:

	# ROM: 0x1D53DA
	.byte 0x40

.global lbl_8028833B
lbl_8028833B:

	# ROM: 0x1D53DB
	.byte 0xFF

.global lbl_8028833C
lbl_8028833C:

	# ROM: 0x1D53DC
	.byte 0xFF

.global lbl_8028833D
lbl_8028833D:

	# ROM: 0x1D53DD
	.byte 0xFF

.global lbl_8028833E
lbl_8028833E:

	# ROM: 0x1D53DE
	.byte 0xFF

.global lbl_8028833F
lbl_8028833F:

	# ROM: 0x1D53DF
	.byte 0xFF

.global lbl_80288340
lbl_80288340:

	# ROM: 0x1D53E0
	.byte 0xFF

.global lbl_80288341
lbl_80288341:

	# ROM: 0x1D53E1
	.byte 0xFF

.global lbl_80288342
lbl_80288342:

	# ROM: 0x1D53E2
	.byte 0xFF

.global lbl_80288343
lbl_80288343:

	# ROM: 0x1D53E3
	.balign 4
	.4byte 0xFF00FF40
	.byte 0xFF, 0x40, 0xFF

.global lbl_8028834B
lbl_8028834B:

	# ROM: 0x1D53EB
	.byte 0x00

.global lbl_8028834C
lbl_8028834C:

	# ROM: 0x1D53EC
	.byte 0xFF

.global lbl_8028834D
lbl_8028834D:

	# ROM: 0x1D53ED
	.byte 0x00

.global lbl_8028834E
lbl_8028834E:

	# ROM: 0x1D53EE
	.byte 0xFF

.global lbl_8028834F
lbl_8028834F:

	# ROM: 0x1D53EF
	.byte 0x00

.global lbl_80288350
lbl_80288350:

	# ROM: 0x1D53F0
	.byte 0xFF

.global lbl_80288351
lbl_80288351:

	# ROM: 0x1D53F1
	.byte 0x00

.global lbl_80288352
lbl_80288352:

	# ROM: 0x1D53F2
	.byte 0xFF, 0x00
	.4byte 0

.global lbl_80288358
lbl_80288358:

	# ROM: 0x1D53F8
	.4byte 0xFFFFFFFF

.global lbl_8028835C
lbl_8028835C:

	# ROM: 0x1D53FC
	.4byte 0xFFFFFFFF

.global lbl_80288360
lbl_80288360:

	# ROM: 0x1D5400
	.4byte 0x0000000A

.global lbl_80288364
lbl_80288364:

	# ROM: 0x1D5404
	.4byte 0x00000005

.global lbl_80288368
lbl_80288368:

	# ROM: 0x1D5408
	.4byte 0xFFFF4080
	.4byte 0xFF80FF80

.global lbl_80288370
lbl_80288370:

	# ROM: 0x1D5410
	.4byte 0x73657400

.global lbl_80288374
lbl_80288374:

	# ROM: 0x1D5414
	.byte 0x25, 0x64, 0x00

.global lbl_80288377
lbl_80288377:

	# ROM: 0x1D5417
	.byte 0xFF
	.4byte 0x00FFFFFF
	.4byte 0x80C0FF00

.global lbl_80288380
lbl_80288380:

	# ROM: 0x1D5420
	.4byte 0x00100015
	.4byte 0

.global lbl_80288388
lbl_80288388:

	# ROM: 0x1D5428
	.4byte lbl_80258978

.global lbl_8028838C
lbl_8028838C:

	# ROM: 0x1D542C
	.4byte 0
	.4byte 0x00000001
	.4byte 0

.global lbl_80288398
lbl_80288398:

	# ROM: 0x1D5438
	.4byte 0xFFFFFFFF

.global lbl_8028839C
lbl_8028839C:

	# ROM: 0x1D543C
	.4byte 0xC3C3C3C3
	.4byte 0xC3C3C300

.global lbl_802883A4
lbl_802883A4:

	# ROM: 0x1D5444
	.4byte 0x25640000

.global lbl_802883A8
lbl_802883A8:

	# ROM: 0x1D5448
	.byte 0xFF

.global lbl_802883A9
lbl_802883A9:

	# ROM: 0x1D5449
	.byte 0xFF

.global lbl_802883AA
lbl_802883AA:

	# ROM: 0x1D544A
	.byte 0xFF

.global lbl_802883AB
lbl_802883AB:

	# ROM: 0x1D544B
	.byte 0xFF

.global lbl_802883AC
lbl_802883AC:

	# ROM: 0x1D544C
	.asciz "grid2"
	.balign 4
	.4byte 0

.global lbl_802883B8
lbl_802883B8:

	# ROM: 0x1D5458
	.4byte 0x00080008
	.4byte 0xFFFFFFFF

.global lbl_802883C0
lbl_802883C0:

	# ROM: 0x1D5460
	.asciz "ns_hed"
	.balign 4

.global lbl_802883C8
lbl_802883C8:

	# ROM: 0x1D5468
	.4byte 0x00020000
	.byte 0x00, 0x01

.global lbl_802883CE
lbl_802883CE:

	# ROM: 0x1D546E
	.balign 4
	.4byte 0x90C00000
	.4byte 0

.global lbl_802883D8
lbl_802883D8:

	# ROM: 0x1D5478
	.4byte 0x25640000
	.4byte 0

.global lbl_802883E0
lbl_802883E0:

	# ROM: 0x1D5480
	.asciz "1.1.4"
	.balign 4

.global lbl_802883E8
lbl_802883E8:

	# ROM: 0x1D5488
	.4byte 0x00000009

.global lbl_802883EC
lbl_802883EC:

	# ROM: 0x1D548C
	.4byte 0x00000005

.global lbl_802883F0
lbl_802883F0:

	# ROM: 0x1D5490
	.4byte lbl_801CDD80

.global lbl_802883F4
lbl_802883F4:

	# ROM: 0x1D5494
	.asciz "%08x\n"
	.balign 4

.global lbl_802883FC
lbl_802883FC:

	# ROM: 0x1D549C
	.4byte 0x25730A00

.global lbl_80288400
lbl_80288400:

	# ROM: 0x1D54A0
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80288408
lbl_80288408:

	# ROM: 0x1D54A8
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80288410
lbl_80288410:

	# ROM: 0x1D54B0
	.4byte 0x000000F8

.global lbl_80288414
lbl_80288414:

	# ROM: 0x1D54B4
	.4byte 0x0A000000

.global lbl_80288418
lbl_80288418:

	# ROM: 0x1D54B8
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_80288420
lbl_80288420:

	# ROM: 0x1D54C0
	.4byte lbl_8014096C

.global lbl_80288424
lbl_80288424:

	# ROM: 0x1D54C4
	.4byte 0

.global lbl_80288428
lbl_80288428:

	# ROM: 0x1D54C8
	.4byte 0
	.4byte 0x3F800000

.global lbl_80288430
lbl_80288430:

	# ROM: 0x1D54D0
	.4byte 0x00000001
	.4byte 0

.global lbl_80288438
lbl_80288438:

	# ROM: 0x1D54D8
	.asciz "dvdfs.c"

.global lbl_80288440
lbl_80288440:

	# ROM: 0x1D54E0
	.4byte lbl_801CF5C0

.global lbl_80288444
lbl_80288444:

	# ROM: 0x1D54E4
	.4byte 0x00000001

.global lbl_80288448
lbl_80288448:

	# ROM: 0x1D54E8
	.4byte lbl_801457F8

.global lbl_8028844C
lbl_8028844C:

	# ROM: 0x1D54EC
	.asciz "dvd.c"
	.balign 4

.global lbl_80288454
lbl_80288454:

	# ROM: 0x1D54F4
	.4byte 0xFFFFFFFF

.global lbl_80288458
lbl_80288458:

	# ROM: 0x1D54F8
	.4byte 0x0A000000

.global lbl_8028845C
lbl_8028845C:

	# ROM: 0x1D54FC
	.4byte 0x4F464600

.global lbl_80288460
lbl_80288460:

	# ROM: 0x1D5500
	.4byte 0x4F4E0000
	.4byte 0

.global lbl_80288468
lbl_80288468:

	# ROM: 0x1D5508
	.4byte lbl_801CF7F8

.global lbl_8028846C
lbl_8028846C:

	# ROM: 0x1D550C
	.asciz "vi.c"
	.balign 4
	.4byte 0

.global lbl_80288478
lbl_80288478:

	# ROM: 0x1D5518
	.asciz "%s: %8d"

.global lbl_80288480
lbl_80288480:

	# ROM: 0x1D5520
	.4byte lbl_801D0938

.global lbl_80288484
lbl_80288484:

	# ROM: 0x1D5524
	.4byte 0x00000020

.global lbl_80288488
lbl_80288488:

	# ROM: 0x1D5528
	.4byte 0xF0000000

.global lbl_8028848C
lbl_8028848C:

	# ROM: 0x1D552C
	.4byte 0x00000300

.global lbl_80288490
lbl_80288490:

	# ROM: 0x1D5530
	.4byte 0x00000005

.global lbl_80288494
lbl_80288494:

	# ROM: 0x1D5534
	.4byte lbl_8014D13C

.global lbl_80288498
lbl_80288498:

	# ROM: 0x1D5538
	.4byte 0x41000000

.global lbl_8028849C
lbl_8028849C:

	# ROM: 0x1D553C
	.4byte 0x42000000

.global lbl_802884A0
lbl_802884A0:

	# ROM: 0x1D5540
	.4byte lbl_801D0990
	.4byte 0

.global lbl_802884A8
lbl_802884A8:

	# ROM: 0x1D5548
	.4byte lbl_801D09D8
	.4byte 0

.global lbl_802884B0
lbl_802884B0:

	# ROM: 0x1D5550
	.4byte lbl_801D0A20
	.4byte 0

.global lbl_802884B8
lbl_802884B8:

	# ROM: 0x1D5558
	.4byte lbl_801D0A68
	.4byte 0

.global lbl_802884C0
lbl_802884C0:

	# ROM: 0x1D5560
	.4byte lbl_801D0C40
	.4byte 0

.global lbl_802884C8
lbl_802884C8:

	# ROM: 0x1D5568
	.4byte 0x00040102

.global lbl_802884CC
lbl_802884CC:

	# ROM: 0x1D556C
	.4byte 0x00080102

.global lbl_802884D0
lbl_802884D0:

	# ROM: 0x1D5570
	.4byte 0x000C0102
	.4byte 0

.global lbl_802884D8
lbl_802884D8:

	# ROM: 0x1D5578
	.4byte 0x80818283
	.4byte 0xA0A1A2A3

.global lbl_802884E0
lbl_802884E0:

	# ROM: 0x1D5580
	.4byte 0x84858687
	.4byte 0xA4A5A6A7

.global lbl_802884E8
lbl_802884E8:

	# ROM: 0x1D5588
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB

.global lbl_802884F0
lbl_802884F0:

	# ROM: 0x1D5590
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF

.global lbl_802884F8
lbl_802884F8:

	# ROM: 0x1D5598
	.4byte 0x90919293
	.4byte 0xB0B1B2B3

.global lbl_80288500
lbl_80288500:

	# ROM: 0x1D55A0
	.4byte 0x94959697
	.4byte 0xB4B5B6B7

.global lbl_80288508
lbl_80288508:

	# ROM: 0x1D55A8
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB

.global lbl_80288510
lbl_80288510:

	# ROM: 0x1D55B0
	.4byte 0x00040105
	.4byte 0x02060000

.global lbl_80288518
lbl_80288518:

	# ROM: 0x1D55B8
	.4byte lbl_801D1618
	.4byte 0

.global lbl_80288520
lbl_80288520:

	# ROM: 0x1D55C0
	.4byte 0x00000001
	.4byte 0

.global lbl_80288528
lbl_80288528:

	# ROM: 0x1D55C8
	.2byte 0xFFFF

.global lbl_8028852A
lbl_8028852A:

	# ROM: 0x1D55CA
	.byte 0x1C, 0x00
	.4byte 0

.global lbl_80288530
lbl_80288530:

	# ROM: 0x1D55D0
	.4byte lbl_801D1820
	.4byte 0

.global lbl_80288538
lbl_80288538:

	# ROM: 0x1D55D8
	.4byte lbl_801D1930
	.4byte 0

.global lbl_80288540
lbl_80288540:

	# ROM: 0x1D55E0
	.4byte lbl_801AAC98
	.4byte 0

.global lbl_80288548
lbl_80288548:

	# ROM: 0x1D55E8
	.4byte lbl_8016B810

.global lbl_8028854C
lbl_8028854C:

	# ROM: 0x1D55EC
	.4byte lbl_8016B7E8

.global lbl_80288550
lbl_80288550:

	# ROM: 0x1D55F0
	.4byte 0xFFFFFFFE
	.4byte 0

.global lbl_80288558
lbl_80288558:

	# ROM: 0x1D55F8
	.4byte lbl_801AAD38
	.4byte 0

.global lbl_80288560
lbl_80288560:

	# ROM: 0x1D5600
	.4byte lbl_801AAD24
	.4byte lbl_801D1BBC

.global lbl_80288568
lbl_80288568:

	# ROM: 0x1D5608
	.4byte 0
	.4byte 0

.global lbl_80288570
lbl_80288570:

	# ROM: 0x1D5610
	.4byte 0x7FFFFFFF

.global lbl_80288574
lbl_80288574:

	# ROM: 0x1D5614
	.4byte 0x7F800000

.global lbl_80288578
lbl_80288578:

	# ROM: 0x1D5618
	.4byte 0x00000001
	.4byte 0

.global lbl_80288580
lbl_80288580:

	# ROM: 0x1D5620
	.4byte 0x00000001
	.4byte 0x00020000

.global lbl_80288588
lbl_80288588:

	# ROM: 0x1D5628
	.4byte 0x00000001
	.4byte 0x00020000

.global lbl_80288590
lbl_80288590:

	# ROM: 0x1D5630
	.4byte 0x1EC00000
	.4byte 0

.global lbl_80288598
lbl_80288598:

	# ROM: 0x1D5638
	.4byte 0x80000000
	.4byte 0
