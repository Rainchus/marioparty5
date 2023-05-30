.include "include/macros.s"

.section .data, "wa"  # 0x801AB5A0 - 0x801D80A0 ; 0x0002CB00


.global lbl_801AB5A0
lbl_801AB5A0:

	# ROM: 0x1A85A0
	.asciz "VI_FIELD_BELOW\n"
	.asciz "%s USA Mode\n"
	.byte 0x53, 0x65, 0x70
	.asciz " 25 2003"
	.balign 4
	.4byte 0

.global lbl_801AB5D0
lbl_801AB5D0:

	# ROM: 0x1A85D0
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x10000000

.global lbl_801AB5E0
lbl_801AB5E0:

	# ROM: 0x1A85E0
	.4byte 0x4D504743
	.4byte 0x48550101
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "dvd.c: HuDvdDataReadWait Mode Error"
	.asciz "dvd.c: Memory Allocation Error (Length %x) (mode %d)\n"
	.byte 0x52, 0x65
	.asciz "st Memory %x\n"

.global lbl_801AB66A
lbl_801AB66A:

	# ROM: 0x1A866A
	.byte 0x64, 0x76
	.asciz "d.c: File Open Error"
	.byte 0x44, 0x56, 0x44
	.asciz " ERROR:Fatal error occurred\n***HALT***"
	.byte 0x44
	.asciz "VD ERROR:No disk\n"
	.byte 0x44, 0x56
	.asciz "D ERROR:Cover open\n"
	.asciz "DVD ERROR:Wrong disk\n"
	.byte 0x44, 0x56
	.asciz "D ERROR:Please retry\n"
	.balign 4

.global lbl_801AB704
lbl_801AB704:

	# ROM: 0x1A8704
	.4byte lbl_80006CCC
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte lbl_80006CDC
	.4byte lbl_80006CEC
	.4byte lbl_80006CFC
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte func_80006D18
	.4byte lbl_80006D0C

.global lbl_801AB738
lbl_801AB738:

	# ROM: 0x1A8738
	.asciz "data/actman.bin"

.global lbl_801AB748
lbl_801AB748:

	# ROM: 0x1A8748
	.asciz "data/bbattle.bin"

.global lbl_801AB759
lbl_801AB759:

	# ROM: 0x1A8759
	.asciz "data/bdemo.bin"

.global lbl_801AB768
lbl_801AB768:

	# ROM: 0x1A8768
	.asciz "data/bguest.bin"

.global lbl_801AB778
lbl_801AB778:

	# ROM: 0x1A8778
	.asciz "data/bkoopa.bin"

.global lbl_801AB788
lbl_801AB788:

	# ROM: 0x1A8788
	.asciz "data/bkoopasuit.bin"

.global lbl_801AB79C
lbl_801AB79C:

	# ROM: 0x1A879C
	.asciz "data/bkujiya.bin"

.global lbl_801AB7AD
lbl_801AB7AD:

	# ROM: 0x1A87AD
	.asciz "data/blast5.bin"

.global lbl_801AB7BD
lbl_801AB7BD:

	# ROM: 0x1A87BD
	.asciz "data/board.bin"

.global lbl_801AB7CC
lbl_801AB7CC:

	# ROM: 0x1A87CC
	.asciz "data/bpause.bin"

.global lbl_801AB7DC
lbl_801AB7DC:

	# ROM: 0x1A87DC
	.asciz "data/byokodori.bin"

.global lbl_801AB7EF
lbl_801AB7EF:

	# ROM: 0x1A87EF
	.asciz "data/capsule.bin"

.global lbl_801AB800
lbl_801AB800:

	# ROM: 0x1A8800
	.asciz "data/capsulechar0.bin"

.global lbl_801AB816
lbl_801AB816:

	# ROM: 0x1A8816
	.byte 0x64, 0x61
	.asciz "ta/capsulechar1.bin"

.global lbl_801AB82C
lbl_801AB82C:

	# ROM: 0x1A882C
	.asciz "data/capsulechar2.bin"

.global lbl_801AB842
lbl_801AB842:

	# ROM: 0x1A8842
	.byte 0x64, 0x61
	.asciz "ta/capsulechar3.bin"

.global lbl_801AB858
lbl_801AB858:

	# ROM: 0x1A8858
	.asciz "data/capsulechar4.bin"

.global lbl_801AB86E
lbl_801AB86E:

	# ROM: 0x1A886E
	.byte 0x64, 0x61
	.asciz "ta/card.bin"

.global lbl_801AB87C
lbl_801AB87C:

	# ROM: 0x1A887C
	.asciz "data/daisy.bin"

.global lbl_801AB88B
lbl_801AB88B:

	# ROM: 0x1A888B
	.asciz "data/daisymdl0.bin"

.global lbl_801AB89E
lbl_801AB89E:

	# ROM: 0x1A889E
	.asciz "data/daisymdl1.bin"

.global lbl_801AB8B1
lbl_801AB8B1:

	# ROM: 0x1A88B1
	.asciz "data/daisymdl2.bin"

.global lbl_801AB8C4
lbl_801AB8C4:

	# ROM: 0x1A88C4
	.asciz "data/daisymdl3.bin"

.global lbl_801AB8D7
lbl_801AB8D7:

	# ROM: 0x1A88D7
	.asciz "data/daisymot.bin"

.global lbl_801AB8E9
lbl_801AB8E9:

	# ROM: 0x1A88E9
	.asciz "data/decathlon.bin"

.global lbl_801AB8FC
lbl_801AB8FC:

	# ROM: 0x1A88FC
	.asciz "data/donkey.bin"

.global lbl_801AB90C
lbl_801AB90C:

	# ROM: 0x1A890C
	.asciz "data/donkeymdl0.bin"

.global lbl_801AB920
lbl_801AB920:

	# ROM: 0x1A8920
	.asciz "data/donkeymdl1.bin"

.global lbl_801AB934
lbl_801AB934:

	# ROM: 0x1A8934
	.asciz "data/donkeymdl2.bin"

.global lbl_801AB948
lbl_801AB948:

	# ROM: 0x1A8948
	.asciz "data/donkeymdl3.bin"

.global lbl_801AB95C
lbl_801AB95C:

	# ROM: 0x1A895C
	.asciz "data/donkeymot.bin"

.global lbl_801AB96F
lbl_801AB96F:

	# ROM: 0x1A896F
	.asciz "data/e3boot.bin"

.global lbl_801AB97F
lbl_801AB97F:

	# ROM: 0x1A897F
	.asciz "data/e3setup.bin"

.global lbl_801AB990
lbl_801AB990:

	# ROM: 0x1A8990
	.asciz "data/effect.bin"

.global lbl_801AB9A0
lbl_801AB9A0:

	# ROM: 0x1A89A0
	.asciz "data/filesel.bin"

.global lbl_801AB9B1
lbl_801AB9B1:

	# ROM: 0x1A89B1
	.asciz "data/gamemes.bin"

.global lbl_801AB9C2
lbl_801AB9C2:

	# ROM: 0x1A89C2
	.asciz "data/guide.bin"

.global lbl_801AB9D1
lbl_801AB9D1:

	# ROM: 0x1A89D1
	.asciz "data/inst.bin"

.global lbl_801AB9DF
lbl_801AB9DF:

	# ROM: 0x1A89DF
	.asciz "data/instfont.bin"

.global lbl_801AB9F1
lbl_801AB9F1:

	# ROM: 0x1A89F1
	.asciz "data/instpic.bin"

.global lbl_801ABA02
lbl_801ABA02:

	# ROM: 0x1A8A02
	.asciz "data/kinopio.bin"

.global lbl_801ABA13
lbl_801ABA13:

	# ROM: 0x1A8A13
	.asciz "data/kinopiomdl0.bin"

.global lbl_801ABA28
lbl_801ABA28:

	# ROM: 0x1A8A28
	.asciz "data/kinopiomdl1.bin"

.global lbl_801ABA3D
lbl_801ABA3D:

	# ROM: 0x1A8A3D
	.asciz "data/kinopiomdl2.bin"

.global lbl_801ABA52
lbl_801ABA52:

	# ROM: 0x1A8A52
	.asciz "data/kinopiomdl3.bin"

.global lbl_801ABA67
lbl_801ABA67:

	# ROM: 0x1A8A67
	.asciz "data/kinopiomot.bin"

.global lbl_801ABA7B
lbl_801ABA7B:

	# ROM: 0x1A8A7B
	.asciz "data/luigi.bin"

.global lbl_801ABA8A
lbl_801ABA8A:

	# ROM: 0x1A8A8A
	.asciz "data/luigimdl0.bin"

.global lbl_801ABA9D
lbl_801ABA9D:

	# ROM: 0x1A8A9D
	.asciz "data/luigimdl1.bin"

.global lbl_801ABAB0
lbl_801ABAB0:

	# ROM: 0x1A8AB0
	.asciz "data/luigimdl2.bin"

.global lbl_801ABAC3
lbl_801ABAC3:

	# ROM: 0x1A8AC3
	.asciz "data/luigimdl3.bin"

.global lbl_801ABAD6
lbl_801ABAD6:

	# ROM: 0x1A8AD6
	.asciz "data/luigimot.bin"

.global lbl_801ABAE8
lbl_801ABAE8:

	# ROM: 0x1A8AE8
	.asciz "data/m401.bin"

.global lbl_801ABAF6
lbl_801ABAF6:

	# ROM: 0x1A8AF6
	.asciz "data/m416.bin"

.global lbl_801ABB04
lbl_801ABB04:

	# ROM: 0x1A8B04
	.asciz "data/m425.bin"

.global lbl_801ABB12
lbl_801ABB12:

	# ROM: 0x1A8B12
	.byte 0x64, 0x61
	.asciz "ta/m433.bin"

.global lbl_801ABB20
lbl_801ABB20:

	# ROM: 0x1A8B20
	.asciz "data/m435.bin"

.global lbl_801ABB2E
lbl_801ABB2E:

	# ROM: 0x1A8B2E
	.byte 0x64, 0x61
	.asciz "ta/m438.bin"

.global lbl_801ABB3C
lbl_801ABB3C:

	# ROM: 0x1A8B3C
	.asciz "data/m444.bin"

.global lbl_801ABB4A
lbl_801ABB4A:

	# ROM: 0x1A8B4A
	.byte 0x64, 0x61
	.asciz "ta/m501.bin"

.global lbl_801ABB58
lbl_801ABB58:

	# ROM: 0x1A8B58
	.asciz "data/m502.bin"

.global lbl_801ABB66
lbl_801ABB66:

	# ROM: 0x1A8B66
	.byte 0x64, 0x61
	.asciz "ta/m503.bin"

.global lbl_801ABB74
lbl_801ABB74:

	# ROM: 0x1A8B74
	.asciz "data/m504.bin"

.global lbl_801ABB82
lbl_801ABB82:

	# ROM: 0x1A8B82
	.byte 0x64, 0x61
	.asciz "ta/m505.bin"

.global lbl_801ABB90
lbl_801ABB90:

	# ROM: 0x1A8B90
	.asciz "data/m506.bin"

.global lbl_801ABB9E
lbl_801ABB9E:

	# ROM: 0x1A8B9E
	.byte 0x64, 0x61
	.asciz "ta/m507.bin"

.global lbl_801ABBAC
lbl_801ABBAC:

	# ROM: 0x1A8BAC
	.asciz "data/m508.bin"

.global lbl_801ABBBA
lbl_801ABBBA:

	# ROM: 0x1A8BBA
	.byte 0x64, 0x61
	.asciz "ta/m509.bin"

.global lbl_801ABBC8
lbl_801ABBC8:

	# ROM: 0x1A8BC8
	.asciz "data/m510.bin"

.global lbl_801ABBD6
lbl_801ABBD6:

	# ROM: 0x1A8BD6
	.byte 0x64, 0x61
	.asciz "ta/m511.bin"

.global lbl_801ABBE4
lbl_801ABBE4:

	# ROM: 0x1A8BE4
	.asciz "data/m512.bin"

.global lbl_801ABBF2
lbl_801ABBF2:

	# ROM: 0x1A8BF2
	.byte 0x64, 0x61
	.asciz "ta/m513.bin"

.global lbl_801ABC00
lbl_801ABC00:

	# ROM: 0x1A8C00
	.asciz "data/m514.bin"

.global lbl_801ABC0E
lbl_801ABC0E:

	# ROM: 0x1A8C0E
	.byte 0x64, 0x61
	.asciz "ta/m515.bin"

.global lbl_801ABC1C
lbl_801ABC1C:

	# ROM: 0x1A8C1C
	.asciz "data/m516.bin"

.global lbl_801ABC2A
lbl_801ABC2A:

	# ROM: 0x1A8C2A
	.byte 0x64, 0x61
	.asciz "ta/m517.bin"

.global lbl_801ABC38
lbl_801ABC38:

	# ROM: 0x1A8C38
	.asciz "data/m518.bin"

.global lbl_801ABC46
lbl_801ABC46:

	# ROM: 0x1A8C46
	.byte 0x64, 0x61
	.asciz "ta/m519.bin"

.global lbl_801ABC54
lbl_801ABC54:

	# ROM: 0x1A8C54
	.asciz "data/m520.bin"

.global lbl_801ABC62
lbl_801ABC62:

	# ROM: 0x1A8C62
	.byte 0x64, 0x61
	.asciz "ta/m521.bin"

.global lbl_801ABC70
lbl_801ABC70:

	# ROM: 0x1A8C70
	.asciz "data/m522.bin"

.global lbl_801ABC7E
lbl_801ABC7E:

	# ROM: 0x1A8C7E
	.byte 0x64, 0x61
	.asciz "ta/m523.bin"

.global lbl_801ABC8C
lbl_801ABC8C:

	# ROM: 0x1A8C8C
	.asciz "data/m524.bin"

.global lbl_801ABC9A
lbl_801ABC9A:

	# ROM: 0x1A8C9A
	.byte 0x64, 0x61
	.asciz "ta/m525.bin"

.global lbl_801ABCA8
lbl_801ABCA8:

	# ROM: 0x1A8CA8
	.asciz "data/m526.bin"

.global lbl_801ABCB6
lbl_801ABCB6:

	# ROM: 0x1A8CB6
	.byte 0x64, 0x61
	.asciz "ta/m527.bin"

.global lbl_801ABCC4
lbl_801ABCC4:

	# ROM: 0x1A8CC4
	.asciz "data/m528.bin"

.global lbl_801ABCD2
lbl_801ABCD2:

	# ROM: 0x1A8CD2
	.byte 0x64, 0x61
	.asciz "ta/m529.bin"

.global lbl_801ABCE0
lbl_801ABCE0:

	# ROM: 0x1A8CE0
	.asciz "data/m530.bin"

.global lbl_801ABCEE
lbl_801ABCEE:

	# ROM: 0x1A8CEE
	.byte 0x64, 0x61
	.asciz "ta/m531.bin"

.global lbl_801ABCFC
lbl_801ABCFC:

	# ROM: 0x1A8CFC
	.asciz "data/m532.bin"

.global lbl_801ABD0A
lbl_801ABD0A:

	# ROM: 0x1A8D0A
	.byte 0x64, 0x61
	.asciz "ta/m533.bin"

.global lbl_801ABD18
lbl_801ABD18:

	# ROM: 0x1A8D18
	.asciz "data/m534.bin"

.global lbl_801ABD26
lbl_801ABD26:

	# ROM: 0x1A8D26
	.byte 0x64, 0x61
	.asciz "ta/m535.bin"

.global lbl_801ABD34
lbl_801ABD34:

	# ROM: 0x1A8D34
	.asciz "data/m536.bin"

.global lbl_801ABD42
lbl_801ABD42:

	# ROM: 0x1A8D42
	.byte 0x64, 0x61
	.asciz "ta/m537.bin"

.global lbl_801ABD50
lbl_801ABD50:

	# ROM: 0x1A8D50
	.asciz "data/m538.bin"

.global lbl_801ABD5E
lbl_801ABD5E:

	# ROM: 0x1A8D5E
	.byte 0x64, 0x61
	.asciz "ta/m539.bin"

.global lbl_801ABD6C
lbl_801ABD6C:

	# ROM: 0x1A8D6C
	.asciz "data/m540.bin"

.global lbl_801ABD7A
lbl_801ABD7A:

	# ROM: 0x1A8D7A
	.byte 0x64, 0x61
	.asciz "ta/m541.bin"

.global lbl_801ABD88
lbl_801ABD88:

	# ROM: 0x1A8D88
	.asciz "data/m542.bin"

.global lbl_801ABD96
lbl_801ABD96:

	# ROM: 0x1A8D96
	.byte 0x64, 0x61
	.asciz "ta/m543.bin"

.global lbl_801ABDA4
lbl_801ABDA4:

	# ROM: 0x1A8DA4
	.asciz "data/m544.bin"

.global lbl_801ABDB2
lbl_801ABDB2:

	# ROM: 0x1A8DB2
	.byte 0x64, 0x61
	.asciz "ta/m545.bin"

.global lbl_801ABDC0
lbl_801ABDC0:

	# ROM: 0x1A8DC0
	.asciz "data/m546.bin"

.global lbl_801ABDCE
lbl_801ABDCE:

	# ROM: 0x1A8DCE
	.byte 0x64, 0x61
	.asciz "ta/m547.bin"

.global lbl_801ABDDC
lbl_801ABDDC:

	# ROM: 0x1A8DDC
	.asciz "data/m548.bin"

.global lbl_801ABDEA
lbl_801ABDEA:

	# ROM: 0x1A8DEA
	.byte 0x64, 0x61
	.asciz "ta/m549.bin"

.global lbl_801ABDF8
lbl_801ABDF8:

	# ROM: 0x1A8DF8
	.asciz "data/m550.bin"

.global lbl_801ABE06
lbl_801ABE06:

	# ROM: 0x1A8E06
	.byte 0x64, 0x61
	.asciz "ta/m551.bin"

.global lbl_801ABE14
lbl_801ABE14:

	# ROM: 0x1A8E14
	.asciz "data/m552.bin"

.global lbl_801ABE22
lbl_801ABE22:

	# ROM: 0x1A8E22
	.byte 0x64, 0x61
	.asciz "ta/m553.bin"

.global lbl_801ABE30
lbl_801ABE30:

	# ROM: 0x1A8E30
	.asciz "data/m554.bin"

.global lbl_801ABE3E
lbl_801ABE3E:

	# ROM: 0x1A8E3E
	.byte 0x64, 0x61
	.asciz "ta/m555.bin"

.global lbl_801ABE4C
lbl_801ABE4C:

	# ROM: 0x1A8E4C
	.asciz "data/m559.bin"

.global lbl_801ABE5A
lbl_801ABE5A:

	# ROM: 0x1A8E5A
	.byte 0x64, 0x61
	.asciz "ta/m560.bin"

.global lbl_801ABE68
lbl_801ABE68:

	# ROM: 0x1A8E68
	.asciz "data/m561.bin"

.global lbl_801ABE76
lbl_801ABE76:

	# ROM: 0x1A8E76
	.byte 0x64, 0x61
	.asciz "ta/m562.bin"

.global lbl_801ABE84
lbl_801ABE84:

	# ROM: 0x1A8E84
	.asciz "data/m563.bin"

.global lbl_801ABE92
lbl_801ABE92:

	# ROM: 0x1A8E92
	.byte 0x64, 0x61
	.asciz "ta/m564.bin"

.global lbl_801ABEA0
lbl_801ABEA0:

	# ROM: 0x1A8EA0
	.asciz "data/m565.bin"

.global lbl_801ABEAE
lbl_801ABEAE:

	# ROM: 0x1A8EAE
	.byte 0x64, 0x61
	.asciz "ta/m566.bin"

.global lbl_801ABEBC
lbl_801ABEBC:

	# ROM: 0x1A8EBC
	.asciz "data/m567.bin"

.global lbl_801ABECA
lbl_801ABECA:

	# ROM: 0x1A8ECA
	.byte 0x64, 0x61
	.asciz "ta/m568.bin"

.global lbl_801ABED8
lbl_801ABED8:

	# ROM: 0x1A8ED8
	.asciz "data/m569.bin"

.global lbl_801ABEE6
lbl_801ABEE6:

	# ROM: 0x1A8EE6
	.byte 0x64, 0x61
	.asciz "ta/m570.bin"

.global lbl_801ABEF4
lbl_801ABEF4:

	# ROM: 0x1A8EF4
	.asciz "data/m571.bin"

.global lbl_801ABF02
lbl_801ABF02:

	# ROM: 0x1A8F02
	.byte 0x64, 0x61
	.asciz "ta/m572.bin"

.global lbl_801ABF10
lbl_801ABF10:

	# ROM: 0x1A8F10
	.asciz "data/m573.bin"

.global lbl_801ABF1E
lbl_801ABF1E:

	# ROM: 0x1A8F1E
	.byte 0x64, 0x61
	.asciz "ta/m574.bin"

.global lbl_801ABF2C
lbl_801ABF2C:

	# ROM: 0x1A8F2C
	.asciz "data/m575.bin"

.global lbl_801ABF3A
lbl_801ABF3A:

	# ROM: 0x1A8F3A
	.byte 0x64, 0x61
	.asciz "ta/m576.bin"

.global lbl_801ABF48
lbl_801ABF48:

	# ROM: 0x1A8F48
	.asciz "data/m577.bin"

.global lbl_801ABF56
lbl_801ABF56:

	# ROM: 0x1A8F56
	.byte 0x64, 0x61
	.asciz "ta/m579.bin"

.global lbl_801ABF64
lbl_801ABF64:

	# ROM: 0x1A8F64
	.asciz "data/m580.bin"

.global lbl_801ABF72
lbl_801ABF72:

	# ROM: 0x1A8F72
	.byte 0x64, 0x61
	.asciz "ta/mario.bin"

.global lbl_801ABF81
lbl_801ABF81:

	# ROM: 0x1A8F81
	.asciz "data/mariomdl0.bin"

.global lbl_801ABF94
lbl_801ABF94:

	# ROM: 0x1A8F94
	.asciz "data/mariomdl1.bin"

.global lbl_801ABFA7
lbl_801ABFA7:

	# ROM: 0x1A8FA7
	.asciz "data/mariomdl2.bin"

.global lbl_801ABFBA
lbl_801ABFBA:

	# ROM: 0x1A8FBA
	.asciz "data/mariomdl3.bin"

.global lbl_801ABFCD
lbl_801ABFCD:

	# ROM: 0x1A8FCD
	.asciz "data/mariomot.bin"

.global lbl_801ABFDF
lbl_801ABFDF:

	# ROM: 0x1A8FDF
	.asciz "data/mbrushi.bin"

.global lbl_801ABFF0
lbl_801ABFF0:

	# ROM: 0x1A8FF0
	.asciz "data/mdbeach.bin"

.global lbl_801AC001
lbl_801AC001:

	# ROM: 0x1A9001
	.asciz "data/mdcard.bin"

.global lbl_801AC011
lbl_801AC011:

	# ROM: 0x1A9011
	.asciz "data/mdmini.bin"

.global lbl_801AC021
lbl_801AC021:

	# ROM: 0x1A9021
	.asciz "data/mdomake.bin"

.global lbl_801AC032
lbl_801AC032:

	# ROM: 0x1A9032
	.asciz "data/mdoption.bin"

.global lbl_801AC044
lbl_801AC044:

	# ROM: 0x1A9044
	.asciz "data/mdparty.bin"

.global lbl_801AC055
lbl_801AC055:

	# ROM: 0x1A9055
	.asciz "data/mdsel.bin"

.global lbl_801AC064
lbl_801AC064:

	# ROM: 0x1A9064
	.asciz "data/mdstory.bin"

.global lbl_801AC075
lbl_801AC075:

	# ROM: 0x1A9075
	.asciz "data/mgconst.bin"

.global lbl_801AC086
lbl_801AC086:

	# ROM: 0x1A9086
	.asciz "data/mgfree.bin"

.global lbl_801AC096
lbl_801AC096:

	# ROM: 0x1A9096
	.asciz "data/mgmatch.bin"

.global lbl_801AC0A7
lbl_801AC0A7:

	# ROM: 0x1A90A7
	.asciz "data/mgshare.bin"

.global lbl_801AC0B8
lbl_801AC0B8:

	# ROM: 0x1A90B8
	.asciz "data/mgtour.bin"

.global lbl_801AC0C8
lbl_801AC0C8:

	# ROM: 0x1A90C8
	.asciz "data/mgwars.bin"

.global lbl_801AC0D8
lbl_801AC0D8:

	# ROM: 0x1A90D8
	.asciz "data/minikoopa.bin"

.global lbl_801AC0EB
lbl_801AC0EB:

	# ROM: 0x1A90EB
	.asciz "data/minikoopaB.bin"

.global lbl_801AC0FF
lbl_801AC0FF:

	# ROM: 0x1A90FF
	.asciz "data/minikoopaBmdl0.bin"

.global lbl_801AC117
lbl_801AC117:

	# ROM: 0x1A9117
	.byte 0x64
	.asciz "ata/minikoopaBmdl1.bin"

.global lbl_801AC12F
lbl_801AC12F:

	# ROM: 0x1A912F
	.byte 0x64
	.asciz "ata/minikoopaBmdl2.bin"

.global lbl_801AC147
lbl_801AC147:

	# ROM: 0x1A9147
	.byte 0x64
	.asciz "ata/minikoopaBmdl3.bin"

.global lbl_801AC15F
lbl_801AC15F:

	# ROM: 0x1A915F
	.byte 0x64
	.asciz "ata/minikoopaG.bin"

.global lbl_801AC173
lbl_801AC173:

	# ROM: 0x1A9173
	.byte 0x64
	.asciz "ata/minikoopaGmdl0.bin"

.global lbl_801AC18B
lbl_801AC18B:

	# ROM: 0x1A918B
	.byte 0x64
	.asciz "ata/minikoopaGmdl1.bin"

.global lbl_801AC1A3
lbl_801AC1A3:

	# ROM: 0x1A91A3
	.byte 0x64
	.asciz "ata/minikoopaGmdl2.bin"

.global lbl_801AC1BB
lbl_801AC1BB:

	# ROM: 0x1A91BB
	.byte 0x64
	.asciz "ata/minikoopaGmdl3.bin"

.global lbl_801AC1D3
lbl_801AC1D3:

	# ROM: 0x1A91D3
	.byte 0x64
	.asciz "ata/minikoopaR.bin"

.global lbl_801AC1E7
lbl_801AC1E7:

	# ROM: 0x1A91E7
	.byte 0x64
	.asciz "ata/minikoopaRmdl0.bin"

.global lbl_801AC1FF
lbl_801AC1FF:

	# ROM: 0x1A91FF
	.byte 0x64
	.asciz "ata/minikoopaRmdl1.bin"

.global lbl_801AC217
lbl_801AC217:

	# ROM: 0x1A9217
	.byte 0x64
	.asciz "ata/minikoopaRmdl2.bin"

.global lbl_801AC22F
lbl_801AC22F:

	# ROM: 0x1A922F
	.byte 0x64
	.asciz "ata/minikoopaRmdl3.bin"

.global lbl_801AC247
lbl_801AC247:

	# ROM: 0x1A9247
	.byte 0x64
	.asciz "ata/minikoopamdl0.bin"

.global lbl_801AC25E
lbl_801AC25E:

	# ROM: 0x1A925E
	.byte 0x64, 0x61
	.asciz "ta/minikoopamdl1.bin"

.global lbl_801AC275
lbl_801AC275:

	# ROM: 0x1A9275
	.byte 0x64, 0x61, 0x74
	.asciz "a/minikoopamdl2.bin"

.global lbl_801AC28C
lbl_801AC28C:

	# ROM: 0x1A928C
	.asciz "data/minikoopamdl3.bin"

.global lbl_801AC2A3
lbl_801AC2A3:

	# ROM: 0x1A92A3
	.byte 0x64
	.asciz "ata/minikoopamot.bin"

.global lbl_801AC2B9
lbl_801AC2B9:

	# ROM: 0x1A92B9
	.byte 0x64, 0x61, 0x74
	.asciz "a/partyresult.bin"

.global lbl_801AC2CE
lbl_801AC2CE:

	# ROM: 0x1A92CE
	.byte 0x64, 0x61
	.asciz "ta/peach.bin"

.global lbl_801AC2DD
lbl_801AC2DD:

	# ROM: 0x1A92DD
	.byte 0x64, 0x61, 0x74
	.asciz "a/peachmdl0.bin"

.global lbl_801AC2F0
lbl_801AC2F0:

	# ROM: 0x1A92F0
	.asciz "data/peachmdl1.bin"

.global lbl_801AC303
lbl_801AC303:

	# ROM: 0x1A9303
	.byte 0x64
	.asciz "ata/peachmdl2.bin"

.global lbl_801AC316
lbl_801AC316:

	# ROM: 0x1A9316
	.byte 0x64, 0x61
	.asciz "ta/peachmdl3.bin"

.global lbl_801AC329
lbl_801AC329:

	# ROM: 0x1A9329
	.byte 0x64, 0x61, 0x74
	.asciz "a/peachmot.bin"

.global lbl_801AC33B
lbl_801AC33B:

	# ROM: 0x1A933B
	.byte 0x64
	.asciz "ata/rescard.bin"

.global lbl_801AC34C
lbl_801AC34C:

	# ROM: 0x1A934C
	.asciz "data/result.bin"

.global lbl_801AC35C
lbl_801AC35C:

	# ROM: 0x1A935C
	.asciz "data/saf.bin"

.global lbl_801AC369
lbl_801AC369:

	# ROM: 0x1A9369
	.byte 0x64, 0x61, 0x74
	.asciz "a/sample.bin"

.global lbl_801AC379
lbl_801AC379:

	# ROM: 0x1A9379
	.byte 0x64, 0x61, 0x74
	.asciz "a/sd00.bin"

.global lbl_801AC387
lbl_801AC387:

	# ROM: 0x1A9387
	.byte 0x64
	.asciz "ata/sdd1.bin"

.global lbl_801AC395
lbl_801AC395:

	# ROM: 0x1A9395
	.byte 0x64, 0x61, 0x74
	.asciz "a/sdroom.bin"

.global lbl_801AC3A5
lbl_801AC3A5:

	# ROM: 0x1A93A5
	.byte 0x64, 0x61, 0x74
	.asciz "a/selmenu.bin"

.global lbl_801AC3B6
lbl_801AC3B6:

	# ROM: 0x1A93B6
	.byte 0x64, 0x61
	.asciz "ta/staff.bin"

.global lbl_801AC3C5
lbl_801AC3C5:

	# ROM: 0x1A93C5
	.byte 0x64, 0x61, 0x74
	.asciz "a/storymode.bin"

.global lbl_801AC3D8
lbl_801AC3D8:

	# ROM: 0x1A93D8
	.asciz "data/storyresult.bin"

.global lbl_801AC3ED
lbl_801AC3ED:

	# ROM: 0x1A93ED
	.asciz "data/system.bin"

.global lbl_801AC3FD
lbl_801AC3FD:

	# ROM: 0x1A93FD
	.asciz "data/teresa.bin"

.global lbl_801AC40D
lbl_801AC40D:

	# ROM: 0x1A940D
	.asciz "data/teresamdl0.bin"

.global lbl_801AC421
lbl_801AC421:

	# ROM: 0x1A9421
	.asciz "data/teresamdl1.bin"

.global lbl_801AC435
lbl_801AC435:

	# ROM: 0x1A9435
	.asciz "data/teresamdl2.bin"

.global lbl_801AC449
lbl_801AC449:

	# ROM: 0x1A9449
	.asciz "data/teresamdl3.bin"

.global lbl_801AC45D
lbl_801AC45D:

	# ROM: 0x1A945D
	.asciz "data/teresamot.bin"

.global lbl_801AC470
lbl_801AC470:

	# ROM: 0x1A9470
	.asciz "data/title.bin"

.global lbl_801AC47F
lbl_801AC47F:

	# ROM: 0x1A947F
	.asciz "data/w01.bin"

.global lbl_801AC48C
lbl_801AC48C:

	# ROM: 0x1A948C
	.asciz "data/w01s.bin"

.global lbl_801AC49A
lbl_801AC49A:

	# ROM: 0x1A949A
	.asciz "data/w02.bin"

.global lbl_801AC4A7
lbl_801AC4A7:

	# ROM: 0x1A94A7
	.asciz "data/w02s.bin"

.global lbl_801AC4B5
lbl_801AC4B5:

	# ROM: 0x1A94B5
	.asciz "data/w03.bin"

.global lbl_801AC4C2
lbl_801AC4C2:

	# ROM: 0x1A94C2
	.asciz "data/w03s.bin"

.global lbl_801AC4D0
lbl_801AC4D0:

	# ROM: 0x1A94D0
	.asciz "data/w04.bin"

.global lbl_801AC4DD
lbl_801AC4DD:

	# ROM: 0x1A94DD
	.asciz "data/w04s.bin"

.global lbl_801AC4EB
lbl_801AC4EB:

	# ROM: 0x1A94EB
	.asciz "data/w05.bin"

.global lbl_801AC4F8
lbl_801AC4F8:

	# ROM: 0x1A94F8
	.asciz "data/w05s.bin"

.global lbl_801AC506
lbl_801AC506:

	# ROM: 0x1A9506
	.asciz "data/w06.bin"

.global lbl_801AC513
lbl_801AC513:

	# ROM: 0x1A9513
	.asciz "data/w06s.bin"

.global lbl_801AC521
lbl_801AC521:

	# ROM: 0x1A9521
	.asciz "data/w07.bin"

.global lbl_801AC52E
lbl_801AC52E:

	# ROM: 0x1A952E
	.asciz "data/w07s.bin"

.global lbl_801AC53C
lbl_801AC53C:

	# ROM: 0x1A953C
	.asciz "data/w10.bin"

.global lbl_801AC549
lbl_801AC549:

	# ROM: 0x1A9549
	.asciz "data/w20.bin"

.global lbl_801AC556
lbl_801AC556:

	# ROM: 0x1A9556
	.asciz "data/waluigi.bin"

.global lbl_801AC567
lbl_801AC567:

	# ROM: 0x1A9567
	.asciz "data/waluigimdl0.bin"

.global lbl_801AC57C
lbl_801AC57C:

	# ROM: 0x1A957C
	.asciz "data/waluigimdl1.bin"

.global lbl_801AC591
lbl_801AC591:

	# ROM: 0x1A9591
	.asciz "data/waluigimdl2.bin"

.global lbl_801AC5A6
lbl_801AC5A6:

	# ROM: 0x1A95A6
	.asciz "data/waluigimdl3.bin"

.global lbl_801AC5BB
lbl_801AC5BB:

	# ROM: 0x1A95BB
	.asciz "data/waluigimot.bin"

.global lbl_801AC5CF
lbl_801AC5CF:

	# ROM: 0x1A95CF
	.asciz "data/wario.bin"

.global lbl_801AC5DE
lbl_801AC5DE:

	# ROM: 0x1A95DE
	.asciz "data/wariomdl0.bin"

.global lbl_801AC5F1
lbl_801AC5F1:

	# ROM: 0x1A95F1
	.asciz "data/wariomdl1.bin"

.global lbl_801AC604
lbl_801AC604:

	# ROM: 0x1A9604
	.asciz "data/wariomdl2.bin"

.global lbl_801AC617
lbl_801AC617:

	# ROM: 0x1A9617
	.asciz "data/wariomdl3.bin"

.global lbl_801AC62A
lbl_801AC62A:

	# ROM: 0x1A962A
	.asciz "data/wariomot.bin"

.global lbl_801AC63C
lbl_801AC63C:

	# ROM: 0x1A963C
	.asciz "data/win.bin"

.global lbl_801AC649
lbl_801AC649:

	# ROM: 0x1A9649
	.asciz "data/yoshi.bin"

.global lbl_801AC658
lbl_801AC658:

	# ROM: 0x1A9658
	.asciz "data/yoshimdl0.bin"

.global lbl_801AC66B
lbl_801AC66B:

	# ROM: 0x1A966B
	.asciz "data/yoshimdl1.bin"

.global lbl_801AC67E
lbl_801AC67E:

	# ROM: 0x1A967E
	.asciz "data/yoshimdl2.bin"

.global lbl_801AC691
lbl_801AC691:

	# ROM: 0x1A9691
	.asciz "data/yoshimdl3.bin"

.global lbl_801AC6A4
lbl_801AC6A4:

	# ROM: 0x1A96A4
	.asciz "data/yoshimot.bin"
	.balign 4

.global lbl_801AC6B8
lbl_801AC6B8:

	# ROM: 0x1A96B8
	.4byte lbl_801AB738
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB748
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB759
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB768
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB778
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB788
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB79C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB7AD
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB7BD
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB7CC
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB7DC
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB7EF
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB800
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB816
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB82C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB842
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB858
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB86E
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB87C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB88B
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB89E
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB8B1
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB8C4
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB8D7
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB8E9
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB8FC
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB90C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB920
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB934
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB948
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB95C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB96F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB97F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB990
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9A0
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9B1
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9C2
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9D1
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9DF
	.4byte 0xFFFFFFFF
	.4byte lbl_801AB9F1
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA02
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA13
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA28
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA3D
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA52
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA67
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA7B
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA8A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABA9D
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABAB0
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABAC3
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABAD6
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABAE8
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABAF6
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB04
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB12
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB20
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB2E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB3C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB4A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB58
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB66
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB74
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB82
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB90
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABB9E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBAC
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBBA
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBC8
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBD6
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBE4
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABBF2
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC00
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC0E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC1C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC2A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC38
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC46
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC54
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC62
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC70
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC7E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC8C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABC9A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCA8
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCB6
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCC4
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCD2
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCE0
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCEE
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABCFC
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD0A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD18
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD26
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD34
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD42
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD50
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD5E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD6C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD7A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD88
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABD96
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDA4
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDB2
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDC0
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDCE
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDDC
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDEA
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABDF8
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE06
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE14
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE22
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE30
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE3E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE4C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE5A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE68
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE76
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE84
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABE92
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABEA0
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABEAE
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABEBC
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABECA
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABED8
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABEE6
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABEF4
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF02
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF10
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF1E
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF2C
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF3A
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF48
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF56
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF64
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF72
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF81
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABF94
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABFA7
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABFBA
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABFCD
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABFDF
	.4byte 0xFFFFFFFF
	.4byte lbl_801ABFF0
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC001
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC011
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC021
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC032
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC044
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC055
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC064
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC075
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC086
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC096
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0A7
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0B8
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0C8
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0D8
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0EB
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC0FF
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC117
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC12F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC147
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC15F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC173
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC18B
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC1A3
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC1BB
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC1D3
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC1E7
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC1FF
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC217
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC22F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC247
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC25E
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC275
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC28C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC2A3
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC2B9
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC2CE
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC2DD
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC2F0
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC303
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC316
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC329
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC33B
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC34C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC35C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC369
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC379
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC387
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC395
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3A5
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3B6
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3C5
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3D8
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3ED
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC3FD
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC40D
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC421
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC435
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC449
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC45D
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC470
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC47F
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC48C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC49A
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4A7
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4B5
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4C2
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4D0
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4DD
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4EB
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC4F8
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC506
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC513
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC521
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC52E
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC53C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC549
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC556
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC567
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC57C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC591
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC5A6
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC5BB
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC5CF
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC5DE
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC5F1
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC604
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC617
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC62A
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC63C
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC649
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC658
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC66B
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC67E
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC691
	.4byte 0xFFFFFFFF
	.4byte lbl_801AC6A4
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_801ACE30
lbl_801ACE30:

	# ROM: 0x1A9E30
	.asciz "data.c: Data File Error(%s)\n"

.global lbl_801ACE4D
lbl_801ACE4D:

	# ROM: 0x1A9E4D
	.byte 0x64, 0x61, 0x74
	.asciz "a.c: Data Number Error(%d)\n"

.global lbl_801ACE6C
lbl_801ACE6C:

	# ROM: 0x1A9E6C
	.asciz "data.c: Data Work Max Error\n"
	.byte 0x41, 0x52, 0x41
	.asciz "M data num %x\n"
	.byte 0x64
	.asciz "ata num %x\n"

.global lbl_801ACEA8
lbl_801ACEA8:

	# ROM: 0x1A9EA8
	.asciz "dvd.c AsyncCallBack Error"
	.byte 0x64, 0x61
	.asciz "ta.c: Data Number Error(0x%08x)\n"
	.byte 0x48, 0x75, 0x44
	.asciz "ataDVDdirDirectOpen: File Open Error(%08x)"
	.byte 0x48
	.asciz "uDataDVDdirDirectRead: File Read Error"
	.byte 0x64
	.asciz "ata.c%d: Data Number Error(0x%08x)\n"
	.asciz "data.c: couldn't allocate read buffer(0x%08x)\n"
	.byte 0x2A
	.asciz "* dcnt %d tmp %08x sp1 %08x\n"
	.byte 0x2A, 0x2A, 0x20
	.asciz "dcnt %d lastNum %08x\n"
	.balign 4

.global lbl_801ACFC8
lbl_801ACFC8:

	# ROM: 0x1A9FC8
	.asciz "decode tyep unknown.(%x)\n"
	.balign 4

.global lbl_801ACFE4
lbl_801ACFE4:

	# ROM: 0x1A9FE4
	.4byte lbl_80009974
	.4byte lbl_80009984
	.4byte lbl_80009AFC
	.4byte lbl_80009B08
	.4byte lbl_80009B14
	.4byte lbl_80009BB8
	.4byte lbl_80009BD4
	.4byte lbl_80009BC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801AD020
lbl_801AD020:

	# ROM: 0x1AA020
	.4byte 0x08FFFFFF
	.4byte 0x88FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x000F0000
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFF00
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFF00
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FFFFFF0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0xF000000F
	.4byte 0xF000000F
	.4byte 0xF000000F
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x0F00F00F
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x00F00F00
	.4byte 0x0FFFFFF0
	.4byte 0x000FF000
	.4byte 0x0FFFFFF0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F000F0
	.4byte 0x0F0FFF0F
	.4byte 0x0F0F000F
	.4byte 0x0F0FFF0F
	.4byte 0x00F000F0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x0FF0FFF0
	.4byte 0x000F0F00
	.4byte 0x00FF0F00
	.4byte 0x0F0F0F00
	.4byte 0x0FF000F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x000FFF00
	.4byte 0x00F0F0F0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00F0F0F0
	.4byte 0x000FFF00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FFF00FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF00FFF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0000FFF0
	.4byte 0x000F0FF0
	.4byte 0x00F00FF0
	.4byte 0x0F000FF0
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF0
	.4byte 0x0000FFFF
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0x00FF0000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0xFFFF00FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x000F0FF0
	.4byte 0x000FFF00
	.4byte 0x00FF0FF0
	.4byte 0x000FFF00
	.4byte 0x00FF0F00
	.4byte 0x000F0000
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x000FFFF0
	.4byte 0x00F0F000
	.4byte 0x000FFF00
	.4byte 0x0000F0F0
	.4byte 0x00FFFF00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x00F0000F
	.4byte 0x0F0F00F0
	.4byte 0x00F00F00
	.4byte 0x0000F000
	.4byte 0x000F00F0
	.4byte 0x00F00F0F
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x000F00F0
	.4byte 0x000F0F00
	.4byte 0x0000F000
	.4byte 0x000F0F0F
	.4byte 0x00F000F0
	.4byte 0x000FFF0F
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x00F0F0F0
	.4byte 0x000FFF00
	.4byte 0x000FFF00
	.4byte 0x00F0F0F0
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FFFFF0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x000000F0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x0F000000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FFF00FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF00FFF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0000FFF0
	.4byte 0x000F0FF0
	.4byte 0x00F00FF0
	.4byte 0x0F000FF0
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF0
	.4byte 0x0000FFFF
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0x00FF0000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F000FF0
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0F00000F
	.4byte 0x0F00FF0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F00FFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0xFFFF00FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF0FFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x0FFFFF00
	.4byte 0
	.4byte 0x0FF00FF0
	.4byte 0x0FF0FF00
	.4byte 0x0FFFF000
	.4byte 0x0FFFF000
	.4byte 0x0FF0FF00
	.4byte 0x0FF00FF0
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FFF00FF
	.4byte 0x0FFF00FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF00FFF
	.4byte 0x0FF00FFF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF00FF0
	.4byte 0x00FFFF0F
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00FFFFF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FF0FF0
	.4byte 0x000FFF00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FFFFFFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FF0FF0
	.4byte 0x0000F000
	.4byte 0x00FF0FF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FF0FF0
	.4byte 0x000FFF00
	.4byte 0x0000F000
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0xF0000000
	.4byte 0x0F000000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x000000F0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x000000FF
	.4byte 0x00FFFFFF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x000FFFFF
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x0FFFFF00
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF0FFF0
	.4byte 0x0FFF0000
	.4byte 0x0FF0FF00
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FFFFFF0
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF0FF00
	.4byte 0x0FFF0000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0x000000FF
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x000FFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x00F000F0
	.4byte 0x000F0F00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0x0FF0F0FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x00FF0FF0
	.4byte 0x0000F000
	.4byte 0x00FF0FF0
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF000FF
	.4byte 0x0FF000FF
	.4byte 0x000F0FF0
	.4byte 0x0000FF00
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x00000FF0
	.4byte 0x000FFF00
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FFFFF0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFF00
	.4byte 0xFF000FF0
	.4byte 0xF0FFF0F0
	.4byte 0xF0FFFFF0
	.4byte 0xF0FFF0F0
	.4byte 0xFF000FF0
	.4byte 0x0FFFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000F0
	.4byte 0x0000F0FF
	.4byte 0x0000FFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x0000FFFF
	.4byte 0x0000FFFF
	.4byte 0x0000FFFF
	.4byte 0x000FF000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFF0
	.4byte 0x00FFF000
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFF00
	.4byte 0x00FFFF00
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x00FFF0FF
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FF00FF0
	.4byte 0x0FF00FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x00000FF0
	.4byte 0x000FFFF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x00FFFF00
	.4byte 0x00FFFF00
	.4byte 0x00FFF000
	.4byte 0x0FFFFFF0
	.4byte 0x0FF0FFF0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFF0FF
	.4byte 0x00FFF0FF
	.4byte 0
	.4byte 0
	.4byte 0x00FF0FF0
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x00FF0FFF
	.4byte 0x00FF0FF0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FFFF0
	.4byte 0x000FFFF0
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x00000FF0
	.4byte 0x000FFFF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFF00
	.4byte 0x00FFFF00
	.4byte 0x00FFFF00
	.4byte 0x000FF000
	.4byte 0x00FF0000
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FFF0FF0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0xFF000FF0
	.4byte 0xFF000FFF
	.4byte 0xFFFF00FF
	.4byte 0xFFFF0FFF
	.4byte 0xFFF00FFF
	.4byte 0x0FF00000
	.4byte 0x000FFF00
	.4byte 0x000FFF00
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFF00FF
	.4byte 0x00000FFF
	.4byte 0x000FFFF0
	.4byte 0x000FFF00
	.4byte 0x00FF0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0xFFFFF000
	.4byte 0xFF0FFFFF
	.4byte 0xFF00FFFF
	.4byte 0x00FF0000
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0xFFFF00FF
	.4byte 0xFFFF0FFF
	.4byte 0x0FFF0FF0
	.4byte 0x00FF0000
	.4byte 0x00FF0FF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FF0FFFF
	.4byte 0xFFF0FF00
	.4byte 0xFFFFFF00
	.4byte 0xFFFFF000
	.4byte 0x000FF000
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00FF0
	.4byte 0x0FFFFFF0
	.4byte 0x00FFFFF0
	.4byte 0x0000FF00
	.4byte 0x000FFF00
	.4byte 0x00FFF000
	.4byte 0x0FFF0000
	.4byte 0x0FFFF000
	.4byte 0x000FFF00
	.4byte 0x0000FFF0
	.4byte 0x0000FFF0
	.4byte 0x00000FF0
	.4byte 0xFF000FF0
	.4byte 0xFF0FFFFF
	.4byte 0xFF0FFFFF
	.4byte 0xFFFF0FF0
	.4byte 0xFFFF0FF0
	.4byte 0xFFF0FFF0
	.4byte 0x0FF0FF00
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FFFFF0
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFF0
	.4byte 0x0000FFF0
	.4byte 0x0FF00FF0
	.4byte 0x0FFFFF00
	.4byte 0x00FFFF00
	.4byte 0xFF000000
	.4byte 0xFFF00000
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0x0FF000FF
	.4byte 0x0FF00FFF
	.4byte 0x0FFFFFF0
	.4byte 0x00FFFF00
	.4byte 0x0000FF00
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00FFFF00
	.4byte 0x00FFFF00
	.4byte 0x000FFF00
	.4byte 0x000FFF00
	.4byte 0x000FF000
	.4byte 0x0000FF00
	.4byte 0x0FF0FF00
	.4byte 0x0FFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF00
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFF00
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF00
	.4byte 0x000FF000
	.4byte 0x000FFFF0
	.4byte 0x0000FFF0
	.4byte 0x00FF0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FF00000
	.4byte 0xFFFFF000
	.4byte 0xFF0FFFFF
	.4byte 0xFF00FFFF
	.4byte 0x000FF000
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFF00
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFF000FF
	.4byte 0x00000FFF
	.4byte 0x000FFFF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFF0
	.4byte 0x000FFF00
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FFFFF
	.4byte 0x0000FFFF
	.4byte 0x000FF000
	.4byte 0x000FF0FF
	.4byte 0x000FFFFF
	.4byte 0x00FFFFFF
	.4byte 0x0FFFFF00
	.4byte 0x0FF00000
	.4byte 0x0FFFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x00FF0000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FF00FF0
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFF0FFFFF
	.4byte 0xFF00FFF0
	.4byte 0
	.4byte 0xFF0FFFF0
	.4byte 0xFF0FFFF0
	.4byte 0xFF000000
	.4byte 0xFF000000
	.4byte 0xFFFFF000
	.4byte 0xFFFFFFFF
	.4byte 0xFF00FFFF
	.4byte 0x000FF000
	.4byte 0xFF0FF000
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFF0FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FF0FFF0
	.4byte 0x0FF00000
	.4byte 0x0FF00000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFFFFF
	.4byte 0x0FFF00FF
	.4byte 0xFFF0FFFF
	.4byte 0xFFF0FFFF
	.4byte 0x0FF0FFF0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFF0FF
	.4byte 0xFFFF00FF
	.4byte 0xFFFF0FFF
	.4byte 0x0FF00FF0
	.4byte 0x00000FF0
	.4byte 0xFF0FFFFF
	.4byte 0xFF0FFFFF
	.4byte 0xFF000FF0
	.4byte 0xFF0FFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FF0FFF0
	.4byte 0
	.4byte 0xFFFFFF00
	.4byte 0xFFFFFFFF
	.4byte 0xFFF0FFFF
	.4byte 0xFF000FF0
	.4byte 0xFF00FFF0
	.4byte 0xFFFFFF00
	.4byte 0x0FFFF000
	.4byte 0x00FF0000
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0xFFF0FFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFFF00
	.4byte 0xFF00FFFF
	.4byte 0x00000FFF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF0FFFFF
	.4byte 0xFF0FFFFF
	.4byte 0xFF0FFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FF0FFF0
	.4byte 0x0000FF00
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFF0
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFFF
	.4byte 0x0FFFF000
	.4byte 0x0FFFFFF0
	.4byte 0x000FFFF0
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF00
	.4byte 0x000FF000
	.4byte 0x00F00000
	.4byte 0xFFFFF000
	.4byte 0xFFFFFFFF
	.4byte 0x0FFF0FFF
	.4byte 0xFFFF0FFF
	.4byte 0xFFF000FF
	.4byte 0x0FFFFFFF
	.4byte 0x00FFFFF0
	.4byte 0x0000FF00
	.4byte 0xFF00FF00
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FFF0FF0
	.4byte 0x000FF000
	.4byte 0x0FFFF000
	.4byte 0x0FFFF000
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0x0FFFF0FF
	.4byte 0x00FFFFFF
	.4byte 0x000FFFF0
	.4byte 0x0FF00FF0
	.4byte 0x0FF0FFF0
	.4byte 0x0FFFFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFF0FFF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFF0
	.4byte 0x00FF0000
	.4byte 0x0000FF00
	.4byte 0xFF0FFFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0FFFFFF0
	.4byte 0x000FFF00
	.4byte 0x000FF000
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FFFF
	.4byte 0x0000FFFF
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x0FFFF000
	.4byte 0x0FFFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFFF
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFF00
	.4byte 0x0FFFFFF0
	.4byte 0x0FFF0FF0
	.4byte 0x0FFF0FF0
	.4byte 0x00FF0FF0
	.4byte 0x0000FFF0
	.4byte 0x000FFF00
	.4byte 0x000FF000
	.4byte 0x00FFFFF0
	.4byte 0x00FFFFF0
	.4byte 0x000FFF00
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x000FFFFF
	.4byte 0x000FFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF0FFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0x0FFF0FF0
	.4byte 0xFFF00FF0
	.4byte 0xFFF00FFF
	.4byte 0x0FF000FF
	.4byte 0x00FFFFF0
	.4byte 0x00FFFFF0
	.4byte 0x000FFF00
	.4byte 0x00FFFFF0
	.4byte 0x0FFFFFFF
	.4byte 0x0FF000FF
	.4byte 0x000FFFFF
	.4byte 0x000FFFF0
	.4byte 0x0FF00000
	.4byte 0x0FF0FFF0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFF0FF
	.4byte 0x0FFF00FF
	.4byte 0xFFF000FF
	.4byte 0xFFF00FFF
	.4byte 0x0FF00FF0
	.4byte 0x00FFF000
	.4byte 0x00FFF000
	.4byte 0x0FFF0000
	.4byte 0x0FFF0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFF0FF
	.4byte 0xFF0FFFFF
	.4byte 0xFF00FFF0
	.4byte 0
	.4byte 0xF00F0000
	.4byte 0x0F00F000
	.4byte 0x0F00F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0xF00F0000
	.4byte 0xF00F0000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0F00F000
	.4byte 0x0F00F000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x0F0F0000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0FFFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F000000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x00000FF0
	.4byte 0x00FFFFF0
	.4byte 0x00000FF0
	.4byte 0x00000F00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x0000FFF0
	.4byte 0x00FFFF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x00F000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00FFFFFF
	.4byte 0x0000FFF0
	.4byte 0x000FFFF0
	.4byte 0x00FF0FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFFFF
	.4byte 0x000FF0FF
	.4byte 0x000FF0F0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000FFFFF
	.4byte 0x000000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F0F0FF
	.4byte 0x00F0F0FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F000000
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x0000FFF0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x00FFFF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x00FF00FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00FFFFFF
	.4byte 0x0000FFF0
	.4byte 0x0000FFF0
	.4byte 0x000FFFF0
	.4byte 0x000F0FF0
	.4byte 0x00F00FF0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFFFF
	.4byte 0x000FF0FF
	.4byte 0x000FF0FF
	.4byte 0x000FF0FF
	.4byte 0x000FF0FF
	.4byte 0x00FF00FF
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00FFFFF0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0x000FFFFF
	.4byte 0x000FF0FF
	.4byte 0x000FF0FF
	.4byte 0x00FF00FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FFFFFF
	.4byte 0x0FF00FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x00FF0FF0
	.4byte 0x0FFFFFFF
	.4byte 0x00FF0FF0
	.4byte 0x00FF0FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00FFF0FF
	.4byte 0x000000FF
	.4byte 0x00FFF0FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FFF00
	.4byte 0x00FF0FF0
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0x00FF00FF
	.4byte 0x00FF00F0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x000FFFFF
	.4byte 0
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x000FF0FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FFFFF
	.4byte 0x000FF0FF
	.4byte 0x000FF0FF
	.4byte 0x00FF0FFF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00000FFF
	.4byte 0x00FFFF00
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00F0F0FF
	.4byte 0x00F0F0FF
	.4byte 0x00F0F0FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FFFF00
	.4byte 0x00FF0FF0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0x00FF0000
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000F0FF0
	.4byte 0x0000FF00
	.4byte 0x000FF0F0
	.4byte 0x00FF000F
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x0000FFF0
	.4byte 0x00FFFFFF
	.4byte 0x0FF0FF0F
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x00FF0FF0
	.4byte 0x00FF0FF0
	.4byte 0x00FF0FF0
	.4byte 0x00FF0FF0
	.4byte 0x00FF00FF
	.4byte 0x0FF000FF
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FFFFF0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x000FFFFF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00F0FF00
	.4byte 0x0F00FF00
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x00FFFFFF
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x00F0FF0F
	.4byte 0x00F0FF0F
	.4byte 0x00F0FF0F
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x00F0FF00
	.4byte 0x000FF000
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0000000F
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x00FF0FF0
	.4byte 0x00F00FFF
	.4byte 0x0FFFF0FF
	.4byte 0
	.4byte 0x00000FF0
	.4byte 0x000F0FF0
	.4byte 0x0000FF00
	.4byte 0x0000FFF0
	.4byte 0x000FF00F
	.4byte 0x00FF0000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0FFFFFFF
	.4byte 0x00FF00FF
	.4byte 0x000FF0F0
	.4byte 0x000FF000
	.4byte 0x0000FF00
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00000FF0
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000FFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x000F00FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x00F0FF00
	.4byte 0x00F0FF00
	.4byte 0x00F0FF00
	.4byte 0x00F0FF00
	.4byte 0x00F0FF0F
	.4byte 0x00F0FFFF
	.4byte 0x0F00FFF0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF0000
	.4byte 0x00FF00F0
	.4byte 0x00FF0F00
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FFFFFF
	.4byte 0
	.4byte 0x00FFFFFF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0000FF00
	.4byte 0
	.4byte 0x0FFFF000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000FF0
	.4byte 0x0FFFF000
	.4byte 0x00F00000
	.4byte 0xF00F0000
	.4byte 0x0F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF00000
	.4byte 0xF00F0000
	.4byte 0xF00F0000
	.4byte 0x0FF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801AF020
lbl_801AF020:

	# ROM: 0x1AC020
	.asciz "DEMOInit: invalid TV format\n"
	.byte 0x0A, 0x4E, 0x6F
	.asciz "w, try to find memory info file...\n\n"
	.byte 0x2F, 0x6D, 0x65
	.asciz "minfo.bin"
	.byte 0x0A, 0x43
	.asciz "an't find memory info file. Use /XXX toolname/ to maximize available\n"
	.byte 0x6D, 0x65
	.asciz "mory space. For now, we only use the first %dMB.\n"
	.byte 0x41, 0x6E
	.asciz " error occurred when issuing read to /meminfo.bin\n"
	.byte 0x73
	.asciz "tart: 0x%08x, end: 0x%08x\n"
	.byte 0x52
	.asciz "emoved 0x%08x - 0x%08x from the current heap\n"
	.balign 4

.global lbl_801AF170
lbl_801AF170:

	# ROM: 0x1AC170
	.4byte 0x00200000
	.4byte 0x000C0000
	.4byte 0x00B00000
	.4byte 0x00580000
	.4byte 0
	.asciz "HuMem> Failed OSAlloc Size:%d(left:%x)\n"
	.asciz "HuMem> left memory space %dKB(%d)\n"
	.byte 0x48
	.asciz "uMem> Failed OSAlloc left space\n"
	.balign 4
	.4byte 0

.global lbl_801AF1F8
lbl_801AF1F8:

	# ROM: 0x1AC1F8
	.asciz "HuMem>memory alloc error %08x(%08X): Call %08x\n"

.global lbl_801AF228
lbl_801AF228:

	# ROM: 0x1AC228
	.asciz "memory allocation(tail) error.\n"

.global lbl_801AF248
lbl_801AF248:

	# ROM: 0x1AC248
	.asciz "HuMem>memory free error. %08x( call %08x)\n"
	.byte 0x3D
	.asciz "======= HuMem heap dump %08x ========\n"
	.byte 0x4D
	.asciz "CB-----+Size----+MG+FL+Prev----+Next----+UNum----+Body----+Call----\n"
	.byte 0x25, 0x30, 0x38
	.asciz "x %08x %02x %02x %08x %08x %08x %08x %08x\n"
	.byte 0x4D
	.asciz "CB:%d(%d/%d) MEM:%08x(%08x/%08x)\n"
	.byte 0x3D, 0x3D
	.asciz "====== HuMem heap dump %08x end =====\n"
	.balign 4
	.4byte 0

.global lbl_801AF360
lbl_801AF360:

	# ROM: 0x1AC360
	.4byte 0x000000FF
	.4byte 0x000080FF
	.4byte 0x800000FF
	.4byte 0x800080FF
	.4byte 0x008000FF
	.4byte 0x008080FF
	.4byte 0x808000FF
	.4byte 0x808080FF
	.4byte 0x80808080
	.4byte 0x0000FFFF
	.4byte 0xFF0000FF
	.4byte 0xFF00FFFF
	.4byte 0x00FF00FF
	.4byte 0x00FFFFFF
	.4byte 0xFFFF00FF
	.4byte 0xFFFFFFFF

.global lbl_801AF3A0
lbl_801AF3A0:

	# ROM: 0x1AC3A0
	.asciz "process> malloc error size %d\n"

.global lbl_801AF3BF
lbl_801AF3BF:

	# ROM: 0x1AC3BF
	.byte 0x73
	.asciz "tack overlap error.(process pointer %x)\n"
	.balign 4
	.4byte 0

.global lbl_801AF3F0
lbl_801AF3F0:

	# ROM: 0x1AC3F0
	.asciz "Order Max Over!\n"

.global lbl_801AF401
lbl_801AF401:

	# ROM: 0x1AC401
	.byte 0x45, 0x72, 0x72
	.asciz "or: Sprite Max Over!\n"

.global lbl_801AF41A
lbl_801AF41A:

	# ROM: 0x1AC41A
	.byte 0x45, 0x72
	.asciz "ror: AnimNoSet Over %d\n"

.global lbl_801AF434
lbl_801AF434:

	# ROM: 0x1AC434
	.4byte 0x00200018
	.4byte 0x00100008
	.4byte 0x00040010
	.4byte 0x00080008
	.4byte 0x00040008
	.4byte 0x00047061
	.asciz "tNum %d,bankNum %d,bmpNum %d\n"
	.byte 0x50, 0x41
	.asciz "TTERN%d:\n"
	.byte 0x09, 0x6C
	.asciz "ayerNum %d,center (%d,%d),size (%d,%d)\n"
	.asciz "\t\tfileNo %d,flip %x\n"
	.byte 0x09, 0x09, 0x73
	.asciz "tart (%d,%d),size (%d,%d),shift (%d,%d)\n"
	.byte 0x42, 0x41, 0x4E
	.asciz "K%d:\n"
	.byte 0x09, 0x74
	.asciz "imeNum %d\n"
	.byte 0x09
	.asciz "\tpat %d,time %d,shift(%d,%d),flip %x\n"
	.byte 0x09, 0x70
	.asciz "ixSize %d,palNum %d,size (%d,%d)\n"
	.balign 4
	.4byte 0

.global lbl_801AF548
lbl_801AF548:

	# ROM: 0x1AC548
	.4byte lbl_80010ED0
	.4byte lbl_80010EF8
	.4byte lbl_80010EF8
	.4byte lbl_80010F20
	.4byte lbl_80010F74
	.4byte lbl_80010FC8
	.4byte lbl_80010FF0
	.4byte lbl_80011018
	.4byte lbl_80011040
	.4byte lbl_80011068
	.4byte lbl_80011090
	.4byte 0

.global lbl_801AF578
lbl_801AF578:

	# ROM: 0x1AC578
	.4byte lbl_80012794
	.4byte lbl_80012850
	.4byte lbl_80012508
	.4byte lbl_80012920
	.4byte lbl_800129EC
	.4byte lbl_80012AB8
	.4byte func_80012C4C
	.4byte func_80012C4C
	.4byte func_80012C4C
	.4byte lbl_80012B84

.global lbl_801AF5A0
lbl_801AF5A0:

	# ROM: 0x1AC5A0
	.4byte func_80014618
	.4byte func_80014618
	.4byte lbl_80013DDC
	.4byte lbl_80013DDC
	.4byte func_80014618
	.4byte lbl_80013F50
	.4byte lbl_80014140
	.4byte func_80014618
	.4byte func_80014618
	.4byte lbl_80014330
	.4byte lbl_800143DC

.global lbl_801AF5CC
lbl_801AF5CC:

	# ROM: 0x1AC5CC
	.asciz "Search Object Error %s\n"
	.4byte 0

.global lbl_801AF5E8
lbl_801AF5E8:

	# ROM: 0x1AC5E8
	.4byte 0x1E212427
	.asciz "*-0369"
	.balign 4

.global lbl_801AF5F4
lbl_801AF5F4:

	# ROM: 0x1AC5F4
	.4byte lbl_80014C44
	.4byte lbl_80014C54
	.4byte lbl_80014BF8
	.4byte lbl_80014C64
	.4byte lbl_80014C14
	.4byte lbl_80014C24
	.4byte lbl_80014C74
	.4byte func_80014C90
	.4byte func_80014C90
	.4byte lbl_80014C84

.global lbl_801AF61C
lbl_801AF61C:

	# ROM: 0x1AC61C
	.asciz "Error: DrawObjIdx Over\n"

.global lbl_801AF634
lbl_801AF634:

	# ROM: 0x1AC634
	.4byte lbl_800154AC
	.4byte lbl_800154BC
	.4byte lbl_80015460
	.4byte lbl_800154CC
	.4byte lbl_8001547C
	.4byte lbl_8001548C
	.4byte lbl_800154DC
	.4byte func_800154F8
	.4byte func_800154F8
	.4byte lbl_800154EC

.global lbl_801AF65C
lbl_801AF65C:

	# ROM: 0x1AC65C
	.4byte lbl_800151F4
	.4byte lbl_80015204
	.4byte lbl_800151A8
	.4byte lbl_80015214
	.4byte lbl_800151C4
	.4byte lbl_800151D4
	.4byte lbl_80015224
	.4byte func_80015240
	.4byte func_80015240
	.4byte lbl_80015234
	.4byte 0x3E800000
	.4byte 0
	.4byte 0
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBE800000
	.4byte 0
	.4byte 0xBF000000
	.4byte 0
	.4byte 0
	.4byte 0x3E800000
	.4byte 0xBF000000
	.4byte 0x00000010
	.4byte 0x00000014
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000015
	.4byte 0x00000019
	.4byte 0x00000012
	.4byte 0x00000016
	.4byte 0x0000001A
	.4byte 0x00000013
	.4byte 0x00000017
	.4byte 0x0000001B

.global lbl_801AF6E4
lbl_801AF6E4:

	# ROM: 0x1AC6E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x0000001C
	.4byte 0x0000001D
	.4byte 0x0000001E
	.4byte 0x0000001F

.global lbl_801AF714
lbl_801AF714:

	# ROM: 0x1AC714
	.asciz "Error: No Texture\n"
	.balign 4

.global lbl_801AF728
lbl_801AF728:

	# ROM: 0x1AC728
	.4byte lbl_8001B23C
	.4byte lbl_8001B2D8
	.4byte lbl_8001B374
	.4byte lbl_8001B410
	.4byte lbl_8001B084
	.4byte lbl_8001B0AC
	.4byte lbl_8001B05C
	.4byte lbl_8001B4AC
	.4byte func_8001B5BC
	.4byte lbl_8001B0D4
	.4byte lbl_8001B188
	.4byte lbl_8001B4D4

.global lbl_801AF758
lbl_801AF758:

	# ROM: 0x1AC758
	.4byte lbl_8001B8BC
	.4byte lbl_8001B8CC
	.4byte lbl_8001B870
	.4byte lbl_8001B8DC
	.4byte lbl_8001B88C
	.4byte lbl_8001B89C
	.4byte lbl_8001B8EC
	.4byte func_8001B908
	.4byte func_8001B908
	.4byte lbl_8001B8FC

.global lbl_801AF780
lbl_801AF780:

	# ROM: 0x1AC780
	.4byte lbl_8001BCAC
	.4byte lbl_8001BCBC
	.4byte lbl_8001BC60
	.4byte lbl_8001BCCC
	.4byte lbl_8001BC7C
	.4byte lbl_8001BC8C
	.4byte lbl_8001BCDC
	.4byte func_8001BCF8
	.4byte func_8001BCF8
	.4byte lbl_8001BCEC

.global lbl_801AF7A8
lbl_801AF7A8:

	# ROM: 0x1AC7A8
	.asciz "DLBuf Over >>>>>>>>>>>>>"

.global lbl_801AF7C1
lbl_801AF7C1:

	# ROM: 0x1AC7C1
	.byte 0x25, 0x78, 0x3A
	.asciz "%x:%x\n"

.global lbl_801AF7CB
lbl_801AF7CB:

	# ROM: 0x1AC7CB
	.byte 0x45
	.asciz "rror: Not Found %s for ObjPosGet\n"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801AF800
lbl_801AF800:

	# ROM: 0x1AC800
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010020
	.4byte 0x00200040
	.4byte 0x00400000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00400040
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte 0x00400040
	.4byte 0x00000040
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x080300D6
	.4byte 0x00400040
	.4byte 0x00001000
	.4byte 0x00000080
	.4byte 0x00000240
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0xE318F39C
	.4byte 0xF39CCE73
	.4byte 0xC631CA52
	.4byte 0xCE73DAD6
	.4byte 0xEB5AF7BD
	.4byte 0xF7BDF39C
	.4byte 0xE739DEF7
	.4byte 0xD6B5CE73
	.4byte 0xCE73CE73
	.4byte 0xD294DAD6
	.4byte 0xE318E739
	.4byte 0xEB5AE739
	.4byte 0xDAD6CA52
	.4byte 0xB9CEAD6B
	.4byte 0xA10898C6
	.4byte 0x98C694A5
	.4byte 0x88428842
	.4byte 0x8C6394A5
	.4byte 0x98C69CE7
	.4byte 0x98C694A5
	.4byte 0x90848C63
	.4byte 0x88428421
	.4byte 0x98C69CE7
	.4byte 0x9CE798C6
	.4byte 0x98C698C6
	.4byte 0x9CE7A529
	.4byte 0xAD6BB18C
	.4byte 0xB9CECE73
	.4byte 0xE739F7BD
	.4byte 0xE318C631
	.4byte 0xDEF7EB5A
	.4byte 0xF7BDF39C
	.4byte 0xEB5AE318
	.4byte 0xDAD6DAD6
	.4byte 0xDEF7E318
	.4byte 0xF39CFBDE
	.4byte 0xFBDEEF7B
	.4byte 0xDEF7C631
	.4byte 0xB5ADA94A
	.4byte 0x9CE78842
	.4byte 0x94A594A5
	.4byte 0x9CE7A108
	.4byte 0xA108A94A
	.4byte 0xB18CBDEF
	.4byte 0xF39CDEF7
	.4byte 0xC631C631
	.4byte 0xDAD6EB5A
	.4byte 0xF7BDEF7B
	.4byte 0xF39CEF7B
	.4byte 0xEF7BC210
	.4byte 0xAD6BA108
	.4byte 0x90849084
	.4byte 0x84218421
	.4byte 0xA108B5AD
	.4byte 0xBDEFD294
	.4byte 0xD294C210
	.4byte 0xCA52EB5A
	.4byte 0xE739D294
	.4byte 0xC210CA52
	.4byte 0xDEF7EF7B
	.4byte 0xD6B5B9CE
	.4byte 0xA94A9084
	.4byte 0x8C638C63
	.4byte 0x94A5AD6B
	.4byte 0xAD6BB5AD
	.4byte 0xC631CE73
	.4byte 0xC210C631
	.4byte 0xCA52D6B5
	.4byte 0xE739EF7B
	.4byte 0xF7BDFBDE
	.4byte 0xFBDEB18C
	.4byte 0xB18CBDEF
	.4byte 0xA529A529
	.4byte 0xA5299084
	.4byte 0x8C63A108
	.4byte 0xA94AB18C
	.4byte 0xB9CECA52
	.4byte 0xC210DEF7
	.4byte 0xF39CA94A
	.4byte 0xA94ABDEF
	.4byte 0xB9CEAD6B
	.4byte 0xB5ADC210
	.4byte 0xEF7BB9CE
	.4byte 0xBDEFDAD6
	.4byte 0xB18CA94A
	.4byte 0xB18CC210
	.4byte 0xB5AD8842
	.4byte 0x8421D294
	.4byte 0xD6B5B5AD
	.4byte 0x8C63A529
	.4byte 0xAD6BB9CE
	.4byte 0xB5ADBDEF
	.4byte 0xB9CEC210
	.4byte 0xCA52F7BD
	.4byte 0xBDEFD6B5
	.4byte 0xD2948C63
	.4byte 0xCA52D294
	.4byte 0xA529DEF7
	.4byte 0xA94AA108
	.4byte 0xE739EB5A
	.4byte 0xE318D6B5
	.4byte 0xD6B5E318
	.4byte 0xEF7BD294
	.4byte 0xFBDEE318
	.4byte 0xFBDEFBDE
	.4byte 0xE7398421
	.4byte 0x8000EB5A
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x00010200
	.4byte 0x03040506
	.4byte 0x11383901
	.4byte 0x3A033B05
	.4byte 0x57030C01
	.4byte 0x5859375A
	.4byte 0x6B6C6D08
	.4byte 0x09406E4B
	.4byte 0x0708090A
	.4byte 0x0B0C0D0E
	.4byte 0x113C3D39
	.4byte 0x3E3F4041
	.4byte 0x5B115C5D
	.4byte 0x5E47390B
	.4byte 0x6F5A7043
	.4byte 0x71013E47
	.4byte 0x0F101112
	.4byte 0x13141516
	.4byte 0x18424344
	.4byte 0x453D4647
	.4byte 0x40171740
	.4byte 0x5F5E483E
	.4byte 0x3E5E393E
	.4byte 0x473E5872
	.4byte 0x1718191A
	.4byte 0x1B1C1D1E
	.4byte 0x4839494A
	.4byte 0x4B4C4D32
	.4byte 0x603D6102
	.4byte 0x62136364
	.4byte 0x735A7475
	.4byte 0x76775D78
	.4byte 0x1F202122
	.4byte 0x23242526
	.4byte 0x4E31294F
	.4byte 0x221F1D26
	.4byte 0x65522F28
	.4byte 0x29662F2C
	.4byte 0x797A531D
	.4byte 0x2C232323
	.4byte 0x2728292A
	.4byte 0x2B20282C
	.4byte 0x2C265022
	.4byte 0x4F2B2A29
	.4byte 0x1E1D311F
	.4byte 0x67206869
	.4byte 0x2F302627
	.4byte 0x1F7B7C69
	.4byte 0x2D2E1E2F
	.4byte 0x302C2631
	.4byte 0x5152534E
	.4byte 0x31275123
	.4byte 0x291F1D6A
	.4byte 0x322C2751
	.4byte 0x217D7E30
	.4byte 0x32531D26
	.4byte 0x31303233
	.4byte 0x34353637
	.4byte 0x2351241D
	.4byte 0x54555636
	.4byte 0x24315151
	.4byte 0x2C54554C
	.4byte 0x262F2F24
	.4byte 0x271E657F
	.4byte 0x8081825C
	.4byte 0x603F0083
	.4byte 0x96979883
	.4byte 0x7246584A
	.4byte 0x33A1A2A3
	.4byte 0x0EA45E49
	.4byte 0x5496A8A0
	.4byte 0x3B0D5809
	.4byte 0x84748586
	.4byte 0x87888939
	.4byte 0x999A6C9A
	.4byte 0x3B129B5D
	.4byte 0x878598A5
	.4byte 0xA60403A7
	.4byte 0x0C0FABA5
	.4byte 0x989A5B10
	.4byte 0x8A8B488C
	.4byte 0x465D0705
	.4byte 0x9C025849
	.4byte 0x720E5A1A
	.4byte 0x00883A3C
	.4byte 0x6D85A0A8
	.4byte 0xAFB06D83
	.4byte 0x85796BA1
	.4byte 0x366B8D1B
	.4byte 0x8E8F425D
	.4byte 0x979D4D9E
	.4byte 0x4D961B9F
	.4byte 0x9DA93464
	.4byte 0x5635647F
	.4byte 0xA934AAAC
	.4byte 0x1A7998B1
	.4byte 0x455B6490
	.4byte 0x91925350
	.4byte 0x18710EA0
	.4byte 0x1B7F642D
	.4byte 0xAA043A3C
	.4byte 0xABAC569D
	.4byte 0xAA1BA087
	.4byte 0x18705780
	.4byte 0x931F5127
	.4byte 0x51506694
	.4byte 0x937D661F
	.4byte 0x51237E66
	.4byte 0x2C22AD66
	.4byte 0x5023237E
	.4byte 0x9E26B2AD
	.4byte 0x227E2351
	.4byte 0x69697C28
	.4byte 0x2C539525
	.4byte 0x7C696994
	.4byte 0x282F3295
	.4byte 0x677C69AE
	.4byte 0x20932F32
	.4byte 0x1F7BB221
	.4byte 0x2B206726
	.4byte 0x30312626
	.4byte 0x24242E92
	.4byte 0x522F2431
	.4byte 0x24272C1C
	.4byte 0x6A1D2423
	.4byte 0x2351262E
	.4byte 0x32531E24
	.4byte 0x2727314E
	.4byte 0x1CB31BAC
	.4byte 0x9F038801
	.4byte 0x95907AAA
	.4byte 0xB574B016
	.4byte 0x1C919EA1
	.4byte 0x4C983B43
	.4byte 0x1C653396
	.4byte 0x80AC57BA
	.4byte 0x3F3A116F
	.4byte 0x57367405
	.4byte 0x393F410F
	.4byte 0x829F6C84
	.4byte 0x3D390288
	.4byte 0x78865A5A
	.4byte 0x075D39BB
	.4byte 0x5D9BB010
	.4byte 0x86758604
	.4byte 0x9FB18E7A
	.4byte 0x5B3B5B6F
	.4byte 0x79A28D7A
	.4byte 0x3B19194B
	.4byte 0x6C818D7A
	.4byte 0x70378370
	.4byte 0x5A986BA1
	.4byte 0x96B456B5
	.4byte 0x986C8FAB
	.4byte 0x7A8DB61A
	.4byte 0x9F9A6C9F
	.4byte 0x961B6B1A
	.4byte 0x6CA3B7A5
	.4byte 0xA955AA81
	.4byte 0x798F9A8F
	.4byte 0x57B68081
	.4byte 0x6D447581
	.4byte 0x8F9FB56B
	.4byte 0x9A061304
	.4byte 0x986C9FB8
	.4byte 0xA5B9AF6D
	.4byte 0xBC36A6BC
	.4byte 0xB8579903
	.4byte 0xB4335194
	.4byte 0xAD7B5124
	.4byte 0x819D3293
	.4byte 0x7C7D7E26
	.4byte 0xB9A8922F
	.4byte 0x66AD6631
	.4byte 0x12A09E2E
	.4byte 0x23947D27
	.4byte 0x24512822
	.4byte 0x4F2B2A66
	.4byte 0x1E1E2F23
	.4byte 0x7B94694F
	.4byte 0x5295952E
	.4byte 0x3050B221
	.4byte 0x2D1C956A
	.4byte 0x532E2F7B
	.4byte 0x2F53322C
	.4byte 0x24261E52
	.4byte 0x66262D2E
	.4byte 0x2626252D
	.4byte 0x2122262D
	.4byte 0x252F1D32
	.4byte 0xAD2A2226
	.4byte 0x2D252F25
	.4byte 0x1D6A919E
	.4byte 0x9D8DACB7
	.4byte 0x2F1D9590
	.4byte 0x9E55AAB1
	.4byte 0x2E1E4E1C
	.4byte 0xC2A9A156
	.4byte 0x2C521D25
	.4byte 0xC59E9D64
	.4byte 0x755C5DBB
	.4byte 0x3E9C1718
	.4byte 0x9FC0185D
	.4byte 0x460A3F16
	.4byte 0xB5AB0359
	.4byte 0xA4BB3E01
	.4byte 0xB6A55AAF
	.4byte 0x005F8A47
	.4byte 0x0EBDAFBE
	.4byte 0x7084B8AA
	.4byte 0x004A1378
	.4byte 0xC1BAA6B1
	.4byte 0xA438C307
	.4byte 0xB00605A6
	.4byte 0x4677C659
	.4byte 0x13BD0F05
	.4byte 0x9D96B456
	.4byte 0x8179A663
	.4byte 0xAA9DA934
	.4byte 0x8E6BB1A0
	.4byte 0xB18E9DC4
	.4byte 0x7AB48DA8
	.4byte 0x8FA0B664
	.4byte 0x7A4D4DA9
	.4byte 0x8FAB9A6C
	.4byte 0x1A1AA375
	.4byte 0x36BC36B8
	.4byte 0x81B56C82
	.4byte 0x355697AA
	.4byte 0xAA6B369A
	.4byte 0xA94DC49D
	.4byte 0x1B56A63B
	.4byte 0x0E3B1B6A
	.4byte 0x26BF201F
	.4byte 0xAF124C91
	.4byte 0x1D7E7C93
	.4byte 0xB042A5C4
	.4byte 0x2E272967
	.4byte 0x444AA655
	.4byte 0x5326BF29
	.4byte 0x2E2E2F26
	.4byte 0x2F1E524E
	.4byte 0x1D1D301E
	.4byte 0x4E2C304E
	.4byte 0x304E5265
	.4byte 0x4D4D912D
	.4byte 0x314E2D92
	.4byte 0x1BAA8D7F
	.4byte 0x239469B2
	.4byte 0x312E4E2F
	.4byte 0x2E30674F
	.4byte 0x20502525
	.4byte 0x4E251E7E
	.4byte 0x94AD931D
	.4byte 0xC22D2525
	.4byte 0x24B24F67
	.4byte 0x662C521D
	.4byte 0x2E9096B4
	.4byte 0x21BF2C25
	.4byte 0x1D539EA1
	.4byte 0xBFAD7B1E
	.4byte 0x4E4E6555
	.4byte 0x31299423
	.4byte 0x4E2553C4
	.4byte 0xA8B19F86
	.4byte 0x43C7018A
	.4byte 0x97A2363B
	.4byte 0x6E4149BB
	.4byte 0x97A2A5B9
	.4byte 0x06A70C0B
	.4byte 0xAA81A5A3
	.4byte 0x86B0CB62
	.4byte 0x3E016288
	.4byte 0x764A4212
	.4byte 0x8A5E6040
	.4byte 0x0C00C80D
	.4byte 0x8A8C3E46
	.4byte 0x77177272
	.4byte 0x0A8B8A39
	.4byte 0x0160CC61
	.4byte 0x375B63A0
	.4byte 0xAC976464
	.4byte 0x18C91275
	.4byte 0x4B746374
	.4byte 0x383845CB
	.4byte 0x9B0DC300
	.4byte 0x7761CC60
	.4byte 0x0201463E
	.4byte 0x648D3581
	.4byte 0x9F847807
	.4byte 0x8599C1CA
	.4byte 0x3A1508C6
	.4byte 0xC7613F0B
	.4byte 0x3DC6C878
	.4byte 0x488B0200
	.4byte 0xCACD1184
	.4byte 0x7218ABA1
	.asciz "j0{}"
	.byte 0x73, 0xB7, 0x1B
	.4byte 0x951E5094
	.4byte 0xC105A564
	.4byte 0x6552247D
	.4byte 0x8F988164
	.4byte 0x90521D7E
	.4byte 0x231E2DB3
	.4byte 0xAA81B881
	.4byte 0x672F5233
	.4byte 0x8EB89FAB
	.4byte 0x7C24251C
	.4byte 0x34A2ABBA
	.4byte 0x94932C52
	.4byte 0x908E794B
	.4byte 0x5655C54E
	.4byte 0x4E26BFAD
	.4byte 0x36816433
	.4byte 0x521D3129
	.4byte 0x9974A097
	.4byte 0x92524E2F
	.4byte 0x8375B9A5
	.4byte 0x97922E4E
	.4byte 0x4E1F9422
	.4byte 0x2F252E90
	.4byte 0x4E3066AD
	.4byte 0x932C4E6A
	.4byte 0x254E2394
	.4byte 0xB231252E
	.4byte 0x4E4E2622
	.4byte 0xAD281E25
	.4byte 0x80A2A5A3
	.4byte 0xC0737617
	.4byte 0x34B6A56F
	.4byte 0x997344CF
	.4byte 0xB3A8A5B9
	.4byte 0x75731814
	.4byte 0x1CA1A2A6
	.4byte 0x86BE7807
	.4byte 0x600A478B
	.4byte 0x8A0A3901
	.4byte 0xC75F3ECE
	.4byte 0xCE488C0A
	.4byte 0x88C74958
	.4byte 0x398BCE47
	.4byte 0x59418817
	.4byte 0x49013ECE
	.4byte 0x02014639
	.4byte 0x0A47CE48
	.4byte 0x3939395E
	.4byte 0x0A47D0CE
	.4byte 0x3E5E3939
	.4byte 0xBB0A47CE
	.4byte 0xCE8C3958
	.4byte 0x778902BB
	.4byte 0x8A010C43
	.4byte 0xC14BA3A0
	.4byte 0x39617213
	.4byte 0x1184A6B8
	.4byte 0xCE5E61CB
	.4byte 0xBD19B979
	.4byte 0x3E8C0A49
	.4byte 0x3807123B
	.4byte 0xB5B6A81B
	.4byte 0x922E1D26
	.4byte 0xAC97647F
	.4byte 0x4D954E1D
	.4byte 0xB14C8EA1
	.4byte 0x9D926A4E
	.4byte 0x6C1AB6AA
	.4byte 0x80A19691
	.4byte 0x2294501E

.global lbl_801B0004
lbl_801B0004:

	# ROM: 0x1AD004
	.4byte 0x2EC29798

.global lbl_801B0008
lbl_801B0008:

	# ROM: 0x1AD008
	.4byte 0x24B2947E

.global lbl_801B000C
lbl_801B000C:

	# ROM: 0x1AD00C
	.4byte 0x1E2E9064

.global lbl_801B0010
lbl_801B0010:

	# ROM: 0x1AD010
	.4byte 0x4E266620

.global lbl_801B0014
lbl_801B0014:

	# ROM: 0x1AD014
	.4byte 0x7B2C521C

.global lbl_801B0018
lbl_801B0018:

	# ROM: 0x1AD018
	.4byte 0x521D2C50

.global lbl_801B001C
lbl_801B001C:

	# ROM: 0x1AD01C
	.4byte 0x7CB2514E

.global lbl_801B0020
lbl_801B0020:

	# ROM: 0x1AD020
	.4byte 0x4B70C0A3

.global lbl_801B0024
lbl_801B0024:

	# ROM: 0x1AD024
	.4byte 0xB564912E
	.4byte 0xB58F849A
	.4byte 0xA04C7A6A
	.4byte 0x96A8B1A0
	.4byte 0xB84C341C
	.4byte 0x2E1CA964
	.4byte 0xA88E7A95
	.4byte 0x1E4E1E93
	.4byte 0xADB2314E
	.4byte 0x302E4E7E
	.4byte 0xAD4F504E
	.4byte 0x536A4E1F
	.4byte 0x7C21292F
	.4byte 0x322D2F7E
	.4byte 0xB22AAD28
	.4byte 0x2E9297A0
	.4byte 0x82831278
	.4byte 0x256A9D6B
	.4byte 0x98827006
	.4byte 0x5225C57F
	.4byte 0xB6986F5B
	.4byte 0x1D252565
	.4byte 0xA16BA06C
	.4byte 0x42434A59
	.4byte 0x45C77746
	.4byte 0x1111CDAF
	.4byte 0x87A71416
	.4byte 0x05190519
	.4byte 0x70C18759
	.4byte 0xA3849A8F
	.4byte 0xA385C0AF
	.4byte 0x8B48BB3D
	.4byte 0x410D4A0D
	.4byte 0x3F0A015D
	.4byte 0x4A8384AB
	.4byte 0x40013940
	.4byte 0xB0AB81A8
	.4byte 0x9B62BB61
	.4byte 0x78BCA87A
	.4byte 0xC8C6610B
	.4byte 0xA4C7885C
	.4byte 0x8FB90F4A
	.4byte 0x59140808
	.4byte lbl_801BAA57
	.4byte 0x4B86AF13
	.4byte 0x9E4DC455
	.4byte 0x97B8B76C
	.4byte 0xCD4BA6A0
	.4byte 0xA26B35AA
	.4byte 0xC7CB7875
	.4byte 0x846C3698
	.4byte 0x38775808
	.4byte 0xC8CABE10
	.4byte 0x5BAF1460
	.4byte 0x3EBBCC08
	.4byte 0x5565524E
	.4byte 0x2622ADBF
	.4byte 0xA0B67F65
	.4byte 0x2E1E1F7D
	.4byte 0x3799A381
	.4byte 0xB4915230
	.4byte 0x15174543
	.4byte 0xC0A51B91
	.4byte 0x241D526A
	.4byte 0x909E3332
	.4byte 0x9428304E
	.4byte 0x4E1D2C26
	.4byte 0x507C2093
	.4byte 0x3052522E
	.4byte 0x52309320
	.4byte 0x4F663125
	.4byte 0x7E512328
	.4byte 0xB2212B7C
	.4byte 0x2194BF67
	.4byte 0x224FAE21
	.4byte 0x292121AD
	.4byte 0x942069D3
	.4byte 0x30672A68
	.4byte 0x69ADAD2B
	.4byte 0x2325524E
	.4byte 0xC59D97A2
	.4byte 0x29275252
	.4byte 0x1E2D9E1B
	.4byte 0x6929234E
	.4byte 0x2D1D1E95
	.4byte 0xD42B7D7E
	.4byte 0x2C2D522C
	.4byte 0xA098A51A
	.4byte 0x1A798F04
	.4byte 0x35A281A2
	.4byte 0xA281B8BC
	.4byte 0xC4B48EA8
	.4byte 0xA8A84CA2
	.4byte 0x4EC5C4A1
	.4byte 0x1B1B80AA
	.4byte 0x0F595F3F
	.4byte 0x76A68D96
	.4byte 0x5AAF1501
	.4byte 0x1504A89D
	.4byte 0x988542A4
	.4byte 0x0B0EB17F
	.4byte 0xB6A5045C
	.4byte 0x5F400556
	.4byte 0x348E564C
	.4byte 0xACB81AAC
	.4byte 0x80AC1A57
	.4byte 0xBC3657A0
	.4byte 0xB4AC98A6
	.4byte 0x9FBC9879
	.4byte 0x7F56A59F
	.4byte 0x9857B798
	.4byte 0xA2B5BC5A
	.4byte 0x8715018C
	.4byte 0xAC35A8AA
	.4byte 0x565775CA
	.4byte 0x361AB68E
	.4byte 0x559D8DA2
	.4byte 0x79989881
	.4byte 0x8E9D4D96
	.4byte 0xD0D1CE8A
	.4byte 0x58000379
	.4byte 0x9BCF4545
	.4byte 0x176158D2
	.4byte 0x368FA38F
	.4byte 0x6C85B017
	.4byte 0xB4974C4C
	.4byte 0x56973598
	.4byte 0xA1544E31
	.4byte 0x7B4F697D
	.4byte 0x8381966A
	.4byte 0x4E26674F
	.4byte 0x61140497
	.4byte 0xC2324E27
	.4byte 0x0F3840CA
	.4byte 0xB7A1C552
	.4byte 0x252F7E94
	.4byte 0x2B212020
	.4byte 0xB32E1D23
	.4byte 0x94694F94
	.4byte 0xB5A9321E
	.4byte 0x50AD684F
	.4byte 0xC91A4D2E
	.4byte 0x1E7E4F21
	.4byte 0x69AE684F
	.4byte 0x22511D2E
	.4byte 0x94202A68
	.4byte 0x68AD6631
	.4byte 0x29BF2994
	.4byte 0x69682129
	.4byte 0xB2679367
	.4byte 0x29206969
	.4byte 0x4E2C5265
	.4byte 0xC47A557F
	.4byte 0x25522C2C
	.4byte 0x5333C4C4
	.4byte 0x5125324E
	.4byte 0x2C2E5492
	.4byte 0x7C282C2D
	.4byte 0x25301D95
	.4byte 0x644CA54B
	.4byte 0x445F008F
	.4byte 0x96B456B8
	.4byte 0x5A590BC3
	.4byte 0x4DA97F97
	.4byte 0xB85BCB5F
	.4byte 0x9033B334
	.4byte 0xA81AC088
	.4byte 0x8D1B6B98
	.4byte 0x98A557B7
	.4byte 0x361B80A2
	.4byte 0x3636A598
	.4byte 0x18A0B48D
	.4byte 0x819836A0
	.4byte 0x8942B5B4
	.4byte 0x97AC5798
	.4byte 0x579898A5
	.4byte 0xA28E554D
	.4byte 0xBC9FBC79
	.4byte 0xB54C647F
	.4byte 0xA5369F36
	.4byte 0x1AA25664
	.4byte 0xA079B7BC
	.4byte 0xA0B56BAA
	.4byte 0xB3A95534
	.4byte 0x55964DA9
	.4byte 0xA9B3C292
	.4byte 0x9292B3B3
	.4byte 0x55C4B392
	.4byte 0x929E969D
	.4byte 0x1B559696
	.4byte 0x967A34A1
	.4byte 0x80988762
	.4byte 0x38995633
	.4byte 0x9E7A974B
	.4byte 0x41D50FAC
	.4byte 0x559D96A1
	.4byte 0x793C62BD
	.4byte 0x1B648055
	.4byte 0x34A26E08
	.4byte 0x15C91A4D
	.4byte 0x2E2C7EAD
	.4byte 0x11C60EB8
	.4byte 0x9E523067
	.4byte 0x560F15BD
	.4byte 0xACC25226
	.4byte 0x7F6BBD08
	.4byte 0xCD359025
	.4byte 0x4F222850
	.4byte 0x7E7B294F
	.4byte 0x2A947B1F
	.4byte 0x51237E67
	.4byte 0x224F221F
	.4byte 0x3131271F
	.4byte 0x247D4F66
	.4byte 0x27301D2C
	.4byte 0x2B4F672F
	.4byte 0x2E25301E
	.4byte 0x20682BB2
	.4byte 0x51252E2C
	.4byte 0x7B7C2B69
	.4byte 0xB251252E
	.4byte 0x247E2921
	.4byte 0x2B94504E
	.4byte 0x5365C29E
	.4byte 0x5597B875
	.4byte 0x2C326590
	.4byte 0xB3558DB1
	.4byte 0x302F2D65
	.4byte 0x334D9D1B
	.4byte 0x2D2C3032
	.4byte 0x65334D9D
	.4byte 0x0C5FB0B6
	.4byte 0x8056ACA5
	.4byte 0x7072D586
	.4byte 0x568D354C
	.4byte 0xA2703814
	.4byte 0x744C4CA8
	.4byte 0xB41A6D72
	.4byte 0x075AB58E
	.4byte 0x57A03636
	.4byte 0xA5B56B97
	.4byte 0xB1A5A0A0
	.4byte 0x1AB56BAA
	.4byte 0x974CB8B8
	.4byte 0xB5A24C8E
	.4byte 0xB4B4A8A2
	.4byte 0xAC4C9764
	.4byte 0x807F9D96
	.4byte 0x969D7F80
	.4byte 0x1B7F9D7A
	.4byte 0x9D55341B
	.4byte 0xB4557AA9
	.4byte 0xA97A55A1
	.4byte 0xA19DA94D
	.4byte 0xC4A97A34
	.4byte 0x8DAAA8A8
	.4byte 0xB49D5603
	.4byte 0x8DA86BB6
	.4byte 0x4C8D34A8
	.4byte 0x64A84CA2
	.4byte 0xB581AA34
	.4byte 0x1BAA35AC
	.4byte 0xB1B1B68E
	.4byte 0x6434AC42
	.4byte 0x0875AA54
	.4byte 0x4C1BA136
	.4byte 0x0D00B9B4
	.4byte 0xB6977FB4
	.4byte 0x8F3AC3B7
	.4byte 0x4CA88055
	.4byte 0xA870170E
	.4byte 0x1E1F7C94
	.4byte 0x93265232
	.4byte 0x6A2C7E20
	.4byte 0x7C1F4E95
	.4byte 0x7A5330BF
	.4byte 0x4FBF3053
	.4byte 0xB1925227
	.4byte 0x7D942352
	.4byte 0x2E1E2322
	.4byte 0x4F69207E
	.4byte 0x541C2E2F
	.4byte 0x287C694F
	.4byte 0x95951C95
	.4byte 0x4E232921
	.4byte 0x2D4E2C4E
	.4byte 0x53323067
	.4byte 0x4E2D2C2F
	.4byte 0x2D6592C4
	.4byte 0x7B1E5230
	.4byte 0x3053909E
	.4byte 0x2A672C52
	.4byte 0x1E4EC5B3
	.4byte 0x4F4F6730
	.4byte 0x521E2591
	.4byte 0x9680576D
	.4byte 0xC8439AB6
	.4byte 0xA97A6498
	.4byte 0x12C8435A
	.4byte 0x96A9551B
	.4byte 0x79BD724A
	.4byte 0xA97A9D7A
	.4byte 0xA1849B72
	.4byte 0xB49D7F8E
	.4byte 0xA8A88EB4
	.4byte 0xB11BC496
	.4byte 0xA11BB434
	.4byte 0x70A064A9
	.4byte 0x9EA99696
	.4byte 0x3ACD57A8
	.4byte 0x7AB3B392
	.4byte 0x55964DB3
	.4byte 0xB3B39E96
	.4byte 0x969EC292
	.4byte 0xB392929E
	.4byte 0x4D92B3C4
	.4byte 0x96A99E92
	.4byte 0xC2B37A7F
	.4byte 0x1B807FA9
	.4byte 0x7F8D9735
	.4byte 0xACB1B1AC
	.4byte 0x7AA18D97
	.4byte 0x4CACB181
	.4byte 0x9E7AA18D
	.4byte 0xA86BACAC
	.4byte 0x9EB3A97F
	.4byte 0x64AA564C
	.4byte 0x8D64A17A
	.4byte 0x7FA54415
	.4byte 0xA9A9C4B3
	.4byte 0x966BBE08
	.4byte 0xA9A99DA1
	.4byte 0x8E818615
	.4byte 0xACAC811A
	.4byte 0x576F8777
	.4byte 0x19641C1E
	.4byte 0x2820662C
	.4byte 0x13A0C42E
	.4byte 0x31227C27
	.4byte 0xD25A8DC5
	.4byte 0x1D1FB293
	.4byte 0x61AFB14D
	.4byte 0x32262229
	.4byte 0x2E2C2727
	.4byte 0x261D2E25
	.4byte 0x4E2C2C52
	.4byte 0x2E4E2C4E
	.4byte 0x1E252565
	.4byte 0x4DB3C525
	.4byte 0x314E5290
	.4byte 0x34801B7A
	.4byte 0x232021BF
	.4byte 0x2F524E2E
	.4byte 0x5231292A
	.4byte 0x2926254E
	.4byte 0x1D521E67
	.4byte 0x4F942325
	.4byte 0x5452254E
	.4byte 0x1F20AD7E
	.4byte 0x914D96A9
	.4byte 0xB3A11944
	.4byte 0x25654DA9
	.4byte 0xB3B38E5B
	.4byte 0x4E4E91B3
	.4byte 0x9E924D8E
	.4byte 0x4E522E65
	.4byte 0xB39E4DC4
	.4byte 0x085D075A
	.4byte 0xB597A19D
	.4byte 0x44A43F16
	.4byte 0x4205B7B5
	.4byte 0xB9C9715E
	.4byte 0x3E8900CA
	.4byte 0x809F113C
	.4byte 0xD53F8A8A
	.4byte 0x7A348D56
	.4byte 0x6B4C35AA
	.4byte 0x8181B898
	.4byte 0xB76CBC79
	.4byte 0x0370700F
	.4byte 0x6EB06EBE
	.4byte 0x09588977
	.4byte 0xCC0B9CCC
	.4byte 0x1B7A4DC4
	.4byte 0x7AA1808D
	.4byte 0xB56B8D7F
	.4byte 0x964DC4A9
	.4byte 0xC06FBCB1
	.4byte 0x56803496
	.4byte 0x0800070F
	.4byte 0xB9B7A081
	.4byte 0x75C0836D
	.4byte 0x42CB7739
	.4byte 0x3D3D490B
	.4byte 0x013E8B3E
	.4byte 0xD0D0488B
	.4byte 0x8C396071
	.4byte 0x3E8C393F
	.4byte 0x6117C8A7
	.4byte 0x58A7B77F
	.4byte 0x531E507C
	.4byte 0x77076F56
	.4byte 0x904E2422
	.4byte 0xCB0E04B1
	.4byte 0x9D6A1E7E
	.4byte 0x6E10851A
	.4byte 0x8D905230
	.4byte 0x932C5265
	.4byte 0x7F56AC35
	.4byte 0x7D274E53
	.4byte 0xA956B1B8
	.4byte 0x20672C25
	.4byte 0x541B8179
	.4byte 0x66201F4E
	.4byte 0x3292AA1A
	.4byte 0x809E5325
	.4byte 0x253122AD
	.4byte 0xA2A855C5
	.4byte 0x4E1D26BF
	.4byte 0x57A5AC80
	.4byte 0x33251D30
	.4byte 0xA66336B1
	.4byte 0x8DC2524E
	.4byte 0x671E2D6A
	.4byte 0xC24DA9A9
	.4byte 0x217D2653
	.4byte 0x334D7A55
	.4byte 0x672A7D4E
	.4byte 0x65965555
	.4byte 0x2C932067
	.4byte 0x2D9EA1A1
	.4byte 0x4DB4B1A3
	.4byte 0x83CA4562
	.4byte 0x964DA1B6
	.4byte 0xA5AB05CD
	.4byte 0x34A9C4A1
	.4byte 0x97AC1A9F
	.4byte 0x7FB47AA9
	.4byte 0x9D1B97AC
	.4byte 0x018C4848
	.4byte 0xCED0D0CE
	.4byte 0x429B0C40
	.4byte 0x7760589C
	.4byte 0xB9BAC178
	.4byte 0xA776CB45
	.4byte 0xB836A684
	.4byte 0xBA0F6E42
	.4byte 0x8C8A3989
	.4byte 0x72076D11
	.4byte 0x093E8B48
	.4byte 0x8CBB9C61
	.4byte 0x0C71493F
	.4byte 0x3ECECED0
	.4byte 0x3CC8CF0C
	.4byte 0x5D603FBB
	.4byte 0x60CCA408
	.4byte 0x38C3CAC1
	.4byte 0x89CC4971
	.4byte 0x88767837
	.4byte 0x0B0B5F62
	.4byte 0xC6CB43C1
	.4byte 0x3E3E3901
	.4byte 0x49C69B78
	.4byte 0xBA4B9A79
	.4byte 0xB69D6A25
	.4byte 0x4BA3B7A0
	.4byte 0xB1AA4D53
	.4byte 0x1974981A
	.4byte 0xB5B664C2
	.4byte 0x70B9981A
	.4byte 0xB5814C1B
	.4byte 0x31297D27
	.4byte 0x4E329EA8
	.4byte 0x5224B27D
	.4byte 0x514E32B3
	.4byte 0x2E252629
	.4byte 0x941F1D2E
	.4byte 0x92322526
	.4byte 0x29AD7E1E
	.4byte 0xA0AB9A98
	.4byte 0xA2809025
	.4byte 0xAAB59879
	.4byte 0x1A6B341C
	.4byte 0x65344CB1
	.4byte 0xB14C80B3
	.4byte 0x1D324D8D
	.4byte 0x353564A9
	.4byte 0x252C677C
	.4byte 0x2F6555B4
	.4byte 0x4E2530BF
	.4byte 0x7B4EB3A1
	.4byte 0x2E4E4E1F
	.4byte 0xB21F1CA9
	.4byte 0x6A1D2530
	.4byte 0x667C1D54
	.4byte 0x8080A1A9
	.4byte 0xC4A97F64
	.4byte 0x648E8DB4
	.4byte 0x96C496A1
	.4byte 0x808D8E8D
	.4byte 0xB47AA97A
	.4byte 0x9D808DAA
	.4byte 0x64B49D9D
	.4byte 0x56B6B11A
	.4byte 0x9FB90583
	.4byte 0x80AA4CA2
	.4byte 0xB8799A19
	.4byte 0x7F80AA35
	.4byte 0xA21ABC85
	.4byte 0x34A180AA
	.4byte 0x4CB1A563
	.4byte 0x6E4344C8
	.4byte 0xCF0C1677
	.4byte 0xCDCA3CC8
	.4byte 0xCF0C713D
	.4byte 0x706E18C8
	.4byte 0x72D53D61
	.4byte 0x3B11CACB
	.4byte 0xC7770239
	.4byte 0x48CED1D0
	.4byte 0x3E60C744
	.4byte 0x39393E8C
	.4byte 0x8B8C3F15
	.4byte 0x6077A489
	.4byte 0x468C8A60
	.4byte 0x155918C3
	.4byte 0xC60B3E0A
	.4byte 0xCD0563A0
	.4byte 0xB5A2AC4C
	.4byte 0x43838557
	.4byte 0xB881ACB6
	.4byte 0xCFB099AB
	.4byte 0xA0B881AC
	.4byte 0x7714125B
	.4byte 0x6CA0B581
	.4byte 0x80B32D4E
	.4byte 0x2F66AD66
	.4byte 0x35644D53
	.4byte 0x251D7E20
	.4byte 0xA2ACAAA9
	.4byte 0x95521D23
	.4byte 0xB1B5814C
	.4byte 0xA191521E
	.4byte 0x2F1D2554
	.4byte 0x7A1BA1A9
	.4byte 0xB2241D25
	.4byte 0x2D5492C2
	.4byte 0x9420504E
	.4byte 0x521D1D52
	.4byte 0x24BF20BF
	.4byte 0x264E1D2F
	.4byte 0xC51D1D4E
	.4byte 0x1F7D234E
	.4byte 0x1C1E1E52
	.4byte 0x2F67B21F
	.4byte 0x52302C2D
	.4byte 0x4E512929
	.4byte 0x2751302E
	.4byte 0x252F934F
	.4byte 0x657AA18D
	.4byte 0x8E80B4A1
	.4byte 0x4E904D55
	.4byte 0x1B1B801B
	.4byte 0x51256592
	.4byte 0x7A34A180
	.4byte 0x66242E95
	.4byte 0x91C455B4
	.4byte 0x34557F80
	.4byte 0x976BB179
	.4byte 0xA15555A1
	.4byte 0x64974CB1
	.4byte 0x1BB4557F
	.4byte 0xA11B97AC
	.4byte 0x641B7F55
	.4byte 0x5534B4AA
	.4byte 0x74C07841
	.4byte 0x62468A8B
	.4byte 0x985A12C8
	.4byte 0x62398C3E
	.4byte 0x1A63835C
	.4byte 0x08463E46
	.4byte 0xACA08412
	.4byte 0x00605E9C
	.4byte 0xD2781011
	.4byte 0xAFC3A40A
	.4byte 0x4087BA3B
	.4byte 0x05067689
	.4byte 0x0188C185
	.4byte 0x6F5B6D41
	.4byte 0x01023A11
	.4byte 0x82B9BA0E
	.4byte 0x5E5D4AC1
	.4byte 0x5B8FA51A
	.4byte 0x3EBB7118
	.4byte 0x035B8F98
	.4byte 0x608A3916
	.4byte 0x5C030584
	.4byte 0x0C01473F
	.4byte 0x0C07BE75
	.4byte 0xB5B81AA0
	.4byte 0xB1A8C453
	.4byte 0xA0A036A6
	.4byte 0x8F36A21B
	.4byte 0x8F9F634B
	.4byte 0xBAC04B6C
	.4byte 0x055B5BC0
	.4byte 0x03BDCA6D
	.4byte 0x1D307E20
	.4byte 0x20281D32
	.4byte 0x902E4E2F
	.4byte 0x664F7D51
	.4byte 0x4C7A1C52
	.4byte 0x1D50942A
	.4byte 0x3B36AAC2
	.4byte 0x2D252666
	.4byte 0x2E4E2553
	.4byte 0x2D1E26AD
	.4byte 0x4E53C554
	.4byte 0x531E1E66
	.4byte 0xB21F1D32
	.4byte 0x2D1D2527
	.4byte 0x2A206724
	.4byte 0x2C255331
	.4byte 0x4F67262D
	.4byte 0x6A959255
	.4byte 0x21AD6726
	.4byte 0x2D323233
	.4byte 0xBFAD7C7B
	.4byte 0x312E2D2E
	.4byte 0x2329214F
	.4byte 0x22512E32
	.4byte 0xB41BB434
	.4byte 0x7A969DA1
	.4byte 0x967FA17F
	.4byte 0x7A4DB3C4
	.4byte 0xC592A996
	.4byte 0xC4335465
	.4byte 0x2552C590
	.4byte 0x90C5322D
	.4byte 0x8EAC793B
	.4byte 0x135D3901
	.4byte 0x7FAA81B7
	.4byte 0x75765FBB
	.4byte 0x929D8EA2
	.4byte 0x6C11CF9C
	.4byte 0x5365C41B
	.4byte 0xB6BC83CF
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010020
	.4byte 0x00200040
	.4byte 0x00400000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00400040
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte 0x00400040
	.4byte 0x00000040
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x08030040
	.4byte 0x00400040
	.4byte 0x00001000
	.4byte 0x00000080
	.4byte 0x00000100
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x80968097
	.4byte 0x809784B7
	.4byte 0x84B784D8
	.4byte 0x88D88CF8
	.4byte 0x8CF89119
	.4byte 0x91399539
	.4byte 0x955A995A
	.4byte 0x9D7A9D9B
	.4byte 0xA19BA1BB
	.4byte 0xA5BCA5DC
	.4byte 0xA9DCA9FC
	.4byte 0xAE1DAE1D
	.4byte 0xB23DB63E
	.4byte 0xB65EBA7E
	.4byte 0xBA7FBE7F
	.4byte 0xBE9FBE9F
	.4byte 0xACC2ACE2
	.4byte 0xACE2B0E3
	.4byte 0xB103B503
	.4byte 0xB504B524
	.4byte 0xB925B945
	.4byte 0xBD45BD66
	.4byte 0xC166C187
	.4byte 0xC587C5A7
	.4byte 0xC9A8C9C8
	.4byte 0xCDC8CDE9
	.4byte 0xD1E9D20A
	.4byte 0xD60AD62A
	.4byte 0xDA2BDA4B
	.4byte 0xDE4CDE4C
	.4byte 0xDE6CE26D
	.4byte 0xE28DE28D
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.asciz "        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########        !!!!!!!!\"\"\"\"\"\"\"\"########$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''$$$$$$$$%%%%%%%%&&&&&&&&''''''''(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++(((((((())))))))********++++++++,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////,,,,,,,,--------........////////000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333300000000111111112222222233333333000000001111111122222222333333330000000011111111222222223333333344444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777444444445555555566666666777777774444444455555555666666667777777744444444555555556666666677777777444444445555555566666666777777778888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;8888888899999999::::::::;;;;;;;;<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????<<<<<<<<========>>>>>>>>????????"
	.byte 0x01, 0x00, 0x01
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010020
	.4byte 0x00200040
	.4byte 0x00400000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00400040
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte 0x00400040
	.4byte 0x00000040
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x10010000
	.4byte 0x00400040
	.4byte 0x00002000
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0xB5AAB5AA
	.4byte 0xB589B189
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9CA
	.4byte 0xB169B189
	.4byte 0xAD68AD68
	.4byte 0xB9AAB5AA
	.4byte 0xB58AB589
	.4byte 0xB9CBB9CA
	.4byte 0xB9CAB9CB
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xB189B189
	.4byte 0xAD69AD69
	.4byte 0xB189B189
	.4byte 0xB189B189
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB18A
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB189B5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB189B189
	.4byte 0xB9AAB9CA
	.4byte 0xB189B5AA
	.4byte 0xB5AAB9AA
	.4byte 0xB589B5A9
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9CAB5AA
	.4byte 0xB589B58A
	.4byte 0xB9CAB9AA
	.4byte 0xB5AAB9AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB589B589
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB58AB58A
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB589B589
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB589
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9CA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9CA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9CA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xB9CABDCB
	.4byte 0xBDCBBDCB
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB589
	.4byte 0xB5AAB9AA
	.4byte 0xB5AAB589
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB189
	.4byte 0xB9AAB9AA
	.4byte 0xB5A9B189
	.4byte 0xB589B189
	.4byte 0xB189B589
	.4byte 0xB189B189
	.4byte 0xB189B589
	.4byte 0xB189B189
	.4byte 0xB189B189
	.4byte 0xB189B189
	.4byte 0xB189B189
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B5AA
	.4byte 0xB189B589
	.4byte 0xB589B5AA
	.4byte 0xB589B5A9
	.4byte 0xB5AAB5A9
	.4byte 0xB589B5AA
	.4byte 0xB589B589
	.4byte 0xB5AAB5AA
	.4byte 0xB589B589
	.4byte 0xB5AAB9AA
	.4byte 0xB589B189
	.4byte 0xB5A9B5A9
	.4byte 0xB5AAB5AA
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB589B589
	.4byte 0xB5A9B5AA
	.4byte 0xB589B589
	.4byte 0xB5AAB5AA
	.4byte 0xB589B589
	.4byte 0xB5A9B5A9
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5A9B5A9
	.4byte 0xB5AAB5AA
	.4byte 0xB589B589
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5A9B5A9
	.4byte 0xB9AAB9AA
	.4byte 0xB589B589
	.4byte 0xB5A9B5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB5A9B5A9
	.4byte 0xBDCBBDEC
	.4byte 0xC60DCA2E
	.4byte 0xCA2ED692
	.4byte 0xEB17EB38
	.4byte 0xB9AAB9CA
	.4byte 0xB9CABDCB
	.4byte 0xB5AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xCA2ECA2F
	.4byte 0xCE4FCE4F
	.4byte 0xEB37EB38
	.4byte 0xEB37EB17
	.4byte 0xB9AAB5AA
	.4byte 0xB5A9B589
	.4byte 0xB589B189
	.4byte 0xB188B588
	.4byte 0xD692D692
	.4byte 0xDA92DA93
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xB589B589
	.4byte 0xB189B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xDEB3DEB3
	.4byte 0xDEB3DEB3
	.4byte 0xFFFEFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xB5A9B5A9
	.4byte 0xB5A9B5AA
	.4byte 0xB589B589
	.4byte 0xB5A9B9AA
	.4byte 0xDEB4E2D4
	.4byte 0xDEB3D250
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEEF59
	.4byte 0xB9AAB9AA
	.4byte 0xB5AAB5A9
	.4byte 0xB9AAB9AA
	.4byte 0xB5A9B589
	.4byte 0xC60DC60D
	.4byte 0xC1ECCA0E
	.4byte 0xD271CE4F
	.4byte 0xCA4FD270
	.4byte 0xB589B589
	.4byte 0xB189B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xD671DEB3
	.4byte 0xDEB3DEB3
	.4byte 0xEB37FFFE
	.4byte 0xFFFFFFFF
	.4byte 0xB5A9B5A9
	.4byte 0xB5A9B5AA
	.4byte 0xB589B589
	.4byte 0xB5A9B5A9
	.4byte 0xDEB4E2D4
	.4byte 0xE2D4E2D4
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xB5AAB5A9
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xE2D5E2D5
	.4byte 0xDEB3DEB3
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFF
	.4byte 0xB189B589
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xB189B188
	.4byte 0xDEB3DEB3
	.4byte 0xD692D692
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xB589B5A9
	.4byte 0xB5A9B5A9
	.4byte 0xB188B589
	.4byte 0xB589B589
	.4byte 0xDA92DA93
	.4byte 0xDAB3DEB3
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFF
	.4byte 0xB5A9B5A9
	.4byte 0xB5A9B5A9
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xDAB3DEB3
	.4byte 0xDEB3DEB3
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xB589B589
	.4byte 0xB5A9B5A9
	.4byte 0xB189B189
	.4byte 0xB589B589
	.4byte 0xD270D270
	.4byte 0xD271D271
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xB5AAB5AA
	.4byte 0xB5AAB5AA
	.4byte 0xB589B589
	.4byte 0xB589B589
	.4byte 0xD271D671
	.4byte 0xD671D270
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFDE
	.4byte 0xB9AAB5AA
	.4byte 0xB9AAB9AA
	.4byte 0xB589B189
	.4byte 0xB589B589
	.4byte 0xD250CA2E
	.4byte 0xCA2ECA2E
	.4byte 0xFFDEFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xB9AAB9AA
	.4byte 0xB9AAB9AA
	.4byte 0xB589B5A9
	.4byte 0xB5AAB9AA
	.4byte 0xCA2EC1ED
	.4byte 0xBDCBBDCB
	.4byte 0xF79BDED4
	.4byte 0xCA2FCA2E
	.4byte 0xD270EB16
	.4byte 0xFFBCFFBC
	.4byte 0xC60DCA4E
	.4byte 0xCE4FCE4F
	.4byte 0xBDCBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xFBBCFFBC
	.4byte 0xFB9CFB9B
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xFFDEFFDE
	.4byte 0xFFFDFFDD
	.4byte 0xD691D671
	.4byte 0xD670D270
	.4byte 0xBDCBBDEB
	.4byte 0xBDEBBDEB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xD270D270
	.4byte 0xD270D270
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDF79A
	.4byte 0xD270D26F
	.4byte 0xD26FCE4F
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xD692CA2E
	.4byte 0xCA2ECA2E
	.4byte 0xC60CBDCB
	.4byte 0xBDEBBDEB
	.4byte 0xBDEBBDCB
	.4byte 0xB9CAB9CA
	.4byte 0xC1ECBDCB
	.4byte 0xB9CAB9CA
	.4byte 0xDEB3FB9B
	.4byte 0xFFDDFFDD
	.4byte 0xC1ECCA4E
	.4byte 0xD26FCE4F
	.4byte 0xB9CABDCB
	.4byte 0xC1EBC1EB
	.4byte 0xB9CABDCB
	.4byte 0xC1EBC1EC
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFBC
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xFFDCFFBC
	.4byte 0xFFDDFFDD
	.4byte 0xCE4ECE4F
	.4byte 0xD26FCE4F
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EC
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xCE4FCE4F
	.4byte 0xD270D270
	.4byte 0xC1EBC1EB
	.4byte 0xBDCBBDEB
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xD270D270
	.4byte 0xD26FCE4F
	.4byte 0xBDEBBDEB
	.4byte 0xBDEBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xD270D270
	.4byte 0xD270D270
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xBDEBBDEB
	.4byte 0xBDEBBDEB
	.4byte 0xFFDDFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xD270D270
	.4byte 0xD270D26F
	.4byte 0xBDEBBDEB
	.4byte 0xBDEBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xFFDDFFDE
	.4byte 0xFFDDFFDD
	.4byte 0xCE4FD270
	.4byte 0xD270D270
	.4byte 0xC1EBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xC1ECBDEB
	.4byte 0xBDEBBDEB
	.4byte 0xF379D691
	.4byte 0xCE4FCE4F
	.4byte 0xCA2EC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xBDCBBDCA
	.4byte 0xB9CABDCA
	.4byte 0xBDCBBDCB
	.4byte 0xBDCBBDCB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA2ECA4E
	.4byte 0xCA4FCA4E
	.4byte 0xDF17F39B
	.4byte 0xF39CF39C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA4ECA4F
	.4byte 0xCA4FCA4F
	.4byte 0xF39CF39C
	.4byte 0xF39CF39C
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xF39CF39C
	.4byte 0xF39CF39C
	.4byte 0xC1EBC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA2EC1EC
	.4byte 0xC20DCA4E
	.4byte 0xEB59CA4F
	.4byte 0xD292F37B
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xF7BCF7BC
	.4byte 0xF7BCF3BB
	.4byte 0xC1ECC1EB
	.4byte 0xBDCBBDCA
	.4byte 0xC1ECC1EC
	.4byte 0xBDCBBDCB
	.4byte 0xCA4ECA4E
	.4byte 0xCA2ECA2E
	.4byte 0xF3BCF3BC
	.4byte 0xF39BF39B
	.4byte 0xBDCBBDCB
	.4byte 0xC1EBC1EC
	.4byte 0xBDCBBDCB
	.4byte 0xC1EBC1EC
	.4byte 0xCA2ECA2E
	.4byte 0xCA2EC20C
	.4byte 0xF3BBF39C
	.4byte 0xEF7ACE92
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC60DCA4E
	.4byte 0xCA4ECA4E
	.4byte 0xD6B4EF7B
	.4byte 0xF7BCF79C
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA4ECA4E
	.4byte 0xCA2ECA4E
	.4byte 0xF7BCF7BC
	.4byte 0xF79CF79C
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xCA4ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xF79CF79C
	.4byte 0xF7BCF3BC
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA4E
	.4byte 0xF3BBF3BC
	.4byte 0xF3BCF3BB
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xF3BBF3BB
	.4byte 0xF3BCEF7A
	.4byte 0xBDEBBDEB
	.4byte 0xC1EBC1EB
	.4byte 0xBDEBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC20D
	.4byte 0xCA2ECA2E
	.4byte 0xCE72D2B4
	.4byte 0xEF7BF79C
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA4E
	.4byte 0xF39CF7BC
	.4byte 0xF7BCF79C
	.4byte 0xC1EBBDEB
	.4byte 0xBDEBBDEB
	.4byte 0xC1ECBDEB
	.4byte 0xBDEBBDEB
	.4byte 0xCA4ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xF79CF79C
	.4byte 0xF79CF39C
	.4byte 0xBDEBBDEB
	.4byte 0xBDEBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xC1EBC1EB
	.4byte 0xCA2ECA2E
	.4byte 0xC60DBDEB
	.4byte 0xF39CF39B
	.4byte 0xDAF6C210
	.4byte 0xCA2ECA4F
	.4byte 0xCA4FCE4F
	.4byte 0xC60CC60C
	.4byte 0xC60CC60D
	.4byte 0xC60CC60C
	.4byte 0xC60DCA2D
	.4byte 0xD270D270
	.4byte 0xD270D26F
	.4byte 0xCE4FCA4F
	.4byte 0xCA4FCA4F
	.4byte 0xC60DC60C
	.4byte 0xC60CC20C
	.4byte 0xCA2DCA0D
	.4byte 0xC60DC60D
	.4byte 0xCE4FCE4F
	.4byte 0xCE4ECE4E
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA4E
	.4byte 0xC1ECC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC20CC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA2ECA4E
	.4byte 0xCE4FCE4F
	.4byte 0xCA2EC1EC
	.4byte 0xC60DCA4E
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xD26FD26F
	.4byte 0xD270D270
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xC20CC20C
	.4byte 0xC20CC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC20C
	.4byte 0xD270D270
	.4byte 0xD270D670
	.4byte 0xCA4ECA4F
	.4byte 0xCA4ECA4E
	.4byte 0xC20CC60C
	.4byte 0xC1ECC1EC
	.4byte 0xC60CC60C
	.4byte 0xC1ECC1EC
	.4byte 0xD270D271
	.4byte 0xCE4FCE4F
	.4byte 0xCA4ECA4E
	.4byte 0xCA4EC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCA4ECA2E
	.4byte 0xCA4ECA4E
	.4byte 0xC60DCA4E
	.4byte 0xCA4ECA4F
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC60C
	.4byte 0xCE4ECE4E
	.4byte 0xCE4FD270
	.4byte 0xCA4FCA4F
	.4byte 0xCA4ECA4E
	.4byte 0xC20CC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC60CC60C
	.4byte 0xC1ECC1EC
	.4byte 0xD270D671
	.4byte 0xD270D270
	.4byte 0xCA4ECA4E
	.4byte 0xCA2ECA2E
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC1EC
	.4byte 0xC1EBC1EC
	.4byte 0xD270D270
	.4byte 0xD24FCE4F
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xCE4FD270
	.4byte 0xD270D270
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xC20CC20C
	.4byte 0xC20CC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC60CC60C
	.4byte 0xD270D670
	.4byte 0xD670D691
	.4byte 0xC1ECC20D
	.4byte 0xCA2ECA2E
	.4byte 0xBDEBBDEB
	.4byte 0xC1EBC1EB
	.4byte 0xBDEBC1EB
	.4byte 0xC1EBC1EC
	.4byte 0xCE4FCE4F
	.4byte 0xD270D270
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xC1EBC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xD270D24F
	.4byte 0xD270D670
	.4byte 0xCA4ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xC60CBDEB
	.4byte 0xBDEBC1EB
	.4byte 0xC1ECBDEB
	.4byte 0xBDEBC1EB
	.4byte 0xD691CE4F
	.4byte 0xD270D270
	.4byte 0xCA2ECA4E
	.4byte 0xCA2DBDEC
	.4byte 0xC1EBC1EB
	.4byte 0xC1ECC20C
	.4byte 0xC1ECC1EC
	.4byte 0xC1ECC1EC
	.4byte 0xD270D270
	.4byte 0xCE4FD270
	.4byte 0xD692D691
	.4byte 0xD270CE4F
	.4byte 0xC62DC60D
	.4byte 0xC60DC60D
	.4byte 0xCA2ECA2E
	.4byte 0xCA2DCA2D
	.4byte 0xCA4FCA4F
	.4byte 0xCA4FCA4E
	.4byte 0xCE4FCE4E
	.4byte 0xCA4ECA4E
	.4byte 0xC60DC60D
	.4byte 0xC60DC60D
	.4byte 0xCA2DC60D
	.4byte 0xC60DC60D
	.4byte 0xCA4ECA2E
	.4byte 0xC60DC60D
	.4byte 0xCA4ECE4F
	.4byte 0xCE4FCE6F
	.4byte 0xC60DC60D
	.4byte 0xCA2DCA2D
	.4byte 0xC1ECC1EC
	.4byte 0xC60DC60D
	.4byte 0xC20CC60C
	.4byte 0xC60DC60D
	.4byte 0xD270D270
	.4byte 0xD691D691
	.4byte 0xCA2ECA2D
	.4byte 0xCA2DCA2D
	.4byte 0xC60DC62D
	.4byte 0xC62DCA2E
	.4byte 0xC60DC62D
	.4byte 0xCA2ECA2E
	.4byte 0xD691D691
	.4byte 0xD691D691
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA4E
	.4byte 0xCA4ECA4E
	.4byte 0xCA4ECA4F
	.4byte 0xCE4FCE4F
	.4byte 0xD691D691
	.4byte 0xD270D271
	.4byte 0xCA2DC60D
	.4byte 0xC60DC60D
	.4byte 0xCA2EB9CB
	.4byte 0xC62DCA2E
	.4byte 0xCE4FCA4F
	.4byte 0xCA2ECA2E
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xC60DC60D
	.4byte 0xC60DC60D
	.4byte 0xCA2EC62D
	.4byte 0xC62DCA2D
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FD691
	.4byte 0xC60DC60D
	.4byte 0xCA2DCA2E
	.4byte 0xCA2DCA2E
	.4byte 0xCA4ECA4E
	.4byte 0xCA2ECA4F
	.4byte 0xCE4FCE4F
	.4byte 0xD691D691
	.4byte 0xD691D691
	.4byte 0xCA2DC60D
	.4byte 0xC62DCA2D
	.4byte 0xCA2EB9CB
	.4byte 0xCA2ECA2E
	.4byte 0xCE4FCA4F
	.4byte 0xCA2ECA2E
	.4byte 0xD691D691
	.4byte 0xD691D691
	.4byte 0xCA2DCA2E
	.4byte 0xC1ECC20C
	.4byte 0xCA4ECA4E
	.4byte 0xC60DBDEC
	.4byte 0xCA4FCA4F
	.4byte 0xCA2EC62E
	.4byte 0xD271D691
	.4byte 0xD692D692
	.4byte 0xC60DC60D
	.4byte 0xC62DCA2E
	.4byte 0xC62ECA2E
	.4byte 0xCA2ECA4E
	.4byte 0xCA2ECA2E
	.4byte 0xCA4ECA4F
	.4byte 0xD692D692
	.4byte 0xD692D6B2
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCA4ECA4E
	.4byte 0xCE4ECE4E
	.4byte 0xCA4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xD692D692
	.4byte 0xD692D692
	.4byte 0xC1ECC1EC
	.4byte 0xC20CC1EC
	.4byte 0xC20DCA2E
	.4byte 0xCA4FC60D
	.4byte 0xC60DC62E
	.4byte 0xC62ECA2E
	.4byte 0xD691D691
	.4byte 0xD692D692
	.4byte 0xC20CC60D
	.4byte 0xC60DC62D
	.4byte 0xBDCCC62E
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCA4FCA4F
	.4byte 0xDAB2D692
	.4byte 0xD692D692
	.4byte 0xCA2EC1EC
	.4byte 0xC1ECC20C
	.4byte 0xCA4EC20D
	.4byte 0xCA2ECA4F
	.4byte 0xCA4FC60D
	.4byte 0xC62ECA2E
	.4byte 0xD692D691
	.4byte 0xD271D691
	.4byte 0xC1ECC20C
	.4byte 0xC60DC60D
	.4byte 0xC62EBDCC
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA4F
	.4byte 0xD691D691
	.4byte 0xD271D691
	.4byte 0xCA50CA50
	.4byte 0xCE71D271
	.4byte 0xC1ECC1ED
	.4byte 0xB18B9D07
	.4byte 0xCE70CE70
	.4byte 0xA96B90C6
	.4byte 0xD271D270
	.4byte 0xCE4FCE4F
	.4byte 0xCE71CE50
	.4byte 0xCE50CE71
	.4byte 0x98E798E7
	.4byte 0x94E694C6
	.4byte 0x88A588A6
	.4byte 0x88858885
	.4byte 0xC60DCA2E
	.4byte 0xCA2ECA2E
	.4byte 0xCA4FCA50
	.4byte 0xCA4FCA4F
	.4byte 0x9D079907
	.4byte 0x9D089D07
	.4byte 0x8CA68CA6
	.4byte 0x8CA68CA6
	.4byte 0xCA2ECA2E
	.4byte 0xCA2ECA2F
	.4byte 0xCA4FCA4F
	.4byte 0xCE50CE70
	.4byte 0x9D07A128
	.4byte 0xA128A128
	.4byte 0x8CA68CA6
	.4byte 0x90A690C6
	.4byte 0xCA4FCA4F
	.4byte 0xCE4FCA4F
	.4byte 0xCE70CE50
	.4byte 0xCE50CE70
	.4byte 0xA528A528
	.4byte 0xA127A107
	.4byte 0x90C690C6
	.4byte 0x90A68CA6
	.4byte 0xCA4FCE4F
	.4byte 0xCA4FCA4F
	.4byte 0xCE50CE50
	.4byte 0xCE50CA50
	.4byte 0xA107A128
	.4byte 0xA528AD69
	.4byte 0x8CA690A6
	.4byte 0x90C69D08
	.4byte 0xCA4FCE4F
	.4byte 0xCA4FCA4F
	.4byte 0xCA4FCA4F
	.4byte 0xCE50CE70
	.4byte 0xBDECB58A
	.4byte 0xB589B589
	.4byte 0xCE70B9CC
	.4byte 0xB9ABB9CB
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xCE70CE50
	.4byte 0xCE70CE70
	.4byte 0xB189B5AB
	.4byte 0xAD6AA549
	.4byte 0xB5ABBDCD
	.4byte 0xAD8C9908
	.4byte 0xCE4FCE4F
	.4byte 0xCE4FCE4F
	.4byte 0xCE50CE50
	.4byte 0xCA4FCA4F
	.4byte 0xA549A549
	.4byte 0xA549A549
	.4byte 0x94E894E8
	.4byte 0x94E794E7
	.4byte 0xCE4FCE4F
	.4byte 0xCE50CE50
	.4byte 0xCE50CE70
	.4byte 0xCE71CE70
	.4byte 0xA549A528
	.4byte 0xA549A548
	.4byte 0x94E794C7
	.4byte 0x99089908
	.4byte 0xCE50D270
	.4byte 0xD270D270
	.4byte 0xCE50CA50
	.4byte 0xCA4FCA50
	.4byte 0xA549B18B
	.4byte 0xC1ECC1EC
	.4byte 0x9908B1AD
	.4byte 0xCE70CE70
	.4byte 0xCE70D270
	.4byte 0xD270D270
	.4byte 0xCE70CE70
	.4byte 0xCE70CE70
	.4byte 0xC1ECBDEC
	.4byte 0xAD8AA128
	.4byte 0xCE70CE70
	.4byte 0xA98C90E7
	.4byte 0xCE50CE70
	.4byte 0xD270D270
	.4byte 0xCE71CE71
	.4byte 0xCE71CE70
	.4byte 0xA128A127
	.4byte 0xA128A128
	.4byte 0x90C690C6
	.4byte 0x90C690C6
	.4byte 0xD271D271
	.4byte 0xD271D271
	.4byte 0xCE71CE70
	.4byte 0xCE50CA50
	.4byte 0xA127A127
	.4byte 0xA127A127
	.4byte 0x90C690C6
	.4byte 0x8CC690C6
	.4byte 0xD271CE70
	.4byte 0xD270D271
	.4byte 0xCA50CE71
	.4byte 0xCE71D271
	.4byte 0xA127A127
	.4byte 0xA127A128
	.4byte 0x8CC68CC6
	.4byte 0x90C690C6
	.4byte 0xD271D271
	.4byte 0xD271D291
	.4byte 0xCE71CE71
	.4byte 0xCE70CE50
	.4byte 0xA127A128
	.4byte 0xA128AD6A
	.4byte 0x90C690C6
	.4byte 0x94E7A98B
	.4byte 0xB5ACD291
	.4byte 0xD2918885
	.4byte 0xC20FC62F
	.4byte 0xA96C8485
	.4byte 0xBDEEBDED
	.4byte 0xB1CE90C7
	.4byte 0xAD68A947
	.4byte 0xAD6AB18C
	.4byte 0x84858485
	.4byte 0x84858485
	.4byte 0x84858485
	.4byte 0x84858485
	.4byte 0x88A688A6
	.4byte 0x88A688A6
	.4byte 0xB1ADAD8B
	.4byte 0xA969A928
	.4byte 0x88858885
	.4byte 0x888588A5
	.4byte 0x88858885
	.4byte 0x88858885
	.4byte 0x94E794E7
	.4byte 0x94E790C6
	.4byte 0xA524A945
	.4byte 0xAD45AD46
	.4byte 0x88A58885
	.4byte 0x88858485
	.4byte 0x88868885
	.4byte 0x88858885
	.4byte 0x94E790C7
	.4byte 0x98E89908
	.4byte 0xAD45AD25
	.4byte 0xBDA8B9C9
	.4byte 0x888588A5
	.4byte 0x84858485
	.4byte 0x8CA68CA6
	.4byte 0x88858485
	.4byte 0x94E794C7
	.4byte 0x8CA688A5
	.4byte 0xC1C9D0A5
	.4byte 0xD0A5D0A5
	.4byte 0x84858886
	.4byte 0x8CA69D08
	.4byte 0x848588A6
	.4byte 0x8CC6A549
	.4byte 0x8CA68CA6
	.4byte 0x9907B5CC
	.4byte 0xA947A106
	.4byte 0xA525B987
	.4byte 0xC62DC60D
	.4byte 0xBDECBDCB
	.4byte 0xD690D270
	.4byte 0xC62EC20D
	.4byte 0xB9AAC1ED
	.4byte 0xD291D691
	.4byte 0xACE4A4E5
	.4byte 0xC1EDB9A9
	.4byte 0xC62ECA2F
	.4byte 0xBE30ADAD
	.4byte 0xB5CEAD8C
	.4byte 0xAD8CAD8C
	.4byte 0xAD8CCA51
	.4byte 0xCA51AD8C
	.4byte 0x9908B18A
	.4byte 0xB18AA549
	.4byte 0xA14A9D09
	.4byte 0xB1AD9908
	.4byte 0xAD8CD691
	.4byte 0xD293D292
	.4byte 0xD691AD8C
	.4byte 0xB9EFB9ED
	.4byte 0x98E7A528
	.4byte 0xA96BA128
	.4byte 0xB1ADA14B
	.4byte 0x94E890E8
	.4byte 0xCA51CA51
	.4byte 0x90E890E8
	.4byte 0xDED4CA51
	.4byte 0xB1CEA56C
	.4byte 0xB9CAC20E
	.4byte 0xB9A9B16A
	.4byte 0x90E8B1AE
	.4byte 0xD691D691
	.4byte 0x90E8B1CE
	.4byte 0xD691D691
	.4byte 0xB1CEB9F0
	.4byte 0xD691D271
	.4byte 0xB9A9B9A9
	.4byte 0xB9A9B9A8
	.4byte 0xD691D691
	.4byte 0xA98C88A6
	.4byte 0xD691D691
	.4byte 0xA98C88A6
	.4byte 0xDAD3D691
	.4byte 0xA98C88A6
	.4byte 0x9CC2B9CA
	.4byte 0xA54A9509
	.4byte 0x88A688A6
	.4byte 0x88A688A6
	.4byte 0x88A688A6
	.4byte 0x88A688A6
	.4byte 0x88A588A5
	.4byte 0x88A688A5
	.4byte 0x950890E7
	.4byte 0x8CC58CA5
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x848490E7
	.4byte 0x950890E7
	.4byte 0x88A588A5
	.4byte 0x88A588A5
	.4byte 0x88A584A5
	.4byte 0x88A588A5
	.4byte 0x84A588A5
	.4byte 0x88A588A5
	.4byte 0x8CC690E7
	.4byte 0x90E888A5
	.4byte 0x88A588A6
	.4byte 0x8CC7A98C
	.4byte 0x88A588A6
	.4byte 0x8CC6AD8D
	.4byte 0x88A588A6
	.4byte 0x8CC6ADAD
	.4byte 0x8CC690E7
	.4byte 0x9508A12A
	.4byte 0xB166E569
	.4byte 0xC8C4E549
	.4byte 0xA4C4B566
	.4byte 0xD0A5C8C4
	.4byte 0xACC5D106
	.4byte 0xE967E967
	.4byte 0xACA4C4E7
	.4byte 0xD0A5D0A5
	.4byte 0xE549C8C4
	.4byte 0xC8C4E56A
	.4byte 0xC8C4C8C4
	.4byte 0xC8C4C8C4
	.4byte 0xE967E967
	.4byte 0xE967E967
	.4byte 0xD0A5D0A5
	.4byte 0xD0A5D0A5
	.4byte 0xC8C4D0A5
	.4byte 0xD0A5B166
	.4byte 0xD0A5D0A5
	.4byte 0xD0A5B566
	.4byte 0xE967E967
	.4byte 0xE967E967
	.4byte 0xD0A5D0A5
	.4byte 0xD0A5D0A5
	.4byte 0xB1678C62
	.4byte 0xD0A5D0A5
	.4byte 0xB566D0A5
	.4byte 0xA4419D2C
	.4byte 0xE967E967
	.4byte 0xE967E967
	.4byte 0xD0A5D0A5
	.4byte 0xD0A5D0A5
	.4byte 0xC5EBAD68
	.4byte 0xD0A5D0A5
	.4byte 0xA041A528
	.4byte 0xA927D0A5
	.4byte 0xE967E967
	.4byte 0xE967E1D0
	.4byte 0xB9CDC16B
	.4byte 0xD4E6D4C5
	.4byte 0xD0A5D0A5
	.4byte 0xD0A59C21
	.4byte 0xD0A5D0A5
	.4byte 0xCA2DD271
	.4byte 0xE654DE13
	.4byte 0xDA34E31A
	.4byte 0xD4E6DCE7
	.4byte 0xDD08D94B
	.4byte 0x9C219C21
	.4byte 0x9C219C21
	.4byte 0xB18B8000
	.4byte 0x9C21B168
	.4byte 0xE2FAEDF0
	.4byte 0xF1AEE98C
	.4byte 0xD92AD4C7
	.4byte 0xD4A6D0A5
	.4byte 0x9C219C21
	.4byte 0x9C219CA2
	.4byte 0x9C21AD4C
	.4byte 0x9C219C21
	.4byte 0xE98CED6B
	.4byte 0xED6BED6A
	.4byte 0xD0A5D4A4
	.4byte 0xD0A4D4A4
	.4byte 0x8C41A948
	.4byte 0xB5ACB5AD
	.4byte 0x9C219C21
	.4byte 0x9C219C21
	.4byte 0xED69ED48
	.4byte 0xED68ED69
	.4byte 0xD4A4D8C4
	.4byte 0xDCC5DCE6
	.4byte 0xC20CC60E
	.4byte 0xD0A5D0A5
	.4byte 0x9C21B9AB
	.4byte 0x9C219C21
	.4byte 0xED68E968
	.4byte 0xE968ED89
	.4byte 0xDCE5D0E6
	.4byte 0xD4E4D8E4
	.4byte 0xD0A5D0A5
	.4byte 0xB8A3B8A3
	.4byte 0x9CC58864
	.4byte 0x8C639063
	.4byte 0xED69ED69
	.4byte 0xED68ED68
	.4byte 0xD8E4D8E5
	.4byte 0xDCE5DCE5
	.4byte 0xB8A3B8A3
	.4byte 0xB8A3B8A3
	.4byte 0x98A4A928
	.4byte 0xAD699C21
	.4byte 0xED69ED68
	.4byte 0xED48ED69
	.4byte 0xDCE6DCC5
	.4byte 0xD8C4D4A4
	.4byte 0xB8A3B8A3
	.4byte 0xB8A3B8A3
	.4byte 0x8C89D0A5
	.4byte 0xA947D0A5
	.4byte 0xED6AED6B
	.4byte 0xED6BE98C
	.4byte 0xD4A4D0A4
	.4byte 0xD4A4D0A5
	.4byte 0xB8A3B8A3
	.4byte 0xB8A39D07
	.4byte 0xBDC8C60B
	.4byte 0xCA2D9CE9
	.4byte 0xE98CF1AE
	.4byte 0xEDF0E967
	.4byte 0xD0A5D4A6
	.4byte 0xD4C7D92B
	.4byte 0x94C498E5
	.4byte 0xAD28BDA9
	.4byte 0x9484B16A
	.4byte 0xB58AC084
	.4byte 0xE967D926
	.4byte 0xB8A4AC83
	.4byte 0xDD4CD0E8
	.4byte 0xAC62A442
	.4byte 0xAD25A925
	.4byte 0xB587AD46
	.4byte 0x9082A0E5
	.4byte 0xA904A4E4
	.4byte 0xB8A4B0C6
	.4byte 0xACC6B0E7
	.4byte 0xA4629C41
	.4byte 0xA442AC62
	.4byte 0xB0A4C8C4
	.4byte 0xD4E5D4E5
	.4byte 0xC14BE189
	.4byte 0xEE2DE5A9
	.4byte 0x8C64A92A
	.4byte 0xE2F5F755
	.4byte 0x94608C40
	.4byte 0xA928C1EE
	.4byte 0xD4E5D4E5
	.4byte 0xD4E5D4E5
	.4byte 0xE5A8E5A8
	.4byte 0xE188E168
	.4byte 0xF313EED2
	.4byte 0xF2D2EEB0
	.4byte 0xC62ECA4F
	.4byte 0xD291D692
	.4byte 0xD0A5D0A5
	.4byte 0xD0A5D0A5
	.4byte 0xDD29E149
	.4byte 0xE149E569
	.4byte 0xEED3F715
	.4byte 0xF316F758
	.4byte 0xCED7CAB5
	.4byte 0xC253BA31
	.4byte 0xD4C5D4C5
	.4byte 0xD4C5D548
	.4byte 0xE56AEE2F
	.4byte 0xE58BD1D0
	.4byte 0xFB9AE319
	.4byte 0xA12B8844
	.4byte 0xB9F0A109
	.4byte lbl_80208840
	.4byte 0xD0A5D0A5
	.4byte 0xD4E6D4C6
	.4byte 0xC14DA843
	.4byte 0xBC84E0E7
	.4byte 0x8402A508
	.4byte 0xD252DA11
	.4byte 0x8C409083
	.4byte 0x9D07A4C6
	.4byte 0xD0A5DCC6
	.4byte 0xD8A5D0A5
	.4byte 0xE0E7D8A5
	.4byte 0xD4A5D4A4
	.4byte 0xD14BC8A5
	.4byte 0xC884CC83
	.4byte 0xA0A3A061
	.4byte 0xA062C0A2
	.4byte 0xD484D484
	.4byte 0xD084D084
	.4byte 0xD484D083
	.4byte 0xD083D083
	.4byte 0xCC83CC83
	.4byte 0xCC83D083
	.4byte 0xD0C3CCC2
	.4byte 0xD0A3C083
	.4byte 0xD084D083
	.4byte 0xD083D083
	.4byte 0xD083C843
	.4byte 0xAC01A400
	.4byte 0xD0E6C56A
	.4byte 0xC989C1AB
	.4byte 0xA0E794E9
	.4byte 0x8D2B954C
	.4byte 0xD0A3DD48
	.4byte 0xD907D4A4
	.4byte 0xB885B5AE
	.4byte 0xB0E6D907
	.4byte 0x9CA88C43
	.4byte 0xBD49B0E6
	.4byte 0x80448021
	.4byte 0x8CA6BD49
	.4byte 0xD4A4C8C4
	.4byte 0xD0E3D4E3
	.4byte 0xD4A4D4A4
	.4byte 0xDDC9E1E9
	.4byte 0xD907D4A4
	.4byte 0xF755F755
	.4byte 0xB4E6D0C2
	.4byte 0xCA4FD270
	.4byte 0xD503D4E3
	.4byte 0xD4E3D8E4
	.4byte 0xDD86E1E9
	.4byte 0xE22CD965
	.4byte 0xF734F312
	.4byte 0xEF13EEF1
	.4byte 0xD693DED3
	.4byte 0xDED4D6D3
	.4byte 0xD4C4D907
	.4byte 0xDD48D0A3
	.4byte 0xD503B4E6
	.4byte 0xB5AEB885
	.4byte 0xF2D0C168
	.4byte 0x8C439CA8
	.4byte 0xCA7294C6
	.4byte lbl_80218044
	.4byte 0xD083D083
	.4byte 0xD083D084
	.4byte 0xA400AC01
	.4byte 0xC843D083
	.4byte 0xC1ABC989
	.4byte 0xC56AD0E6
	.4byte 0x954C8D2B
	.4byte 0x94E9A0E7
	.4byte 0xD084D084
	.4byte 0xD484D484
	.4byte 0xD083D083
	.4byte 0xD0A3D4A4
	.4byte 0xD083CCA4
	.4byte 0xD0C3D0E4
	.4byte 0xBC63D0C3
	.4byte 0xD123D523
	.4byte 0xD484CCA4
	.4byte 0xB463A463
	.4byte 0xD4A4CCA4
	.4byte 0xB883B063
	.4byte 0xD4E4C8C4
	.4byte 0xB4A3B0C6
	.4byte 0xC923B4E3
	.4byte 0xB0E2ACE3
	.4byte 0xA0429841
	.4byte 0xA042B463
	.4byte 0xA8639C42
	.4byte 0x9C22B90B
	.4byte 0xBD4ABDAC
	.4byte 0xA4E68402
	.4byte 0xB505B127
	.4byte 0xA4E39CA1
	.4byte 0xDE6DDE70
	.4byte 0xDE70DE72
	.4byte 0xEF14F778
	.4byte 0xE2D5A92B
	.4byte 0xB589B5AD
	.4byte 0xA0E78020
	.4byte 0x84208000
	.4byte lbl_80008000
	.4byte 0xD251CE30
	.4byte 0xD22ECDEC
	.4byte 0x9D0B98EB
	.4byte 0xA12DB5D2
	.4byte lbl_80218000
	.4byte lbl_80218422
	.4byte 0xA863B4A6
	.4byte 0xB0E7A8A5
	.4byte 0xC9CECA31
	.4byte 0xCA52D251
	.4byte 0xB1D29D2D
	.4byte 0x98EBA10B
	.4byte 0x84228421
	.4byte 0x84218021
	.4byte 0xA4A5ACC6
	.4byte 0xA4859C63
	.4byte 0xDE70DE6E
	.4byte 0xDE6EDE6E
	.4byte 0xB549E68F
	.4byte 0xF2F1EAD0
	.4byte 0x8C61AD26
	.4byte 0xC5EDC5EC
	.4byte 0x88428861
	.4byte 0x90609060
	.4byte 0xDA6EDE6E
	.4byte 0xE26EE66E
	.4byte 0xEAD0EEF1
	.4byte 0xF312F312
	.4byte 0xCA2DD64E
	.4byte 0xDDEDCD89
	.4byte 0x94A2A482
	.4byte 0xA420A000
	.4byte 0xE26EE68E
	.4byte 0xE66EEA8F
	.4byte 0xF2F3F314
	.4byte 0xF335F755
	.4byte 0xC948C548
	.4byte 0xD1EECA30
	.4byte 0xA420A460
	.4byte 0xAC81ACE2
	.4byte 0xEEB0F6F2
	.4byte 0xD9EC9041
	.4byte 0xF356E6F5
	.4byte 0xB56A8C40
	.4byte 0xB1ABA947
	.4byte 0xA0C48840
	.4byte 0xB964D24D
	.4byte 0xCA0FBD89
	.4byte 0x84829863
	.4byte lbl_80008000
	.4byte lbl_80209421
	.4byte 0x8C218000
	.4byte 0x84419082
	.4byte 0x9CE48440
	.4byte 0xD64DDE6E
	.4byte 0xE2B0EAB0
	.4byte lbl_80218020
	.4byte 0x800090C6
	.4byte 0x80658064
	.4byte lbl_80218000
	.4byte 0x84628041
	.4byte lbl_80009800
	.4byte 0xE26ED64C
	.4byte 0xD1EAC9AA
	.4byte 0xC568F2AE
	.4byte 0x9461A082
	.4byte 0x94E5CA72
	.4byte 0x80008C41
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0xC548B569
	.4byte 0x8C428000
	.4byte 0xA8A3A0A4
	.4byte 0x98A59084
	.4byte 0xA822B002
	.4byte 0xA801A401
	.4byte 0xA401A401
	.4byte 0x98009000
	.4byte 0x94009C00
	.4byte 0x94209441
	.4byte lbl_80218000
	.4byte lbl_80208021
	.4byte 0x94008021
	.4byte 0x80648065
	.4byte 0x94008C20
	.4byte 0x84418421
	.4byte 0x98829061
	.4byte 0x946298A3
	.4byte lbl_80008000
	.4byte 0x98638062
	.4byte lbl_80008820
	.4byte 0x90218000
	.4byte 0x84008C41
	.4byte 0x88418420
	.4byte 0x9CA4A0E5
	.4byte 0xA0C4A4E5
	.4byte 0x8401D9EC
	.4byte 0xF2AFEE8E
	.4byte 0x8000A909
	.4byte 0xDAB2EB14
	.4byte 0x80008821
	.4byte 0x8C6394C5
	.4byte 0x98A39483
	.4byte 0x90628C41
	.4byte 0xEA8EE66D
	.4byte 0xE66DE26C
	.4byte 0xEF34EF14
	.4byte 0xEEF4F314
	.4byte 0xA508A4E6
	.4byte 0xA4A4ACC5
	.4byte 0x8C408C20
	.4byte 0x8C208C20
	.4byte 0xE26CE26D
	.4byte 0xDE6DDE4D
	.4byte 0xF335F334
	.4byte 0xF334EF13
	.4byte 0xB506C169
	.4byte 0xC1AAB9AA
	.4byte 0x8C209020
	.4byte 0x90208C41
	.4byte 0x9CA39061
	.4byte 0x9061C106
	.4byte 0xD22DC9EC
	.4byte 0xB949DD6A
	.4byte 0xEEF1EF13
	.4byte 0xDE50E169
	.4byte 0xEF13E6D3
	.4byte 0xC98BE149
	.4byte 0xDD49D96A
	.4byte 0xD98CD56A
	.4byte 0xE58AE56A
	.4byte 0xE569E56A
	.4byte 0xDD28DD48
	.4byte 0xE148DD28
	.4byte 0xD907D907
	.4byte 0xDD28DD07
	.4byte 0xD96AD9AE
	.4byte 0xD56AD128
	.4byte 0xE56AE569
	.4byte 0xE149D928
	.4byte 0xDD07D8E6
	.4byte 0xD8E6D4C5
	.4byte 0xD907D4E6
	.4byte 0xD4E6D4E5
	.4byte 0xB8E69C83
	.4byte 0x84428441
	.4byte 0xD528A0C5
	.4byte 0x84428442
	.4byte 0xDD08C16B
	.4byte 0x80428442
	.4byte 0xDD08C94B
	.4byte 0x80428021
	.4byte 0x8C638C62
	.4byte 0x90638441
	.4byte lbl_802190A5
	.4byte 0x9084CE0D
	.4byte 0x90A5B58B
	.4byte 0xDE90E6D2
	.4byte 0x8442D24F
	.4byte 0xDE91EEF3
	.4byte 0xBD88EECF
	.4byte 0xF2CFF2F1
	.4byte 0xEEF3F313
	.4byte 0xF2F2EEF1
	.4byte 0xF314F314
	.4byte 0xF314F314
	.4byte 0xF335F335
	.4byte 0xF756F756
	.4byte 0xF2F2EED0
	.4byte 0xE26EE68E
	.4byte 0xEAAFE6AE
	.4byte 0xE68DE68D
	.4byte 0xF314F314
	.4byte 0xEEF2EEF1
	.4byte 0xEAD3F336
	.4byte 0xEB15EB15
	.4byte 0xEED0EEF0
	.4byte 0xEEF0EEF0
	.4byte 0xE6AEE6AE
	.4byte 0xEAAEEAAE
	.4byte 0xEAF1EAD1
	.4byte 0xEEF1F312
	.4byte 0xF357EF36
	.4byte 0xEB15E2F4
	.4byte 0xF2F1F312
	.4byte 0xF312F314
	.4byte 0xEAAFEAAF
	.4byte 0xEAAFE28F
	.4byte 0xF312F312
	.4byte 0xEEF1BD87
	.4byte 0xD692CE50
	.4byte 0xC20E98A3
	.4byte 0xE6D3A4E6
	.4byte 0x94639462
	.4byte 0xA5068862
	.4byte 0x8C429883
	.4byte 0x90838C84
	.4byte 0x84008C41
	.4byte 0x94C6A8E6
	.4byte 0x90208800
	.4byte 0x94629883
	.4byte 0x9CA39CC4
	.4byte 0x90629883
	.4byte 0x98A39482
	.4byte 0x90629482
	.4byte 0x94829061
	.4byte 0x90419461
	.4byte 0x8C418C41
	.4byte 0x98839062
	.4byte 0x9CC4B988
	.4byte 0x94629462
	.4byte 0xB146DE4C
	.4byte 0x9062D22D
	.4byte 0xEAD1EEF1
	.4byte 0x9482DE8F
	.4byte 0xE6D1E6D1
	.4byte 0xC5C9C9EA
	.4byte 0xC9C9D609
	.4byte 0xEA8DE68C
	.4byte 0xE66CE68C
	.4byte 0xEEF1EECF
	.4byte 0xEAADEEF1
	.4byte 0xEAD2EEF2
	.4byte 0xEEF2EEF2
	.4byte 0xD1E9C5A8
	.4byte 0xBD87BD67
	.4byte 0xE68CE68B
	.4byte 0xE66BE26B
	.4byte 0xEEF1EEF1
	.4byte 0xEEF1EEF1
	.4byte 0xEEF2EEF2
	.4byte 0xEEF2EEF2
	.4byte 0xBD67BD87
	.4byte 0xBD66B946
	.4byte 0xE66BE66B
	.4byte 0xE66BE66C
	.4byte 0xEED0EED0
	.4byte 0xEECFEECF
	.4byte 0xEEF2EEF2
	.4byte 0xEEF2EEF2
	.4byte 0xB125ACE4
	.4byte 0xACE4A905
	.4byte 0xE26CE26B
	.4byte 0xE26DDE6D
	.4byte 0xEECFEECF
	.4byte 0xEEAFEEAF
	.4byte 0xEEF2EEF2
	.4byte 0xEEF2EF13
	.4byte 0xE2B1D64E
	.4byte 0xB0E5D928
	.4byte 0xA927A968
	.4byte 0xA8A4CCE5
	.4byte 0x84628484
	.4byte 0xA484C8C4
	.4byte lbl_80008000
	.4byte 0xA462C8C4
	.4byte 0xD4E6D0E5
	.4byte 0xD907D4E6
	.4byte 0xCCC4C8C4
	.4byte 0xCCC4CCC4
	.4byte 0xC8A4C4A3
	.4byte 0xC8A3C8A3
	.4byte 0xC8A4C4A3
	.4byte 0xC483C483
	.4byte 0xD4E5D0C5
	.4byte 0xD0C5CCA4
	.4byte 0xC8A4C8A4
	.4byte 0xC8A4C483
	.4byte 0xC483C4A3
	.4byte 0xC082C082
	.4byte 0xC082C082
	.4byte 0xC082BC62
	.4byte 0xDD07B8C5
	.4byte 0x84428021
	.4byte 0xD907B4C5
	.4byte 0x88638021
	.4byte 0xD4E6B4C5
	.4byte 0x80A58042
	.4byte 0xD4E6B0A4
	.4byte lbl_80008000
	.4byte 0x90A5A507
	.4byte 0xA0E5A505
	.4byte lbl_80218041
	.4byte 0x88428862
	.4byte 0x80018022
	.4byte 0x8C858C84
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0xB167AD05
	.4byte 0xA904A905
	.4byte 0x8C629082
	.4byte 0x94A498C4
	.4byte 0x84638442
	.4byte 0x84428020
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0xA0E3A0E3
	.4byte 0xA0E3A0E4
	.4byte 0x94A490A4
	.4byte 0x90A48883
	.4byte 0x80428021
	.4byte lbl_80208863
	.4byte 0x9082A104
	.4byte 0x8C638863
	.4byte 0xAD6AA127
	.4byte 0xA0E49CE4
	.4byte 0x8C638C83
	.4byte 0x8C638C63
	.4byte 0x84438443
	.4byte 0x9CE58462
	.4byte 0x88428863
	.4byte 0x8C838C61
	.4byte 0x90828861
	.4byte lbl_80208000
	.4byte 0x98A38000
	.4byte lbl_80008000
	.4byte 0xE6F2C1A8
	.4byte 0xAD258442
	.4byte 0xA0E2F313
	.4byte 0xE2D38463
	.4byte 0x9C41A862
	.4byte 0x90208800
	.4byte 0x9C41A462
	.4byte 0x94418C20
	.4byte 0xB8E5B061
	.4byte 0x9CA2A041
	.4byte 0xB507B861
	.4byte 0x9CE4A482
	.4byte 0x9420A061
	.4byte 0x90208C20
	.4byte 0x94419C40
	.4byte 0x9C409841
	.4byte 0xA461A841
	.4byte 0xAC41B4E5
	.4byte 0xA461A441
	.4byte 0xAC61B0E5
	.4byte 0x9481A0C2
	.4byte 0xB567B988
	.4byte 0x84208820
	.4byte 0x9061A0A2
	.4byte 0x9482ACE4
	.4byte 0xB104A0C4
	.4byte 0x9CA3BD47
	.4byte 0xBD06A8A3
	.4byte 0xC1CAC1CA
	.4byte 0xA926BDA9
	.4byte 0x9881A4C3
	.4byte 0xA0C39061
	.4byte 0x94619CA3
	.4byte 0xA0A39061
	.4byte 0x98419C62
	.4byte 0x9C629862
	.4byte 0xC1CAB569
	.4byte 0xB989BDAA
	.4byte 0x84208400
	.4byte 0x84208841
	.4byte 0x8C418400
	.4byte lbl_80008000
	.4byte 0x90419041
	.4byte 0x8C418420
	.4byte 0xC5EBD22D
	.4byte 0xDA6FDE90
	.4byte 0x8C429082
	.4byte 0x94A394A5
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0xE290E6B1
	.4byte 0xE6D1E6D2
	.4byte 0x90838C62
	.4byte 0x98A3AD68
	.4byte lbl_80008400
	.4byte 0x84208000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80018000
	.4byte 0xAC82C4C4
	.4byte lbl_80008000
	.4byte 0xA462BCA3
	.4byte 0x90209021
	.4byte 0xAC61B461
	.4byte 0x9421A041
	.4byte 0xB482B461
	.4byte 0xC8C4C083
	.4byte 0xC082C082
	.4byte 0xC4C4C0A3
	.4byte 0xC082C082
	.4byte 0xBC82BC83
	.4byte 0xBC82C083
	.4byte 0xB882BC82
	.4byte 0xB862B882
	.4byte 0xC082C082
	.4byte 0xBC62BC62
	.4byte 0xC0A3C0A3
	.4byte 0xBC82BC82
	.4byte 0xC0A3C0A3
	.4byte 0xBC83B462
	.4byte 0xB882B882
	.4byte 0xB482B461
	.4byte 0xCCC5AC83
	.4byte 0x94428821
	.4byte 0xBCC4A062
	.4byte 0x9C428821
	.4byte 0xB061A882
	.4byte 0xA4829C81
	.4byte 0xB061B8E4
	.4byte 0xAC82B0A4
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0x800098E5
	.4byte 0xB106A907
	.4byte 0x94A48864
	.4byte 0xB0C5A8A4
	.4byte 0xB0E5A4E3
	.4byte lbl_80008000
	.4byte 0x98A3B126
	.4byte 0x99288000
	.4byte 0xAD06C1CC
	.4byte 0x84848042
	.4byte 0x88839CA4
	.4byte 0x98C38042
	.4byte 0x94E4B9CB
	.4byte 0xCE0BDA4C
	.4byte 0xD62DB127
	.4byte 0xC5CBCDEB
	.4byte 0xCDC9C567
	.4byte 0xA0A3B105
	.4byte 0xBD25BD25
	.4byte 0xB168AD04
	.4byte 0xB0E3B904
	.4byte 0x98A39CC4
	.4byte 0x9D0790A4
	.4byte 0xC145BD45
	.4byte 0xBD67A0E5
	.4byte 0xC145C166
	.4byte 0xC587ACE4
	.4byte 0xBD45C146
	.4byte 0xBD45A4C3
	.4byte 0xA526DAD4
	.4byte 0xA9CE8000
	.4byte 0x9CE68CA5
	.4byte lbl_80008000
	.4byte 0x98E59926
	.4byte 0x80418CE3
	.4byte 0x8C838042
	.4byte lbl_80218083
	.4byte 0x9820B862
	.4byte 0x9CC3A082
	.4byte 0xA041B461
	.4byte 0xA0A1A481
	.4byte 0xB105B041
	.4byte 0xA481AC61
	.4byte 0xA083B041
	.4byte 0xA461A861
	.4byte 0x9C619841
	.4byte 0xA4629841
	.4byte 0xA0C49882
	.4byte 0xA4619C61
	.4byte 0xA0829C62
	.4byte 0xB041B105
	.4byte 0xA4A49C41
	.4byte 0xAC619C83
	.4byte 0x9461B4C5
	.4byte 0xBCE5B8A4
	.4byte 0x8C40A462
	.4byte 0xB483B8A3
	.4byte 0x90E39061
	.4byte 0xA8C4BD27
	.4byte 0x80838021
	.4byte 0x84419083
	.4byte 0xA862A462
	.4byte 0x98419421
	.4byte 0xAC62A442
	.4byte 0x9C419C41
	.4byte 0xB082A861
	.4byte 0xA462A442
	.4byte 0x90419C41
	.4byte 0xA062A062
	.4byte 0x90218C20
	.4byte 0x8C208C21
	.4byte 0x98219421
	.4byte 0x94219441
	.4byte 0xA0429C41
	.4byte 0x98219421
	.4byte 0x9C419421
	.4byte 0x94219441
	.4byte 0x88208420
	.4byte lbl_80008000
	.4byte 0x90418C21
	.4byte 0x84008C42
	.4byte 0x90218C20
	.4byte 0x88008421
	.4byte 0x94428C21
	.4byte 0x88208C21
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0x8C428400
	.4byte 0x84008000
	.4byte 0x84008820
	.4byte 0x90219C62
	.4byte 0x8C208C20
	.4byte 0x88009021
	.4byte 0x9C41A462
	.4byte 0xB4A3B082
	.4byte 0xA442AC83
	.4byte 0xAC839441
	.4byte 0xA862A462
	.4byte 0x98419041
	.4byte 0xAC82A862
	.4byte 0xA0629C42
	.4byte 0xB482B062
	.4byte 0xAC61A441
	.4byte 0x94419021
	.4byte 0x90219021
	.4byte 0x8C218C20
	.4byte 0x8C208C21
	.4byte 0x94419421
	.4byte 0x94419442
	.4byte 0xA461A861
	.4byte 0xAC82B082
	.4byte 0x90219021
	.4byte 0x90419841
	.4byte 0x8C218C21
	.4byte 0x8C219021
	.4byte 0x94219021
	.4byte 0x90219441
	.4byte 0xB8A2BCC4
	.4byte 0xA883AC83
	.4byte 0xA462ACA3
	.4byte 0xA462A883
	.4byte 0x9841A462
	.4byte 0xA463A863
	.4byte 0x9C42A063
	.4byte 0x9C429C41
	.4byte 0xA883A483
	.4byte 0xACA4A4C3
	.4byte 0xACA4AC83
	.4byte 0xAC82A862
	.4byte 0xA863A862
	.4byte 0xAC62B083
	.4byte 0xA0429C42
	.4byte 0x9C41A042
	.4byte 0x98A29461
	.4byte 0x94C394E5
	.4byte 0xA0619C61
	.4byte 0x9C829CA2
	.4byte 0xB483B083
	.4byte 0xB0C4A482
	.4byte 0xB083B8C5
	.4byte 0xB084B082
	.4byte 0x90E59D26
	.4byte 0xA4C3B0E3
	.4byte 0x94C390E4
	.4byte 0x90C49082
	.4byte 0xA0A394C3
	.4byte 0x80428000
	.4byte 0xB0A398A3
	.4byte 0x80408020
	.4byte 0xC166C587
	.4byte 0xB103A0C3
	.4byte 0x948190A3
	.4byte 0x8C828862
	.4byte 0x80008001
	.4byte lbl_80218042
	.4byte lbl_80208020
	.4byte 0x80418462
	.4byte 0x94A38042
	.4byte 0x80418482
	.4byte 0x84828482
	.4byte 0x84828483
	.4byte 0x80628482
	.4byte 0x84828483
	.4byte 0x84628482
	.4byte 0x84838021
	.4byte 0xA4A3A461
	.4byte 0x94829462
	.4byte 0x94839462
	.4byte 0x90829082
	.4byte 0x88629062
	.4byte 0x94829082
	.4byte 0x88628C62
	.4byte 0x94829082
	.4byte 0x90828842
	.4byte 0x946294A3
	.4byte 0x908290A3
	.4byte 0x8C629083
	.4byte 0x94E590C5
	.4byte 0x88628C62
	.4byte 0x88848062
	.4byte 0x88428C62
	.4byte 0x84828041
	.4byte 0x80418441
	.4byte 0x88838482
	.4byte 0x84828462
	.4byte 0x80638482
	.4byte 0x84828062
	.4byte 0x80018483
	.4byte 0x84828462
	.4byte lbl_80208841
	.4byte 0x8C418C41
	.4byte 0x80418041
	.4byte 0x84418420
	.4byte 0x80428001
	.4byte 0x84018400
	.4byte 0x84628041
	.4byte lbl_80208020
	.4byte 0x90419021
	.4byte 0x94419041
	.4byte 0x88219062
	.4byte 0x90629441
	.4byte 0x84008C42
	.4byte 0x9C83A482
	.4byte lbl_80208841
	.4byte 0x9882A482
	.4byte 0x8C419041
	.4byte 0x90209041
	.4byte 0x98419C61
	.4byte 0x9C419841
	.4byte 0xA882B0A3
	.4byte 0xAC83A862
	.4byte 0xA442AC63
	.4byte 0xB084AC63
	.4byte 0x8C218C21
	.4byte 0x8C209421
	.4byte 0x94209021
	.4byte 0x9441A042
	.4byte 0xA0429841
	.4byte 0xA062A862
	.4byte 0xA863A462
	.4byte 0xAC83AC83
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010020
	.4byte 0x00200040
	.4byte 0x00400000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00400040
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte 0x00400040
	.4byte 0x00000040
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x10010000
	.4byte 0x00400040
	.4byte 0x00002000
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x81FC81FB
	.4byte 0x81FB81FB
	.4byte 0x81FC81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB85FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x85FB861B
	.4byte 0x81FB81FB
	.4byte 0x85FB861B
	.4byte 0x81FB85FB
	.4byte 0x861B861B
	.4byte 0x85FB861B
	.4byte 0x861B861B
	.4byte 0x81FB861B
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C8A1C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x8A1C861C
	.4byte 0x861C8A1C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C8A1C
	.4byte 0x861C861C
	.4byte 0x8A1C8A1C
	.4byte 0x861B8A1C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3D
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C863C
	.4byte 0x863C863C
	.4byte 0x8A3C863C
	.4byte 0x863C863C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C861C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A1C
	.4byte 0x863C861C
	.4byte 0x821C821C
	.4byte 0x861C861C
	.4byte 0x861C821C
	.4byte 0x861C861C
	.4byte 0x861C821C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x821C821C
	.4byte 0x81FB821C
	.4byte 0x821C81FC
	.4byte 0x81FB81FB
	.4byte 0x821C81FB
	.4byte 0x81FB81FB
	.4byte 0x821C81FC
	.4byte 0x81FC81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x861C821C
	.4byte 0x85FB85FB
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x85FB85FB
	.4byte 0x85FB85FB
	.4byte 0x861B861B
	.4byte 0x861B85FB
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x861B85FB
	.4byte 0x85FB81FB
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x85FB821B
	.4byte 0x821B81FB
	.4byte 0x861C861B
	.4byte 0x861C861B
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB81FB
	.4byte 0x81FB821B
	.4byte 0x81FB81FB
	.4byte 0x861B861B
	.4byte 0x861B861B
	.4byte 0x861B861B
	.4byte 0x81FB85FB
	.4byte 0x861B861B
	.4byte 0x85FB861B
	.4byte 0x861B861B
	.4byte 0x861B861C
	.4byte 0x861C861C
	.4byte 0x861B861B
	.4byte 0x861C861C
	.4byte 0x861B861B
	.4byte 0x861B861C
	.4byte 0x861B861B
	.4byte 0x861C8A1C
	.4byte 0x861C861B
	.4byte 0x8A1C8A3C
	.4byte 0x861C8A1C
	.4byte 0x8A1C8A3C
	.4byte 0x861C8A1C
	.4byte 0x8A1C8A1C
	.4byte 0x8A1C8A1C
	.4byte 0x8A3C8A1C
	.4byte 0x8A1C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C8A1C
	.4byte 0x8A1C8A1C
	.4byte 0x8A1C8A1C
	.4byte 0x8A3C8A1C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8E3C8A3C
	.4byte 0x8A3C8E3C
	.4byte 0x8A1C8A1C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8E3C
	.4byte 0x8E3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8E3C8A3C
	.4byte 0x8E3C8E3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8E3C
	.4byte 0x8A3C8E3C
	.4byte 0x8E3D8E3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E5D8E5D
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8A3C
	.4byte 0x8E3C8E5D
	.4byte 0x8E5C8A3C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x8A1C8A1C
	.4byte 0x861C861C
	.4byte 0x8A3C8A3C
	.4byte 0x8A1C861C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x861C861C
	.4byte 0x821C821C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x8A3C861C
	.4byte 0x861C8A1C
	.4byte 0x821C81FB
	.4byte 0x81FB81FB
	.4byte 0x85FC81FC
	.4byte 0x821C821B
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x8A1C8A1C
	.4byte 0x861C861C
	.4byte 0x8A3C8A3C
	.4byte 0x863C863C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8A5C
	.4byte 0x8A5C8A5C
	.4byte 0x8E5D8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x863C861C
	.4byte 0x863C863C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C863C
	.4byte 0x8A5C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C8A5C
	.4byte 0x863C861C
	.4byte 0x863C863C
	.4byte 0x863C863C
	.4byte 0x863C863C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8A5C
	.4byte 0x8A5C8A5C
	.4byte 0x863C863C
	.4byte 0x861C861B
	.4byte 0x863C863C
	.4byte 0x863C863C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8A5C
	.4byte 0x8A5C8A3C
	.4byte 0x861C861C
	.4byte 0x861C861C
	.4byte 0x863C863C
	.4byte 0x863C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A5C
	.4byte 0x8A5C8A5C
	.4byte 0x861C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8E3C
	.4byte 0x8A5C8E3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C925C
	.4byte 0x8E3C8A3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E5C
	.4byte 0x8E3C8E5C
	.4byte 0x8E5C925C
	.4byte 0x925C925C
	.4byte 0x925C925D
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x925C925C
	.4byte 0x925C925C
	.4byte 0x925C925D
	.4byte 0x925D925D
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E5C
	.4byte 0x8E5C8E3C
	.4byte 0x925C925C
	.4byte 0x8E5C925C
	.4byte 0x925D925C
	.4byte 0x925C925C
	.4byte 0x8E3C8E3C
	.4byte 0x8E3C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x925C8E5C
	.4byte 0x8E5C925D
	.4byte 0x925C925D
	.4byte 0x927D927D
	.4byte 0x8E5C8E5D
	.4byte 0x8E5D8E5D
	.4byte 0x8E5C925D
	.4byte 0x8E5D925D
	.4byte 0x925D927D
	.4byte 0x927D927D
	.4byte 0x927D927D
	.4byte 0x927D967D
	.4byte 0x8E5D8E5D
	.4byte 0x8E5D8E5C
	.4byte 0x927D925D
	.4byte 0x925D8E5D
	.4byte 0x927D927D
	.4byte 0x927D927D
	.4byte 0x927D967D
	.4byte 0x967D927D
	.4byte 0x8E3C8E3D
	.4byte 0x8A3C8A3C
	.4byte 0x8E5D8E5D
	.4byte 0x8E5D8E5D
	.4byte 0x927D925D
	.4byte 0x925D925D
	.4byte 0x927D967D
	.4byte 0x927D927D
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x8E5D8E5D
	.4byte 0x8E5D8E5D
	.4byte 0x927D927D
	.4byte 0x927D8E5D
	.4byte 0x8A3C8A3C
	.4byte 0x8A3C8A3C
	.4byte 0x8A5C8A5C
	.4byte 0x8A3C8A3C
	.4byte 0x8E5C8E5C
	.4byte 0x8A5C8A5C
	.4byte 0x8E5D8E5D
	.4byte 0x8E5D8E5D
	.4byte 0x8E7D927D
	.4byte 0x927D925D
	.4byte 0x927D927D
	.4byte 0x927D927D
	.4byte 0x969D969D
	.4byte 0x969D969D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x8E5D8E5D
	.4byte 0x8E7D8E5C
	.4byte 0x927D927D
	.4byte 0x927D8E7D
	.4byte 0x969D967D
	.4byte 0x927D929D
	.4byte 0x969D969D
	.4byte 0x969D969D
	.4byte 0x8E5D8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x8E7D927D
	.4byte 0x927D927D
	.4byte 0x927D967D
	.4byte 0x967D967D
	.4byte 0x969D9A9D
	.4byte 0x9A9D969D
	.4byte 0x8E5C8E5C
	.4byte 0x8E5C8E5C
	.4byte 0x927D8E7D
	.4byte 0x927D8E7C
	.4byte 0x967D927D
	.4byte 0x927D927D
	.4byte 0x9A9D969D
	.4byte 0x969D969D
	.4byte 0x8E5C8A5C
	.4byte 0x8E5C8E5C
	.4byte 0x8E7C8E7D
	.4byte 0x8E7D927D
	.4byte 0x927D927D
	.4byte 0x929D927D
	.4byte 0x969D969D
	.4byte 0x969D969D
	.4byte 0x8E5C925C
	.4byte 0x8E5C925C
	.4byte 0x927D927D
	.4byte 0x927D927C
	.4byte 0x967D967D
	.4byte 0x967D967D
	.4byte 0x969D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x925C925C
	.4byte 0x925C925D
	.4byte 0x965C967C
	.4byte 0x967D965C
	.4byte 0x9A7D9A7D
	.4byte 0x9A7D9A7D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x965D965D
	.4byte 0x967D967D
	.4byte 0x967C9A7D
	.4byte 0x9A7D9A7D
	.4byte 0x9A7D9A7D
	.4byte 0x9A9D9E9D
	.4byte 0x9E9D9E9D
	.4byte 0x9E9D9E9D
	.4byte 0x967D967D
	.4byte 0x9A7D967D
	.4byte 0x9A7D9A7D
	.4byte 0x9A7D9A7D
	.4byte 0x9E9D9E9D
	.4byte 0x9E9D9E9D
	.4byte 0x9EBD9E9D
	.4byte 0xA2BDA29D
	.4byte 0x967D967D
	.4byte 0x965D927C
	.4byte 0x9A7D9A7D
	.4byte 0x9A7D967D
	.4byte 0x9E9D9E7D
	.4byte 0x9A9D9A7D
	.4byte 0x9E9D9E9D
	.4byte 0x9E9D9E9D
	.4byte 0x967C967D
	.4byte 0x967D927D
	.4byte 0x967D967D
	.4byte 0x967D967D
	.4byte 0x9A7D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9E9D9E9D
	.4byte 0x9E9D9EBD
	.4byte 0x967D967D
	.4byte 0x967D969D
	.4byte 0x969D969D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9E9E
	.4byte 0x9EBD9EBE
	.4byte 0xA2BE9EBE
	.4byte 0x969D967D
	.4byte 0x9A7D969D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9E9A9D
	.4byte 0x9A9E9EBE
	.4byte 0x9EBE9E9D
	.4byte 0xA2BEA2BE
	.4byte 0xA2BEA2BE
	.4byte 0x969D969D
	.4byte 0x967D967D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D969D
	.4byte 0x9E9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9EBD9EBE
	.4byte 0x9EBE9EBD
	.4byte 0x927D967D
	.4byte 0x927D927D
	.4byte 0x969D969D
	.4byte 0x967D967D
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9EBD9EBD
	.4byte 0x9ABD9ABD
	.4byte 0x927D927D
	.4byte 0x8E7D8E7D
	.4byte 0x969D927D
	.4byte 0x927D927D
	.4byte 0x969D969D
	.4byte 0x969D969D
	.4byte 0x9ABD9ABD
	.4byte 0x9ABD9ABD
	.4byte 0x9EBD9ABD
	.4byte 0x9ABD9ABD
	.4byte 0xA2BDA2BD
	.4byte 0x9EBDA2BE
	.4byte 0xA6DEA2DE
	.4byte 0xA2DEA2DE
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0x9ABD9ABD
	.4byte 0x9ABD9A9D
	.4byte 0x9EBD9EBD
	.4byte 0x9EBD9EBD
	.4byte 0xA2DEA2DE
	.4byte 0xA2DEA2DE
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9EBD9EBD
	.4byte 0x9EBD9EBD
	.4byte 0xA2BDA2DE
	.4byte 0xA2DDA2DD
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0x9A9D9A9D
	.4byte 0x9A9D9A9D
	.4byte 0x9EBD9EBD
	.4byte 0x9EBD9EBD
	.4byte 0xA2DDA2DD
	.4byte 0xA2DDA2DE
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEAADE
	.4byte 0x9A9D9ABD
	.4byte 0x9A9D9ABD
	.4byte 0x9EBD9EBD
	.4byte 0x9EBD9EBD
	.4byte 0xA2DDA6DE
	.4byte 0xA6BDA6BE
	.4byte 0xAADEAEDE
	.4byte 0xAADEAADE
	.4byte 0x9ABD9ABD
	.4byte 0x9A9D9E9D
	.4byte 0x9EBDA2BD
	.4byte 0xA2BDA29D
	.4byte 0xA6BEA6BE
	.4byte 0xAABEAABE
	.4byte 0xAADEAEDE
	.4byte 0xAEDEAEDE
	.4byte 0xA29D9E9D
	.4byte 0x9E9D9E9D
	.4byte 0xA6BDA6BD
	.4byte 0xA2BDA2BD
	.4byte 0xA6BEA6BD
	.4byte 0xA6BDA6BD
	.4byte 0xAABEAABE
	.4byte 0xAABEAADE
	.4byte 0x9E9D9E9D
	.4byte 0xA2BDA2BD
	.4byte 0xA2BDA2BD
	.4byte 0xA6BEA2BE
	.4byte 0xA6BDA6BE
	.4byte 0xA6BEA6DE
	.4byte 0xAADEAADE
	.4byte 0xAADEAADE
	.4byte 0xA2BDA2BD
	.4byte 0xA2BDA2BD
	.4byte 0xA6BEA6DE
	.4byte 0xA6DEA6BE
	.4byte 0xA6DEAADE
	.4byte 0xAADEAADE
	.4byte 0xAEDEAADE
	.4byte 0xAEDEAEFE
	.4byte 0xA2BDA2BD
	.4byte 0xA29DA29D
	.4byte 0xA6BEA6BE
	.4byte 0xA6BEA6BE
	.4byte 0xAADEAADE
	.4byte 0xAADEAADE
	.4byte 0xAEDEAEDE
	.4byte 0xAEDEAADE
	.4byte 0xA29DA2BD
	.4byte 0xA2BDA2BD
	.4byte 0xA6BDA6BD
	.4byte 0xA6BDA6DE
	.4byte 0xAADEAADE
	.4byte 0xAADEAADE
	.4byte 0xAADEAEDE
	.4byte 0xAADEAEDE
	.4byte 0xA2BEA2BE
	.4byte 0xA2BEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0xAADEAADE
	.4byte 0xAADEAADE
	.4byte 0xAADEAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xA2BEA6BE
	.4byte 0xA6DEA6DE
	.4byte 0xAADEAADE
	.4byte 0xAADEA6DE
	.4byte 0xAADEAADE
	.4byte 0xAADEAAFE
	.4byte 0xAEFEAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xA2DEA2BE
	.4byte 0xA2BEA2BE
	.4byte 0xA6DEA6DE
	.4byte 0xA6BEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0xAADEA6DE
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0x9EBDA2BD
	.4byte 0x9EBD9EBE
	.4byte 0xA2DEA2DE
	.4byte 0xA2DEA2DE
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0x9EBD9EBD
	.4byte 0x9EBE9EBD
	.4byte 0xA2DEA2BD
	.4byte 0xA2BDA2BE
	.4byte 0xA6DEA6DE
	.4byte 0xA6DEA6DE
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0xAEFEAF1E
	.4byte 0xAF1EAEFE
	.4byte 0xB31EB31E
	.4byte 0xB31EB31E
	.4byte 0xB71EBB1F
	.4byte 0xB71EBB1E
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0xAEFEAF1E
	.4byte 0xAEFEAF1E
	.4byte 0xB31EB31E
	.4byte 0xB31EB31E
	.4byte 0xBB1EBB3E
	.4byte 0xBB3EBB3E
	.4byte 0xAAFEAAFE
	.4byte 0xAAFEAAFE
	.4byte 0xAEFEAEFE
	.4byte 0xB2FEB2FE
	.4byte 0xB71EC73E
	.4byte 0xCB3EC31E
	.4byte 0xCB5EDB5E
	.4byte 0xD73EC33E
	.4byte 0xAAFEAAFE
	.4byte 0xAEDEB2DE
	.4byte 0xAEFEB2FE
	.4byte 0xB2FEB2DE
	.4byte 0xB71EBB1E
	.4byte 0xBB1EBEFE
	.4byte 0xBF3ECF3E
	.4byte 0xD33ECF3E
	.4byte 0xB2DEB2DE
	.4byte 0xB2DEB2DE
	.4byte 0xB2FEB6DE
	.4byte 0xB6DEB6FE
	.4byte 0xBAFEBAFE
	.4byte 0xBAFEBAFE
	.4byte 0xC71EC31E
	.4byte 0xC31EC31E
	.4byte 0xB2DEAEDE
	.4byte 0xAEDEAEDE
	.4byte 0xB2FEB2FE
	.4byte 0xB2DEB2DE
	.4byte 0xBAFEB6FE
	.4byte 0xBAFEBAFE
	.4byte 0xBF1EBF1E
	.4byte 0xC31EC71E
	.4byte 0xAEDEAEDE
	.4byte 0xAEDEAEDE
	.4byte 0xB2DEB2DE
	.4byte 0xB2DEB2DE
	.4byte 0xBAFEB6FE
	.4byte 0xB6FEB2FE
	.4byte 0xC73EC73F
	.4byte 0xC31EBAFE
	.4byte 0xAEDEAEDE
	.4byte 0xAEDEAEDE
	.4byte 0xAEFEAEDE
	.4byte 0xB2FEAEFE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB6FEB6FE
	.4byte 0xB6FEB6FE
	.4byte 0xAEDEAEDE
	.4byte 0xB2FEAEFE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB6FEB6FE
	.4byte 0xB6FEB6FE
	.4byte 0xAEFEAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB6FE
	.4byte 0xB6FEB71E
	.4byte 0xB71EB6FE
	.4byte 0xAEDEAEDE
	.4byte 0xAEFEAEFE
	.4byte 0xB2FEB2FE
	.4byte 0xB2FEB6FE
	.4byte 0xB2FEB6FE
	.4byte 0xB71EB71F
	.4byte 0xB71FBB1F
	.4byte 0xBB1FBB3F
	.4byte 0xB2FEB2FE
	.4byte 0xB31EB2FE
	.4byte 0xB6FEB71E
	.4byte 0xB71EB6FE
	.4byte 0xB71FBB1F
	.4byte 0xBB1FBB1F
	.4byte 0xBB1FBF1F
	.4byte 0xBF3FBF3F
	.4byte 0xB31EB2FE
	.4byte 0xB31EB31E
	.4byte 0xB71EB71E
	.4byte 0xB31EB71E
	.4byte 0xBB1EBB1F
	.4byte 0xBB1FBB1F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3FBF3E
	.4byte 0xAF1EAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xB31EB31E
	.4byte 0xB6FEB31E
	.4byte 0xBB1FBB1E
	.4byte 0xBB1EBB1E
	.4byte 0xBF1FBB1F
	.4byte 0xBB1FBB1F
	.4byte 0xAEFEAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xB31EB2FE
	.4byte 0xB31EB31E
	.4byte 0xB71EB71E
	.4byte 0xB71EB71E
	.4byte 0xBB1FBB1F
	.4byte 0xBB1EBB1F
	.4byte 0xAAFEAEFE
	.4byte 0xAAFEAAFE
	.4byte 0xB31EAEFE
	.4byte 0xAEFEAEFE
	.4byte 0xB31EB71E
	.4byte 0xB71EB31E
	.4byte 0xBB1FBB1E
	.4byte 0xB71EB71E
	.4byte 0xBB3FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xC33FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xC75FC75F
	.4byte 0xC75FC75F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3ED75F
	.4byte 0xC35FC35F
	.4byte 0xC75FDB5F
	.4byte 0xC75FC75F
	.4byte 0xCB5FCB5F
	.4byte 0xCF5FD37F
	.4byte 0xD37FD35F
	.4byte 0xEB7FE75F
	.4byte 0xE35ED35F
	.4byte 0xEF9FEF7F
	.4byte 0xE75FE35F
	.4byte 0xDF5FF39F
	.4byte 0xF39FF39F
	.4byte 0xE37FFBDF
	.4byte 0xFBDFFBBF
	.4byte 0xDB5FE75E
	.4byte 0xE77FDF5E
	.4byte 0xEB7FE75F
	.4byte 0xE77FE77F
	.4byte 0xF39FEF7F
	.4byte 0xEB7FEB7F
	.4byte 0xFBBFF79F
	.4byte 0xF39FEF7F
	.4byte 0xD73FCF3F
	.4byte 0xC71EC71E
	.4byte 0xE35FDB3F
	.4byte 0xD33FCF3F
	.4byte 0xE77FE77F
	.4byte 0xDF5FDB5F
	.4byte 0xEB7FEF7F
	.4byte 0xEF7FEB7F
	.4byte 0xC71FCB3F
	.4byte 0xD75FD75F
	.4byte 0xCF3FD75F
	.4byte 0xE37FDF7F
	.4byte 0xDF5FDF5F
	.4byte 0xE37FE37F
	.4byte 0xEF7FEF7F
	.4byte 0xF3BFF7BF
	.4byte 0xDF5FDF7F
	.4byte 0xCF3EC73F
	.4byte 0xEB7FF39F
	.4byte 0xDB7FCB3F
	.4byte 0xE77FEF9F
	.4byte 0xDF7FD35F
	.4byte 0xF3BFEB9F
	.4byte 0xE37FDF7F
	.4byte 0xBF1FBAFF
	.4byte 0xB6FFB6FE
	.4byte 0xC73FBF1F
	.4byte 0xBB1FB71F
	.4byte 0xCB3FC33F
	.4byte 0xBAFFBB1F
	.4byte 0xD75FCB3F
	.4byte 0xC33FC31F
	.4byte 0xB6FEB6FE
	.4byte 0xB71FB71F
	.4byte 0xB71FB71F
	.4byte 0xB71FB71F
	.4byte 0xBB1FBB1F
	.4byte 0xBB1FBB3F
	.4byte 0xC31FBF1F
	.4byte 0xBF3FBF3F
	.4byte 0xB71FB71F
	.4byte 0xB71FB71F
	.4byte 0xBB1FBB1F
	.4byte 0xBB3FBB3F
	.4byte 0xBB1FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3FC33F
	.4byte 0xC33FC33F
	.4byte 0xBB1FBB1F
	.4byte 0xBB3FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3FC33F
	.4byte 0xBF3FC33F
	.4byte 0xC33FC73F
	.4byte 0xC33FC75F
	.4byte 0xC75FCB5F
	.4byte 0xBF3FC33F
	.4byte 0xC33FC33F
	.4byte 0xC33FC33F
	.4byte 0xC73FC73F
	.4byte 0xC75FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCF5F
	.4byte 0xC33FC33F
	.4byte 0xC33FC33F
	.4byte 0xC73FC33F
	.4byte 0xC73FC73F
	.4byte 0xC75FC75F
	.4byte 0xC73FC75F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xC33FC33F
	.4byte 0xC73FC33F
	.4byte 0xC75FC75F
	.4byte 0xC73FC73F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xBF3FBF3F
	.4byte 0xBF3FBF3F
	.4byte 0xC33FC33F
	.4byte 0xC33FC33F
	.4byte 0xC73FC75F
	.4byte 0xC75FC75F
	.4byte 0xC75FCB5F
	.4byte 0xC75FC73F
	.4byte 0xBF1FBF3F
	.4byte 0xBB3FBB3E
	.4byte 0xC33FC33F
	.4byte 0xBF3FBF3F
	.4byte 0xC75FC75F
	.4byte 0xC75FC75F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCB5F
	.4byte 0xCF5FCF5F
	.4byte 0xD35FD35F
	.4byte 0xCF5FD35F
	.4byte 0xD37FD77F
	.4byte 0xD37FD37F
	.4byte 0xD77FDF7F
	.4byte 0xD77FD77F
	.4byte 0xDF7FEF9F
	.4byte 0xE37FEF9F
	.4byte 0xE77FDF7F
	.4byte 0xF3BFFFDF
	.4byte 0xF79FF39F
	.4byte 0xFBBFFFDF
	.4byte 0xFFDFFBBF
	.4byte 0xFFDFFFFF
	.4byte 0xFFDFFB9F
	.4byte 0xEF9FFBDF
	.4byte 0xFBDFFBBF
	.4byte 0xF79FFB9F
	.4byte 0xF7BFF7BF
	.4byte 0xF37FF37F
	.4byte 0xEF9FEF9F
	.4byte 0xEF7FEB7F
	.4byte 0xEB7FEB7F
	.4byte 0xFBBFF39F
	.4byte 0xF37FEB7F
	.4byte 0xF39FEB7F
	.4byte 0xE35FE35F
	.4byte 0xEF7FE77F
	.4byte 0xDF5FDF5F
	.4byte 0xEB7FE37F
	.4byte 0xDF5FDF5F
	.4byte 0xEB7FF39F
	.4byte 0xF7BFF79F
	.4byte 0xE75FEF7F
	.4byte 0xFFBFFBDF
	.4byte 0xDF5FE75F
	.4byte 0xF79FFFFF
	.4byte 0xDB5FDF5F
	.4byte 0xEB7FFFDF
	.4byte 0xF79FF79F
	.4byte 0xFBBFFBBF
	.4byte 0xFBDFFBBF
	.4byte 0xFBBFF7BF
	.4byte 0xFBFFFFDF
	.4byte 0xFFDFFBDF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFBFF
	.4byte 0xF7BFEF9F
	.4byte 0xEB7FE37F
	.4byte 0xF39FEF9F
	.4byte 0xEB7FE77F
	.4byte 0xF7BFEF9F
	.4byte 0xEF7FF39F
	.4byte 0xFBBFF37F
	.4byte 0xF79FF79F
	.4byte 0xDB5FD35F
	.4byte 0xCB3FD75F
	.4byte 0xE77FDB5F
	.4byte 0xCF3FD33F
	.4byte 0xEF9FDF5F
	.4byte 0xCB1FCF1F
	.4byte 0xEF7FDF5F
	.4byte 0xCF3FCF3F
	.4byte 0xD35FC31F
	.4byte 0xBF3FC33F
	.4byte 0xD75FCB3F
	.4byte 0xC73FC73F
	.4byte 0xD33FDB5F
	.4byte 0xD75FCF3F
	.4byte 0xD75FDF5F
	.4byte 0xDF5FD75F
	.4byte 0xC33FC73F
	.4byte 0xC73FC73F
	.4byte 0xCB3FCB3F
	.4byte 0xCB3FCF3F
	.4byte 0xCF3FD33F
	.4byte 0xD35FD35F
	.4byte 0xD35FD35F
	.4byte 0xD75FDB5F
	.4byte 0xCB5FCB5F
	.4byte 0xCB5FCF5F
	.4byte 0xCF5FCF5F
	.4byte 0xCF5FD35F
	.4byte 0xD75FD75F
	.4byte 0xD35FD75F
	.4byte 0xDB7FDB7F
	.4byte 0xD75FDB7F
	.4byte 0xCF5FCF5F
	.4byte 0xCF5FCF5F
	.4byte 0xD35FD35F
	.4byte 0xD35FD35F
	.4byte 0xD77FDB7F
	.4byte 0xD75FD75F
	.4byte 0xE37FEF9F
	.4byte 0xDF7FDB5F
	.4byte 0xCF5FD35F
	.4byte 0xCF5FCF5F
	.4byte 0xD35FD35F
	.4byte 0xD35FD35F
	.4byte 0xD75FDB5F
	.4byte 0xDF7FDB7F
	.4byte 0xDF5FE37F
	.4byte 0xE77FE77F
	.4byte 0xCF5FCB5F
	.4byte 0xCB5FCF5F
	.4byte 0xD35FD35F
	.4byte 0xD35FD35F
	.4byte 0xD75FD35F
	.4byte 0xD35FD35F
	.4byte 0xDB7FDB7F
	.4byte 0xD75FD75F
	.4byte 0xCF5FCB5F
	.4byte 0xCF5FCF5F
	.4byte 0xCF5FD35F
	.4byte 0xCF5FCF5F
	.4byte 0xD35FD35F
	.4byte 0xD35FD35F
	.4byte 0xD75FDB7F
	.4byte 0xDB7FD35F
	.4byte 0xCF5FCF5F
	.4byte 0xCF5FCF5F
	.4byte 0xCF5FD35F
	.4byte 0xD35FD37F
	.4byte 0xD35FD35F
	.4byte 0xD37FD37F
	.4byte 0xD75FD75F
	.4byte 0xD77FD77F
	.4byte 0xDF7FDF7F
	.4byte 0xEB7FFFBF
	.4byte 0xE75FDF5F
	.4byte 0xEB7FFFBF
	.4byte 0xE35FDF3F
	.4byte 0xEF7FFBBF
	.4byte 0xDB3FDB3F
	.4byte 0xE75FEF7F
	.4byte 0xFFDFFFDF
	.4byte 0xFFBFF39F
	.4byte 0xFFDFFBBF
	.4byte 0xF79FEF7F
	.4byte 0xFFBFFB9F
	.4byte 0xF39FEB5F
	.4byte 0xF37FEF7F
	.4byte 0xE75FDF3F
	.4byte 0xEB7FEB7F
	.4byte 0xE77FEB7F
	.4byte 0xE75FE75F
	.4byte 0xE75FE35F
	.4byte 0xE33FDF3F
	.4byte 0xDB3FDB3F
	.4byte 0xD71FD6FF
	.4byte 0xD31FD31F
	.4byte 0xE77FE35F
	.4byte 0xDF5FDB5F
	.4byte 0xE35FE35F
	.4byte 0xDF5FDF5F
	.4byte 0xDB3FE75F
	.4byte 0xEF7FE75F
	.4byte 0xD71FDF3F
	.4byte 0xE33FE35F
	.4byte 0xDB5FDF5F
	.4byte 0xEB7FFFDF
	.4byte 0xDF5FE77F
	.4byte 0xF79FFFFF
	.4byte 0xE77FF37F
	.4byte 0xFB9FFFDF
	.4byte 0xE35FE75F
	.4byte 0xE35FE35F
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFBF
	.4byte 0xFFBFFFBF
	.4byte 0xFB9FF79F
	.4byte 0xE35FE35F
	.4byte 0xDF3FDB3F
	.4byte 0xFB9FF39F
	.4byte 0xF39FEF9F
	.4byte 0xF79FF37F
	.4byte 0xEF7FDF5F
	.4byte 0xEF7FE75F
	.4byte 0xDF5FD73F
	.4byte 0xD33FD31F
	.4byte 0xD31FD73F
	.4byte 0xE35FD73F
	.4byte 0xD33FD75F
	.4byte 0xD31FD33F
	.4byte 0xD33FDB5F
	.4byte 0xD31FD73F
	.4byte 0xD73FDF5F
	.4byte 0xDF5FE79F
	.4byte 0xE37FDF5F
	.4byte 0xE37FE77F
	.4byte 0xEF9FEB9F
	.4byte 0xE79FEF9F
	.4byte 0xF39FF7BF
	.4byte 0xEB9FEFBF
	.4byte 0xEF9FF39F
	.4byte 0xE77FE79F
	.4byte 0xEBBFEB9F
	.4byte 0xDF5FDB5F
	.4byte 0xDB5FDB5F
	.4byte 0xEB9FDF5F
	.4byte 0xDF5FE35F
	.4byte 0xF39FEB7F
	.4byte 0xEB7FEF9F
	.4byte 0xEF9FE79F
	.4byte 0xEF9FF39F
	.4byte 0xDB5FDB5F
	.4byte 0xDB5FDB5F
	.4byte 0xDF5FDF7F
	.4byte 0xE37FDF5F
	.4byte 0xEF9FEF9F
	.4byte 0xEF9FE77F
	.4byte 0xF39FEF9F
	.4byte 0xF39FEF9F
	.4byte 0xDF7FE77F
	.4byte 0xDF7FE37F
	.4byte 0xDF5FDF5F
	.4byte 0xDF5FE37F
	.4byte 0xDF5FDF5F
	.4byte 0xDB5FDF5F
	.4byte 0xE37FDB5F
	.4byte 0xD75FDB3F
	.4byte 0xE77FDF5F
	.4byte 0xE35FDF5F
	.4byte 0xEB9FDF5F
	.4byte 0xDF5FE35F
	.4byte 0xDF5FDF5F
	.4byte 0xEB7FF39F
	.4byte 0xDB3FDF3F
	.4byte 0xEB7FEB7F
	.4byte 0xDB5FDB5F
	.4byte 0xDB5FDB5F
	.4byte 0xDF5FDB5F
	.4byte 0xDF5FE37F
	.4byte 0xEB7FDF5F
	.4byte 0xE35FEB7F
	.4byte 0xF39FE75F
	.4byte 0xE77FEF7F
	.4byte 0xE77FF39F
	.4byte 0xEF9FDF5F
	.4byte 0xEF9FF7BF
	.4byte 0xF79FE75F
	.4byte 0xF79FFB9F
	.4byte 0xF39FE75F
	.4byte 0xF37FF39F
	.4byte 0xEB5FE33F
	.4byte 0xDF5FDF5F
	.4byte 0xD77FDB5F
	.4byte 0xE35FDF5F
	.4byte 0xDB5FE37F
	.4byte 0xDF3FE35F
	.4byte 0xEB7FE75F
	.4byte 0xDF3FE33F
	.4byte 0xEB5FE35F
	.4byte 0xD71FD31F
	.4byte 0xD71FD71F
	.4byte 0xCEFFCEFF
	.4byte 0xCADFCADE
	.4byte 0xCF1FCF1F
	.4byte 0xCF1FCF1F
	.4byte 0x9A5F9E5E
	.4byte 0x9E5F9E5F
	.4byte 0xDB1FDB1F
	.4byte 0xD31FD2FF
	.4byte 0xCADECADE
	.4byte 0xCADECADF
	.4byte 0xCAFFCF1F
	.4byte 0xCF1FCAFF
	.4byte 0xA27FA27F
	.4byte 0xA27FA27F
	.4byte 0xCEFFD2FF
	.4byte 0xCEFFCEFF
	.4byte 0xCAFFCEFF
	.4byte 0xCF1FCF1F
	.4byte 0xCAFFCB1F
	.4byte 0xCB1FCB1F
	.4byte 0xA67FA67F
	.4byte 0xA67EAA7E
	.4byte 0xCEFFCEFF
	.4byte 0xD2FFD71F
	.4byte 0xCAFFCAFF
	.4byte 0xCAFFCEFF
	.4byte 0xCB1FC6FF
	.4byte 0xC6FFC6FF
	.4byte 0xAA7EAA5E
	.4byte 0xAA5EAA5D
	.4byte 0xDB3FD2FE
	.4byte 0xCAFECEFE
	.4byte 0xCF1FCAFF
	.4byte 0xC6DEC6DE
	.4byte 0xCAFFCAFF
	.4byte 0xC6FFC2FF
	.4byte 0xAA5DAA5D
	.4byte 0xAE5DAE5D
	.4byte 0xCF1FCF1F
	.4byte 0xD31FD33F
	.4byte 0xC6FFCAFF
	.4byte 0xCF1FCF1F
	.4byte 0xC2FFC2FF
	.4byte 0xC31FC31F
	.4byte 0xAE5DAE5D
	.4byte 0xAA5DAA5D
	.4byte 0xCF3FCF1F
	.4byte 0xD31FDB3E
	.4byte 0xCF3FCF1F
	.4byte 0xCAFECADE
	.4byte 0xC31FC2FF
	.4byte 0xC2FFBEDF
	.4byte 0xAE5DAE5C
	.4byte 0xAE5CAE5C
	.4byte 0xDF5EE35F
	.4byte 0xD73ECEFE
	.4byte 0xC6BDCADE
	.4byte 0xC6BECAFE
	.4byte 0xC2DEC2FF
	.4byte 0xC6FFCF1F
	.4byte 0xAE3CAE5C
	.4byte 0xAE3CAA1B
	.4byte 0xD71EDB5F
	.4byte 0xE37FE39F
	.4byte 0xD31FD33F
	.4byte 0xD33FD33F
	.4byte 0xD31FD33F
	.4byte 0xD33FCF1F
	.4byte 0xAA3BAE3C
	.4byte 0xAE3CAE5C
	.4byte 0xE37FDF7F
	.4byte 0xEB9FE79F
	.4byte 0xCF1FD75F
	.4byte 0xDF7FDB5F
	.4byte 0xCB1FCF1F
	.4byte 0xD73FD73F
	.4byte 0xAE3CAE5C
	.4byte 0xAE5CAE5C
	.4byte 0xE77FE37F
	.4byte 0xE77FE77F
	.4byte 0xD31FCF1F
	.4byte 0xCF1FD31F
	.4byte 0xD33FCF1F
	.4byte 0xCF1FD31F
	.4byte 0xAE5DAA5D
	.4byte 0xAA5DAE5D
	.4byte 0xDB5FCF3F
	.4byte 0xCF5FDB5F
	.4byte 0xD31FD31F
	.4byte 0xD73FD31F
	.4byte 0xD73FD31F
	.4byte 0xD73FD31F
	.4byte 0xAE5DAE5D
	.4byte 0xAE5DAA5D
	.4byte 0xD71FD2FF
	.4byte 0xD71FD73F
	.4byte 0xCEDFCABE
	.4byte 0xD2FFCEFF
	.4byte 0xD31FCEFF
	.4byte 0xCF1FCF1F
	.4byte 0xAA5DAA5D
	.4byte 0xAA5EAA5E
	.4byte 0xDF5FDF3F
	.4byte 0xDF3FDF3F
	.4byte 0xD31FD2FF
	.4byte 0xCEFFCEFF
	.4byte 0xCF1FCF1F
	.4byte 0xCEFFCEFF
	.4byte 0xAA7EAA7E
	.4byte 0xA67EA67F
	.4byte 0xE33FE33F
	.4byte 0xD71FD71F
	.4byte 0xD31FCEFF
	.4byte 0xC6DEC6DE
	.4byte 0xCEFFCEFF
	.4byte 0xCEFFCEFF
	.4byte 0xA67FA27F
	.4byte 0xA27FA27F
	.4byte 0xD71FD71F
	.4byte 0xDB1FD71F
	.4byte 0xCEFFCEFF
	.4byte 0xCEFFCEFF
	.4byte 0xCEFFCF1F
	.4byte 0xCB1FCB1F
	.4byte 0xA27F965F
	.4byte 0x9A5F9A5F
	.4byte 0x80938094
	.4byte 0x80B580B5
	.4byte 0x811780D5
	.4byte 0x80D480F5
	.4byte 0x80D580D4
	.4byte 0x80D480D4
	.4byte 0x81598138
	.4byte 0x811680F5
	.4byte 0x80B58094
	.4byte 0x80738073
	.4byte 0x80D580B5
	.4byte 0x80B580D5
	.4byte 0x80D480B4
	.4byte 0x80D580D5
	.4byte 0x80F680D5
	.4byte 0x80F580F6
	.4byte 0x80938093
	.4byte 0x80738072
	.4byte 0x80F680D6
	.4byte 0x80D580B4
	.4byte 0x80F680F6
	.4byte 0x80F680D5
	.4byte 0x81378117
	.4byte 0x80F580B3
	.4byte 0x80938094
	.4byte 0x80948074
	.4byte 0x80D580D5
	.4byte 0x80B580B5
	.4byte 0x80B480B3
	.4byte 0x80B480B3
	.4byte 0x80F480D4
	.4byte 0x80F580F5
	.4byte 0x80948093
	.4byte 0x80B38093
	.4byte 0x80D580D5
	.4byte 0x80D580D6
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80F680F7
	.4byte 0x80F680F5
	.4byte 0x80B480B4
	.4byte 0x80B580D5
	.4byte 0x80F780F7
	.4byte 0x80F580F5
	.4byte 0x80D680D5
	.4byte 0x80D480B4
	.4byte 0x80F68116
	.4byte 0x80F680F5
	.4byte 0x80B580B4
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80F580F5
	.4byte 0x80D480F5
	.4byte 0x80F580B4
	.4byte 0x811780F7
	.4byte 0x80F680F7
	.4byte 0x80B480D5
	.4byte 0x80D580D5
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80D580F6
	.4byte 0x81178117
	.4byte 0x81168116
	.4byte 0x81168117
	.4byte 0x80D580F5
	.4byte 0x80F580F5
	.4byte 0x80D580F6
	.4byte 0x80F580F5
	.4byte 0x80F78117
	.4byte 0x80F680F6
	.4byte 0x81178116
	.4byte 0x81178117
	.4byte 0x80F580F6
	.4byte 0x80F580D5
	.4byte 0x80F580F6
	.4byte 0x80F680D5
	.4byte 0x80F68117
	.4byte 0x81178117
	.4byte 0x81178137
	.4byte 0x81178138
	.4byte 0x80D580D5
	.4byte 0x80D580D4
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x81178117
	.4byte 0x81178116
	.4byte 0x81388138
	.4byte 0x81388138
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80F68116
	.4byte 0x80F68117
	.4byte 0x81178137
	.4byte 0x81388138
	.4byte 0x81598179
	.4byte 0x80F680D6
	.4byte 0x80D580D4
	.4byte 0x81168116
	.4byte 0x81168117
	.4byte 0x81378159
	.4byte 0x81598158
	.4byte 0x81598159
	.4byte 0x81588159
	.4byte 0x80B480D4
	.4byte 0x80B480B5
	.4byte 0x81188118
	.4byte 0x81178117
	.4byte 0x81178138
	.4byte 0x81178117
	.4byte 0x81588159
	.4byte 0x81598138
	.4byte 0x80B580B5
	.4byte 0x80B480B4
	.4byte 0x80F780F6
	.4byte 0x80F580F6
	.4byte 0x81178117
	.4byte 0x81178117
	.4byte 0x80F68139
	.4byte 0x81398159
	.4byte 0x80938093
	.4byte 0x80B480B4
	.4byte 0x80F68117
	.4byte 0x81178118
	.4byte 0x81178117
	.4byte 0x80F680F5
	.4byte 0x8139815A
	.4byte 0x817B8159
	.4byte 0x81178138
	.4byte 0x81388138
	.4byte 0x81178117
	.4byte 0x81178117
	.4byte 0x81388118
	.4byte 0x81398139
	.4byte 0x80F58116
	.4byte 0x8139815A
	.4byte 0x815A815A
	.4byte 0x811680D4
	.4byte 0x811780F6
	.4byte 0x80F580D4
	.4byte 0x815A815A
	.4byte 0x8159815A
	.4byte 0x81598139
	.4byte 0x81598117
	.4byte 0x80F480D4
	.4byte 0x80B48093
	.4byte 0x80D480D4
	.4byte 0x80D480D4
	.4byte 0x81398117
	.4byte 0x811680F6
	.4byte 0x80F58138
	.4byte 0x8139815A
	.4byte 0x80B380D5
	.4byte 0x80F580F5
	.4byte 0x80B480B4
	.4byte 0x80B380B3
	.4byte 0x80F580F5
	.4byte 0x80D580D4
	.4byte 0x8159817A
	.4byte 0x817B8159
	.4byte 0x80F580F5
	.4byte 0x80F580F6
	.4byte 0x80B380B2
	.4byte 0x80D380F5
	.4byte 0x80B480B4
	.4byte 0x80F580F5
	.4byte 0x815A817B
	.4byte 0x81398117
	.4byte 0x80F68116
	.4byte 0x80F580F5
	.4byte 0x80F580F5
	.4byte 0x81178117
	.4byte 0x80F680F6
	.4byte 0x81178138
	.4byte 0x81398159
	.4byte 0x81598159
	.4byte 0x81168116
	.4byte 0x80F68116
	.4byte 0x81168116
	.4byte 0x81168117
	.4byte 0x81388138
	.4byte 0x81388137
	.4byte 0x817B819B
	.4byte 0x81798136
	.4byte 0x81378116
	.4byte 0x81168116
	.4byte 0x81598138
	.4byte 0x81178116
	.4byte 0x81168117
	.4byte 0x81168115
	.4byte 0x81158137
	.4byte 0x81798158
	.4byte 0x81378137
	.4byte 0x81598138
	.4byte 0x81378137
	.4byte 0x81598158
	.4byte 0x81168137
	.4byte 0x81588158
	.4byte 0x81588179
	.4byte 0x817A8159
	.4byte 0x81388138
	.4byte 0x81588158
	.4byte 0x81588158
	.4byte 0x81588158
	.4byte 0x81388158
	.4byte 0x81598159
	.4byte 0x817A8179
	.4byte 0x819A819A
	.4byte 0x81388138
	.4byte 0x81598179
	.4byte 0x81388138
	.4byte 0x8159819A
	.4byte 0x81588158
	.4byte 0x8158817A
	.4byte 0x8179819A
	.4byte 0x819A8179
	.4byte 0x81588159
	.4byte 0x817981BB
	.4byte 0x81598158
	.4byte 0x819A81BB
	.4byte 0x81798158
	.4byte 0x81798179
	.4byte 0x81798179
	.4byte 0x81798179
	.4byte 0x81FD81BC
	.4byte 0x81DD81BC
	.4byte 0x81DC81BB
	.4byte 0x81DC81DC
	.4byte 0x8179819A
	.4byte 0x81BA819A
	.4byte 0x8179819A
	.4byte 0x819A81BB
	.4byte 0x817A8159
	.4byte 0x813780F5
	.4byte 0x819B817A
	.4byte 0x81598159
	.4byte 0x817A8179
	.4byte 0x81798159
	.4byte 0x81BC81DC
	.4byte 0x81FD81FD
	.4byte 0x81168139
	.4byte 0x815A8159
	.4byte 0x81598137
	.4byte 0x81388137
	.4byte 0x81598138
	.4byte 0x81598138
	.4byte 0x81BC81BC
	.4byte 0x81BC817A
	.4byte 0x8159815A
	.4byte 0x811780D4
	.4byte 0x81178116
	.4byte 0x81168117
	.4byte 0x81398159
	.4byte 0x81388138
	.4byte 0x81598138
	.4byte 0x81178116
	.4byte 0x81598159
	.4byte 0x81178138
	.4byte 0x81398159
	.4byte 0x81388159
	.4byte 0x817A8138
	.4byte 0x80F780F5
	.4byte 0x81798179
	.4byte 0x81588137
	.4byte 0x81378116
	.4byte 0x811680F4
	.4byte 0x81388139
	.4byte 0x815A8159
	.4byte 0x81168139
	.4byte 0x81398139
	.4byte 0x8138817A
	.4byte 0x815A815A
	.4byte 0x80F58137
	.4byte 0x81598159
	.4byte 0x81598137
	.4byte 0x81388137
	.4byte 0x81598138
	.4byte 0x81598138
	.4byte 0x813880F6
	.4byte 0x80F580F5
	.4byte 0x8159815A
	.4byte 0x811780D4
	.4byte 0x81168116
	.4byte 0x80F480F4
	.4byte 0x8139815A
	.4byte 0x817A817A
	.4byte 0x80F68117
	.4byte 0x81178137
	.4byte 0x81378138
	.4byte 0x81168117
	.4byte 0x81168116
	.4byte 0x81168137
	.4byte 0x815A815A
	.4byte 0x817B817A
	.4byte 0x81378137
	.4byte 0x81588137
	.4byte 0x81388159
	.4byte 0x81588138
	.4byte 0x81378139
	.4byte 0x81598138
	.4byte 0x8179819A
	.4byte 0x81798158
	.4byte 0x81578157
	.4byte 0x81588179
	.4byte 0x8139815A
	.4byte 0x81588116
	.4byte 0x81378158
	.4byte 0x817A819B
	.4byte 0x8179819B
	.4byte 0x819B81DC
	.4byte 0x819A819A
	.4byte 0x81BB81BB
	.4byte 0x81368178
	.4byte 0x819A817A
	.4byte 0x815A819B
	.4byte 0x81DD81BC
	.4byte 0x81BC81BC
	.4byte 0x819B819B
	.4byte 0x8199819B
	.4byte 0x819C819B
	.4byte 0x817B819B
	.4byte 0x819C81BD
	.4byte 0x81BC81BC
	.4byte 0x81DD821E
	.4byte 0x81BC81BC
	.4byte 0x81BB81BA
	.4byte 0x819C819C
	.4byte 0x81798179
	.4byte 0x819C819B
	.4byte 0x81BC819B
	.4byte 0x81FE81FE
	.4byte 0x81BC81BB
	.4byte 0x81BB819A
	.4byte 0x81798178
	.4byte 0x81998199
	.4byte 0x81998199
	.4byte 0x81BB81DC
	.4byte 0x81FC81DB
	.4byte 0x81BC81BA
	.4byte 0x81BB81BB
	.4byte 0x81788158
	.4byte 0x817A81BB
	.4byte 0x819981BC
	.4byte 0x81FD821E
	.4byte 0x81DB81DB
	.4byte 0x81BC81BA
	.4byte 0x81BB81DB
	.4byte 0x81DC81FC
	.4byte 0x81BB81BA
	.4byte 0x81FC821C
	.4byte 0x81FD81DC
	.4byte 0x81DB81BB
	.4byte 0x81DC81DC
	.4byte 0x81DC81FD
	.4byte 0x81FD81FC
	.4byte 0x81DC81FD
	.4byte 0x81FB81FC
	.4byte 0x81FC81FD
	.4byte 0x81DB81FC
	.4byte 0x81DB81DC
	.4byte 0x81DD81FD
	.4byte 0x821D81FD
	.4byte 0x81FD823D
	.4byte 0x821D81DC
	.4byte 0x81DD81FD
	.4byte 0x81FC81DC
	.4byte 0x81FD81FD
	.4byte 0x81FC81FD
	.4byte 0x81DB81DC
	.4byte 0x81DC819B
	.4byte 0x81BB81BA
	.4byte 0x81BB819A
	.4byte 0x81DC81DD
	.4byte 0x81DC819B
	.4byte 0x81DC81DC
	.4byte 0x819B819B
	.4byte 0x817A8159
	.4byte 0x81398159
	.4byte 0x81798179
	.4byte 0x81598159
	.4byte 0x81BB81BC
	.4byte 0x81DC819B
	.4byte 0x81BB81FD
	.4byte 0x81FD81BB
	.4byte 0x81BB819A
	.4byte 0x81798158
	.4byte 0x81BC81DC
	.4byte 0x81BC819B
	.4byte 0x819A81BB
	.4byte 0x819B817A
	.4byte 0x819B81BB
	.4byte 0x81BB819B
	.4byte 0x81598179
	.4byte 0x81588158
	.4byte 0x819B81BB
	.4byte 0x819A817A
	.4byte 0x81798158
	.4byte 0x813780F6
	.4byte 0x817A817A
	.4byte 0x817A815A
	.4byte 0x81388117
	.4byte 0x811680F5
	.4byte 0x813880F5
	.4byte 0x80F580F5
	.4byte 0x80D480B3
	.4byte 0x80B380B4
	.4byte 0x81598138
	.4byte 0x81398159
	.4byte 0x81178117
	.4byte 0x81388159
	.4byte 0x80F58115
	.4byte 0x81168116
	.4byte 0x80D480F4
	.4byte 0x80D480B3
	.4byte 0x81598159
	.4byte 0x81388137
	.4byte 0x81388137
	.4byte 0x81368136
	.4byte 0x80F580D4
	.4byte 0x80D380F3
	.4byte 0x80D380F5
	.4byte 0x81168137
	.4byte 0x81388138
	.4byte 0x81178116
	.4byte 0x81168138
	.4byte 0x817A817A
	.4byte 0x80D280F4
	.4byte 0x80F580F5
	.4byte 0x81368138
	.4byte 0x81598159
	.4byte 0x81578158
	.4byte 0x8179817A
	.4byte 0x817A819B
	.4byte 0x81BC817B
	.4byte 0x81168159
	.4byte 0x817A817A
	.4byte 0x81598159
	.4byte 0x81598179
	.4byte 0x819A817A
	.4byte 0x817A8179
	.4byte 0x8179817A
	.4byte 0x819B819A
	.4byte 0x819B8179
	.4byte 0x81798179
	.4byte 0x81798179
	.4byte 0x81798158
	.4byte 0x817981BB
	.4byte 0x81DD81BC
	.4byte 0x817A819A
	.4byte 0x81598179
	.4byte 0x81588138
	.4byte 0x8158819A
	.4byte 0x8157819A
	.4byte 0x81BC81DC
	.4byte 0x81BB81DC
	.4byte 0x81BC81BB
	.4byte 0x819A81BB
	.4byte 0x819A8199
	.4byte 0x819B8199
	.4byte 0x81578136
	.4byte 0x81DC8199
	.4byte 0x81788179
	.4byte 0x81BA81B9
	.4byte 0x81DB81DB
	.4byte 0x81BB81FD
	.4byte 0x81DC81DC
	.4byte 0x8178819A
	.4byte 0x81BB81DC
	.4byte 0x81788178
	.4byte 0x819A81BB
	.4byte 0x81DB81BB
	.4byte 0x81BB81BB
	.4byte 0x81DC81DC
	.4byte 0x819A819A
	.4byte 0x81BB81DC
	.4byte 0x81DD81DD
	.4byte 0x81BB81BB
	.4byte 0x81BB819A
	.4byte 0x81BB81DC
	.4byte 0x81FD81DD
	.4byte 0x81BB81DC
	.4byte 0x81FD81FD
	.4byte 0x81BC819B
	.4byte 0x819A81DB
	.4byte 0x817A8179
	.4byte 0x8179819A
	.4byte 0x81BC81BB
	.4byte 0x81BB81DC
	.4byte 0x821D81FD
	.4byte 0x81FC81FC
	.4byte 0x81DB821D
	.4byte 0x821D81FD
	.4byte 0x819A81BB
	.4byte 0x81DB81BA
	.4byte 0x81BB81DB
	.4byte 0x81FC81DC
	.4byte 0x81FC81FC
	.4byte 0x81DC81BB
	.4byte 0x81FC81DB
	.4byte 0x81BA819A
	.4byte 0x81BA819A
	.4byte 0x819A819A
	.4byte 0x81BB81BB
	.4byte 0x81BC81BC
	.4byte 0x819B81FC
	.4byte 0x81FD81DC
	.4byte 0x8179819A
	.4byte 0x81BA81BB
	.4byte 0x81998179
	.4byte 0x81588158
	.4byte 0x819B819A
	.4byte 0x8179817A
	.4byte 0x81598158
	.4byte 0x81598179
	.4byte 0x81588158
	.4byte 0x81388138
	.4byte 0x81598158
	.4byte 0x81378137
	.4byte 0x81BD819C
	.4byte 0x817A8158
	.4byte 0x81598139
	.4byte 0x81178117
	.4byte 0x81388137
	.4byte 0x81388137
	.4byte 0x81378137
	.4byte 0x81388158
	.4byte 0x8158817A
	.4byte 0x819C81DD
	.4byte 0x81388138
	.4byte 0x81598178
	.4byte 0x81378158
	.4byte 0x817A8159
	.4byte 0x81588158
	.4byte 0x8179819B
	.4byte 0x81DD81BC
	.4byte 0x819C81BC
	.4byte 0x81588158
	.4byte 0x81378158
	.4byte 0x81588159
	.4byte 0x81598179
	.4byte 0x81DD81BC
	.4byte 0x81BC81DC
	.4byte 0x81BC81BC
	.4byte 0x81DD81BC
	.4byte 0x819A8179
	.4byte 0x8179819A
	.4byte 0x8179819B
	.4byte 0x81DD821F
	.4byte 0x81DC81DD
	.4byte 0x81DD81DC
	.4byte 0x819A8159
	.4byte 0x81578137
	.4byte 0x819B81BC
	.4byte 0x81DC81DC
	.4byte 0x81FD81DC
	.4byte 0x819A8199
	.4byte 0x81BC8179
	.4byte 0x81368156
	.4byte 0x81378157
	.4byte 0x81788179
	.4byte 0x81DC81DC
	.4byte 0x81DD81BC
	.4byte 0x819A8178
	.4byte 0x81788158
	.4byte 0x81588137
	.4byte 0x81378157
	.4byte 0x81798179
	.4byte 0x81798179
	.4byte 0x81BC81BB
	.4byte 0x81798179
	.4byte 0x81588157
	.4byte 0x81368158
	.4byte 0x81568177
	.4byte 0x81788199
	.4byte 0x8179819A
	.4byte 0x819B81DB
	.4byte 0x819A8179
	.4byte 0x81788179
	.4byte 0x819A81BC
	.4byte 0x81BB81DC
	.4byte 0x819B81BC
	.4byte 0x81BB81BB
	.4byte 0x81DC81FD
	.4byte 0x81FD81DD
	.4byte 0x819A81BB
	.4byte 0x81DD81FC
	.4byte 0x81DD81DB
	.4byte 0x81DC819A
	.4byte 0x81BA819A
	.4byte 0x81BC81BC
	.4byte 0x81DC81BB
	.4byte 0x81BC81BB
	.4byte 0x81FC81FD
	.4byte 0x81DB81DB
	.4byte 0x819A81BB
	.4byte 0x81DC81BC
	.4byte 0x81BB81BB
	.4byte 0x81DC81FC
	.4byte 0x81BB81BB
	.4byte 0x81BB81FC
	.4byte 0x819A81BB
	.4byte 0x81BB81DB
	.4byte 0x81DC81DC
	.4byte 0x81BB81DC
	.4byte 0x81DC81BC
	.4byte 0x81DD81FD
	.4byte 0x81FD81DD
	.4byte 0x821E821D
	.4byte 0x81BB819B
	.4byte 0x819B81BB
	.4byte 0x821D821C
	.4byte 0x821D821E
	.4byte 0x81FD81FD
	.4byte 0x81DD81DC
	.4byte 0x81DC81BC
	.4byte 0x819B819A
	.4byte 0x81FD81FD
	.4byte 0x81FC81DC
	.4byte 0x821E81DB
	.4byte 0x819A819A
	.4byte 0x81BB819A
	.4byte 0x819A81BB
	.4byte 0x819A819A
	.4byte 0x817A819A
	.4byte 0x81DB81DB
	.4byte 0x81BB81BB
	.4byte 0x81BA819A
	.4byte 0x81BB81BB
	.4byte 0x81DC821D
	.4byte 0x821E821E
	.4byte 0x81DB81DC
	.4byte 0x81DC81DD
	.4byte 0x819A819A
	.4byte 0x817A8179
	.4byte 0x81BB81BC
	.4byte 0x819B8179
	.4byte 0x81FD81BB
	.4byte 0x819A8179
	.4byte 0x81DD81DC
	.4byte 0x81DC81DD
	.4byte 0x81DD81BC
	.4byte 0x81BC81BB
	.4byte 0x8179819A
	.4byte 0x81BD81DD
	.4byte 0x81368159
	.4byte 0x81598179
	.4byte 0x81378138
	.4byte 0x81168135
	.4byte 0x81BB81BC
	.4byte 0x819C81DD
	.4byte 0x81DD81BD
	.4byte 0x819A8178
	.4byte 0x81798139
	.4byte 0x81398116
	.4byte 0x81358116
	.4byte 0x81388136
	.4byte 0x81DD819B
	.4byte 0x81798179
	.4byte 0x81388116
	.4byte 0x811580F4
	.4byte 0x81168179
	.4byte 0x81798137
	.4byte 0x81368178
	.4byte 0x81578156
	.4byte 0x81798158
	.4byte 0x81378158
	.4byte 0x80F38115
	.4byte 0x81368136
	.4byte 0x81368136
	.4byte 0x81788177
	.4byte 0x81578178
	.4byte 0x81798178
	.4byte 0x81388157
	.4byte 0x81788179
	.4byte 0x81368135
	.4byte 0x8157819A
	.4byte 0x81778178
	.4byte 0x81788157
	.4byte 0x81578157
	.4byte 0x81368135
	.4byte 0x81798199
	.4byte 0x819B819B
	.4byte 0x819A8179
	.4byte 0x8199819A
	.4byte 0x81578157
	.4byte 0x81158115
	.4byte 0x81358115
	.4byte 0x81148114
	.4byte 0x819B819A
	.4byte 0x819B819B
	.4byte 0x81BB81BB
	.4byte 0x81BB81DB
	.4byte 0x81368156
	.4byte 0x81568157
	.4byte 0x81158135
	.4byte 0x81358136
	.4byte 0x81BB81DC
	.4byte 0x81DD81FE
	.4byte 0x81DC81DC
	.4byte 0x81DC81BA
	.4byte 0x81788179
	.4byte 0x81998199
	.4byte 0x81588178
	.4byte 0x81588159
	.4byte 0x81FE81DD
	.4byte 0x81DC81DC
	.4byte 0x81798157
	.4byte 0x81368136
	.4byte 0x81798158
	.4byte 0x81578158
	.4byte 0x81798199
	.4byte 0x81BB81BC
	.4byte 0x819B819A
	.4byte 0x819A819A
	.4byte 0x81168137
	.4byte 0x81588179
	.4byte 0x81598179
	.4byte 0x817981BA
	.4byte 0x81BC81DD
	.4byte 0x81BA819A
	.4byte 0x81BB81DC
	.4byte 0x81DC81DB
	.4byte 0x81BB81BB
	.4byte 0x81BC81DB
	.4byte 0x81BB81BB
	.4byte 0x81DB819A
	.4byte 0x819A8199
	.4byte 0x8199819A
	.4byte 0x819B81BC
	.4byte 0x81BB81BB
	.4byte 0x81DB81FC
	.4byte 0x81DC81BA
	.4byte 0x81998199
	.4byte 0x81DB81DB
	.4byte 0x81BA81BA
	.4byte 0x81B981B9
	.4byte 0x819B81BC
	.4byte 0x81DC81DC
	.4byte 0x819A819B
	.4byte 0x81DC81DC
	.4byte 0x81BB81DC
	.4byte 0x81DC81BB
	.4byte 0x81998199
	.4byte 0x81788157
	.4byte 0x81DB81BB
	.4byte 0x81DB81DC
	.4byte 0x81DC81FC
	.4byte 0x81FB81DB
	.4byte 0x81998199
	.4byte 0x81998198
	.4byte 0x81568157
	.4byte 0x81788178
	.4byte 0x81BB8199
	.4byte 0x819A81BB
	.4byte 0x81BA8179
	.4byte 0x81788157
	.4byte 0x81788178
	.4byte 0x81778158
	.4byte 0x81798199
	.4byte 0x81998178
	.4byte 0x819A81BA
	.4byte 0x81BB81DD
	.4byte 0x81578157
	.4byte 0x81588158
	.4byte 0x8179819A
	.4byte 0x819A8137
	.4byte 0x81778178
	.4byte 0x81798157
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010020
	.4byte 0x00200040
	.4byte 0x00400000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00400040
	.4byte 0
	.4byte 0
	.4byte 0x00400000
	.4byte 0x00400040
	.4byte 0x00000040
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x10010000
	.4byte 0x00400040
	.4byte 0x00002000
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x811780F6
	.4byte 0x80D480D4
	.4byte 0x811780F5
	.4byte 0x80D480B3
	.4byte 0x811780F5
	.4byte 0x80B480B3
	.4byte 0x919A8D58
	.4byte 0x80D480B3
	.4byte 0x80918091
	.4byte 0x8090808F
	.4byte 0x80928091
	.4byte 0x80918090
	.4byte 0x80928092
	.4byte 0x80918091
	.4byte 0x80928092
	.4byte 0x80928092
	.4byte 0x80908090
	.4byte 0x80908090
	.4byte 0x80908090
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80B28092
	.4byte 0x80B28092
	.4byte 0x80908091
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80928092
	.4byte 0x80B280B2
	.4byte 0x80B280B3
	.4byte 0x80918091
	.4byte 0x80918091
	.4byte 0x80918092
	.4byte 0x80B280B2
	.4byte 0x80B280B2
	.4byte 0x80B380B3
	.4byte 0x80B380B3
	.4byte 0x80B480B4
	.4byte 0x80928092
	.4byte 0x80B280B2
	.4byte 0x80B280B3
	.4byte 0x80B380B3
	.4byte 0x80B380B4
	.4byte 0x80B480D4
	.4byte 0x80B480B4
	.4byte 0x80D480D4
	.4byte 0x80B280B3
	.4byte 0x80B380B3
	.4byte 0x80B380B4
	.4byte 0x80B480B4
	.4byte 0x80D480D4
	.4byte 0x80D480D4
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80B380B4
	.4byte 0x80B480B4
	.4byte 0x80B480D4
	.4byte 0x80D480D4
	.4byte 0x80D480D4
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80B480D4
	.4byte 0x80D480D4
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80F580F6
	.4byte 0x80D480D4
	.4byte 0x80D480D4
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80F580F5
	.4byte 0x80F680F6
	.4byte 0x80F680F6
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80D580F5
	.4byte 0x80D580F5
	.4byte 0x80F680F6
	.4byte 0x80F780F7
	.4byte 0x80F780F7
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80D580F5
	.4byte 0x80F680F6
	.4byte 0x80F680F6
	.4byte 0x80F780F7
	.4byte 0x80F78118
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80D580F5
	.4byte 0x80F580F5
	.4byte 0x80F680F6
	.4byte 0x80D580F6
	.4byte 0x8119919A
	.4byte 0xA1FB8D7A
	.4byte 0x80D480D5
	.4byte 0x80D580D5
	.4byte 0x80F680F5
	.4byte 0x80F580F6
	.4byte 0x95BA8118
	.4byte 0x80F68117
	.4byte 0xAA3CA61B
	.4byte 0x81398119
	.4byte 0x80F580F6
	.4byte 0x80F680F6
	.4byte 0x80F680F6
	.4byte 0x80F680F7
	.4byte 0x81188117
	.4byte 0x81178117
	.4byte 0x81188118
	.4byte 0x81398118
	.4byte 0x80F680F7
	.4byte 0x80F780F7
	.4byte 0x81178117
	.4byte 0x81178117
	.4byte 0x81188117
	.4byte 0x81178117
	.4byte 0x81188118
	.4byte 0x81198D79
	.4byte 0xD75EBA9C
	.4byte 0x84F580B4
	.4byte 0xD33EB69D
	.4byte 0x99988916
	.4byte 0xBEDDB69D
	.4byte 0xAE5BA1DA
	.4byte 0xB29DAE5C
	.4byte 0xBA9DCAFD
	.4byte 0x80B280B3
	.4byte 0x80D480B3
	.4byte 0x84F480F5
	.4byte 0x80F580D5
	.4byte 0x91778517
	.4byte 0x85168516
	.4byte 0xBA7CA1DA
	.4byte 0x95999178
	.4byte 0x80B380B3
	.4byte 0x80B380B3
	.4byte 0x80D480B4
	.4byte 0x80B380B4
	.4byte 0x80F580D4
	.4byte 0x80B480B4
	.4byte 0x915784F5
	.4byte 0x80D580D5
	.4byte 0x80B380B3
	.4byte 0x80B380B4
	.4byte 0x80B480B4
	.4byte 0x80B480B4
	.4byte 0x80D480D4
	.4byte 0x80D480D4
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80B480B4
	.4byte 0x80B480D4
	.4byte 0x80D480D4
	.4byte 0x80D480D5
	.4byte 0x80D480D5
	.4byte 0x80D580F5
	.4byte 0x80F580F6
	.4byte 0x80F680F6
	.4byte 0x80D480D4
	.4byte 0x80D580D5
	.4byte 0x80D580D5
	.4byte 0x80D580F5
	.4byte 0x80F580F5
	.4byte 0x80F680F7
	.4byte 0x80F780F7
	.4byte 0x80F780F7
	.4byte 0x80D580D5
	.4byte 0x80F580F5
	.4byte 0x80F680F6
	.4byte 0x80F680F6
	.4byte 0x80F780F7
	.4byte 0x80F780F8
	.4byte 0x81188118
	.4byte 0x81188117
	.4byte 0x80F580F6
	.4byte 0x80F680F6
	.4byte 0x80F780F7
	.4byte 0x80F58119
	.4byte 0x81178539
	.4byte 0x919ACEFD
	.4byte 0x99BAD31E
	.4byte 0xDF5FEBBF
	.4byte 0x80F680F7
	.4byte 0x80F680F6
	.4byte 0xC6DDE77E
	.4byte 0xB25C8959
	.4byte 0xFBFFF3DF
	.4byte 0xF7DFE79F
	.4byte 0xF7DFEBBF
	.4byte 0xF3DFE79F
	.4byte 0x80F680F7
	.4byte 0x80F780F7
	.4byte 0x81198117
	.4byte 0x81188118
	.4byte 0xB69D8119
	.4byte 0x81178118
	.4byte 0xAE5DBA9D
	.4byte 0x99BB8139
	.4byte 0x80F780F7
	.4byte 0x80F780F7
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81388139
	.4byte 0x81398139
	.4byte 0x80F780F7
	.4byte 0x81178139
	.4byte 0x81188118
	.4byte 0x81188119
	.4byte 0x81188118
	.4byte 0x81188119
	.4byte 0x8118813A
	.4byte 0x8D9A8D9A
	.4byte 0x897AA21C
	.4byte 0xBABEB27D
	.4byte 0x81398D9A
	.4byte 0x99FBA21C
	.4byte 0x855A897A
	.4byte 0x855A813A
	.4byte 0x897B8D9B
	.4byte 0x95BBA63C
	.4byte 0xD33ECF1E
	.4byte 0x99FB919A
	.4byte 0xBEBEB27D
	.4byte 0x919B897A
	.4byte 0x815B857A
	.4byte 0x857AA21B
	.4byte 0xAA3CBEBD
	.4byte 0xC6DDE39F
	.4byte 0x897A8139
	.4byte 0x855A855A
	.4byte 0x897A813A
	.4byte 0x855A9DFB
	.4byte 0xCADDBA9D
	.4byte 0xAA3CD31E
	.4byte 0xF7FFF7FF
	.4byte 0xE37EE39F
	.4byte 0x81198559
	.4byte 0x9DFBCB1D
	.4byte 0xB67CAA3C
	.4byte 0xB67CD33E
	.4byte 0xE79FE79F
	.4byte 0xD33ECB1E
	.4byte 0xEBBFE79F
	.4byte 0xDB7EC2DD
	.4byte 0xAA5CA61C
	.4byte 0xB25CC6DD
	.4byte 0xA63CA21C
	.4byte 0x99BB9DDB
	.4byte 0x91BB91BB
	.4byte 0x8D7A895A
	.4byte 0x897B897B
	.4byte 0x897A855A
	.4byte 0xBA7CC6DD
	.4byte 0xC29CB65B
	.4byte 0x95BA9DDA
	.4byte 0xA5FA9DD9
	.4byte 0x85388537
	.4byte 0x89388538
	.4byte 0x85388538
	.4byte 0x81188118
	.4byte 0xB65B9157
	.4byte 0x85169157
	.4byte 0xA5FA8D78
	.4byte 0x9598D31D
	.4byte 0x89388538
	.4byte 0x917999B9
	.4byte 0x81188118
	.4byte 0x85388539
	.4byte 0x891680F5
	.4byte 0x80F680F6
	.4byte 0xAA1A8517
	.4byte 0x80F780F7
	.4byte 0x89588118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81198119
	.4byte 0x80F680F7
	.4byte 0x80F780F7
	.4byte 0x80F78118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81198119
	.4byte 0x81198139
	.4byte 0x80F78118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188118
	.4byte 0x81188138
	.4byte 0x81398D9B
	.4byte 0x9DFC919B
	.4byte 0x81188118
	.4byte 0x81188117
	.4byte 0x81188118
	.4byte 0x81198139
	.4byte 0x81198139
	.4byte 0x813A813A
	.4byte 0x897A897A
	.4byte 0x855A855B
	.4byte 0x91BBC2DE
	.4byte 0xDF7EDF7F
	.4byte 0x815A99DB
	.4byte 0xC2DEDB5F
	.4byte 0x815A813A
	.4byte 0x855BA21C
	.4byte 0x855B897B
	.4byte 0x897B8D7C
	.4byte 0xF3DFF3DF
	.4byte 0xEBBFCF1E
	.4byte 0xE37FEB9F
	.4byte 0xE39FCF1E
	.4byte 0xC2DED75F
	.4byte 0xDB5FDB5F
	.4byte 0x91BCAE5D
	.4byte 0xBEBECF1E
	.4byte 0xB69DE37F
	.4byte 0xE39FAE5C
	.4byte 0xBEDDCF1E
	.4byte 0xE79FEBBF
	.4byte 0xDB7FDF5F
	.4byte 0xDF7FDF7F
	.4byte 0xDB5FDF7F
	.4byte 0xE37FD75E
	.4byte 0x855A8139
	.4byte 0x8138813A
	.4byte 0xC6DE8D9B
	.4byte 0xAA3C9DFC
	.4byte 0xCAFECAFE
	.4byte 0xFFFFC2BE
	.4byte 0xDB5FE37F
	.4byte 0xF3DFD33E
	.4byte 0xA1FCBEBD
	.4byte 0xBABDD75E
	.4byte 0xB69DE39F
	.4byte 0xDF7FE37F
	.4byte 0x897BA63D
	.4byte 0xB27DC2DE
	.4byte 0x919C99DD
	.4byte 0xAA3DA63D
	.4byte 0xCF1ED73E
	.4byte 0xD73ED75E
	.4byte 0xEBBFEFDE
	.4byte 0xEFBFDB5F
	.4byte 0xDB5FEFBE
	.4byte 0xEFBFCF1E
	.4byte 0xB27DDB5F
	.4byte 0xDB5EAA5D
	.4byte 0xC6FEDF7E
	.4byte 0xE39FEBBF
	.4byte 0xCB1ED75E
	.4byte 0xCAFEDB5E
	.4byte 0xB69DD33E
	.4byte 0xD75ECB1E
	.4byte 0x91BD9E1D
	.4byte 0xA21D95DC
	.4byte 0xF3DFF7DF
	.4byte 0xF3DFEBBF
	.4byte 0xE37FE37F
	.4byte 0xDB5ED75E
	.4byte 0xCAFEC2FE
	.4byte 0xAE7D9DFC
	.4byte 0x95DC95BC
	.4byte 0x95BC8D7B
	.4byte 0xEB9FEFBF
	.4byte 0xE37FC2DD
	.4byte 0xE37FDB7E
	.4byte 0xC2DEAE5D
	.4byte 0xAA5D99DC
	.4byte 0x8D9B897B
	.4byte 0x895B855B
	.4byte 0x897B897B
	.4byte 0x897B897B
	.4byte 0x895A895A
	.4byte 0x897B897B
	.4byte 0x895A897A
	.4byte 0x897B897B
	.4byte 0x897A855A
	.4byte 0x919BAA3C
	.4byte 0xB25C95BB
	.4byte 0x85598539
	.4byte 0x81398139
	.4byte 0x855A8559
	.4byte 0x855A855A
	.4byte 0x855A855A
	.4byte 0x855A855A
	.4byte 0x895A855A
	.4byte 0x855A857A
	.4byte 0x81398139
	.4byte 0x81398139
	.4byte 0x8139813A
	.4byte 0x813A813A
	.4byte 0x855A815A
	.4byte 0x815A855A
	.4byte 0x855A855A
	.4byte 0x855A855A
	.4byte 0x81398139
	.4byte 0x8139813A
	.4byte 0x815A855A
	.4byte 0x855A855A
	.4byte 0x855A855A
	.4byte 0x855B855B
	.4byte 0x855B855B
	.4byte 0x857B855B
	.4byte 0x8139813A
	.4byte 0x813A813A
	.4byte 0x855A855A
	.4byte 0x853A855A
	.4byte 0x855B855B
	.4byte 0x855B855B
	.4byte 0x855B895B
	.4byte 0x895B897B
	.4byte 0x857B99FC
	.4byte 0xA63DB69D
	.4byte 0x857B897B
	.4byte 0x91BCAE5D
	.4byte 0x855B8D9B
	.4byte 0x8D9C8D9C
	.4byte 0x897C897C
	.4byte 0x8D9C8D9C
	.4byte 0xC6FEAA3D
	.4byte 0x853B855B
	.4byte 0xAA3D919C
	.4byte 0x895B895B
	.4byte 0x897C897C
	.4byte 0x897C897C
	.4byte 0x899C8D9C
	.4byte 0x8D9C899C
	.4byte 0x895B895B
	.4byte 0x897C899C
	.4byte 0x895B897C
	.4byte 0x897C8D9C
	.4byte 0x897C897C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C91BD
	.4byte 0x95BDAA3D
	.4byte 0x8D9C95BD
	.4byte 0x919D95BD
	.4byte 0x8D9C8D9C
	.4byte 0x91BD95BD
	.4byte 0x919D91BD
	.4byte 0x91BD95BD
	.4byte 0xD33EEFBF
	.4byte 0xF3DFEFBF
	.4byte 0xB69EEB9F
	.4byte 0xFFFFFBFF
	.4byte 0xA21DBEBE
	.4byte 0xEBBFEFBF
	.4byte 0x9DFDBABE
	.4byte 0xD35FC6FE
	.4byte 0xE79FF3DF
	.4byte 0xF3DFC2DE
	.4byte 0xF3DFF3DF
	.4byte 0xFBFFB69E
	.4byte 0xE79FEBBF
	.4byte 0xEFBFA1FD
	.4byte 0xCF1FDF7F
	.4byte 0xC6DE8D9D
	.4byte 0x95DD95BD
	.4byte 0x95BD99DD
	.4byte 0x8D9D95BD
	.4byte 0x8D9C8D9C
	.4byte 0x8D9D8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x95DD99DD
	.4byte 0x99DD8D9C
	.4byte 0x8D9C899C
	.4byte 0x899C8D7C
	.4byte 0x8D9C8D9C
	.4byte 0x897C897C
	.4byte 0x8D9C8D9C
	.4byte 0x8D7C897C
	.4byte 0x8D9C899C
	.4byte 0x897C897B
	.4byte 0x8D7C8D7C
	.4byte 0x8D9B897B
	.4byte 0x897C8D7C
	.4byte 0x897B897C
	.4byte 0x899C8D7C
	.4byte 0x8D7C897C
	.4byte 0x897B855B
	.4byte 0x855B895B
	.4byte 0x897B895B
	.4byte 0x855B855B
	.4byte 0x897B897B
	.4byte 0x895B855B
	.4byte 0x897C897C
	.4byte 0x897B897B
	.4byte 0x857B857B
	.4byte 0x897B897B
	.4byte 0x857B857B
	.4byte 0x897B897B
	.4byte 0x857B857B
	.4byte 0x857B897B
	.4byte 0x855B855B
	.4byte 0x897B897B
	.4byte 0xAA3CD33E
	.4byte 0xCEFEC6DD
	.4byte 0x9DFCBA9D
	.4byte 0xAA3CBA9D
	.4byte 0x99DC99DC
	.4byte 0x9DFCAA1C
	.4byte 0xB27DB69D
	.4byte 0xBEDDCAFE
	.4byte 0x9DDB897A
	.4byte 0x897A857A
	.4byte 0x99DC95BB
	.4byte 0x897B897B
	.4byte 0xB67DC2DD
	.4byte 0xAA3CA1FC
	.4byte 0xD73ED73E
	.4byte 0xC6DDC2BD
	.4byte 0x857A857B
	.4byte 0x857B855B
	.4byte 0x8D9B91BB
	.4byte 0x91BC897B
	.4byte 0xA61CB67D
	.4byte 0xC6DE99DC
	.4byte 0xB27CAE5C
	.4byte 0xAE5D91BC
	.4byte 0x857B857B
	.4byte 0x897B897B
	.4byte 0x897B897B
	.4byte 0x897B899C
	.4byte 0x8D9B8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x897B897C
	.4byte 0x897C899C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8DBD
	.4byte 0x919D91BD
	.4byte 0x899C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x91BD91BD
	.4byte 0x91BD91BD
	.4byte 0x91BD91BD
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8DBD
	.4byte 0x8D9C8D9C
	.4byte 0x919D91BD
	.4byte 0x919D919D
	.4byte 0x91BD91BD
	.4byte 0x91BD91BD
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C919D
	.4byte 0x8D9C919D
	.4byte 0x91BD91BD
	.4byte 0x919D91BD
	.4byte 0x91BD91BD
	.4byte 0x91BD95BD
	.4byte 0x91BD919D
	.4byte 0x91BD91BD
	.4byte 0x91BD95BD
	.4byte 0x91BD91BD
	.4byte 0x95BD95BD
	.4byte 0x91BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BDA63E
	.4byte 0xBEDEB69E
	.4byte 0x95BDA21D
	.4byte 0xA63E9DFD
	.4byte 0x95BD99DD
	.4byte 0x99DD95BD
	.4byte 0x95BD95DD
	.4byte 0x95DD99DD
	.4byte 0xB69EB6BE
	.4byte 0x99DD919D
	.4byte 0x99DD95DD
	.4byte 0x91BD91BD
	.4byte 0x95BD95BD
	.4byte 0x95BD91BD
	.4byte 0x99DE95BD
	.4byte 0x95BD95BD
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x91BD919C
	.4byte 0x8D9C8D9C
	.4byte 0x91BD91BD
	.4byte 0x91BD91BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x8D9C8D9C
	.4byte 0x899C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x919D919D
	.4byte 0x8D9D8D9D
	.4byte 0x91BD91BD
	.4byte 0x95BD9DFD
	.4byte 0x8D9C899C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x95BD91BD
	.4byte 0x919D8D9D
	.4byte 0x897C897C
	.4byte 0x897C897B
	.4byte 0x899C899C
	.4byte 0x899C897C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9C
	.4byte 0x899C897C
	.4byte 0x897B895B
	.4byte 0x897B919B
	.4byte 0x897B897B
	.4byte 0x897B91BC
	.4byte 0x8D9C897C
	.4byte 0x897C897B
	.4byte 0x897C857C
	.4byte 0x8D9C9E1C
	.4byte 0xAA5CAA5C
	.4byte 0xB69DC2DD
	.4byte 0x91BC95BC
	.4byte 0x99DC9DFC
	.4byte 0x8D9C8D9C
	.4byte 0x8D9B8D9B
	.4byte 0x8D9C8D9C
	.4byte 0x8D9C8D9B
	.4byte 0xC6DDC6DD
	.4byte 0xB25DC2BD
	.4byte 0x9DFC99DC
	.4byte 0x95BC9DDC
	.4byte 0x91BC91BC
	.4byte 0x919C919C
	.4byte 0x9DFCA61C
	.4byte 0xA61CA1FD
	.4byte 0xB67DAE7D
	.4byte 0xA21D91BC
	.4byte 0xA1FD9DFC
	.4byte 0x95DC95BD
	.4byte 0x91BC91BC
	.4byte 0x95DD95DD
	.4byte 0xBA7DB27D
	.4byte 0x99DD99FD
	.4byte 0x91BC91BC
	.4byte 0x91BD91BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95DD95DD
	.4byte 0x99DD99DD
	.4byte 0x99FD9DFD
	.4byte 0x9DFD9DFD
	.4byte 0x91BD91BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x99DD99DD
	.4byte 0x99DD99DD
	.4byte 0x9DFD9DFD
	.4byte 0x9DFD9DFD
	.4byte 0x95BD95BD
	.4byte 0x95BD9E1D
	.4byte 0x95BD95BD
	.4byte 0x99DD9DFD
	.4byte 0x99DD99DD
	.4byte 0x99DD99DD
	.4byte 0x9DFE9DFD
	.4byte 0x9DFD9DFD
	.4byte 0x99DD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x95BD95BD
	.4byte 0x99DD99DD
	.4byte 0x99DD99DD
	.4byte 0x9DFD99FE
	.4byte 0x9DFEA21E
	.4byte 0x95BD919D
	.4byte 0xA1FDB67E
	.4byte 0x99DDA21D
	.4byte 0xC2DEFBFF
	.4byte 0x9DFDA63E
	.4byte 0xCF1EEB9F
	.4byte 0xAA3EC2DE
	.4byte 0xE37FFBDF
	.4byte 0x95BD95BD
	.4byte 0x95BD99DD
	.4byte 0xC2BEB27E
	.4byte 0xAE7E99DE
	.4byte 0xE37FDB5E
	.4byte 0xE37FE37F
	.4byte 0xF7DFF3DF
	.4byte 0xFBDFFFFF
	.4byte 0x99DD95DE
	.4byte 0x95DE95DD
	.4byte 0x9DFEB69E
	.4byte 0xD73FC6DF
	.4byte 0xE77FFBFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFBFFFFFF
	.4byte 0x99DE99DE
	.4byte 0x99DD99DD
	.4byte 0x9DFE9DFE
	.4byte 0x9DFE99FE
	.4byte 0xDB5FA21E
	.4byte 0x9DFEB67E
	.4byte 0xFFFFD73F
	.4byte 0xE37FF7DF
	.4byte 0x95DD95DD
	.4byte 0x99DD95BD
	.4byte 0x9DFE9DFE
	.4byte 0x99FE9DFE
	.4byte 0xF7FFE79F
	.4byte 0xAE5E99FE
	.4byte 0xFFFFFFFF
	.4byte 0xF7DFC2DF
	.4byte 0x95BD95BD
	.4byte 0xAE5DC6FE
	.4byte 0x99DEAA5E
	.4byte 0xC6FEA63D
	.4byte 0xA21EB27E
	.4byte 0xA63EA61E
	.4byte 0xDF5FF3BF
	.4byte 0xE77FF3DF
	.4byte 0xB27D99DD
	.4byte 0x91BD91BD
	.4byte 0x9DFDA61E
	.4byte 0x91BD95BD
	.4byte 0xD73FEB9F
	.4byte 0xA1FD919D
	.4byte 0xFFFFFFFF
	.4byte 0xF7DFD31F
	.4byte 0x91BD8D9C
	.4byte 0x99DDA21D
	.4byte 0x91BD99DD
	.4byte 0xBEDEDB5E
	.4byte 0x919D99DD
	.4byte 0x9DFDA63D
	.4byte 0xBE9E95BD
	.4byte 0x9DFD91BD
	.4byte 0xA21DA61D
	.4byte 0xA61CB69D
	.4byte 0xD75ECF1E
	.4byte 0xBA9DA63D
	.4byte 0xAA3DA21D
	.4byte 0x95DD91BC
	.4byte 0x91BD95BD
	.4byte 0x95BC91BC
	.4byte 0x95BC9DDC
	.4byte 0x91BC8D9B
	.4byte 0xC6DDCEFD
	.4byte 0xD31DBE9D
	.4byte 0xCF1DD31D
	.4byte 0xE77EEF9E
	.4byte 0xCF1DDB3D
	.4byte 0xD71DE35D
	.4byte 0xA61CAE5C
	.4byte 0xC2BCD73D
	.4byte 0xDB3CCEFD
	.4byte 0xDB3CE35D
	.4byte 0xDF5CCEFC
	.4byte 0xD31CCF1C
	.4byte 0xE35CE77C
	.4byte 0xDF5CDB3C
	.4byte 0xEF9EF3BE
	.4byte 0xBE9E99DD
	.4byte 0xEB9DEFBD
	.4byte 0xE79DCEFD
	.4byte 0xEB9DF7DD
	.4byte 0xF7BDF7DD
	.4byte 0xDF5DE77D
	.4byte 0xDF5DD31D
	.4byte 0x9DFD9DFD
	.4byte 0xA21DA21D
	.4byte 0xC6DDBEBE
	.4byte 0xA63EA21E
	.4byte 0xF7DDF7DE
	.4byte 0xAA5EB69D
	.4byte 0xDF5DEFBD
	.4byte 0xCAFED73D
	.4byte 0x9E1D9E1D
	.4byte 0xA63EA21D
	.4byte 0xAA5ED31E
	.4byte 0xEB9EB69E
	.4byte 0xEB9DFFFE
	.4byte 0xFFFEDB5E
	.4byte 0xF7DDF7DE
	.4byte 0xF7DEEFBE
	.4byte 0xA21EA21E
	.4byte 0xA21E9E1E
	.4byte 0xA63EA63E
	.4byte 0xA63EA63E
	.4byte 0xAA7EB29E
	.4byte 0xAE7EAA5E
	.4byte 0xDF7EF3BE
	.4byte 0xE35ECAFE
	.4byte 0xA21EAE5E
	.4byte 0xA63EAA5E
	.4byte 0xAA5EB29E
	.4byte 0xAA5EAA5E
	.4byte 0xAA5EA65E
	.4byte 0xAA7EAA5E
	.4byte 0xDF5ECF1E
	.4byte 0xBABEAE7E
	.4byte 0xBEBED73E
	.4byte 0xDB5EE79F
	.4byte 0xA65EA65E
	.4byte 0xB29EC2DE
	.4byte 0xAA7EAA5E
	.4byte 0xAA5EB29E
	.4byte 0xAE7EAE7E
	.4byte 0xAE7EB6BE
	.4byte 0xEBBFF3DF
	.4byte 0xF3DFF7DF
	.4byte 0xD73EDF7E
	.4byte 0xDF7EE79E
	.4byte 0xCB1ECF3E
	.4byte 0xD33EDB5E
	.4byte 0xBEDEC6FE
	.4byte 0xCF1ED33E
	.4byte 0xF7DFFBFF
	.4byte 0xFBDFFFFF
	.4byte 0xF7DFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEFBEFFFF
	.4byte 0xFFFFF7DF
	.4byte 0xDB5EE37E
	.4byte 0xE37FDF7E
	.4byte 0xFFFFF7FF
	.4byte 0xF7FFFFFF
	.4byte 0xFFFFF3DF
	.4byte 0xDB5EF3BF
	.4byte 0xFBDFE37F
	.4byte 0xC6FEDB5E
	.4byte 0xDB5ECAFE
	.4byte 0xBABEBEDE
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEFBEF3BF
	.4byte 0xF7DFF3BE
	.4byte 0xC6FED33E
	.4byte 0xDB5EE37E
	.4byte 0xF7DFFBDF
	.4byte 0xFBFFF7DF
	.4byte 0xF7DFFBFF
	.4byte 0xFBFFF7DF
	.4byte 0xEFBFEFBF
	.4byte 0xEFBFF7DF
	.4byte 0xE37EDB5E
	.4byte 0xDB5EE79E
	.4byte 0xFBFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFBDFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFBFF
	.4byte 0xFFFFF7DF
	.4byte 0xFBDFF7DF
	.4byte 0xEFBEE37E
	.4byte 0xFFFFD71E
	.4byte 0xEFBFC2BE
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEFBEEBBE
	.4byte 0xFFFFFFFF
	.4byte 0xCB1EC6FD
	.4byte 0xCF1DDF5E
	.4byte 0x9DFD95BD
	.4byte 0x95BC95BC
	.4byte 0xBA9E91BD
	.4byte 0xA63DD73E
	.4byte 0xE77EDB5E
	.4byte 0xBEBDD33E
	.4byte 0xDF7EE37E
	.4byte 0xE77ED73D
	.4byte 0xE37EE35C
	.4byte 0xCAFCD73C
	.4byte 0xC6FDDF5D
	.4byte 0xE35CD73C
	.4byte 0xBABCC6DC
	.4byte 0xE35CE35C
	.4byte 0xBA9CB67C
	.4byte 0xD71CCADC
	.4byte 0xCEFCE77C
	.4byte 0xEFBDF3BD
	.4byte 0xDB3CE35C
	.4byte 0xE35CDF5D
	.4byte 0xE35CD73C
	.4byte 0xC2DCBEBC
	.4byte 0xBA9BB25B
	.4byte 0xAE5BB27B
	.4byte 0xEF9DEB9D
	.4byte 0xDB3DD73D
	.4byte 0xD73DDF5D
	.4byte 0xE37DD71D
	.4byte 0xCAFCD31C
	.4byte 0xDB3CCAFC
	.4byte 0xB69CBEBC
	.4byte 0xBABCB69C
	.4byte 0xDB3DEB9D
	.4byte 0xDB5DCF1D
	.4byte 0xDF5DEF9C
	.4byte 0xEFBDD73D
	.4byte 0xCEFDDF5C
	.4byte 0xE77DDB5D
	.4byte 0xB69CBEBC
	.4byte 0xC6DCC6FC
	.4byte 0xDB5DE37D
	.4byte 0xE79DEB9D
	.4byte 0xD31DDB5D
	.4byte 0xD33DD73D
	.4byte 0xCAFDCEFD
	.4byte 0xCAFDC6FD
	.4byte 0xC2DDBABD
	.4byte 0xB69CBABD
	.4byte 0xEB9DE79E
	.4byte 0xEF9EEB9E
	.4byte 0xCF1DD31D
	.4byte 0xCF1DD73D
	.4byte 0xC6FDC6FD
	.4byte 0xD31DD33D
	.4byte 0xBEDDBABD
	.4byte 0xB69DBA9D
	.4byte 0xF3BEF3BE
	.4byte 0xE37ED75E
	.4byte 0xDF5DDF5D
	.4byte 0xE37EE77E
	.4byte 0xCF1DC6FD
	.4byte 0xD33DDF7D
	.4byte 0xBEBDBEBD
	.4byte 0xC6DDC6DD
	.4byte 0xC2DEBABE
	.4byte 0xB69EB29E
	.4byte 0xDF5EDB5E
	.4byte 0xCF1ECB1E
	.4byte 0xDF5EDF7D
	.4byte 0xE37DE37D
	.4byte 0xCAFDCF1D
	.4byte 0xC6DDB67C
	.4byte 0xBEDEBEDE
	.4byte 0xBABEBEDE
	.4byte 0xCF1EC2DE
	.4byte 0xB6BEBABE
	.4byte 0xDB5DCF3E
	.4byte 0xC6FECF1D
	.4byte 0xB27DB69D
	.4byte 0xBEBDCEFD
	.4byte 0xC6FECB1E
	.4byte 0xCB1ECAFE
	.4byte 0xBABEBEDE
	.4byte 0xC2FECF1E
	.4byte 0xD75DCF1E
	.4byte 0xD75ED75E
	.4byte 0xC6DDC6DD
	.4byte 0xC6DDC6FD
	.4byte 0xC71ECF1E
	.4byte 0xD75ECF1E
	.4byte 0xD73ED75E
	.4byte 0xD75EE37E
	.4byte 0xEFBDE37D
	.4byte 0xCF1EC6FE
	.4byte 0xBA9DB69D
	.4byte 0xBA9DAE5D
	.4byte 0xD33ED75E
	.4byte 0xCAFECAFE
	.4byte 0xDF7ED75E
	.4byte 0xC6FDCB1D
	.4byte 0xC2DDC2DE
	.4byte 0xCF1DD33D
	.4byte 0xA61CBA9D
	.4byte 0xD31DD33D
	.4byte 0xCAFEC6FE
	.4byte 0xC6FDCB1E
	.4byte 0xC2FDC6FE
	.4byte 0xC6FEC71D
	.4byte 0xC2DDC2DD
	.4byte 0xCAFDC6FD
	.4byte 0xCB1DCF1D
	.4byte 0xC6FDB69D
	.4byte 0xD33ED75E
	.4byte 0xD75EC6FD
	.4byte 0xD33ED33E
	.4byte 0xC6FDC2DD
	.4byte 0xBEDEC2DD
	.4byte 0xC2DDC2DD
	.4byte 0xAA5DAA5D
	.4byte 0xBABDC6FD
	.4byte 0xBABDB69D
	.4byte 0xC6FDD73D
	.4byte 0xC6FDCF1D
	.4byte 0xD73DDF7D
	.4byte 0xC6DDBABD
	.4byte 0xBA9CBABD
	.4byte 0xCAFDBEDD
	.4byte 0xB6BCB27C
	.4byte 0xE37DD73D
	.4byte 0xDF5DDB3D
	.4byte 0xE79EE79D
	.4byte 0xD33DCB1D
	.4byte 0xCB1DD31D
	.4byte 0xD31DD73D
	.4byte 0xB27CBABD
	.4byte 0xCAFCC6DC
	.4byte 0xBA9BB27B
	.4byte 0xAE5BB27B
	.4byte 0xA21AA21A
	.4byte 0xA21AA21A
	.4byte 0x99D99DFA
	.4byte 0xA21AA21A
	.4byte 0x99D899D9
	.4byte 0x9DF99DF9
	.4byte 0xA61AA21A
	.4byte 0xA63BA63B
	.4byte 0x9DFA9DFA
	.4byte 0xA21A9DFA
	.4byte 0xA21AA1FA
	.4byte 0xA1FA9DFA
	.4byte 0x9DD89DD7
	.4byte 0x9DD7A1D7
	.4byte 0xAA3BAA3C
	.4byte 0xA63CA63C
	.4byte 0x9E1AA21B
	.4byte 0xA21BA21B
	.4byte 0x9DFA99F9
	.4byte 0x99FA9DFA
	.4byte 0x9DD69DB6
	.4byte 0x99B59596
	.4byte 0xA61CAA3C
	.4byte 0xAA3CAA3C
	.4byte 0xA21BA21B
	.4byte 0xA21BA21C
	.4byte 0x99FA99FA
	.4byte 0x99FA9DFA
	.4byte 0x99B59DB6
	.4byte 0x95B69196
	.4byte 0xAE5CAA3C
	.4byte 0xA61CA63C
	.4byte 0xA21BA21B
	.4byte 0xA21BA21B
	.4byte 0x9DFA9DFA
	.4byte 0x9E1A9E1A
	.4byte 0x95978D76
	.4byte 0x91979197
	.4byte 0xAA3CA61C
	.4byte 0xA61CA21C
	.4byte 0xA21BA21C
	.4byte 0xA61CA63C
	.4byte 0x9E1BA21B
	.4byte 0xA21B9E1B
	.4byte 0x95B895B8
	.4byte 0x95B895B8
	.4byte 0xA63CAE5C
	.4byte 0xB27CB67C
	.4byte 0xA21CA61C
	.4byte 0xA63CAE5C
	.4byte 0x9E1B9DFB
	.4byte 0x99FB9DFB
	.4byte 0x99D89DF9
	.4byte 0x9DF9A1F9
	.4byte 0xAE7CAA5C
	.4byte 0xAA3CA63C
	.4byte 0xA63C9DFC
	.4byte 0x9DFC9DFC
	.4byte 0x9DFB9DFB
	.4byte 0x9DFB9E1B
	.4byte 0x9DF9A619
	.4byte 0xA219A219
	.4byte 0xA21CA21C
	.4byte 0xA21CA61C
	.4byte 0x9DFCA21C
	.4byte 0xA21C9DFB
	.4byte 0xA63BA21B
	.4byte 0x9DFB9DFB
	.4byte 0xA219A219
	.4byte 0xA1F9A61A
	.4byte 0xA21C9DFC
	.4byte 0x9DFC9DFC
	.4byte 0x9E1C9DFB
	.4byte 0x99FC9DFC
	.4byte 0x9DFB9DFB
	.4byte 0x9E1BA21B
	.4byte 0xA63AA21A
	.4byte 0xA21A9DFA
	.4byte 0x99FC99FC
	.4byte 0x99FC9DFC
	.4byte 0x9DFC9DFB
	.4byte 0x99FB99FB
	.4byte 0xA21BA21B
	.4byte 0xA21B9E1B
	.4byte 0x9DFAA21A
	.4byte 0xA63AA21A
	.4byte 0x9DFC99FC
	.4byte 0xA21CBEBC
	.4byte 0x99FB99FB
	.4byte 0x99FB95DB
	.4byte 0x9DFB9DFB
	.4byte 0x9DFB9DFA
	.4byte 0x9E1A9DFA
	.4byte 0x9DFA9DFA
	.4byte 0xBEBDAA5C
	.4byte 0x99FB95DB
	.4byte 0x99FB99DA
	.4byte 0x95DA95DA
	.4byte 0x99FA99FA
	.4byte 0x99DA99DA
	.4byte 0x9DFA9DF9
	.4byte 0x99D995D9
	.4byte 0x95DA95DB
	.4byte 0x95DA9DFA
	.4byte 0x95BA95DA
	.4byte 0x91BA91B9
	.4byte 0x95DA95D9
	.4byte 0x95D991B9
	.4byte 0x95D995D9
	.4byte 0x95D999D9
	.4byte 0x99FAA21B
	.4byte 0xB27CB27C
	.4byte 0x91B991B9
	.4byte 0x95B99DFA
	.4byte 0x91D991D9
	.4byte 0x91B991D9
	.4byte 0x95D995D9
	.4byte 0x99D995D8
	.4byte 0xBA9CB69C
	.4byte 0xB67CBEBC
	.4byte 0xAA5BA21A
	.4byte 0x99FA9DFA
	.4byte 0x91B991D9
	.4byte 0x95D995D9
	.4byte 0x95B895B8
	.4byte 0x95B895B8
	.4byte 0x8D769597
	.4byte 0x95B799D8
	.4byte 0x8D749594
	.4byte 0x91759195
	.4byte 0x9DD1A1B0
	.4byte 0x9D6EA18E
	.4byte 0xB1CCB1CC
	.4byte 0xB5CDB5ED
	.4byte 0x99B69595
	.4byte 0x95959594
	.4byte 0xA5D399B2
	.4byte 0x95719150
	.4byte 0xA58EA18C
	.4byte 0x9D8C996C
	.4byte 0xBDECC20D
	.4byte 0xB9ECADAB
	.4byte 0x91739173
	.4byte 0x91739594
	.4byte 0x91509571
	.4byte 0x999195B1
	.4byte 0x956C914B
	.4byte 0x892B8D4B
	.4byte 0xA98AA56A
	.4byte 0xA16A9529
	.4byte 0xA9F5A5F5
	.4byte 0x95B59995
	.4byte 0x9590918E
	.4byte 0x918E958F
	.4byte 0x8D4B914A
	.4byte 0x996B998B
	.4byte 0x88E89949
	.4byte 0xA9ABA9AC
	.4byte 0x9DB599B5
	.4byte 0x99B59195
	.4byte 0xA1D1AA13
	.4byte 0xA5F5A1B4
	.4byte 0x8D0A956C
	.4byte 0xA5F0A9F0
	.4byte 0x994B88C9
	.4byte 0x952AA5AD
	.4byte 0x95B59595
	.4byte 0x959599B6
	.4byte 0xA5F5A9F6
	.4byte 0xA9D6B217
	.4byte 0xB210B212
	.4byte 0xA9F0A9F0
	.4byte 0xA9CDAE0D
	.4byte 0xB22EB22F
	.4byte 0x99B699B5
	.4byte 0x9DD69DB6
	.4byte 0xB216B637
	.4byte 0xB637ADF6
	.4byte 0xB231B230
	.4byte 0xB650BE51
	.4byte 0xA5EEA9EE
	.4byte 0xB1CE9D4C
	.4byte 0xA1D6B637
	.4byte 0xAE17AE37
	.4byte 0xAE16A5D4
	.4byte 0xA1B4A1B5
	.4byte 0xA9AF890B
	.4byte 0x892C8D2D
	.4byte 0x88EA850A
	.4byte 0x8D6B916B
	.4byte 0xAE16A9F6
	.4byte 0xA5F7AA17
	.4byte 0xB616BA37
	.4byte 0xB216A5F6
	.4byte 0x99909D91
	.4byte 0x9D90A5D2
	.4byte 0x8D4A8D4A
	.4byte 0x914A914B
	.4byte 0xAA179DD6
	.4byte 0x99D799D7
	.4byte 0xA5D6A9F6
	.4byte 0xA9F6A1B6
	.4byte 0xB614BE76
	.4byte 0xB654B234
	.4byte 0x914B892A
	.4byte 0xA1CEC671
	.4byte 0x99B799B7
	.4byte 0x99B799D7
	.4byte 0x9DB59994
	.4byte 0x95749995
	.4byte 0xB2149DB2
	.4byte 0x99929D92
	.4byte 0xBE92AA11
	.4byte 0xA1CFA20E
	.4byte 0x95B795B7
	.4byte 0x99B795B7
	.4byte 0x9DD69DD6
	.4byte 0x95959154
	.4byte 0xB1F2A9D1
	.4byte 0xA5B0A9D0
	.4byte 0xA62DAA0C
	.4byte 0xC64DCA4D
	.4byte 0x95B795B7
	.4byte 0x91969176
	.4byte 0x99B499B5
	.4byte 0x9DD6A5F6
	.4byte 0xA58DA5AE
	.4byte 0xA5B0A9F2
	.4byte 0xC64EC62D
	.4byte 0xC22DC64E
	.4byte 0x89568976
	.4byte 0x89568D75
	.4byte 0x99B59595
	.4byte 0x91949594
	.4byte 0xB634AE33
	.4byte 0xA211A5F1
	.4byte 0xD26FD290
	.4byte 0xCA6FCE50
	.4byte 0x8D768955
	.4byte 0x89558955
	.4byte 0x91748D53
	.4byte 0x8D539174
	.4byte 0xA9F1A5F2
	.4byte 0xA212A1D2
	.4byte 0xD670CA2E
	.4byte 0xADCEA9EF
	.4byte 0x89558D56
	.4byte 0x91768D76
	.4byte 0x8D738933
	.4byte 0x99949574
	.4byte 0x9DD19DD2
	.4byte 0xA5D1A1D1
	.4byte 0xA5CE99AD
	.4byte 0xA18CB5CC
	.4byte 0x9D88A188
	.4byte 0xA589A189
	.4byte 0xA5699105
	.4byte 0x91059926
	.4byte 0x88429D27
	.4byte 0x9906A147
	.4byte lbl_80008000
	.4byte 0x84418C83
	.4byte 0xB1CAB9EB
	.4byte 0xBDEBBDCB
	.4byte 0xA588A588
	.4byte 0xA988ADA9
	.4byte 0x94E490E4
	.4byte 0x94E49905
	.4byte 0x990694C5
	.4byte 0x94E594C4
	.4byte 0xB9CBBDCA
	.4byte 0xC60BCE0B
	.4byte 0xA988A967
	.4byte 0xA546B5A8
	.4byte 0x950590E4
	.4byte 0x88828442
	.4byte 0x8CA48CC3
	.4byte 0x8CC484A2
	.4byte 0xC5EAAD69
	.4byte 0x94E78CE7
	.4byte 0xB9C9B187
	.4byte 0xB187B1A9
	.4byte 0x84218863
	.4byte 0x90838C63
	.4byte 0x84628461
	.4byte 0x84608000
	.4byte 0x88E78908
	.4byte 0x80A784E9
	.4byte 0xA968A589
	.4byte 0xADC9B5CA
	.4byte 0x90A4A947
	.4byte 0xB168B9C9
	.4byte 0x846188C1
	.4byte 0x88A288C1
	.4byte 0x892A914B
	.4byte 0x954B910B
	.4byte 0xB9CAB9AA
	.4byte 0xB168B188
	.4byte 0xB9E8B1A8
	.4byte 0x99249504
	.4byte 0x88E28D03
	.4byte 0x8D038903
	.4byte 0x8CEB8CEB
	.4byte 0x84CA84C9
	.4byte 0x9D2784C5
	.4byte 0x8CE79D28
	.4byte 0x88A38483
	.4byte 0x84A388C4
	.4byte 0x88E38D04
	.4byte 0x91248D04
	.4byte 0x8D4B958B
	.4byte 0x916A9149
	.4byte 0x91088D08
	.4byte 0x88E78D08
	.4byte 0x84A38463
	.4byte 0x88A488C5
	.4byte 0x8D0388E3
	.4byte 0x88E384A3
	.4byte 0x91489148
	.4byte 0x91489148
	.4byte 0x88E788E8
	.4byte 0x912A9149
	.4byte 0x88C58D0A
	.4byte 0x8D2D8CE7
	.4byte 0x84A38483
	.4byte 0x80828062
	.4byte 0x91689148
	.4byte 0xA18D9D8E
	.4byte 0x88E7A9CC
	.4byte 0xCA6FAD89
	.4byte 0x88A494E5
	.4byte 0x90E588A3
	.4byte 0x84838482
	.4byte 0x84828062
	.4byte 0x916AA9AD
	.4byte 0xA9CCA9EC
	.4byte 0x9926A5CB
	.4byte 0xAA0CA60A
	.4byte 0x888388C5
	.4byte 0x8D099547
	.4byte 0x80628061
	.4byte lbl_80218021
	.4byte 0xB1ECC22D
	.4byte 0xCA2CCE2C
	.4byte 0xA208A609
	.4byte 0xA5E8B1EA
	.4byte 0x8CE38D04
	.4byte 0x84A28883
	.4byte 0x80018021
	.4byte lbl_80018000
	.4byte 0xD24CD22C
	.4byte 0xD22BD22C
	.4byte 0xA128A569
	.4byte 0xB9EAC5EA
	.4byte 0x84838CA5
	.4byte 0x90C68863
	.4byte lbl_80008000
	.4byte 0x80008001
	.4byte 0xD22CC60B
	.4byte 0xB9EAB20B
	.4byte 0xB5899126
	.4byte 0x8D858964
	.4byte 0x80018001
	.4byte 0x80428042
	.4byte lbl_80218021
	.4byte lbl_80218041
	.4byte 0xA9EA99A8
	.4byte 0x8D679146
	.4byte 0x892484A4
	.4byte 0x80438022
	.4byte 0x80018001
	.4byte 0x80018001
	.4byte 0x80018041
	.4byte 0x80408021
	.4byte 0x8D468D66
	.4byte 0x91879988
	.4byte lbl_80229907
	.4byte 0xB1ABA56A
	.4byte 0x80008001
	.4byte lbl_80008000
	.4byte 0x80418000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte 0x84218462
	.4byte 0x84A08480
	.4byte 0x88628862
	.4byte lbl_80008000
	.4byte 0x80408481
	.4byte 0x888090C0
	.4byte 0x94E198E2
	.4byte 0x84418882
	.4byte 0x90A48881
	.4byte 0x88628461
	.4byte 0x84828481
	.4byte 0x88A28882
	.4byte 0x886188A0
	.4byte 0x90C190A1
	.4byte 0x8CC19102
	.4byte 0x8C639D27
	.4byte 0x94E58CC4
	.4byte 0x84618020
	.4byte 0x90A398C6
	.4byte 0x84608440
	.4byte 0x88C08460
	.4byte 0x88A18881
	.4byte 0x84808480
	.4byte 0x88C388C3
	.4byte 0x84A288A2
	.4byte 0x9D2694E5
	.4byte 0x90E49543
	.4byte 0x848094C4
	.4byte 0x9D279523
	.4byte 0x84608440
	.4byte 0x84808480
	.4byte 0x84A08481
	.4byte 0x8CE188C1
	.4byte 0x95228CE2
	.4byte 0x910288A0
	.4byte 0x8D2188C1
	.4byte 0x84A08060
	.4byte 0x84408020
	.4byte 0x84408000
	.4byte 0x84618481
	.4byte 0x8D028D02
	.4byte 0x88E28D01
	.4byte 0x8D229543
	.4byte 0x88E18901
	.4byte 0x89018902
	.4byte 0x88A084A0
	.4byte 0x848084A0
	.4byte 0x88E28D03
	.4byte 0x91239144
	.4byte 0x91239143
	.4byte 0x91239543
	.4byte 0x8D0290E2
	.4byte 0x88C18CE2
	.4byte 0x88608460
	.4byte 0x804088A1
	.4byte 0x91449144
	.4byte 0x91448D24
	.4byte 0x8D239123
	.4byte 0x914388E2
	.4byte 0x88A188C1
	.4byte 0x8CE28481
	.4byte lbl_80208440
	.4byte 0x88C18440
	.4byte 0x91448D23
	.4byte 0x8D048D04
	.4byte 0x91238D03
	.4byte 0x95249143
	.4byte 0x8CE29123
	.4byte 0x8CE29122
	.4byte 0x88818CE2
	.4byte 0x88A18CE2
	.4byte 0x88E38D04
	.4byte 0x88A388A3
	.4byte 0x8D239143
	.4byte 0x91239123
	.4byte 0x88C29102
	.4byte 0x91029103
	.4byte 0x88818CC2
	.4byte 0x88A190E3
	.4byte 0x88C388E2
	.4byte 0x84828462
	.4byte 0x8D239123
	.4byte 0x91238D23
	.4byte 0x8D029102
	.4byte 0x95238CE2
	.4byte 0x8CC288A1
	.4byte 0x910288C2
	.4byte 0x84A38482
	.4byte 0x84628462
	.4byte 0x8D038D03
	.4byte 0x8D028D22
	.4byte 0x88C28CE2
	.4byte 0x848188C1
	.4byte 0x888188A1
	.4byte lbl_80208461
	.4byte 0x84618041
	.4byte 0x848288A2
	.4byte 0x89028CE2
	.4byte 0x910388E2
	.4byte 0x88A18CC2
	.4byte 0x8CA28481
	.4byte 0x88C188C1
	.4byte 0x84A08040
	.4byte 0x88A28CE2
	.4byte 0x88C188E2
	.4byte 0x90E28CE2
	.4byte 0x88C188C1
	.4byte 0x88A18CC1
	.4byte 0x848188A1
	.4byte 0x888188A1
	.4byte lbl_80208440
	.4byte 0x88C284C1
	.4byte 0x88C188C1
	.4byte 0x88C18480
	.4byte 0x8CC188C1
	.4byte 0x84608440
	.4byte 0x88A08480
	.4byte 0x84408440
	.4byte 0x846084C0
	.4byte 0x88C28461
	.4byte lbl_80008000
	.4byte 0x88C188C1
	.4byte 0x84A184C1
	.4byte 0x84608440
	.4byte lbl_80008020
	.4byte 0x84A08480
	.4byte 0x84408880
	.4byte 0x84E08D20
	.4byte 0x8D209941
	.4byte 0x8D418920
	.4byte 0x89008920
	.4byte 0x8D618D81
	.4byte 0x918191A1
	.4byte 0x91819181
	.4byte 0x91818D81
	.4byte 0x91019121
	.4byte 0x8D018CE0
	.4byte 0x8D419181
	.4byte 0x95829182
	.4byte 0x91819181
	.4byte 0x918191A1
	.4byte 0x8D818D81
	.4byte 0x91819181
	.4byte 0x91019542
	.4byte 0x914284C0
	.4byte 0x91829582
	.4byte 0x91829582
	.4byte 0x95C295C2
	.4byte 0x95C295C2
	.4byte 0x91A191A1
	.4byte 0x95C195E1
	.4byte 0x848088C1
	.4byte 0x88C088C0
	.4byte 0x8D829182
	.4byte 0x91629183
	.4byte 0x95C291C2
	.4byte 0x91C295C2
	.4byte 0x95E19601
	.4byte 0x9A029A01
	.4byte 0x88A08CA0
	.4byte 0x890088A0
	.4byte 0x95A391A3
	.4byte 0x918391A3
	.4byte 0x99E295A2
	.4byte 0x91A291A2
	.4byte 0x96019602
	.4byte 0x96029602
	.4byte 0x89018D01
	.4byte 0x88A088A0
	.4byte 0x918391A3
	.4byte 0x91A39183
	.4byte 0x9DE491A3
	.4byte 0x8D828D61
	.4byte 0x960295E2
	.4byte 0x96029602
	.4byte 0x88608860
	.4byte 0x84808CC1
	.4byte 0x91A391A3
	.4byte 0x95A495A3
	.4byte 0x91A29182
	.4byte 0x91A29183
	.4byte 0x96029602
	.4byte 0x96029602
	.4byte 0x88808460
	.4byte 0x848084A0
	.4byte 0x91629162
	.4byte 0x8D228921
	.4byte 0x95C399C4
	.4byte 0xA1E49DE4
	.4byte 0x9E43A243
	.4byte 0xA2439E23
	.4byte 0x848184A1
	.4byte 0x84A088E1
	.4byte 0x88E188E0
	.4byte 0x88A08480
	.4byte 0x95A395A3
	.4byte 0x95C49183
	.4byte 0x9A229E23
	.4byte 0x9E439E43
	.4byte 0x84C088C1
	.4byte 0x84A08D02
	.4byte 0x84808460
	.4byte 0x84808480
	.4byte 0x91838D62
	.4byte 0x8D418941
	.4byte 0x9E639A42
	.4byte 0x9A429A22
	.4byte 0x88C18060
	.4byte 0x84C184A1
	.4byte 0x84608020
	.4byte 0x80608000
	.4byte 0x8D428921
	.4byte 0x8D618D42
	.4byte 0x9A429A42
	.4byte 0x9A429A42
	.4byte 0x84A084A0
	.4byte 0x84A08480
	.4byte 0x804084A0
	.4byte 0x88E184E1
	.4byte 0x8D628D83
	.4byte 0x8DA28D82
	.4byte 0x9A229A22
	.4byte 0x9A229A22
	.4byte 0x80408440
	.4byte 0x84A08060
	.4byte 0x89018901
	.4byte 0x89428941
	.4byte 0x8D829182
	.4byte 0x95A28D81
	.4byte 0x9A229A21
	.4byte 0x9A219A22
	.4byte 0x84C084C0
	.4byte 0x848084A0
	.4byte 0x8D428D62
	.4byte 0x8D628D62
	.4byte 0x91A295A2
	.4byte 0x99C295A2
	.4byte 0x9A229A22
	.4byte 0x9A219A21
	.4byte 0x85018921
	.4byte 0x89218941
	.4byte 0x8D418D41
	.4byte 0x89218901
	.4byte 0x95A195A1
	.4byte 0x91A191A1
	.4byte 0x96019A21
	.4byte 0x96019601
	.4byte 0x89418921
	.4byte 0x892084E0
	.4byte 0x89208920
	.4byte 0x89418961
	.4byte 0x91A19181
	.4byte 0x8D819181
	.4byte 0x95E195C1
	.4byte 0x91A191A1
	.4byte 0x8D818D81
	.4byte 0x91819181
	.4byte 0x89618D61
	.4byte 0x8D618D61
	.4byte 0x89218941
	.4byte 0x89418941
	.4byte 0x8D428521
	.4byte 0x89218D42
	.4byte 0x8D818D81
	.4byte 0x8D618D62
	.4byte 0x8D618D62
	.4byte 0x8D628D62
	.4byte 0x8D428941
	.4byte 0x89418D62
	.4byte 0x91628941
	.4byte 0x85218941
	.4byte 0x8D628D62
	.4byte 0x8D628D82
	.4byte 0x8D628D62
	.4byte 0x8D628D63
	.4byte 0x8D628D63
	.4byte 0x8D638D63
	.4byte 0x89418941
	.4byte 0x89428942
	.4byte 0x8D828D83
	.4byte 0x91A291C2
	.4byte 0x8D638D83
	.4byte 0x8D838D83
	.4byte 0x8D628D63
	.4byte 0x8D838D83
	.4byte 0x89418962
	.4byte 0x89428921
	.4byte 0x91C391C2
	.4byte 0x95E295E2
	.4byte 0x8D849184
	.4byte 0x91848D84
	.4byte 0x8D838D83
	.4byte 0x8D838D63
	.4byte 0x89428942
	.4byte 0x89628942
	.4byte 0x95E295E2
	.4byte 0x96029A02
	.4byte 0x8D848D83
	.4byte 0x8D8391A4
	.4byte 0x8D838D83
	.4byte 0x8D849184
	.4byte 0x89428942
	.4byte 0x8D638D63
	.4byte 0x95E29A22
	.4byte 0x9E429E62
	.4byte 0x91A491A4
	.4byte 0x91A491A4
	.4byte 0x918491A5
	.4byte 0x91849184
	.4byte 0x8D838D84
	.4byte 0x8D638D63
	.4byte 0xA2629E62
	.4byte 0x9E429E43
	.4byte 0x91A491A4
	.4byte 0x8D8391A4
	.4byte 0x91A49184
	.4byte 0x91A48D84
	.4byte 0x8D838D83
	.4byte 0x8D838D83
	.4byte 0x9E439E42
	.4byte 0x9E429E42
	.4byte 0x91A491A3
	.4byte 0x91A491A4
	.4byte 0x91848D84
	.4byte 0x91848D84
	.4byte 0x8D838D83
	.4byte 0x8D838D83
	.4byte 0x9E429A42
	.4byte 0x9A229A22
	.4byte 0x8DA391A4
	.4byte 0x91A48DA3
	.4byte 0x8D839184
	.4byte 0x8D838DA4
	.4byte 0x8D838D62
	.4byte 0x8D628D62
	.4byte 0x9E429E42
	.4byte 0x9E429E22
	.4byte 0x8DA491A4
	.4byte 0x91A48D83
	.4byte 0x8D838D83
	.4byte 0x8D849184
	.4byte 0x89628D62
	.4byte 0x8D638D63
	.4byte 0x9A229A21
	.4byte 0x9A219A22
	.4byte 0x8D838D83
	.4byte 0x8D838D83
	.4byte 0x8D638D63
	.4byte 0x8D838D83
	.4byte 0x8D628D63
	.4byte 0x8D628962
	.4byte 0x9A219A21
	.4byte 0x9A019A02
	.4byte 0x8D838D83
	.4byte 0x8D638962
	.4byte 0x8D638D83
	.4byte 0x8D628D62
	.4byte 0x89628962
	.4byte 0x89418941
	.4byte 0x95E295E2
	.4byte 0x91C191A1
	.4byte 0x89428942
	.4byte 0x89428942
	.4byte 0x89628D62
	.4byte 0x89428521
	.4byte 0x89418942
	.4byte 0x89428941
	.4byte 0x8D818D81
	.4byte 0x8D818D81
	.4byte 0x85218921
	.4byte 0x85218521
	.4byte 0x89428521
	.4byte 0x85218921
	.4byte 0x89428941
	.4byte 0x85218500
	.4byte 0x8D818D81
	.4byte 0x8D818D81
	.4byte 0x85218921
	.4byte 0x89418941
	.4byte 0x89418520
	.4byte 0x89218921
	.4byte 0x85008500
	.4byte 0x89218901
	.4byte 0x85008921
	.4byte 0x89218921
	.4byte 0x85218D42
	.4byte 0x89219142
	.4byte 0x85218520
	.4byte 0x85218520
	.4byte 0x85008920
	.4byte 0x85208521
	.4byte 0x85418941
	.4byte 0x8D418D42
	.4byte 0x85418521
	.4byte 0x95639162
	.4byte 0x85208541
	.4byte 0x85218541
	.4byte 0x85218521
	.4byte 0x85418541
	.4byte 0x89418941
	.4byte 0x85218521
	.4byte 0x85418941
	.4byte 0x89428941
	.4byte 0x89428942
	.4byte 0x85418541
	.4byte 0x85218541
	.4byte 0x85418941
	.4byte 0x89418941
	.4byte 0x89428942
	.4byte 0x89418962
	.4byte 0x89628941
	.4byte 0x85218962
	.4byte 0x89628962
	.4byte 0x89428941
	.4byte 0x85218941
	.4byte 0x89418942
	.4byte 0x89618D62
	.4byte 0x89418521
	.4byte 0x89418942
	.4byte 0x89628942
	.4byte 0x8D628962
	.4byte 0x89418941
	.4byte 0x89428962
	.4byte 0x8D628942
	.4byte 0x89428D63
	.4byte 0x89418941
	.4byte 0x85218921
	.4byte 0x89218962
	.4byte 0x89628941
	.4byte 0x89628962
	.4byte 0x89628941
	.4byte 0x89628962
	.4byte 0x89428962
	.4byte 0x89418941
	.4byte 0x85218921
	.4byte 0x89419142
	.4byte 0x8D428D22
	.4byte 0x8D628D62
	.4byte 0x89428942
	.4byte 0x89628942
	.4byte 0x89428D62
	.4byte 0x89418942
	.4byte 0x85218921
	.4byte 0x8D428941
	.4byte 0x89218921
	.4byte 0x89428962
	.4byte 0x89628962
	.4byte 0x8D638D62
	.4byte 0x8D638D42
	.4byte 0x89218941
	.4byte 0x89218521
	.4byte 0x8D428941
	.4byte 0x8D218D21
	.4byte 0x89418942
	.4byte 0x8D428D41
	.4byte 0x85218942
	.4byte 0x89628962
	.4byte 0x85218521
	.4byte 0x89418521
	.4byte 0x95639142
	.4byte 0x89218921
	.4byte 0x8D628D42
	.4byte 0x8D428942
	.4byte 0x89418941
	.4byte 0x89418962
	.4byte 0x85018521
	.4byte 0x89218921
	.4byte 0x89218D21
	.4byte 0x89418921
	.4byte 0x89218501
	.4byte 0x85418941
	.4byte 0x89418941
	.4byte 0x89418521
	.4byte 0x89218521
	.4byte 0x85208500
	.4byte 0x89218921
	.4byte 0x85008900
	.4byte 0x89418541
	.4byte 0x85218920
	.4byte 0x85418521
	.4byte 0x85218941
	.4byte 0x85218500
	.4byte 0x85018521
	.4byte 0x89018D21
	.4byte 0x85008501
	.4byte 0x89218D21
	.4byte 0x85208921
	.4byte 0x85218521
	.4byte 0x85218500
	.4byte 0x85208521
	.4byte 0x850184E0
	.4byte 0x850084E0
	.4byte 0x84A080A0
	.4byte 0x892184E0
	.4byte 0x84E084E0
	.4byte 0x85208520
	.4byte 0x85218500
	.4byte 0x84E08500
	.4byte 0x84E08500
	.4byte 0x80E084E0
	.4byte 0x850084E0
	.4byte 0x850084E0
	.4byte 0x84E080E0
	.4byte 0x850084E0
	.4byte 0x85008501
	.4byte 0x84E08500
	.4byte 0x85008500
	.4byte 0x84E084E0
	.4byte 0x85008500
	.4byte 0x84C084C0
	.4byte 0x850084E0
	.4byte 0x84E08520
	.4byte 0x85218521
	.4byte 0x84A08520
	.4byte 0x85008520
	.4byte 0x80C08500
	.4byte 0x84E084E0
	.4byte 0x80C08900
	.4byte 0x84E084A0
	.4byte 0x85208521
	.4byte 0x85218520
	.4byte 0x89208921
	.4byte 0x85218521
	.4byte 0x85208521
	.4byte 0x85208521
	.4byte 0x85008900
	.4byte 0x89008920
	.4byte 0x85418541
	.4byte 0x85418921
	.4byte 0x85418521
	.4byte 0x85218541
	.4byte 0x85208100
	.4byte 0x89208921
	.4byte 0x9D84ADA7
	.4byte 0x9D848921
	.4byte 0x85218941
	.4byte 0x89418941
	.4byte 0x85218521
	.4byte 0x85418941
	.4byte 0x85218540
	.4byte 0x89618921
	.4byte 0x89419142
	.4byte 0x89218521
	.4byte 0x89418921
	.4byte 0x85218541
	.4byte 0x89428521
	.4byte 0x85218941
	.4byte 0x85218541
	.4byte 0x89418962
	.4byte 0x89418941
	.4byte 0x84E08941
	.4byte 0x89418962
	.4byte 0x89628942
	.4byte 0x89418941
	.4byte 0x89628941
	.4byte 0x89418941
	.4byte 0x89418942
	.4byte 0x89628941
	.4byte 0x89618941
	.4byte 0x89418521
	.4byte 0x89418941
	.4byte 0x89618962
	.4byte 0x89418962
	.4byte 0x89628962
	.4byte 0x85418541
	.4byte 0x89418962
	.4byte 0x89418941
	.4byte 0x89418941
	.4byte 0x8D628962
	.4byte 0x89628962
	.4byte 0x89618941
	.4byte 0x89418961
	.4byte 0x89628541
	.4byte 0x89418942
	.4byte 0x89418941
	.4byte 0x89628962
	.4byte 0x89418962
	.4byte 0x89628541
	.4byte 0x89418941
	.4byte 0x89418961
	.4byte 0x89218521
	.4byte 0x89418521
	.4byte 0x89418941
	.4byte 0x89418521
	.4byte 0x89418941
	.4byte 0x89628941
	.4byte 0x89418521
	.4byte 0x85418942
	.4byte 0x89418541
	.4byte 0x85218942
	.4byte 0x85218521
	.4byte 0x89418541
	.4byte 0x85418521
	.4byte 0x89418541
	.4byte 0x89418521
	.4byte 0x85418941
	.4byte 0x85418521
	.4byte 0x85418521
	.4byte 0x85218521
	.4byte 0x85418521
	.4byte 0x85218520
	.4byte 0x85218521
	.4byte 0x89218500
	.4byte 0x85218500
	.4byte 0x85208500
	.4byte 0x85218500
	.4byte 0x85018500
	.4byte 0x85218500
	.4byte 0x85218520
	.4byte 0x85218521
	.4byte 0x85218500
	.4byte 0x85008500
	.4byte 0x852084E0
	.4byte 0x84E08500
	.4byte 0x84E08500
	.4byte 0x85008500
	.4byte 0x84E084E0
	.4byte 0x85008500
	.4byte 0x80E08500
	.4byte 0x84E08500
	.4byte 0x84E08500
	.4byte 0x80E084E0
	.4byte 0x84E080E0
	.4byte 0x84E080E0
	.4byte 0x80E080E0
	.4byte 0x850080E0
	.4byte 0x80E080C0
	.4byte 0x848084A0
	.4byte 0x80C080C0
	.4byte 0x84E084C0
	.4byte 0x84E080C0
	.4byte 0x80C080E0
	.4byte 0x850084E0
	.4byte 0x80A080C0
	.4byte 0x84E084E0
	.4byte 0x84C080C0
	.4byte 0x84C080A0
	.4byte 0x84E080E0
	.4byte 0x80C08080
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x10020000
	.4byte 0x00200020
	.4byte 0x00000800
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_80008000
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte lbl_8000C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210C210
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xC210E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318E318
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xE318FFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x20000000
	.4byte 0x00200020
	.4byte 0x00001000
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFC0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0C0C0
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFC0FFFF
	.4byte 0xFFC0FFC0
	.4byte 0xFFFFFFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xC0C0FFFF
	.4byte 0xC0C0C0C0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x08070000
	.4byte 0x00200020
	.4byte 0x00000400
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0206090C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0C090602
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000051D
	.4byte 0x00010510
	.4byte 0x1F2D383D
	.4byte 0x03102742
	.4byte 0x58666F71
	.4byte 0x1A3C5D72
	.4byte 0x7B7F7F80
	.4byte 0x486B7B7F
	.4byte 0x807F7F7F
	.4byte 0x3D382D1F
	.4byte 0x10050100
	.4byte 0x716F6658
	.4byte 0x42271003
	.4byte 0x807F7F7B
	.4byte 0x725D3C1A
	.4byte 0x7F7F7F80
	.4byte 0x7F7B6B48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x05000000
	.4byte 0
	.4byte 0x1D050000
	.4byte 0
	.4byte 0
	.4byte 0x00031948
	.4byte 0
	.4byte 0x000F3C6A
	.4byte 0
	.4byte 0x06275D7B
	.4byte 0
	.4byte 0x1042717F
	.4byte 0x6F7E807F
	.4byte 0x7F7F7F7F
	.4byte 0x7D7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F807E6F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7D
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x48190300
	.4byte 0
	.4byte 0x6A3C0F00
	.4byte 0
	.4byte 0x7B5D2706
	.4byte 0
	.4byte 0x7F714210
	.4byte 0
	.4byte 0x00000002
	.4byte 0x1E587B80
	.4byte 0x00000005
	.4byte 0x2D667E7F
	.4byte 0x00000009
	.4byte 0x376E7F7F
	.4byte 0x0000000C
	.4byte 0x3D71807F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x807B581E
	.4byte 0x02000000
	.4byte 0x7F7E662D
	.4byte 0x05000000
	.4byte 0x7F7F6E37
	.4byte 0x09000000
	.4byte 0x7F80713D
	.4byte 0x0C000000
	.4byte 0x0000000C
	.4byte 0x3E71807F
	.4byte 0x0000000A
	.4byte 0x386F7F7F
	.4byte 0x00000006
	.4byte 0x2E677F7F
	.4byte 0x00000002
	.4byte 0x215A7C80
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F80713E
	.4byte 0x0C000000
	.4byte 0x7F7F6F38
	.4byte 0x0A000000
	.4byte 0x7F7F672E
	.4byte 0x06000000
	.4byte 0x807C5A21
	.4byte 0x02000000
	.4byte 0
	.4byte 0x1145737F
	.4byte 0
	.4byte 0x072A607C
	.4byte 0
	.4byte 0x0112416D
	.4byte 0
	.4byte 0x00041D4C
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x807F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7E7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x727F807F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F80
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F7E
	.4byte 0x7F7F7F7F
	.4byte 0x7F807F72
	.4byte 0x7F734511
	.4byte 0
	.4byte 0x7C602A07
	.4byte 0
	.4byte 0x6D411201
	.4byte 0
	.4byte 0x4C1D0400
	.4byte 0
	.4byte 0
	.4byte 0x00000722
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x4E6F7D7F
	.4byte 0x807F7F7F
	.4byte 0x1E436375
	.4byte 0x7D7F8080
	.4byte 0x05142E4A
	.asciz "_lsu"
	.byte 0x01, 0x08, 0x14
	.4byte 0x25354045
	.4byte 0x7F7F7F80
	.4byte 0x7F7D6F4E
	.4byte 0x80807F7D
	.4byte 0x7563431E
	.4byte 0x75736C5F
	.4byte 0x4A2E1405
	.4byte 0x45403525
	.4byte 0x14080100
	.4byte 0x22070000
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x04090D10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x100D0904
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x08070000
	.4byte 0x00200020
	.4byte 0x00000400
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x01020303
	.4byte 0x00010306
	.4byte 0x090B0D0E
	.4byte 0x03070D14
	.4byte 0x1C222629
	.4byte 0
	.4byte 0
	.4byte 0x03030201
	.4byte 0x01000000
	.4byte 0x0E0D0B09
	.4byte 0x06030100
	.4byte 0x2926221C
	.4byte 0x140D0703
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0x00000105
	.4byte 0
	.4byte 0x00020610
	.4byte 0
	.4byte 0x01061123
	.4byte 0x00000001
	.4byte 0x050F233B
	.4byte 0x0C162330
	.4byte 0x3B444A4D
	.4byte 0x1E304151
	.4byte 0x5C64686B
	.4byte 0x384D5F6A
	.4byte 0x72767879
	.4byte 0x53667278
	.4byte 0x7B7D7D7D
	.4byte 0x4D4A443B
	.4byte 0x3023160C
	.4byte 0x6B68645C
	.4byte 0x5141301E
	.4byte 0x79787672
	.4byte 0x6A5F4D38
	.4byte 0x7D7D7D7B
	.4byte 0x78726653
	.4byte 0x05010000
	.4byte 0
	.4byte 0x10060200
	.4byte 0
	.4byte 0x23110601
	.4byte 0
	.4byte 0x3B230F05
	.4byte 0x01000000
	.4byte 0x00000003
	.4byte 0x0C1E3853
	.4byte 0x00000107
	.4byte 0x162F4D66
	.4byte 0x0000030D
	.asciz "#A^r"
	.byte 0x01, 0x06, 0x14
	.4byte 0x2F506A78
	.4byte 0x68757B7D
	.4byte 0x7E7E7E7E
	.4byte 0x757B7D7E
	.4byte 0x7E7E7E7E
	.4byte 0x7B7D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7D7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7D7B7568
	.4byte 0x7E7E7E7E
	.4byte 0x7E7D7B75
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D7B
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7D
	.4byte 0x53381E0C
	.4byte 0x03000000
	.4byte 0x664D2F16
	.4byte 0x07010000
	.4byte 0x725E4123
	.4byte 0x0D030000
	.4byte 0x786A502F
	.4byte 0x14060100
	.4byte 0x0001081C
	.asciz ";\\r{"
	.byte 0x02, 0x0B, 0x22
	.asciz "Dcv}"
	.byte 0x02, 0x0D, 0x26
	.asciz "Jhx}"
	.byte 0x03, 0x0E, 0x29
	.4byte 0x4D6B797D
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7B725C3B
	.4byte 0x1C080100
	.4byte 0x7D766344
	.4byte 0x220B0200
	.4byte 0x7D78684A
	.4byte 0x260D0200
	.4byte 0x7D796B4D
	.4byte 0x290E0300
	.4byte 0x00030E29
	.asciz "Mky}"
	.byte 0x02, 0x0D, 0x26
	.asciz "Jhx}"
	.byte 0x02, 0x0B, 0x22
	.asciz "Dcv}"
	.byte 0x01, 0x08, 0x1C
	.4byte 0x3B5C727B
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7D796B4D
	.4byte 0x290E0300
	.4byte 0x7D78684A
	.4byte 0x260D0200
	.4byte 0x7D766344
	.4byte 0x220B0200
	.4byte 0x7B725C3B
	.4byte 0x1C080100
	.4byte 0x00010614
	.asciz "/Pjx"
	.byte 0x00, 0x03, 0x0D
	.asciz "#A^r"
	.byte 0x00, 0x01, 0x07
	.4byte 0x162F4D66
	.4byte 0x00000003
	.4byte 0x0C1E3853
	.4byte 0x7D7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7B7D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x757B7D7E
	.4byte 0x7E7E7E7E
	.4byte 0x68757B7D
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7D
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D7B
	.4byte 0x7E7E7E7E
	.4byte 0x7E7D7B75
	.4byte 0x7E7E7E7E
	.4byte 0x7D7B7568
	.4byte 0x786A502F
	.4byte 0x14060100
	.4byte 0x725E4123
	.4byte 0x0D030000
	.4byte 0x664D2F16
	.4byte 0x07010000
	.4byte 0x53381E0C
	.4byte 0x03000000
	.4byte 0x00000001
	.4byte 0x050F233B
	.4byte 0
	.4byte 0x01061123
	.4byte 0
	.4byte 0x00020610
	.4byte 0
	.4byte 0x00000105
	.4byte 0x53667278
	.4byte 0x7B7D7D7D
	.4byte 0x384D5F6A
	.4byte 0x72767879
	.4byte 0x1E304151
	.4byte 0x5C64686B
	.4byte 0x0C162330
	.4byte 0x3B444A4D
	.4byte 0x7D7D7D7B
	.4byte 0x78726653
	.4byte 0x79787672
	.4byte 0x6A5F4D38
	.4byte 0x6B68645C
	.4byte 0x5141301E
	.4byte 0x4D4A443B
	.4byte 0x3023160C
	.4byte 0x3B230F05
	.4byte 0x01000000
	.4byte 0x23110601
	.4byte 0
	.4byte 0x10060200
	.4byte 0
	.4byte 0x05010000
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03070D14
	.4byte 0x1C222629
	.4byte 0x00010306
	.4byte 0x090B0D0E
	.4byte 0x00000001
	.4byte 0x01020303
	.4byte 0
	.4byte 0
	.4byte 0x2926221C
	.4byte 0x140D0703
	.4byte 0x0E0D0B09
	.4byte 0x06030100
	.4byte 0x03030201
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x08070000
	.4byte 0x00200020
	.4byte 0x00000400
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000209
	.4byte 0
	.4byte 0
	.4byte 0x00020509
	.4byte 0x0F151A1E
	.4byte 0x060B1219
	.4byte 0x1E242B2C
	.4byte 0x1119232C
	.asciz "38=?"
	.balign 4
	.4byte 0
	.4byte 0x1E1A150F
	.4byte 0x09050200
	.4byte 0x2C2B241E
	.4byte 0x19120B06
	.4byte 0x3F3D3833
	.4byte 0x2C231911
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000000
	.4byte 0
	.4byte 0x09020000
	.4byte 0
	.4byte 0
	.4byte 0x00050B15
	.4byte 0
	.4byte 0x050D1924
	.4byte 0x00000002
	.4byte 0x0B192937
	.4byte 0x00000209
	.4byte 0x16273747
	.4byte 0x212D373F
	.4byte 0x474C5053
	.4byte 0x333F4A53
	.4byte 0x595D6162
	.4byte 0x44505B61
	.4byte 0x676A6D6E
	.4byte 0x535F676D
	.4byte 0x71757676
	.4byte 0x53504C47
	.4byte 0x3F372D21
	.4byte 0x62615D5B
	.4byte 0x534A3F34
	.4byte 0x6E6D6A67
	.4byte 0x625B5044
	.4byte 0x76767571
	.4byte 0x6E685F54
	.4byte 0x160D0500
	.4byte 0
	.4byte 0x271A0D05
	.4byte 0
	.4byte 0x3729190B
	.4byte 0x02000000
	.4byte 0x47372716
	.4byte 0x09020000
	.4byte 0x00000611
	.asciz "!3CS"
	.byte 0x02, 0x0B, 0x19
	.asciz ",?P_"
	.byte 0x05, 0x11, 0x23
	.asciz "7J[h"
	.byte 0x09, 0x19, 0x2C
	.4byte 0x3F53616D
	.4byte 0x606A7175
	.4byte 0x767A7A7A
	.4byte 0x6A717679
	.4byte 0x7D7E7D7E
	.4byte 0x71767A7D
	.4byte 0x7E7E7E7E
	.4byte 0x757A7D7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7A7A76
	.4byte 0x75716A61
	.4byte 0x7E7D7D7D
	.4byte 0x7976726A
	.4byte 0x7E7E7E7E
	.4byte 0x7D7A7671
	.4byte 0x7E7E7E7E
	.4byte 0x7E7D7975
	.4byte 0x54443423
	.4byte 0x11060000
	.4byte 0x6050412D
	.4byte 0x1A0B0200
	.4byte 0x6A5D4B38
	.4byte 0x24120500
	.4byte 0x6E645440
	.4byte 0x2D190900
	.4byte 0x000F1E33
	.asciz "GYgq"
	.byte 0x15, 0x24, 0x38
	.asciz "K_ju"
	.byte 0x1A, 0x29, 0x3D
	.asciz "Pamv"
	.byte 0x1E, 0x2C, 0x3F
	.4byte 0x53626E76
	.4byte 0x767D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D79
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D7A
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7A
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7D
	.4byte 0x726A5B48
	.4byte 0x341F0F00
	.4byte 0x756D604F
	.4byte 0x3B241500
	.4byte 0x766E6453
	.4byte 0x3F2B1A00
	.4byte 0x76716454
	.4byte 0x412D1F00
	.4byte 0x001E2C3F
	.asciz "Sbnv"
	.byte 0x1A, 0x29, 0x3D
	.asciz "Pamv"
	.byte 0x15, 0x24, 0x38
	.asciz "L]mu"
	.byte 0x0F, 0x1E, 0x33
	.4byte 0x475B6871
	.4byte 0x7A7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7A7D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x767D7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7D
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7E7A
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D7A
	.4byte 0x7E7E7E7E
	.4byte 0x7E7E7D79
	.4byte 0x76716454
	.4byte 0x412D1F00
	.4byte 0x766E6453
	.4byte 0x402B1A00
	.4byte 0x756D604F
	.4byte 0x3B241500
	.4byte 0x726A5D4A
	.4byte 0x34200F00
	.4byte 0x0009192C
	.asciz "?Sdn"
	.byte 0x05, 0x11, 0x23
	.asciz "7J[h"
	.byte 0x02, 0x0B, 0x19
	.asciz ",?P_"
	.byte 0x00, 0x06, 0x11
	.4byte 0x21344454
	.4byte 0x75797D7E
	.4byte 0x7E7E7E7E
	.4byte 0x71767A7D
	.4byte 0x7E7E7E7E
	.4byte 0x6A727679
	.4byte 0x7D7D7E7E
	.4byte 0x626A7175
	.4byte 0x797A7A7D
	.4byte 0x7E7E7E7E
	.4byte 0x7E7D7A76
	.4byte 0x7E7E7E7E
	.4byte 0x7D7A7972
	.4byte 0x7E7E7D7D
	.4byte 0x7A79726D
	.4byte 0x7D7A7A79
	.4byte 0x76726D64
	.4byte 0x71645442
	.4byte 0x2D190900
	.4byte 0x6A5D4C38
	.4byte 0x24110500
	.4byte 0x6254422F
	.4byte 0x1A0B0200
	.4byte 0x57483723
	.4byte 0x11060000
	.4byte 0x00000209
	.4byte 0x16273747
	.4byte 0x00000002
	.4byte 0x0B192937
	.4byte 0
	.4byte 0x050D1A27
	.4byte 0
	.4byte 0x00050D16
	.4byte 0x5460686E
	.4byte 0x72757676
	.4byte 0x44505D64
	.4byte 0x6A6D6E71
	.4byte 0x34414B54
	.4byte 0x5B606464
	.4byte 0x232D3840
	.4byte 0x484F5354
	.4byte 0x76767572
	.4byte 0x6E6A6257
	.4byte 0x716E6D6A
	.4byte 0x645D5348
	.4byte 0x6464615D
	.4byte 0x544C4237
	.4byte 0x54534F4A
	.4byte 0x43382F23
	.4byte 0x4A3B2916
	.4byte 0x09020000
	.4byte 0x3B2B1A0B
	.4byte 0x02000000
	.4byte 0x291A0D05
	.4byte 0
	.4byte 0x160D0500
	.4byte 0
	.4byte 0
	.4byte 0x00000209
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x111A242D
	.4byte 0x343B3F41
	.4byte 0x060B1119
	.asciz " $+-"
	.byte 0x02, 0x05, 0x09
	.4byte 0x0F151A1F
	.4byte 0
	.4byte 0
	.4byte 0x41403B34
	.4byte 0x2D241A12
	.4byte 0x2D2B2420
	.4byte 0x19110B06
	.4byte 0x1F1A150F
	.4byte 0x09050200
	.4byte 0
	.4byte 0
	.4byte 0x09020000
	.4byte 0
	.4byte 0x02000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00010001
	.4byte 0x00014100
	.4byte 0x00000044
	.4byte 0x00000014
	.4byte 0x00000058
	.4byte 0x00010010
	.4byte 0x00100020
	.4byte 0x00200000
	.4byte 0x00000024
	.4byte 0xFF000000
	.4byte 0
	.4byte 0x00200020
	.4byte 0
	.4byte 0
	.4byte 0x00200000
	.4byte 0x00200020
	.4byte 0x00000020
	.4byte 0x00010000
	.4byte 0x0000004C
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0x08070000
	.4byte 0x00200020
	.4byte 0x00000400
	.4byte 0x00000080
	.4byte 0x00000080
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0x88888888
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03060708
	.4byte 0x00020608
	.4byte 0x0C0D1010
	.4byte 0x040B0E12
	.4byte 0x13171919
	.4byte 0
	.4byte 0
	.4byte 0x08080604
	.4byte 0x02000000
	.4byte 0x10100F0D
	.4byte 0x0B070300
	.4byte 0x19191715
	.4byte 0x12100C08
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000000
	.4byte 0
	.4byte 0
	.4byte 0x00000208
	.4byte 0
	.4byte 0x00020810
	.4byte 0
	.4byte 0x02080F15
	.4byte 0x00000002
	.4byte 0x070D151C
	.4byte 0x0D121519
	.4byte 0x1B202122
	.4byte 0x13181D22
	.4byte 0x25292A2C
	.4byte 0x1B20252A
	.4byte 0x2E323535
	.4byte 0x22282E33
	.4byte 0x36393B3E
	.4byte 0x2121201D
	.4byte 0x1B171310
	.4byte 0x2B2B2A27
	.4byte 0x23201B15
	.4byte 0x35353330
	.4byte 0x2C28231E
	.4byte 0x3E3D3B38
	.4byte 0x35302A25
	.4byte 0x0B050200
	.4byte 0
	.4byte 0x120C0602
	.4byte 0
	.4byte 0x18120C04
	.4byte 0
	.4byte 0x1F18120B
	.4byte 0x03000000
	.4byte 0x00000003
	.4byte 0x0D131A21
	.4byte 0x00000208
	.4byte 0x10181F27
	.4byte 0x0000040D
	.4byte 0x131C232B
	.4byte 0x0000070F
	.4byte 0x151F2830
	.4byte 0x2830353A
	.4byte 0x3E424446
	.4byte 0x2E363B40
	.4byte 0x464A4D4F
	.4byte 0x333C4146
	.4byte 0x4D525658
	.4byte 0x3840464E
	.4byte 0x555B5F61
	.4byte 0x46464340
	.4byte 0x3D38312B
	.4byte 0x4F4E4B48
	.4byte 0x433E3833
	.4byte 0x58575350
	.4byte 0x49453E38
	.4byte 0x61615C58
	.4byte 0x524A433D
	.4byte 0x251E1710
	.4byte 0x08020000
	.4byte 0x2A231B13
	.4byte 0x0D030000
	.4byte 0x30281F17
	.4byte 0x10080000
	.4byte 0x352C231A
	.4byte 0x120B0200
	.4byte 0x00020B12
	.4byte 0x19222A33
	.4byte 0x00020B13
	.4byte 0x1B262E37
	.4byte 0x00030C15
	.4byte 0x1D273038
	.4byte 0x00030C13
	.4byte 0x1D273038
	.4byte 0x3B434C53
	.4byte 0x5C62676B
	.4byte 0x3F465058
	.4byte 0x61696F73
	.4byte 0x4249535C
	.4byte 0x656D7479
	.4byte 0x424B545D
	.4byte 0x676F777D
	.4byte 0x6B69655F
	.4byte 0x58504840
	.4byte 0x73716C65
	.4byte 0x5C534B44
	.4byte 0x79777169
	.4byte 0x61574E45
	.4byte 0x7F79736B
	.4byte 0x62584F46
	.4byte 0x3830271E
	.4byte 0x150D0400
	.4byte 0x3C332A20
	.4byte 0x180F0600
	.4byte 0x3D352A21
	.4byte 0x1A100800
	.4byte 0x3E352A22
	.4byte 0x19100800
	.4byte 0x00030C15
	.4byte 0x1D27303A
	.4byte 0x00020C15
	.4byte 0x1D263038
	.4byte 0x00020B13
	.4byte 0x1B232D36
	.4byte 0x0000080F
	.4byte 0x17212933
	.4byte 0x424B535D
	.4byte 0x676F777C
	.4byte 0x4049535A
	.4byte 0x646C7177
	.4byte 0x3D454E56
	.4byte 0x5F666B6F
	.4byte 0x3A424951
	.4byte 0x585F6467
	.4byte 0x7D79736B
	.4byte 0x62584F46
	.4byte 0x77736D67
	.4byte 0x5F564D45
	.4byte 0x6F6D6962
	.4byte 0x5A524A42
	.4byte 0x6766615B
	.4byte 0x554D463E
	.4byte 0x3D352A22
	.4byte 0x19100800
	.4byte 0x3D332A21
	.4byte 0x19100700
	.4byte 0x3A32291F
	.4byte 0x170D0500
	.4byte 0x362E251B
	.4byte 0x130C0400
	.4byte 0x0000040D
	.4byte 0x151D262E
	.4byte 0x0000020B
	.4byte 0x12192129
	.4byte 0x00000006
	.4byte 0x0F151D24
	.4byte 0x00000002
	.4byte 0x0B10171E
	.4byte 0x363D434B
	.4byte 0x51565B5D
	.4byte 0x32383F44
	.4byte 0x494D5254
	.4byte 0x2A31383D
	.4byte 0x4245494B
	.4byte 0x252B3236
	.4byte 0x3B3D4042
	.4byte 0x5D5C5853
	.4byte 0x4E48403A
	.4byte 0x54534F4C
	.4byte 0x46423B35
	.4byte 0x4B4B4643
	.4byte 0x403B352E
	.4byte 0x42423F3B
	.4byte 0x38333029
	.4byte 0x332A2219
	.4byte 0x12080000
	.4byte 0x2E251E15
	.4byte 0x0D060000
	.4byte 0x27201A12
	.4byte 0x0B020000
	.4byte 0x221B130E
	.4byte 0x04000000
	.4byte 0
	.4byte 0x040C1218
	.4byte 0
	.4byte 0x00060D12
	.4byte 0
	.4byte 0x0002040B
	.4byte 0
	.4byte 0x00000003
	.4byte 0x1E24292E
	.4byte 0x3335383A
	.4byte 0x171D2126
	.4byte 0x2A2D3032
	.4byte 0x1215191E
	.4byte 0x21242627
	.4byte 0x0B0F1215
	.4byte 0x171B1B1D
	.4byte 0x39383733
	.4byte 0x322C2722
	.4byte 0x3030302A
	.4byte 0x28231F1B
	.4byte 0x27272622
	.4byte 0x201B1713
	.4byte 0x1D1D1C19
	.4byte 0x1713120D
	.4byte 0x1B150F08
	.4byte 0x02000000
	.4byte 0x130F0803
	.4byte 0
	.4byte 0x0D080200
	.4byte 0
	.4byte 0x07020000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02060B0E
	.4byte 0x0F131315
	.4byte 0x00000204
	.4byte 0x080B0C0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x15151412
	.4byte 0x0F0D0803
	.4byte 0x0C0C0B0B
	.4byte 0x07030000
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BA7C0
lbl_801BA7C0:

	# ROM: 0x1B77C0
	.asciz "Error: Create Model Over!\n"

.global lbl_801BA7DB
lbl_801BA7DB:

	# ROM: 0x1B77DB
	.byte 0x45
	.asciz "rror: OBJPtr Error! %s\n"

.global lbl_801BA7F4
lbl_801BA7F4:

	# ROM: 0x1B77F4
	.asciz "Error: Not Found %s for HookSet\n"

.global lbl_801BA815
lbl_801BA815:

	# ROM: 0x1B7815
	.byte 0x45, 0x72, 0x72
	.asciz "or: Not Found %s for HookReset\n"

.global lbl_801BA838
lbl_801BA838:

	# ROM: 0x1B7838
	.4byte 0x42340000
	.4byte 0x41A00000
	.4byte 0x459C4000
	.4byte 0x3F99999A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42C80000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x028001E0
	.4byte 0
	.4byte 0
	.4byte 0x44200000
	.4byte 0x43F00000
	.4byte 0
	.4byte 0x3F800000

.global lbl_801BA890
lbl_801BA890:

	# ROM: 0x1B7890
	.asciz "Error: Not Find Light Name.(%s)\n"

.global lbl_801BA8B1
lbl_801BA8B1:

	# ROM: 0x1B78B1
	.byte 0x45, 0x72, 0x72
	.asciz "or: Not Found %s for MipMapSet\n"
	.4byte 0

.global lbl_801BA8D8
lbl_801BA8D8:

	# ROM: 0x1B78D8
	.asciz "Error: Create Motion Over!\n"

.global lbl_801BA8F4
lbl_801BA8F4:

	# ROM: 0x1B78F4
	.asciz "Error: Cluster Entry Over\n"
	.balign 4

.global lbl_801BA910
lbl_801BA910:

	# ROM: 0x1B7910
	.4byte func_8002A650
	.4byte func_8002A650
	.4byte lbl_8002A2DC
	.4byte lbl_8002A4FC
	.4byte func_8002A650
	.4byte lbl_8002A580
	.4byte lbl_8002A5B4
	.4byte func_8002A650
	.4byte func_8002A650
	.4byte lbl_8002A540
	.4byte lbl_8002A5F8

.global lbl_801BA93C
lbl_801BA93C:

	# ROM: 0x1B793C
	.4byte lbl_8002B1F8
	.4byte lbl_8002B200
	.4byte lbl_8002B208
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte lbl_8002B210
	.4byte lbl_8002B218
	.4byte lbl_8002B220
	.4byte lbl_8002B228
	.4byte lbl_8002B230
	.4byte lbl_8002B238
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte lbl_8002B248
	.4byte lbl_8002B250
	.4byte lbl_8002B240
	.4byte func_8002B260
	.4byte func_8002B260
	.4byte lbl_8002B258

.global lbl_801BAA2C
lbl_801BAA2C:

	# ROM: 0x1B7A2C
	.4byte lbl_8002B33C
	.4byte lbl_8002B3A4
	.4byte lbl_8002B40C
	.4byte lbl_8002B474
	.4byte lbl_8002B4DC
	.4byte lbl_8002B544
	.4byte lbl_8002B5AC
	.4byte lbl_8002B754
	.4byte func_8002B858
	.4byte lbl_8002B7AC
	.byte 0x80, 0x02, 0xB8

.global lbl_801BAA57
lbl_801BAA57:

	# ROM: 0x1B7A57
	.byte 0x04

.global lbl_801BAA58
lbl_801BAA58:

	# ROM: 0x1B7A58
	.4byte lbl_8002B9F8
	.4byte lbl_8002BA00
	.4byte lbl_8002BA08
	.4byte lbl_8002BA10
	.4byte lbl_8002BA38
	.4byte lbl_8002BA60
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte func_8002BA84
	.4byte lbl_8002B9A4
	.4byte lbl_8002B9C0
	.4byte lbl_8002B9DC

.global lbl_801BAAF0
lbl_801BAAF0:

	# ROM: 0x1B7AF0
	.asciz "Error: TexAnim Over\n"

.global lbl_801BAB05
lbl_801BAB05:

	# ROM: 0x1B7B05
	.byte 0x45, 0x72, 0x72
	.asciz "or: Not Found TexAnim Name\n"

.global lbl_801BAB24
lbl_801BAB24:

	# ROM: 0x1B7B24
	.asciz "Error: TexScroll Over\n"
	.balign 4

.global lbl_801BAB3C
lbl_801BAB3C:

	# ROM: 0x1B7B3C
	.4byte 0xBF000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xBF000000
	.4byte 0

.global lbl_801BAB6C
lbl_801BAB6C:

	# ROM: 0x1B7B6C
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000

.global lbl_801BAB8C
lbl_801BAB8C:

	# ROM: 0x1B7B8C
	.4byte 0x3F800000
	.asciz "?fff?333?"
	.balign 4
	.4byte 0x3F000000
	.4byte 0x3F333333
	.4byte 0x3F666666
	.4byte 0x3F800000

.global lbl_801BABAC
lbl_801BABAC:

	# ROM: 0x1B7BAC
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3D4CCCCD
	.4byte 0

.global lbl_801BABC4
lbl_801BABC4:

	# ROM: 0x1B7BC4
	.4byte 0x3DCCCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.4byte 0
	.4byte 0

.global lbl_801BABE0
lbl_801BABE0:

	# ROM: 0x1B7BE0
	.4byte lbl_800332F8
	.4byte lbl_80033310
	.4byte lbl_80033328
	.4byte lbl_80033340
	.4byte lbl_80033358
	.4byte lbl_80033370
	.4byte lbl_80033390
	.4byte lbl_80033388

.global lbl_801BAC00
lbl_801BAC00:

	# ROM: 0x1B7C00
	.4byte lbl_80033DC8
	.4byte lbl_80033DE0
	.4byte lbl_80033DF8
	.4byte lbl_80033E10
	.4byte lbl_80033E28
	.4byte lbl_80033E40
	.4byte lbl_80033E60
	.4byte lbl_80033E58

.global lbl_801BAC20
lbl_801BAC20:

	# ROM: 0x1B7C20
	.4byte lbl_80033BA8
	.4byte lbl_80033BC0
	.4byte lbl_80033BD8
	.4byte lbl_80033BF0
	.4byte lbl_80033C08
	.4byte lbl_80033C20
	.4byte lbl_80033C40
	.4byte lbl_80033C38

.global lbl_801BAC40
lbl_801BAC40:

	# ROM: 0x1B7C40
	.4byte lbl_80033914
	.4byte lbl_8003392C
	.4byte lbl_80033944
	.4byte lbl_8003395C
	.4byte lbl_80033974
	.4byte lbl_8003398C
	.4byte lbl_800339AC
	.4byte lbl_800339A4

.global lbl_801BAC60
lbl_801BAC60:

	# ROM: 0x1B7C60
	.4byte lbl_800336F4
	.4byte lbl_8003370C
	.4byte lbl_80033724
	.4byte lbl_8003373C
	.4byte lbl_80033754
	.4byte lbl_8003376C
	.4byte lbl_8003378C
	.4byte lbl_80033784

.global lbl_801BAC80
lbl_801BAC80:

	# ROM: 0x1B7C80
	.asciz "++++++++++++++++++++ Start New OVL %d (EVT:%d STAT:0x%08x) ++++++++++++++++++\n"
	.byte 0x6F
	.asciz "bjman>Used Memory Size:%08x\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "man>Used Memory Cnt:%d\n"
	.asciz "objman>Init esp\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "man>Call objectsetup\n"
	.byte 0x6F, 0x62
	.asciz "jman>ObjectSetup end\n"

.global lbl_801BAD4A
lbl_801BAD4A:

	# ROM: 0x1B7D4A
	.byte 0x6F, 0x62
	.asciz "jman>Call New Ovl %d(%d)\n"

.global lbl_801BAD66
lbl_801BAD66:

	# ROM: 0x1B7D66
	.byte 0x6F, 0x62
	.asciz "jman>OVL Call over error\n"

.global lbl_801BAD82
lbl_801BAD82:

	# ROM: 0x1B7D82
	.byte 0x6F, 0x62
	.asciz "jman>Ovl Return %d=%d(%d)\n"

.global lbl_801BAD9F
lbl_801BAD9F:

	# ROM: 0x1B7D9F
	.byte 0x6F
	.asciz "bjman>OVL under error\n"

.global lbl_801BADB7
lbl_801BADB7:

	# ROM: 0x1B7DB7
	.byte 0x4F
	.asciz "vlKill %d\n"

.global lbl_801BADC3
lbl_801BADC3:

	# ROM: 0x1B7DC3
	.byte 0x6F
	.4byte 0x626A6D61
	.4byte 0x6E3E206F
	.4byte 0x6D4F766C
	.4byte 0x48697343
	.4byte 0x68673A20
	.4byte 0x6F766572
	.4byte 0x6C617920
	.4byte 0x8EC08D73
	.4byte 0x979A97F0
	.4byte 0x82CC94CD
	.4byte 0x88CD8A4F
	.4byte 0x82F095CF
	.4byte 0x8D5882B5
	.4byte 0x82E682A4
	.4byte 0x82C682B5
	.4byte 0x82DC82B5
	.4byte 0x82BD0A00

.global lbl_801BAE08
lbl_801BAE08:

	# ROM: 0x1B7E08
	.4byte 0x6F626A6D
	.4byte 0x616E3E20
	.4byte 0x6F6D4F76
	.4byte 0x6C486973
	.4byte 0x4765743A
	.4byte 0x206F7665
	.4byte 0x726C6179
	.4byte 0x208EC08D
	.4byte 0x73979A97
	.4byte 0xF082CC94
	.4byte 0xCD88CD8A
	.4byte 0x4F82F08E
	.4byte 0x518FC682
	.4byte 0xB582E682
	.4byte 0xA482C682
	.4byte 0xB582DC82
	.4byte 0xB582BD0A
	.byte 0x00

.global lbl_801BAE4D
lbl_801BAE4D:

	# ROM: 0x1B7E4D
	.byte 0x6F, 0x62, 0x6A
	.asciz "man>InitObjMan start\n"

.global lbl_801BAE66
lbl_801BAE66:

	# ROM: 0x1B7E66
	.byte 0x6F, 0x62
	.asciz "jman>InitObjMan end\n"

.global lbl_801BAE7D
lbl_801BAE7D:

	# ROM: 0x1B7E7D
	.byte 0x6F, 0x62, 0x6A
	.asciz "man>Destory ObjMan\n"

.global lbl_801BAE94
lbl_801BAE94:

	# ROM: 0x1B7E94
	.asciz "Error: ObjMax Over!\n"
	.byte 0xFD, 0x01, 0x48
	.asciz ":%08lX(%ld)"
	.4byte 0xFD014D3A
	.asciz "%08lX(%ld)"
	.byte 0xFD
	.4byte 0x014F424A
	.asciz ":%d/%d"
	.byte 0xFD
	.4byte 0x014F564C
	.asciz ":%ld(%ld<%ld)"
	.byte 0xFD, 0x01
	.asciz "POL:%ld"
	.4byte 0xFD01443A
	.asciz "%08lX(%ld)"
	.byte 0x3D
	.4byte 0x3D3D3D3D
	.4byte 0x3D3D3D3D
	.4byte 0x3D3D3D3D
	.4byte 0x3D3D3D3D
	.4byte 0x3D3D208C
	.4byte 0xBB8DDD93
	.4byte 0x6F985E82
	.4byte 0xB382EA82
	.4byte 0xC482A282
	.4byte 0xE9204F42
	.asciz "JECT ==================\n"
	.byte 0x53, 0x54, 0x41
	.asciz "T PRI GRPN MEMN PROG (TRA) (ROT) (SCA) mdlcnt mtncnt work[0] work[1] work[2] work[3] *data\n"
	.asciz "%04d:%04X %04X %d %d %08X (%.2f %.2f %.2f) (%.2f %.2f %.2f) (%.2f %.2f %.2f) %d %d %08X %08X %08X %08X %08X\n"
	.byte 0x3D, 0x3D, 0x3D
	.asciz "=============================================================\n"
	.balign 4

.global lbl_801BB050
lbl_801BB050:

	# ROM: 0x1B8050
	.4byte 0x008080FF
	.4byte 0x8080C080
	.4byte 0x80808080
	.byte 0x40, 0x80, 0x80

.global lbl_801BB05F
lbl_801BB05F:

	# ROM: 0x1B805F
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00006092
	.4byte 0x0C000000
	.4byte 0x42247E18
	.4byte 0x7E181800
	.4byte 0x3844BA8A
	.4byte 0xBA443800
	.4byte 0x00207628
	.4byte 0x2C2A4600
	.asciz "`x~~x`"
	.balign 4
	.4byte 0x18183C3C
	.4byte 0x7E7E0000
	.4byte 0x7E7E3C3C
	.4byte 0x18180000
	.4byte 0x061E7E7E
	.4byte 0x1E060000
	.4byte 0x7CCEC6C6
	.4byte 0xC6E67C00
	.4byte 0x1C181818
	.4byte 0x18183C00
	.4byte 0x7EC0C07C
	.4byte 0x0606FE00
	.4byte 0x7EC0C07C
	.4byte 0xC0C07E00
	.4byte 0x70686462
	.4byte 0xFE60F000
	.4byte 0xFE06067E
	.4byte 0xC0C07E00
	.4byte 0x7C06067E
	.4byte 0xC6C67C00
	.4byte 0xFEC06030
	.4byte 0x180C0600
	.4byte 0x7CC6C67C
	.4byte 0xC6C67C00
	.4byte 0x7CC6C6FC
	.4byte 0xC0C07E00
	.4byte 0x7CC6C6C6
	.4byte 0xFEC6C600
	.4byte 0x7EC6C67E
	.4byte 0xC6C67E00
	.4byte 0xFC060606
	.4byte 0x0606FC00
	.4byte 0x7EC6C6CF
	.4byte 0xC6C67E00
	.4byte 0xFE06067E
	.4byte 0x0606FE00
	.4byte 0xFE06067E
	.4byte 0x06060600
	.4byte 0
	.4byte 0
	.4byte 0x18181818
	.4byte 0x18001800
	.4byte 0x36362400
	.4byte 0
	.4byte 0x2068386C
	.4byte 0x382C0800
	.4byte 0x10781438
	.4byte 0x503C1000
	.4byte 0x844A2410
	.4byte 0x48A44200
	.4byte 0x30482810
	.4byte 0xA844B800
	.4byte 0x06060400
	.4byte 0
	.4byte 0x10080C0C
	.4byte 0x0C081000
	.4byte 0x08103030
	.4byte 0x30100800
	.4byte 0x00105438
	.4byte 0x38541000
	.4byte 0x0010107C
	.4byte 0x10100000
	.4byte 0
	.4byte 0x06060400
	.4byte 0x0000007C
	.4byte 0
	.4byte 0
	.4byte 0x00060600
	.4byte 0x80402010
	.4byte 0x08040200
	.4byte 0x7CCEC6C6
	.4byte 0xC6E67C00
	.4byte 0x1C181818
	.4byte 0x18183C00
	.4byte 0x7EC0C07C
	.4byte 0x0606FE00
	.4byte 0x7EC0C07C
	.4byte 0xC0C07E00
	.4byte 0x70686462
	.4byte 0xFE60F000
	.4byte 0xFE06067E
	.4byte 0xC0C07E00
	.4byte 0x7C06067E
	.4byte 0xC6C67C00
	.4byte 0xFEC06030
	.4byte 0x180C0600
	.4byte 0x7CC6C67C
	.4byte 0xC6C67C00
	.4byte 0x7CC6C6FC
	.4byte 0xC0C07E00
	.4byte 0x18180000
	.4byte 0x18180000
	.4byte 0x18180018
	.4byte 0x18100800
	.4byte 0x20100804
	.4byte 0x08102000
	.4byte 0x007C0000
	.4byte 0x7C000000
	.4byte 0x04081020
	.4byte 0x10080400
	.4byte 0x3C626030
	.4byte 0x18001800
	.4byte 0x7C82B2AA
	.4byte 0xAAAA7200
	.4byte 0x7CC6C6C6
	.4byte 0xFEC6C600
	.4byte 0x7EC6C67E
	.4byte 0xC6C67E00
	.4byte 0xFC060606
	.4byte 0x0606FC00
	.4byte 0x7EC6C6CF
	.4byte 0xC6C67E00
	.4byte 0xFE06067E
	.4byte 0x0606FE00
	.4byte 0xFE06067E
	.4byte 0x06060600
	.4byte 0xFC0606F6
	.4byte 0xC6C6FC00
	.4byte 0xC6C6C6FE
	.4byte 0xC6C6C600
	.4byte 0x18181818
	.4byte 0x18181800
	.4byte 0xFE606060
	.4byte 0x60603E00
	.4byte 0x66361E1E
	.4byte 0x3666C600
	.4byte 0x06060606
	.4byte 0x0606FC00
	.4byte 0xC6EEFED6
	.4byte 0xC6C6C600
	.4byte 0xC6CECED6
	.4byte 0xE6E6C600
	.4byte 0x7CC6C6C6
	.4byte 0xC6C67C00
	.4byte 0x7EC6C6C6
	.4byte 0x7E060600
	.4byte 0x7CC6C6C6
	.4byte 0xD666BC00
	.4byte 0x7EC6C67E
	.4byte 0xC6C6C600
	.4byte 0xFC06067C
	.4byte 0xC0C07E00
	.4byte 0xFE181818
	.4byte 0x18181800
	.4byte 0xC6C6C6C6
	.4byte 0xC6C6FC00
	.4byte 0xC6C6C6C6
	.4byte 0x6C381000
	.4byte 0xC6C6C6D6
	.4byte 0xFEEEC600
	.4byte 0xC6C66C10
	.4byte 0x6CC6C600
	.4byte 0xC6C6C66C
	.4byte 0x38103800
	.4byte 0xFEC06030
	.4byte 0x180CFE00
	.4byte 0x3C0C0C0C
	.4byte 0x0C0C3C00
	.4byte 0x01020408
	.4byte 0x10204000
	.asciz "<00000<"
	.4byte 0x08142200
	.4byte 0
	.4byte 0
	.4byte 0x0000FE00
	.4byte 0x60602000
	.4byte 0
	.4byte 0x00007CC0
	.4byte 0xFCC6FC00
	.4byte 0x0006067E
	.4byte 0xC6C67E00
	.4byte 0x0000FC06
	.4byte 0x0606FC00
	.4byte 0x00C0C0FC
	.4byte 0xC6C6FC00
	.4byte 0x00007CC6
	.4byte 0xFE06FC00
	.4byte 0x00F80CFE
	.4byte 0x0C0C0C00
	.4byte 0x0000FCC6
	.4byte 0xFEC07E00
	.4byte 0x0006067E
	.4byte 0xC6C6C600
	.4byte 0x00180018
	.4byte 0x18181800
	.4byte 0x00600060
	.4byte 0x60603E00
	.4byte 0x00060676
	.4byte 0x0E36C600
	.4byte 0x00181818
	.4byte 0x18183800
	.4byte 0x00007ED6
	.4byte 0xD6D6D600
	.4byte 0x00007EC6
	.4byte 0xC6C6C600
	.4byte 0x00007CC6
	.4byte 0xC6C67C00
	.4byte 0x00007EC6
	.4byte 0xC67E0600
	.4byte 0x0000FCC6
	.4byte 0xC6FCC000
	.4byte 0x0000C636
	.4byte 0x0E060600
	.4byte 0x0000FC06
	.4byte 0xFEC07E00
	.4byte 0x000CFE0C
	.4byte 0x0C0CF800
	.4byte 0x0000C6C6
	.4byte 0xC6C6FC00
	.4byte 0x0000C6C6
	.4byte 0x44281000
	.4byte 0x0000D6D6
	.4byte 0xD6D6FC00
	.4byte 0x0000C66C
	.4byte 0x106CC600
	.4byte 0x0000C6C6
	.4byte 0x68301C00
	.4byte 0x0000FE60
	.4byte 0x380CFE00
	.4byte 0x30080804
	.4byte 0x08083000
	.4byte 0x18181800
	.4byte 0x18181800
	.4byte 0x0C101020
	.4byte 0x10100C00
	.4byte 0xFE000000
	.4byte 0
	.4byte 0x10107C10
	.4byte 0x10007C3E
	.asciz "c]}]c>"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x40902000
	.4byte 0x00000060
	.4byte 0x90906008
	.4byte 0x1F043608
	.4byte 0x047C0000
	.4byte 0x081C083C
	.4byte 0x5A4C0000
	.4byte 0x00022242
	.4byte 0x66040000
	.4byte 0x0C001E20
	.4byte 0x20180000
	.4byte 0x08001C08
	.4byte 0x0C320000
	.4byte 0x085C083C
	.4byte 0x4A4C0000
	.4byte 0x0024143E
	.4byte 0x44240000
	.4byte 0x00103A52
	.4byte 0x3A100000
	.4byte 0x00083808
	.4byte 0x1E2E0000
	.4byte 0x00001E20
	.4byte 0x20180000
	.4byte 0x0000081C
	.4byte 0x1C080004
	.4byte 0x1E043E55
	.4byte 0x49260000
	.4byte 0x01214145
	.4byte 0x63020018
	.4byte 0x003A4640
	.4byte 0x20180018
	.4byte 0x003C1008
	.4byte 0x16630004
	.asciz ".D<FE&"
	.byte 0x04
	.4byte 0x244F5212
	.4byte 0x110D0008
	.4byte 0x3E107E20
	.4byte 0x023C0010
	.4byte 0x08040608
	.4byte 0x10300020
	.4byte 0x21792125
	.4byte 0x23120000
	.4byte 0x04380000
	.4byte 0x027C0008
	.4byte 0x083E1020
	.4byte 0x021C0001
	.4byte 0x02020242
	.4byte 0x221C0010
	.4byte 0x7F1C1418
	.4byte 0x10080010
	.4byte 0x127E131A
	.4byte 0x023C001E
	.4byte 0x087C1308
	.4byte 0x08300004
	.4byte 0x0F740202
	.4byte 0x09710008
	.4byte 0x1E043C42
	.4byte 0x403C0000
	.4byte 0x3D434020
	.4byte 0x1800007A
	.4byte 0x26100808
	.4byte 0x08700008
	.4byte 0x48681C02
	.4byte 0x027C0004
	.asciz "o\"\":i1"
	.balign 4
	.4byte 0x39010101
	.4byte 0x0B710008
	.asciz "\t=JEu2"
	.byte 0x02
	.4byte 0x023B4642
	.4byte 0x73320000
	.4byte 0x1C2A4945
	.4byte 0x45220020
	.asciz "y!!9k2"
	.balign 4
	.4byte 0x17722121
	.4byte 0x110E0004
	.4byte 0x08042852
	.4byte 0x510C0000
	.4byte 0x040B1160
	.4byte 0x4000007C
	.asciz "!y!9k2"
	.byte 0x10
	.4byte 0x7E107C10
	.4byte 0x3C5C000E
	.4byte 0x28283E75
	.4byte 0x13080004
	.4byte 0x0F642645
	.4byte 0x423C0010
	.4byte 0x113D5255
	.4byte 0x49260008
	.4byte 0x0A0C254E
	.4byte 0x44380022
	.4byte 0x123E4744
	.4byte 0x34040010
	.4byte 0x3955533A
	.4byte 0x10080010
	.4byte 0x1070103E
	.4byte 0x520C000C
	.4byte 0x08023E42
	.4byte 0x403C001A
	.4byte 0x26262420
	.4byte 0x1008003C
	.4byte 0x10083C42
	.4byte 0x58380002
	.asciz "2+&\"#B"
	.byte 0x3C
	.4byte 0x10083C42
	.4byte 0x40380002
	.asciz "2KFBC\""
	.byte 0x0C
	.4byte 0x0402060B
	.4byte 0x49310000
	.4byte 0x09121200
	.4byte 0x00000006
	.4byte 0x09090600
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x12120C00
	.4byte 0
	.4byte 0x040A0400
	.4byte 0x7C0C0C0C
	.4byte 0
	.4byte 0x00000030
	.4byte 0x30303E00
	.4byte 0
	.4byte 0x00020400
	.4byte 0x00001818
	.4byte 0
	.4byte 0x003E303E
	.4byte 0x30100C00
	.4byte 0x00007E60
	.4byte 0x18180C00
	.4byte 0x00006038
	.4byte 0x1E181800
	.4byte 0x0000187E
	.4byte 0x62301800
	.4byte 0x00003C18
	.4byte 0x18187E00
	.4byte 0x0000307E
	.4byte 0x383C3600
	.4byte 0x00000C7E
	.4byte 0x6C2C0C00
	.4byte 0x00003C30
	.4byte 0x30307E00
	.4byte 0x00007E60
	.4byte 0x7C607E00
	.4byte 0x00006A6A
	.4byte 0x60301800
	.4byte 0x0000017E
	.4byte 0
	.4byte 0x7E603818
	.4byte 0x18180C00
	.4byte 0x6030181E
	.4byte 0x18181800
	.4byte 0x187E6660
	.4byte 0x60300C00
	.4byte 0x3C181818
	.4byte 0x18187E00
	.asciz "0~88<42"
	.4byte 0x0C7E6C6C
	.4byte 0x6C6C6600
	.4byte 0x0C3E1818
	.4byte 0x7E303000
	.4byte 0x7C6C6C66
	.4byte 0x60301800
	.4byte 0x067E3330
	.4byte 0x30301800
	.asciz "~`````~"
	.4byte 0x367F3636
	.4byte 0x30301800
	.4byte 0x6E606E60
	.4byte 0x60301C00
	.4byte 0x7E603018
	.4byte 0x1C366300
	.4byte 0x067F6626
	.4byte 0x06067C00
	.4byte 0x66666C60
	.4byte 0x30180C00
	.4byte 0x7C6C6C76
	.4byte 0x60301800
	.4byte 0x701E187E
	.4byte 0x18180C00
	.4byte 0x6A6A6A60
	.4byte 0x60301C00
	.4byte 0x3C007E18
	.4byte 0x18180C00
	.4byte 0x06061E36
	.4byte 0x06060600
	.4byte 0x187E1818
	.4byte 0x180C0600
	.4byte 0x003E0000
	.4byte 0x00007F00
	.4byte 0x7E606034
	.4byte 0x182C4600
	.4byte 0x187E6038
	.4byte 0x7E5B1800
	.4byte 0x30303030
	.4byte 0x30180C00
	.asciz "06666fc"
	.4byte 0x06063E06
	.4byte 0x06067C00
	.4byte 0x7E606060
	.4byte 0x60301C00
	.4byte 0x0C1A1930
	.4byte 0x30606000
	.4byte 0x187E1818
	.4byte 0x5A5A5A00
	.4byte 0x7E606030
	.4byte 0x1A0C1800
	.4byte 0x003E403C
	.4byte 0x003E4000
	.4byte 0x18180C0C
	.4byte 0x36726F00
	.4byte 0x30341838
	.4byte 0x4C060300
	.4byte 0x3F067F06
	.4byte 0x06063C00
	.4byte 0x067F662C
	.4byte 0x0C181800
	.asciz "<00000~"
	.asciz "~``|``~"
	.4byte 0x3E007E60
	.4byte 0x60301C00
	.4byte 0x66666664
	.4byte 0x60301800
	.4byte 0x1A1A1A1A
	.4byte 0x5A7A3900
	.4byte 0x06060606
	.4byte 0x26160E00
	.asciz "~fffff~"
	.4byte 0x7E666660
	.4byte 0x60301800
	.4byte 0x8F606060
	.4byte 0x60300F02
	.4byte 0x84810000
	.4byte 0x00000003
	.4byte 0x04040300
	.byte 0x00, 0x00, 0x00

.global lbl_801BB85F
lbl_801BB85F:

	# ROM: 0x1B885F
	.byte 0x4F
	.asciz "SPanic encounterd:"
	.balign 4
	.4byte 0

.global lbl_801BB878
lbl_801BB878:

	# ROM: 0x1B8878
	.asciz "DLL DBG OUT\n"
	.byte 0x44, 0x4C, 0x4C
	.asciz "Start %d %d\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "dll>Already Loaded %s(%08x %08x)\n"
	.byte 0x6F, 0x62
	.asciz "jdll> %s prolog end\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "dll>omDLLNumEnd Invalid dllno %d\n"
	.byte 0x6F, 0x62
	.asciz "jdll>omDLLNumEnd %d %d\n"
	.asciz "objdll>omDLLNumEnd not found DLL No%d\n"
	.byte 0x6F
	.asciz "bjdll>omDLLEnd %d %d\n"
	.byte 0x6F, 0x62
	.asciz "jdll>End DLL:%s\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "dll>Call Epilog\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "dll>End DLL stayed:%s\n"
	.byte 0x6F
	.asciz "bjdll>End DLL finish\n"
	.byte 0x6F, 0x62
	.asciz "jdll>Link DLL:%s\n"
	.byte 0x6F, 0x62
	.asciz "jdll>++++++++++++++++ DLL Link Failed\n"
	.byte 0x6F
	.asciz "bjdll>LinkOK %08x %08x\n"
	.asciz "objdll> %s prolog start\n"
	.byte 0x6F, 0x64, 0x6A
	.asciz "dll>Unlink DLL:%s\n"
	.byte 0x6F
	.asciz "bjdll>Unlink DLL epilog\n"
	.byte 0x6F, 0x62, 0x6A
	.asciz "dll>Unlink DLL epilog finish\n"
	.byte 0x6F, 0x62
	.asciz "jdll>+++++++++++++++++ DLL Unlink Failed\n"

.global lbl_801BBA92
lbl_801BBA92:

	# ROM: 0x1B8A92
	.byte 0x53, 0x65
	.asciz "arch:%s\n"

.global lbl_801BBA9D
lbl_801BBA9D:

	# ROM: 0x1B8A9D
	.byte 0x2B, 0x2B, 0x2B
	.asciz "++++++++ Find%d: %s\n"
	.byte 0x3D, 0x3D, 0x3D
	.asciz "== DLL Module Info dump ====\n"
	.byte 0x20, 0x20
	.asciz "                 ID:0x%08x\n"
	.asciz "             LinkPrev:0x%08x\n"
	.byte 0x20, 0x20
	.asciz "           LinkNext:0x%08x\n"
	.asciz "          Section num:%d\n"
	.byte 0x53, 0x65
	.asciz "ction info tbl ofst:0x%08x\n"
	.asciz "           nameOffset:0x%08x\n"
	.byte 0x20, 0x20
	.asciz "           nameSize:%d\n"
	.asciz "              version:0x%08x\n"
	.byte 0x3D, 0x3D
	.asciz "=============================\n"
	.byte 0x3D
	.asciz "=== DLL Module Header dump ====\n"
	.byte 0x20, 0x20, 0x20
	.asciz "       bss Size:0x%08x\n"
	.asciz "        rel Offset:0x%08x\n"
	.byte 0x20
	.asciz "       imp Offset:0x%08x\n"
	.byte 0x20, 0x20
	.asciz "  prolog Section:%d\n"
	.byte 0x20, 0x20, 0x20
	.asciz " epilog Section:%d\n"
	.asciz "unresolved Section:%d\n"
	.byte 0x20
	.asciz "      prolog func:0x%08x\n"
	.byte 0x20, 0x20
	.asciz "     epilog func:0x%08x\n"
	.byte 0x20, 0x20, 0x20
	.asciz "unresolved func:0x%08x\n"
	.asciz "================================\n"
	.balign 4
	.4byte 0

.global lbl_801BBD10
lbl_801BBD10:

	# ROM: 0x1B8D10
	.asciz "/sound/MP5_SND.msm"
	.byte 0x2F
	.asciz "sound/MP5_Str.pdt"
	.byte 0x4D, 0x53
	.asciz "M(Sound Manager) Error:Error Code %d\n"
	.byte 0x2F, 0x2F
	.asciz "////////////////////////////////\n"
	.byte 0x73, 0x6E
	.asciz "dDist %f\n"
	.byte 0x73, 0x6E
	.asciz "dSpeed %f\n"
	.byte 0x73
	.asciz "tartDis %f\n"
	.asciz "frontSurDis %f\n"
	.asciz "backSurDis %f\n"
	.balign 4
	.4byte 0x0076000E
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0078000F
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007A0010
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007C0011
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007E0012
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00800013
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00820014
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0077000E
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0079000F
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007B000F
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007D0011
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x007F0012
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00810013
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00830014
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00650009
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00660009
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00670009
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00640009
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00030009
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x000F0015
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00100016
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00110017
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00120018
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00130019
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0014001A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0015001B
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0016001C
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0017001D
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0018001E
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0019001F
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001A0020
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001B0021
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001C0022
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001D0023
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001E0024
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x001F0025
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00200026
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00210027
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00220028
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00230029
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0024002A
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0025002B
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0026002C
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0027002D
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0028002E
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0029002F
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002A0030
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002B0031
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002C0032
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002D0033
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002E0034
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x002F0035
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00300036
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00310037
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00320038
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00330039
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0034003A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0035003B
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0036003C
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0037003D
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0038003E
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0039003F
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003A0040
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003B0041
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003C0042
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003D0043
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003E0044
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x003F0045
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00400046
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00410047
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00420048
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00430049
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0044004A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0045004B
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0049004C
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004A004D
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004B004E
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004C004F
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004D0050
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004E0051
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x004F0052
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00500053
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00510054
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0052005C
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0053005C
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0054005C
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00550055
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00560056
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00570057
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00580058
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x000B0059
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0059005A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005A005B
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0046005D
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0047005D
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0048005D
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00610007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00750007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005D0007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00620007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005C0008
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x006A0008
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005E0007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005B0007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00600007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x005F000C
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00690007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0073000B
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0074000B
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00020008
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x006E000A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x006F000A
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x00060007
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0007FFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x006BFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0x0001FFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFF0000
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.asciz "SOUND ##########################\n"
	.byte 0x43, 0x68
	.asciz "ange AUX %d,%d\n"
	.asciz "##########################\n"
	.asciz "Timed Out! Mus %d:SE %d\n"
	.byte 0x47, 0x72, 0x6F
	.asciz "upSet %d\n"
	.byte 0x2A, 0x2A
	.asciz "*********GroupSet Error %d\n"

.global lbl_801BC5AC
lbl_801BC5AC:

	# ROM: 0x1B95AC
	.asciz "CommonGrpSet %d\n"

.global lbl_801BC5BD
lbl_801BC5BD:

	# ROM: 0x1B95BD
	.byte 0x44, 0x65, 0x6C
	.asciz " Group Error %d\n"
	.balign 4
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x0000000F
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.asciz "############CharGrpSet\n"
	.asciz "Del Group OK\n"
	.balign 4

.global lbl_801BC630
lbl_801BC630:

	# ROM: 0x1B9630
	.4byte 0x0000008E
	.4byte 0x00000070
	.4byte 0x00000124
	.4byte 0x0000019C
	.4byte 0x00000160
	.4byte 0x00000034
	.4byte 0x0000017E
	.4byte 0x00000052
	.4byte 0x00000142
	.4byte 0x00000106
	.4byte 0x00000106
	.4byte 0x000000CA
	.4byte 0x000000AC

.global lbl_801BC664
lbl_801BC664:

	# ROM: 0x1B9664
	.4byte 0x000001F6
	.4byte 0x000001E2
	.4byte 0x0000025A
	.4byte 0x000002AA
	.4byte 0x00000282
	.4byte 0x000001BA
	.4byte 0x00000296
	.4byte 0x000001CE
	.4byte 0x0000026E
	.4byte 0x00000246
	.4byte 0x00000246
	.4byte 0x0000021E
	.4byte 0x0000020A

.global lbl_801BC698
lbl_801BC698:

	# ROM: 0x1B9698
	.asciz "#########SE Entry Error<SE %d:ErrorNo %d>\n"
	.balign 4
	.4byte 0

.global lbl_801BC6C8
lbl_801BC6C8:

	# ROM: 0x1B96C8
	.4byte 0
	.4byte 0
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x0000003C
	.4byte lbl_8003F27C
	.4byte lbl_8003F530
	.4byte 0x43920000
	.4byte 0x42800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x0000003C
	.4byte lbl_80087F8C
	.4byte lbl_80088128
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80087F8C
	.4byte lbl_80088AEC
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_800867B0
	.4byte lbl_800878D4
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80080934
	.4byte lbl_80080CFC
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80081610
	.4byte lbl_80081AF4
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80087F8C
	.4byte lbl_80088128
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80082C18
	.4byte lbl_80083038
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80087F8C
	.4byte lbl_80089D0C
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80087F8C
	.4byte lbl_8008A780
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80083C34
	.4byte lbl_800841BC
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte lbl_80087F8C
	.4byte lbl_8008B3EC
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte func_800850D8
	.4byte lbl_800853D0
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x0000003C
	.4byte lbl_80085850
	.4byte lbl_8008651C
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x000000B4
	.4byte 0
	.4byte 0
	.4byte 0x43920000
	.4byte 0x43700000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x0000003C

.global lbl_801BC888
lbl_801BC888:

	# ROM: 0x1B9888
	.4byte 0x00070005
	.4byte 0x00030006
	.4byte 0x00080009
	.4byte 0x000A000B
	.byte 0x00, 0x0C

.global lbl_801BC89A
lbl_801BC89A:

	# ROM: 0x1B989A
	.byte 0x41, 0x42
	.asciz "CDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.byte 0xB1
	.4byte 0xB2B3B4B5
	.4byte 0xB6B7B8B9
	.4byte 0xBABBBCBD
	.4byte 0xBEBFC0C1
	.4byte 0xC2C3C4C5
	.4byte 0xC6C7C8C9
	.4byte 0xCACBCCCD
	.4byte 0xCECFD0D1
	.4byte 0xD2D3D4D5
	.4byte 0xD6D7D8D9
	.4byte 0xDADBDCA6
	.4byte 0xDDA7A8A9
	.4byte 0xAAABACAD
	.4byte 0xAEAFB6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4CACBCC
	.4byte 0xCDCECACB
	.4byte 0xCCCDCEB0
	.byte 0x00

.global lbl_801BC921
lbl_801BC921:

	# ROM: 0x1B9921
	.byte 0x30, 0x31, 0x32
	.asciz "3456789"
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BC940
lbl_801BC940:

	# ROM: 0x1B9940
	.4byte 0
	.4byte 0x003F0164
	.4byte 0
	.4byte 0
	.4byte 0x003F0168
	.4byte 0
	.4byte 0
	.4byte 0x003F0168
	.4byte 0
	.4byte 0
	.4byte 0x003F0164
	.4byte 0

.global lbl_801BC970
lbl_801BC970:

	# ROM: 0x1B9970
	.4byte 0x000F0001
	.4byte 0x00100001
	.4byte 0x00110001
	.4byte 0x00120002
	.4byte 0x00130001
	.4byte 0x00140001
	.4byte 0x00150002
	.4byte 0x00160001
	.4byte 0x00170001
	.4byte 0x00180000
	.4byte 0x00190002
	.4byte 0x001A0000
	.4byte 0x001B0001
	.4byte 0x001C0000
	.4byte 0x001D0002
	.4byte 0x001E0001
	.4byte 0x001F0001
	.4byte 0x00200001
	.4byte 0x00210000
	.4byte 0x00220001
	.4byte 0x00230000
	.4byte 0x00240001
	.4byte 0x00250001
	.4byte 0x00260001
	.4byte 0x00270001
	.4byte 0x00280000
	.4byte 0x00290001
	.4byte 0x002A0001
	.4byte 0x002B0001
	.4byte 0x002C0000
	.4byte 0x002D0001
	.4byte 0x002E0001
	.4byte 0x002F0001
	.4byte 0x00300001
	.4byte 0x00310001
	.4byte 0x00320001
	.4byte 0x00330001
	.4byte 0x00340000
	.4byte 0x00350002
	.4byte 0x00360000
	.4byte 0x00370001
	.4byte 0x00380001
	.4byte 0x00390001
	.4byte 0x003A0001
	.4byte 0x003B0001
	.4byte 0x003C0001
	.4byte 0x003D0001
	.4byte 0x003E0001
	.4byte 0x003F0001
	.4byte 0x00400001
	.4byte 0x00410000
	.4byte 0x00420001
	.4byte 0x00430001
	.4byte 0x00440001
	.4byte 0x00450001
	.4byte 0x00460001
	.4byte 0x00470000
	.4byte 0x00480001
	.4byte 0x00490001
	.4byte 0x004A0001
	.4byte 0x004B0001
	.4byte 0x004C0001
	.4byte 0x004D0001
	.4byte 0x004E0000
	.4byte 0x004F0001
	.4byte 0x00500001
	.4byte 0x00510001
	.4byte 0x00520001
	.4byte 0x00530001
	.4byte 0x00540000
	.4byte 0x00550001
	.4byte 0x00560001
	.4byte 0x00570001
	.4byte 0x00580001
	.4byte 0x00590000
	.4byte 0xFFFF0000

.global lbl_801BCAA0
lbl_801BCAA0:

	# ROM: 0x1B9AA0
	.4byte 0x42540000
	.4byte 0x43D40000
	.4byte 0x43700000

.global lbl_801BCAAC
lbl_801BCAAC:

	# ROM: 0x1B9AAC
	.4byte 0x000F0010
	.4byte 0x00100010
	.4byte 0x00110010
	.4byte 0x00120010
	.4byte 0x00130010
	.4byte 0x00140010
	.4byte 0x00150010
	.4byte 0x00160010
	.4byte 0x00170010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x001A0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x001D0010
	.4byte 0x001E0010
	.4byte 0x001F0010
	.4byte 0x000F0010
	.4byte 0x00210010
	.4byte 0x00220010
	.4byte 0x000F0010
	.4byte 0x00240010
	.4byte 0x000F0010
	.4byte 0x00260010
	.4byte 0x000F0010
	.4byte 0x00280010
	.4byte 0x00290010
	.4byte 0x002A0010
	.4byte 0x002B0010
	.4byte 0x002C0010
	.4byte 0x002D0010
	.4byte 0x000F0010
	.4byte 0x002F0010
	.4byte 0x00300010
	.4byte 0x000F0010
	.4byte 0x00320010
	.4byte 0x00330010
	.4byte 0x00340010
	.4byte 0x000F0010
	.4byte 0x00360010
	.4byte 0x00370010
	.4byte 0x00380010
	.4byte 0x00390010
	.4byte 0x003A0010
	.4byte 0x003B0010
	.4byte 0x003C0010
	.4byte 0x003D0010
	.4byte 0x003E0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x00410010
	.4byte 0x00420010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x000F0010
	.4byte 0x004A0010
	.4byte 0x004B0010
	.4byte 0x004C0010
	.4byte 0x004D0010
	.4byte 0x000F0010
	.4byte 0x004F0010
	.4byte 0x00500010
	.4byte 0x000F0010
	.4byte 0x00520010
	.4byte 0x00530010
	.4byte 0x00540010
	.4byte 0x00550010
	.4byte 0x00560010
	.4byte 0x00570010
	.4byte 0xFFFF0000

.global lbl_801BCBE0
lbl_801BCBE0:

	# ROM: 0x1B9BE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00230010
	.4byte 0x00230011
	.4byte 0x00230012
	.4byte 0x00230013
	.4byte 0x00230014
	.4byte 0x00230015
	.4byte 0x00230016
	.4byte 0x00230017
	.4byte 0x00230018
	.4byte 0x00230019
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230050
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x0023001A
	.4byte 0x0023001B
	.4byte 0x0023001C
	.4byte 0x0023001D
	.4byte 0x0023001E
	.4byte 0x0023001F
	.4byte 0x00230020
	.4byte 0x00230021
	.4byte 0x00230022
	.4byte 0x00230023
	.4byte 0x00230024
	.4byte 0x00230025
	.4byte 0x00230026
	.4byte 0x00230027
	.4byte 0x00230028
	.4byte 0x00230029
	.4byte 0x0023002A
	.4byte 0x0023002B
	.4byte 0x0023002C
	.4byte 0x0023002D
	.4byte 0x0023002E
	.4byte 0x0023002F
	.4byte 0x00230030
	.4byte 0x00230031
	.4byte 0x00230032
	.4byte 0x00230033
	.4byte 0x00230028
	.4byte 0x0023004F
	.4byte 0x00230028
	.4byte 0x00230028
	.4byte 0x00230028
	.4byte 0x00230028
	.4byte 0x00230034
	.4byte 0x00230035
	.4byte 0x00230036
	.4byte 0x00230037
	.4byte 0x00230038
	.4byte 0x00230039
	.4byte 0x0023003A
	.4byte 0x0023003B
	.4byte 0x0023003C
	.4byte 0x0023003D
	.4byte 0x0023003E
	.4byte 0x0023003F
	.4byte 0x00230040
	.4byte 0x00230041
	.4byte 0x00230042
	.4byte 0x00230043
	.4byte 0x00230044
	.4byte 0x00230045
	.4byte 0x00230046
	.4byte 0x00230047
	.4byte 0x00230048
	.4byte 0x00230049
	.4byte 0x0023004A
	.4byte 0x0023004B
	.4byte 0x0023004C
	.4byte 0x0023004D
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230054
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230050
	.4byte 0x00230053
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230010
	.4byte 0x00230051
	.4byte 0x00230052
	.4byte 0x00230010
	.4byte 0x00230010

.global lbl_801BCEF8
lbl_801BCEF8:

	# ROM: 0x1B9EF8
	.asciz "Error: Esprite Max Over!\n"
	.balign 4
	.4byte 0

.global lbl_801BCF18
lbl_801BCF18:

	# ROM: 0x1B9F18
	.asciz "dll/actmanDLL.rel"

.global lbl_801BCF2A
lbl_801BCF2A:

	# ROM: 0x1B9F2A
	.byte 0x64, 0x6C
	.asciz "l/bootdll.rel"

.global lbl_801BCF3A
lbl_801BCF3A:

	# ROM: 0x1B9F3A
	.byte 0x64, 0x6C
	.asciz "l/carddll.rel"

.global lbl_801BCF4A
lbl_801BCF4A:

	# ROM: 0x1B9F4A
	.byte 0x64, 0x6C
	.asciz "l/decathlondll.rel"

.global lbl_801BCF5F
lbl_801BCF5F:

	# ROM: 0x1B9F5F
	.byte 0x64
	.asciz "ll/e3bootdll.rel"

.global lbl_801BCF71
lbl_801BCF71:

	# ROM: 0x1B9F71
	.byte 0x64, 0x6C, 0x6C
	.asciz "/e3setupdll.rel"

.global lbl_801BCF84
lbl_801BCF84:

	# ROM: 0x1B9F84
	.asciz "dll/fileseldll.rel"

.global lbl_801BCF97
lbl_801BCF97:

	# ROM: 0x1B9F97
	.byte 0x64
	.asciz "ll/instdll.rel"

.global lbl_801BCFA7
lbl_801BCFA7:

	# ROM: 0x1B9FA7
	.byte 0x64
	.asciz "ll/m401dll.rel"

.global lbl_801BCFB7
lbl_801BCFB7:

	# ROM: 0x1B9FB7
	.byte 0x64
	.asciz "ll/m416dll.rel"

.global lbl_801BCFC7
lbl_801BCFC7:

	# ROM: 0x1B9FC7
	.byte 0x64
	.asciz "ll/m425dll.rel"

.global lbl_801BCFD7
lbl_801BCFD7:

	# ROM: 0x1B9FD7
	.byte 0x64
	.asciz "ll/m433dll.rel"

.global lbl_801BCFE7
lbl_801BCFE7:

	# ROM: 0x1B9FE7
	.byte 0x64
	.asciz "ll/m435dll.rel"

.global lbl_801BCFF7
lbl_801BCFF7:

	# ROM: 0x1B9FF7
	.byte 0x64
	.asciz "ll/m438dll.rel"

.global lbl_801BD007
lbl_801BD007:

	# ROM: 0x1BA007
	.byte 0x64
	.asciz "ll/m444dll.rel"

.global lbl_801BD017
lbl_801BD017:

	# ROM: 0x1BA017
	.byte 0x64
	.asciz "ll/m501dll.rel"

.global lbl_801BD027
lbl_801BD027:

	# ROM: 0x1BA027
	.byte 0x64
	.asciz "ll/m502dll.rel"

.global lbl_801BD037
lbl_801BD037:

	# ROM: 0x1BA037
	.byte 0x64
	.asciz "ll/m503dll.rel"

.global lbl_801BD047
lbl_801BD047:

	# ROM: 0x1BA047
	.byte 0x64
	.asciz "ll/m504dll.rel"

.global lbl_801BD057
lbl_801BD057:

	# ROM: 0x1BA057
	.byte 0x64
	.asciz "ll/m505dll.rel"

.global lbl_801BD067
lbl_801BD067:

	# ROM: 0x1BA067
	.byte 0x64
	.asciz "ll/m506dll.rel"

.global lbl_801BD077
lbl_801BD077:

	# ROM: 0x1BA077
	.byte 0x64
	.asciz "ll/m507dll.rel"

.global lbl_801BD087
lbl_801BD087:

	# ROM: 0x1BA087
	.byte 0x64
	.asciz "ll/m508dll.rel"

.global lbl_801BD097
lbl_801BD097:

	# ROM: 0x1BA097
	.byte 0x64
	.asciz "ll/m509dll.rel"

.global lbl_801BD0A7
lbl_801BD0A7:

	# ROM: 0x1BA0A7
	.byte 0x64
	.asciz "ll/m510dll.rel"

.global lbl_801BD0B7
lbl_801BD0B7:

	# ROM: 0x1BA0B7
	.byte 0x64
	.asciz "ll/m511dll.rel"

.global lbl_801BD0C7
lbl_801BD0C7:

	# ROM: 0x1BA0C7
	.byte 0x64
	.asciz "ll/m512dll.rel"

.global lbl_801BD0D7
lbl_801BD0D7:

	# ROM: 0x1BA0D7
	.byte 0x64
	.asciz "ll/m513dll.rel"

.global lbl_801BD0E7
lbl_801BD0E7:

	# ROM: 0x1BA0E7
	.byte 0x64
	.asciz "ll/m514dll.rel"

.global lbl_801BD0F7
lbl_801BD0F7:

	# ROM: 0x1BA0F7
	.byte 0x64
	.asciz "ll/m515dll.rel"

.global lbl_801BD107
lbl_801BD107:

	# ROM: 0x1BA107
	.byte 0x64
	.asciz "ll/m516dll.rel"

.global lbl_801BD117
lbl_801BD117:

	# ROM: 0x1BA117
	.byte 0x64
	.asciz "ll/m517dll.rel"

.global lbl_801BD127
lbl_801BD127:

	# ROM: 0x1BA127
	.byte 0x64
	.asciz "ll/m518dll.rel"

.global lbl_801BD137
lbl_801BD137:

	# ROM: 0x1BA137
	.byte 0x64
	.asciz "ll/m519dll.rel"

.global lbl_801BD147
lbl_801BD147:

	# ROM: 0x1BA147
	.byte 0x64
	.asciz "ll/m520dll.rel"

.global lbl_801BD157
lbl_801BD157:

	# ROM: 0x1BA157
	.byte 0x64
	.asciz "ll/m521dll.rel"

.global lbl_801BD167
lbl_801BD167:

	# ROM: 0x1BA167
	.byte 0x64
	.asciz "ll/m522dll.rel"

.global lbl_801BD177
lbl_801BD177:

	# ROM: 0x1BA177
	.byte 0x64
	.asciz "ll/m523dll.rel"

.global lbl_801BD187
lbl_801BD187:

	# ROM: 0x1BA187
	.byte 0x64
	.asciz "ll/m524dll.rel"

.global lbl_801BD197
lbl_801BD197:

	# ROM: 0x1BA197
	.byte 0x64
	.asciz "ll/m525dll.rel"

.global lbl_801BD1A7
lbl_801BD1A7:

	# ROM: 0x1BA1A7
	.byte 0x64
	.asciz "ll/m526dll.rel"

.global lbl_801BD1B7
lbl_801BD1B7:

	# ROM: 0x1BA1B7
	.byte 0x64
	.asciz "ll/m527dll.rel"

.global lbl_801BD1C7
lbl_801BD1C7:

	# ROM: 0x1BA1C7
	.byte 0x64
	.asciz "ll/m528dll.rel"

.global lbl_801BD1D7
lbl_801BD1D7:

	# ROM: 0x1BA1D7
	.byte 0x64
	.asciz "ll/m529dll.rel"

.global lbl_801BD1E7
lbl_801BD1E7:

	# ROM: 0x1BA1E7
	.byte 0x64
	.asciz "ll/m530dll.rel"

.global lbl_801BD1F7
lbl_801BD1F7:

	# ROM: 0x1BA1F7
	.byte 0x64
	.asciz "ll/m531dll.rel"

.global lbl_801BD207
lbl_801BD207:

	# ROM: 0x1BA207
	.byte 0x64
	.asciz "ll/m532dll.rel"

.global lbl_801BD217
lbl_801BD217:

	# ROM: 0x1BA217
	.byte 0x64
	.asciz "ll/m533dll.rel"

.global lbl_801BD227
lbl_801BD227:

	# ROM: 0x1BA227
	.byte 0x64
	.asciz "ll/m534dll.rel"

.global lbl_801BD237
lbl_801BD237:

	# ROM: 0x1BA237
	.byte 0x64
	.asciz "ll/m535dll.rel"

.global lbl_801BD247
lbl_801BD247:

	# ROM: 0x1BA247
	.byte 0x64
	.asciz "ll/m536dll.rel"

.global lbl_801BD257
lbl_801BD257:

	# ROM: 0x1BA257
	.byte 0x64
	.asciz "ll/m537dll.rel"

.global lbl_801BD267
lbl_801BD267:

	# ROM: 0x1BA267
	.byte 0x64
	.asciz "ll/m538dll.rel"

.global lbl_801BD277
lbl_801BD277:

	# ROM: 0x1BA277
	.byte 0x64
	.asciz "ll/m539dll.rel"

.global lbl_801BD287
lbl_801BD287:

	# ROM: 0x1BA287
	.byte 0x64
	.asciz "ll/m540dll.rel"

.global lbl_801BD297
lbl_801BD297:

	# ROM: 0x1BA297
	.byte 0x64
	.asciz "ll/m541dll.rel"

.global lbl_801BD2A7
lbl_801BD2A7:

	# ROM: 0x1BA2A7
	.byte 0x64
	.asciz "ll/m542dll.rel"

.global lbl_801BD2B7
lbl_801BD2B7:

	# ROM: 0x1BA2B7
	.byte 0x64
	.asciz "ll/m543dll.rel"

.global lbl_801BD2C7
lbl_801BD2C7:

	# ROM: 0x1BA2C7
	.byte 0x64
	.asciz "ll/m544dll.rel"

.global lbl_801BD2D7
lbl_801BD2D7:

	# ROM: 0x1BA2D7
	.byte 0x64
	.asciz "ll/m545dll.rel"

.global lbl_801BD2E7
lbl_801BD2E7:

	# ROM: 0x1BA2E7
	.byte 0x64
	.asciz "ll/m546dll.rel"

.global lbl_801BD2F7
lbl_801BD2F7:

	# ROM: 0x1BA2F7
	.byte 0x64
	.asciz "ll/m547dll.rel"

.global lbl_801BD307
lbl_801BD307:

	# ROM: 0x1BA307
	.byte 0x64
	.asciz "ll/m548dll.rel"

.global lbl_801BD317
lbl_801BD317:

	# ROM: 0x1BA317
	.byte 0x64
	.asciz "ll/m549dll.rel"

.global lbl_801BD327
lbl_801BD327:

	# ROM: 0x1BA327
	.byte 0x64
	.asciz "ll/m550dll.rel"

.global lbl_801BD337
lbl_801BD337:

	# ROM: 0x1BA337
	.byte 0x64
	.asciz "ll/m551dll.rel"

.global lbl_801BD347
lbl_801BD347:

	# ROM: 0x1BA347
	.byte 0x64
	.asciz "ll/m552dll.rel"

.global lbl_801BD357
lbl_801BD357:

	# ROM: 0x1BA357
	.byte 0x64
	.asciz "ll/m553dll.rel"

.global lbl_801BD367
lbl_801BD367:

	# ROM: 0x1BA367
	.byte 0x64
	.asciz "ll/m554dll.rel"

.global lbl_801BD377
lbl_801BD377:

	# ROM: 0x1BA377
	.byte 0x64
	.asciz "ll/m555dll.rel"

.global lbl_801BD387
lbl_801BD387:

	# ROM: 0x1BA387
	.byte 0x64
	.asciz "ll/m559dll.rel"

.global lbl_801BD397
lbl_801BD397:

	# ROM: 0x1BA397
	.byte 0x64
	.asciz "ll/m560dll.rel"

.global lbl_801BD3A7
lbl_801BD3A7:

	# ROM: 0x1BA3A7
	.byte 0x64
	.asciz "ll/m561dll.rel"

.global lbl_801BD3B7
lbl_801BD3B7:

	# ROM: 0x1BA3B7
	.byte 0x64
	.asciz "ll/m562dll.rel"

.global lbl_801BD3C7
lbl_801BD3C7:

	# ROM: 0x1BA3C7
	.byte 0x64
	.asciz "ll/m563dll.rel"

.global lbl_801BD3D7
lbl_801BD3D7:

	# ROM: 0x1BA3D7
	.byte 0x64
	.asciz "ll/m564dll.rel"

.global lbl_801BD3E7
lbl_801BD3E7:

	# ROM: 0x1BA3E7
	.byte 0x64
	.asciz "ll/m565dll.rel"

.global lbl_801BD3F7
lbl_801BD3F7:

	# ROM: 0x1BA3F7
	.byte 0x64
	.asciz "ll/m566dll.rel"

.global lbl_801BD407
lbl_801BD407:

	# ROM: 0x1BA407
	.byte 0x64
	.asciz "ll/m567dll.rel"

.global lbl_801BD417
lbl_801BD417:

	# ROM: 0x1BA417
	.byte 0x64
	.asciz "ll/m568dll.rel"

.global lbl_801BD427
lbl_801BD427:

	# ROM: 0x1BA427
	.byte 0x64
	.asciz "ll/m569dll.rel"

.global lbl_801BD437
lbl_801BD437:

	# ROM: 0x1BA437
	.byte 0x64
	.asciz "ll/m570dll.rel"

.global lbl_801BD447
lbl_801BD447:

	# ROM: 0x1BA447
	.byte 0x64
	.asciz "ll/m571dll.rel"

.global lbl_801BD457
lbl_801BD457:

	# ROM: 0x1BA457
	.byte 0x64
	.asciz "ll/m572dll.rel"

.global lbl_801BD467
lbl_801BD467:

	# ROM: 0x1BA467
	.byte 0x64
	.asciz "ll/m573dll.rel"

.global lbl_801BD477
lbl_801BD477:

	# ROM: 0x1BA477
	.byte 0x64
	.asciz "ll/m574dll.rel"

.global lbl_801BD487
lbl_801BD487:

	# ROM: 0x1BA487
	.byte 0x64
	.asciz "ll/m575dll.rel"

.global lbl_801BD497
lbl_801BD497:

	# ROM: 0x1BA497
	.byte 0x64
	.asciz "ll/m576dll.rel"

.global lbl_801BD4A7
lbl_801BD4A7:

	# ROM: 0x1BA4A7
	.byte 0x64
	.asciz "ll/m577dll.rel"

.global lbl_801BD4B7
lbl_801BD4B7:

	# ROM: 0x1BA4B7
	.byte 0x64
	.asciz "ll/m579dll.rel"

.global lbl_801BD4C7
lbl_801BD4C7:

	# ROM: 0x1BA4C7
	.byte 0x64
	.asciz "ll/m580dll.rel"

.global lbl_801BD4D7
lbl_801BD4D7:

	# ROM: 0x1BA4D7
	.byte 0x64
	.asciz "ll/mdbeachdll.rel"

.global lbl_801BD4EA
lbl_801BD4EA:

	# ROM: 0x1BA4EA
	.byte 0x64, 0x6C
	.asciz "l/mdcarddll.rel"

.global lbl_801BD4FC
lbl_801BD4FC:

	# ROM: 0x1BA4FC
	.asciz "dll/mdminidll.rel"

.global lbl_801BD50E
lbl_801BD50E:

	# ROM: 0x1BA50E
	.byte 0x64, 0x6C
	.asciz "l/mdomakedll.rel"

.global lbl_801BD521
lbl_801BD521:

	# ROM: 0x1BA521
	.byte 0x64, 0x6C, 0x6C
	.asciz "/mdoptiondll.rel"

.global lbl_801BD535
lbl_801BD535:

	# ROM: 0x1BA535
	.byte 0x64, 0x6C, 0x6C
	.asciz "/mdpartydll.rel"

.global lbl_801BD548
lbl_801BD548:

	# ROM: 0x1BA548
	.asciz "dll/mdseldll.rel"

.global lbl_801BD559
lbl_801BD559:

	# ROM: 0x1BA559
	.byte 0x64, 0x6C, 0x6C
	.asciz "/mdstorydll.rel"

.global lbl_801BD56C
lbl_801BD56C:

	# ROM: 0x1BA56C
	.asciz "dll/meschkdll.rel"

.global lbl_801BD57E
lbl_801BD57E:

	# ROM: 0x1BA57E
	.byte 0x64, 0x6C
	.asciz "l/mgfreedll.rel"

.global lbl_801BD590
lbl_801BD590:

	# ROM: 0x1BA590
	.asciz "dll/mgmatchdll.rel"

.global lbl_801BD5A3
lbl_801BD5A3:

	# ROM: 0x1BA5A3
	.byte 0x64
	.asciz "ll/mgtourdll.rel"

.global lbl_801BD5B5
lbl_801BD5B5:

	# ROM: 0x1BA5B5
	.byte 0x64, 0x6C, 0x6C
	.asciz "/mgwarsdll.rel"

.global lbl_801BD5C7
lbl_801BD5C7:

	# ROM: 0x1BA5C7
	.byte 0x64
	.asciz "ll/motchkdll.rel"

.global lbl_801BD5D9
lbl_801BD5D9:

	# ROM: 0x1BA5D9
	.byte 0x64, 0x6C, 0x6C
	.asciz "/partyresultdll.rel"

.global lbl_801BD5F0
lbl_801BD5F0:

	# ROM: 0x1BA5F0
	.asciz "dll/rescarddll.rel"

.global lbl_801BD603
lbl_801BD603:

	# ROM: 0x1BA603
	.byte 0x64
	.asciz "ll/resultdll.rel"

.global lbl_801BD615
lbl_801BD615:

	# ROM: 0x1BA615
	.byte 0x64, 0x6C, 0x6C
	.asciz "/safdll.rel"

.global lbl_801BD624
lbl_801BD624:

	# ROM: 0x1BA624
	.asciz "dll/sampledll.rel"

.global lbl_801BD636
lbl_801BD636:

	# ROM: 0x1BA636
	.byte 0x64, 0x6C
	.asciz "l/sd00dll.rel"

.global lbl_801BD646
lbl_801BD646:

	# ROM: 0x1BA646
	.byte 0x64, 0x6C
	.asciz "l/sdroomdll.rel"

.global lbl_801BD658
lbl_801BD658:

	# ROM: 0x1BA658
	.asciz "dll/selmenuDLL.rel"

.global lbl_801BD66B
lbl_801BD66B:

	# ROM: 0x1BA66B
	.byte 0x64
	.asciz "ll/sequencedll.rel"

.global lbl_801BD67F
lbl_801BD67F:

	# ROM: 0x1BA67F
	.byte 0x64
	.asciz "ll/staffdll.rel"

.global lbl_801BD690
lbl_801BD690:

	# ROM: 0x1BA690
	.asciz "dll/storymodedll.rel"

.global lbl_801BD6A5
lbl_801BD6A5:

	# ROM: 0x1BA6A5
	.byte 0x64, 0x6C, 0x6C
	.asciz "/storyresultdll.rel"

.global lbl_801BD6BC
lbl_801BD6BC:

	# ROM: 0x1BA6BC
	.asciz "dll/systemdll.rel"

.global lbl_801BD6CE
lbl_801BD6CE:

	# ROM: 0x1BA6CE
	.byte 0x64, 0x6C
	.asciz "l/w01dll.rel"

.global lbl_801BD6DD
lbl_801BD6DD:

	# ROM: 0x1BA6DD
	.byte 0x64, 0x6C, 0x6C
	.asciz "/w01sdll.rel"

.global lbl_801BD6ED
lbl_801BD6ED:

	# ROM: 0x1BA6ED
	.byte 0x64, 0x6C, 0x6C
	.asciz "/w02dll.rel"

.global lbl_801BD6FC
lbl_801BD6FC:

	# ROM: 0x1BA6FC
	.asciz "dll/w02sdll.rel"

.global lbl_801BD70C
lbl_801BD70C:

	# ROM: 0x1BA70C
	.asciz "dll/w03dll.rel"

.global lbl_801BD71B
lbl_801BD71B:

	# ROM: 0x1BA71B
	.byte 0x64
	.asciz "ll/w03sdll.rel"

.global lbl_801BD72B
lbl_801BD72B:

	# ROM: 0x1BA72B
	.byte 0x64
	.asciz "ll/w04dll.rel"

.global lbl_801BD73A
lbl_801BD73A:

	# ROM: 0x1BA73A
	.byte 0x64, 0x6C
	.asciz "l/w04sdll.rel"

.global lbl_801BD74A
lbl_801BD74A:

	# ROM: 0x1BA74A
	.byte 0x64, 0x6C
	.asciz "l/w05dll.rel"

.global lbl_801BD759
lbl_801BD759:

	# ROM: 0x1BA759
	.byte 0x64, 0x6C, 0x6C
	.asciz "/w05sdll.rel"

.global lbl_801BD769
lbl_801BD769:

	# ROM: 0x1BA769
	.byte 0x64, 0x6C, 0x6C
	.asciz "/w06dll.rel"

.global lbl_801BD778
lbl_801BD778:

	# ROM: 0x1BA778
	.asciz "dll/w06sdll.rel"

.global lbl_801BD788
lbl_801BD788:

	# ROM: 0x1BA788
	.asciz "dll/w07dll.rel"

.global lbl_801BD797
lbl_801BD797:

	# ROM: 0x1BA797
	.byte 0x64
	.asciz "ll/w07sdll.rel"

.global lbl_801BD7A7
lbl_801BD7A7:

	# ROM: 0x1BA7A7
	.byte 0x64
	.asciz "ll/w10dll.rel"

.global lbl_801BD7B6
lbl_801BD7B6:

	# ROM: 0x1BA7B6
	.byte 0x64, 0x6C
	.asciz "l/w20dll.rel"
	.balign 4

.global lbl_801BD7C8
lbl_801BD7C8:

	# ROM: 0x1BA7C8
	.4byte lbl_801BCF18
	.4byte 0
	.4byte lbl_801BCF2A
	.4byte 0
	.4byte lbl_801BCF3A
	.4byte 0
	.4byte lbl_801BCF4A
	.4byte 0
	.4byte lbl_801BCF5F
	.4byte 0
	.4byte lbl_801BCF71
	.4byte 0
	.4byte lbl_801BCF84
	.4byte 0
	.4byte lbl_801BCF97
	.4byte 0
	.4byte lbl_801BCFA7
	.4byte 0
	.4byte lbl_801BCFB7
	.4byte 0
	.4byte lbl_801BCFC7
	.4byte 0
	.4byte lbl_801BCFD7
	.4byte 0
	.4byte lbl_801BCFE7
	.4byte 0
	.4byte lbl_801BCFF7
	.4byte 0
	.4byte lbl_801BD007
	.4byte 0
	.4byte lbl_801BD017
	.4byte 0
	.4byte lbl_801BD027
	.4byte 0
	.4byte lbl_801BD037
	.4byte 0
	.4byte lbl_801BD047
	.4byte 0
	.4byte lbl_801BD057
	.4byte 0
	.4byte lbl_801BD067
	.4byte 0
	.4byte lbl_801BD077
	.4byte 0
	.4byte lbl_801BD087
	.4byte 0
	.4byte lbl_801BD097
	.4byte 0
	.4byte lbl_801BD0A7
	.4byte 0
	.4byte lbl_801BD0B7
	.4byte 0
	.4byte lbl_801BD0C7
	.4byte 0
	.4byte lbl_801BD0D7
	.4byte 0
	.4byte lbl_801BD0E7
	.4byte 0
	.4byte lbl_801BD0F7
	.4byte 0
	.4byte lbl_801BD107
	.4byte 0
	.4byte lbl_801BD117
	.4byte 0
	.4byte lbl_801BD127
	.4byte 0
	.4byte lbl_801BD137
	.4byte 0
	.4byte lbl_801BD147
	.4byte 0
	.4byte lbl_801BD157
	.4byte 0
	.4byte lbl_801BD167
	.4byte 0
	.4byte lbl_801BD177
	.4byte 0
	.4byte lbl_801BD187
	.4byte 0
	.4byte lbl_801BD197
	.4byte 0
	.4byte lbl_801BD1A7
	.4byte 0
	.4byte lbl_801BD1B7
	.4byte 0
	.4byte lbl_801BD1C7
	.4byte 0
	.4byte lbl_801BD1D7
	.4byte 0
	.4byte lbl_801BD1E7
	.4byte 0
	.4byte lbl_801BD1F7
	.4byte 0
	.4byte lbl_801BD207
	.4byte 0
	.4byte lbl_801BD217
	.4byte 0
	.4byte lbl_801BD227
	.4byte 0
	.4byte lbl_801BD237
	.4byte 0
	.4byte lbl_801BD247
	.4byte 0
	.4byte lbl_801BD257
	.4byte 0
	.4byte lbl_801BD267
	.4byte 0
	.4byte lbl_801BD277
	.4byte 0
	.4byte lbl_801BD287
	.4byte 0
	.4byte lbl_801BD297
	.4byte 0
	.4byte lbl_801BD2A7
	.4byte 0
	.4byte lbl_801BD2B7
	.4byte 0
	.4byte lbl_801BD2C7
	.4byte 0
	.4byte lbl_801BD2D7
	.4byte 0
	.4byte lbl_801BD2E7
	.4byte 0
	.4byte lbl_801BD2F7
	.4byte 0
	.4byte lbl_801BD307
	.4byte 0
	.4byte lbl_801BD317
	.4byte 0
	.4byte lbl_801BD327
	.4byte 0
	.4byte lbl_801BD337
	.4byte 0
	.4byte lbl_801BD347
	.4byte 0
	.4byte lbl_801BD357
	.4byte 0
	.4byte lbl_801BD367
	.4byte 0
	.4byte lbl_801BD377
	.4byte 0
	.4byte lbl_801BD387
	.4byte 0
	.4byte lbl_801BD397
	.4byte 0
	.4byte lbl_801BD3A7
	.4byte 0
	.4byte lbl_801BD3B7
	.4byte 0
	.4byte lbl_801BD3C7
	.4byte 0
	.4byte lbl_801BD3D7
	.4byte 0
	.4byte lbl_801BD3E7
	.4byte 0
	.4byte lbl_801BD3F7
	.4byte 0
	.4byte lbl_801BD407
	.4byte 0
	.4byte lbl_801BD417
	.4byte 0
	.4byte lbl_801BD427
	.4byte 0
	.4byte lbl_801BD437
	.4byte 0
	.4byte lbl_801BD447
	.4byte 0
	.4byte lbl_801BD457
	.4byte 0
	.4byte lbl_801BD467
	.4byte 0
	.4byte lbl_801BD477
	.4byte 0
	.4byte lbl_801BD487
	.4byte 0
	.4byte lbl_801BD497
	.4byte 0
	.4byte lbl_801BD4A7
	.4byte 0
	.4byte lbl_801BD4B7
	.4byte 0
	.4byte lbl_801BD4C7
	.4byte 0
	.4byte lbl_801BD4D7
	.4byte 0
	.4byte lbl_801BD4EA
	.4byte 0
	.4byte lbl_801BD4FC
	.4byte 0
	.4byte lbl_801BD50E
	.4byte 0
	.4byte lbl_801BD521
	.4byte 0
	.4byte lbl_801BD535
	.4byte 0
	.4byte lbl_801BD548
	.4byte 0
	.4byte lbl_801BD559
	.4byte 0
	.4byte lbl_801BD56C
	.4byte 0
	.4byte lbl_801BD57E
	.4byte 0
	.4byte lbl_801BD590
	.4byte 0
	.4byte lbl_801BD5A3
	.4byte 0
	.4byte lbl_801BD5B5
	.4byte 0
	.4byte lbl_801BD5C7
	.4byte 0
	.4byte lbl_801BD5D9
	.4byte 0
	.4byte lbl_801BD5F0
	.4byte 0
	.4byte lbl_801BD603
	.4byte 0
	.4byte lbl_801BD615
	.4byte 0
	.4byte lbl_801BD624
	.4byte 0
	.4byte lbl_801BD636
	.4byte 0
	.4byte lbl_801BD646
	.4byte 0
	.4byte lbl_801BD658
	.4byte 0
	.4byte lbl_801BD66B
	.4byte 0
	.4byte lbl_801BD67F
	.4byte 0
	.4byte lbl_801BD690
	.4byte 0
	.4byte lbl_801BD6A5
	.4byte 0
	.4byte lbl_801BD6BC
	.4byte 0
	.4byte lbl_801BD6CE
	.4byte 0
	.4byte lbl_801BD6DD
	.4byte 0
	.4byte lbl_801BD6ED
	.4byte 0
	.4byte lbl_801BD6FC
	.4byte 0
	.4byte lbl_801BD70C
	.4byte 0
	.4byte lbl_801BD71B
	.4byte 0
	.4byte lbl_801BD72B
	.4byte 0
	.4byte lbl_801BD73A
	.4byte 0
	.4byte lbl_801BD74A
	.4byte 0
	.4byte lbl_801BD759
	.4byte 0
	.4byte lbl_801BD769
	.4byte 0
	.4byte lbl_801BD778
	.4byte 0
	.4byte lbl_801BD788
	.4byte 0
	.4byte lbl_801BD797
	.4byte 0
	.4byte lbl_801BD7A7
	.4byte 0
	.4byte lbl_801BD7B6
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_801BDC00
lbl_801BDC00:

	# ROM: 0x1BAC00
	.4byte lbl_80044080
	.4byte func_800442E0
	.4byte lbl_80044944
	.4byte lbl_80044944
	.4byte lbl_8004550C
	.4byte lbl_80044080
	.4byte lbl_80044080
	.4byte lbl_8004619C
	.4byte lbl_80046DD4
	.4byte lbl_800461C4

.global lbl_801BDC28
lbl_801BDC28:

	# ROM: 0x1BAC28
	.4byte lbl_80044080
	.4byte func_800442E0
	.4byte lbl_80044944
	.4byte lbl_80044944
	.4byte lbl_8004550C
	.4byte lbl_80044080
	.4byte lbl_80044080
	.4byte lbl_8004619C
	.4byte lbl_80046DD4
	.4byte lbl_800461C4

.global lbl_801BDC50
lbl_801BDC50:

	# ROM: 0x1BAC50
	.4byte 0x3CA3D70A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3CA3D70A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BDC80
lbl_801BDC80:

	# ROM: 0x1BAC80
	.4byte lbl_80288970
	.4byte 0x00000014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00010014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00020014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00030014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00040014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00050014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00060014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00070014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00080014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00090014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000A0014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000B001E
	.4byte 0x0018000F
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000C0014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000D0014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000E0014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x000F0014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00100014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00110014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00120014
	.4byte 0x0018000A
	.4byte 0x000C0000
	.4byte lbl_80288970
	.4byte 0x00130018
	.4byte 0x0018000C
	.4byte 0x000C0000
	.4byte lbl_8028896C
	.4byte 0x00000028
	.4byte 0x0020FFF1
	.4byte 0x00120000
	.4byte lbl_80288968
	.4byte 0x00000020
	.4byte 0x00200010
	.4byte 0x00100000
	.4byte lbl_80288964
	.4byte 0x00000020
	.4byte 0x00200010
	.4byte 0x00100000

.global lbl_801BDDF0
lbl_801BDDF0:

	# ROM: 0x1BADF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x08000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x14000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C1214
	.4byte 0x0C0C0B0E
	.4byte 0x080D0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C090B0C
	.4byte 0x0B0F0C0D
	.4byte 0x0C0D0C0C
	.4byte 0x0B0C0B0F
	.4byte 0x0C0D0B0C
	.4byte 0x0608080C
	.4byte 0x140C0B0C
	.4byte 0x0B0B090C
	.4byte 0x0B04080B
	.4byte 0x040E0B0C
	.4byte 0x0B0C090B
	.4byte 0x090B0B0F
	.4byte 0x0B0B0B04
	.4byte 0x0D080E0C
	.4byte 0x09080808
	.4byte 0x14040C10
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x140C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C08080C
	.4byte 0x0C0C0C10
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x10101414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x0C0C070E
	.4byte 0x110D1414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141014
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414

.global lbl_801BDF20
lbl_801BDF20:

	# ROM: 0x1BAF20
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14001400
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141450
	.4byte 0x00141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x00001414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414

.global lbl_801BE060
lbl_801BE060:

	# ROM: 0x1BB060
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x00FF00FF
	.4byte 0x00FF0000
	.4byte 0xFFFFFFA0
	.4byte 0x00FFFFFF
	.4byte 0x60606090
	.4byte 0x90900000
	.4byte 0x0060B0FF
	.4byte 0xFF4080FF
	.4byte 0x00FF00FF
	.4byte 0x0000FFFF
	.4byte 0xFFFF00FF
	.4byte 0xFFFF6060
	.4byte 0x60909090

.global lbl_801BE09C
lbl_801BE09C:

	# ROM: 0x1BB09C
	.4byte 0x00E70005
	.4byte 0x00E70006
	.4byte 0x00E70007
	.4byte 0xFFFFFFFF
	.4byte 0x00E70008
	.4byte 0xFFFFFFFF
	.4byte 0x00E70005
	.4byte 0xFFFFFFFF

.global lbl_801BE0BC
lbl_801BE0BC:

	# ROM: 0x1BB0BC
	.asciz "mess/messdata.bin"

.global lbl_801BE0CE
lbl_801BE0CE:

	# ROM: 0x1BB0CE
	.byte 0x6D, 0x65
	.asciz "ss/board.dat"

.global lbl_801BE0DD
lbl_801BE0DD:

	# ROM: 0x1BB0DD
	.byte 0x6D, 0x65, 0x73
	.asciz "s/messdata_eng.bin"
	.balign 4

.global lbl_801BE0F4
lbl_801BE0F4:

	# ROM: 0x1BB0F4
	.4byte lbl_801BE0BC
	.4byte lbl_801BE0CE
	.4byte lbl_801BE0DD
	.4byte lbl_801BE0CE
	.4byte lbl_801BE0BC
	.4byte lbl_801BE0CE

.global lbl_801BE10C
lbl_801BE10C:

	# ROM: 0x1BB10C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BE160
lbl_801BE160:

	# ROM: 0x1BB160
	.asciz "Error: Not Read Mess Data."

.global lbl_801BE17B
lbl_801BE17B:

	# ROM: 0x1BB17B
	.byte 0x45
	.asciz "rror: Message Dir Over\n"

.global lbl_801BE194
lbl_801BE194:

	# ROM: 0x1BB194
	.asciz "Error: Message Number Over\n"
	.asciz "Error: No Message\n"
	.byte 0x45
	.asciz "rror: No Message data\n"
	.balign 4

.global lbl_801BE1DC
lbl_801BE1DC:

	# ROM: 0x1BB1DC
	.4byte 0x00E70009
	.4byte 0x00E7000A
	.4byte 0x00E7000B
	.4byte 0x00E7000C
	.4byte 0x00E7000D
	.4byte 0x00E7000E
	.4byte 0x00E7000F
	.4byte 0x00E70010
	.4byte 0x00E70011
	.4byte 0x00E70012
	.4byte 0x00E70013
	.4byte 0x00E70014
	.4byte 0x00E70015
	.4byte 0x00E70016
	.4byte 0x00E70017
	.4byte 0x00E70018
	.4byte 0x00E70019
	.4byte 0x00E7001A
	.4byte 0x00E7001B
	.4byte 0x00E7001C
	.4byte 0x00E7001D
	.4byte 0x00E7001E
	.4byte 0x00E7001F
	.4byte 0x00E70020
	.4byte 0

.global lbl_801BE240
lbl_801BE240:

	# ROM: 0x1BB240
	.asciz "SlotA Card MemSize %x,Sector Size %x\n"

.global lbl_801BE266
lbl_801BE266:

	# ROM: 0x1BB266
	.byte 0x53, 0x6C
	.asciz "otB Card MemSize %x,Sector Size %x\n"
	.4byte 0

.global lbl_801BE290
lbl_801BE290:

	# ROM: 0x1BB290
	.asciz "Can't ARAM Allocated %x\n"

.global lbl_801BE2A9
lbl_801BE2A9:

	# ROM: 0x1BB2A9
	.byte 0x43, 0x61, 0x6E
	.asciz "'t ARAM Free %x\n"

.global lbl_801BE2BD
lbl_801BE2BD:

	# ROM: 0x1BB2BD
	.byte 0x43, 0x61, 0x6E
	.asciz "'t Find ARAM %x\n"
	.byte 0x41, 0x52, 0x41
	.asciz "M DUMP ======================\n"
	.byte 0x41
	.asciz "MemPtr  Stat Length\n"
	.byte 0x25, 0x30, 0x38
	.asciz "x:%04x,%08x,%08x\n"
	.byte 0x25, 0x30
	.asciz "8x:%04x,%08x\n"
	.byte 0x3D, 0x3D
	.asciz "==============================\n"

.global lbl_801BE350
lbl_801BE350:

	# ROM: 0x1BB350
	.asciz "ARAM Trans %x\n"
	.byte 0x45
	.asciz "rror: data none on ARAM %0x\n"
	.balign 4

.global lbl_801BE380
lbl_801BE380:

	# ROM: 0x1BB380
	.4byte 0x00210007
	.4byte 0x000A0000
	.4byte 0x00000002
	.4byte 0x008C001A
	.4byte 0x008C001B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210002
	.4byte 0x00960001
	.4byte 0
	.4byte 0x008C0001
	.4byte 0x008C0002
	.4byte 0x008C002C
	.4byte 0x008C001A
	.4byte 0x008C0021
	.4byte 0x008C0041
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210003
	.4byte 0x00460000
	.4byte 0
	.4byte 0x008C0015
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210000
	.4byte 0x012C0001
	.4byte 0
	.4byte 0x008C000A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210001
	.4byte 0x012C0001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210005
	.4byte 0x00C80001
	.4byte 0
	.4byte 0x008C0005
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210008
	.4byte 0x000C0000
	.4byte 0x00000002
	.4byte 0x008C0016
	.4byte 0x008C0017
	.4byte 0x008C004A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210009
	.4byte 0x00640001
	.4byte 0
	.4byte 0x008C002B
	.4byte 0x008C002C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00210004
	.4byte 0x00640000
	.4byte 0
	.4byte 0x008C000A
	.4byte 0x008C0004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BE62C
lbl_801BE62C:

	# ROM: 0x1BB62C
	.4byte 0x00880000
	.4byte 0x00890000
	.4byte 0x008A0000
	.4byte 0x008B0000
	.4byte 0x008C0000
	.4byte 0x00870000
	.4byte 0x002F0000
	.4byte 0x00300000
	.4byte 0x00310000
	.4byte 0x00320000
	.4byte 0x00330000
	.4byte 0x002E0000
	.4byte 0x00B30000
	.4byte 0x00B40000
	.4byte 0x00B50000
	.4byte 0x00B60000
	.4byte 0x00B70000
	.4byte 0x00B20000
	.4byte 0x00E90000
	.4byte 0x00EA0000
	.4byte 0x00EB0000
	.4byte 0x00EC0000
	.4byte 0x00ED0000
	.4byte 0x00E80000
	.4byte 0x00E20000
	.4byte 0x00E30000
	.4byte 0x00E40000
	.4byte 0x00E50000
	.4byte 0x00E60000
	.4byte 0x00E10000
	.4byte 0x00130000
	.4byte 0x00140000
	.4byte 0x00150000
	.4byte 0x00160000
	.4byte 0x00170000
	.4byte 0x00120000
	.4byte 0x00DC0000
	.4byte 0x00DD0000
	.4byte 0x00DE0000
	.4byte 0x00DF0000
	.4byte 0x00E00000
	.4byte 0x00DB0000
	.4byte 0x00290000
	.4byte 0x002A0000
	.4byte 0x002B0000
	.4byte 0x002C0000
	.4byte 0x002D0000
	.4byte 0x00280000
	.4byte 0x00C50000
	.4byte 0x00C60000
	.4byte 0x00C70000
	.4byte 0x00C80000
	.4byte 0x00C90000
	.4byte 0x00C40000
	.4byte 0x00AC0000
	.4byte 0x00AD0000
	.4byte 0x00AE0000
	.4byte 0x00AF0000
	.4byte 0x00B00000
	.4byte 0x009C0000
	.4byte 0x00A80000
	.4byte 0x00A90000
	.4byte 0x00AA0000
	.4byte 0x00AB0000
	.4byte 0x00B00000
	.4byte 0x009C0000
	.4byte 0x00A30000
	.4byte 0x00A40000
	.4byte 0x00A50000
	.4byte 0x00A60000
	.4byte 0x00B00000
	.4byte 0x009C0000
	.4byte 0x009E0000
	.4byte 0x009F0000
	.4byte 0x00A00000
	.4byte 0x00A10000
	.4byte 0x00B00000
	.4byte 0x009C0000

.global lbl_801BE764
lbl_801BE764:

	# ROM: 0x1BB764
	.4byte 0
	.4byte 0x808080FF
	.4byte 0x402000FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.asciz "?s33?s33?s33"
	.balign 4
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xC0A00000
	.4byte 0x3CA3D70A
	.4byte 0
	.4byte 0xFF404080
	.4byte 0xFF404080
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC0A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFF00FF
	.4byte 0xFFFF00FF
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "?s33?s33?s33"
	.balign 4
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xC1200000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x41A00000
	.4byte 0
	.4byte 0x3F733333
	.4byte 0x3F59999A
	.asciz "?s33"
	.balign 4
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xC0A00000
	.4byte 0
	.4byte 0
	.4byte lbl_802020FF
	.4byte 0x000000FF
	.4byte 0
	.4byte 0x41200000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F733333
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x40A00000
	.4byte 0xC1500000
	.4byte 0x3DCCCCCD
	.4byte 0x0A20FFFF
	.4byte 0x1428FFFF
	.4byte 0x0C25FFFF
	.4byte 0x0419FFFF
	.4byte 0x051EFFFF
	.4byte 0x1732FFFF
	.4byte 0x1327FFFF
	.4byte 0x1126FFFF
	.4byte 0x0A20FFFF
	.4byte 0x152CFFFF
	.4byte 0x152CFFFF
	.4byte 0x152CFFFF
	.4byte 0x152CFFFF
	.4byte 0x0F1DFFFF
	.4byte 0x0513FFFF
	.4byte 0x0516FFFF
	.4byte 0x0C1CFFFF
	.4byte 0x1223FFFF
	.4byte 0x0010FFFF
	.4byte 0x0C1CFFFF
	.4byte 0x0E1EFFFF
	.4byte 0x0A20FFFF
	.4byte 0x1020FFFF
	.4byte 0x1020FFFF
	.4byte 0x1020FFFF
	.4byte 0x1020FFFF
	.4byte 0x05070609
	.4byte 0x0A0B09FF
	.4byte 0x090B08FF
	.4byte 0x0AFF0AFF
	.4byte 0x0AFF0AFF
	.4byte 0x0AFF0AFF
	.4byte 0x0AFF0E00
	.4byte 0x2E481422
	.4byte 0x29000011
	.4byte 0x11111112
	.4byte 0x001E6A00
	.4byte 0x0018185A
	.asciz "<<<<"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0x00000018
	.4byte 0x5A1E0012
	.4byte 0x2A601E1E
	.4byte 0x1E1E1200
	.4byte 0x1E6A0000
	.4byte 0x18185A3C
	.4byte 0x3C3C3C00
	.4byte 0x06004E00
	.4byte 0x10320036
	.asciz "&&&&"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0x00120024
	.4byte 0x6A000018
	.4byte 0x185A3C3C
	.4byte 0x3C3C2A2A
	.4byte 0x2B342A2A
	.4byte 0xFF2A2A2A
	.4byte 0x2A2A2A00

.global lbl_801BE974
lbl_801BE974:

	# ROM: 0x1BB974
	.4byte func_80052770
	.4byte lbl_80050DE8
	.4byte lbl_80051098
	.4byte lbl_80051F0C
	.4byte lbl_8005137C
	.4byte lbl_800513FC
	.4byte lbl_80051F50
	.4byte lbl_80052164
	.4byte lbl_80051F30
	.4byte func_80052770
	.4byte lbl_80051A68
	.4byte lbl_80052368
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80050D60
	.4byte lbl_8005248C
	.4byte func_80052770
	.4byte lbl_80050D60
	.4byte lbl_8005248C
	.4byte func_80052770
	.4byte lbl_80051E94
	.4byte lbl_80051DE8
	.4byte lbl_80051DE8
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80051AA4
	.4byte lbl_80051CCC
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80050DE8
	.4byte lbl_80052520
	.4byte lbl_80052248
	.4byte lbl_800523F8
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052194
	.4byte lbl_80051098
	.4byte lbl_80051FB0
	.4byte lbl_80052164
	.4byte lbl_80051FF8
	.4byte lbl_80052040
	.4byte lbl_80052164
	.4byte lbl_8005211C
	.4byte lbl_80052164
	.4byte func_80052770
	.4byte lbl_80052164
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052520
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_800525B4
	.4byte func_80052770
	.4byte lbl_80051098
	.4byte func_80052770
	.4byte lbl_80052088
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_800520D0
	.4byte func_80052770
	.4byte lbl_80051DE8
	.4byte lbl_80052648
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052278
	.4byte func_80052770
	.4byte lbl_8005174C
	.4byte func_80052770
	.4byte lbl_800522B8
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052348
	.4byte lbl_80052348
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_800526E0
	.4byte lbl_8005248C
	.4byte lbl_8005248C
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052520
	.4byte lbl_8005248C
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052648
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80052648
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_80050DE8
	.4byte lbl_80051098
	.4byte lbl_8005248C
	.4byte func_80052770
	.4byte lbl_80051B28
	.4byte func_80052770
	.4byte func_80052770
	.4byte lbl_8005248C

.global lbl_801BEB7C
lbl_801BEB7C:

	# ROM: 0x1BBB7C
	.4byte 0x42DC0000
	.4byte 0x43200000
	.4byte 0x42DC0000
	.4byte 0x43200000
	.4byte 0x43160000
	.4byte 0x43340000
	.4byte 0x43020000
	.4byte 0x43200000
	.4byte 0x43020000
	.4byte 0x43200000
	.4byte 0x43160000
	.4byte 0x43340000
	.4byte 0x42F00000
	.4byte 0x43520000
	.4byte 0x42DC0000
	.4byte 0x43200000
	.4byte 0x42DC0000
	.4byte 0x43200000
	.4byte 0x43020000
	.4byte 0x43200000
	.4byte 0x43020000
	.4byte 0x43200000
	.4byte 0x43020000
	.4byte 0x43200000
	.4byte 0x43020000
	.4byte 0x43200000

.global lbl_801BEBE4
lbl_801BEBE4:

	# ROM: 0x1BBBE4
	.4byte 0x000F0000
	.4byte 0x00100000
	.4byte 0x00110002
	.4byte 0x00120000
	.4byte 0x00130000
	.4byte 0x00140002
	.4byte 0x00150000
	.4byte 0x00160000
	.4byte 0x00170000
	.4byte 0x00180000
	.4byte 0x00190000
	.4byte 0x001A0000
	.4byte 0x001B0002
	.4byte 0x001C0000
	.4byte 0x001D0002
	.4byte 0x001E0000
	.4byte 0x001F0000
	.4byte 0x00200000
	.4byte 0x00210000
	.4byte 0x00220000
	.4byte 0x00230000
	.4byte 0x00240000
	.4byte 0x00250002
	.4byte 0x00260000
	.4byte 0x00270001
	.4byte 0x00280000
	.4byte 0x00290000
	.4byte 0x002A0000
	.4byte 0x002B0001
	.4byte 0x002C0000
	.4byte 0x002D0001
	.4byte 0x002E0001
	.4byte 0x002F0001
	.4byte 0x00300002
	.4byte 0x00310000
	.4byte 0x00320001
	.4byte 0x00330001
	.4byte 0x00340002
	.4byte 0x00350000
	.4byte 0x00360001
	.4byte 0x00370000
	.4byte 0x00380000
	.4byte 0x00390000
	.4byte 0x003A0001
	.4byte 0x003B0000
	.4byte 0x003C0000
	.4byte 0x003D0000
	.4byte 0x003E0000
	.4byte 0x003F0001
	.4byte 0x00400000
	.4byte 0x00410001
	.4byte 0x00420000
	.4byte 0x00430001
	.4byte 0x00440001
	.4byte 0x00450000
	.4byte 0x00460000
	.4byte 0x00470000
	.4byte 0x00480000
	.4byte 0x00490000
	.4byte 0x004A0000
	.4byte 0x004B0000
	.4byte 0x004C0000
	.4byte 0x004D0000
	.4byte 0x004E0000
	.4byte 0x004F0001
	.4byte 0x00500000
	.4byte 0x00510001
	.4byte 0x00520001
	.4byte 0x00530001
	.4byte 0x00540000
	.4byte 0x00550000
	.4byte 0x00560000
	.4byte 0x00570000
	.4byte 0x00580001
	.4byte 0x00590001
	.4byte 0x005A0001
	.4byte 0xFFFFFFFF

.global lbl_801BED18
lbl_801BED18:

	# ROM: 0x1BBD18
	.asciz "s3c000m1_eyes"

.global lbl_801BED26
lbl_801BED26:

	# ROM: 0x1BBD26
	.byte 0x73, 0x33
	.asciz "c000m2_eyes"

.global lbl_801BED34
lbl_801BED34:

	# ROM: 0x1BBD34
	.asciz "s3c000m3_eyes"

.global lbl_801BED42
lbl_801BED42:

	# ROM: 0x1BBD42
	.byte 0x53, 0x33
	.asciz "c001m0_eye"

.global lbl_801BED4F
lbl_801BED4F:

	# ROM: 0x1BBD4F
	.byte 0x53
	.asciz "3c001m1_eye"

.global lbl_801BED5C
lbl_801BED5C:

	# ROM: 0x1BBD5C
	.asciz "c001m3_eye"

.global lbl_801BED67
lbl_801BED67:

	# ROM: 0x1BBD67
	.byte 0x73
	.asciz "3c002m0_r_eye"

.global lbl_801BED76
lbl_801BED76:

	# ROM: 0x1BBD76
	.byte 0x73, 0x33
	.asciz "c002m0_l_eye"

.global lbl_801BED85
lbl_801BED85:

	# ROM: 0x1BBD85
	.byte 0x73, 0x33, 0x63
	.asciz "002m1_r_eye"

.global lbl_801BED94
lbl_801BED94:

	# ROM: 0x1BBD94
	.asciz "s3c002m1_l_eye"

.global lbl_801BEDA3
lbl_801BEDA3:

	# ROM: 0x1BBDA3
	.byte 0x73
	.asciz "3c002m2_r_eye"

.global lbl_801BEDB2
lbl_801BEDB2:

	# ROM: 0x1BBDB2
	.byte 0x73, 0x33
	.asciz "c002m2_l_eye"

.global lbl_801BEDC1
lbl_801BEDC1:

	# ROM: 0x1BBDC1
	.byte 0x53, 0x33, 0x63
	.asciz "003m1"

.global lbl_801BEDCA
lbl_801BEDCA:

	# ROM: 0x1BBDCA
	.byte 0x73, 0x33
	.asciz "c004m1_eye"

.global lbl_801BEDD7
lbl_801BEDD7:

	# ROM: 0x1BBDD7
	.byte 0x43
	.asciz "lswario_eye_l1_AUTO12"

.global lbl_801BEDEE
lbl_801BEDEE:

	# ROM: 0x1BBDEE
	.byte 0x43, 0x6C
	.asciz "swario_eye_l1_AUTO13"

.global lbl_801BEE05
lbl_801BEE05:

	# ROM: 0x1BBE05
	.byte 0x73, 0x33, 0x63
	.asciz "007m1_Eye_L"

.global lbl_801BEE14
lbl_801BEE14:

	# ROM: 0x1BBE14
	.asciz "s3c007m1_Eye_R"

.global lbl_801BEE23
lbl_801BEE23:

	# ROM: 0x1BBE23
	.byte 0x63
	.asciz "lswaluigi_eye_l1_AUTO1"

.global lbl_801BEE3B
lbl_801BEE3B:

	# ROM: 0x1BBE3B
	.byte 0x63
	.asciz "lswaluigi_eye_l1_AUTO2"

.global lbl_801BEE53
lbl_801BEE53:

	# ROM: 0x1BBE53
	.byte 0x73
	.asciz "3c007_m1_eye"

.global lbl_801BEE61
lbl_801BEE61:

	# ROM: 0x1BBE61
	.byte 0x63, 0x6C, 0x73
	.asciz "waluigi_eye_l1_AUTO9"

.global lbl_801BEE79
lbl_801BEE79:

	# ROM: 0x1BBE79
	.byte 0x63, 0x6C, 0x73
	.asciz "waluigi_eye_l1_AUTO10"
	.balign 4

.global func_801BEE94
func_801BEE94:

	# ROM: 0x1BBE94
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED42
	.4byte lbl_801BED42
	.4byte lbl_801BED4F
	.4byte lbl_801BED4F
	.4byte lbl_801BED5C
	.4byte lbl_801BED5C
	.4byte lbl_801BED5C
	.4byte lbl_801BED5C
	.4byte lbl_801BED67
	.4byte lbl_801BED76
	.4byte lbl_801BED85
	.4byte lbl_801BED94
	.4byte lbl_801BEDA3
	.4byte lbl_801BEDB2
	.4byte lbl_802880D0
	.4byte lbl_802880D0
	.4byte lbl_802880D1
	.4byte lbl_802880D6
	.4byte lbl_801BEDC1
	.4byte lbl_801BEDC1
	.4byte lbl_802880D1
	.4byte lbl_802880D6
	.4byte lbl_802880D1
	.4byte lbl_802880D6
	.4byte lbl_802880DB
	.4byte lbl_802880DB
	.4byte lbl_801BEDCA
	.4byte lbl_801BEDCA
	.4byte lbl_801BEDD7
	.4byte lbl_801BEDEE
	.4byte lbl_802880D0
	.4byte lbl_802880D0
	.4byte lbl_802880DB
	.4byte lbl_802880DB
	.4byte lbl_801BEE05
	.4byte lbl_801BEE14
	.4byte lbl_802880E3
	.4byte lbl_802880E9
	.4byte lbl_802880D0
	.4byte lbl_802880D0
	.4byte lbl_801BEE23
	.4byte lbl_801BEE3B
	.4byte lbl_801BEE53
	.4byte lbl_801BEE53
	.4byte lbl_801BEE61
	.4byte lbl_801BEE79
	.4byte lbl_802880D0
	.4byte lbl_802880D0
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED18
	.4byte lbl_801BED26
	.4byte lbl_801BED26
	.4byte lbl_801BED34
	.4byte lbl_801BED34

.global lbl_801BF034
lbl_801BF034:

	# ROM: 0x1BC034
	.asciz "a-itemhook-r"

.global lbl_801BF041
lbl_801BF041:

	# ROM: 0x1BC041
	.byte 0x61, 0x2D, 0x69
	.asciz "temhook-l"

.global lbl_801BF04E
lbl_801BF04E:

	# ROM: 0x1BC04E
	.byte 0x61, 0x2D
	.asciz "itemhook-fr"

.global lbl_801BF05C
lbl_801BF05C:

	# ROM: 0x1BC05C
	.asciz "a-itemhook-fl"

.global lbl_801BF06A
lbl_801BF06A:

	# ROM: 0x1BC06A
	.byte 0x61, 0x2D
	.asciz "itemhook-body"
	.balign 4

.global lbl_801BF07C
lbl_801BF07C:

	# ROM: 0x1BC07C
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A
	.4byte lbl_801BF034
	.4byte lbl_801BF041
	.4byte lbl_801BF04E
	.4byte lbl_801BF05C
	.4byte lbl_801BF06A

.global lbl_801BF180
lbl_801BF180:

	# ROM: 0x1BC180
	.4byte 0x43160000
	.4byte 0x432A0000
	.4byte 0x433C0000
	.4byte 0x43290000
	.4byte 0x43240000
	.4byte 0x43340000
	.4byte 0x43520000
	.4byte 0x42F00000
	.4byte 0x43160000
	.4byte 0x43160000
	.4byte 0x43160000
	.4byte 0x43160000
	.4byte 0x43160000

.global lbl_801BF1B4
lbl_801BF1B4:

	# ROM: 0x1BC1B4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x402000FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.asciz "?s33?s33?s33"
	.balign 4
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xC0A00000
	.4byte 0x3CA3D70A

.global lbl_801BF1EC
lbl_801BF1EC:

	# ROM: 0x1BC1EC
	.4byte 0x00000001
	.4byte 0xFFFF00FF
	.4byte 0xFFFF00FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F733333
	.4byte 0x3F800000
	.4byte 0x3F733333
	.4byte 0xBDCCCCCD
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0xC1000000
	.4byte 0

.global lbl_801BF224
lbl_801BF224:

	# ROM: 0x1BC224
	.4byte 0
	.4byte 0xFFFF00FF
	.4byte 0xFF8000FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.asciz "?s33?s33?s33"
	.balign 4
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0xC1800000
	.4byte 0x3D4CCCCD

.global lbl_801BF25C
lbl_801BF25C:

	# ROM: 0x1BC25C
	.4byte 0
	.4byte 0xE02020FF
	.4byte 0xE02020FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0xC1400000
	.4byte 0x3D4CCCCD

.global lbl_801BF294
lbl_801BF294:

	# ROM: 0x1BC294
	.asciz "test11_tex_we-itemhook-r"
	.balign 4

.global lbl_801BF2B0
lbl_801BF2B0:

	# ROM: 0x1BC2B0
	.4byte 0
	.4byte 0x2020FFFF
	.4byte 0x80FF20FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.asciz "?s33?s33?s33"
	.balign 4
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0xC1800000
	.4byte 0x3D75C28F

.global lbl_801BF2E8
lbl_801BF2E8:

	# ROM: 0x1BC2E8
	.4byte 0
	.4byte 0x20E020FF
	.4byte 0x20E020FF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0xC1400000
	.4byte 0x3D4CCCCD

.global lbl_801BF320
lbl_801BF320:

	# ROM: 0x1BC320
	.asciz "test11_tex_we-ske_R_shoe1"
	.byte 0x07, 0x20
	.4byte 0x011E011E
	.4byte 0x01141320
	.4byte 0x02130000
	.4byte 0
	.4byte 0
	.4byte 0x00000120
	.4byte 0x0A1E011E
	.4byte 0x0111E7E7
	.4byte 0xE7E70000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801BF36C
lbl_801BF36C:

	# ROM: 0x1BC36C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xC1000000
	.4byte 0x3CA3D70A

.global lbl_801BF3A4
lbl_801BF3A4:

	# ROM: 0x1BC3A4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F666666
	.4byte 0x3F666666
	.4byte 0x3F666666
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xC1000000
	.4byte 0x3CA3D70A

.global lbl_801BF3DC
lbl_801BF3DC:

	# ROM: 0x1BC3DC
	.4byte 0
	.4byte 0xFFFF00FF
	.4byte 0xFFFF00FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F666666
	.4byte 0x3F666666
	.4byte 0x3F666666
	.4byte 0xBE99999A
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xC1200000
	.4byte 0

.global lbl_801BF414
lbl_801BF414:

	# ROM: 0x1BC414
	.4byte 0
	.4byte 0x80FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0x3F59999A
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBDCCCCCD
	.4byte 0xC1800000
	.4byte 0x3CA3D70A

.global lbl_801BF44C
lbl_801BF44C:

	# ROM: 0x1BC44C
	.asciz "root_head"

.global lbl_801BF456
lbl_801BF456:

	# ROM: 0x1BC456
	.byte 0x72, 0x6F
	.asciz "ot_hair1"

.global lbl_801BF461
lbl_801BF461:

	# ROM: 0x1BC461
	.byte 0x73, 0x6B, 0x65
	.asciz "_head"

.global lbl_801BF46A
lbl_801BF46A:

	# ROM: 0x1BC46A
	.byte 0x65, 0x66
	.asciz "f_head"
	.balign 4

.global lbl_801BF474
lbl_801BF474:

	# ROM: 0x1BC474
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C
	.4byte lbl_801BF456
	.4byte lbl_801BF461
	.4byte lbl_801BF46A
	.4byte lbl_80288120
	.4byte lbl_801BF46A
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C
	.4byte lbl_801BF44C

.global lbl_801BF4A8
lbl_801BF4A8:

	# ROM: 0x1BC4A8
	.asciz "Error: CharWinLoseVoicePlay Failure.\n"
	.balign 4

.global lbl_801BF4D0
lbl_801BF4D0:

	# ROM: 0x1BC4D0
	.4byte 0x00000002
	.4byte 0x00080012
	.4byte 0x00200032
	.4byte 0x00490063
	.4byte 0x008200A4
	.4byte 0x00CB00F5
	.4byte 0x01240157
	.4byte 0x018E01C9
	.4byte 0x0208024B
	.4byte 0x029202DD
	.4byte 0x032C037F
	.4byte 0x03D70432
	.4byte 0x049204F5
	.4byte 0x055D05C9
	.4byte 0x063806AC
	.4byte 0x072407A0
	.4byte 0x082008A4
	.4byte 0x092C09B8
	.4byte 0x0A480ADD
	.4byte 0x0B750C12
	.4byte 0x0CB20D57
	.4byte 0x0DFF0EAC
	.4byte 0x0F5D1012
	.4byte 0x10CA1187
	.4byte 0x1248130D
	.4byte 0x13D714A4
	.4byte 0x1575164A
	.4byte 0x17241801
	.4byte 0x18E319C8
	.4byte 0x1AB21BA0
	.4byte 0x1C911D87
	.4byte 0x1E811F7F
	.4byte 0x20812187
	.4byte 0x2291239F
	.4byte 0x24B225C8
	.4byte 0x26E22801
	.4byte 0x29232A4A
	.4byte 0x2B752CA3
	.4byte 0x2DD62F0D
	.4byte 0x30483187
	.4byte 0x32CA3411
	.4byte 0x355C36AB
	.4byte 0x37FF3956
	.4byte 0x3AB13C11
	.4byte 0x3D743EDC
	.4byte 0x404841B7
	.4byte 0x432B44A3
	.4byte 0x461F479F
	.4byte 0x49234AAB
	.4byte 0x4C374DC7
	.4byte 0x4F5C50F4
	.4byte 0x52905431
	.4byte 0x55D6577E
	.4byte 0x592B5ADC
	.4byte 0x5C905E49
	.4byte 0x600661C7
	.4byte 0x638C6555
	.4byte 0x672268F4
	.4byte 0x6AC96CA2
	.4byte 0x6E807061
	.4byte 0x72477430
	.4byte 0x761E7810
	.4byte 0x7A067C00
	.4byte 0x7DFE8000

.global lbl_801BF5D0
lbl_801BF5D0:

	# ROM: 0x1BC5D0
	.asciz "THPSimpleOpen fail"
	.byte 0x53
	.asciz "ize %x\n"
	.asciz "Can't allocate the memory\n"
	.byte 0x54
	.asciz "HPSimplePreLoad fail"

.global lbl_801BF61D
lbl_801BF61D:

	# ROM: 0x1BC61D
	.byte 0x46, 0x61, 0x69
	.asciz "l to decode video data"
	.balign 4

.global lbl_801BF638
lbl_801BF638:

	# ROM: 0x1BC638
	.asciz "movie/ys501_0.thp"

.global lbl_801BF64A
lbl_801BF64A:

	# ROM: 0x1BC64A
	.byte 0x6D, 0x6F
	.asciz "vie/ys502_0.thp"

.global lbl_801BF65C
lbl_801BF65C:

	# ROM: 0x1BC65C
	.asciz "movie/ys503_0.thp"

.global lbl_801BF66E
lbl_801BF66E:

	# ROM: 0x1BC66E
	.byte 0x6D, 0x6F
	.asciz "vie/ys504_0.thp"

.global lbl_801BF680
lbl_801BF680:

	# ROM: 0x1BC680
	.asciz "movie/ys505_0.thp"

.global lbl_801BF692
lbl_801BF692:

	# ROM: 0x1BC692
	.byte 0x6D, 0x6F
	.asciz "vie/eys506_0.thp"

.global lbl_801BF6A5
lbl_801BF6A5:

	# ROM: 0x1BC6A5
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/eys507_0.thp"

.global lbl_801BF6B8
lbl_801BF6B8:

	# ROM: 0x1BC6B8
	.asciz "movie/ys508_0.thp"

.global lbl_801BF6CA
lbl_801BF6CA:

	# ROM: 0x1BC6CA
	.byte 0x6D, 0x6F
	.asciz "vie/ys509_0.thp"

.global lbl_801BF6DC
lbl_801BF6DC:

	# ROM: 0x1BC6DC
	.asciz "movie/ys510_0.thp"

.global lbl_801BF6EE
lbl_801BF6EE:

	# ROM: 0x1BC6EE
	.byte 0x6D, 0x6F
	.asciz "vie/ys511_0.thp"

.global lbl_801BF700
lbl_801BF700:

	# ROM: 0x1BC700
	.asciz "movie/ys512_0.thp"

.global lbl_801BF712
lbl_801BF712:

	# ROM: 0x1BC712
	.byte 0x6D, 0x6F
	.asciz "vie/ys513_0.thp"

.global lbl_801BF724
lbl_801BF724:

	# ROM: 0x1BC724
	.asciz "movie/eys514_0.thp"

.global lbl_801BF737
lbl_801BF737:

	# ROM: 0x1BC737
	.byte 0x6D
	.asciz "ovie/ys515_0.thp"

.global lbl_801BF749
lbl_801BF749:

	# ROM: 0x1BC749
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys516_0.thp"

.global lbl_801BF75B
lbl_801BF75B:

	# ROM: 0x1BC75B
	.byte 0x6D
	.asciz "ovie/ys517_0.thp"

.global lbl_801BF76D
lbl_801BF76D:

	# ROM: 0x1BC76D
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys518_0.thp"

.global lbl_801BF77F
lbl_801BF77F:

	# ROM: 0x1BC77F
	.byte 0x6D
	.asciz "ovie/ys519_1.thp"

.global lbl_801BF791
lbl_801BF791:

	# ROM: 0x1BC791
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys519_0.thp"

.global lbl_801BF7A3
lbl_801BF7A3:

	# ROM: 0x1BC7A3
	.byte 0x6D
	.asciz "ovie/ys519_2.thp"

.global lbl_801BF7B5
lbl_801BF7B5:

	# ROM: 0x1BC7B5
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys520_0.thp"

.global lbl_801BF7C7
lbl_801BF7C7:

	# ROM: 0x1BC7C7
	.byte 0x6D
	.asciz "ovie/ys521_0.thp"

.global lbl_801BF7D9
lbl_801BF7D9:

	# ROM: 0x1BC7D9
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys522_0.thp"

.global lbl_801BF7EB
lbl_801BF7EB:

	# ROM: 0x1BC7EB
	.byte 0x6D
	.asciz "ovie/ys523_0.thp"

.global lbl_801BF7FD
lbl_801BF7FD:

	# ROM: 0x1BC7FD
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys524_0.thp"

.global lbl_801BF80F
lbl_801BF80F:

	# ROM: 0x1BC80F
	.byte 0x6D
	.asciz "ovie/ys525_0.thp"

.global lbl_801BF821
lbl_801BF821:

	# ROM: 0x1BC821
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys526_0.thp"

.global lbl_801BF833
lbl_801BF833:

	# ROM: 0x1BC833
	.byte 0x6D
	.asciz "ovie/ys527_0.thp"

.global lbl_801BF845
lbl_801BF845:

	# ROM: 0x1BC845
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys528_0.thp"

.global lbl_801BF857
lbl_801BF857:

	# ROM: 0x1BC857
	.byte 0x6D
	.asciz "ovie/ys529_0.thp"

.global lbl_801BF869
lbl_801BF869:

	# ROM: 0x1BC869
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys530_0.thp"

.global lbl_801BF87B
lbl_801BF87B:

	# ROM: 0x1BC87B
	.byte 0x6D
	.asciz "ovie/ys531_0.thp"

.global lbl_801BF88D
lbl_801BF88D:

	# ROM: 0x1BC88D
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys532_0.thp"

.global lbl_801BF89F
lbl_801BF89F:

	# ROM: 0x1BC89F
	.byte 0x6D
	.asciz "ovie/ys533_0.thp"

.global lbl_801BF8B1
lbl_801BF8B1:

	# ROM: 0x1BC8B1
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys534_0.thp"

.global lbl_801BF8C3
lbl_801BF8C3:

	# ROM: 0x1BC8C3
	.byte 0x6D
	.asciz "ovie/ys535_0.thp"

.global lbl_801BF8D5
lbl_801BF8D5:

	# ROM: 0x1BC8D5
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys536_0.thp"

.global lbl_801BF8E7
lbl_801BF8E7:

	# ROM: 0x1BC8E7
	.byte 0x6D
	.asciz "ovie/ys537_0.thp"

.global lbl_801BF8F9
lbl_801BF8F9:

	# ROM: 0x1BC8F9
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys538_0.thp"

.global lbl_801BF90B
lbl_801BF90B:

	# ROM: 0x1BC90B
	.byte 0x6D
	.asciz "ovie/ys539_0.thp"

.global lbl_801BF91D
lbl_801BF91D:

	# ROM: 0x1BC91D
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys540_0.thp"

.global lbl_801BF92F
lbl_801BF92F:

	# ROM: 0x1BC92F
	.byte 0x6D
	.asciz "ovie/ys541_0.thp"

.global lbl_801BF941
lbl_801BF941:

	# ROM: 0x1BC941
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys542_0.thp"

.global lbl_801BF953
lbl_801BF953:

	# ROM: 0x1BC953
	.byte 0x6D
	.asciz "ovie/ys543_0.thp"

.global lbl_801BF965
lbl_801BF965:

	# ROM: 0x1BC965
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys544_0.thp"

.global lbl_801BF977
lbl_801BF977:

	# ROM: 0x1BC977
	.byte 0x6D
	.asciz "ovie/ys545_0.thp"

.global lbl_801BF989
lbl_801BF989:

	# ROM: 0x1BC989
	.byte 0x6D, 0x6F, 0x76
	.asciz "ie/ys546_0.thp"

.global lbl_801BF99B
lbl_801BF99B:

	# ROM: 0x1BC99B
	.byte 0x6D
	.asciz "ovie/eys547_0.thp"

.global lbl_801BF9AE
lbl_801BF9AE:

	# ROM: 0x1BC9AE
	.byte 0x6D, 0x6F
	.asciz "vie/ys548_0.thp"

.global lbl_801BF9C0
lbl_801BF9C0:

	# ROM: 0x1BC9C0
	.asciz "movie/ys549_0.thp"

.global lbl_801BF9D2
lbl_801BF9D2:

	# ROM: 0x1BC9D2
	.byte 0x6D, 0x6F
	.asciz "vie/ys550_0.thp"

.global lbl_801BF9E4
lbl_801BF9E4:

	# ROM: 0x1BC9E4
	.asciz "movie/ys551_0.thp"

.global lbl_801BF9F6
lbl_801BF9F6:

	# ROM: 0x1BC9F6
	.byte 0x6D, 0x6F
	.asciz "vie/ys552_0.thp"

.global lbl_801BFA08
lbl_801BFA08:

	# ROM: 0x1BCA08
	.asciz "movie/ys553_0.thp"

.global lbl_801BFA1A
lbl_801BFA1A:

	# ROM: 0x1BCA1A
	.byte 0x6D, 0x6F
	.asciz "vie/ys554_0.thp"

.global lbl_801BFA2C
lbl_801BFA2C:

	# ROM: 0x1BCA2C
	.asciz "movie/ys555_0.thp"

.global lbl_801BFA3E
lbl_801BFA3E:

	# ROM: 0x1BCA3E
	.byte 0x6D, 0x6F
	.asciz "vie/ys559_0.thp"

.global lbl_801BFA50
lbl_801BFA50:

	# ROM: 0x1BCA50
	.asciz "movie/ys560_0.thp"

.global lbl_801BFA62
lbl_801BFA62:

	# ROM: 0x1BCA62
	.byte 0x6D, 0x6F
	.asciz "vie/ys561_0.thp"

.global lbl_801BFA74
lbl_801BFA74:

	# ROM: 0x1BCA74
	.asciz "movie/ys562_0.thp"

.global lbl_801BFA86
lbl_801BFA86:

	# ROM: 0x1BCA86
	.byte 0x6D, 0x6F
	.asciz "vie/ys563_0.thp"

.global lbl_801BFA98
lbl_801BFA98:

	# ROM: 0x1BCA98
	.asciz "movie/ys564_0.thp"

.global lbl_801BFAAA
lbl_801BFAAA:

	# ROM: 0x1BCAAA
	.byte 0x6D, 0x6F
	.asciz "vie/ys565_0.thp"

.global lbl_801BFABC
lbl_801BFABC:

	# ROM: 0x1BCABC
	.asciz "movie/ys566_0.thp"

.global lbl_801BFACE
lbl_801BFACE:

	# ROM: 0x1BCACE
	.byte 0x6D, 0x6F
	.asciz "vie/ys567_0.thp"

.global lbl_801BFAE0
lbl_801BFAE0:

	# ROM: 0x1BCAE0
	.asciz "movie/ys568_0.thp"

.global lbl_801BFAF2
lbl_801BFAF2:

	# ROM: 0x1BCAF2
	.byte 0x6D, 0x6F
	.asciz "vie/ys569_0.thp"

.global lbl_801BFB04
lbl_801BFB04:

	# ROM: 0x1BCB04
	.asciz "movie/ys570_0.thp"

.global lbl_801BFB16
lbl_801BFB16:

	# ROM: 0x1BCB16
	.byte 0x6D, 0x6F
	.asciz "vie/ys571_0.thp"

.global lbl_801BFB28
lbl_801BFB28:

	# ROM: 0x1BCB28
	.asciz "movie/ys572_0.thp"

.global lbl_801BFB3A
lbl_801BFB3A:

	# ROM: 0x1BCB3A
	.byte 0x6D, 0x6F
	.asciz "vie/ys573_0.thp"

.global lbl_801BFB4C
lbl_801BFB4C:

	# ROM: 0x1BCB4C
	.asciz "movie/ys574_0.thp"

.global lbl_801BFB5E
lbl_801BFB5E:

	# ROM: 0x1BCB5E
	.byte 0x6D, 0x6F
	.asciz "vie/ys575_0.thp"

.global lbl_801BFB70
lbl_801BFB70:

	# ROM: 0x1BCB70
	.asciz "movie/ys576_0.thp"

.global lbl_801BFB82
lbl_801BFB82:

	# ROM: 0x1BCB82
	.byte 0x6D, 0x6F
	.asciz "vie/ys577_0.thp"

.global lbl_801BFB94
lbl_801BFB94:

	# ROM: 0x1BCB94
	.asciz "movie/ys578_0.thp"

.global lbl_801BFBA6
lbl_801BFBA6:

	# ROM: 0x1BCBA6
	.byte 0x6D, 0x6F
	.asciz "vie/ys579_0.thp"

.global lbl_801BFBB8
lbl_801BFBB8:

	# ROM: 0x1BCBB8
	.asciz "movie/ys580_0.thp"
	.balign 4

.global func_801BFBCC
func_801BFBCC:

	# ROM: 0x1BCBCC
	.4byte 0x000F001E
	.4byte 0xFF000000
	.4byte 0x00430000
	.4byte 0x003B0000
	.4byte 0x00270000
	.4byte 0
	.4byte 0
	.4byte lbl_801BF638
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0000
	.4byte 0x003F0001
	.4byte 0
	.4byte 0x003F0003
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0010001D
	.4byte 0xFF000000
	.4byte 0x00430001
	.4byte 0x003C0000
	.4byte 0x00270001
	.4byte 0
	.4byte 0
	.4byte lbl_801BF64A
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0005
	.4byte 0x003F0006
	.4byte 0
	.4byte 0x003F0008
	.4byte 0x003F0009
	.4byte 0x003F0183
	.4byte 0x003F0184
	.4byte 0
	.4byte 0x003F0186
	.4byte 0x003F0187
	.4byte 0x00110019
	.4byte 0xFF000000
	.4byte 0x00430002
	.4byte 0x003D0000
	.4byte 0x00270002
	.4byte 0
	.4byte 0
	.4byte lbl_801BF65C
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F000A
	.4byte 0x003F000B
	.4byte 0
	.4byte 0x003F000D
	.4byte 0x003F000E
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00120012
	.4byte 0xFF000000
	.4byte 0x00430003
	.4byte 0x003E0000
	.4byte 0x00270003
	.4byte 0
	.4byte 0
	.4byte lbl_801BF66E
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F000F
	.4byte 0x003F0010
	.4byte 0
	.4byte 0x003F0012
	.4byte 0
	.4byte 0x003F0188
	.4byte 0x003F0189
	.4byte 0
	.4byte 0x003F018B
	.4byte 0
	.4byte 0x0013001A
	.4byte 0xFF000000
	.4byte 0x00430004
	.4byte 0x003F0000
	.4byte 0x00270004
	.4byte 0
	.4byte 0
	.4byte lbl_801BF680
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0014
	.4byte 0x003F0015
	.4byte 0
	.4byte 0x003F0017
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0014001A
	.4byte 0xFF000000
	.4byte 0x00430005
	.4byte 0x00400000
	.4byte 0x00270005
	.4byte 0
	.4byte 0
	.4byte lbl_801BF692
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0019
	.4byte 0x003F001A
	.4byte 0
	.4byte 0x003F001C
	.4byte 0
	.4byte 0x003F018D
	.4byte 0x003F018E
	.4byte 0
	.4byte 0x003F0190
	.4byte 0
	.4byte 0x0015001A
	.4byte 0xFF000000
	.4byte 0x00430006
	.4byte 0x00410000
	.4byte 0x00270006
	.4byte 0
	.4byte 0
	.4byte lbl_801BF6A5
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F001E
	.4byte 0x003F001F
	.4byte 0
	.4byte 0x003F0021
	.4byte 0
	.4byte 0x003F0192
	.4byte 0x003F0193
	.4byte 0
	.4byte 0x003F0195
	.4byte 0
	.4byte 0x0016001C
	.4byte 0xFF000000
	.4byte 0x00430007
	.4byte 0x00420000
	.4byte 0x00270007
	.4byte 0
	.4byte 0
	.4byte lbl_801BF6B8
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0023
	.4byte 0x003F0024
	.4byte 0
	.4byte 0x003F0026
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0017001A
	.4byte 0xFF000000
	.4byte 0x00430008
	.4byte 0x00430000
	.4byte 0x00270008
	.4byte 0
	.4byte 0
	.4byte lbl_801BF6CA
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0028
	.4byte 0x003F0029
	.4byte 0
	.4byte 0x003F002B
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0018001A
	.4byte 0xFF000000
	.4byte 0x00430009
	.4byte 0x00440000
	.4byte 0x00270009
	.4byte 0
	.4byte 0
	.4byte lbl_801BF6DC
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F002D
	.4byte 0x003F002E
	.4byte 0
	.4byte 0x003F0030
	.4byte 0
	.4byte 0x003F0197
	.4byte 0x003F0198
	.4byte 0
	.4byte 0x003F019A
	.4byte 0
	.4byte 0x00190011
	.4byte 0xFF000000
	.4byte 0x0043000A
	.4byte 0x00450000
	.4byte 0x0027000A
	.4byte 0
	.4byte 0
	.4byte lbl_801BF6EE
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0032
	.4byte 0x003F0033
	.4byte 0
	.4byte 0x003F0035
	.4byte 0
	.4byte 0x003F019C
	.4byte 0x003F019D
	.4byte 0
	.4byte 0x003F019F
	.4byte 0
	.4byte 0x001A0011
	.4byte 0xFF000000
	.4byte 0x0043000B
	.4byte 0x00460000
	.4byte 0x0027000B
	.4byte 0
	.4byte 0
	.4byte lbl_801BF700
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0037
	.4byte 0x003F0038
	.4byte 0
	.4byte 0x003F003A
	.4byte 0
	.4byte 0x003F01A1
	.4byte 0x003F01A2
	.4byte 0
	.4byte 0x003F01A4
	.4byte 0
	.4byte 0x001B001C
	.4byte 0xFF000000
	.4byte 0x0043000C
	.4byte 0x00470000
	.4byte 0x0027000C
	.4byte 0
	.4byte 0
	.4byte lbl_801BF712
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F003C
	.4byte 0x003F003D
	.4byte 0
	.4byte 0x003F003F
	.4byte 0
	.4byte 0x003F01A6
	.4byte 0x003F01A7
	.4byte 0
	.4byte 0x003F01A9
	.4byte 0
	.4byte 0x001C0014
	.4byte 0xFF000000
	.4byte 0x0043000D
	.4byte 0x00480000
	.4byte 0x0027000D
	.4byte 0
	.4byte 0
	.4byte lbl_801BF724
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0041
	.4byte 0x003F0042
	.4byte 0
	.4byte 0x003F0044
	.4byte 0
	.4byte 0x003F01AB
	.4byte 0x003F01AC
	.4byte 0
	.4byte 0x003F01AE
	.4byte 0
	.4byte 0x001D0016
	.4byte 0xFF000000
	.4byte 0x0043000E
	.4byte 0x00490000
	.4byte 0x0027000E
	.4byte 0
	.4byte 0
	.4byte lbl_801BF737
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0046
	.4byte 0x003F0047
	.4byte 0
	.4byte 0x003F0049
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x001E005F
	.4byte 0xFF000000
	.4byte 0x0043000F
	.4byte 0x004A0000
	.4byte 0x0027000F
	.4byte 0
	.4byte 0
	.4byte lbl_801BF749
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F004B
	.4byte 0x003F004C
	.4byte 0
	.4byte 0x003F004E
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x001F0109
	.4byte 0xFF000000
	.4byte 0x00430010
	.4byte 0x004B0000
	.4byte 0x00270010
	.4byte 0
	.4byte 0
	.4byte lbl_801BF75B
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0073
	.4byte 0x003F0074
	.4byte 0x003F0075
	.4byte 0x003F0076
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0020010D
	.4byte 0xFF000000
	.4byte 0x00430011
	.4byte 0x004C0000

.global lbl_801C012C
lbl_801C012C:

	# ROM: 0x1BD12C
	.4byte 0x00270011
	.4byte 0
	.4byte 0
	.4byte lbl_801BF76D
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0078
	.4byte 0x003F0079
	.4byte 0x003F007A
	.4byte 0x003F007B
	.4byte 0x003F007C
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00210101
	.4byte 0xFF000000
	.4byte 0x00430012
	.4byte 0x004D0000
	.4byte 0x00270013
	.4byte 0x00270012
	.4byte 0x00270014
	.4byte lbl_801BF77F
	.4byte lbl_801BF791
	.4byte lbl_801BF7A3
	.4byte 0x003F007D
	.4byte 0x003F007E
	.4byte 0x003F007F
	.4byte 0x003F0080
	.4byte 0x003F0081
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00220109
	.4byte 0xFF000000
	.4byte 0x00430013
	.4byte 0x004E0000
	.4byte 0x00270015
	.4byte 0
	.4byte 0
	.4byte lbl_801BF7B5
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0082
	.4byte 0x003F0083
	.4byte 0x003F0084
	.4byte 0x003F0085
	.4byte 0x003F0086
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00230219
	.4byte 0xFF000000
	.4byte 0x00430014
	.4byte 0x004F0000
	.4byte 0x00270016
	.4byte 0
	.4byte 0
	.4byte lbl_801BF7C7
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00AF
	.4byte 0x003F00B0
	.4byte 0
	.4byte 0x003F00B2
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0024010E
	.4byte 0xFF000000
	.4byte 0x00430015
	.4byte 0x00500000
	.4byte 0x00270017
	.4byte 0
	.4byte 0
	.4byte lbl_801BF7D9
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0087
	.4byte 0x003F0088
	.4byte 0x003F0089
	.4byte 0x003F008A
	.4byte 0x003F008B
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0025010E
	.4byte 0xFF000000
	.4byte 0x00430016
	.4byte 0x00510000
	.4byte 0x00270018
	.4byte 0
	.4byte 0
	.4byte lbl_801BF7EB
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F008C
	.4byte 0x003F008D
	.4byte 0x003F008E
	.4byte 0x003F008F
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0026005F
	.4byte 0xFF000000
	.4byte 0x00430017
	.4byte 0x00520000
	.4byte 0x00270019
	.4byte 0
	.4byte 0
	.4byte lbl_801BF7FD
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0050
	.4byte 0x003F0051
	.4byte 0
	.4byte 0x003F0053
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00270102
	.4byte 0xFF000000
	.4byte 0x00430018
	.4byte 0x00530000
	.4byte 0x0027001A
	.4byte 0
	.4byte 0
	.4byte lbl_801BF80F
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0091
	.4byte 0x003F0092
	.4byte 0x003F0093
	.4byte 0x003F0094
	.4byte 0x003F0095
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0028021B
	.4byte 0xFF000000
	.4byte 0x00430019
	.4byte 0x00540000
	.4byte 0x0027001B
	.4byte 0
	.4byte 0
	.4byte lbl_801BF821
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00B4
	.4byte 0x003F00B5
	.4byte 0
	.4byte 0x003F00B7
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00290215
	.4byte 0xFF000000
	.4byte 0x0043001A
	.4byte 0x00550000
	.4byte 0x0027001C
	.4byte 0
	.4byte 0
	.4byte lbl_801BF833
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00B9
	.4byte 0x003F00BA
	.4byte 0
	.4byte 0x003F00BC
	.4byte 0x003F00BD
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002A021A
	.4byte 0xFF000000
	.4byte 0x0043001B
	.4byte 0x00560000
	.4byte 0x0027001D
	.4byte 0
	.4byte 0
	.4byte lbl_801BF845
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00BE
	.4byte 0x003F00BF
	.4byte 0
	.4byte 0x003F00C1
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002B023E
	.4byte 0xFF000000
	.4byte 0x0043001C
	.4byte 0x00570000
	.4byte 0x0027001E
	.4byte 0
	.4byte 0
	.4byte lbl_801BF857
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00C3
	.4byte 0x003F00C4
	.4byte 0x003F00C5
	.4byte 0x003F00C6
	.4byte 0x003F00C7
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002C0232
	.4byte 0xFF000000
	.4byte 0x0043001D
	.4byte 0x00580000
	.4byte 0x0027001F
	.4byte 0
	.4byte 0
	.4byte lbl_801BF869
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00C8
	.4byte 0x003F00C9
	.4byte 0x003F00CA
	.4byte 0x003F00CB
	.4byte 0x003F00CC
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002D0211
	.4byte 0xFF000000
	.4byte 0x0043001E
	.4byte 0x00590000
	.4byte 0x00270020
	.4byte 0
	.4byte 0
	.4byte lbl_801BF87B
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00CD
	.4byte 0x003F00CE
	.4byte 0
	.4byte 0x003F00D0
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002E021A
	.4byte 0xFF000000
	.4byte 0x0043001F
	.4byte 0x005A0000
	.4byte 0x00270021
	.4byte 0
	.4byte 0
	.4byte lbl_801BF88D
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00D2
	.4byte 0x003F00D3
	.4byte 0
	.4byte 0x003F00D5
	.4byte 0x003F00D6
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x002F021C
	.4byte 0xFF000000
	.4byte 0x00430020
	.4byte 0x005B0000
	.4byte 0x00270022
	.4byte 0
	.4byte 0
	.4byte lbl_801BF89F
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00D7
	.4byte 0x003F00D8
	.4byte 0x003F00D9
	.4byte 0x003F00DA
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0030021D
	.4byte 0xFF000000
	.4byte 0x00430021
	.4byte 0x005C0000
	.4byte 0x00270023
	.4byte 0
	.4byte 0
	.4byte lbl_801BF8B1
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00DC
	.4byte 0x003F00DD
	.4byte 0
	.4byte 0x003F00DF
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0031031A
	.4byte 0xFF000000
	.4byte 0x00430022
	.4byte 0x005D0000
	.4byte 0x00270024
	.4byte 0
	.4byte 0
	.4byte lbl_801BF8C3
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00EB
	.4byte 0x003F00EC
	.4byte 0
	.4byte 0x003F00EE
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00320315
	.4byte 0xFF000000
	.4byte 0x00430023
	.4byte 0x005E0000
	.4byte 0x00270025
	.4byte 0
	.4byte 0
	.4byte lbl_801BF8D5
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00F0
	.4byte 0x003F00F1
	.4byte 0
	.4byte 0x003F00F3
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00330315
	.4byte 0xFF000000
	.4byte 0x00430024
	.4byte 0x005F0000
	.4byte 0x00270026
	.4byte 0
	.4byte 0
	.4byte lbl_801BF8E7
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00F5
	.4byte 0x003F00F6
	.4byte 0
	.4byte 0x003F00F8
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00340319
	.4byte 0xFF000000
	.4byte 0x00430025
	.4byte 0x00600000
	.4byte 0x00270027
	.4byte 0
	.4byte 0
	.4byte lbl_801BF8F9
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00FA
	.4byte 0x003F00FB
	.4byte 0
	.4byte 0x003F00FD
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0035031A
	.4byte 0xFF000000
	.4byte 0x00430026
	.4byte 0x00610000
	.4byte 0x00270028
	.4byte 0
	.4byte 0
	.4byte lbl_801BF90B
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00FF
	.4byte 0x003F0100
	.4byte 0
	.4byte 0x003F0102
	.4byte 0x003F0103
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0036031E
	.4byte 0xFF000000
	.4byte 0x00430027
	.4byte 0x00620000
	.4byte 0x00270029
	.4byte 0
	.4byte 0
	.4byte lbl_801BF91D
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0104
	.4byte 0x003F0105
	.4byte 0
	.4byte 0x003F0107
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00370619
	.4byte 0xFF000000
	.4byte 0x00430028
	.4byte 0x00630000
	.4byte 0x0027002A
	.4byte 0
	.4byte 0
	.4byte lbl_801BF92F
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0109
	.4byte 0x003F010A
	.4byte 0
	.4byte 0x003F010C
	.4byte 0x003F010D
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0038061A
	.4byte 0xFF000000
	.4byte 0x00430029
	.4byte 0x00640000
	.4byte 0x0027002B
	.4byte 0
	.4byte 0
	.4byte lbl_801BF941
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F010E
	.4byte 0x003F010F
	.4byte 0
	.4byte 0x003F0111
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00390611
	.4byte 0xFF000000
	.4byte 0x0043002A
	.4byte 0x00650000
	.4byte 0x0027002C
	.4byte 0
	.4byte 0
	.4byte lbl_801BF953
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0113
	.4byte 0x003F0114
	.4byte 0
	.4byte 0x003F0116
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003A061A
	.4byte 0xFF000000
	.4byte 0x0043002B
	.4byte 0x00660000
	.4byte 0x0027002D
	.4byte 0
	.4byte 0
	.4byte lbl_801BF965
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0118
	.4byte 0x003F0119
	.4byte 0
	.4byte 0x003F011B
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003B0614
	.4byte 0xFF000000
	.4byte 0x0043002C
	.4byte 0x00670000
	.4byte 0x0027002E
	.4byte 0
	.4byte 0
	.4byte lbl_801BF977
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F011D
	.4byte 0x003F011E
	.4byte 0
	.4byte 0x003F0120
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003C061C
	.4byte 0xFF000000
	.4byte 0x0043002D
	.4byte 0x00680000
	.4byte 0x0027002F
	.4byte 0
	.4byte 0
	.4byte lbl_801BF989
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0122
	.4byte 0x003F0123
	.4byte 0
	.4byte 0x003F0125
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003D061C
	.4byte 0xFF000000
	.4byte 0x0043002E
	.4byte 0x00690000
	.4byte 0x00270030
	.4byte 0
	.4byte 0
	.4byte lbl_801BF99B
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0127
	.4byte 0x003F0128
	.4byte 0
	.4byte 0x003F012A
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003E061A
	.4byte 0xFF000000
	.4byte 0x0043002F
	.4byte 0x006A0000
	.4byte 0x00270031
	.4byte 0
	.4byte 0
	.4byte lbl_801BF9AE
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F012C
	.4byte 0x003F012D
	.4byte 0
	.4byte 0x003F012F
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0611
	.4byte 0xFF000000
	.4byte 0x00430030
	.4byte 0x006B0000
	.4byte 0x00270032
	.4byte 0
	.4byte 0
	.4byte lbl_801BF9C0
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0131
	.4byte 0x003F0132
	.4byte 0
	.4byte 0x003F0134
	.4byte 0x003F0135
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0040061C
	.4byte 0xFF000000
	.4byte 0x00430031
	.4byte 0x006C0000
	.4byte 0x00270033
	.4byte 0
	.4byte 0
	.4byte lbl_801BF9D2
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0136
	.4byte 0x003F0137
	.4byte 0
	.4byte 0x003F0139
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00410619
	.4byte 0xFF000000
	.4byte 0x00430032
	.4byte 0x006D0000
	.4byte 0x00270034
	.4byte 0
	.4byte 0
	.4byte lbl_801BF9E4
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F013B
	.4byte 0x003F013C
	.4byte 0
	.4byte 0x003F013E
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00420612
	.4byte 0xFF000000
	.4byte 0x00430033
	.4byte 0x006E0000
	.4byte 0x00270035
	.4byte 0
	.4byte 0
	.4byte lbl_801BF9F6
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0140
	.4byte 0x003F0141
	.4byte 0
	.4byte 0x003F0143
	.4byte 0x003F0144
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00430619
	.4byte 0xFF000000
	.4byte 0x00430034
	.4byte 0x006F0000
	.4byte 0x00270036
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA08
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0145
	.4byte 0x003F0146
	.4byte 0
	.4byte 0x003F0148
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0044061C
	.4byte 0xFF000000
	.4byte 0x00430035
	.4byte 0x00700000
	.4byte 0x00270037
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA1A
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F014A
	.4byte 0x003F014B
	.4byte 0
	.4byte 0x003F014D
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00450612
	.4byte 0xFF000000
	.4byte 0x00430036
	.4byte 0x00710000
	.4byte 0x00270038
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA2C
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F014F
	.4byte 0x003F0150
	.4byte 0
	.4byte 0x003F0152
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x000D090F
	.4byte 0xFF000000
	.4byte 0x00660029
	.4byte 0x00390000
	.4byte 0x00270000
	.4byte 0
	.4byte 0
	.4byte lbl_801BF638
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x00700094
	.4byte 0x00700095
	.4byte 0
	.4byte 0x00700097
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x000D090F
	.4byte 0xFF000000
	.4byte 0x00660029
	.4byte 0x00390000
	.4byte 0x00270000
	.4byte 0
	.4byte 0
	.4byte lbl_801BF638
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x00700094
	.4byte 0x00700095
	.4byte 0
	.4byte 0x00700097
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x000D090F
	.4byte 0xFF000000
	.4byte 0x00660029
	.4byte 0x00390000
	.4byte 0x00270000
	.4byte 0
	.4byte 0
	.4byte lbl_801BF638
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x00700094
	.4byte 0x00700095
	.4byte 0
	.4byte 0x00700097
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0046041F
	.4byte 0xFF000000
	.4byte 0x0043003A
	.4byte 0x00720000
	.4byte 0x00270039
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA3E
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0154
	.4byte 0x003F0155
	.4byte 0
	.4byte 0x003F0157
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0047041F
	.4byte 0xFF000000
	.4byte 0x0043003B
	.4byte 0x00730000
	.4byte 0x0027003A
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA50
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0159
	.4byte 0x003F015A
	.4byte 0
	.4byte 0x003F015C
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0048041F
	.4byte 0xFF000000
	.4byte 0x0043003C
	.4byte 0x00740000
	.4byte 0x0027003B
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA62
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F015E
	.4byte 0x003F015F
	.4byte 0
	.4byte 0x003F0161
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0049050F
	.4byte 0xFF000000
	.4byte 0x0043003D
	.4byte 0x00750000
	.4byte 0x0027003C
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA74
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0163
	.4byte 0x003F0164
	.4byte 0
	.4byte 0x003F0166
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x004A0019
	.4byte 0xFF000000
	.4byte 0x0043003E
	.4byte 0x00760000
	.4byte 0x0027003D
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA86
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0055
	.4byte 0x003F0056
	.4byte 0
	.4byte 0x003F0058
	.4byte 0x003F0059
	.4byte 0x003F01B0
	.4byte 0x003F01B1
	.4byte 0
	.4byte 0x003F01B3
	.4byte 0x003F01B4
	.4byte 0x004B0019
	.4byte 0xFF000000
	.4byte 0x0043003F
	.4byte 0x00770000
	.4byte 0x0027003E
	.4byte 0
	.4byte 0
	.4byte lbl_801BFA98
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F005A
	.4byte 0x003F005B
	.4byte 0
	.4byte 0x003F005D
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x004C0019
	.4byte 0xFF000000
	.4byte 0x00430040
	.4byte 0x00780000
	.4byte 0x0027003F
	.4byte 0
	.4byte 0
	.4byte lbl_801BFAAA
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F005F
	.4byte 0x003F0060
	.4byte 0
	.4byte 0x003F0062
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x004D001C
	.4byte 0xFF000000
	.4byte 0x00430041
	.4byte 0x00790000
	.4byte 0x00270040
	.4byte 0
	.4byte 0
	.4byte lbl_801BFABC
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0064
	.4byte 0x003F0065
	.4byte 0
	.4byte 0x003F0067
	.4byte 0x003F0068
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x004E0106
	.4byte 0xFF000000
	.4byte 0x00430042
	.4byte 0x007A0000
	.4byte 0x00270041
	.4byte 0
	.4byte 0
	.4byte lbl_801BFACE
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0096
	.4byte 0x003F0097
	.4byte 0x003F0098
	.4byte 0x003F0099
	.4byte 0x003F009A
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x004F0109
	.4byte 0xFF000000
	.4byte 0x00430043
	.4byte 0x007B0000
	.4byte 0x00270042
	.4byte 0
	.4byte 0
	.4byte lbl_801BFAE0
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F009B
	.4byte 0x003F009C
	.4byte 0x003F009D
	.4byte 0x003F009E
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0050014F
	.4byte 0xFF000000
	.4byte 0x00430044
	.4byte 0x007C0000
	.4byte 0x00270043
	.4byte 0
	.4byte 0
	.4byte lbl_801BFAF2
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00A0
	.4byte 0x003F00A1
	.4byte 0x003F00A2
	.4byte 0x003F00A3
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0051010C
	.4byte 0xFF000000
	.4byte 0x00430045
	.4byte 0x007D0000
	.4byte 0x00270044
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB04
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00A5
	.4byte 0x003F00A6
	.4byte 0x003F00A7
	.4byte 0x003F00A8
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0052081F
	.4byte 0xFF000000
	.4byte 0x00430046
	.4byte 0x007E0000
	.4byte 0x00270045
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB16
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0169
	.4byte 0x003F016A
	.4byte 0
	.4byte 0x003F016C
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0053081F
	.4byte 0xFF000000
	.4byte 0x00430047
	.4byte 0x007F0000
	.4byte 0x00270046
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB28
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F016E
	.4byte 0x003F016F
	.4byte 0
	.4byte 0x003F0171
	.4byte 0x003F0172
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0054081F
	.4byte 0xFF000000
	.4byte 0x00430048
	.4byte 0x00800000
	.4byte 0x00270047
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB3A
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0173
	.4byte 0x003F0174
	.4byte 0
	.4byte 0x003F0176
	.4byte 0x003F0177
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0055021C
	.4byte 0xFF000000
	.4byte 0x00430049
	.4byte 0x00810000
	.4byte 0x00270048
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB4C
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00E1
	.4byte 0x003F00E2
	.4byte 0
	.4byte 0x003F00E4
	.4byte 0x003F00E5
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0056025F
	.4byte 0xFF000000
	.4byte 0x0043004A
	.4byte 0x00820000
	.4byte 0x00270049
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB5E
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00E6
	.4byte 0x003F00E7
	.4byte 0
	.4byte 0x003F00E9
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x00570019
	.4byte 0xFF000000
	.4byte 0x0043004B
	.4byte 0x00830000
	.4byte 0x0027004A
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB70
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0069
	.4byte 0x003F006A
	.4byte 0x003F006B
	.4byte 0x003F006C
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0058010A
	.4byte 0xFF000000
	.4byte 0x0043004C
	.4byte 0x00840000
	.4byte 0x0027004B
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB82
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F00AA
	.4byte 0x003F00AB
	.4byte 0x003F00AC
	.4byte 0x003F00AD
	.4byte 0x003F00AE
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x000B008F
	.4byte 0xFF000000
	.4byte 0x0043004B
	.4byte 0x00830000
	.4byte 0x0027004C
	.4byte 0
	.4byte 0
	.4byte lbl_801BFB94
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F0178
	.4byte 0x003F0179
	.4byte 0
	.4byte 0x003F017B
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x0059001C
	.4byte 0xFF000000
	.4byte 0x0043004E
	.4byte 0x00850000
	.4byte 0x0027004D
	.4byte 0
	.4byte 0
	.4byte lbl_801BFBA6
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F006E
	.4byte 0x003F006F
	.4byte 0
	.4byte 0x003F0071
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x005A028F
	.4byte 0xFF000000
	.4byte 0x0043004F
	.4byte 0x00860000
	.4byte 0x0027004E
	.4byte 0
	.4byte 0
	.4byte lbl_801BFBB8
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0x003F017D
	.4byte 0x003F017E
	.4byte 0
	.4byte 0x003F0180
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x006E0798
	.4byte 0xFF000000
	.4byte 0x00430000
	.4byte 0x00BC0000
	.4byte 0x00270000
	.4byte 0
	.4byte 0
	.4byte lbl_801BF638
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0
	.4byte 0x00190043
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0x003F0182
	.4byte 0xFFFF0000
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte lbl_80288130
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C156C
lbl_801C156C:

	# ROM: 0x1BE56C
	.4byte 0x000001F6
	.4byte 0x00000005
	.4byte 0
	.4byte 0x42B40000
	.4byte 0x42C80000
	.4byte 0x425C0000
	.4byte 0x44098000
	.4byte 0x420C0000
	.4byte 0x44480000
	.4byte 0x41D00000
	.4byte 0x447A0000
	.4byte 0x41B80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001F8
	.4byte 0x00000005
	.4byte 0
	.4byte 0x42B40000
	.4byte 0x42C80000
	.4byte 0x42700000
	.4byte 0x43E10000
	.4byte 0x420C0000
	.4byte 0x44480000
	.4byte 0x41A00000
	.4byte 0x447A0000
	.4byte 0x41500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000233
	.4byte 0x00010007
	.4byte 0
	.4byte 0
	.4byte 0x42C80000
	.4byte 0x41200000
	.4byte 0x43AF0000
	.4byte 0x41A00000
	.4byte 0x442F0000
	.4byte 0x41F00000
	.4byte 0x44480000
	.4byte 0x42040000
	.4byte 0x446D8000
	.4byte 0x42200000
	.4byte 0x447A0000
	.4byte 0x42340000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001FA
	.4byte 0x00010006
	.4byte 0
	.4byte 0
	.4byte 0x42C80000
	.4byte 0x42700000
	.4byte 0x43C80000
	.4byte 0x42C80000
	.4byte 0x44228000
	.4byte 0x43020000
	.4byte 0x44548000
	.4byte 0x431B0000
	.4byte 0x447A0000
	.4byte 0x43310000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001FB
	.4byte 0x00000005
	.4byte 0
	.4byte 0x41F00000
	.4byte 0x43160000
	.4byte 0x41A00000
	.4byte 0x43C80000
	.4byte 0x41200000
	.4byte 0x442F0000
	.4byte 0x40400000
	.4byte 0x447A0000
	.4byte 0x3DCCCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001FE
	.4byte 0x00010007
	.4byte 0
	.4byte 0
	.4byte 0x42480000
	.4byte 0x40A00000
	.4byte 0x43160000
	.4byte 0x41200000
	.4byte 0x43960000
	.4byte 0x41700000
	.4byte 0x43FA0000
	.4byte 0x41A00000
	.4byte 0x442F0000
	.4byte 0x41C80000
	.4byte 0x447A0000
	.4byte 0x41F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001FF
	.4byte 0x00000007
	.4byte 0
	.4byte 0x42B40000
	.4byte 0x42C80000
	.4byte 0x42960000
	.4byte 0x437A0000
	.4byte 0x42700000
	.4byte 0x43FA0000
	.4byte 0x42480000
	.4byte 0x442F0000
	.4byte 0x42340000
	.4byte 0x44548000
	.4byte 0x42200000
	.4byte 0x447A0000
	.4byte 0x42000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000201
	.4byte 0x00000007
	.4byte 0
	.4byte 0x42700000
	.4byte 0x42480000
	.4byte 0x41C80000
	.4byte 0x43960000
	.4byte 0x41880000
	.4byte 0x44098000
	.4byte 0x41500000
	.4byte 0x443B8000
	.4byte 0x41300000
	.4byte 0x446D8000
	.4byte 0x41000000
	.4byte 0x447A0000
	.4byte 0x40C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x00000007
	.4byte 0
	.4byte 0x42B40000
	.4byte 0x43480000
	.4byte 0x42340000
	.4byte 0x43C80000
	.4byte 0x42040000
	.4byte 0x43FA0000
	.4byte 0x41F00000
	.4byte 0x44228000
	.4byte 0x41D80000
	.4byte 0x44610000
	.4byte 0x41C80000
	.4byte 0x447A0000
	.4byte 0x41C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000202
	.4byte 0x00010007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41451EB8
	.4byte 0x43160000
	.4byte 0x41A00000
	.4byte 0x44160000
	.4byte 0x41F00000
	.4byte 0x44610000
	.4byte 0x42200000
	.4byte 0x44750000
	.4byte 0x42340000
	.4byte 0x447A0000
	.4byte 0x42400000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00001415
	.4byte 0x00010007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x4213E265
	.4byte 0x43160000
	.4byte 0x4270126F
	.4byte 0x44160000
	.4byte 0x42B40DD3
	.4byte 0x44610000
	.4byte 0x42F0126F
	.4byte 0x44750000
	.4byte 0x43070A5E
	.4byte 0x447A0000
	.4byte 0x43100B0F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C1934
lbl_801C1934:

	# ROM: 0x1BE934
	.4byte lbl_800620FC
	.4byte lbl_80062138
	.4byte lbl_80062174
	.4byte lbl_80062198
	.4byte lbl_800621BC
	.4byte lbl_800621F8
	.4byte lbl_8006221C
	.4byte lbl_80062294
	.4byte lbl_80062258
	.4byte lbl_800622D0
	.4byte 0

.global lbl_801C1960
lbl_801C1960:

	# ROM: 0x1BE960
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C1970
lbl_801C1970:

	# ROM: 0x1BE970
	.4byte 0x00002042
	.4byte 0x000034A0
	.4byte 0x000048FE
	.4byte 0x00006000
	.4byte 0x0000745E
	.4byte 0x000088BC

.global lbl_801C1988
lbl_801C1988:

	# ROM: 0x1BE988
	.asciz "Mario Party 5"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "00/00/0000"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C19C8
lbl_801C19C8:

	# ROM: 0x1BE9C8
	.4byte lbl_800656AC
	.4byte lbl_800656D8
	.4byte lbl_80065704
	.4byte lbl_80065730
	.4byte lbl_8006575C
	.4byte lbl_80065788
	.4byte lbl_800657B8
	.4byte lbl_800657C4
	.4byte lbl_800657F0
	.4byte lbl_8006581C
	.4byte lbl_80065848
	.4byte lbl_80065858
	.4byte lbl_80065884
	.4byte 0

.global lbl_801C1A00
lbl_801C1A00:

	# ROM: 0x1BEA00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C1A10
lbl_801C1A10:

	# ROM: 0x1BEA10
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF800000
	.4byte 0x000000EF
	.4byte 0x0E07FC00
	.4byte 0
	.4byte 0x000001F8
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF800000
	.4byte 0x000000EF
	.4byte 0x0E0FFC00
	.4byte 0
	.4byte 0x000003FC
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000000E0
	.4byte 0x0E1E1C00
	.4byte 0
	.4byte 0x0000039E
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000000E0
	.4byte 0x003C1C00
	.4byte 0
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.byte 0x00, 0x00, 0x00

.global lbl_801C1C0F
lbl_801C1C0F:

	# ROM: 0x1BEC0F
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.byte 0x70, 0x00, 0x00

.global lbl_801C1C1F
lbl_801C1C1F:

	# ROM: 0x1BEC1F
	.balign 4
	.4byte 0x000000E0
	.4byte 0x00381C00
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000000E0
	.4byte 0x00381C00
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x07C03EE0
	.4byte 0x0E701C00
	.4byte 0x8007C03E
	.4byte 0x0E0F8003
	.4byte 0x07B83E1C
	.4byte 0x0003E0E0
	.4byte 0xC01EE07C
	.4byte 0x0003EE07
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0FE07FE0
	.4byte 0x0E701C00
	.4byte 0x800FE07F
	.4byte 0x0E1FC003
	.4byte 0x07F87F1C
	.4byte 0x0007F0E0
	.4byte 0xE03FE0FE
	.4byte 0x0007FE0F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0EF0F3E0
	.4byte 0x8E701C00
	.4byte 0x800CF067
	.4byte 0x1C3DE003
	.4byte 0x00F8778E
	.4byte 0x000678E0
	.4byte 0xF079E1EF
	.4byte 0x000F3E0E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1C70E1E0
	.4byte 0x8E701C00
	.4byte 0x80007003
	.4byte 0x1C38E003
	.4byte 0x0078E38E
	.4byte 0x000038E0
	.4byte 0x7071E1C7
	.4byte 0x000E1E1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1C38E0E0
	.4byte 0x8E701C00
	.4byte 0x80003803
	.4byte 0x1C707003
	.4byte 0x0038E1CE
	.4byte lbl_800038E0
	.4byte 0x38E0E383
	.4byte 0x000E0E1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1FF8E0E0
	.4byte 0x8E701C00
	.4byte 0x8000380F
	.4byte 0x38707003
	.4byte 0x0038FFC7
	.4byte lbl_8000F8E0
	.4byte 0xF8E0E383
	.4byte 0x000E0E1F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1FF8E0E0
	.4byte 0x0E701C00
	.4byte 0x8000383F
	.4byte 0x38707003
	.4byte 0x0038FFC7
	.4byte lbl_8003F0E0
	.4byte 0xF8E0E383
	.4byte 0x000E0E1F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0038E0E0
	.4byte 0x0E701C00
	.4byte lbl_8000387C
	.4byte 0x38707003
	.4byte 0x003801C7
	.4byte lbl_8007C0E0
	.4byte 0x38E0E383
	.4byte 0x000E0E00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0038E0E0
	.4byte 0x0E381C00
	.4byte 0x000038E0
	.4byte 0xF0707007
	.4byte 0x003801C3
	.4byte lbl_800E00E0
	.4byte 0x38E0E383
	.4byte 0x000E0E00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0038E0E0
	.4byte 0x0E381C00
	.4byte 0x000038E0
	.4byte 0xF0707007
	.4byte 0x003801C3
	.4byte lbl_800E00E0
	.4byte 0x38E0E383
	.4byte 0x000E0E00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1870E0E0
	.4byte 0x0E3C1C00
	.4byte 0x000070E0
	.4byte 0xF038E30F
	.4byte 0x0038C383
	.4byte 0x000E00E0
	.4byte 0x7070E1C7
	.4byte 0x070E0E18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x1CF0E0E0
	.4byte 0x8E1E1C00
	.4byte 0x000CF0F3
	.4byte 0xE03CE39E
	.4byte 0x0038E781
	.4byte 0x000F38E0
	.4byte 0xF079E1E7
	.4byte 0x070E0E1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x0FE0E0E0
	.4byte 0x8E0FFC00
	.4byte 0x000FE07F
	.4byte 0xE01FC3FC
	.4byte 0x00387F01
	.4byte 0x0007F8E0
	.4byte 0xE03FE0FE
	.4byte 0x070E0E0F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x07C0E0E0
	.4byte 0x0E03FC00
	.4byte 0x0007C03F
	.4byte 0xE00F80F8
	.4byte 0x00383E01
	.4byte 0x0003F0E0
	.4byte 0xC01FE07C
	.4byte 0x070E0E07
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x0000001E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x0000001F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0xE0007000
	.4byte 0
	.4byte 0
	.4byte 0x00001C38
	.4byte 0
	.4byte 0x00001C1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0xE0007000
	.4byte 0
	.4byte 0
	.4byte 0x00000038
	.4byte 0
	.4byte 0x00001C1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0xE0007000
	.4byte 0
	.4byte 0
	.4byte 0x00000038
	.4byte 0
	.4byte 0x00001C1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0xE0007000
	.4byte 0
	.4byte 0
	.4byte 0x00000038
	.4byte 0
	.4byte 0x00001C1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xCE000000
	.4byte 0x8707001F
	.4byte lbl_801C1C0F
	.4byte 0xC0F871E3
	.4byte 0xF801FC7D
	.4byte 0xE0000F83
	.4byte 0x1F703E03
	.4byte 0xC1F71CFE
	.4byte 0x000F81C1
	.4byte 0x7C07DC7F
	.4byte 0xC0FF0000
	.4byte 0x807CF707
	.4byte 0x0000000F
	.4byte 0xCE000000
	.4byte 0xC707001F
	.4byte lbl_801C1C1F
	.4byte 0xC1FC71E3
	.4byte 0xF801FCFF
	.4byte 0xF0001FC3
	.4byte 0x3FF07F07
	.4byte 0xC3FF1CFE
	.4byte 0x001FC1C1
	.4byte 0xFE0FFC7F
	.4byte 0xE0FF8000
	.4byte 0xC07FFF0F
	.4byte 0x0000001F
	.4byte 0x0E000000
	.4byte 0xE38E0007
	.4byte 0x001C1C3D
	.4byte 0xC3CE39E7
	.4byte 0xE00071E7
	.4byte 0x78003DE0
	.4byte 0x79F0F786
	.4byte 0xC79F1C38
	.4byte 0x001DE1C1
	.4byte 0xEF1E7C1C
	.4byte 0x70F3C000
	.4byte 0xE0F78F1E
	.4byte 0x0000001D
	.4byte 0x0E000000
	.4byte 0xE38E0007
	.4byte 0x001C1C38
	.4byte 0xC3863BF7
	.4byte 0xE00071C3
	.4byte 0x380038E0
	.4byte 0x70F0E380
	.4byte 0xC70F1C38
	.4byte 0x0038E1C1
	.4byte 0xC71C3C1C
	.4byte 0x30E1C001
	.4byte 0xE0E38F1C
	.4byte 0x00000038
	.4byte 0x0E000000
	.4byte 0x738E0007
	.4byte 0x001C1C70
	.4byte 0xC3803BF7
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x003871C1
	.4byte 0xC39C1C1C
	.4byte 0x00E0E001
	.4byte 0x70E3871C
	.4byte 0x00000038
	.4byte 0x0E000000
	.4byte 0x739C0007
	.4byte 0x001C1C70
	.4byte 0xC3F03BF7
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x003FF1C1
	.4byte 0xFF9C1C1C
	.4byte 0x80E0E001
	.4byte 0xF0E3871F
	.4byte 0x0000003F
	.4byte 0x0E000000
	.4byte 0x739C0007
	.4byte 0x001C1C70
	.4byte 0xC3FC3BF7
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x003FF1C1
	.4byte 0xFF9C1C1C
	.4byte 0xE0E0E001
	.4byte 0xF0E3871F
	.4byte 0x0000003F
	.4byte 0x0E000000
	.4byte 0x71DC0007
	.4byte 0x001C1C70
	.4byte 0xC39E1FFE
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x000071C1
	.4byte 0x039C1C1C
	.4byte 0xF0E0E000
	.4byte 0x70E3871C
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x71F80007
	.4byte 0x001C1C70
	.4byte 0xC3871FFE
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x000071C1
	.4byte 0x039C1C1C
	.4byte 0x38E0E000
	.4byte 0x70E3871C
	.4byte 0
	.4byte 0x0E000000
	.4byte 0x71F80007
	.4byte 0x001C1C70
	.4byte 0xC3871FFE
	.4byte 0xE00071C1
	.4byte 0x1C007070
	.4byte 0x7071C1C0
	.4byte 0xC7071C38
	.4byte 0x000071C1
	.4byte 0x039C1C1C
	.4byte 0x38E0E000
	.4byte 0x70E3871C
	.4byte 0
	.4byte 0x0E000000
	.4byte 0xE1F80007
	.4byte 0x001E1C38
	.4byte 0xC3871FFE
	.4byte 0xE00071C1
	.4byte 0x380038E0
	.4byte 0x7070E380
	.4byte 0xC7071C38
	.4byte 0x0030E1E1
	.4byte 0x871C1C1C
	.4byte 0x38F1C001
	.4byte 0xE0E3871C
	.4byte 0x00001C30
	.4byte 0x0E000000
	.4byte 0xE1F00007
	.4byte 0x001F3C3C
	.4byte 0xC3CF1F3E
	.4byte 0xE00071C1
	.4byte 0x78003CE0
	.4byte 0x7070F386
	.4byte 0xC7071C38
	.4byte 0x0039E1F3
	.4byte 0xCF1C1C1C
	.4byte 0x78F3C001
	.4byte 0xE0E3871E
	.4byte 0x00001C39
	.4byte 0x0E000000
	.4byte 0xC0F00007
	.4byte 0x001FF81F
	.4byte 0xC7FE0F3C
	.4byte 0xE001F1C1
	.4byte 0xF0001FC3
	.4byte 0x70707F07
	.4byte 0x87071CF8
	.4byte 0x001FC1FF
	.4byte 0xFE1C1C7C
	.4byte 0xF0FF8000
	.4byte 0xC0E3873F
	.4byte 0x00001C1F
	.4byte 0x0E000000
	.4byte 0x80F00007
	.4byte 0x001DF00F
	.4byte 0xC73C0F3C
	.4byte 0xC001E1C1
	.4byte 0xE0000F83
	.4byte 0x70703E03
	.4byte 0x07071CF0
	.4byte 0x000F81DF
	.4byte 0x7C1C1C78
	.4byte 0xE0EF0000
	.4byte 0x80E38739
	.4byte 0x00001C0F
	.4byte 0
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0
	.4byte 0x00001800
	.4byte 0
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0
	.4byte 0x00001800
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0
	.4byte 0x00000C00
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F0C000
	.4byte 0
	.4byte 0x00000C00
	.4byte 0
	.4byte 0x00780000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0079C000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x003E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x003FC000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x001E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x001F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00380000
	.4byte 0xFF800000
	.4byte 0x000001C0
	.4byte 0x003F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00380000
	.4byte 0xFF800000
	.4byte 0x000001C1
	.4byte 0x007F8000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00383800
	.4byte 0xC3800000
	.4byte 0x000001C3
	.4byte 0x0073C000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00383800
	.4byte 0x83800000
	.4byte 0x00000007
	.4byte 0x0001E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00383800
	.4byte 0x03800000
	.4byte 0x00000007
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x00700000
	.4byte 0
	.4byte 0x00383800
	.4byte 0x03800000
	.4byte 0x00000007
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF7000000
	.4byte 0xF00F81C0
	.4byte 0x07C01F01
	.4byte 0xE070F800
	.4byte 0x1F00F803
	.4byte 0x0FB8FE00
	.4byte 0x038000F8
	.4byte 0xF807C1CE
	.4byte 0xF0007000
	.4byte 0x07C381C1
	.4byte 0x000000F7
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0xF81FC1C1
	.4byte 0x0FE03F83
	.4byte 0xF071FC00
	.4byte 0x3F81FC07
	.4byte 0x1FF8FE00
	.4byte 0x038001FC
	.4byte 0xFC0FE1CE
	.4byte 0xF8007001
	.4byte 0x0FE381C3
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0xCF000000
	.4byte 0x9C1DE1C3
	.4byte 0x0EF033C7
	.4byte 0x78719E00
	.4byte 0x3BC19E0F
	.4byte 0x3CF83800
	.4byte 0x038001DE
	.4byte 0x9E0CF1CE
	.4byte 0xBC007001
	.4byte 0x0EF1C387
	.4byte 0x0000001F
	.4byte 0
	.4byte 0
	.4byte 0x8F000000
	.4byte 0x0C38E1C3
	.4byte 0x1C7001C7
	.4byte 0x38700E00
	.4byte 0x71C00E0E
	.4byte 0x38783800
	.4byte 0x0380038E
	.4byte 0x0E0071CE
	.4byte 0x1C007000
	.4byte 0x1C71C387
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x003871C7
	.4byte 0x1C3801C7
	.4byte 0x1C700700
	.4byte 0x70E00E1C
	.4byte 0x38383800
	.4byte 0x03800387
	.4byte 0x070071CE
	.4byte 0x0E007000
	.4byte 0x1C39C38E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0xE03FF1C7
	.4byte 0x1FF807C7
	.4byte 0x1C700700
	.4byte 0x7FE03E1C
	.4byte 0x38383800
	.4byte 0x038003FF
	.4byte 0x0701F1CE
	.4byte 0x0E007000
	.4byte 0x1FF8E70E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0xF83FF1C7
	.4byte 0x1FF81F87
	.4byte 0x1C700700
	.4byte 0x7FE0FC1C
	.4byte 0x38383800
	.4byte 0x038003FF
	.4byte 0x0707E1CE
	.4byte 0x0E007000
	.4byte 0x1FF8E70E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x3C0071C7
	.4byte 0x00383E07
	.4byte 0x1C700700
	.4byte 0x00E1F01C
	.4byte 0x38383800
	.4byte 0x03800007
	.4byte 0x070F81CE
	.4byte 0x0E007000
	.4byte 0x0038E70E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0E0071C7
	.4byte 0x00387007
	.4byte 0x1C700700
	.4byte 0x00E3801C
	.4byte 0x38383800
	.4byte 0x03800007
	.4byte 0x071C01C7
	.4byte 0x0E00E000
	.4byte 0x00387E0E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0E0071C7
	.4byte 0x00387007
	.4byte 0x1C700700
	.4byte 0x00E3801C
	.4byte 0x38383800
	.4byte 0x03800007
	.4byte 0x071C01C7
	.4byte 0x0E00E000
	.4byte 0x00387E0E
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0x87000000
	.4byte 0x0E30E1C3
	.4byte 0x18707007
	.4byte 0x38700E00
	.4byte 0x61C3800E
	.4byte 0x38383800
	.4byte 0x8380030E
	.4byte 0x0E1C01C7
	.4byte 0x1C61E000
	.4byte 0x18707E07
	.4byte 0x00000707
	.4byte 0
	.4byte 0
	.4byte 0xCF000000
	.4byte 0x9E39E1C3
	.4byte 0x1CF079C7
	.4byte 0x38719E00
	.4byte 0x73C3CE0F
	.4byte 0x38383800
	.4byte 0xC380039E
	.4byte 0x9E1E71C3
	.4byte 0x9C73C001
	.4byte 0x1CF03C07
	.4byte 0x00000707
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0xFC1FC1C1
	.4byte 0x0FE03FCF
	.4byte 0xF071FC00
	.4byte 0x3F81FE07
	.4byte 0x3838F800
	.4byte 0xFF8001FC
	.4byte 0xFC0FF1C1
	.4byte 0xF87F8001
	.4byte 0x0FE03C03
	.4byte 0x00000707
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0x780F81C0
	.4byte 0x07C01F8E
	.4byte 0xE070F800
	.4byte 0x1F00FC03
	.4byte 0x3838F000
	.4byte 0x7F8000F8
	.4byte 0xF807E1C0
	.4byte 0xF01F0000
	.4byte 0x07C03C01
	.4byte 0x00000707
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C2D94
lbl_801C2D94:

	# ROM: 0x1BFD94
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000F0
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000F0
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001F8
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001F8
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001F8
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000001F8
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x003DC39C
	.4byte 0xEE7B81E0
	.4byte 0x00F703C1
	.4byte 0xF00F01EE
	.4byte 0xE00F0000
	.4byte 0xE3870F01
	.4byte 0x00F07B9E
	.4byte 0x000000FE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x007FC39C
	.4byte 0xFE7F83F8
	.4byte 0x00FF0FE1
	.4byte 0xF81FC3FE
	.4byte 0xF03F8001
	.4byte 0xE3871F83
	.4byte 0x01FC7F9F
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F3C39C
	.4byte 0x3E0F83B8
	.4byte 0x001F0E70
	.4byte 0x9C3DC79E
	.4byte 0x7839C001
	.4byte 0xE3871BC3
	.4byte 0x81DC0F83
	.4byte 0x000000F7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E3C39C
	.4byte 0x1E07873C
	.4byte 0x000F1E78
	.4byte 0x1C38071E
	.4byte 0x3879E000
	.4byte 0xE38701C0
	.4byte 0xC39E0781
	.4byte 0x000000E3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1C7FE
	.4byte 0x0E03871C
	.4byte 0x00071C38
	.4byte 0x1C38070E
	.4byte 0x1C70E000
	.4byte 0xE38700E0
	.4byte 0xC38E0380
	.4byte 0x000000E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1C7FE
	.4byte 0x0E0387FC
	.4byte 0x00071C38
	.4byte 0xF83F070E
	.4byte 0x1C70E000
	.4byte 0xE38700E0
	.4byte 0xC3FE0380
	.4byte 0x000000E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1C70E
	.4byte 0x0E0387FC
	.4byte 0x00071C38
	.4byte 0xF03FC70E
	.4byte 0x1C70E001
	.4byte 0xE38700E0
	.4byte 0xC3FE0380
	.4byte 0x000000E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1CE07
	.4byte 0x0E03801C
	.4byte 0x00071C38
	.4byte 0xC039E70E
	.4byte 0x1C70E003
	.4byte 0xE38700E0
	.4byte 0xC00E0380
	.4byte 0x000000E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1CE07
	.4byte 0x0E03801C
	.4byte 0x00071C38
	.4byte 0x8038E70E
	.4byte 0x1C70E003
	.4byte 0xE38700E0
	.4byte 0xC00E0380
	.4byte 0x000000E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1CE07
	.4byte 0x0E03801C
	.4byte 0x00071E78
	.4byte 0x8038E70E
	.4byte 0x3C79E003
	.4byte 0xE3C701E0
	.4byte 0xC00E0380
	.4byte 0x000000E3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1CE07
	.4byte 0x0E038738
	.4byte 0x00070E70
	.4byte 0xCC3DE70E
	.4byte 0x3839C003
	.4byte 0xE3CF19C3
	.4byte 0x839C0380
	.4byte 0x000070F3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1DC03
	.4byte 0x0E0383F8
	.4byte 0x00070FF0
	.4byte 0xFC7FC70E
	.4byte 0xF83FC001
	.4byte 0xE3FE1FC3
	.4byte 0x81FC0380
	.4byte 0x000070FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E1DC03
	.4byte 0x0E0381E0
	.4byte 0x000703C0
	.4byte 0xF877870E
	.4byte 0xE00F0000
	.4byte 0xE3BC0F01
	.4byte 0x00F00380
	.4byte 0x000070FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000FFE
	.4byte 0x80000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xE3C00000
	.4byte 0x00000001
	.4byte 0x0000E000
	.4byte 0x00780000
	.4byte 0
	.4byte 0x1C000000
	.4byte 0
	.4byte 0
	.4byte 0x00000FFE
	.4byte 0x80000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0xF3E00000
	.4byte 0x00000001
	.4byte 0x0000E000
	.4byte 0x007C0000
	.4byte 0
	.4byte 0x1C000000
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0x87000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x70E00000
	.4byte 0
	.4byte 0x0000E000
	.4byte 0x001C0000
	.4byte 0x01C00000
	.4byte 0x1C380000
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0x87000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x70E00000
	.4byte 0
	.4byte 0x0000E000
	.4byte 0x001C0000
	.4byte 0x01C00000
	.4byte 0x1C380000
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0x87000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x70E00000
	.4byte 0
	.4byte 0x0000E000
	.4byte 0x001C0000
	.4byte 0x01C00000
	.4byte 0x1C380000
	.4byte 0
	.4byte 0
	.4byte 0x000000E0
	.4byte 0x87000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x70E00000
	.4byte 0
	.4byte 0x0000E000
	.4byte 0x001C0000
	.4byte 0x01C00000
	.4byte 0x1C380000
	.4byte 0
	.4byte 0
	.4byte 0xEE3870E0
	.4byte 0x9FC007B9
	.4byte 0x0007807B
	.4byte 0x9C0F00F7
	.4byte 0x3DC1E0E7
	.4byte 0xFFF83C00
	.4byte 0xEE078001
	.4byte 0xB800FE01
	.4byte 0x787F0787
	.4byte 0x07F00F70
	.4byte 0xDCFE000F
	.4byte 0x00003C03
	.4byte 0
	.4byte 0xFE3870E0
	.4byte 0x9FC00FF9
	.4byte 0x000FE0FF
	.4byte 0x9C3F81FF
	.4byte 0x3FC3F8E7
	.4byte 0xFFF8FE00
	.4byte 0xFE0FE001
	.4byte 0xF800FF03
	.4byte 0xFE7F0FE7
	.4byte 0x87F00FF0
	.4byte 0xFCFE003F
	.4byte 0x00007F07
	.4byte 0
	.4byte 0x3E3870E0
	.4byte 0x87001E78
	.4byte 0x000EE1E7
	.4byte 0x9C39C1CF
	.4byte 0x07C3B8E7
	.4byte 0x70E0E700
	.4byte 0x9E1EE000
	.4byte 0xF800F787
	.4byte 0xEE1C0EE0
	.4byte 0xC1C001F0
	.4byte 0x3C380039
	.4byte 0x0000770F
	.4byte 0
	.4byte 0x1E3870E0
	.4byte 0x87001C78
	.4byte 0x001CF1C7
	.4byte 0xFC79E3C7
	.4byte 0x03C73CFF
	.4byte 0x70E1E780
	.4byte 0x1E1C0000
	.4byte 0x7800E3C7
	.4byte 0xCF1C1CF0
	.4byte 0xE1C000F1
	.4byte 0x3C380079
	.4byte 0x0000E78E
	.4byte 0
	.4byte 0x0E3870E0
	.4byte 0x87001C38
	.4byte 0x001C71C3
	.4byte 0xF870E387
	.4byte 0x01C71C7F
	.4byte 0x70E1C380
	.4byte 0x0E1C0000
	.4byte 0x3800E1C7
	.4byte 0xC71C1C70
	.4byte 0xE1C00071
	.4byte 0x1C380070
	.4byte 0x0000E38E
	.4byte 0
	.4byte 0x0E3870E0
	.4byte 0x87001C38
	.4byte 0x001FF1C3
	.4byte 0xF870E387
	.4byte 0x01C7FC7F
	.4byte 0x70E1C380
	.4byte 0x0E1F8000
	.4byte 0x3800E1C7
	.4byte 0xFF1C1FF0
	.4byte 0xE1C00071
	.4byte 0x1C380070
	.4byte 0x0000FF8E
	.4byte 0
	.4byte 0x0E3870E0
	.4byte 0x87001C38
	.4byte 0x001FF1C3
	.4byte 0xF870E387
	.4byte 0x01C7FC7F
	.4byte 0x70E1C380
	.4byte 0x0E1FE000
	.4byte 0x3800E1C7
	.4byte 0xFF1C1FF0
	.4byte 0xE1C00071
	.4byte 0x1C380070
	.4byte 0x0000FF8E
	.4byte 0
	.4byte 0x0E3870E0
	.4byte 0x87001C38
	.4byte 0x000071C3
	.4byte 0xF870E387
	.4byte 0x01C01C7F
	.4byte 0x70E1C380
	.4byte 0x0E1CF000
	.4byte 0x3800E1C7
	.4byte 0x071C0070
	.4byte 0xE1C00070
	.4byte 0x1C380070
	.4byte 0x0000038E
	.4byte 0
	.4byte 0x0E3870E0
	.4byte 0x87001C38
	.4byte 0x000071C3
	.4byte 0xF870E387
	.4byte 0x01C01C7F
	.4byte 0x70E1C380
	.4byte 0x0E1C7000
	.4byte 0x3800E1C7
	.4byte 0x071C0070
	.4byte 0xE1C00070
	.4byte 0x1C380070
	.4byte 0x0000038E
	.4byte 0
	.4byte 0x0E3C70E0
	.4byte 0x87001C38
	.4byte 0x000071C3
	.4byte 0xF879E3C7
	.4byte 0x01C01C7F
	.4byte 0x70E1E780
	.4byte 0x0E1C7000
	.4byte 0x3800E3C7
	.4byte 0x071C0070
	.4byte 0xE1C00070
	.4byte 0x1C380079
	.4byte 0x0000038E
	.4byte 0
	.4byte 0x0E3CF0E0
	.4byte 0x87001C38
	.4byte 0x001CE1C3
	.4byte 0xF839C1CF
	.4byte 0x01C7387D
	.4byte 0x70E0E700
	.4byte 0x0E1EF000
	.4byte 0x3800F387
	.4byte 0xCE1C1CE0
	.4byte 0xC1C00071
	.4byte 0x1C380039
	.4byte 0x0000E70E
	.4byte 0
	.4byte 0x0E3FE0E0
	.4byte 0x9F001C38
	.4byte 0x000FE1C3
	.4byte 0xF83FC0FF
	.4byte 0x01C3F83C
	.4byte 0x70E0FF00
	.4byte 0x0E3FE000
	.4byte 0x3800FF87
	.4byte 0xFE1C0FE0
	.4byte 0xC7C00070
	.4byte 0x1CF8003F
	.4byte 0x00007F0E
	.4byte 0
	.4byte 0x0E3BC0E0
	.4byte 0x9E001C38
	.4byte 0x000781C3
	.4byte 0xF00F007F
	.4byte 0x01C1E03C
	.4byte 0x70E03C00
	.4byte 0x0E3BC000
	.4byte 0x3800FF07
	.4byte 0x781C0780
	.4byte 0x07800070
	.4byte 0x1CF0000F
	.4byte 0x00003C0E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00071C3C
	.4byte 0
	.4byte 0x00003800
	.4byte 0x0001F807
	.4byte 0
	.4byte 0x070000F8
	.4byte 0x38000000
	.4byte 0
	.4byte 0
	.4byte 0x00003800
	.4byte 0x0FF80000
	.4byte 0x38000000
	.4byte 0x00000380
	.4byte 0x00071C3C
	.4byte 0
	.4byte 0x00003800
	.4byte 0x0003FE07
	.4byte 0
	.4byte 0x070001FE
	.4byte 0x38000000
	.4byte 0
	.4byte 0
	.4byte 0x00003800
	.4byte 0x1FF80000
	.4byte 0x38000000
	.4byte 0x00000380
	.4byte 0x00071C7C
	.4byte 0x00000038
	.4byte 0x00003800
	.4byte 0x00038F00
	.4byte 0
	.4byte 0x070001CE
	.4byte 0x38000000
	.4byte 0x1C000000
	.4byte 0
	.4byte 0x00003870
	.4byte 0x3C380000
	.4byte 0x38000000
	.4byte 0x1C000380
	.4byte 0x00001C7C
	.4byte 0x00000038
	.4byte 0x00003800
	.4byte 0x00030780
	.4byte 0
	.4byte 0x07000007
	.4byte 0x38000000
	.4byte 0x1C000000
	.4byte 0
	.4byte 0x00000070
	.4byte 0x38380000
	.4byte 0x38000000
	.4byte 0x1C000380
	.4byte 0x00001C7C
	.4byte 0x00000038
	.4byte 0x00003800
	.4byte 0x00000380
	.4byte 0
	.4byte 0x07000007
	.4byte 0x38000000
	.4byte 0x1C000000
	.4byte 0
	.4byte 0x00000070
	.4byte 0x38380000
	.4byte 0x38000000
	.4byte 0x1C000380
	.4byte 0x00001CFC
	.4byte 0x00000038
	.4byte 0x00003800
	.4byte 0x00000380
	.4byte 0x80000000
	.4byte 0x07000007
	.4byte 0x38000000
	.4byte 0x1C000000
	.4byte 0
	.4byte 0x00000070
	.4byte 0x38380000
	.4byte 0x38000000
	.4byte 0x1C000380
	.4byte 0x3DC71CFC
	.4byte 0x7B81E0FE
	.4byte 0x00F03F80
	.4byte 0x03C001C0
	.4byte 0x81E03EFF
	.4byte 0xFF1C3803
	.4byte 0x38000F00
	.4byte 0x7F0780F7
	.4byte 0x781C39EE
	.4byte 0xC07839FC
	.4byte 0x3838003D
	.4byte 0x381E00F0
	.4byte 0x7F0F0387
	.4byte 0x7FC71CFC
	.4byte 0xFF83F8FE
	.4byte 0x03F83FC0
	.4byte 0x07F001C0
	.4byte 0x83F87FFF
	.4byte 0xFF1C3803
	.4byte 0x38001FC1
	.4byte 0x7F0FC1FF
	.4byte 0xFC1C39FE
	.4byte 0xC1FC39FC
	.4byte 0x1E38007F
	.4byte 0x387F03F8
	.4byte 0x7F1FC383
	.4byte 0xF3C71DDC
	.4byte 0xE783B838
	.4byte 0x039C3DE1
	.4byte 0x0F7001C0
	.4byte 0x83B873CF
	.4byte 0xCF1C3803
	.4byte 0x38001DC1
	.4byte 0x1C0CE3CF
	.4byte 0xDE1C383E
	.4byte 0xC1CE3870
	.4byte 0x07F800F3
	.4byte 0xB873839C
	.4byte 0x1C1DC383
	.4byte 0xE3C71DDC
	.4byte 0xC7873C38
	.4byte 0x079E38F1
	.4byte 0x0E03F9C0
	.4byte 0x873C71C7
	.4byte 0xC71C3803
	.4byte 0x380039E3
	.4byte 0x1C00E38F
	.4byte 0x0E1C381E
	.4byte 0xC3CF3870
	.4byte 0x1FF800E3
	.4byte 0xF8F3C79E
	.4byte 0x1C39E381
	.4byte 0xE1C71DDC
	.4byte 0xC3871C38
	.4byte 0x070E3871
	.4byte 0x0E03F9C0
	.4byte 0x871C71C7
	.4byte 0x871C3803
	.4byte 0x380038E3
	.4byte 0x1C00E387
	.4byte 0x071C380E
	.4byte 0xC3873870
	.4byte 0x3C3800E1
	.4byte 0xF8E1C70E
	.4byte 0x1C38E380
	.4byte 0xE1C71F9C
	.4byte 0xC387FC38
	.4byte 0x070E3871
	.4byte 0x0FC381C0
	.4byte 0x87FC71C7
	.4byte 0x871C3803
	.4byte 0x38003FE3
	.4byte 0x1C07C387
	.4byte 0x071C380E
	.4byte 0xC3873870
	.4byte 0x703800E1
	.4byte 0xF8E1C70E
	.4byte 0x1C3FE380
	.4byte 0xE1C71F9C
	.4byte 0xC387FC38
	.4byte 0x070E3871
	.4byte 0x0FF381C0
	.4byte 0x87FC71C7
	.4byte 0x871C3803
	.4byte 0x38003FE3
	.4byte 0x1C0F8387
	.4byte 0x071C380E
	.4byte 0xC3873870
	.4byte 0x703800E1
	.4byte 0xF8E1C70E
	.4byte 0x1C3FE381
	.4byte 0xE1C71F9C
	.4byte 0xC3801C38
	.4byte 0x070E3871
	.4byte 0x0E7B83C0
	.4byte lbl_801C71C7
	.4byte 0x871C3803
	.4byte 0x380000E3
	.4byte 0x1C1E0387
	.4byte 0x071C380E
	.4byte 0xC3873870
	.4byte 0x703800E1
	.4byte 0xB8E1C70E
	.4byte 0x1C00E381
	.4byte 0xE1C71F1C
	.4byte 0xC3801C38
	.4byte 0x070E3871
	.4byte 0x0E3B8380
	.4byte 0x001C71C7
	.4byte 0x871C3807
	.4byte 0x380000E3
	.4byte 0x1C1C0387
	.4byte 0x071C380E
	.4byte 0xC3873870
	.4byte 0x703800E1
	.4byte 0xB8E1C70E
	.4byte 0x1C00E383
	.4byte 0xE1C71F1C
	.4byte 0xC3801C38
	.4byte 0x079E38F1
	.4byte 0x0E3BC380
	.4byte 0x001C71C7
	.4byte 0xC71E3807
	.4byte 0x380000E3
	.4byte 0x1C1C0387
	.4byte 0x0F1E380E
	.4byte 0xC3CF3870
	.4byte 0x783800E1
	.4byte 0x38F3C79E
	.4byte 0x1C00E383
	.4byte 0xE1C71F1C
	.4byte 0xC3873838
	.4byte 0x039C3CE1
	.4byte 0x0F7BE700
	.4byte 0x073871C7
	.4byte 0xEF1E79CE
	.4byte 0x380039C1
	.4byte 0x1C1E6387
	.4byte 0xCE1E780E
	.4byte 0xC1CE3870
	.4byte 0x3C3800E1
	.4byte 0x3873839C
	.4byte 0x1C39C387
	.4byte 0xE1C71E1C
	.4byte 0xC383F8F8
	.4byte 0x03FC3FE1
	.4byte 0x1FF3FF00
	.4byte 0x03F871C7
	.4byte 0xFF1FF1FE
	.4byte 0x38001FC0
	.4byte 0x7C0FE387
	.4byte 0xFE1FF00E
	.4byte 0xC1FE39F0
	.4byte 0x1FF800E1
	.4byte 0x387F83FC
	.4byte 0x7C1FC387
	.4byte 0xE1C71E1C
	.4byte 0xC381E0F0
	.4byte 0x00F03FC1
	.4byte 0x1DE33C00
	.4byte 0x01E071C7
	.4byte 0x7F1DE0F8
	.4byte 0x38000F00
	.4byte 0x7807C387
	.4byte 0x781DE00E
	.4byte 0xC07839E0
	.4byte 0x0FF800E1
	.4byte 0x381E00F0
	.4byte 0x780F038E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000078
	.4byte 0x00000780
	.4byte 0x00007000
	.4byte 0x01C00000
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000007C
	.4byte 0x000007C0
	.4byte 0x00007000
	.4byte 0x01C00000
	.4byte 0
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001C
	.4byte 0x000001C0
	.4byte 0x000070E0
	.4byte 0x01C00000
	.4byte 0x00E00000
	.4byte 0x80000000
	.4byte 0x000001C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001C
	.4byte 0x000001C0
	.4byte 0x000070E0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0x80000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001C
	.4byte 0x000001C0
	.4byte 0x000070E0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0x80000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000001C
	.4byte 0x000001C0
	.4byte 0x000070E0
	.4byte 0
	.4byte 0x00E00000
	.4byte 0x80000000
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F703C7F
	.4byte 0xEE3877F0
	.4byte 0xF00F73F9
	.4byte 0x71C03DC0
	.4byte 0x73F8780F
	.4byte 0xE3C0E1CF
	.4byte 0xEE0781CF
	.4byte 0x00000F01
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FF0FE7F
	.4byte 0xFE3877F0
	.4byte 0xFC1FF3F9
	.4byte 0xF1C03FC1
	.4byte 0xF3F8FC1F
	.4byte 0xE7E0E1CF
	.4byte 0xFE1FC1CF
	.4byte 0x00001F83
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01F0E71C
	.4byte 0x3E3871C0
	.4byte 0xDC3CF0E0
	.4byte 0xF1C007C1
	.4byte 0xF0E0CE3C
	.4byte 0x86F0E1C1
	.4byte 0x9E1CE1C3
	.4byte 0x000019C7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F1E79C
	.4byte 0x1E3871C0
	.4byte 0x9E38F0E0
	.4byte 0xF1C003C3
	.4byte 0xF0E00E38
	.4byte 0x8070E1C0
	.4byte 0x1E3CF1C3
	.4byte 0x000001C7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071C39C
	.4byte 0x0E3871C0
	.4byte 0x8E3870E0
	.4byte 0x71C001C3
	.4byte 0x70E00E38
	.4byte 0x8038E1C0
	.4byte 0x0E3871C3
	.4byte 0x000001C7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071C39C
	.4byte 0x0E3871C0
	.4byte 0xFE3870E0
	.4byte 0x71C001C3
	.4byte 0x70E07C38
	.4byte 0x8038E1C0
	.4byte 0x0E3871C3
	.4byte 0x00000F87
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071C39C
	.4byte 0x0E3871C0
	.4byte 0xFE3870E0
	.4byte 0x71C001C3
	.4byte 0x70E0F838
	.4byte 0x8038E1C0
	.4byte 0x0E3871C3
	.4byte 0x00001F07
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071C39C
	.4byte 0x0E3871C0
	.4byte 0x0E3870E0
	.4byte 0x71C001C0
	.4byte 0x70E1E038
	.4byte 0x8038E1C0
	.4byte 0x0E3871C3
	.4byte 0x00003C07
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071C39C
	.4byte 0x0E3871C0
	.4byte 0x0E3870E0
	.4byte 0x71C001C0
	.4byte 0x70E1C038
	.4byte 0x8038E1C0
	.4byte 0x0E3871C3
	.4byte 0x00003807
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0071E79C
	.4byte 0x0E3C71C0
	.4byte 0x0E3870E0
	.4byte 0x71C001C0
	.4byte 0x70E1C038
	.4byte 0x8078F1C0
	.4byte 0x0E3CF1C3
	.4byte 0x00003807
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0070E71C
	.4byte 0x0E3CF1C0
	.4byte 0x9C3870E0
	.4byte 0x71C001C3
	.4byte 0x70E1E638
	.4byte 0x8670F3C0
	.4byte 0x0E1CE1C3
	.4byte 0x001C3CC7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0070FF1C
	.4byte 0x0E3FE1C0
	.4byte 0xFC3873E0
	.4byte 0x71C001C1
	.4byte 0x73E0FE38
	.4byte 0x87F0FF80
	.4byte 0x0E1FE1CF
	.4byte 0x001C1FC7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00703C1C
	.4byte 0x0E3BC1C0
	.4byte 0xF03873C0
	.4byte 0x71C001C0
	.4byte 0x73C07C38
	.4byte 0x03C0EF00
	.4byte 0x0E0781CF
	.4byte 0x001C0F87
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C4118
lbl_801C4118:

	# ROM: 0x1C1118
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0x00000001
	.4byte 0x00071C00
	.4byte 0
	.4byte 0x000000FC
	.4byte 0
	.4byte 0x00E03FE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0x00000007
	.4byte 0x00071C00
	.4byte 0
	.4byte 0x000001FF
	.4byte 0
	.4byte 0x00E07FE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x00000007
	.4byte 0x00071C00
	.4byte 0x80000000
	.4byte 0x000001C7
	.4byte 0
	.4byte 0x00E0F0E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0000000E
	.4byte 0x00001C00
	.4byte 0x80000000
	.4byte 0x00000183
	.4byte 0
	.4byte 0x0001E0E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0000000E
	.4byte 0x00001C00
	.4byte 0xC0000000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001C0E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0000000E
	.4byte 0x00001C00
	.4byte 0xC0000000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0001C0E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x0F803E0E
	.4byte 0xFB871FE0
	.4byte 0xE000FF00
	.4byte 0xDC0F8000
	.4byte 0x003E01F3
	.4byte 0xC0E380E0
	.4byte 0x0000F807
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x1FC07F07
	.4byte 0xFF871FF0
	.4byte 0xE000FF81
	.4byte 0xFC1FC000
	.4byte 0x007F01FF
	.4byte 0xE0E380E0
	.4byte 0x0001FC0F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x87000000
	.4byte 0x3CE07787
	.4byte 0xCF871E78
	.4byte 0xE000F3C3
	.4byte 0x3C3CE000
	.4byte 0x007783DE
	.4byte 0xF0E380E0
	.4byte 0x00019E0C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0x3860E381
	.4byte 0x87871C38
	.4byte 0xE000E1C3
	.4byte 0x3C386000
	.4byte 0x00E3838E
	.4byte 0x70E380E0
	.4byte 0x00000E00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF000000
	.4byte 0x3800E1C1
	.4byte 0x83871C1C
	.4byte 0xE000E0E3
	.4byte 0x1C3801FC
	.4byte 0x00E1C38E
	.4byte 0x70E380E0
	.4byte 0x00000700
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC7000000
	.4byte 0x3F00FFC3
	.4byte 0x83871C1C
	.4byte 0xE000E0E3
	.4byte 0x1C3F01FC
	.4byte 0x00FFC38E
	.4byte 0xF0E380E0
	.4byte 0x00000701
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x87000000
	.4byte 0x3FC0FFC7
	.4byte 0x83871C1C
	.4byte 0xE000E0E3
	.4byte 0x1C3FC1C0
	.4byte 0x00FFC38E
	.4byte 0xE0E380E0
	.4byte 0x00000707
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x39E001C7
	.4byte 0x83871C1C
	.4byte 0xE000E0E3
	.4byte 0x1C39E1C0
	.4byte 0x0001C38E
	.4byte 0x80E380E0
	.4byte 0x0000070F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x387001C7
	.4byte 0x83871C1C
	.4byte 0xC000E0E3
	.4byte 0x1C3871C1
	.4byte 0x0001C38E
	.4byte 0x00E1C0E0
	.4byte 0x0000071C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x387001C7
	.4byte 0x83871C1C
	.4byte 0xC000E0E3
	.4byte 0x1C3871C1
	.4byte 0x0001C38E
	.4byte 0x00E1C0E0
	.4byte 0x0000071C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x3870C387
	.4byte 0x83871E38
	.4byte 0xC000F1C3
	.4byte 0x1C3871E3
	.4byte 0x00C3838E
	.4byte 0x00E1E0E0
	.4byte 0xC1C00E1C
	.4byte 0x000001C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x3CF0E78E
	.4byte 0x83871E78
	.4byte 0x8000F3C3
	.4byte 0x1C3CF1F3
	.4byte 0x00E7838E
	.4byte 0x70E0F0E0
	.4byte 0xC1C19E1E
	.4byte 0x000001C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x7FE07F0E
	.4byte 0x83871FF0
	.4byte 0x0000FF83
	.4byte 0x1C7FE1FF
	.4byte 0x007F038E
	.4byte 0xF0E07FE0
	.4byte 0xC1C1FC0F
	.4byte 0x000001C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07000000
	.4byte 0x73C03E0E
	.4byte 0x83871DE0
	.4byte 0x0000EF03
	.4byte 0x1C73C19E
	.4byte 0x003E038E
	.4byte 0xE0E01FE0
	.4byte 0xC1C0F807
	.4byte 0x000001C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F0C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000079C0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00003FC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00001F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C549C
lbl_801C549C:

	# ROM: 0x1C249C
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00E0FF80
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0x000E0000
	.4byte 0x0781E000
	.4byte 0x001C0000
	.4byte 0x0007FC00
	.4byte 0
	.4byte 0xFC00FFE0
	.4byte 0
	.4byte 0xC07F8000
	.4byte 0x00000001
	.4byte 0x00E3FF80
	.4byte 0
	.4byte 0x00001C00
	.4byte 0
	.4byte 0x000E0000
	.4byte 0x07C3E000
	.4byte 0x001C0000
	.4byte 0x001FFC00
	.4byte 0
	.4byte 0xFF00FFE0
	.4byte 0x00000001
	.4byte 0xC0FF8000
	.4byte 0x00000001
	.4byte 0x00E38380
	.4byte 0
	.4byte 0x00001C00
	.4byte 0x70000000
	.4byte 0x000E0E00
	.4byte 0x07C3E000
	.4byte 0x001C0000
	.4byte 0x001C1C00
	.4byte 0x0001C000
	.4byte 0xC78000E0
	.4byte 0x00000001
	.4byte 0xC1C38000
	.4byte 0x00000001
	.4byte 0x00E70380
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000E0E00
	.4byte 0x07C3E000
	.4byte 0
	.4byte 0x00381C00
	.4byte 0x0001C000
	.4byte 0x838000E0
	.4byte 0x00000001
	.4byte 0x03838000
	.4byte 0
	.4byte 0x00E70380
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000E0E00
	.4byte 0x07E3E000
	.4byte 0
	.4byte 0x00381C00
	.4byte 0x0001C000
	.4byte 0x01C000E0
	.4byte 0
	.4byte 0x03838000
	.4byte 0
	.4byte 0x00E70380
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0x000E0E00
	.4byte 0x07E7E000
	.4byte 0
	.4byte 0x00381C00
	.4byte 0x0001C000
	.4byte 0x01C000E0
	.4byte 0
	.4byte 0x07038000
	.4byte 0
	.4byte 0xF0E70380
	.4byte 0xE07C1F01
	.4byte 0xE0F71C03
	.4byte 0xFDEE3E03
	.4byte 0x81EE3F81
	.4byte 0x07E7E00F
	.4byte 0xF01CF71F
	.4byte 0x3E381C00
	.4byte 0x3837F7B8
	.4byte 0x00E000E0
	.4byte 0x0F1EE3E0
	.4byte 0xC703803E
	.4byte 0x001E07C1
	.4byte 0xF8E78380
	.4byte 0xF0FE3F83
	.4byte 0xF1FF1C07
	.4byte 0xFDFE7F07
	.4byte 0xC3FE3F81
	.4byte 0x8766E01F
	.4byte 0xF81CFF3F
	.4byte 0x7F3C1C01
	.4byte 0x3837F7F8
	.4byte 0x00E000E0
	.4byte 0x1FFFE7F0
	.4byte 0xC703807F
	.4byte 0x003F0FE1
	.4byte 0xBCE3C380
	.4byte 0x78CF79C3
	.4byte 0x7BCF1C07
	.4byte 0x703E7786
	.4byte 0xE79E0E00
	.4byte 0xC77EE01D
	.4byte 0x9C1C1F79
	.4byte 0xF39E1C03
	.4byte 0x1C71C0F8
	.4byte 0x00E03FE0
	.4byte 0xBCF1EF38
	.4byte 0xC7038077
	.4byte 0x00378CF1
	.4byte 0x1CE1FF80
	.4byte 0x380770C7
	.4byte 0x3B8F1C0E
	.4byte 0x701EE380
	.4byte 0xE71E0E00
	.4byte 0xC77EE038
	.4byte 0x9C1C0F70
	.4byte 0xE18FFC03
	.4byte 0x1C71C078
	.4byte 0x00E07FE0
	.4byte 0xB8F1EE18
	.4byte 0xC70380E3
	.4byte 0x00038071
	.4byte 0x0EE0FF80
	.4byte 0x1C077007
	.4byte 0x3B871C0E
	.4byte 0x700EE1C0
	.4byte 0x770E0E00
	.4byte 0x077CE038
	.4byte 0x0E1C0770
	.4byte 0xE007FC07
	.4byte 0x1C71C038
	.4byte 0xFCE0F1E0
	.4byte 0xF870EE01
	.4byte 0xC70380E1
	.4byte 0x0001C071
	.4byte 0xFEE00380
	.4byte 0xFC1F7E07
	.4byte 0xFB871C0F
	.4byte 0x700EFFC0
	.4byte 0xF70E0E00
	.4byte 0x073CE03F
	.4byte 0x0E1C077E
	.4byte 0xFC001C07
	.4byte 0x1CE1C038
	.4byte 0xFCE1E000
	.4byte 0xF870EFC1
	.4byte 0xC70380FF
	.4byte 0x0001C1F1
	.4byte 0xFEE00380
	.4byte 0xFC7E7F87
	.4byte 0xF3871C0F
	.4byte 0x700EFFC3
	.4byte 0xF70E0E00
	.4byte 0x873CE03F
	.4byte 0x0E1C077F
	.4byte 0xFF001C07
	.4byte 0x1CE1C038
	.4byte 0xC0E1C000
	.4byte 0xF870EFF1
	.4byte 0xC70380FF
	.4byte 0x0001C7E1
	.4byte 0x0EE00380
	.4byte 0x1CF873C0
	.4byte 0xC3871C00
	.4byte 0x700E01C7
	.4byte 0x770E0E00
	.4byte 0xC73CE000
	.4byte 0x0E1C0773
	.4byte 0xE7801C07
	.4byte 0x0EE1C038
	.4byte 0xC0E1C000
	.4byte 0xF870EE79
	.4byte 0xC7038001
	.4byte 0x0001CF81
	.4byte 0x0EE00380
	.4byte 0x1DC070E0
	.4byte 0x03871C00
	.4byte 0x700E01CE
	.4byte 0x770E0E00
	.4byte 0xE718E000
	.4byte 0x0E1C0770
	.4byte 0xE1C01C07
	.4byte 0x0FC1C038
	.4byte 0xC1C1C000
	.4byte 0xF870EE1D
	.4byte 0xC3838001
	.4byte 0x0001DC01
	.4byte 0x0EE00380
	.4byte 0x1DC070E0
	.4byte 0x03871C00
	.4byte 0x700E01CE
	.4byte 0x770E0E00
	.4byte 0xE718E000
	.4byte 0x0E1C0770
	.4byte 0xE1C01C07
	.4byte 0x0FC1C038
	.4byte 0xC1C1C000
	.4byte 0xF870EE1D
	.4byte 0xC3838001
	.4byte 0x0001DC01
	.4byte 0x1CE00380
	.4byte 0x39C070E0
	.4byte 0x03871C00
	.4byte 0x700E038E
	.4byte 0xE70E0E00
	.4byte 0xE718E000
	.4byte 0x9C1C0770
	.4byte 0xE1C01C03
	.4byte 0x0FC1C038
	.4byte 0xE3C0E060
	.4byte 0xB870EE1D
	.4byte 0xC3838003
	.4byte 0x0E039C01
	.4byte 0x3CE00380
	.4byte 0x79E779E7
	.4byte 0x3B871C0E
	.4byte 0x700EE78F
	.4byte 0xE70E0E00
	.4byte 0xE700E039
	.4byte 0x9C1C0779
	.4byte 0xF3C01C03
	.4byte 0x0F81C038
	.4byte 0xF380F8E0
	.4byte 0xB870EF3D
	.4byte 0xC1E380E7
	.4byte 0x0E379E71
	.4byte 0xF8E00380
	.4byte 0xF0FFFFC3
	.4byte 0xFB871C07
	.4byte 0xF00E7F07
	.4byte 0xC70E3E01
	.4byte 0xC700E01F
	.4byte 0xF81C07FF
	.4byte 0xFF801C01
	.4byte 0x0787C039
	.4byte 0xFF007FE0
	.4byte 0x3870FFF9
	.4byte 0xC0FF807F
	.4byte 0x0E3F0FF1
	.4byte 0xF0E00380
	.4byte 0xE07EE781
	.4byte 0xF3871C03
	.4byte 0xE00E3E03
	.4byte 0x870E3C01
	.4byte 0x8700E00F
	.4byte 0xF01C07E7
	.4byte 0xCF001C00
	.4byte 0x07878039
	.4byte 0x9E001F80
	.4byte 0x3870FCF1
	.4byte 0xC07F803E
	.4byte 0x0E1E07E1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C6820
lbl_801C6820:

	# ROM: 0x1C3820
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000077FF
	.4byte 0x00FC0000
	.4byte 0
	.4byte 0x1C1FE000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0x000077FF
	.4byte 0x01FF0000
	.4byte 0
	.4byte 0x1C7FE000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0x00007070
	.4byte 0x01C78000
	.4byte 0
	.4byte 0x1C70E000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0x01C00000
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0x00007070
	.4byte 0x0183C000
	.4byte 0
	.4byte 0x00E0E000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0x01C00000
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0x00007070
	.4byte 0x0001C000
	.4byte 0
	.4byte 0x00E0E000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0x01C00000
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0x00007070
	.4byte 0x0001C000
	.4byte 0
	.4byte 0x01C0E000
	.4byte 0
	.4byte 0
	.4byte 0x0001C01C
	.4byte 0x01C00000
	.4byte 0x00000070
	.4byte 0
	.4byte 0x0000E000
	.4byte 0
	.4byte 0
	.4byte 0xF00F7070
	.4byte 0xE000E000
	.4byte 0x780FBFC1
	.4byte 0x1DC0E000
	.4byte 0x0003C03C
	.4byte 0x70E0780F
	.4byte 0xB801FC1C
	.4byte 0x07F07807
	.4byte 0x00F00FF0
	.4byte 0xE01E0F70
	.4byte 0x0000FE01
	.4byte 0
	.4byte 0
	.4byte 0xFC1FF070
	.4byte 0xF800E001
	.4byte 0xFE1FFFC3
	.4byte 0x1DC0E000
	.4byte 0x8007E07E
	.4byte 0x70E1FC1F
	.4byte 0xF801FE1C
	.4byte 0x07F1FC0F
	.4byte 0x01FC1FF0
	.4byte 0xF83F8FF0
	.4byte 0x0000FF03
	.4byte 0
	.4byte 0
	.4byte 0xDC3CF070
	.4byte 0xB800E001
	.4byte 0xEE1CF3C7
	.4byte 0x1DC0E000
	.4byte 0xC006F067
	.4byte 0x70E1CE1B
	.4byte 0x7801EF1C
	.4byte 0x01C1CE1E
	.4byte 0x01DC1CF0
	.4byte 0xB83B81F0
	.4byte 0x0000F787
	.4byte 0
	.4byte 0
	.4byte 0x9E38F070
	.4byte 0x01FCE003
	.4byte 0xCF1C71C7
	.4byte 0x1DC0E001
	.4byte 0xC0007007
	.4byte 0x70E3CF01
	.4byte 0x7801C79C
	.4byte 0x01C3CF1C
	.4byte 0x039E3C70
	.4byte 0x0073C0F0
	.4byte 0x0000E3C7
	.4byte 0
	.4byte 0
	.4byte 0x8E387070
	.4byte 0x01FCE003
	.4byte 0xC71C71C7
	.4byte 0x1DC0E001
	.4byte 0xE0003807
	.4byte 0x70E38700
	.4byte 0x3801C39C
	.4byte 0x01C3871C
	.4byte 0x038E3870
	.4byte 0x0071C070
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0xFE387070
	.4byte 0xE1C0E003
	.4byte 0xFF1C71C7
	.4byte 0x1DC0E001
	.4byte 0xE000383E
	.4byte 0x70E38700
	.4byte 0x3801C39C
	.4byte 0x01C3871C
	.4byte 0x03FE3870
	.4byte 0xE07FC070
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0xFE387070
	.4byte 0xF9C0E003
	.4byte 0xFF1C71C7
	.4byte 0x1DC0E001
	.4byte 0xE000387C
	.4byte 0x70E38700
	.4byte 0x3801C39C
	.4byte 0x01C3871C
	.4byte 0x03FE3870
	.4byte 0xF87FC070
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0x0E387070
	.4byte 0x3DC1E000
	.4byte 0x071C71C7
	.4byte 0x1DC0E000
	.4byte 0xE00038F0
	.4byte 0x70E38700
	.4byte 0x3801C39C
	.4byte 0x01C3871C
	.4byte 0x000E3870
	.4byte 0x3C01C070
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0x0E387070
	.4byte 0x1DC1C000
	.4byte 0x071C71C7
	.4byte 0x1CE0E000
	.4byte 0xE00038E0
	.4byte 0x70E38700
	.4byte 0x3801C39C
	.4byte 0x01C3871C
	.4byte 0x000E3870
	.4byte 0x1C01C070
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0x0E387070
	.4byte 0x1DE1C000
	.4byte 0x071C71C7
	.4byte 0x1CE0E000
	.4byte 0xE00078E0
	.4byte 0x78E3CF01
	.4byte 0x3801C79C
	.4byte 0x01C3CF1C
	.4byte 0x000E3C70
	.4byte 0x1C01C070
	.4byte 0x0000E3C7
	.4byte 0
	.4byte 0
	.4byte 0x9C387070
	.4byte 0xBDF38003
	.4byte 0xCE1C71C7
	.4byte 0x1C70E001
	.4byte 0xC00670F3
	.4byte 0x79E1CE19
	.4byte 0x3801E71C
	.4byte 0x01C1CE1C
	.4byte 0x039C1EF0
	.4byte 0xBC738070
	.4byte 0x0070F387
	.4byte 0
	.4byte 0
	.4byte 0xFC387070
	.4byte 0xF9FF8001
	.4byte 0xFE1C71CF
	.4byte 0x1C3FE000
	.4byte 0xC007F07F
	.4byte 0x7FC1FE1F
	.4byte 0x3801FF1C
	.4byte 0x07C1FE1C
	.4byte 0x01FC0FF0
	.4byte 0xF83F8070
	.4byte 0x0070FF8F
	.4byte 0
	.4byte 0
	.4byte 0xF0387070
	.4byte 0xF19E0000
	.4byte 0x781C71CE
	.4byte 0x1C1FE000
	.4byte 0x0003C03E
	.4byte 0x7780780F
	.4byte 0x3801FE1C
	.4byte 0x0780781C
	.4byte 0x00F007F0
	.4byte 0xF01E0070
	.4byte 0x0070FF0E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0001C1FE
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x00000700
	.4byte 0x039C3C00
	.4byte 0
	.4byte 0x000E0000
	.4byte 0x003F0000
	.4byte 0
	.4byte 0x70000F80
	.4byte 0
	.4byte 0
	.4byte 0x0001C7FE
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x00000700
	.4byte 0x039C3C00
	.4byte 0
	.4byte 0x000E0000
	.4byte 0x007FC000
	.4byte 0
	.4byte 0x70001FE0
	.4byte 0
	.4byte 0
	.4byte 0x0001C70E
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x0000071C
	.4byte 0x039C7C00
	.4byte 0x00003800
	.4byte 0x000E0000
	.4byte 0x0071E000
	.4byte 0
	.4byte 0x70001CE0
	.4byte 0
	.4byte 0
	.4byte 0x0001CE0E
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x0000071C
	.4byte 0x001C7C00
	.4byte 0x00003800
	.4byte 0x000E0000
	.4byte 0x0060F000
	.4byte 0
	.4byte 0x70000070
	.4byte 0
	.4byte 0
	.4byte 0x0001CE0E
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x0000071C
	.4byte 0x001C7C00
	.4byte 0x00003800
	.4byte 0x000E0000
	.4byte 0x00007000
	.4byte 0
	.4byte 0x70000070
	.4byte 0
	.4byte 0
	.4byte 0x0001CE0E
	.4byte 0
	.4byte 0
	.4byte 0x00380000
	.4byte 0x0000071C
	.byte 0x00, 0x1C, 0xFC

.global lbl_801C71C7
lbl_801C71C7:

	# ROM: 0x1C41C7
	.balign 4
	.4byte 0x00003800
	.4byte 0x000E0000
	.4byte 0x00007000
	.4byte 0
	.4byte 0x70000078
	.4byte 0
	.4byte 0
	.4byte 0x03C1CE0E
	.4byte 0x3C03C03C
	.4byte 0x0787B800
	.4byte 0x003F8078
	.4byte 0x0F00F77F
	.4byte 0xE39CFC00
	.4byte 0xC0F0FE1E
	.4byte 0x3C0FE03D
	.4byte 0xF0003800
	.4byte 0x3C07DFE0
	.4byte 0xF1C38038
	.4byte 0x0000F00F
	.4byte 0
	.4byte 0x07F1CF0E
	.4byte 0x7F07E07F
	.4byte 0x0FE7F800
	.4byte 0x003FC0FE
	.4byte 0x1FC1FF7F
	.4byte 0xE39CFC00
	.4byte 0xC1FCFE3F
	.4byte 0xFE0FF07F
	.4byte 0xFC003800
	.4byte 0x7F0FFFE1
	.4byte 0xF1C38038
	.4byte 0x0001FC1F
	.4byte 0
	.4byte 0x0771C78E
	.4byte 0x770670F7
	.4byte 0x0EE0F800
	.4byte 0x003DE1EE
	.4byte 0x1DC3CF1C
	.4byte 0xE39DDC00
	.4byte 0xC1DC3879
	.4byte 0xE70F78F3
	.4byte 0xDC003800
	.4byte 0x770E79E3
	.4byte 0xF1C38038
	.4byte 0x0001DC1C
	.4byte 0
	.4byte 0x0E79C7FE
	.4byte 0xE78070E0
	.4byte 0x1CF07800
	.4byte 0x0038F1C0
	.4byte 0x39E38F1C
	.4byte 0xE39DDC00
	.4byte 0xC39E3871
	.4byte 0xE78E3CE3
	.4byte 0x807F3801
	.4byte 0xE78E38E3
	.4byte 0x71C38038
	.4byte 0x00039E3C
	.4byte 0
	.4byte 0x0E39C1FE
	.4byte 0xE38070E0
	.4byte 0x1C703800
	.4byte 0x003871C0
	.4byte 0x38E3871C
	.4byte 0xE39DDC00
	.4byte 0xC38E3870
	.4byte 0xC38E1CE1
	.4byte 0x807F3801
	.4byte 0xE38E38E3
	.4byte 0x71C38038
	.4byte 0x00038E38
	.4byte 0
	.4byte 0x0FF9C00E
	.4byte 0xFF83E0FC
	.4byte 0x1FF03800
	.4byte 0x003871F8
	.4byte 0x3FE3871C
	.4byte 0xE39F9C00
	.4byte 0xC3FE3870
	.4byte 0xC38E1CE1
	.4byte 0xF0703801
	.4byte 0xFF8E38E3
	.4byte 0x71C38038
	.4byte 0x0003FE38
	.4byte 0
	.4byte 0x0FF9C00E
	.4byte 0xFF87C0FF
	.4byte 0x1FF03800
	.4byte 0x003871FE
	.4byte 0x3FE3871C
	.4byte 0xE39F9C00
	.4byte 0xC3FE3870
	.4byte 0xC38E1CE1
	.4byte 0xFC703801
	.4byte 0xFF8E38E3
	.4byte 0x71C38038
	.4byte 0x0003FE38
	.4byte 0
	.4byte 0x8039C00E
	.4byte 0x038F00E7
	.4byte 0x00703800
	.4byte 0x003871CF
	.4byte 0x00E3871C
	.4byte 0xE39F9C00
	.4byte 0xC00E3870
	.4byte 0xC38E1CE1
	.4byte 0x9E707801
	.4byte 0x038E38E3
	.4byte 0x71C38038
	.4byte 0x00000E38
	.4byte 0
	.4byte 0x8039C00E
	.4byte 0x038E00E3
	.4byte 0x00703800
	.4byte 0x003871C7
	.4byte 0x00E3871C
	.4byte 0xE39F1C00
	.4byte 0xC00E3870
	.4byte 0xC38E1CE1
	.4byte 0x8E707001
	.4byte 0x038E38E3
	.4byte 0x71C38070
	.4byte 0x00000E38
	.4byte 0
	.4byte 0x8039C00E
	.4byte 0x038E00E3
	.4byte 0x00703800
	.4byte 0x0038F1C7
	.4byte 0x00E3871C
	.4byte 0xE39F1C00
	.4byte 0xC00E3870
	.4byte 0xE78E3CE1
	.4byte 0x8E787001
	.4byte 0x038E38E3
	.4byte 0x71E38070
	.4byte 0x00000E3C
	.4byte 0
	.4byte 0x8E71C00E
	.4byte 0xE70F30F7
	.4byte 0x1CE03800
	.4byte 0x003CE1EF
	.4byte 0x39C3871C
	.4byte 0xE39F1C00
	.4byte 0xC39C3870
	.4byte 0xE70F38E1
	.4byte 0xDE7CE000
	.4byte 0xE70E38E3
	.4byte 0xF1E79CE0
	.4byte 0x00039C1E
	.4byte 0
	.4byte 0x07F1C00E
	.4byte 0x7F07F1FF
	.4byte 0x0FE03800
	.4byte 0x003FE3FE
	.4byte 0x1FC3877C
	.4byte 0xE39E1C00
	.4byte 0xC1FCF870
	.4byte 0xFF0FF8E1
	.4byte 0xFC7FE000
	.4byte 0x7F0E38E7
	.4byte 0xF1FF1FE0
	.4byte 0x0001FC0F
	.4byte 0
	.4byte 0x03C1C00E
	.4byte 0x3C03E1DE
	.4byte 0x07803800
	.4byte 0x003FC3BC
	.4byte 0x0F038778
	.4byte 0xE39E1C00
	.4byte 0xC0F0F070
	.4byte 0x3C0FF0E1
	.4byte 0x78678000
	.4byte 0x3C0E38E7
	.4byte 0xF1DE0F80
	.4byte 0x0000F007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0x0001C000
	.4byte 0x7FC00000
	.4byte 0xE0000000
	.4byte 0x00000700
	.4byte 0x00007800
	.4byte 0
	.4byte 0
	.4byte 0xF0000700
	.4byte 0
	.4byte 0xC0000000
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0
	.4byte 0x0001C000
	.4byte 0xFFC00000
	.4byte 0xE0000000
	.4byte 0x00000700
	.4byte 0x00007C00
	.4byte 0
	.4byte 0
	.4byte 0xF8000700
	.4byte 0
	.4byte 0xC0000000
	.4byte 0x00000001
	.4byte 0x8000000E
	.4byte 0x00000003
	.4byte 0x0001C700
	.4byte 0xE1C00000
	.4byte 0xE0000001
	.4byte 0x38000700
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0x38000700
	.4byte 0
	.4byte 0xC3800000
	.4byte 0x00000001
	.4byte 0x8000000E
	.4byte 0x00000003
	.4byte 0x00000700
	.4byte 0xC1C00000
	.4byte 0xE0000001
	.4byte 0x38000700
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0
	.4byte 0x03800000
	.4byte 0
	.4byte 0x8000000E
	.4byte 0x00000003
	.4byte 0x00000700
	.4byte 0xC1C00000
	.4byte 0xE0000001
	.4byte 0x38000700
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0
	.4byte 0x03800000
	.4byte 0
	.4byte 0x8000000E
	.4byte 0x00000003
	.4byte 0x00000700
	.4byte 0xC1C00000
	.4byte 0xE0000001
	.4byte 0x38000700
	.4byte 0x00001C00
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0
	.4byte 0x03800000
	.4byte 0
	.4byte 0xE1E03DCE
	.4byte 0x81C39EEF
	.4byte 0x0781DFC7
	.4byte 0xC1C001EE
	.4byte 0xE07803C1
	.4byte 0xFE1E071C
	.4byte 0x70787F00
	.4byte 0x07DFE00F
	.4byte 0x0F07B81E
	.4byte 0xFE3DC700
	.4byte 0xFF3DC0F0
	.4byte 0xCFE1E03E
	.4byte 0x00F703C1
	.4byte 0xE3F07FCE
	.4byte 0xC1C39FEF
	.4byte 0x1FC1DFCF
	.4byte 0xF1C003FE
	.4byte 0xE1FC0FE0
	.4byte 0xFE3F870C
	.4byte 0xF1FC7F00
	.4byte 0x0FFFE00F
	.4byte 0x1FC7F87F
	.4byte 0xFE7FC700
	.4byte 0xFF3FC3F8
	.4byte 0xCFE3F87F
	.4byte 0x01FF0FE1
	.4byte 0x8338F3CE
	.4byte 0xE1C383E3
	.4byte 0x1CE1C70D
	.4byte 0x3FC0079E
	.4byte 0xE1CE0E70
	.4byte 0x383B870E
	.4byte 0xF1CE1C00
	.4byte 0x8E79E001
	.4byte 0x1DC0F873
	.4byte 0x38F3C700
	.4byte 0xCF07C39C
	.4byte 0xC387B873
	.4byte 0x03CF0E71
	.4byte 0x8038E3CE
	.4byte 0xE1C381E3
	.4byte 0x3CF1C700
	.4byte 0xFFC0071E
	.4byte 0xE3CF1E78
	.4byte 0x3873C707
	.4byte 0xF3CF1C00
	.4byte 0xCE38E000
	.4byte 0x39E078F3
	.4byte 0x38E3C700
	.4byte 0xC703C79E
	.4byte 0xC3870071
	.4byte 0x038F1E79
	.4byte 0x8038E1CE
	.4byte 0x71C380E3
	.4byte 0x3871C700
	.4byte 0xE1C0070E
	.4byte 0xE3871C39
	.4byte 0x3871C703
	.4byte 0x73871C00
	.4byte 0xCE38E000
	.4byte 0x38E038E1
	.4byte 0x38E1C700
	.4byte 0xC701C70E
	.4byte 0xC3870071
	.4byte 0x03871C39
	.4byte 0x81F0E1CE
	.4byte 0x71C380E3
	.4byte 0x3871C700
	.4byte 0x81C0070E
	.4byte 0xE3871C3B
	.4byte 0x387FC703
	.4byte 0x73871C00
	.4byte 0xCE38E000
	.4byte 0x3FE038E1
	.4byte 0x38E1C700
	.4byte 0xC701C70E
	.4byte 0xC387E071
	.4byte 0x03871C39
	.4byte 0x83E0E1CE
	.4byte 0x71C380E3
	.4byte 0x3871C700
	.4byte 0x81C0070E
	.4byte 0xE3871C3B
	.4byte 0x387FC707
	.4byte 0x73871C00
	.4byte 0xCE38E000
	.4byte 0x3FE038E1
	.4byte 0x38E1C700
	.4byte 0xC701C70E
	.4byte 0xC387F871
	.4byte 0x03871C39
	.4byte 0x8780E1CE
	.4byte 0x71C380E3
	.4byte 0x3871C700
	.4byte 0x81C0070E
	.4byte 0xE3871C3B
	.4byte 0x3801C706
	.4byte 0x73871C00
	.4byte 0xCE38E000
	.4byte 0x00E038E1
	.4byte 0x38E1C700
	.4byte 0xC701C70E
	.4byte 0xC3873C71
	.4byte 0x03871C39
	.4byte 0x8700E1CE
	.4byte 0x71C380E3
	.4byte 0x3871C700
	.4byte 0x81C0070E
	.4byte 0xE3871C3B
	.4byte 0x3801C70E
	.4byte 0x73871C00
	.4byte 0xCE38E000
	.4byte 0x00E038E1
	.4byte 0x38E1C700
	.4byte 0xC701C70E
	.4byte 0xC3871C71
	.4byte 0x03871C39
	.4byte 0x8700E1CF
	.4byte 0xF1E380E3
	.4byte 0x3CF1C700
	.4byte 0xC1C0070E
	.4byte 0xE3CF1E7B
	.4byte 0x3801C70C
	.4byte 0x73CF1C00
	.4byte 0xCE38E000
	.4byte 0x00E038F3
	.4byte 0x38E1C700
	.4byte 0xC701C79E
	.4byte 0xC3871C71
	.4byte 0x03871E79
	.4byte 0x8798E1CF
	.4byte 0xE1E780E3
	.4byte 0x1CE1C70C
	.4byte 0xE1C0070E
	.4byte 0xE1CE0E71
	.4byte 0x3873871C
	.4byte 0x71CE1C00
	.4byte 0x8E38E000
	.4byte 0x39C03873
	.4byte 0x38E1C700
	.4byte 0xC701C39C
	.4byte 0xC387BC71
	.4byte 0xC3870E71
	.4byte 0x83F8E1CF
	.4byte 0xE1FF00EF
	.4byte 0x1FE1DF0F
	.4byte 0xFFC0070E
	.4byte 0xE1FE0FF0
	.4byte 0xF83F871C
	.4byte 0x71FE1C00
	.4byte 0x8E38E000
	.4byte 0x1FC0387F
	.4byte 0x38E1C700
	.4byte 0xC701C3FC
	.4byte 0xCF8FF871
	.4byte 0xC3870FF1
	.4byte 0x01F0E1CE
	.4byte 0x81DE00EF
	.4byte 0x0781DE07
	.4byte 0x7FC0070E
	.4byte 0xE07803C0
	.4byte 0xF01E0738
	.4byte 0x70781C00
	.4byte 0x0E38E000
	.4byte 0x0F00381E
	.4byte 0x38E1C700
	.4byte 0xC701C0F0
	.4byte 0xCF0EF071
	.4byte 0xC38703C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C7BA4
lbl_801C7BA4:

	# ROM: 0x1C4BA4
	.4byte 0x01A00060
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E007FFF
	.4byte 0x0001C000
	.4byte 0
	.4byte 0x000E0000
	.4byte 0xF00F0000
	.4byte 0x01C00000
	.4byte 0x00FF8000
	.4byte 0
	.4byte 0xE003FF80
	.4byte 0x00000007
	.4byte 0x3FE00000
	.4byte 0x00000038
	.4byte 0
	.4byte 0x0E007FFF
	.4byte 0x0001C000
	.4byte 0
	.4byte 0x000E0000
	.4byte 0xF81F0000
	.4byte 0x01C00000
	.4byte 0x03FF8000
	.4byte 0
	.4byte 0xF803FF80
	.4byte 0x0000000F
	.4byte 0x7FE00000
	.4byte 0x00000038
	.4byte 0
	.4byte 0x0E007070
	.4byte 0x0001C000
	.4byte 0xC0000000
	.4byte 0x000E3801
	.4byte 0xF81F0000
	.4byte 0x01C00000
	.4byte 0x03838000
	.4byte 0x001C0000
	.4byte 0x3C000380
	.4byte 0x0000000E
	.4byte 0xF0E00000
	.4byte 0x00000038
	.4byte 0
	.4byte 0x00007070
	.4byte 0
	.4byte 0xC0000000
	.4byte 0x000E3801
	.4byte 0xF81F0000
	.4byte 0
	.4byte 0x07038000
	.4byte 0x001C0000
	.4byte 0x1C000380
	.4byte 0x0000000C
	.4byte 0xE0E00000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00007070
	.4byte 0
	.4byte 0xC0000000
	.4byte 0x000E3801
	.4byte 0xFC3F0000
	.4byte 0
	.4byte 0x07038000
	.4byte 0x001C0000
	.4byte 0x0E000380
	.4byte 0
	.4byte 0xC0E00000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00007070
	.4byte 0
	.4byte 0xC0000000
	.4byte 0x000E3801
	.4byte 0xFC3F0000
	.4byte 0
	.4byte 0x07038000
	.4byte 0x001C0000
	.4byte 0x0E000380
	.4byte 0
	.4byte 0xC0E00000
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0E1F7070
	.4byte 0x03E1C01F
	.4byte 0xF0F81F70
	.4byte 0x03EEFE07
	.4byte 0xEE77001F
	.4byte 0xC1FDC3E0
	.4byte 0xC7038007
	.4byte 0x077F7B87
	.4byte 0x07000387
	.4byte 0xF3DC1F00
	.4byte 0x80E00F81
	.4byte 0x07C07C3B
	.4byte 0
	.4byte 0x8E3FF070
	.4byte 0x07F1C03F
	.4byte 0xF1FC3FF0
	.4byte 0x87FEFE07
	.4byte 0xEE77003F
	.4byte 0xE1FFC7F0
	.4byte 0xE783800F
	.4byte 0x077F7F8F
	.4byte 0x07000387
	.4byte 0xFFFC3F80
	.4byte 0x80E01FC1
	.4byte 0x0FE0FE3B
	.4byte 0
	.4byte 0xCE79F070
	.4byte 0x0679C033
	.4byte 0xC3DE79F0
	.4byte 0xCF3E3801
	.4byte 0xEE77003B
	.4byte 0xF1C7CF38
	.4byte 0x73C3801E
	.4byte 0x8E1C0F9E
	.4byte 0x0700FF83
	.4byte 0xDE3C79C0
	.4byte 0x80E01DE3
	.4byte 0x0CF0CF3B
	.4byte 0
	.4byte 0xCE70F070
	.4byte 0x0039C001
	.4byte 0xC38E70F0
	.4byte 0xCE1E3801
	.4byte 0xE7E70071
	.4byte 0x71C3CE18
	.4byte 0x31FF801C
	.4byte 0x8E1C079C
	.4byte 0x0701FF83
	.4byte 0x8E3C70C0
	.4byte 0x80E038E3
	.4byte 0x0070073B
	.4byte 0
	.4byte 0xCE707070
	.4byte 0x0039C001
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE7E70070
	.4byte 0x39C1CE00
	.4byte 0x00FF8038
	.4byte 0x8E1C039C
	.4byte 0xE703C783
	.4byte 0x8E1C700F
	.4byte 0x80E03873
	.4byte 0x0038073B
	.4byte 0
	.4byte 0xCE707070
	.4byte 0x00F9C007
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE3C7007F
	.4byte 0x39C1CFC0
	.4byte lbl_80038038
	.4byte 0x9C1C039F
	.4byte 0xE7078003
	.4byte 0x8E1C7E0F
	.4byte 0x80E03FF3
	.4byte 0x00381F3B
	.4byte 0
	.4byte 0x8E707070
	.4byte 0x03F1C01F
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE3C7007F
	.4byte 0x39C1CFF0
	.4byte 0xE0038038
	.4byte 0x9C1C039F
	.4byte 0x07070003
	.4byte 0x8E1C7F8E
	.4byte 0x80E03FF3
	.4byte 0x00387E3B
	.4byte 0
	.4byte 0x0E707070
	.4byte 0x07C1C03E
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE1870000
	.4byte 0x39C1CE78
	.4byte 0xF0038038
	.4byte 0xDC1C039C
	.4byte 0x07070001
	.4byte 0x8E1C73CE
	.4byte 0x80E00073
	.4byte 0x0038F83B
	.4byte 0
	.4byte 0x0E707070
	.4byte 0x0E01C070
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE1870000
	.4byte 0x39C1CE1C
	.4byte 0x38038038
	.4byte 0xF81C039C
	.4byte 0x0E070001
	.4byte 0x8E1C70EE
	.4byte 0xC0E00073
	.4byte 0x0039C039
	.4byte 0
	.4byte 0x0E707070
	.4byte 0x0E01C070
	.4byte 0xC7077070
	.4byte 0xEE0E3801
	.4byte 0xE1870000
	.4byte 0x39C1CE1C
	.4byte 0x38038038
	.4byte 0xF81C039C
	.4byte 0x0E070001
	.4byte 0x8E1C70EE
	.4byte 0xC0E00073
	.4byte 0x0039C039
	.4byte 0
	.4byte 0x0E707070
	.4byte 0x0E01C070
	.4byte 0xC38E7070
	.4byte 0xCE0E3801
	.4byte 0xE0070061
	.4byte 0x71C1CE1C
	.4byte 0x3803801C
	.4byte 0xF81C039C
	.4byte 0x1E038181
	.4byte 0x8E1C70EF
	.4byte 0xE0E030E3
	.4byte 0xC071C039
	.4byte 0x00000001
	.4byte 0xCE707070
	.4byte 0x0F39C079
	.4byte 0xC3CE7070
	.4byte 0xCE0E3801
	.4byte 0xE0070073
	.4byte 0x71C1CF3C
	.4byte 0x7803801E
	.4byte 0xF01C039E
	.4byte 0x9C03E381
	.4byte 0x8E1C79EF
	.4byte 0xF0E039E3
	.4byte 0xCCF1E738
	.4byte 0x00000001
	.4byte 0xCE707070
	.4byte 0x07F9C03F
	.4byte 0xC1FC7070
	.4byte 0x8E0EF807
	.4byte 0xE007003F
	.4byte 0xE1C1DFF8
	.4byte 0xF003800F
	.4byte 0xF07C03BF
	.4byte 0xF801FF80
	.4byte 0x8E1CFFCF
	.4byte 0x7FE01FC3
	.4byte 0xCFE0FF38
	.4byte 0x00000001
	.4byte 0x8E707070
	.4byte 0x03F1C01F
	.4byte 0x80F87070
	.4byte 0x0E0EF007
	.4byte 0xE007001F
	.4byte 0xC1C1DCF0
	.4byte 0xE0038007
	.4byte 0xF07803B9
	.4byte 0xF0007E00
	.4byte 0x8E1CE78C
	.4byte 0x1FE00F83
	.4byte 0xC7C07E38
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xF0000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x70000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x78000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0001C3FE
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x0001C000
	.4byte 0x0F00F000
	.4byte 0x00700000
	.4byte 0x3E1FF000
	.4byte 0
	.4byte 0xF800FFE0
	.4byte 0x00000001
	.4byte 0x0FF80000
	.4byte 0x0000001C
	.4byte 0x0001CFFE
	.4byte 0
	.4byte 0x000001C0
	.4byte 0
	.4byte 0x0001C000
	.4byte 0x0F81F000
	.4byte 0x00700000
	.4byte 0x1E7FF000
	.4byte 0
	.4byte 0xFE00FFE0
	.4byte 0x00000003
	.4byte 0x1FF80000
	.4byte 0x0000001C
	.4byte 0x0001CE0E
	.4byte 0
	.4byte 0x000001C0
	.4byte 0x38000000
	.4byte 0x0001C700
	.4byte 0x0F81F000
	.4byte 0x00700000
	.4byte 0x00707000
	.4byte 0x00070000
	.4byte 0x8F0000E0
	.4byte 0x00000003
	.4byte 0x3C380000
	.4byte 0x0000001C
	.4byte 0x0001DC0E
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0x0001C700
	.4byte 0x0F81F000
	.4byte 0
	.4byte 0x00E07000
	.4byte 0x00070000
	.4byte 0x070000E0
	.4byte 0x00000003
	.4byte 0x78380000
	.4byte 0
	.4byte 0x0001DC0E
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0x0001C700
	.4byte 0x0FC3F000
	.4byte 0
	.4byte 0x00E07000
	.4byte 0x00070000
	.4byte 0x038000E0
	.4byte 0
	.4byte 0x70380000
	.4byte 0
	.4byte 0x0001DC0E
	.4byte 0
	.4byte 0
	.4byte 0x38000000
	.4byte 0x0001C700
	.4byte 0x0FC3F000
	.4byte 0
	.4byte 0x00E07000
	.4byte 0x00070000
	.4byte 0x038000E0
	.4byte 0
	.4byte 0x70380000
	.4byte 0
	.4byte 0x03E1DC0E
	.4byte 0x1F03E07C
	.4byte 0xF81F71C0
	.4byte 0xFEF70F80
	.4byte 0xC07DDFC0
	.4byte 0x0EE77007
	.4byte 0xF073DC3E
	.4byte 0xF8E07001
	.4byte 0xE0FFCF70
	.4byte 0x01C000E0
	.4byte 0x3E7B87C0
	.4byte 0xE03801F0
	.4byte 0x07C07C1C
	.4byte 0x07F1DE0E
	.4byte 0x3F87F0FE
	.4byte 0xFC3FF1C0
	.4byte 0xFEFF1FC1
	.4byte 0xE0FFDFC0
	.4byte 0x0EE7700F
	.4byte 0xF873FC7F
	.4byte 0xFCF07003
	.4byte 0xE0FFCFF1
	.4byte 0x01C000E0
	.4byte 0x3FFF8FE0
	.4byte 0xE03803F8
	.4byte 0x0FE0FE1C
	.4byte 0x0779CF0E
	.4byte 0x3BC679E7
	.4byte 0x9E79F1C0
	.4byte 0x381F1DE1
	.4byte 0xF1E7C700
	.4byte 0x8EE7700E
	.4byte 0xBC707CF3
	.4byte 0xCE787007
	.4byte 0x71C701F3
	.4byte 0x01C03FE0
	.4byte 0x7BC79E70
	.4byte 0xE03803BC
	.4byte 0x0CF0CF1C
	.4byte 0x0E39C7FE
	.4byte 0x71C039C3
	.4byte 0x0E70F1C0
	.4byte 0x380F38E0
	.4byte 0x71C3C700
	.4byte 0x8E7E701C
	.4byte 0x1C703CE1
	.4byte 0x863FF007
	.4byte 0x71C700F3
	.4byte 0x01C07FE0
	.4byte 0x71C79C30
	.4byte 0xE038071C
	.4byte 0x0070071C
	.4byte 0x0E1DC3FE
	.4byte 0x70E039C0
	.4byte 0x0E7071C0
	.4byte 0x38073870
	.4byte 0x39C1C700
	.4byte 0x0E7E701C
	.4byte 0x0E701CE0
	.4byte lbl_801FF00E
	.4byte 0x71C70073
	.4byte 0xF9C0F1E0
	.4byte 0x71C39C03
	.4byte 0xE038070E
	.4byte 0x0038071C
	.4byte 0x0FFDC00E
	.4byte 0x7FE0F9F8
	.4byte 0x3E7071C0
	.4byte 0x38073FF0
	.4byte 0xF9C1C700
	.4byte 0x0E3C701F
	.4byte 0x0E701CFC
	.4byte 0xF000700E
	.4byte 0x73870073
	.4byte 0xF9C1E000
	.4byte 0x71C39F83
	.4byte 0xE03807FE
	.4byte 0x00381F1C
	.4byte 0x0FFDC00E
	.4byte 0x7FE3F1FE
	.4byte 0xFC7071C0
	.4byte 0x38073FF0
	.4byte 0xF9C1C700
	.4byte 0x0E3C701F
	.4byte 0x0E701CFF
	.4byte 0xFC00700E
	.4byte 0x73870073
	.4byte 0x81C1C000
	.4byte 0x71C39FE3
	.4byte 0xE03807FE
	.4byte 0x00387E1C
	.4byte 0x001DC00E
	.4byte 0x00E7C1CF
	.4byte 0xF07071C0
	.4byte 0x38070071
	.4byte 0x39C1C700
	.4byte 0x8E187000
	.4byte 0x0E701CE7
	.4byte 0x9E00700E
	.4byte 0x3B870073
	.4byte 0x81C1C000
	.4byte 0x71C39CF3
	.4byte 0xE038000E
	.4byte 0x0038F81C
	.4byte lbl_801DC00E
	.4byte 0x00EE01C3
	.4byte 0x807071C0
	.4byte 0x38070073
	.4byte 0x39C1C700
	.4byte 0xCE187000
	.4byte 0x0E701CE1
	.4byte 0x8700700E
	.4byte 0x3F070073
	.4byte 0x8381C000
	.4byte 0x71C39C3B
	.4byte 0x7038000E
	.4byte 0x0039C01C
	.4byte lbl_801DC00F
	.4byte 0x00EE01C3
	.4byte 0x807071C0
	.4byte 0x38070073
	.4byte 0x39C1C700
	.4byte 0xCE187000
	.4byte 0x0E701CE1
	.4byte 0x8700700E
	.4byte 0x3F070073
	.4byte 0x8381C000
	.4byte 0x71C39C3B
	.4byte 0x7038000E
	.4byte 0x0039C01C
	.4byte 0x8C39C00F
	.4byte 0x61CE01C3
	.4byte 0x807071C0
	.4byte 0x380730E3
	.4byte 0x71C1C700
	.4byte 0xCE007018
	.4byte 0x1C701CE1
	.4byte 0x87007007
	.4byte 0x3F070073
	.4byte 0xC780E060
	.4byte 0x71C39C3B
	.4byte 0x7838061C
	.4byte 0xC071C01C
	.4byte 0x8E79C00F
	.4byte 0x73CF39E7
	.4byte 0xCE7071C0
	.4byte 0x380739E3
	.4byte 0xF1C1C700
	.4byte 0xCE00701C
	.4byte 0x9C701CF3
	.4byte 0xCF007007
	.4byte 0x3E070073
	.4byte 0xE700F8E0
	.4byte 0x71C39E7B
	.4byte 0x3C38073C
	.4byte 0xCCF1E71C
	.4byte 0x07F1C00F
	.4byte 0x3F87FBFF
	.4byte 0xFE7071C0
	.4byte 0xF8071FC1
	.4byte 0xE1C1DF00
	.4byte 0x8E00700F
	.4byte 0xF8701DFF
	.4byte 0xFE007003
	.4byte 0x1E1F0077
	.4byte 0xFE007FE0
	.4byte 0x71C3BFF3
	.4byte 0x1FF803F8
	.4byte 0xCFE0FF1C
	.4byte 0x03E1C00E
	.4byte 0x1F03F39E
	.4byte 0xFC7071C0
	.4byte 0xF0070F80
	.4byte 0xC1C1DE00
	.4byte 0x0E007007
	.4byte 0xF0701DCF
	.4byte 0x3C007001
	.4byte 0x1E1E0077
	.4byte 0x3C001F80
	.4byte 0x71C3B9E3
	.4byte 0x07F801F0
	.4byte 0xC7C07E1C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1E000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x1E000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0E000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x07C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C8F28
lbl_801C8F28:

	# ROM: 0x1C5F28
	.4byte lbl_800688A4
	.4byte lbl_800688BC
	.4byte lbl_800688E0
	.4byte lbl_80068924
	.4byte lbl_800688E0
	.4byte lbl_800688F4
	.4byte lbl_800688D0
	.4byte lbl_80068904
	.4byte lbl_80068924
	.4byte lbl_80068924
	.4byte lbl_80068924
	.4byte lbl_80068924
	.4byte lbl_80068914

.global lbl_801C8F5C
lbl_801C8F5C:

	# ROM: 0x1C5F5C
	.4byte lbl_801C4118
	.4byte lbl_801C1A10
	.4byte lbl_801C549C
	.4byte lbl_801C7BA4
	.4byte lbl_801C6820
	.4byte lbl_801C2D94

.global lbl_801C8F74
lbl_801C8F74:

	# ROM: 0x1C5F74
	.asciz "PrevInt=DISABLE!!\n"

.global lbl_801C8F87
lbl_801C8F87:

	# ROM: 0x1C5F87
	.byte 0x54
	.asciz "imeout Count=%d\n"
	.balign 4
	.4byte 0

.global lbl_801C8FA0
lbl_801C8FA0:

	# ROM: 0x1C5FA0
	.4byte 0xFFFFFFFF
	.4byte 0x00F0FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFF00F0
	.4byte 0x00D2003C
	.4byte 0xFFFFFFFF

.global lbl_801C8FB8
lbl_801C8FB8:

	# ROM: 0x1C5FB8
	.4byte 0x2820636F
	.4byte 0x6C6D616E
	.4byte 0x2E63203A
	.4byte 0x205F436F
	.4byte 0x6C436F72
	.4byte 0x72656374
	.4byte 0x696F6E20
	.4byte 0x29207C20
	.4byte 0x837D8362
	.4byte 0x837682C6
	.4byte 0x82A082BD
	.4byte 0x82C182C4
	.4byte 0x82E982CD
	.4byte 0x82B882C8
	.4byte 0x82CC82C9
	.4byte 0x83418367
	.4byte 0x838A8372
	.4byte 0x8385815B
	.4byte 0x836782AA
	.4byte 0x82A082E8
	.4byte 0x82DC82B9
	.4byte 0x82F10A00

.global lbl_801C9010
lbl_801C9010:

	# ROM: 0x1C6010
	.4byte 0x2820636F
	.4byte 0x6C6D616E
	.4byte 0x2E63203A
	.4byte 0x20436F6C
	.4byte 0x4D617049
	.4byte 0x6E697420
	.4byte 0x29207C20
	.4byte 0x83658393
	.4byte 0x837C8389
	.4byte 0x838A82CC
	.4byte 0x836F8362
	.4byte 0x83748340
	.4byte 0x82F08349
	.4byte 0x815B836F
	.4byte 0x815B8389
	.4byte 0x83438367
	.4byte 0x82B582C4
	.4byte 0x82A282DC
	.4byte 0x82B70A00
	.4byte 0

.global lbl_801C9060
lbl_801C9060:

	# ROM: 0x1C6060
	.4byte lbl_8007ABA8
	.4byte lbl_8007AFD0
	.4byte lbl_8007BD30
	.4byte lbl_8007C424
	.4byte lbl_8007CB08
	.4byte lbl_8007D20C
	.4byte lbl_8007D9F4
	.4byte lbl_8007DE8C
	.4byte lbl_8007E3CC
	.4byte lbl_8007E650
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94
	.4byte lbl_8007AA94

.global lbl_801C90A8
lbl_801C90A8:

	# ROM: 0x1C60A8
	.4byte 0x008C0000
	.4byte 0x008C0001
	.4byte 0x008C0002
	.4byte 0x008C0003
	.4byte 0x008C0004
	.4byte 0x008C0005
	.4byte 0x008C0050
	.4byte 0x008C0008
	.4byte 0x008C000A
	.4byte 0x008C0009
	.4byte 0x008C000F
	.4byte 0x008C0010
	.4byte 0x008C0012
	.4byte 0x008C0013
	.4byte 0x008C0017
	.4byte 0x008C0017
	.4byte 0
	.4byte 0

.global lbl_801C90F0
lbl_801C90F0:

	# ROM: 0x1C60F0
	.asciz "KOOPA KID"

.global lbl_801C90FA
lbl_801C90FA:

	# ROM: 0x1C60FA
	.byte 0x4D, 0x49
	.asciz "NI BOWSER"

.global lbl_801C9106
lbl_801C9106:

	# ROM: 0x1C6106
	.byte 0x52, 0x45
	.asciz "D K.KID"

.global lbl_801C9110
lbl_801C9110:

	# ROM: 0x1C6110
	.asciz "M.BOWSER R"

.global lbl_801C911B
lbl_801C911B:

	# ROM: 0x1C611B
	.byte 0x4D
	.asciz "INI B.ROUGE"

.global lbl_801C9128
lbl_801C9128:

	# ROM: 0x1C6128
	.asciz "MINI B.ROSSO"

.global lbl_801C9135
lbl_801C9135:

	# ROM: 0x1C6135
	.byte 0x4D, 0x49, 0x4E
	.asciz "I B.ROJO"

.global lbl_801C9141
lbl_801C9141:

	# ROM: 0x1C6141
	.byte 0x47, 0x52, 0x45
	.asciz "EN K.KID"

.global lbl_801C914D
lbl_801C914D:

	# ROM: 0x1C614D
	.byte 0x4D, 0x2E, 0x42
	.asciz "OWSER G"

.global lbl_801C9158
lbl_801C9158:

	# ROM: 0x1C6158
	.asciz "MINI B.VERT"

.global lbl_801C9164
lbl_801C9164:

	# ROM: 0x1C6164
	.asciz "MINI B.VERDE"

.global lbl_801C9171
lbl_801C9171:

	# ROM: 0x1C6171
	.byte 0x42, 0x4C, 0x55
	.asciz "E K.KID"

.global lbl_801C917C
lbl_801C917C:

	# ROM: 0x1C617C
	.asciz "M.BOWSER B"

.global lbl_801C9187
lbl_801C9187:

	# ROM: 0x1C6187
	.byte 0x4D
	.asciz "INI B.BLEU"

.global lbl_801C9193
lbl_801C9193:

	# ROM: 0x1C6193
	.byte 0x4D
	.asciz "INI B.BLU"

.global lbl_801C919E
lbl_801C919E:

	# ROM: 0x1C619E
	.byte 0x4D, 0x49
	.asciz "NI B.AZUL"

.global lbl_801C91AA
lbl_801C91AA:

	# ROM: 0x1C61AA
	.byte 0x44, 0x4F
	.asciz "NKEY KONG"
	.balign 4

.global lbl_801C91B8
lbl_801C91B8:

	# ROM: 0x1C61B8
	.4byte lbl_80288198
	.4byte lbl_8028819C
	.4byte lbl_8028819C
	.4byte lbl_8028819C
	.4byte lbl_8028819C
	.4byte lbl_8028819C
	.4byte lbl_802881A2
	.4byte lbl_802881A8
	.4byte lbl_802881A8
	.4byte lbl_802881A8
	.4byte lbl_802881A8
	.4byte lbl_802881A8
	.4byte lbl_802881AE
	.4byte lbl_802881B3
	.4byte lbl_802881B3
	.4byte lbl_802881B3
	.4byte lbl_802881B3
	.4byte lbl_802881B3
	.4byte lbl_802881B9
	.4byte lbl_802881BE
	.4byte lbl_802881BE
	.4byte lbl_802881BE
	.4byte lbl_802881BE
	.4byte lbl_802881BE
	.4byte lbl_802881C4
	.4byte lbl_802881C8
	.4byte lbl_802881C8
	.4byte lbl_802881C8
	.4byte lbl_802881C8
	.4byte lbl_802881C8
	.4byte lbl_802881CE
	.4byte lbl_802881D5
	.4byte lbl_802881D5
	.4byte lbl_802881D5
	.4byte lbl_802881D5
	.4byte lbl_802881D5
	.4byte lbl_802881DB
	.4byte lbl_802881E2
	.4byte lbl_802881E2
	.4byte lbl_802881E2
	.4byte lbl_802881E2
	.4byte lbl_802881E2
	.4byte lbl_802881EA
	.4byte lbl_802881F0
	.4byte lbl_802881F0
	.4byte lbl_802881F0
	.4byte lbl_802881F0
	.4byte lbl_802881F0
	.4byte lbl_802881F5
	.4byte lbl_802881F9
	.4byte lbl_802881FD
	.4byte lbl_802881F9
	.4byte lbl_802881F9
	.4byte lbl_802881F9
	.4byte lbl_80288205
	.4byte lbl_801C90F0
	.4byte lbl_801C90FA
	.4byte lbl_801C90FA
	.4byte lbl_801C90FA
	.4byte lbl_801C90FA
	.4byte lbl_8028820C
	.4byte lbl_801C9106
	.4byte lbl_801C9110
	.4byte lbl_801C911B
	.4byte lbl_801C9128
	.4byte lbl_801C9135
	.4byte lbl_80288214
	.4byte lbl_801C9141
	.4byte lbl_801C914D
	.4byte lbl_801C9158
	.4byte lbl_801C9164
	.4byte lbl_801C9164
	.4byte lbl_8028821C
	.4byte lbl_801C9171
	.4byte lbl_801C917C
	.4byte lbl_801C9187
	.4byte lbl_801C9193
	.4byte lbl_801C919E
	.4byte lbl_80288224
	.4byte lbl_8028822A
	.4byte lbl_801C91AA
	.4byte lbl_8028822A
	.4byte lbl_8028822A
	.4byte lbl_8028822A
	.4byte lbl_8028822D
	.4byte lbl_80288232
	.4byte lbl_80288232
	.4byte lbl_80288232
	.4byte lbl_80288232
	.4byte lbl_80288232

.global lbl_801C9320
lbl_801C9320:

	# ROM: 0x1C6320
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000030
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000050
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x00000030
	.4byte 0x00000080
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x00000050
	.4byte 0x00000080
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000060
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF

.global lbl_801C9488
lbl_801C9488:

	# ROM: 0x1C6488
	.4byte 0x00900000
	.4byte 0xFF700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000023
	.4byte 0xFF70FFDD
	.4byte 0x0090FFDD
	.4byte 0
	.4byte 0
	.4byte 0x00000069
	.4byte 0x0000FF97
	.4byte 0xFF700000
	.4byte 0x00900000
	.4byte 0
	.4byte 0x00000069
	.4byte 0xFF70FF97
	.4byte 0x0090FF97
	.4byte 0xFF700000
	.4byte 0x00900000

.global lbl_801C94D8
lbl_801C94D8:

	# ROM: 0x1C64D8
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_8008741C
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_8008741C
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_8008741C
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_8008741C
	.4byte lbl_8008741C
	.4byte lbl_8008741C
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_8008741C
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087430
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_80087444
	.4byte lbl_8008741C

.global lbl_801C9658
lbl_801C9658:

	# ROM: 0x1C6658
	.4byte 0xC1F00000
	.4byte 0x433E0000
	.4byte 0x432A0000
	.4byte 0x42800000
	.4byte 0x43C80000
	.4byte 0x43820000
	.4byte 0x43480000
	.4byte 0x43D00000
	.4byte 0x42280000
	.4byte 0x43700000
	.4byte 0x43340000
	.4byte 0x43020000
	.4byte 0
	.4byte 0

.global lbl_801C9690
lbl_801C9690:

	# ROM: 0x1C6690
	.4byte 0xFFDF0708
	.4byte 0x0019FFDF
	.4byte 0x08340019
	.4byte 0xFFDF0C80
	.4byte 0x00190000

.global lbl_801C96A4
lbl_801C96A4:

	# ROM: 0x1C66A4
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0x44FA0000
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000
	.4byte 0x45FA0000
	.4byte 0x447A0000
	.4byte 0
	.4byte 0x457A0000
	.4byte 0x457A0000

.global lbl_801C9758
lbl_801C9758:

	# ROM: 0x1C6758
	.4byte lbl_80094510
	.4byte lbl_800949A8
	.4byte lbl_80094510
	.4byte lbl_80094608
	.4byte lbl_8009470C
	.4byte lbl_80094770
	.4byte lbl_80094854
	.4byte lbl_80094910

.global lbl_801C9778
lbl_801C9778:

	# ROM: 0x1C6778
	.asciz "Clswario_eye_l1_AUTO14"

.global lbl_801C978F
lbl_801C978F:

	# ROM: 0x1C678F
	.byte 0x43
	.asciz "lswario_eye_l1_AUTO15"

.global lbl_801C97A6
lbl_801C97A6:

	# ROM: 0x1C67A6
	.byte 0x6D, 0x5F
	.asciz "donkey_eye4"

.global lbl_801C97B4
lbl_801C97B4:

	# ROM: 0x1C67B4
	.asciz "m_donkey_eye5"

.global lbl_801C97C2
lbl_801C97C2:

	# ROM: 0x1C67C2
	.byte 0x43, 0x6C
	.asciz "swaluigi_eye_l1_AUTO1"

.global lbl_801C97DA
lbl_801C97DA:

	# ROM: 0x1C67DA
	.byte 0x43, 0x6C
	.asciz "swaluigi_eye_l1_AUTO2"
	.balign 4

.global lbl_801C97F4
lbl_801C97F4:

	# ROM: 0x1C67F4
	.4byte lbl_80288250
	.4byte lbl_80288255
	.4byte lbl_80288250
	.4byte lbl_80288255
	.4byte lbl_8028825A
	.4byte lbl_80288260
	.4byte lbl_80288250
	.4byte lbl_80288255
	.4byte lbl_801C9778
	.4byte lbl_801C978F
	.4byte lbl_801C97A6
	.4byte lbl_801C97B4
	.4byte lbl_80288266
	.4byte lbl_8028826C
	.4byte lbl_801C97C2
	.4byte lbl_801C97DA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C985C
lbl_801C985C:

	# ROM: 0x1C685C
	.asciz "Mini Koopa"

.global lbl_801C9867
lbl_801C9867:

	# ROM: 0x1C6867
	.byte 0x4D
	.asciz "ini KoopaR"

.global lbl_801C9873
lbl_801C9873:

	# ROM: 0x1C6873
	.byte 0x4D
	.asciz "ini KoopaG"

.global lbl_801C987F
lbl_801C987F:

	# ROM: 0x1C687F
	.byte 0x4D
	.asciz "ini KoopaB"
	.balign 4
	.4byte 0

.global lbl_801C9890
lbl_801C9890:

	# ROM: 0x1C6890
	.4byte 0x43C00000
	.4byte 0x42800000
	.4byte 0x43D80000
	.4byte 0x43400000
	.4byte 0x43FC0000
	.4byte 0x42C00000
	.4byte 0x43D80000
	.4byte 0x42C00000
	.4byte 0x43900000
	.4byte 0x43400000
	.4byte 0x43D80000
	.4byte 0x43000000
	.4byte 0x43D80000
	.4byte 0x42C00000
	.4byte 0x43D80000
	.4byte 0x42C00000
	.4byte 0x43FC0000
	.4byte 0x42C00000
	.4byte 0x43C00000
	.4byte 0x42800000
	.4byte 0x43C00000
	.4byte 0x42800000

.global lbl_801C98E8
lbl_801C98E8:

	# ROM: 0x1C68E8
	.4byte 0x42C00000
	.4byte 0x43A40000
	.4byte 0x42900000
	.4byte 0x43000000
	.4byte 0x42100000
	.4byte 0x43AC0000
	.4byte 0x42900000
	.4byte 0x43A40000
	.4byte 0x43100000
	.4byte 0x43100000
	.4byte 0x43000000
	.4byte 0x439C0000
	.4byte 0x43000000
	.4byte 0x43840000
	.4byte 0x43000000
	.4byte 0x42960000
	.4byte 0x42100000
	.4byte 0x43B00000
	.4byte 0x42C00000
	.4byte 0x43D00000
	.4byte 0x42C00000
	.4byte 0x43A40000

.global lbl_801C9940
lbl_801C9940:

	# ROM: 0x1C6940
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0

.global lbl_801C9968
lbl_801C9968:

	# ROM: 0x1C6968
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x3F000000
	.4byte 0

.global lbl_801C9A04
lbl_801C9A04:

	# ROM: 0x1C6A04
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x00000004

.global lbl_801C9A28
lbl_801C9A28:

	# ROM: 0x1C6A28
	.4byte func_800A9BE0
	.4byte lbl_800A9A2C
	.4byte lbl_800A9A84
	.4byte lbl_800A9ADC
	.4byte lbl_800A9B34
	.4byte func_800A9BE0
	.4byte lbl_800A9B34
	.4byte func_800A9BE0
	.4byte lbl_800A9B8C

.global lbl_801C9A4C
lbl_801C9A4C:

	# ROM: 0x1C6A4C
	.4byte func_800A9D6C
	.4byte lbl_800A9CEC
	.4byte lbl_800A9CF8
	.4byte lbl_800A9D04
	.4byte lbl_800A9D24
	.4byte lbl_800A9D34
	.4byte lbl_800A9D24
	.4byte lbl_800A9D64
	.4byte lbl_800A9D44

.global lbl_801C9A70
lbl_801C9A70:

	# ROM: 0x1C6A70
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000006

.global lbl_801C9A90
lbl_801C9A90:

	# ROM: 0x1C6A90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9AA0
lbl_801C9AA0:

	# ROM: 0x1C6AA0
	.4byte 0x001E0108
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41700000
	.asciz "?fffBp"
	.balign 4
	.asciz "?s33"
	.byte 0x02, 0xFF, 0xFF
	.4byte 0x80FF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0x80000000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9AF0
lbl_801C9AF0:

	# ROM: 0x1C6AF0
	.4byte 0x0008000C
	.4byte 0x0008000D
	.4byte 0x0008000E
	.4byte 0x0008000F
	.4byte 0x00080010
	.4byte 0x00080011
	.4byte 0x00080012
	.4byte 0x00080013
	.4byte 0x00080014
	.4byte 0x00080015

.global lbl_801C9B18
lbl_801C9B18:

	# ROM: 0x1C6B18
	.4byte 0x001E0000
	.4byte 0x40533333
	.4byte 0x428C0000
	.4byte 0x40E00000
	.4byte 0
	.4byte 0xBD4CCCCD
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x41F00000
	.4byte 0x3F7AE148
	.4byte 0x0002FFFF
	.4byte 0xFFFFFFFF
	.4byte 0x40FF0000
	.4byte 0
	.4byte 0x0000FF80
	.4byte lbl_8000FF40
	.4byte 0x20000000
	.4byte 0
	.4byte 0

.global lbl_801C9B68
lbl_801C9B68:

	# ROM: 0x1C6B68
	.4byte 0xC2040000
	.4byte 0
	.4byte 0

.global lbl_801C9B74
lbl_801C9B74:

	# ROM: 0x1C6B74
	.4byte 0
	.4byte 0x42C80000
	.4byte 0

.global lbl_801C9B80
lbl_801C9B80:

	# ROM: 0x1C6B80
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9B94
lbl_801C9B94:

	# ROM: 0x1C6B94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9BA8
lbl_801C9BA8:

	# ROM: 0x1C6BA8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9BBC
lbl_801C9BBC:

	# ROM: 0x1C6BBC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9BF8
lbl_801C9BF8:

	# ROM: 0x1C6BF8
	.4byte 0
	.4byte 0x43960000
	.4byte 0

.global lbl_801C9C04
lbl_801C9C04:

	# ROM: 0x1C6C04
	.4byte 0xC3480000
	.4byte 0x43960000
	.4byte 0
	.4byte 0x43480000
	.4byte 0x43960000
	.4byte 0

.global lbl_801C9C1C
lbl_801C9C1C:

	# ROM: 0x1C6C1C
	.4byte 0xC3480000
	.4byte 0x43960000
	.4byte 0
	.4byte 0x43480000
	.4byte 0x43960000
	.4byte 0
	.4byte 0
	.4byte 0x43960000
	.4byte 0

.global lbl_801C9C40
lbl_801C9C40:

	# ROM: 0x1C6C40
	.4byte lbl_801C9BF8
	.4byte lbl_801C9C04
	.4byte lbl_801C9C1C
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001

.global lbl_801C9C78
lbl_801C9C78:

	# ROM: 0x1C6C78
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000014
	.4byte 0x00000019
	.4byte 0xFFFFFFFF

.global lbl_801C9C98
lbl_801C9C98:

	# ROM: 0x1C6C98
	.4byte 0x001E0108
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41700000
	.asciz "?fffBp"
	.balign 4
	.asciz "?s33"
	.byte 0x01, 0xFF, 0xFF
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9CE8
lbl_801C9CE8:

	# ROM: 0x1C6CE8
	.4byte 0x3F800000
	.4byte 0x3F000000
	.4byte 0x3EAAAAAB

.global lbl_801C9CF4
lbl_801C9CF4:

	# ROM: 0x1C6CF4
	.4byte 0
	.4byte 0
	.4byte 0xBF800000

.global lbl_801C9D00
lbl_801C9D00:

	# ROM: 0x1C6D00
	.4byte 0
	.4byte 0
	.4byte 0xBF800000
	.4byte 0x3F800000
	.4byte 0x3F000000
	.4byte 0x3EAAAAAB

.global lbl_801C9D18
lbl_801C9D18:

	# ROM: 0x1C6D18
	.4byte 0x42E40000
	.4byte 0x42A80000
	.4byte 0x43E70000
	.4byte 0x42A80000
	.4byte 0x42E40000
	.4byte 0x43C60000
	.4byte 0x43E70000
	.4byte 0x43C60000

.global lbl_801C9D38
lbl_801C9D38:

	# ROM: 0x1C6D38
	.4byte 0xC2C40000
	.4byte 0x42A80000
	.4byte 0x44288000
	.4byte 0x42A80000
	.4byte 0xC2C40000
	.4byte 0x43C60000
	.4byte 0x44288000
	.4byte 0x43C60000

.global lbl_801C9D58
lbl_801C9D58:

	# ROM: 0x1C6D58
	.4byte 0x430C0000
	.4byte 0x42A80000
	.4byte 0x43DA0000
	.4byte 0x42A80000

.global lbl_801C9D68
lbl_801C9D68:

	# ROM: 0x1C6D68
	.4byte 0xC2F80000
	.4byte 0x42A80000
	.4byte 0x442F0000
	.4byte 0x42A80000

.global lbl_801C9D78
lbl_801C9D78:

	# ROM: 0x1C6D78
	.4byte 0x80808000
	.4byte 0x1A84FF00
	.4byte 0xFF1A2D00
	.4byte 0x0AB43C00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC2880000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x41600000
	.4byte 0x42800000
	.4byte 0x41600000
	.4byte 0x42400000
	.4byte 0x41600000
	.4byte 0x41D00000
	.4byte 0x41600000
	.4byte 0x42A00000
	.4byte 0xC1400000
	.4byte 0x42800000
	.4byte 0xC1400000
	.4byte 0x42400000
	.4byte 0xC1400000
	.4byte 0x41D00000
	.4byte 0xC1400000
	.4byte 0xC1800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41C00000
	.4byte 0x42080000
	.4byte 0x41C00000
	.4byte 0xC2080000
	.4byte 0xC1800000
	.4byte 0xC2000000
	.4byte 0xC1800000
	.4byte 0x42000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC2C80000
	.4byte 0
	.4byte 0x42E00000
	.4byte 0x41600000
	.4byte 0x42C00000
	.4byte 0x41600000
	.4byte 0x42A00000
	.4byte 0x41600000
	.4byte 0x42680000
	.4byte 0x41600000
	.4byte 0x42E00000
	.4byte 0xC1400000
	.4byte 0x42C00000
	.4byte 0xC1400000
	.4byte 0x42A00000
	.4byte 0xC1400000
	.4byte 0x42680000
	.4byte 0xC1400000
	.4byte 0xC2400000
	.4byte 0
	.4byte 0x41800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801C9F08
lbl_801C9F08:

	# ROM: 0x1C6F08
	.4byte 0xC1C00000
	.4byte 0x42080000
	.4byte 0xC1C00000
	.4byte 0x42080000

.global lbl_801C9F18
lbl_801C9F18:

	# ROM: 0x1C6F18
	.4byte 0xC2400000
	.4byte 0xC2000000
	.4byte 0xC2400000
	.4byte 0xC2000000
	.4byte 0x42180000
	.4byte 0x41400000
	.4byte 0x42580000
	.4byte 0xC1400000
	.4byte 0x428C0000
	.4byte 0x41400000
	.4byte 0x00080038
	.4byte 0x00080039
	.4byte 0x0008003A
	.4byte 0x0008003B
	.4byte 0x0008003C
	.4byte 0x0008003D
	.4byte 0x0008003E
	.4byte 0x0008003F
	.4byte 0x00080040
	.4byte 0x00080041
	.4byte 0x00080042
	.4byte 0x00080043
	.4byte 0x00080044
	.4byte 0x00080032
	.4byte 0x00080033
	.4byte 0x0008002F
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002E
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002D
	.4byte 0x05F005E6
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC0000
	.4byte 0x00080034
	.4byte 0x00080035
	.4byte 0x00080030
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002E
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002B
	.4byte 0x0008002D
	.4byte 0x05F005E6
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC05DC
	.4byte 0x05DC0000
	.4byte 0

.global lbl_801CA000
lbl_801CA000:

	# ROM: 0x1C7000
	.4byte 0x002C0000
	.4byte 0x002C0001
	.4byte 0x002C0002
	.4byte 0x002C0003
	.4byte 0x002C0004
	.4byte 0x002C0005
	.4byte 0x002C0006

.global lbl_801CA01C
lbl_801CA01C:

	# ROM: 0x1C701C
	.4byte 0x00320000
	.4byte 0x40000000
	.4byte 0x41F00000
	.4byte 0x43340000
	.4byte 0
	.4byte 0xBE4CCCCD
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F4CCCCD
	.4byte 0x41F00000
	.asciz "?s33"
	.byte 0x03, 0x80, 0xC0
	.4byte 0xFFFFFFFF
	.4byte 0x40FFFF60
	.4byte 0x80FF0000
	.4byte 0x000080C0
	.4byte 0xFF00FF40
	.4byte 0x20008010
	.4byte 0x10000000
	.4byte 0
	.4byte 0

.global lbl_801CA070
lbl_801CA070:

	# ROM: 0x1C7070
	.4byte lbl_800BCE78
	.4byte 0
	.4byte lbl_800BCF14
	.4byte lbl_800BCF78
	.4byte lbl_800BCFC0
	.4byte lbl_800BD068
	.4byte lbl_800BD0B0
	.4byte lbl_800BD0F8
	.4byte lbl_800BD300
	.4byte lbl_800BD328
	.4byte lbl_800BD2B0
	.4byte lbl_800BD378
	.4byte lbl_800BD3A0

.global lbl_801CA0A4
lbl_801CA0A4:

	# ROM: 0x1C70A4
	.4byte lbl_800BD130
	.4byte lbl_800BD17C
	.4byte lbl_800BD1B0
	.4byte lbl_800BD1E4
	.4byte lbl_800BD230
	.4byte func_800BD298
	.4byte lbl_800BD264
	.4byte lbl_800BD280
	.4byte 0

.global lbl_801CA0C8
lbl_801CA0C8:

	# ROM: 0x1C70C8
	.4byte 0x00080053
	.4byte 0x00080055
	.4byte 0x00080055
	.4byte 0x00080055
	.4byte 0x00080054
	.4byte 0x00080054
	.4byte 0x00080057
	.4byte 0x00080056
	.4byte 0x3C505050
	.4byte 0x5050141E
	.asciz "FFFF"
	.byte 0x08, 0x00, 0x58
	.4byte 0x00080059
	.4byte 0x0008005A
	.4byte 0x0008005B
	.4byte 0x0008005C
	.4byte 0x0008005D
	.4byte 0x0008005E
	.4byte 0x0008005F
	.4byte 0x00080060
	.4byte 0x00080061
	.4byte 0x00080062
	.4byte 0x00080063
	.4byte 0x00080064
	.4byte 0x000B003D
	.4byte 0x000B003E
	.4byte 0x000B003F
	.4byte 0x000B0040

.global lbl_801CA138
lbl_801CA138:

	# ROM: 0x1C7138
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CA148
lbl_801CA148:

	# ROM: 0x1C7148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CA158
lbl_801CA158:

	# ROM: 0x1C7158
	.4byte 0x001E0108
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41700000
	.asciz "?fffBp"
	.balign 4
	.asciz "?s33"
	.byte 0x01, 0xFF, 0xFF
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CA1A8
lbl_801CA1A8:

	# ROM: 0x1C71A8
	.4byte 0
	.4byte 0xC28A999A
	.4byte 0xC28D6666
	.4byte 0xC274CCCD
	.4byte 0xC28A999A
	.4byte 0x420D3333
	.4byte 0x4274CCCD
	.4byte 0xC28A999A
	.4byte 0x420D3333

.global lbl_801CA1CC
lbl_801CA1CC:

	# ROM: 0x1C71CC
	.4byte 0
	.4byte 0xC30C0000
	.4byte 0

.global lbl_801CA1D8
lbl_801CA1D8:

	# ROM: 0x1C71D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x008C0003
	.4byte 0x00330003
	.4byte 0x00B70003
	.4byte 0x00ED0003
	.4byte 0x00E60003
	.4byte 0x001E0003
	.4byte 0x00170003
	.4byte 0x00E00003
	.4byte 0x008C0003
	.4byte 0x008C0003
	.4byte 0x008C0003
	.4byte 0x008C0003
	.4byte 0x008C0003

.global capsuleRelatedStruct # RAM 0x801CA21C [capsule/orb](structs are 0x1C in size. 0x14 is price)
capsuleRelatedStruct:

	# ROM: 0x1C721C
	.4byte 0x000B0000
	.4byte 0x000B001C
	.4byte 0x00390000
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x41000000

	.4byte 0x000B0001
	.4byte 0x000B001C
	.4byte 0x00390001
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x42000000

	.4byte 0x000B0002
	.4byte 0x000B001C
	.4byte 0x00390002
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x41000000

	.4byte 0x000B0003
	.4byte 0x000B001C
	.4byte 0x00390003
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x41000000

	.4byte 0x000B0004
	.4byte 0x000B001C
	.4byte 0x00390004
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x42000000

	.4byte 0x000B0005
	.4byte 0x000B001C
	.4byte 0x00390005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x43000000

	.4byte 0x000B0006
	.4byte 0x000B001C
	.4byte 0x00390006
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000014
	.4byte 0x45010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B0007
	.4byte 0x000B001D
	.4byte 0x00390007
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x41000000

	.4byte 0x000B0008
	.4byte 0x000B001D
	.4byte 0x00390008
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x41000000

	.4byte 0x000B0009
	.4byte 0x000B001D
	.4byte 0x00390009
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x42000000

	.4byte 0x000B000A
	.4byte 0x000B001D
	.4byte 0x0039000A
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x44000000

	.4byte 0x000B000B
	.4byte 0x000B001D
	.4byte 0x0039000B
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x45010000

	.4byte 0x000B000C
	.4byte 0x000B001D
	.4byte 0x0039000C
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x43000000

	.4byte 0x000B000D
	.4byte 0x000B001D
	.4byte 0x0039000D
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0
	.4byte 0x42010000

	.4byte 0x000B000E
	.4byte 0x000B001D
	.4byte 0x0039000E
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x41010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B000F
	.4byte 0x000B001E
	.4byte 0x0039000F
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x42000000

	.4byte 0x000B0010
	.4byte 0x000B001E
	.4byte 0x00390010
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x43000000

	.4byte 0x000B0011
	.4byte 0x000B001D
	.4byte 0x00390011
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x42000000

	.4byte 0x000B0012
	.4byte 0x000B001E
	.4byte 0x00390012
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x43000000

	.4byte 0x000B0013
	.4byte 0x000B001E
	.4byte 0x00390013
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x43000000

	.4byte 0x000B0014
	.4byte 0x000B001E
	.4byte 0x00390014
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x42000000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B0015
	.4byte 0x000B001F
	.4byte 0x00390015
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x0000000F
	.4byte 0x44010000

	.4byte 0x000B0016
	.4byte 0x000B001F
	.4byte 0x00390016
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x44000000

	.4byte 0x000B0017
	.4byte 0x000B001F
	.4byte 0x00390017
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x0000000F
	.4byte 0x44010000

	.4byte 0x000B0018
	.4byte 0x000B001F
	.4byte 0x00390018
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x43010000

	.4byte 0x000B0019
	.4byte 0x000B0020
	.4byte 0x00390019
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x43000000

	.4byte 0x000B001A
	.4byte 0x000B001F
	.4byte 0x0039001A
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000014
	.4byte 0x45010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001B
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x45010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001C
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x5A010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001D
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x5A010000

	.4byte 0
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

	.4byte 0x000B001B
	.4byte 0x000B001F
	.4byte 0x0039001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x5A010000

.global lbl_801CA6D0
lbl_801CA6D0:

	# ROM: 0x1C76D0
	.4byte 0x41610041
	.4byte 0x61004262
	.4byte 0x00416100
	.4byte 0x44630041
	.4byte 0x61004363
	.4byte 0x00416100
	.4byte 0x42610043
	.4byte 0x62000041
	.4byte 0x61004161
	.4byte 0x00426200
	.4byte 0x41620043
	.4byte 0x62004161
	.4byte 0x00436200
	.4byte 0x41610042
	.4byte 0x63004361
	.4byte 0x00004264
	.4byte 0x00446400
	.4byte 0x43640042
	.4byte 0x63004163
	.4byte 0x00436300
	.4byte 0x41630043
	.4byte 0x64004363
	.4byte 0x00426300
	.4byte 0x00446100
	.4byte 0x44610043
	.4byte 0x61004161
	.4byte 0x00426100
	.4byte 0x43620042
	.4byte 0x61004461
	.4byte 0x80416100
	.4byte 0x4462001E
	.4byte 0x41610041
	.4byte 0x61004264
	.4byte 0x00416100
	.4byte 0x42610043
	.4byte 0x62004262
	.4byte 0x00426300
	.4byte 0x41630043
	.4byte 0x62000041
	.4byte 0x62004162
	.4byte 0x00436300
	.4byte 0x42610041
	.4byte 0x63004363
	.4byte 0x00436200
	.4byte 0x43630043
	.4byte 0x63004363
	.4byte 0x00004162
	.4byte 0x00426180
	.4byte 0x42618041
	.4byte 0x62004261
	.4byte 0x00416200
	.4byte 0x43610044
	.4byte 0x61804362
	.4byte 0x00426100
	.4byte 0x28456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640000
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64000045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00004364
	.4byte 0x00416400
	.4byte 0x42640043
	.4byte 0x64004164
	.4byte 0x00426400
	.4byte 0x42640042
	.4byte 0x64004264
	.4byte 0x00426400
	.4byte 0x00416200
	.4byte 0x43610041
	.4byte 0x61004264
	.4byte 0x00416200
	.4byte 0x43620042
	.4byte 0x63004161
	.4byte 0x00416100
	.4byte 0x42630000
	.4byte 0x43630042
	.4byte 0x61004161
	.4byte 0x00416300
	.4byte 0x41610042
	.4byte 0x62004363
	.4byte 0x00426100
	.4byte 0x41630041
	.4byte 0x61000043
	.4byte 0x63004263
	.4byte 0x00416100
	.4byte 0x42620043
	.4byte 0x63004262
	.4byte 0x00416100
	.4byte 0x44610042
	.4byte 0x63004363
	.4byte 0x00004262
	.4byte 0x00436100
	.4byte 0x43630042
	.4byte 0x62004261
	.4byte 0x00436200
	.4byte 0x41610043
	.4byte 0x63004263
	.4byte 0x00416100
	.4byte 0x00436200
	.4byte 0x42630041
	.4byte 0x61804262
	.4byte 0x00436300
	.4byte 0x43620041
	.4byte 0x61004261
	.4byte 0x80416100
	.4byte 0x426300F6
	.4byte 0x43640043
	.4byte 0x64004264
	.4byte 0x00436400
	.4byte 0x42640042
	.4byte 0x64004364
	.4byte 0x00436400
	.4byte 0x42640043
	.4byte 0x64000042
	.4byte 0x63004362
	.4byte 0x00416300
	.4byte 0x42630043
	.4byte 0x63004263
	.4byte 0x00426200
	.4byte 0x43630041
	.4byte 0x63004263
	.4byte 0x00004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640000
	.4byte 0x42630043
	.4byte 0x61004363
	.4byte 0x00426200
	.4byte 0x43620041
	.4byte 0x61004161
	.4byte 0x00436300
	.4byte 0x41610042
	.4byte 0x62000043
	.4byte 0x64004364
	.4byte 0x00426400
	.4byte 0x43640042
	.4byte 0x64004164
	.4byte 0x00426400
	.4byte 0x43640043
	.4byte 0x64004264
	.4byte 0x00004264
	.4byte 0x00436400
	.4byte 0x42640043
	.4byte 0x64004364
	.4byte 0x00426400
	.4byte 0x42640042
	.4byte 0x64004264
	.4byte 0x00416400
	.4byte 0x00426400
	.4byte 0x43630043
	.4byte 0x64004362
	.4byte 0x00416100
	.4byte 0x41610043
	.4byte 0x61004364
	.4byte 0x00426100
	.4byte 0x41620000
	.4byte 0x43630042
	.4byte 0x62004262
	.4byte 0x00426300
	.4byte 0x41620042
	.4byte 0x63004261
	.4byte 0x00416300
	.4byte 0x41620041
	.4byte 0x62000043
	.4byte 0x63004263
	.4byte 0x00426200
	.4byte 0x42620041
	.4byte 0x61004161
	.4byte 0x00426200
	.4byte 0x41630043
	.4byte 0x62004161
	.4byte 0x00004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640000
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64000045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00004461
	.4byte 0x00446100
	.4byte 0x44610041
	.4byte 0x63004362
	.4byte 0x00426400
	.4byte 0x41610044
	.4byte 0x61004161
	.4byte 0x00426200
	.4byte 0x00416100
	.4byte 0x42630043
	.4byte 0x63004262
	.4byte 0x00416100
	.4byte 0x43630041
	.4byte 0x61004461
	.4byte 0x00426300
	.4byte 0x41630000
	.4byte 0x42630041
	.4byte 0x62004162
	.4byte 0x00426300
	.4byte 0x42610041
	.4byte 0x63004262
	.4byte 0x00416200
	.4byte 0x43630042
	.4byte 0x62000045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x00426300
	.4byte 0x42630041
	.4byte 0x61004162
	.4byte 0x00426200
	.4byte 0x42630041
	.4byte 0x62004261
	.4byte 0x00436100
	.4byte 0x43610000
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64000045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640000
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64000045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0x45640045
	.4byte 0x64004564
	.4byte 0x00456400
	.4byte 0
	.4byte 0x00380000
	.4byte 0x00380001
	.4byte 0x00380002
	.4byte 0x00380003
	.4byte 0x00380004
	.4byte 0x00380005
	.4byte 0x00380006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00380007
	.4byte 0x00380008
	.4byte 0x00380009
	.4byte 0x0038000A
	.4byte 0x0038000B
	.4byte 0x0038000C
	.4byte 0x0038000D
	.4byte 0x0038000E
	.4byte 0
	.4byte 0
	.4byte 0x0038000F
	.4byte 0x00380010
	.4byte 0x00380011
	.4byte 0x00380012
	.4byte 0x00380013
	.4byte 0x00380014
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00380015
	.4byte 0x00380016
	.4byte 0x00380017
	.4byte 0x00380018
	.4byte 0x00380019
	.4byte 0x0038001A
	.4byte 0x0038001B
	.4byte 0x0038001C
	.4byte 0x0038001D
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0039001E
	.4byte 0x0039001E
	.4byte 0x00380000
	.4byte 0x00380001
	.4byte 0x00380002
	.4byte 0x00380003
	.4byte 0x00380004
	.4byte 0x00380005
	.4byte 0x00380006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00380026
	.4byte 0x00380008
	.4byte 0x00380027
	.4byte 0x0038000A
	.4byte 0x00380028
	.4byte 0x0038000C
	.4byte 0x0038000D
	.4byte 0x0038000E
	.4byte 0
	.4byte 0
	.4byte 0x0038000F
	.4byte 0x00380010
	.4byte 0x00380011
	.4byte 0x00380012
	.4byte 0x00380013
	.4byte 0x00380014
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00380015
	.4byte 0x00380016
	.4byte 0x00380017
	.4byte 0x00380018
	.4byte 0x00380019
	.4byte 0x0038001A
	.4byte 0x0038001B
	.4byte 0x0038001C
	.4byte 0x0038001D
	.4byte 0
	.4byte 0x0039001E
	.4byte 0x0039001E
	.4byte 0x0039001E

.global lbl_801CAD60
lbl_801CAD60:

	# ROM: 0x1C7D60
	.4byte 0xC0FFC0FF
	.4byte 0xFFFFC0FF
	.4byte 0xFFC0C0FF
	.4byte 0xC0FFFFFF

.global lbl_801CAD70
lbl_801CAD70:

	# ROM: 0x1C7D70
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0x41A00000

.global lbl_801CAD7C
lbl_801CAD7C:

	# ROM: 0x1C7D7C
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41200000
	.4byte 0x42700000

.global lbl_801CAD94
lbl_801CAD94:

	# ROM: 0x1C7D94
	.4byte 0xC0FFC0FF
	.4byte 0xFFFFC0FF
	.4byte 0xFFC0C0FF
	.4byte 0xC0FFFFFF

.global lbl_801CADA4
lbl_801CADA4:

	# ROM: 0x1C7DA4
	.4byte 0x3F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0
	.4byte 0x3F99999A
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0xC3960000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x43960000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0xC4480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x44480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0x43FA0000
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0x43FA0000
	.4byte 0xC3960000
	.4byte 0
	.4byte 0
	.4byte 0x43FA0000
	.4byte 0x43960000
	.4byte 0
	.4byte 0
	.4byte 0x43FA0000
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0x43FA0000
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0x43FA0000
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x43FA0000
	.4byte 0x43960000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x43FA0000
	.4byte 0xC3960000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0x43FA0000
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3E4CCCCD
	.4byte 0x43FA0000
	.4byte 0xC4480000
	.4byte 0
	.4byte 0
	.4byte 0x43FA0000
	.4byte 0x44480000
	.4byte 0
	.4byte 0
	.4byte 0x43FA0000
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0x43FA0000
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3F4CCCCD
	.4byte 0x43FA0000
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x43FA0000
	.4byte 0x44480000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x43FA0000
	.4byte 0xC4480000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x3F000000
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x3F333333
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x3F333333
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x3E99999A
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x3E99999A
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x3F333333
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x3F333333
	.4byte 0x43FA0000
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_801CB0A4
lbl_801CB0A4:

	# ROM: 0x1C80A4
	.4byte 0x00027100
	.4byte 0x0001D4C0
	.4byte 0x0000EA60
	.4byte 0x00015F90
	.4byte 0x0001D4C0
	.4byte 0x0001D4C0
	.4byte 0x00015F90
	.4byte 0x0001D4C0
	.4byte 0x0001D4C0
	.4byte 0x0001D4C0

.global lbl_801CB0CC
lbl_801CB0CC:

	# ROM: 0x1C80CC
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41200000
	.4byte 0x42700000

.global lbl_801CB0E4
lbl_801CB0E4:

	# ROM: 0x1C80E4
	.4byte 0xC0FFC0FF
	.4byte 0xFFFFC0FF
	.4byte 0xFFC0C0FF
	.4byte 0xC0FFFFFF
	.4byte 0x00000046
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0x00000046
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0
	.4byte 0
	.4byte 0x00000046
	.4byte 0x00000014
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0
	.4byte 0x00000014
	.4byte 0
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0
	.4byte 0
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000028
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000028
	.4byte 0
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0
	.4byte 0x00000028
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000014
	.4byte 0x00000019
	.4byte 0x0000001E
	.4byte 0x00000023
	.4byte 0x00000028
	.4byte 0x0000002D
	.4byte 0x00000032
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0000001A
	.4byte 0x0000000F
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00000023

.global lbl_801CB250
lbl_801CB250:

	# ROM: 0x1C8250
	.4byte 0x000B0048
	.4byte 0x000B0049
	.4byte 0x000B004A

.global lbl_801CB25C
lbl_801CB25C:

	# ROM: 0x1C825C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0xFF8080FF
	.4byte 0x8080FFFF
	.4byte 0xFF80FFFF
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0x41F00000
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0xC1F00000
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0
	.4byte 0x42A80000
	.4byte 0x429C0000
	.4byte 0x42A00000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001

.global lbl_801CB2EC
lbl_801CB2EC:

	# ROM: 0x1C82EC
	.4byte 0x80FF80FF
	.4byte 0xC0FFC0FF
	.4byte 0xFFFF80FF
	.4byte 0xFFFFC0FF
	.4byte 0xFF8080FF
	.4byte 0xFFC0C0FF
	.4byte 0x80FFFFFF
	.4byte 0xC0FFFFFF

.global lbl_801CB30C
lbl_801CB30C:

	# ROM: 0x1C830C
	.4byte 0xBF000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xBF000000
	.4byte 0

.global lbl_801CB33C
lbl_801CB33C:

	# ROM: 0x1C833C
	.4byte 0
	.4byte 0
	.4byte 0x3E800000
	.4byte 0
	.4byte 0x3E800000
	.4byte 0x3E800000
	.4byte 0
	.4byte 0x3E800000
	.4byte 0

.global lbl_801CB360
lbl_801CB360:

	# ROM: 0x1C8360
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CB370
lbl_801CB370:

	# ROM: 0x1C8370
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CB380
lbl_801CB380:

	# ROM: 0x1C8380
	.4byte lbl_800D460C
	.4byte lbl_800D53E4
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800D540C
	.4byte lbl_800D61DC
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800D6204
	.4byte lbl_800D6FEC
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800D7018
	.4byte lbl_800D7DCC
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800D7DD0
	.4byte lbl_800D9004
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000E0000
	.4byte lbl_800D9008
	.4byte lbl_800DA850
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800DA878
	.4byte lbl_800DD998
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800DDAF8
	.4byte lbl_800DEE50
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800DEE74
	.4byte lbl_800DF670
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800DF694
	.4byte lbl_800E03A8
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800E03C8
	.4byte lbl_800E15D4
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000E0000
	.4byte lbl_800E15F8
	.4byte lbl_800E4104
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800E4DC8
	.4byte lbl_800E5664
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000E0000
	.4byte lbl_800E5684
	.4byte lbl_800E6C5C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x000C0000
	.4byte lbl_800E6C60
	.4byte lbl_800E76D0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800E76F4
	.4byte lbl_800E8C60
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800E9550
	.4byte lbl_800EA094
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800EA0C0
	.4byte lbl_800EAFFC
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000C0000
	.4byte lbl_800EB020
	.4byte lbl_800EBF98
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800EBF9C
	.4byte lbl_800EE3C4
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000E0000
	.4byte lbl_800EE3E8
	.4byte lbl_800EFE80
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800EFE84
	.4byte lbl_800F0ED4
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000D0000
	.4byte lbl_800F0ED8
	.4byte lbl_800F568C
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000C0000
	.4byte lbl_800F5690
	.4byte lbl_800F8BBC
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000C0000
	.4byte lbl_800F8CA4
	.4byte lbl_800F8CE0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_800F8CE4
	.4byte lbl_800F91F8
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00100000
	.4byte lbl_800FFF08
	.4byte lbl_80102990
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00100000
	.4byte lbl_801029BC
	.4byte lbl_80104498
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_801044C4
	.4byte lbl_80107598
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000F0000
	.4byte lbl_801077F4
	.4byte lbl_801087F0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00100000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_80108814
	.4byte lbl_80109118
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_8010911C
	.4byte lbl_80109804
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte lbl_80109808
	.4byte lbl_8010982C
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00890000
	.4byte 0x00300000
	.4byte 0x00B40000
	.4byte 0x00EA0000
	.4byte 0x00E30000
	.4byte 0x00140000
	.4byte 0x00DD0000
	.4byte 0x002A0000
	.4byte 0x00C60000
	.4byte 0x00AD0000
	.4byte 0x00AD0000
	.4byte 0x00AD0000
	.4byte 0x00AD0000
	.4byte 0x008C0000
	.4byte 0x00330000
	.4byte 0x00B70000
	.4byte 0x00ED0000
	.4byte 0x00E60000
	.4byte 0x00170000
	.4byte 0x00E00000
	.4byte 0x002D0000
	.4byte 0x00C90000
	.4byte 0x00B00000
	.4byte 0x00B00000
	.4byte 0x00B00000
	.4byte 0x00B00000
	.4byte 0x008C0006
	.4byte 0x00330006
	.4byte 0x00B70006
	.4byte 0x00ED0006
	.4byte 0x00E60006
	.4byte 0x00170006
	.4byte 0x00E00006
	.4byte 0x002D0006
	.4byte 0x00C90006
	.4byte 0x00B00006
	.4byte 0x00B00006
	.4byte 0x00B00006
	.4byte 0x00B00006

.global lbl_801CB824
lbl_801CB824:

	# ROM: 0x1C8824
	.4byte 0x0008000C
	.4byte 0x0008000D
	.4byte 0x0008000E
	.4byte 0x0008000F
	.4byte 0x00080010
	.4byte 0x00080011
	.4byte 0x00080012
	.4byte 0x00080013
	.4byte 0x00080014
	.4byte 0x00080015
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1F00001
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0x41200000
	.4byte 0xC1200000
	.4byte 0
	.4byte 0xC1F00001
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000
	.4byte 0
	.4byte 0xC1200000
	.4byte 0xC1A00000

.global lbl_801CB8C4
lbl_801CB8C4:

	# ROM: 0x1C88C4
	.4byte 0xFF7F7FFF
	.4byte 0xFF7F40FF
	.4byte 0xFFFF7FFF
	.4byte 0x7FFF7FFF
	.4byte 0x7F7FFFFF
	.4byte 0x4040FFFF
	.4byte 0xFF7FFFFF

.global lbl_801CB8E0
lbl_801CB8E0:

	# ROM: 0x1C88E0
	.4byte 0
	.4byte 0x42C80000
	.4byte 0
	.4byte lbl_800E4128
	.4byte lbl_800E415C
	.4byte lbl_800E4190
	.4byte lbl_800E41C4
	.4byte lbl_800E41F8
	.4byte lbl_800E44EC
	.4byte lbl_800E47E0
	.4byte lbl_800E4AD4

.global lbl_801CB90C
lbl_801CB90C:

	# ROM: 0x1C890C
	.asciz "itemhook_oya"
	.balign 4
	.4byte 0
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0
	.4byte 0xC3070000
	.4byte 0x41F00001
	.4byte 0xC1A00000
	.4byte 0xC2F00001
	.4byte 0x42A00000
	.4byte 0
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0
	.4byte 0xC2F00001
	.4byte 0x42200000
	.4byte 0xC1A00000
	.4byte 0xC3020000
	.4byte 0x42A00000
	.4byte 0
	.4byte 0xC30C0000
	.4byte 0x41F00001
	.4byte 0
	.4byte 0xC2C80000
	.4byte 0x42480000
	.4byte 0
	.4byte 0xC2D1FFFF
	.4byte 0x428C0000
	.4byte 0xC1200000
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0xC1200000
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0xC1200000
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0xC1200000
	.4byte 0xC3020000
	.4byte 0x41F00001
	.4byte 0x3F99999A
	.4byte 0x40000000
	.4byte 0x43160000
	.4byte 0x3F99999A
	.4byte 0x40000000
	.4byte 0x442F0000

.global lbl_801CB9D0
lbl_801CB9D0:

	# ROM: 0x1C89D0
	.asciz "itemhook_C"

.global lbl_801CB9DB
lbl_801CB9DB:

	# ROM: 0x1C89DB
	.byte 0x69
	.asciz "temhook_R"

.global lbl_801CB9E6
lbl_801CB9E6:

	# ROM: 0x1C89E6
	.byte 0x69, 0x74
	.asciz "emhook_L"
	.balign 4

.global lbl_801CB9F4
lbl_801CB9F4:

	# ROM: 0x1C89F4
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0
	.4byte 0

.global lbl_801CBA14
lbl_801CBA14:

	# ROM: 0x1C8A14
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0

.global lbl_801CBA34
lbl_801CBA34:

	# ROM: 0x1C8A34
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42A00000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0xC2A00000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x42A00000
	.4byte 0
	.4byte 0xC2A00000
	.4byte 0xC2A00000
	.4byte 0
	.4byte 0xC2A00000
	.4byte 0x42C80000
	.4byte 0
	.4byte 0
	.4byte 0xC2C80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42C80000
	.4byte 0
	.4byte 0
	.4byte 0xC2C80000

.global lbl_801CBAA0
lbl_801CBAA0:

	# ROM: 0x1C8AA0
	.asciz "itemhook_c"

.global lbl_801CBAAB
lbl_801CBAAB:

	# ROM: 0x1C8AAB
	.byte 0x69
	.asciz "temhook_T"

.global lbl_801CBAB6
lbl_801CBAB6:

	# ROM: 0x1C8AB6
	.byte 0x69, 0x74
	.asciz "emhook_S"

.global lbl_801CBAC1
lbl_801CBAC1:

	# ROM: 0x1C8AC1
	.byte 0x69, 0x74, 0x65
	.asciz "mhook_G"
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x428C0000
	.4byte 0x43050000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000
	.4byte 0x42BC0000

.global lbl_801CBB00
lbl_801CBB00:

	# ROM: 0x1C8B00
	.4byte 0x003A0001
	.4byte 0x003A0002
	.4byte 0x003A0003
	.4byte 0x003A0004

.global lbl_801CBB10
lbl_801CBB10:

	# ROM: 0x1C8B10
	.4byte 0x003A0009
	.4byte 0x003A000A
	.4byte 0x003A000B
	.4byte 0x003A000C

.global lbl_801CBB20
lbl_801CBB20:

	# ROM: 0x1C8B20
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x000B0030
	.4byte 0x000B0031
	.4byte 0x000B0032
	.4byte 0x000B0033
	.4byte 0x003B0005
	.4byte 0x003B0006
	.4byte 0x003B0007
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003

.global lbl_801CBB8C
lbl_801CBB8C:

	# ROM: 0x1C8B8C
	.4byte 0x003B0005
	.4byte 0x003B0006
	.4byte 0x003B0007

.global lbl_801CBB98
lbl_801CBB98:

	# ROM: 0x1C8B98
	.4byte 0x00010203
	.4byte 0x0405FFFF
	.4byte 0xFFFF0000

.global lbl_801CBBA4
lbl_801CBBA4:

	# ROM: 0x1C8BA4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000006

.global lbl_801CBBE4
lbl_801CBBE4:

	# ROM: 0x1C8BE4
	.4byte 0x430A0000
	.4byte 0x42B40000
	.4byte 0
	.4byte 0x43900000
	.4byte 0x42B40000
	.4byte 0
	.4byte 0x43DB0000
	.4byte 0x42B40000
	.4byte 0

.global lbl_801CBC08
lbl_801CBC08:

	# ROM: 0x1C8C08
	.4byte lbl_801016B4
	.4byte lbl_801017FC
	.4byte lbl_80101940
	.4byte lbl_80101AB4
	.4byte lbl_80101C00
	.4byte lbl_80101DA0
	.4byte lbl_80101F74
	.4byte 0x42340000
	.4byte 0xC2340000
	.4byte 0
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0x420C0000
	.4byte 0xC2B40000
	.4byte 0
	.4byte 0xC2040000
	.4byte 0x3FC00000
	.4byte 0x40400000
	.4byte 0x432F0000
	.4byte 0x3FC00000
	.4byte 0x40400000
	.4byte 0x43160000
	.4byte 0x3F99999A
	.4byte 0x40000000
	.4byte 0x43960000
	.4byte 0x3F99999A
	.4byte 0x40000000
	.4byte 0x43FA0000
	.4byte 0x3F99999A
	.4byte 0x40000000
	.4byte 0x442F0000
	.4byte 0xFFFF4080
	.4byte 0xFF00FF80
	.4byte 0xFF80FF80
	.4byte 0x000B0034
	.4byte 0x000B0035
	.4byte 0x000B0036
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08FF7472
	.asciz "ee_fook"
	.4byte 0xFD015258
	.asciz ":%.4f RY:%.4f RZ:%.4f"
	.byte 0xFD, 0x01
	.asciz "CX:%.4f CY:%.4f CZ:%.4f"
	.4byte 0xFD015A4D
	.asciz ":%.4f"
	.balign 4

.global lbl_801CBCF0
lbl_801CBCF0:

	# ROM: 0x1C8CF0
	.4byte 0x42A00000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x43480000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x43480000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42C80000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x43480000
	.4byte 0
	.4byte 0x42DC0000
	.4byte 0x435C0000
	.4byte 0
	.4byte 0x42A00000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42DC0000
	.4byte 0x42F00001
	.4byte 0x42480000
	.4byte 0x42DC0000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42DC0000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42DC0000
	.4byte 0x43160000
	.4byte 0
	.4byte 0x42DC0000
	.4byte 0x43160000
	.4byte 0

.global lbl_801CBD8C
lbl_801CBD8C:

	# ROM: 0x1C8D8C
	.4byte 0x000B0048
	.4byte 0x000B0049
	.4byte 0x000B004A

.global lbl_801CBD98
lbl_801CBD98:

	# ROM: 0x1C8D98
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CBDB8
lbl_801CBDB8:

	# ROM: 0x1C8DB8
	.4byte 0x00100016
	.4byte 0x00100017
	.4byte 0x00100018
	.4byte 0x00100019
	.4byte 0x0010001A
	.4byte 0x0010001B
	.4byte 0x0010001C
	.4byte 0x0010001D
	.4byte 0x0010001E
	.4byte 0x0010001F

.global lbl_801CBDE0
lbl_801CBDE0:

	# ROM: 0x1C8DE0
	.4byte 0x00100020
	.4byte 0x00100021
	.4byte 0x00100022
	.4byte 0x00100023
	.4byte 0x00100024
	.4byte 0x00100025
	.4byte 0x00100026

.global lbl_801CBDFC
lbl_801CBDFC:

	# ROM: 0x1C8DFC
	.4byte 0x0008000C
	.4byte 0x0008000D
	.4byte 0x0008000E
	.4byte 0x0008000F
	.4byte 0x00080010
	.4byte 0x00080011
	.4byte 0x00080012
	.4byte 0x00080013
	.4byte 0x00080014
	.4byte 0x00080015
	.asciz "%3.3f %3.3f %3.3f \n"

.global lbl_801CBE38
lbl_801CBE38:

	# ROM: 0x1C8E38
	.4byte 0xBF000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xBF000000
	.4byte 0

.global lbl_801CBE68
lbl_801CBE68:

	# ROM: 0x1C8E68
	.4byte 0
	.4byte 0
	.4byte 0x3E800000
	.4byte 0
	.4byte 0x3E800000
	.4byte 0x3E800000
	.4byte 0
	.4byte 0x3E800000

.global lbl_801CBE88
lbl_801CBE88:

	# ROM: 0x1C8E88
	.4byte 0x001E0000
	.4byte 0x40533333
	.4byte 0x428C0000
	.4byte 0x40E00000
	.4byte 0
	.4byte 0xBD4CCCCD
	.4byte 0
	.4byte 0x40000000
	.4byte 0x3F800000
	.4byte 0x41F00000
	.4byte 0x3F7AE148
	.4byte 0x0002FFFF
	.4byte 0xFFFFFFFF
	.4byte 0x40FF0000
	.4byte 0
	.4byte 0x0000FF80
	.4byte lbl_8000FF40
	.4byte 0x20000000
	.4byte 0
	.4byte 0

.global lbl_801CBED8
lbl_801CBED8:

	# ROM: 0x1C8ED8
	.4byte 0
	.4byte 0x42C80000
	.4byte 0

.global lbl_801CBEE4
lbl_801CBEE4:

	# ROM: 0x1C8EE4
	.4byte 0xC2040000
	.4byte 0
	.4byte 0

.global lbl_801CBEF0
lbl_801CBEF0:

	# ROM: 0x1C8EF0
	.4byte 0xC2040000
	.4byte 0
	.4byte 0

.global lbl_801CBEFC
lbl_801CBEFC:

	# ROM: 0x1C8EFC
	.4byte 0xFF000102
	.4byte 0x03040506
	.4byte 0x0708FFFF
	.4byte 0x090A0B0C
	.4byte 0x0D0E0F10
	.4byte 0xFFFFFF11
	.4byte 0x12131415
	.4byte 0x1617FFFF
	.4byte 0xFFFF1819
	.4byte 0x1A1B1C1D
	.4byte 0xFFFFFFFF
	.4byte 0xFF1E1F20
	.4byte 0x2122FFFF
	.4byte 0xFFFFFFFF
	.4byte 0x23242526
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF27
	.4byte 0x2829FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFF2A2B
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF2C0000

.global lbl_801CBF58
lbl_801CBF58:

	# ROM: 0x1C8F58
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0x0000000A

.global lbl_801CBF68
lbl_801CBF68:

	# ROM: 0x1C8F68
	.4byte lbl_802589E2
	.4byte lbl_80288CE0
	.4byte lbl_80288CDA
	.4byte lbl_80288CD6
	.4byte 0
	.4byte 0
	.4byte lbl_802589F2
	.4byte 0
	.4byte 0

.global lbl_801CBF8C
lbl_801CBF8C:

	# ROM: 0x1C8F8C
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0x0000000E
	.4byte 0
	.4byte 0

.global lbl_801CBFB0
lbl_801CBFB0:

	# ROM: 0x1C8FB0
	.4byte 0x00080048
	.4byte 0x00080046
	.4byte 0x00080047
	.4byte 0x00080049

.global lbl_801CBFC0
lbl_801CBFC0:

	# ROM: 0x1C8FC0
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x0000001E

.global lbl_801CBFCC
lbl_801CBFCC:

	# ROM: 0x1C8FCC
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0x0000001E

.global lbl_801CBFD8
lbl_801CBFD8:

	# ROM: 0x1C8FD8
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000003

.global lbl_801CBFFC
lbl_801CBFFC:

	# ROM: 0x1C8FFC
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x43000000
	.4byte 0x43700000
	.4byte 0x43900000
	.4byte 0x43700000
	.4byte 0x43E00000
	.4byte 0x43700000
	.4byte 0xC2600000
	.4byte 0xC1800000
	.4byte 0xC2180000
	.4byte 0xC2400000
	.4byte 0x40C00000
	.4byte 0xC2400000
	.4byte 0x41C00000
	.4byte 0xC1800000
	.asciz "S3TC_touei"
	.balign 4
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000014
	.4byte 0x00000019
	.4byte 0x0000001E
	.4byte 0x00000023
	.4byte 0x00000028
	.4byte 0x0000002D
	.4byte 0x00000032
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0000001A
	.4byte 0x0000000F
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00000023
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x0000000A
	.4byte 0x00000055
	.4byte 0x00000005
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000004B
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000041
	.4byte 0x00000019
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000046
	.4byte 0x00000014
	.4byte 0x00000005
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000003C
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000005
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0x00000005
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x0000002D
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000023
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x0000002D
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x0000001E
	.4byte 0x00000023
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x00000014
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0000000F

.global lbl_801CC1D0
lbl_801CC1D0:

	# ROM: 0x1C91D0
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0

.global lbl_801CC1E0
lbl_801CC1E0:

	# ROM: 0x1C91E0
	.4byte 0x3DCCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3F800000
	.4byte 0x3E4CCCCD
	.4byte 0x3F800000
	.4byte 0x3DCCCCCD
	.4byte 0x3E99999A
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3E4CCCCD
	.4byte 0x3DCCCCCD
	.4byte 0x3F800000
	.4byte 0x3E4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F800000
	.4byte 0x41000000
	.4byte 0x3E99999A

.global lbl_801CC228
lbl_801CC228:

	# ROM: 0x1C9228
	.4byte 0xBF000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0x3F000000
	.4byte 0
	.4byte 0x3F000000
	.4byte 0xBF000000
	.4byte 0
	.4byte 0xBF000000
	.4byte 0xBF000000
	.4byte 0

.global lbl_801CC258
lbl_801CC258:

	# ROM: 0x1C9258
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001

.global lbl_801CC264
lbl_801CC264:

	# ROM: 0x1C9264
	.4byte 0x42A80000
	.4byte 0x43BC0000
	.4byte 0x447A0000

.global lbl_801CC270
lbl_801CC270:

	# ROM: 0x1C9270
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00030000
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00020001
	.4byte 0x00030001

.global lbl_801CC290
lbl_801CC290:

	# ROM: 0x1C9290
	.4byte 0x00090000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090001
	.4byte 0x00090002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090003
	.4byte 0x00090004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090005
	.4byte 0x00090006
	.4byte 0x00090007
	.4byte 0x00090008
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x0009000B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0009000C
	.4byte 0x0009000D
	.4byte 0x0009000E
	.4byte 0
	.4byte 0
	.4byte 0x0009000F
	.4byte 0x00090010
	.4byte 0x00090011
	.4byte 0
	.4byte 0
	.4byte 0x00090012
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090027
	.4byte 0x0009002B
	.4byte 0
	.4byte 0
	.4byte 0x0009001B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0009001B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090019
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0009001D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0009001C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00090018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0009001A
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CC3B0
lbl_801CC3B0:

	# ROM: 0x1C93B0
	.4byte 0x00260002
	.4byte 0x00260003
	.4byte 0x00260004
	.4byte 0
	.4byte 0
	.4byte 0x00260005
	.4byte 0x00260006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00260007
	.4byte 0x00260008
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00260009
	.4byte 0x0026000A
	.4byte 0x0026000B
	.4byte 0x0026000C
	.4byte 0x00260019
	.4byte 0x0026000D
	.4byte 0x0026000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0026000F
	.4byte 0x00260010
	.4byte 0x00260011
	.4byte 0
	.4byte 0
	.4byte 0x00260012
	.4byte 0x00260013
	.4byte 0x00260014
	.4byte 0
	.4byte 0
	.4byte 0x00260015
	.4byte 0x00260016
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CC450
lbl_801CC450:

	# ROM: 0x1C9450
	.asciz "ys54_000-itemhook"

.global lbl_801CC462
lbl_801CC462:

	# ROM: 0x1C9462
	.byte 0x79, 0x73
	.asciz "54_010-itemhook"

.global lbl_801CC474
lbl_801CC474:

	# ROM: 0x1C9474
	.asciz "ys54_011-itemhook"

.global lbl_801CC486
lbl_801CC486:

	# ROM: 0x1C9486
	.byte 0x79, 0x73
	.asciz "54_020-itemhook"

.global lbl_801CC498
lbl_801CC498:

	# ROM: 0x1C9498
	.asciz "ys54_021-itemhook"

.global lbl_801CC4AA
lbl_801CC4AA:

	# ROM: 0x1C94AA
	.byte 0x79, 0x73
	.asciz "54_030-itemhook"

.global lbl_801CC4BC
lbl_801CC4BC:

	# ROM: 0x1C94BC
	.asciz "ys54_031-itemhook"

.global lbl_801CC4CE
lbl_801CC4CE:

	# ROM: 0x1C94CE
	.byte 0x79, 0x73
	.asciz "54_032-itemhook"

.global lbl_801CC4E0
lbl_801CC4E0:

	# ROM: 0x1C94E0
	.asciz "ys54_033-itemhook"

.global lbl_801CC4F2
lbl_801CC4F2:

	# ROM: 0x1C94F2
	.byte 0x79, 0x73
	.asciz "54_034-itemhook"

.global lbl_801CC504
lbl_801CC504:

	# ROM: 0x1C9504
	.asciz "ys54_040-itemhook"

.global lbl_801CC516
lbl_801CC516:

	# ROM: 0x1C9516
	.byte 0x79, 0x73
	.asciz "54_041-itemhook"

.global lbl_801CC528
lbl_801CC528:

	# ROM: 0x1C9528
	.asciz "ys54_050-itemhook"

.global lbl_801CC53A
lbl_801CC53A:

	# ROM: 0x1C953A
	.byte 0x79, 0x73
	.asciz "54_051-itemhook"

.global lbl_801CC54C
lbl_801CC54C:

	# ROM: 0x1C954C
	.asciz "ys54_052-itemhook"

.global lbl_801CC55E
lbl_801CC55E:

	# ROM: 0x1C955E
	.byte 0x79, 0x73
	.asciz "54_060-itemhook"

.global lbl_801CC570
lbl_801CC570:

	# ROM: 0x1C9570
	.asciz "ys54_061-itemhook"

.global lbl_801CC582
lbl_801CC582:

	# ROM: 0x1C9582
	.byte 0x79, 0x73
	.asciz "54_062-itemhook"

.global lbl_801CC594
lbl_801CC594:

	# ROM: 0x1C9594
	.asciz "ys54_070-itemhook"
	.balign 4

.global lbl_801CC5A8
lbl_801CC5A8:

	# ROM: 0x1C95A8
	.4byte lbl_801CC450
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801CC462
	.4byte lbl_801CC474
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801CC486
	.4byte lbl_801CC498
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801CC4AA
	.4byte lbl_801CC4BC
	.4byte lbl_801CC4CE
	.4byte lbl_801CC4E0
	.4byte lbl_801CC4F2
	.4byte lbl_801CC504
	.4byte lbl_801CC516
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_801CC528
	.4byte lbl_801CC53A
	.4byte lbl_801CC54C
	.4byte 0
	.4byte 0
	.4byte lbl_801CC55E
	.4byte lbl_801CC570
	.4byte lbl_801CC582
	.4byte 0
	.4byte 0
	.4byte lbl_801CC594
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CC648
lbl_801CC648:

	# ROM: 0x1C9648
	.asciz "S3TC_touei"
	.balign 4

.global lbl_801CC654
lbl_801CC654:

	# ROM: 0x1C9654
	.4byte 0x0000FFC2
	.4byte 0x00000044
	.4byte 0x003E0000
	.4byte 0xFFC20000
	.4byte 0x0000FFEC
	.4byte 0x00000014
	.4byte 0x002BFFC4
	.4byte 0xFFD3FFC4

.global lbl_801CC674
lbl_801CC674:

	# ROM: 0x1C9674
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0

.global lbl_801CC688
lbl_801CC688:

	# ROM: 0x1C9688
	.4byte 0x0008000A
	.4byte 0x0008000B
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_801CC698
lbl_801CC698:

	# ROM: 0x1C9698
	.4byte 0xC1200000
	.4byte 0
	.4byte 0

.global lbl_801CC6A4
lbl_801CC6A4:

	# ROM: 0x1C96A4
	.4byte 0
	.4byte 0x42C80000
	.4byte 0

.global lbl_801CC6B0
lbl_801CC6B0:

	# ROM: 0x1C96B0
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte lbl_8012C704
	.4byte lbl_8012C9E4
	.4byte lbl_8012CD18
	.4byte lbl_8012CFF8
	.4byte lbl_8012D2D8
	.4byte lbl_8012930C
	.4byte lbl_80129648
	.4byte lbl_8012991C
	.4byte lbl_80129DA8
	.4byte lbl_8012A0F4

.global lbl_801CC6F4
lbl_801CC6F4:

	# ROM: 0x1C96F4
	.4byte 0x00270012
	.4byte 0x0027002C
	.4byte 0x00270044
	.4byte 0x00270066
	.4byte 0x00270080

.global lbl_801CC708
lbl_801CC708:

	# ROM: 0x1C9708
	.4byte 0x00270012
	.4byte 0x0027002C
	.4byte 0x00270044
	.4byte 0x00270066
	.4byte 0x00270080

.global lbl_801CC71C
lbl_801CC71C:

	# ROM: 0x1C971C
	.4byte 0x00270012
	.4byte 0x0027002C
	.4byte 0x00270044

.global lbl_801CC728
lbl_801CC728:

	# ROM: 0x1C9728
	.4byte 0x00270012
	.4byte 0x0027002C
	.4byte 0x00270044
	.4byte 0x00270066
	.4byte 0x00270080

.global lbl_801CC73C
lbl_801CC73C:

	# ROM: 0x1C973C
	.4byte 0x00270012
	.4byte 0x0027002C
	.4byte 0x00270044
	.4byte 0x00270066
	.4byte 0x00270080

.global lbl_801CC750
lbl_801CC750:

	# ROM: 0x1C9750
	.4byte 0x00000014
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_801CC760
lbl_801CC760:

	# ROM: 0x1C9760
	.4byte 0x00000101
	.4byte 0x01010100
	.4byte 0
	.byte 0x00

.global lbl_801CC76D
lbl_801CC76D:

	# ROM: 0x1C976D
	.byte 0x73, 0x6B, 0x65
	.asciz "_head"
	.balign 4

.global lbl_801CC778
lbl_801CC778:

	# ROM: 0x1C9778
	.4byte 0x00020007
	.4byte 0x00020008
	.4byte 0x00020009
	.4byte 0x0002000A
	.4byte 0x0002000B
	.4byte 0x0002000C
	.4byte 0x0002000D
	.4byte 0x0002000E
	.4byte 0x0002000F
	.4byte 0x00020010
	.4byte 0x00020011
	.4byte 0x00020012
	.4byte 0x00020013
	.4byte 0x00020014
	.4byte 0xFFFFFFFF

.global lbl_801CC7B4
lbl_801CC7B4:

	# ROM: 0x1C97B4
	.4byte 0x00020015
	.4byte 0x00020016
	.4byte 0x00020017
	.4byte 0x00020018
	.4byte 0x00020019
	.4byte 0x0002001A
	.4byte 0x0002001B
	.4byte 0x00020021
	.4byte 0x00020022
	.4byte 0x00020024
	.4byte 0x00020025
	.4byte 0x00020026
	.4byte 0x00020031
	.4byte 0xFFFFFFFF

.global lbl_801CC7EC
lbl_801CC7EC:

	# ROM: 0x1C97EC
	.4byte lbl_801AA740
	.4byte lbl_801AA75C
	.4byte lbl_801AA784
	.4byte 0xC2A00000
	.4byte 0
	.4byte 0x42A00000

.global lbl_801CC804
lbl_801CC804:

	# ROM: 0x1C9804
	.4byte 0xC3340000
	.4byte 0
	.4byte 0x43340000

.global lbl_801CC810
lbl_801CC810:

	# ROM: 0x1C9810
	.4byte lbl_8012D89C
	.4byte lbl_8012D990
	.4byte lbl_8012DA68
	.4byte lbl_8012DBB8
	.4byte lbl_8012DCD0
	.4byte func_8012E878
	.4byte lbl_8012DE10
	.4byte lbl_8012E0D8
	.4byte func_8012E878
	.4byte lbl_8012E514
	.4byte lbl_8012E600
	.4byte lbl_8012E63C
	.4byte lbl_8012E6D8
	.4byte lbl_8012E7DC

.global lbl_801CC848
lbl_801CC848:

	# ROM: 0x1C9848
	.4byte 0xC3340000
	.4byte 0
	.4byte 0x43340000

.global lbl_801CC854
lbl_801CC854:

	# ROM: 0x1C9854
	.4byte 0xC3340000
	.4byte 0
	.4byte 0x43340000

.global lbl_801CC860
lbl_801CC860:

	# ROM: 0x1C9860
	.4byte 0xC3340000
	.4byte 0
	.4byte 0x43340000

.global lbl_801CC86C
lbl_801CC86C:

	# ROM: 0x1C986C
	.4byte 0x00780108
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x41700000
	.asciz "?fffBp"
	.balign 4
	.asciz "?s33"
	.byte 0x01, 0xFF, 0xFF
	.4byte 0xFFFF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFF000000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CC8BC
lbl_801CC8BC:

	# ROM: 0x1C98BC
	.asciz "sceneNo = %d"
	.balign 4
	.4byte 0

.global lbl_801CC8D0
lbl_801CC8D0:

	# ROM: 0x1C98D0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0

.global lbl_801CC8F0
lbl_801CC8F0:

	# ROM: 0x1C98F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CC908
lbl_801CC908:

	# ROM: 0x1C9908
	.4byte 0x00080072
	.4byte 0x00080075
	.4byte 0x00080074

.global lbl_801CC914
lbl_801CC914:

	# ROM: 0x1C9914
	.4byte 0xC2A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42A00000
	.4byte 0
	.4byte 0xC2500000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42500000
	.4byte 0

.global lbl_801CC944
lbl_801CC944:

	# ROM: 0x1C9944
	.4byte 0x00080094
	.4byte 0x00080093
	.4byte 0x00080095

.global lbl_801CC950
lbl_801CC950:

	# ROM: 0x1C9950
	.4byte 0x43900000
	.4byte 0x43300000
	.4byte 0x43600000
	.4byte 0x43700000
	.4byte 0x43E00000
	.4byte 0x43700000

.global lbl_801CC968
lbl_801CC968:

	# ROM: 0x1C9968
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_801CC978
lbl_801CC978:

	# ROM: 0x1C9978
	.asciz "unknown compression method"
	.byte 0x69
	.asciz "nvalid window size"
	.byte 0x69
	.asciz "ncorrect header check"
	.byte 0x6E, 0x65
	.asciz "ed dictionary"
	.byte 0x69, 0x6E
	.asciz "correct data check"
	.balign 4

.global lbl_801CC9E4
lbl_801CC9E4:

	# ROM: 0x1C99E4
	.4byte lbl_80136B50
	.4byte lbl_80136C18
	.4byte lbl_80136CE0
	.4byte lbl_80136D38
	.4byte lbl_80136D98
	.4byte lbl_80136DF8
	.4byte lbl_80136E68
	.4byte lbl_80136E90
	.4byte lbl_80136F30
	.4byte lbl_80136F88
	.4byte lbl_80136FE8
	.4byte lbl_80137048
	.4byte lbl_801370E8
	.4byte lbl_801370F0
	.4byte 0

.global lbl_801CCA20
lbl_801CCA20:

	# ROM: 0x1C9A20
	.asciz "invalid block type"
	.byte 0x69
	.asciz "nvalid stored block lengths"
	.asciz "too many length or distance symbols"
	.asciz "invalid bit length repeat"
	.balign 4

.global lbl_801CCA90
lbl_801CCA90:

	# ROM: 0x1C9A90
	.4byte lbl_801374C4
	.4byte lbl_80137694
	.4byte lbl_8013775C
	.4byte lbl_801379D0
	.4byte func_80137B88
	.4byte func_80137F30
	.4byte lbl_80138098
	.4byte lbl_8013816C
	.4byte lbl_8013820C
	.4byte lbl_8013824C

.global lbl_801CCAB8
lbl_801CCAB8:

	# ROM: 0x1C9AB8
	.asciz "invalid literal/length code"

.global lbl_801CCAD4
lbl_801CCAD4:

	# ROM: 0x1C9AD4
	.asciz "invalid distance code"
	.balign 4

.global lbl_801CCAEC
lbl_801CCAEC:

	# ROM: 0x1C9AEC
	.4byte lbl_80138518
	.4byte lbl_801385FC
	.4byte lbl_80138788
	.4byte lbl_8013884C
	.4byte lbl_801389A4
	.4byte lbl_80138A58
	.4byte lbl_80138C14
	.4byte lbl_80138D78
	.4byte lbl_80138E2C
	.4byte lbl_80138E6C
	.4byte 0

.global lbl_801CCB18
lbl_801CCB18:

	# ROM: 0x1C9B18
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x0000003F
	.4byte 0x0000007F
	.4byte 0x000000FF
	.4byte 0x000001FF
	.4byte 0x000003FF
	.4byte 0x000007FF
	.4byte 0x00000FFF
	.4byte 0x00001FFF
	.4byte 0x00003FFF
	.4byte 0x00007FFF
	.4byte 0x0000FFFF
	.4byte 0

.global lbl_801CCB60
lbl_801CCB60:

	# ROM: 0x1C9B60
	.asciz "oversubscribed dynamic bit lengths tree"

.global lbl_801CCB88
lbl_801CCB88:

	# ROM: 0x1C9B88
	.asciz "incomplete dynamic bit lengths tree"
	.asciz "oversubscribed literal/length tree"
	.byte 0x69
	.asciz "ncomplete literal/length tree"
	.byte 0x6F, 0x76
	.asciz "ersubscribed distance tree"
	.byte 0x69
	.asciz "ncomplete distance tree"
	.asciz "empty distance tree with lengths"
	.balign 4

.global lbl_801CCC48
lbl_801CCC48:

	# ROM: 0x1C9C48
	.4byte 0x60070000
	.4byte 0x00000100
	.4byte 0x00080000
	.4byte 0x00000050
	.4byte 0x00080000
	.4byte 0x00000010
	.4byte 0x54080000
	.4byte 0x00000073
	.4byte 0x52070000
	.4byte 0x0000001F
	.4byte 0x00080000
	.4byte 0x00000070
	.4byte 0x00080000
	.4byte 0x00000030
	.4byte 0x00090000
	.4byte 0x000000C0
	.4byte 0x50070000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x00000060
	.4byte 0x00080000
	.4byte 0x00000020
	.4byte 0x00090000
	.4byte 0x000000A0
	.4byte 0x00080000
	.4byte 0
	.4byte 0x00080000
	.4byte 0x00000080
	.4byte 0x00080000
	.4byte 0x00000040
	.4byte 0x00090000
	.4byte 0x000000E0
	.4byte 0x50070000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000058
	.4byte 0x00080000
	.4byte 0x00000018
	.4byte 0x00090000
	.4byte 0x00000090
	.4byte 0x53070000
	.4byte 0x0000003B
	.4byte 0x00080000
	.4byte 0x00000078
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00090000
	.4byte 0x000000D0
	.4byte 0x51070000
	.4byte 0x00000011
	.4byte 0x00080000
	.4byte 0x00000068
	.4byte 0x00080000
	.4byte 0x00000028
	.4byte 0x00090000
	.4byte 0x000000B0
	.4byte 0x00080000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x00000088
	.4byte 0x00080000
	.4byte 0x00000048
	.4byte 0x00090000
	.4byte 0x000000F0
	.4byte 0x50070000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000054
	.4byte 0x00080000
	.4byte 0x00000014
	.4byte 0x55080000
	.4byte 0x000000E3
	.4byte 0x53070000
	.4byte 0x0000002B
	.4byte 0x00080000
	.4byte 0x00000074
	.4byte 0x00080000
	.4byte 0x00000034
	.4byte 0x00090000
	.4byte 0x000000C8
	.4byte 0x51070000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x00000064
	.4byte 0x00080000
	.4byte 0x00000024
	.4byte 0x00090000
	.4byte 0x000000A8
	.4byte 0x00080000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000084
	.4byte 0x00080000
	.4byte 0x00000044
	.4byte 0x00090000
	.4byte 0x000000E8
	.4byte 0x50070000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x0000005C
	.4byte 0x00080000
	.4byte 0x0000001C
	.4byte 0x00090000
	.4byte 0x00000098
	.4byte 0x54070000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x0000007C
	.4byte 0x00080000
	.4byte 0x0000003C
	.4byte 0x00090000
	.4byte 0x000000D8
	.4byte 0x52070000
	.4byte 0x00000017
	.4byte 0x00080000
	.4byte 0x0000006C
	.4byte 0x00080000
	.4byte 0x0000002C
	.4byte 0x00090000
	.4byte 0x000000B8
	.4byte 0x00080000
	.4byte 0x0000000C
	.4byte 0x00080000
	.4byte 0x0000008C
	.4byte 0x00080000
	.4byte 0x0000004C
	.4byte 0x00090000
	.4byte 0x000000F8
	.4byte 0x50070000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000052
	.4byte 0x00080000
	.4byte 0x00000012
	.4byte 0x55080000
	.4byte 0x000000A3
	.4byte 0x53070000
	.4byte 0x00000023
	.4byte 0x00080000
	.4byte 0x00000072
	.4byte 0x00080000
	.4byte 0x00000032
	.4byte 0x00090000
	.4byte 0x000000C4
	.4byte 0x51070000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x00000062
	.4byte 0x00080000
	.4byte 0x00000022
	.4byte 0x00090000
	.4byte 0x000000A4
	.4byte 0x00080000
	.4byte 0x00000002
	.4byte 0x00080000
	.4byte 0x00000082
	.4byte 0x00080000
	.4byte 0x00000042
	.4byte 0x00090000
	.4byte 0x000000E4
	.4byte 0x50070000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x0000005A
	.4byte 0x00080000
	.4byte 0x0000001A
	.4byte 0x00090000
	.4byte 0x00000094
	.4byte 0x54070000
	.4byte 0x00000043
	.4byte 0x00080000
	.4byte 0x0000007A
	.4byte 0x00080000
	.4byte 0x0000003A
	.4byte 0x00090000
	.4byte 0x000000D4
	.4byte 0x52070000
	.4byte 0x00000013
	.4byte 0x00080000
	.4byte 0x0000006A
	.4byte 0x00080000
	.4byte 0x0000002A
	.4byte 0x00090000
	.4byte 0x000000B4
	.4byte 0x00080000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x0000008A
	.4byte 0x00080000
	.4byte 0x0000004A
	.4byte 0x00090000
	.4byte 0x000000F4
	.4byte 0x50070000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000056
	.4byte 0x00080000
	.4byte 0x00000016
	.4byte 0xC0080000
	.4byte 0
	.4byte 0x53070000
	.4byte 0x00000033
	.4byte 0x00080000
	.4byte 0x00000076
	.4byte 0x00080000
	.4byte 0x00000036
	.4byte 0x00090000
	.4byte 0x000000CC
	.4byte 0x51070000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x00000066
	.4byte 0x00080000
	.4byte 0x00000026
	.4byte 0x00090000
	.4byte 0x000000AC
	.4byte 0x00080000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000086
	.4byte 0x00080000
	.4byte 0x00000046
	.4byte 0x00090000
	.4byte 0x000000EC
	.4byte 0x50070000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x0000005E
	.4byte 0x00080000
	.4byte 0x0000001E
	.4byte 0x00090000
	.4byte 0x0000009C
	.4byte 0x54070000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x0000007E
	.4byte 0x00080000
	.4byte 0x0000003E
	.4byte 0x00090000
	.4byte 0x000000DC
	.4byte 0x52070000
	.4byte 0x0000001B
	.4byte 0x00080000
	.4byte 0x0000006E
	.4byte 0x00080000
	.4byte 0x0000002E
	.4byte 0x00090000
	.4byte 0x000000BC
	.4byte 0x00080000
	.4byte 0x0000000E
	.4byte 0x00080000
	.4byte 0x0000008E
	.4byte 0x00080000
	.4byte 0x0000004E
	.4byte 0x00090000
	.4byte 0x000000FC
	.4byte 0x60070000
	.4byte 0x00000100
	.4byte 0x00080000
	.4byte 0x00000051
	.4byte 0x00080000
	.4byte 0x00000011
	.4byte 0x55080000
	.4byte 0x00000083
	.4byte 0x52070000
	.4byte 0x0000001F
	.4byte 0x00080000
	.4byte 0x00000071
	.4byte 0x00080000
	.4byte 0x00000031
	.4byte 0x00090000
	.4byte 0x000000C2
	.4byte 0x50070000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x00000061
	.4byte 0x00080000
	.4byte 0x00000021
	.4byte 0x00090000
	.4byte 0x000000A2
	.4byte 0x00080000
	.4byte 0x00000001
	.4byte 0x00080000
	.4byte 0x00000081
	.4byte 0x00080000
	.4byte 0x00000041
	.4byte 0x00090000
	.4byte 0x000000E2
	.4byte 0x50070000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000059
	.4byte 0x00080000
	.4byte 0x00000019
	.4byte 0x00090000
	.4byte 0x00000092
	.4byte 0x53070000
	.4byte 0x0000003B
	.4byte 0x00080000
	.4byte 0x00000079
	.4byte 0x00080000
	.4byte 0x00000039
	.4byte 0x00090000
	.4byte 0x000000D2
	.4byte 0x51070000
	.4byte 0x00000011
	.4byte 0x00080000
	.4byte 0x00000069
	.4byte 0x00080000
	.4byte 0x00000029
	.4byte 0x00090000
	.4byte 0x000000B2
	.4byte 0x00080000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x00000089
	.4byte 0x00080000
	.4byte 0x00000049
	.4byte 0x00090000
	.4byte 0x000000F2
	.4byte 0x50070000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000055
	.4byte 0x00080000
	.4byte 0x00000015
	.4byte 0x50080000
	.4byte 0x00000102
	.4byte 0x53070000
	.4byte 0x0000002B
	.4byte 0x00080000
	.4byte 0x00000075
	.4byte 0x00080000
	.4byte 0x00000035
	.4byte 0x00090000
	.4byte 0x000000CA
	.4byte 0x51070000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x00000065
	.4byte 0x00080000
	.4byte 0x00000025
	.4byte 0x00090000
	.4byte 0x000000AA
	.4byte 0x00080000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000085
	.4byte 0x00080000
	.4byte 0x00000045
	.4byte 0x00090000
	.4byte 0x000000EA
	.4byte 0x50070000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x0000005D
	.4byte 0x00080000
	.4byte 0x0000001D
	.4byte 0x00090000
	.4byte 0x0000009A
	.4byte 0x54070000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x0000007D
	.4byte 0x00080000
	.4byte 0x0000003D
	.4byte 0x00090000
	.4byte 0x000000DA
	.4byte 0x52070000
	.4byte 0x00000017
	.4byte 0x00080000
	.4byte 0x0000006D
	.4byte 0x00080000
	.4byte 0x0000002D
	.4byte 0x00090000
	.4byte 0x000000BA
	.4byte 0x00080000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x0000008D
	.4byte 0x00080000
	.4byte 0x0000004D
	.4byte 0x00090000
	.4byte 0x000000FA
	.4byte 0x50070000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x00000013
	.4byte 0x55080000
	.4byte 0x000000C3
	.4byte 0x53070000
	.4byte 0x00000023
	.4byte 0x00080000
	.4byte 0x00000073
	.4byte 0x00080000
	.4byte 0x00000033
	.4byte 0x00090000
	.4byte 0x000000C6
	.4byte 0x51070000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x00000023
	.4byte 0x00090000
	.4byte 0x000000A6
	.4byte 0x00080000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000083
	.4byte 0x00080000
	.4byte 0x00000043
	.4byte 0x00090000
	.4byte 0x000000E6
	.4byte 0x50070000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x0000005B
	.4byte 0x00080000
	.4byte 0x0000001B
	.4byte 0x00090000
	.4byte 0x00000096
	.4byte 0x54070000
	.4byte 0x00000043
	.4byte 0x00080000
	.4byte 0x0000007B
	.4byte 0x00080000
	.4byte 0x0000003B
	.4byte 0x00090000
	.4byte 0x000000D6
	.4byte 0x52070000
	.4byte 0x00000013
	.4byte 0x00080000
	.4byte 0x0000006B
	.4byte 0x00080000
	.4byte 0x0000002B
	.4byte 0x00090000
	.4byte 0x000000B6
	.4byte 0x00080000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x0000008B
	.4byte 0x00080000
	.4byte 0x0000004B
	.4byte 0x00090000
	.4byte 0x000000F6
	.4byte 0x50070000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000057
	.4byte 0x00080000
	.4byte 0x00000017
	.4byte 0xC0080000
	.4byte 0
	.4byte 0x53070000
	.4byte 0x00000033
	.4byte 0x00080000
	.4byte 0x00000077
	.4byte 0x00080000
	.4byte 0x00000037
	.4byte 0x00090000
	.4byte 0x000000CE
	.4byte 0x51070000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x00000067
	.4byte 0x00080000
	.4byte 0x00000027
	.4byte 0x00090000
	.4byte 0x000000AE
	.4byte 0x00080000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x00000087
	.4byte 0x00080000
	.4byte 0x00000047
	.4byte 0x00090000
	.4byte 0x000000EE
	.4byte 0x50070000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x0000005F
	.4byte 0x00080000
	.4byte 0x0000001F
	.4byte 0x00090000
	.4byte 0x0000009E
	.4byte 0x54070000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x0000007F
	.4byte 0x00080000
	.4byte 0x0000003F
	.4byte 0x00090000
	.4byte 0x000000DE
	.4byte 0x52070000
	.4byte 0x0000001B
	.4byte 0x00080000
	.4byte 0x0000006F
	.4byte 0x00080000
	.4byte 0x0000002F
	.4byte 0x00090000
	.4byte 0x000000BE
	.4byte 0x00080000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x0000008F
	.4byte 0x00080000
	.4byte 0x0000004F
	.4byte 0x00090000
	.4byte 0x000000FE
	.4byte 0x60070000
	.4byte 0x00000100
	.4byte 0x00080000
	.4byte 0x00000050
	.4byte 0x00080000
	.4byte 0x00000010
	.4byte 0x54080000
	.4byte 0x00000073
	.4byte 0x52070000
	.4byte 0x0000001F
	.4byte 0x00080000
	.4byte 0x00000070
	.4byte 0x00080000
	.4byte 0x00000030
	.4byte 0x00090000
	.4byte 0x000000C1
	.4byte 0x50070000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x00000060
	.4byte 0x00080000
	.4byte 0x00000020
	.4byte 0x00090000
	.4byte 0x000000A1
	.4byte 0x00080000
	.4byte 0
	.4byte 0x00080000
	.4byte 0x00000080
	.4byte 0x00080000
	.4byte 0x00000040
	.4byte 0x00090000
	.4byte 0x000000E1
	.4byte 0x50070000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000058
	.4byte 0x00080000
	.4byte 0x00000018
	.4byte 0x00090000
	.4byte 0x00000091
	.4byte 0x53070000
	.4byte 0x0000003B
	.4byte 0x00080000
	.4byte 0x00000078
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00090000
	.4byte 0x000000D1
	.4byte 0x51070000
	.4byte 0x00000011
	.4byte 0x00080000
	.4byte 0x00000068
	.4byte 0x00080000
	.4byte 0x00000028
	.4byte 0x00090000
	.4byte 0x000000B1
	.4byte 0x00080000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x00000088
	.4byte 0x00080000
	.4byte 0x00000048
	.4byte 0x00090000
	.4byte 0x000000F1
	.4byte 0x50070000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000054
	.4byte 0x00080000
	.4byte 0x00000014
	.4byte 0x55080000
	.4byte 0x000000E3
	.4byte 0x53070000
	.4byte 0x0000002B
	.4byte 0x00080000
	.4byte 0x00000074
	.4byte 0x00080000
	.4byte 0x00000034
	.4byte 0x00090000
	.4byte 0x000000C9
	.4byte 0x51070000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x00000064
	.4byte 0x00080000
	.4byte 0x00000024
	.4byte 0x00090000
	.4byte 0x000000A9
	.4byte 0x00080000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000084
	.4byte 0x00080000
	.4byte 0x00000044
	.4byte 0x00090000
	.4byte 0x000000E9
	.4byte 0x50070000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x0000005C
	.4byte 0x00080000
	.4byte 0x0000001C
	.4byte 0x00090000
	.4byte 0x00000099
	.4byte 0x54070000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x0000007C
	.4byte 0x00080000
	.4byte 0x0000003C
	.4byte 0x00090000
	.4byte 0x000000D9
	.4byte 0x52070000
	.4byte 0x00000017
	.4byte 0x00080000
	.4byte 0x0000006C
	.4byte 0x00080000
	.4byte 0x0000002C
	.4byte 0x00090000
	.4byte 0x000000B9
	.4byte 0x00080000
	.4byte 0x0000000C
	.4byte 0x00080000
	.4byte 0x0000008C
	.4byte 0x00080000
	.4byte 0x0000004C
	.4byte 0x00090000
	.4byte 0x000000F9
	.4byte 0x50070000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000052
	.4byte 0x00080000
	.4byte 0x00000012
	.4byte 0x55080000
	.4byte 0x000000A3
	.4byte 0x53070000
	.4byte 0x00000023
	.4byte 0x00080000
	.4byte 0x00000072
	.4byte 0x00080000
	.4byte 0x00000032
	.4byte 0x00090000
	.4byte 0x000000C5
	.4byte 0x51070000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x00000062
	.4byte 0x00080000
	.4byte 0x00000022
	.4byte 0x00090000
	.4byte 0x000000A5
	.4byte 0x00080000
	.4byte 0x00000002
	.4byte 0x00080000
	.4byte 0x00000082
	.4byte 0x00080000
	.4byte 0x00000042
	.4byte 0x00090000
	.4byte 0x000000E5
	.4byte 0x50070000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x0000005A
	.4byte 0x00080000
	.4byte 0x0000001A
	.4byte 0x00090000
	.4byte 0x00000095
	.4byte 0x54070000
	.4byte 0x00000043
	.4byte 0x00080000
	.4byte 0x0000007A
	.4byte 0x00080000
	.4byte 0x0000003A
	.4byte 0x00090000
	.4byte 0x000000D5
	.4byte 0x52070000
	.4byte 0x00000013
	.4byte 0x00080000
	.4byte 0x0000006A
	.4byte 0x00080000
	.4byte 0x0000002A
	.4byte 0x00090000
	.4byte 0x000000B5
	.4byte 0x00080000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x0000008A
	.4byte 0x00080000
	.4byte 0x0000004A
	.4byte 0x00090000
	.4byte 0x000000F5
	.4byte 0x50070000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000056
	.4byte 0x00080000
	.4byte 0x00000016
	.4byte 0xC0080000
	.4byte 0
	.4byte 0x53070000
	.4byte 0x00000033
	.4byte 0x00080000
	.4byte 0x00000076
	.4byte 0x00080000
	.4byte 0x00000036
	.4byte 0x00090000
	.4byte 0x000000CD
	.4byte 0x51070000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x00000066
	.4byte 0x00080000
	.4byte 0x00000026
	.4byte 0x00090000
	.4byte 0x000000AD
	.4byte 0x00080000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000086
	.4byte 0x00080000
	.4byte 0x00000046
	.4byte 0x00090000
	.4byte 0x000000ED
	.4byte 0x50070000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x0000005E
	.4byte 0x00080000
	.4byte 0x0000001E
	.4byte 0x00090000
	.4byte 0x0000009D
	.4byte 0x54070000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x0000007E
	.4byte 0x00080000
	.4byte 0x0000003E
	.4byte 0x00090000
	.4byte 0x000000DD
	.4byte 0x52070000
	.4byte 0x0000001B
	.4byte 0x00080000
	.4byte 0x0000006E
	.4byte 0x00080000
	.4byte 0x0000002E
	.4byte 0x00090000
	.4byte 0x000000BD
	.4byte 0x00080000
	.4byte 0x0000000E
	.4byte 0x00080000
	.4byte 0x0000008E
	.4byte 0x00080000
	.4byte 0x0000004E
	.4byte 0x00090000
	.4byte 0x000000FD
	.4byte 0x60070000
	.4byte 0x00000100
	.4byte 0x00080000
	.4byte 0x00000051
	.4byte 0x00080000
	.4byte 0x00000011
	.4byte 0x55080000
	.4byte 0x00000083
	.4byte 0x52070000
	.4byte 0x0000001F
	.4byte 0x00080000
	.4byte 0x00000071
	.4byte 0x00080000
	.4byte 0x00000031
	.4byte 0x00090000
	.4byte 0x000000C3
	.4byte 0x50070000
	.4byte 0x0000000A
	.4byte 0x00080000
	.4byte 0x00000061
	.4byte 0x00080000
	.4byte 0x00000021
	.4byte 0x00090000
	.4byte 0x000000A3
	.4byte 0x00080000
	.4byte 0x00000001
	.4byte 0x00080000
	.4byte 0x00000081
	.4byte 0x00080000
	.4byte 0x00000041
	.4byte 0x00090000
	.4byte 0x000000E3
	.4byte 0x50070000
	.4byte 0x00000006
	.4byte 0x00080000
	.4byte 0x00000059
	.4byte 0x00080000
	.4byte 0x00000019
	.4byte 0x00090000
	.4byte 0x00000093
	.4byte 0x53070000
	.4byte 0x0000003B
	.4byte 0x00080000
	.4byte 0x00000079
	.4byte 0x00080000
	.4byte 0x00000039
	.4byte 0x00090000
	.4byte 0x000000D3
	.4byte 0x51070000
	.4byte 0x00000011
	.4byte 0x00080000
	.4byte 0x00000069
	.4byte 0x00080000
	.4byte 0x00000029
	.4byte 0x00090000
	.4byte 0x000000B3
	.4byte 0x00080000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x00000089
	.4byte 0x00080000
	.4byte 0x00000049
	.4byte 0x00090000
	.4byte 0x000000F3
	.4byte 0x50070000
	.4byte 0x00000004
	.4byte 0x00080000
	.4byte 0x00000055
	.4byte 0x00080000
	.4byte 0x00000015
	.4byte 0x50080000
	.4byte 0x00000102
	.4byte 0x53070000
	.4byte 0x0000002B
	.4byte 0x00080000
	.4byte 0x00000075
	.4byte 0x00080000
	.4byte 0x00000035
	.4byte 0x00090000
	.4byte 0x000000CB
	.4byte 0x51070000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x00000065
	.4byte 0x00080000
	.4byte 0x00000025
	.4byte 0x00090000
	.4byte 0x000000AB
	.4byte 0x00080000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000085
	.4byte 0x00080000
	.4byte 0x00000045
	.4byte 0x00090000
	.4byte 0x000000EB
	.4byte 0x50070000
	.4byte 0x00000008
	.4byte 0x00080000
	.4byte 0x0000005D
	.4byte 0x00080000
	.4byte 0x0000001D
	.4byte 0x00090000
	.4byte 0x0000009B
	.4byte 0x54070000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x0000007D
	.4byte 0x00080000
	.4byte 0x0000003D
	.4byte 0x00090000
	.4byte 0x000000DB
	.4byte 0x52070000
	.4byte 0x00000017
	.4byte 0x00080000
	.4byte 0x0000006D
	.4byte 0x00080000
	.4byte 0x0000002D
	.4byte 0x00090000
	.4byte 0x000000BB
	.4byte 0x00080000
	.4byte 0x0000000D
	.4byte 0x00080000
	.4byte 0x0000008D
	.4byte 0x00080000
	.4byte 0x0000004D
	.4byte 0x00090000
	.4byte 0x000000FB
	.4byte 0x50070000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000053
	.4byte 0x00080000
	.4byte 0x00000013
	.4byte 0x55080000
	.4byte 0x000000C3
	.4byte 0x53070000
	.4byte 0x00000023
	.4byte 0x00080000
	.4byte 0x00000073
	.4byte 0x00080000
	.4byte 0x00000033
	.4byte 0x00090000
	.4byte 0x000000C7
	.4byte 0x51070000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x00000023
	.4byte 0x00090000
	.4byte 0x000000A7
	.4byte 0x00080000
	.4byte 0x00000003
	.4byte 0x00080000
	.4byte 0x00000083
	.4byte 0x00080000
	.4byte 0x00000043
	.4byte 0x00090000
	.4byte 0x000000E7
	.4byte 0x50070000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x0000005B
	.4byte 0x00080000
	.4byte 0x0000001B
	.4byte 0x00090000
	.4byte 0x00000097
	.4byte 0x54070000
	.4byte 0x00000043
	.4byte 0x00080000
	.4byte 0x0000007B
	.4byte 0x00080000
	.4byte 0x0000003B
	.4byte 0x00090000
	.4byte 0x000000D7
	.4byte 0x52070000
	.4byte 0x00000013
	.4byte 0x00080000
	.4byte 0x0000006B
	.4byte 0x00080000
	.4byte 0x0000002B
	.4byte 0x00090000
	.4byte 0x000000B7
	.4byte 0x00080000
	.4byte 0x0000000B
	.4byte 0x00080000
	.4byte 0x0000008B
	.4byte 0x00080000
	.4byte 0x0000004B
	.4byte 0x00090000
	.4byte 0x000000F7
	.4byte 0x50070000
	.4byte 0x00000005
	.4byte 0x00080000
	.4byte 0x00000057
	.4byte 0x00080000
	.4byte 0x00000017
	.4byte 0xC0080000
	.4byte 0
	.4byte 0x53070000
	.4byte 0x00000033
	.4byte 0x00080000
	.4byte 0x00000077
	.4byte 0x00080000
	.4byte 0x00000037
	.4byte 0x00090000
	.4byte 0x000000CF
	.4byte 0x51070000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x00000067
	.4byte 0x00080000
	.4byte 0x00000027
	.4byte 0x00090000
	.4byte 0x000000AF
	.4byte 0x00080000
	.4byte 0x00000007
	.4byte 0x00080000
	.4byte 0x00000087
	.4byte 0x00080000
	.4byte 0x00000047
	.4byte 0x00090000
	.4byte 0x000000EF
	.4byte 0x50070000
	.4byte 0x00000009
	.4byte 0x00080000
	.4byte 0x0000005F
	.4byte 0x00080000
	.4byte 0x0000001F
	.4byte 0x00090000
	.4byte 0x0000009F
	.4byte 0x54070000
	.4byte 0x00000063
	.4byte 0x00080000
	.4byte 0x0000007F
	.4byte 0x00080000
	.4byte 0x0000003F
	.4byte 0x00090000
	.4byte 0x000000DF
	.4byte 0x52070000
	.4byte 0x0000001B
	.4byte 0x00080000
	.4byte 0x0000006F
	.4byte 0x00080000
	.4byte 0x0000002F
	.4byte 0x00090000
	.4byte 0x000000BF
	.4byte 0x00080000
	.4byte 0x0000000F
	.4byte 0x00080000
	.4byte 0x0000008F
	.4byte 0x00080000
	.4byte 0x0000004F
	.4byte 0x00090000
	.4byte 0x000000FF

.global lbl_801CDC48
lbl_801CDC48:

	# ROM: 0x1CAC48
	.4byte 0x50050000
	.4byte 0x00000001
	.4byte 0x57050000
	.4byte 0x00000101
	.4byte 0x53050000
	.4byte 0x00000011
	.4byte 0x5B050000
	.4byte 0x00001001
	.4byte 0x51050000
	.4byte 0x00000005
	.4byte 0x59050000
	.4byte 0x00000401
	.4byte 0x55050000
	.4byte 0x00000041
	.4byte 0x5D050000
	.4byte 0x00004001
	.4byte 0x50050000
	.4byte 0x00000003
	.4byte 0x58050000
	.4byte 0x00000201
	.4byte 0x54050000
	.4byte 0x00000021
	.4byte 0x5C050000
	.4byte 0x00002001
	.4byte 0x52050000
	.4byte 0x00000009
	.4byte 0x5A050000
	.4byte 0x00000801
	.4byte 0x56050000
	.4byte 0x00000081
	.4byte 0xC0050000
	.4byte 0x00006001
	.4byte 0x50050000
	.4byte 0x00000002
	.4byte 0x57050000
	.4byte 0x00000181
	.4byte 0x53050000
	.4byte 0x00000019
	.4byte 0x5B050000
	.4byte 0x00001801
	.4byte 0x51050000
	.4byte 0x00000007
	.4byte 0x59050000
	.4byte 0x00000601
	.4byte 0x55050000
	.4byte 0x00000061
	.4byte 0x5D050000
	.4byte 0x00006001
	.4byte 0x50050000
	.4byte 0x00000004
	.4byte 0x58050000
	.4byte 0x00000301
	.4byte 0x54050000
	.4byte 0x00000031
	.4byte 0x5C050000
	.4byte 0x00003001
	.4byte 0x52050000
	.4byte 0x0000000D
	.4byte 0x5A050000
	.4byte 0x00000C01
	.4byte 0x56050000
	.4byte 0x000000C1
	.4byte 0xC0050000
	.4byte 0x00006001

.global lbl_801CDD48
lbl_801CDD48:

	# ROM: 0x1CAD48
	.asciz "invalid distance code"

.global lbl_801CDD5E
lbl_801CDD5E:

	# ROM: 0x1CAD5E
	.byte 0x69, 0x6E
	.asciz "valid literal/length code"
	.balign 4
	.4byte 0

.global lbl_801CDD80
lbl_801CDD80:

	# ROM: 0x1CAD80
	.asciz "<< Dolphin SDK - OS\trelease build: Jul 23 2003 11:27:16 (0x2301) >>"
	.asciz "\nDolphin OS\n"
	.balign 4
	.asciz "Kernel built : %s %s\n"
	.balign 4
	.asciz "Jul 23 2003"
	.asciz "11:27:16"
	.balign 4
	.asciz "Console Type : "
	.asciz "Retail %d\n"
	.balign 4
	.asciz "Mac Emulator\n"
	.balign 4
	.asciz "PC Emulator\n"
	.balign 4
	.asciz "EPPC Arthur\n"
	.balign 4
	.asciz "EPPC Minnow\n"
	.balign 4
	.asciz "Development HW%d (%08x)\n"
	.balign 4
	.asciz "Memory %d MB\n"
	.balign 4
	.asciz "Arena : 0x%x - 0x%x\n"
	.balign 4
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.asciz "Installing OSDBIntegrator\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
	.asciz "Exceptions initialized...\n"
	.balign 4

.global lbl_801CDF78
lbl_801CDF78:

	# ROM: 0x1CAF78
	.4byte lbl_8013B3E4
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0

.global lbl_801CDF88
lbl_801CDF88:

	# ROM: 0x1CAF88
	.asciz "OSCheckHeap: Failed HeapArray in %d"
	.asciz "OSCheckHeap: Failed 0 <= heap && heap < NumHeaps in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 <= hd->size in %d"
	.asciz "OSCheckHeap: Failed hd->allocated == NULL || hd->allocated->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed InRange(cell, ArenaStart, ArenaEnd) in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || cell->next->prev == cell in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed MINOBJSIZE <= cell->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell->size, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 < total && total <= hd->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed hd->free == NULL || hd->free->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || (char*) cell + cell->size < (char*) cell->next in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed total == hd->size in %d"
	.asciz "\nOSDumpHeap(%d):\n"
	.balign 4
	.asciz "--------Inactive\n"
	.balign 4
	.asciz "addr\tsize\t\tend\tprev\tnext\n"
	.balign 4
	.asciz "--------Allocated\n"
	.balign 4
	.asciz "%x\t%d\t%x\t%x\t%x\n"
	.asciz "--------Free\n"
	.balign 4
	.4byte 0

.global lbl_801CE320
lbl_801CE320:

	# ROM: 0x1CB320
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CE3A0
lbl_801CE3A0:

	# ROM: 0x1CB3A0
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 4
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 4
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.balign 4
	.4byte 0

.global lbl_801CE5D0
lbl_801CE5D0:

	# ROM: 0x1CB5D0
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"

.global lbl_801CE784
lbl_801CE784:

	# ROM: 0x1CB784
	.asciz "FPU-unavailable handler installed\n"
	.balign 4

.global lbl_801CE7A8
lbl_801CE7A8:

	# ROM: 0x1CB7A8
	.asciz " in \"%s\" on line %d.\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
	.asciz "Non-recoverable Exception %d"
	.balign 4
	.asciz "Unhandled Exception %d"
	.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.balign 4
	.asciz "TB = 0x%016llx\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.asciz "AI DMA Address =   0x%04x%04x\n"
	.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
	.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
	.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.balign 4

.global lbl_801CEA84
lbl_801CEA84:

	# ROM: 0x1CBA84
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte lbl_8013D4BC
	.4byte lbl_8013D4D4
	.4byte func_8013D564
	.4byte lbl_8013D4E8
	.4byte lbl_8013D500
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte func_8013D564
	.4byte lbl_8013D518
	.4byte 0

.global lbl_801CEAC8
lbl_801CEAC8:

	# ROM: 0x1CBAC8
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_801CEAF8
lbl_801CEAF8:

	# ROM: 0x1CBAF8
	.asciz "OSLink: unknown relocation type %3d\n"
	.balign 4

.global lbl_801CEB20
lbl_801CEB20:

	# ROM: 0x1CBB20
	.asciz "OSUnlink: unknown relocation type %3d\n"
	.balign 4

.global lbl_801CEB48
lbl_801CEB48:

	# ROM: 0x1CBB48
	.4byte lbl_8013E8C0
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_801CEB58
lbl_801CEB58:

	# ROM: 0x1CBB58
	.asciz "Stopwatch [%s]\t:\n"
	.balign 4
	.asciz "\tTotal= %lld us\n"
	.balign 4
	.asciz "\tHits = %d \n"
	.balign 4
	.asciz "\tMin  = %lld us\n"
	.balign 4
	.asciz "\tMax  = %lld us\n"
	.balign 4
	.asciz "\tMean = %lld us\n"
	.balign 4
	.4byte 0

.global lbl_801CEBD0
lbl_801CEBD0:

	# ROM: 0x1CBBD0
	.asciz "OSCheckActiveThreads: Failed RunQueue[prio].head != NULL && RunQueue[prio].tail != NULL in %d\n"
	.balign 4
	.asciz "OSThread.c"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed RunQueue[prio].head == NULL && RunQueue[prio].tail == NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed CheckThreadQueue(&RunQueue[prio]) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed __OSActiveThreadQueue.head == NULL || __OSActiveThreadQueue.head->linkActive.prev == NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed __OSActiveThreadQueue.tail == NULL || __OSActiveThreadQueue.tail->linkActive.next == NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->linkActive.next == NULL || thread == thread->linkActive.next->linkActive.prev in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->linkActive.prev == NULL || thread == thread->linkActive.prev->linkActive.next in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed *(thread->stackEnd) == OS_THREAD_STACK_MAGIC in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed OS_PRIORITY_MIN <= thread->priority && thread->priority <= OS_PRIORITY_MAX+1 in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed 0 <= thread->suspend in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed CheckThreadQueue(&thread->queueJoin) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->queue == &RunQueue[thread->priority] in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed IsMember(&RunQueue[thread->priority], thread) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->priority == __OSGetEffectivePriority(thread) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed !IsSuspended(thread->suspend) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->queue == NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->queue != NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed CheckThreadQueue(thread->queue) in %d\n"
	.asciz "OSCheckActiveThreads: Failed IsMember(thread->queue, thread) in %d\n"
	.asciz "OSCheckActiveThreads: Failed thread->priority == 32 in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed !__OSCheckDeadLock(thread) in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed thread->queueMutex.head == NULL && thread->queueMutex.tail == NULL in %d\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed. unkown thread state (%d) of thread %p\n"
	.balign 4
	.asciz "OSCheckActiveThreads: Failed __OSCheckMutexes(thread) in %d\n"
	.balign 4

.global lbl_801CF3E0
lbl_801CF3E0:

	# ROM: 0x1CC3E0
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E

.global lbl_801CF410
lbl_801CF410:

	# ROM: 0x1CC410
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F

.global lbl_801CF440
lbl_801CF440:

	# ROM: 0x1CC440
	.asciz "DBExceptionDestination\n"

.global lbl_801CF458
lbl_801CF458:

	# ROM: 0x1CC458
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"

.global lbl_801CF520
lbl_801CF520:

	# ROM: 0x1CC520
	.asciz "Warning: DVDOpen(): file '%s' was not found under %s.\n"
	.balign 4

.global lbl_801CF558
lbl_801CF558:

	# ROM: 0x1CC558
	.asciz "DVDReadAsync(): specified area is out of the file  "

.global lbl_801CF58C
lbl_801CF58C:

	# ROM: 0x1CC58C
	.asciz "DVDRead(): specified area is out of the file  "
	.balign 4
	.4byte 0

.global lbl_801CF5C0
lbl_801CF5C0:

	# ROM: 0x1CC5C0
	.asciz "<< Dolphin SDK - DVD\trelease build: Jul 23 2003 11:27:57 (0x2301) >>"
	.balign 4

.global lbl_801CF608
lbl_801CF608:

	# ROM: 0x1CC608
	.asciz "load fst\n"
	.balign 4

.global lbl_801CF614
lbl_801CF614:

	# ROM: 0x1CC614
	.asciz "DVDChangeDisk(): FST in the new disc is too big.   "

.global lbl_801CF648
lbl_801CF648:

	# ROM: 0x1CC648
	.4byte lbl_80146D84
	.4byte lbl_80146AF8
	.4byte lbl_80146B98
	.4byte lbl_80146BBC
	.4byte lbl_80146AF8
	.4byte lbl_80146ACC
	.4byte lbl_80146BDC
	.4byte lbl_80146C40
	.4byte lbl_80146C6C
	.4byte lbl_80146CA0
	.4byte lbl_80146CC4
	.4byte lbl_80146CE8
	.4byte lbl_80146D0C
	.4byte lbl_80146D30
	.4byte lbl_80146D58
	.4byte lbl_80146BCC

.global lbl_801CF688
lbl_801CF688:

	# ROM: 0x1CC688
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.asciz "DVDChangeDiskAsync(): You can't specify NULL to company name.  \n"
	.balign 4

.global lbl_801CF6D8
lbl_801CF6D8:

	# ROM: 0x1CC6D8
	.4byte lbl_801479DC
	.4byte lbl_801479DC
	.4byte lbl_801479FC
	.4byte lbl_80147A40
	.4byte lbl_80147A8C
	.4byte lbl_80147B08
	.4byte lbl_80147B08
	.4byte lbl_80147B08
	.4byte lbl_80147B08
	.4byte func_80147BE0
	.4byte func_80147BE0
	.4byte lbl_801479DC
	.4byte lbl_80147B08

.global lbl_801CF70C
lbl_801CF70C:

	# ROM: 0x1CC70C
	.4byte lbl_80147D78
	.4byte lbl_80147D80
	.4byte lbl_80147D70
	.4byte lbl_80147D70
	.4byte lbl_80147D78
	.4byte lbl_80147D78
	.4byte lbl_80147D78
	.4byte lbl_80147D78
	.4byte lbl_80147D78
	.4byte lbl_80147D80
	.4byte lbl_80147D70
	.4byte lbl_80147D70
	.4byte lbl_80147D78

.global lbl_801CF740
lbl_801CF740:

	# ROM: 0x1CC740
	.4byte 0
	.4byte 0x00023A00
	.4byte 0x00062800
	.4byte 0x00030200
	.4byte 0x00031100
	.4byte 0x00052000
	.4byte 0x00052001
	.4byte 0x00052100
	.4byte 0x00052400
	.4byte 0x00052401
	.4byte 0x00052402
	.4byte 0x000B5A01
	.4byte 0x00056300
	.4byte 0x00020401
	.4byte 0x00020400
	.4byte 0x00040800
	.4byte 0x00100007
	.4byte 0

.global lbl_801CF788
lbl_801CF788:

	# ROM: 0x1CC788
	.asciz "  Game Name ... %c%c%c%c\n"
	.balign 4
	.asciz "  Company ..... %c%c\n"
	.balign 4
	.asciz "  Disk # ...... %d\n"
	.asciz "  Game ver .... %d\n"
	.asciz "  Streaming ... %s\n"

.global lbl_801CF7F8
lbl_801CF7F8:

	# ROM: 0x1CC7F8
	.asciz "<< Dolphin SDK - VI\trelease build: Apr 17 2003 12:33:22 (0x2301) >>"
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x00040C0C
	.4byte 0x0C0C0208
	.4byte 0x02080208
	.4byte 0x0208020E
	.4byte 0x01AD4047
	.4byte 0x69A20175
	.4byte 0x7A00019C
	.4byte 0x0500011F
	.4byte 0x00230024
	.4byte 0x00010000
	.4byte 0x0D0C0B0A
	.4byte 0x026B026A
	.4byte 0x0269026C
	.4byte 0x027101B0
	.4byte 0x404B6AAC
	.4byte 0x017C8500
	.4byte 0x01A40500
	.4byte 0x011F0021
	.4byte 0x00210002
	.4byte 0x00020D0B
	.4byte 0x0D0B026B
	.4byte 0x026D026B
	.4byte 0x026D0270
	.4byte 0x01B0404B
	.4byte 0x6AAC017C
	.4byte 0x850001A4
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x100F0E0D
	.4byte 0x02060205
	.4byte 0x02040207
	.4byte 0x020D01AD
	.4byte 0x404E70A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x0004100E
	.4byte 0x100E0206
	.4byte 0x02080206
	.4byte 0x0208020E
	.4byte 0x01AD404E
	.4byte 0x70A20175
	.4byte 0x7A00019C
	.4byte 0x0C0001E0
	.4byte 0x00300030
	.4byte 0x00060006
	.4byte 0x18181818
	.4byte 0x040E040E
	.4byte 0x040E040E
	.4byte 0x041A01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0C00
	.4byte 0x01E0002C
	.4byte 0x002C000A
	.4byte 0x000A1818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69A8017B
	.4byte 0x7A00019C
	.4byte 0x060000F1
	.4byte 0x00180019
	.4byte 0x00010000
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x4047699F
	.4byte 0x01727A00
	.4byte 0x019C0C00
	.4byte 0x01E00030
	.4byte 0x00300006
	.4byte 0x00061818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69B40187
	.4byte 0x7A00019C
	.4byte 0x01F001DC
	.4byte 0x01AE0174
	.4byte 0x012900DB
	.4byte 0x008E0046
	.4byte 0x000C00E2
	.4byte 0x00CB00C0
	.4byte 0x00C400CF
	.4byte 0x00DE00EC
	.4byte 0x00FC0008
	.4byte 0x000F0013
	.4byte 0x0013000F
	.4byte 0x000C0008
	.4byte 0x00010000

.global lbl_801CF9EC
lbl_801CF9EC:

	# ROM: 0x1CC9EC
	.4byte lbl_80148948
	.4byte lbl_80148950
	.4byte lbl_80148988
	.4byte lbl_80148990
	.4byte lbl_80148958
	.4byte lbl_80148960
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_80148978
	.4byte lbl_80148980
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_80148998
	.4byte lbl_801489A0
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_80148968
	.4byte lbl_80148970
	.4byte lbl_801489B8
	.4byte lbl_801489B8
	.4byte lbl_801489A8
	.4byte lbl_801489B8
	.4byte lbl_801489B0
	.asciz "***************************************\n"
	.balign 4
	.asciz " ! ! ! C A U T I O N ! ! !             \n"
	.balign 4
	.asciz "This TV format \"DEBUG_PAL\" is only for \n"
	.balign 4
	.asciz "temporary solution until PAL DAC board \n"
	.balign 4
	.asciz "is available. Please do NOT use this   \n"
	.balign 4
	.asciz "mode in real games!!!                  \n"
	.balign 4
	.asciz "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n"
	.balign 4

.global lbl_801CFBAC
lbl_801CFBAC:

	# ROM: 0x1CCBAC
	.4byte lbl_8014A524
	.4byte lbl_8014A52C
	.4byte lbl_8014A534
	.4byte lbl_8014A524
	.4byte lbl_8014A52C
	.4byte lbl_8014A534
	.4byte lbl_8014A524
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801CFBE0
lbl_801CFBE0:

	# ROM: 0x1CCBE0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0x0FFFFFF0
	.4byte 0x00F00F00
	.4byte 0x0FFFFFF0
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x00FFFFF0
	.4byte 0x0F00F000
	.4byte 0x00FFFF00
	.4byte 0x0000F0F0
	.4byte 0x0FFFFF00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0FF000F0
	.4byte 0x0FF00F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00FF0
	.4byte 0x0F000FF0
	.4byte 0
	.4byte 0
	.4byte 0x000F0000
	.4byte 0x00F0F000
	.4byte 0x00F0F000
	.4byte 0x00FF0000
	.4byte 0x0F000FF0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0
	.4byte 0x00F000F0
	.4byte 0x000F0F00
	.4byte 0x00FFFFF0
	.4byte 0x000F0F00
	.4byte 0x00F000F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FFFFF0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000000F0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x0F000000
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00F00F00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00F00F00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x000FF000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x000000F0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x000000F0
	.4byte 0x0000FF00
	.4byte 0x000000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x0000FF00
	.4byte 0x000F0F00
	.4byte 0x00F00F00
	.4byte 0x0FFFFFF0
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0FFFFF00
	.4byte 0x000000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F00000
	.4byte 0x0F000000
	.4byte 0x0FFFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0F0000F0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFFF0
	.4byte 0x000000F0
	.4byte 0x000000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0000FF00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F000FF0
	.4byte 0x0F00F0F0
	.4byte 0x0F00FFF0
	.4byte 0x0F000000
	.4byte 0x00FFFFF0

.global lbl_801D0000
lbl_801D0000:

	# ROM: 0x1CD000
	.4byte 0

.global lbl_801D0004
lbl_801D0004:

	# ROM: 0x1CD004
	.4byte 0x000FF000

.global lbl_801D0008
lbl_801D0008:

	# ROM: 0x1CD008
	.4byte 0x00F00F00

.global lbl_801D000C
lbl_801D000C:

	# ROM: 0x1CD00C
	.4byte 0x0F0000F0

.global lbl_801D0010
lbl_801D0010:

	# ROM: 0x1CD010
	.4byte 0x0F0000F0

.global lbl_801D0014
lbl_801D0014:

	# ROM: 0x1CD014
	.4byte 0x0FFFFFF0

.global lbl_801D0018
lbl_801D0018:

	# ROM: 0x1CD018
	.4byte 0x0F0000F0

.global lbl_801D001C
lbl_801D001C:

	# ROM: 0x1CD01C
	.4byte 0x0F0000F0

.global lbl_801D0020
lbl_801D0020:

	# ROM: 0x1CD020
	.4byte 0
	.4byte 0x0FFFFF00

.global lbl_801D0028
lbl_801D0028:

	# ROM: 0x1CD028
	.4byte 0x0F0000F0

.global lbl_801D002C
lbl_801D002C:

	# ROM: 0x1CD02C
	.4byte 0x0F0000F0

.global lbl_801D0030
lbl_801D0030:

	# ROM: 0x1CD030
	.4byte 0x0FFFFF00

.global lbl_801D0034
lbl_801D0034:

	# ROM: 0x1CD034
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0FFFFF00
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F000F0
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x00F000F0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0FFFF000
	.4byte 0x0F000F00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F000F00
	.4byte 0x0FFFF000
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0FFFFF00
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0FFFFF00
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F00000
	.4byte 0x0F000000
	.4byte 0x0F00FFF0
	.4byte 0x0F0000F0
	.4byte 0x00F000F0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0FFFFFF0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0000FFF0
	.4byte 0x00000F00

.global lbl_801D012C
lbl_801D012C:

	# ROM: 0x1CD12C
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x0F000F00
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F000F00
	.4byte 0x0F00F000
	.4byte 0x0FFF0000
	.4byte 0x0F00F000
	.4byte 0x0F000F00
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x0F00000F
	.4byte 0x0FF000FF
	.4byte 0x0F0F0F0F
	.4byte 0x0F00F00F
	.4byte 0x0F00F00F
	.4byte 0x0F00000F
	.4byte 0x0F00000F
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0FF000F0
	.4byte 0x0F0F00F0
	.4byte 0x0F00F0F0
	.4byte 0x0F00F0F0
	.4byte 0x0F000FF0
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0FFFFF00
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F00F0F0
	.4byte 0x0F000F00
	.4byte 0x00FFF0F0
	.4byte 0
	.4byte 0x0FFFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0FFFFF00
	.4byte 0x0F00F000
	.4byte 0x0F000F00
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0F000000
	.4byte 0x00FFFF00
	.4byte 0x000000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0FFFFFFF
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0x0F00000F
	.4byte 0x0F00000F
	.4byte 0x0F00000F
	.4byte 0x0F00F00F
	.4byte 0x0F00F00F
	.4byte 0x0F00F00F
	.4byte 0x00FF0FF0
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0x00F00F00
	.4byte 0x000FF000
	.4byte 0x00F00F00
	.4byte 0x0F0000F0
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0x0F00000F
	.4byte 0x00F000F0
	.4byte 0x000F0F00
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0x000000F0
	.4byte 0x00000F00
	.4byte 0x000FF000
	.4byte 0x00F00000
	.4byte 0x0F000000
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x0F000000
	.4byte 0x00F00000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0x000000F0
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x00F00F00
	.4byte 0x0F0000F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0FFFFFF0
	.4byte 0
	.4byte 0x000FF000
	.4byte 0x000FF000
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F000F00
	.4byte 0x0F000F00
	.4byte 0x0F000F00
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00FFFF00
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x0F000000
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x000000F0
	.4byte 0x000000F0
	.4byte 0x000000F0
	.4byte 0x000FFFF0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFF00
	.4byte 0x0F0000F0
	.4byte 0x0FFFFFF0
	.4byte 0x0F000000
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0x0000FF00
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x0FFFFF00
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x000FFFF0
	.4byte 0x000000F0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F0FF00
	.4byte 0x00FF00F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x00000F00
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x00000F00
	.4byte 0x00F00F00
	.4byte 0x000FF000
	.4byte 0
	.4byte 0
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F00F00
	.4byte 0x00F0F000
	.4byte 0x00FFF000
	.4byte 0x00F00F00
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F0FF00
	.4byte 0x0F0F00F0
	.4byte 0x0F0F00F0
	.4byte 0x0F0F00F0
	.4byte 0x0F0F00F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F0FF00
	.4byte 0x00FF00F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x000FFF00
	.4byte 0
	.4byte 0
	.4byte 0x00FFF000
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0x00FFF000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0x000FFF00
	.4byte 0x00F00F00
	.4byte 0x00F00F00
	.4byte 0x000FFF00
	.4byte 0x00000F00
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F0FFF0
	.4byte 0x00FF0000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0x00F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000FFFF0
	.4byte 0x00F00000
	.4byte 0x000FFF00
	.4byte 0x000000F0
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x00FFFFF0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00000FF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x000FFFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x00F000F0
	.4byte 0x000F0F00
	.4byte 0x0000F000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0F0000F0
	.4byte 0x0F00F0F0
	.4byte 0x0F00F0F0
	.4byte 0x0F00F0F0
	.4byte 0x00FF0F00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00F000F0
	.4byte 0x000F0F00
	.4byte 0x0000F000
	.4byte 0x000F0F00
	.4byte 0x00F000F0
	.4byte 0
	.4byte 0
	.4byte 0x0F000F00
	.4byte 0x0F000F00
	.4byte 0x00F00F00
	.4byte 0x000FFF00
	.4byte 0x00000F00
	.4byte 0x00FFF000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FFFFF0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0x00FFFFF0
	.4byte 0
	.4byte 0x00000F00
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00FF0000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00000F00
	.4byte 0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0
	.4byte 0x000F0000
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x00000FF0
	.4byte 0x0000F000
	.4byte 0x0000F000
	.4byte 0x000F0000
	.4byte 0
	.4byte 0x00FF00FF
	.4byte 0x0F00FF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00FF0000
	.4byte 0x0FF00000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFF000
	.4byte 0xFFFFF000
	.4byte 0xFFF00000
	.4byte 0

.global lbl_801D07E0
lbl_801D07E0:

	# ROM: 0x1CD7E0
	.asciz "DEMOStats.c"

.global lbl_801D07EC
lbl_801D07EC:

	# ROM: 0x1CD7EC
	.asciz "DEMOSetStats: Unknown demo stat type\n"
	.balign 4

.global lbl_801D0814
lbl_801D0814:

	# ROM: 0x1CD814
	.4byte lbl_8014AE8C
	.4byte lbl_8014AED8
	.4byte lbl_8014AF24
	.4byte lbl_8014AFBC
	.4byte lbl_8014B01C
	.4byte lbl_8014B060
	.4byte lbl_8014B0E4
	.4byte lbl_8014B0E4
	.4byte func_8014B1C4
	.4byte func_8014B1C4
	.asciz "%s: %8d\n"
	.balign 4
	.asciz "%s: %8.2f\n"
	.balign 4
	.asciz "%s: %8.3f\n"
	.balign 4
	.asciz "%s: %8.3f"
	.balign 4
	.asciz "Undefined stat type %d in DEMOPrintStats()\n"

.global lbl_801D0898
lbl_801D0898:

	# ROM: 0x1CD898
	.4byte lbl_8014B9B4
	.4byte lbl_8014B9D4
	.4byte lbl_8014B9F4
	.4byte lbl_8014BA14
	.4byte lbl_8014BA34
	.4byte lbl_8014BA54
	.4byte lbl_8014BA74
	.4byte lbl_8014BA94
	.4byte lbl_8014BAB4
	.4byte lbl_8014BAD4

.global lbl_801D08C0
lbl_801D08C0:

	# ROM: 0x1CD8C0
	.4byte lbl_8014BAF4
	.4byte lbl_8014BAF4
	.4byte lbl_8014B998
	.4byte lbl_8014B710
	.4byte lbl_8014B910
	.4byte lbl_8014B808
	.4byte lbl_8014B864
	.4byte lbl_8014B8BC
	.4byte lbl_8014BAF4
	.4byte lbl_8014BB14

.global lbl_801D08E8
lbl_801D08E8:

	# ROM: 0x1CD8E8
	.4byte lbl_8014B4F8
	.4byte lbl_8014B50C
	.4byte lbl_8014B520
	.4byte lbl_8014B534
	.4byte lbl_8014B548
	.4byte lbl_8014B55C
	.4byte lbl_8014B570
	.4byte lbl_8014B584
	.4byte lbl_8014B598
	.4byte lbl_8014B5AC

.global lbl_801D0910
lbl_801D0910:

	# ROM: 0x1CD910
	.4byte lbl_8014B5C0
	.4byte lbl_8014B5C0
	.4byte lbl_8014B4DC
	.4byte lbl_8014B2A8
	.4byte lbl_8014B43C
	.4byte lbl_8014B358
	.4byte lbl_8014B3A8
	.4byte lbl_8014B3F4
	.4byte lbl_8014B5C0
	.4byte lbl_8014B4A0

.global lbl_801D0938
lbl_801D0938:

	# ROM: 0x1CD938
	.asciz "<< Dolphin SDK - PAD\trelease build: Aug  6 2003 04:30:02 (0x2301) >>"
	.balign 4

.global lbl_801D0980
lbl_801D0980:

	# ROM: 0x1CD980
	.4byte lbl_8014D5AC
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_801D0990
lbl_801D0990:

	# ROM: 0x1CD990
	.asciz "<< Dolphin SDK - AI\trelease build: Apr 17 2003 12:33:54 (0x2301) >>"
	.4byte 0

.global lbl_801D09D8
lbl_801D09D8:

	# ROM: 0x1CD9D8
	.asciz "<< Dolphin SDK - AR\trelease build: Apr 17 2003 12:33:55 (0x2301) >>"
	.4byte 0

.global lbl_801D0A20
lbl_801D0A20:

	# ROM: 0x1CDA20
	.asciz "<< Dolphin SDK - ARQ\trelease build: Apr 17 2003 12:33:56 (0x2301) >>"
	.balign 4

.global lbl_801D0A68
lbl_801D0A68:

	# ROM: 0x1CDA68
	.asciz "<< Dolphin SDK - DSP\trelease build: Apr 17 2003 12:34:16 (0x2301) >>"
	.balign 4
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Apr 17 2003"
	.asciz "12:34:16"
	.balign 4

.global lbl_801D0AE8
lbl_801D0AE8:

	# ROM: 0x1CDAE8
	.asciz "DSP is booting task: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.balign 4
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D0C40
lbl_801D0C40:

	# ROM: 0x1CDC40
	.asciz "<< Dolphin SDK - GX\trelease build: Jul 23 2003 11:27:39 (0x2301) >>"
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0
	.4byte 0xBF800000
	.4byte 0xC0000000
	.4byte 0

.global lbl_801D0DAC
lbl_801D0DAC:

	# ROM: 0x1CDDAC
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00030000
	.4byte 0x00040000
	.4byte 0x00050000
	.4byte 0x00060000
	.4byte 0x00070000
	.4byte 0x00008000
	.4byte 0x00018000
	.4byte 0x00028000
	.4byte 0x00038000
	.4byte 0x00048000
	.4byte 0x00058000
	.4byte 0x00068000
	.4byte 0x00078000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00098000
	.4byte 0x00060000
	.4byte 0x000B8000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00088000
	.4byte 0x00050000
	.4byte 0x000A8000
	.4byte 0x00070000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00090000
	.4byte 0x00060000
	.4byte 0x000B0000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00080000
	.4byte 0x00050000
	.4byte 0x000A0000
	.4byte 0x00070000

.global lbl_801D0E6C
lbl_801D0E6C:

	# ROM: 0x1CDE6C
	.4byte lbl_80150BD8
	.4byte 0x0000007F
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D0E80
lbl_801D0E80:

	# ROM: 0x1CDE80
	.4byte lbl_8015268C
	.4byte lbl_801526A0
	.4byte lbl_801526B4
	.4byte lbl_801526C8
	.4byte lbl_801526DC
	.4byte lbl_801526F0
	.4byte lbl_80152704
	.4byte lbl_80152718
	.4byte lbl_8015272C
	.4byte lbl_80152740
	.4byte lbl_80152754
	.4byte lbl_801527BC
	.4byte lbl_801527D0
	.4byte lbl_801527E4
	.4byte lbl_801527F8
	.4byte lbl_8015280C
	.4byte lbl_80152820
	.4byte lbl_80152834
	.4byte lbl_80152848
	.4byte lbl_8015285C
	.4byte lbl_80152870
	.4byte func_80152880
	.4byte func_80152880
	.4byte func_80152880
	.4byte func_80152880
	.4byte lbl_80152788

.global lbl_801D0EE8
lbl_801D0EE8:

	# ROM: 0x1CDEE8
	.4byte lbl_80152904
	.4byte lbl_80152918
	.4byte lbl_8015292C
	.4byte lbl_80152940
	.4byte lbl_80152954
	.4byte lbl_80152968
	.4byte lbl_8015297C
	.4byte lbl_80152990
	.4byte lbl_801529A4
	.4byte lbl_801529B8
	.4byte lbl_801529CC
	.4byte lbl_80152A34
	.4byte lbl_80152A48
	.4byte lbl_80152A5C
	.4byte lbl_80152A70
	.4byte lbl_80152A84
	.4byte lbl_80152A98
	.4byte lbl_80152AAC
	.4byte lbl_80152AC0
	.4byte lbl_80152AD4
	.4byte lbl_80152AE8
	.4byte func_80152AF8
	.4byte func_80152AF8
	.4byte func_80152AF8
	.4byte func_80152AF8
	.4byte lbl_80152A00

.global lbl_801D0F50
lbl_801D0F50:

	# ROM: 0x1CDF50
	.4byte lbl_80152DB4
	.4byte lbl_80152DDC
	.4byte lbl_80152E30
	.4byte lbl_80152E4C
	.4byte lbl_80152E68
	.4byte lbl_80152E90
	.4byte lbl_80152EB8
	.4byte lbl_80152EE0
	.4byte lbl_80152F08
	.4byte lbl_80152F30
	.4byte lbl_80152F58
	.4byte lbl_80152F80
	.4byte func_80152FA4
	.4byte func_80152FA4
	.4byte func_80152FA4
	.4byte func_80152FA4
	.4byte lbl_80152DDC

.global lbl_801D0F94
lbl_801D0F94:

	# ROM: 0x1CDF94
	.4byte lbl_80153024
	.4byte lbl_8015304C
	.4byte lbl_801530A0
	.4byte lbl_801530BC
	.4byte lbl_801530D8
	.4byte lbl_80153100
	.4byte lbl_80153128
	.4byte lbl_80153150
	.4byte lbl_80153178
	.4byte lbl_801531A0
	.4byte lbl_801531C8
	.4byte lbl_801531F0
	.4byte func_80153214
	.4byte func_80153214
	.4byte func_80153214
	.4byte func_80153214
	.4byte lbl_8015304C

.global lbl_801D0FD8
lbl_801D0FD8:

	# ROM: 0x1CDFD8
	.4byte lbl_80153558
	.4byte lbl_8015356C
	.4byte lbl_80153580
	.4byte lbl_80153594
	.4byte lbl_801535A8
	.4byte lbl_801535BC
	.4byte lbl_801535D0

.global lbl_801D0FF4
lbl_801D0FF4:

	# ROM: 0x1CDFF4
	.4byte lbl_801533C4
	.4byte lbl_801533D0
	.4byte lbl_801533DC
	.4byte lbl_801533E8
	.4byte lbl_80153404
	.4byte lbl_8015340C
	.4byte lbl_80153414
	.4byte lbl_8015341C
	.4byte lbl_80153424
	.4byte lbl_8015342C
	.4byte lbl_80153434
	.4byte lbl_8015343C
	.4byte func_80153440
	.4byte func_80153440
	.4byte func_80153440
	.4byte func_80153440
	.4byte func_80153440
	.4byte func_80153440
	.4byte func_80153440
	.4byte lbl_801533F4
	.4byte lbl_801533FC

.global func_801D1048
func_801D1048:

	# ROM: 0x1CE048
	.4byte 0
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x01000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_801D1084
lbl_801D1084:

	# ROM: 0x1CE084
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global func_801D10C0
func_801D10C0:

	# ROM: 0x1CE0C0
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global func_801D10FC
func_801D10FC:

	# ROM: 0x1CE0FC
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_801D1138
lbl_801D1138:

	# ROM: 0x1CE138
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_801D1174
lbl_801D1174:

	# ROM: 0x1CE174
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_801D11B0
lbl_801D11B0:

	# ROM: 0x1CE1B0
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000
	.4byte 0

.global lbl_801D11F0
lbl_801D11F0:

	# ROM: 0x1CE1F0
	.4byte lbl_80155154
	.4byte lbl_80155064
	.4byte lbl_80155078
	.4byte lbl_80155098
	.4byte lbl_801550B8
	.4byte lbl_801550E4
	.4byte lbl_80155118
	.4byte 0

.global lbl_801D1210
lbl_801D1210:

	# ROM: 0x1CE210
	.4byte lbl_801556E8
	.4byte lbl_801556F4
	.4byte lbl_801556F4
	.4byte lbl_80155700
	.4byte lbl_80155700
	.4byte lbl_80155700
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_801556E8
	.4byte lbl_801556F4
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556E8
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556F4
	.4byte lbl_8015570C
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556E8
	.4byte lbl_8015570C
	.4byte lbl_801556F4
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556F4
	.4byte lbl_801556F4
	.4byte lbl_801556F4
	.4byte lbl_801556F4
	.4byte lbl_80155700
	.4byte lbl_80155700
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556E8
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_8015570C
	.4byte lbl_801556F4
	.4byte lbl_801556F4
	.4byte lbl_8015570C
	.4byte lbl_80155700

.global lbl_801D1304
lbl_801D1304:

	# ROM: 0x1CE304
	.4byte lbl_8015583C
	.4byte lbl_80155848
	.4byte lbl_80155848
	.4byte lbl_80155854
	.4byte lbl_80155854
	.4byte lbl_80155854
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_8015583C
	.4byte lbl_80155848
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_8015583C
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155848
	.4byte lbl_80155860
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_8015583C
	.4byte lbl_80155860
	.4byte lbl_80155848
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155848
	.4byte lbl_80155848
	.4byte lbl_80155848
	.4byte lbl_80155848
	.4byte lbl_80155854
	.4byte lbl_80155854
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_8015583C
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155860
	.4byte lbl_80155848
	.4byte lbl_80155848
	.4byte lbl_80155860
	.4byte lbl_80155854

.global lbl_801D13F8
lbl_801D13F8:

	# ROM: 0x1CE3F8
	.4byte lbl_80155A64
	.4byte lbl_80155A78
	.4byte lbl_80155A78
	.4byte lbl_80155A8C
	.4byte lbl_80155A8C
	.4byte lbl_80155A8C
	.4byte lbl_80155AA0
	.4byte lbl_80155AC8
	.4byte lbl_80155A64
	.4byte lbl_80155A78
	.4byte lbl_80155A8C
	.4byte lbl_80155AC8
	.4byte lbl_80155AC8
	.4byte lbl_80155AC8
	.4byte lbl_80155AB4
	.4byte 0

.global lbl_801D1438
lbl_801D1438:

	# ROM: 0x1CE438
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80

.global lbl_801D1488
lbl_801D1488:

	# ROM: 0x1CE488
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0

.global lbl_801D14B0
lbl_801D14B0:

	# ROM: 0x1CE4B0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005

.global lbl_801D14D0
lbl_801D14D0:

	# ROM: 0x1CE4D0
	.4byte lbl_80158A58
	.4byte lbl_80158A74
	.4byte lbl_80158A90
	.4byte lbl_80158AAC
	.4byte lbl_80158B00
	.4byte lbl_80158B1C
	.4byte lbl_80158B38
	.4byte lbl_80158B54
	.4byte lbl_80158AC8
	.4byte lbl_80158B70
	.4byte lbl_80158BA0
	.4byte lbl_80158BD0
	.4byte lbl_80158C00
	.4byte lbl_80158C30
	.4byte lbl_80158C60
	.4byte lbl_80158C90
	.4byte lbl_80158CC0
	.4byte lbl_80158CEC
	.4byte lbl_80158CFC
	.4byte lbl_80158D0C
	.4byte lbl_80158D1C
	.4byte lbl_80158AE4
	.4byte func_80158D28

.global lbl_801D152C
lbl_801D152C:

	# ROM: 0x1CE52C
	.4byte lbl_8015862C
	.4byte lbl_8015864C
	.4byte lbl_8015866C
	.4byte lbl_8015868C
	.4byte lbl_801586AC
	.4byte lbl_801586CC
	.4byte lbl_801586EC
	.4byte lbl_8015870C
	.4byte lbl_8015872C
	.4byte lbl_8015874C
	.4byte lbl_8015878C
	.4byte lbl_801587AC
	.4byte lbl_801587C8
	.4byte lbl_801587E4
	.4byte lbl_80158800
	.4byte lbl_8015881C
	.4byte lbl_80158838
	.4byte lbl_80158854
	.4byte lbl_80158870
	.4byte lbl_8015888C
	.4byte lbl_801588A8
	.4byte lbl_801588C4
	.4byte lbl_801588E0
	.4byte lbl_801588FC
	.4byte lbl_80158918
	.4byte lbl_80158934
	.4byte lbl_80158950
	.4byte lbl_8015896C
	.4byte lbl_80158988
	.4byte lbl_801589A4
	.4byte lbl_801589C0
	.4byte lbl_801589DC
	.4byte lbl_801589F8
	.4byte lbl_80158A14
	.4byte lbl_8015876C
	.4byte func_80158A2C

.global lbl_801D15BC
lbl_801D15BC:

	# ROM: 0x1CE5BC
	.4byte lbl_80158E60
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158E6C
	.4byte lbl_80158E7C
	.4byte lbl_80158E90
	.4byte lbl_80158EA4
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EB8
	.4byte lbl_80158EC0
	.4byte lbl_80158EC0
	.4byte lbl_80158EC0
	.4byte lbl_80158EC0
	.4byte lbl_80158EB8
	.4byte lbl_80158EC8

.global lbl_801D1618
lbl_801D1618:

	# ROM: 0x1CE618
	.asciz "<< Dolphin SDK - CARD\trelease build: Apr 17 2003 12:34:19 (0x2301) >>"
	.balign 4

.global lbl_801D1660
lbl_801D1660:

	# ROM: 0x1CE660
	.4byte lbl_8015A748
	.4byte 0x0000007F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D1680
lbl_801D1680:

	# ROM: 0x1CE680
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000021
	.4byte 0x02FF0021
	.4byte 0x13061203
	.4byte 0x12041305
	.4byte 0x009200FF
	.4byte 0x0088FFFF
	.4byte 0x0089FFFF
	.4byte 0x008AFFFF
	.4byte 0x008BFFFF
	.4byte 0x8F0002BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000102BF
	.4byte 0x008E25FF
	.4byte 0x0380FF00
	.4byte 0x02940027
	.4byte 0x02BF008E
	.4byte 0x1FDF24FF
	.4byte 0x02400FFF
	.4byte 0x00980400
	.4byte 0x009A0010
	.4byte 0x00990000
	.4byte 0x8E0002BF
	.4byte 0x009402BF
	.4byte 0x864402BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000316FB
	.4byte 0x00018F00
	.4byte 0x02BF008E
	.4byte 0x0380CDD1
	.4byte 0x02940048
	.4byte 0x27FF0380
	.4byte 0x00010295
	.4byte 0x005A0380
	.4byte 0x00020295
	.4byte 0x8000029F
	.4byte 0x00480021
	.4byte 0x8E0002BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x25FF02BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x00C5FFFF
	.4byte 0x03400FFF
	.4byte 0x1C9F02BF
	.4byte 0x008E00C7
	.4byte 0xFFFF02BF
	.4byte 0x008E00C6
	.4byte 0xFFFF02BF
	.4byte 0x008E00C0
	.4byte 0xFFFF02BF
	.4byte 0x008E20FF
	.4byte 0x03400FFF
	.4byte 0x1F5F02BF
	.4byte 0x008E21FF
	.4byte 0x02BF008E
	.4byte 0x23FF1205
	.4byte 0x1206029F
	.4byte 0x80B50021
	.4byte 0x27FC03C0
	.4byte 0x8000029D
	.4byte 0x008802DF
	.4byte 0x27FE03C0
	.4byte 0x8000029C
	.4byte 0x008E02DF
	.4byte 0x2ECE2CCF
	.4byte 0x00F8FFCD
	.4byte 0x00F9FFC9
	.4byte 0x00FAFFCB
	.4byte 0x26C902C0
	.4byte 0x0004029D
	.4byte 0x009C02DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D17E0
lbl_801D17E0:

	# ROM: 0x1CE7E0
	.4byte 0x00002000
	.4byte 0x00004000
	.4byte 0x00008000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00040000
	.4byte 0
	.4byte 0

.global lbl_801D1800
lbl_801D1800:

	# ROM: 0x1CE800
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x00000100
	.4byte 0x00000200

.global lbl_801D1820
lbl_801D1820:

	# ROM: 0x1CE820
	.asciz "<< Dolphin SDK - EXI\trelease build: Apr 17 2003 12:33:17 (0x2301) >>"
	.balign 4
	.asciz "Memory Card 59"
	.balign 4
	.asciz "Memory Card 123"
	.asciz "Memory Card 251"
	.asciz "Memory Card 507"
	.asciz "Memory Card 1019"
	.balign 4
	.asciz "Memory Card 2043"
	.balign 4
	.asciz "USB Adapter"
	.asciz "Net Card"
	.balign 4
	.asciz "Artist Ether"
	.balign 4
	.asciz "Broadband Adapter"
	.balign 4
	.asciz "Stream Hanger"
	.balign 4
	.asciz "IS-DOL-VIEWER"
	.balign 4
	.4byte 0

.global lbl_801D1930
lbl_801D1930:

	# ROM: 0x1CE930
	.asciz "<< Dolphin SDK - SI\trelease build: Apr 17 2003 12:33:19 (0x2301) >>"

.global lbl_801D1974
lbl_801D1974:

	# ROM: 0x1CE974
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D1988
lbl_801D1988:

	# ROM: 0x1CE988
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.asciz "No response"
	.asciz "N64 controller"
	.balign 4
	.asciz "N64 microphone"
	.balign 4
	.asciz "N64 keyboard"
	.balign 4
	.asciz "N64 mouse"
	.balign 4
	.asciz "GameBoy Advance"
	.asciz "Standard controller"
	.asciz "Wireless receiver"
	.balign 4
	.asciz "WaveBird controller"
	.asciz "Keyboard"
	.balign 4
	.asciz "Steering"
	.balign 4
	.4byte 0

.global lbl_801D1A48
lbl_801D1A48:

	# ROM: 0x1CEA48
	.4byte 0x00F60200
	.4byte 0x000F1200
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.balign 4
	.4byte 0

.global lbl_801D1AE0
lbl_801D1AE0:

	# ROM: 0x1CEAE0
	.4byte lbl_80288540
	.4byte 0
	.4byte lbl_8016B2F0
	.4byte lbl_8016B338

.global lbl_801D1AF0
lbl_801D1AF0:

	# ROM: 0x1CEAF0
	.4byte func_8016C4D0
	.4byte lbl_8016C4C8
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte func_8016C4D0
	.4byte lbl_8016C3FC
	.4byte func_8016C4D0
	.4byte lbl_8016C4C8
	.4byte lbl_8016C41C
	.4byte lbl_8016C3DC

.global lbl_801D1B34
lbl_801D1B34:

	# ROM: 0x1CEB34
	.4byte lbl_8016CD14
	.4byte lbl_8016C8CC
	.4byte lbl_8016C8E0
	.4byte lbl_8016C90C
	.4byte lbl_8016C970
	.4byte lbl_8016C9BC
	.4byte lbl_8016CA10
	.4byte lbl_8016CA64
	.4byte lbl_8016CAB8
	.4byte lbl_8016CB40
	.4byte lbl_8016CBBC
	.4byte lbl_8016CC04
	.4byte lbl_8016CC80
	.4byte lbl_8016CCA8
	.4byte lbl_8016CD14
	.4byte lbl_8016CCF4
	.4byte lbl_8016CC94

.global lbl_801D1B78
lbl_801D1B78:

	# ROM: 0x1CEB78
	.4byte lbl_8016D0FC
	.4byte lbl_8016D0FC
	.4byte lbl_8016D050
	.4byte lbl_8016D05C
	.4byte lbl_8016D068
	.4byte lbl_8016D074
	.4byte lbl_8016D080
	.4byte lbl_8016D080
	.4byte lbl_8016D090
	.4byte lbl_8016D09C
	.4byte lbl_8016D0A8
	.4byte lbl_8016D0B4
	.4byte lbl_8016D0C0
	.4byte lbl_8016D0D8
	.4byte lbl_8016D0FC
	.4byte lbl_8016D0E4
	.4byte lbl_8016D0CC

.global lbl_801D1BBC
lbl_801D1BBC:

	# ROM: 0x1CEBBC
	.4byte lbl_80288558
	.4byte 0
	.4byte 0

.global lbl_801D1BC8
lbl_801D1BC8:

	# ROM: 0x1CEBC8
	.4byte lbl_80288560
	.4byte 0
	.4byte lbl_8016C7D8
	.4byte lbl_8016D3B4

.global lbl_801D1BD8
lbl_801D1BD8:

	# ROM: 0x1CEBD8
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8025B5D8
	.4byte 0x00000100
	.4byte lbl_8025B5D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8017C5B4
	.4byte lbl_801724C0
	.4byte lbl_801724B8
	.4byte 0
	.4byte lbl_801D1C28

.global lbl_801D1C28
lbl_801D1C28:

	# ROM: 0x1CEC28
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8025B4D8
	.4byte 0x00000100
	.4byte lbl_8025B4D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8017C5B4
	.4byte lbl_801724C0
	.4byte lbl_801724B8
	.4byte 0
	.4byte lbl_801D1C78

.global lbl_801D1C78
lbl_801D1C78:

	# ROM: 0x1CEC78
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8025B3D8
	.4byte 0x00000100
	.4byte lbl_8025B3D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8017C5B4
	.4byte lbl_801724C0
	.4byte lbl_801724B8
	.4byte 0
	.4byte lbl_801D1CC8

.global lbl_801D1CC8
lbl_801D1CC8:

	# ROM: 0x1CECC8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D1D18
lbl_801D1D18:

	# ROM: 0x1CED18
	.4byte lbl_8016E9C8
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016E9E0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016E9F8
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EA10
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EBC0
	.4byte lbl_8016EA28
	.4byte lbl_8016EA40
	.4byte lbl_8016EA58
	.4byte lbl_8016EA70
	.4byte lbl_8016EA88
	.4byte lbl_8016EAA0
	.4byte lbl_8016EAB8
	.4byte lbl_8016EAD0
	.4byte lbl_8016EAE8
	.4byte lbl_8016EB00
	.4byte lbl_8016EB18
	.4byte lbl_8016EB30
	.4byte lbl_8016EB48
	.4byte lbl_8016EB60
	.4byte lbl_8016EB78
	.4byte lbl_8016EB90
	.4byte lbl_8016EBA8
	.4byte 0

.global lbl_801D1E40
lbl_801D1E40:

	# ROM: 0x1CEE40
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01020202
	.4byte 0x02020101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x04080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x30303030
	.4byte 0x30303030
	.4byte 0x30300808
	.4byte 0x08080808
	.4byte 0x08A0A0A0
	.4byte 0xA0A0A080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808080
	.4byte 0x80808008
	.4byte 0x08080808
	.4byte 0x08606060
	.4byte 0x60606040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404040
	.4byte 0x40404008
	.4byte 0x08080801
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D1F40
lbl_801D1F40:

	# ROM: 0x1CEF40
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

.global lbl_801D2040
lbl_801D2040:

	# ROM: 0x1CF040
	.4byte lbl_80171824
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte lbl_801717C4
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte lbl_801717C4
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte lbl_801717FC
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte func_80171834
	.4byte lbl_80171810
	.4byte func_80171834
	.4byte func_80171834
	.4byte lbl_80171824

.global lbl_801D20C4
lbl_801D20C4:

	# ROM: 0x1CF0C4
	.4byte lbl_80171AB0
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte lbl_80171A78
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte lbl_80171A78
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte lbl_80171A90
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte lbl_80171AA0
	.4byte func_80171ABC
	.4byte func_80171ABC
	.4byte lbl_80171AB0

.global lbl_801D2148
lbl_801D2148:

	# ROM: 0x1CF148
	.4byte lbl_80171FB4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_80172004
	.4byte lbl_80171F7C
	.4byte lbl_80171FF0
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_80171F34
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_80171FB4
	.4byte lbl_801720E4
	.4byte lbl_80172068
	.4byte lbl_80171F34
	.4byte lbl_80172004
	.4byte lbl_80171F7C
	.4byte lbl_80171FF0
	.4byte lbl_801720E4
	.4byte lbl_80171F34
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720CC
	.4byte lbl_80171F34
	.4byte lbl_80172044
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_801720A0
	.4byte lbl_801720E4
	.4byte lbl_80171F34
	.4byte lbl_801720E4
	.4byte lbl_801720E4
	.4byte lbl_80171F34

.global lbl_801D2228
lbl_801D2228:

	# ROM: 0x1CF228
	.4byte lbl_80171CE4
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171CFC
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171CD8
	.4byte lbl_80171D20
	.4byte lbl_80171CCC
	.4byte lbl_80171D20
	.4byte lbl_80171D20
	.4byte lbl_80171D08
	.4byte 0

.global lbl_801D2270
lbl_801D2270:

	# ROM: 0x1CF270
	.4byte lbl_80179620
	.4byte lbl_80179564
	.4byte lbl_80179480
	.4byte lbl_801793C8
	.4byte lbl_801790F0
	.4byte lbl_80178EC0
	.4byte lbl_80178B28
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80178718
	.4byte lbl_801782F8
	.4byte lbl_80177F2C
	.4byte lbl_80177B64
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_8017786C
	.4byte lbl_80176F44
	.4byte lbl_80177718
	.4byte lbl_801771E8
	.4byte lbl_801770E8
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte lbl_80179620
	.4byte 0
	.4byte 0

.global lbl_801D22F8
lbl_801D22F8:

	# ROM: 0x1CF2F8
	.4byte lbl_80178638
	.4byte lbl_80178658
	.4byte lbl_80178630
	.4byte lbl_80178658
	.4byte lbl_80178640
	.4byte lbl_80178648
	.4byte lbl_80178650

.global lbl_801D2314
lbl_801D2314:

	# ROM: 0x1CF314
	.4byte lbl_80178A48
	.4byte lbl_80178A68
	.4byte lbl_80178A40
	.4byte lbl_80178A68
	.4byte lbl_80178A50
	.4byte lbl_80178A58
	.4byte lbl_80178A60

.global lbl_801D2330
lbl_801D2330:

	# ROM: 0x1CF330
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D233C
lbl_801D233C:

	# ROM: 0x1CF33C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01000000

.global lbl_801D234C
lbl_801D234C:

	# ROM: 0x1CF34C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D2360
lbl_801D2360:

	# ROM: 0x1CF360
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.4byte 0

.global lbl_801D23A0
lbl_801D23A0:

	# ROM: 0x1CF3A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D23C0
lbl_801D23C0:

	# ROM: 0x1CF3C0
	.4byte lbl_8017EE64
	.4byte lbl_8017EE94
	.4byte lbl_8017EEB8
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EF90
	.4byte lbl_8017EEE0
	.4byte lbl_8017EF90
	.4byte lbl_8017EEF8

.global lbl_801D2410
lbl_801D2410:

	# ROM: 0x1CF410
	.4byte 0x100010F3
	.4byte 0x11F51307
	.4byte 0x1428155B
	.4byte 0x16A017F9
	.4byte 0x19661AE8
	.4byte 0x1C821E34
	.4byte 0x20000000

.global lbl_801D242C
lbl_801D242C:

	# ROM: 0x1CF42C
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0x00000032
	.4byte 0x0000003C
	.4byte 0x00000046
	.4byte 0x00000050
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0x0000006E
	.4byte 0x0000006E
	.4byte 0x00000078
	.4byte 0x00000082
	.4byte 0x0000008C
	.4byte 0x00000096
	.4byte 0x000000A0
	.4byte 0x000000AA
	.4byte 0x000000BE
	.4byte 0x000000C8
	.4byte 0x000000DC
	.4byte 0x000000E6
	.4byte 0x000000FA
	.4byte 0x0000010E
	.4byte 0x00000122
	.4byte 0x00000136
	.4byte 0x0000014A
	.4byte 0x0000015E
	.4byte 0x0000017C
	.4byte 0x0000019A
	.4byte 0x000001B8
	.4byte 0x000001D6
	.4byte 0x000001F4
	.4byte 0x0000021C
	.4byte 0x00000244
	.4byte 0x0000026C
	.4byte 0x00000294
	.4byte 0x000002C6
	.4byte 0x000002F8
	.4byte 0x00000334
	.4byte 0x00000370
	.4byte 0x000003AC
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x0000044C
	.4byte 0x000004B0
	.4byte 0x00000514
	.4byte 0x00000578
	.4byte 0x000005DC
	.4byte 0x00000640
	.4byte 0x000006A4
	.4byte 0x00000708
	.4byte 0x000007D0
	.4byte 0x00000834
	.4byte 0x000008FC
	.4byte 0x00000960
	.4byte 0x00000A28
	.4byte 0x00000AF0
	.4byte 0x00000BB8
	.4byte 0x00000C80
	.4byte 0x00000DAC
	.4byte 0x00000E74
	.4byte 0x00000FA0
	.4byte 0x000010CC
	.4byte 0x000011F8
	.4byte 0x00001324
	.4byte 0x000014B4
	.4byte 0x00001644
	.4byte 0x000017D4
	.4byte 0x00001964
	.4byte 0x00001B58
	.4byte 0x00001D4C
	.4byte 0x00001FA4
	.4byte 0x00002198
	.4byte 0x00002454
	.4byte 0x000026AC
	.4byte 0x00002710
	.4byte 0x00002AF8
	.4byte 0x00002EE0
	.4byte 0x000032C8
	.4byte 0x000036B0
	.4byte 0x00003A98
	.4byte 0x00003E80
	.4byte 0x00004268
	.4byte 0x00004650
	.4byte 0x00004A38
	.4byte 0x00005208
	.4byte 0x000055F0
	.4byte 0x00005DC0
	.4byte 0x00006590
	.4byte 0x00006D60
	.4byte 0x00007530
	.4byte 0x00007D00
	.4byte 0x000084D0
	.4byte 0x00009088
	.4byte 0x00009858
	.4byte 0x0000A410
	.4byte 0x0000AFC8
	.4byte 0x0000BF68
	.4byte 0x0000C350
	.4byte 0x0000D6D8
	.4byte 0x0000EA60
	.4byte 0x0000FDE8
	.4byte 0x00011170
	.4byte 0x000124F8
	.4byte 0x00013880
	.4byte 0x00014C08
	.4byte 0x00015F90
	.4byte 0x00017318
	.4byte 0x000186A0
	.4byte 0x00019A28
	.4byte 0x0001ADB0
	.4byte 0x0001C138
	.4byte 0x0001D4C0
	.4byte 0x0001E848
	.4byte 0x0001FBD0
	.4byte 0x00020F58
	.4byte 0x000222E0
	.4byte 0x00023668
	.4byte 0x000249F0
	.4byte 0x00025D78
	.4byte 0x00027100
	.4byte 0x00028488
	.4byte 0x00029810
	.4byte 0x0002AB98
	.4byte 0x0002BF20
	.4byte 0
	.4byte 0

.global lbl_801D2630
lbl_801D2630:

	# ROM: 0x1CF630
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000008
	.4byte 0

.global lbl_801D2650
lbl_801D2650:

	# ROM: 0x1CF650
	.4byte 0x80000001
	.4byte 0x80000002
	.4byte 0x80000004
	.4byte 0x80000008

.global lbl_801D2660
lbl_801D2660:

	# ROM: 0x1CF660
	.4byte 0x00000010
	.4byte 0
	.4byte 0x00000020
	.4byte 0
	.4byte 0x00000040
	.4byte 0
	.4byte 0x00000080
	.4byte 0

.global lbl_801D2680
lbl_801D2680:

	# ROM: 0x1CF680
	.4byte 0x80000010
	.4byte 0x80000020
	.4byte 0x80000040
	.4byte 0x80000080

.global lbl_801D2690
lbl_801D2690:

	# ROM: 0x1CF690
	.4byte lbl_8018D454
	.4byte lbl_8018D46C
	.4byte lbl_8018D484
	.4byte lbl_8018D4BC
	.4byte lbl_8018D4F8
	.4byte lbl_8018D50C
	.4byte lbl_8018D51C
	.4byte lbl_8018D564
	.4byte lbl_8018D580
	.4byte lbl_8018D590
	.4byte lbl_8018D60C
	.4byte lbl_8018D65C
	.4byte lbl_8018D6AC
	.4byte lbl_8018D6BC
	.4byte lbl_8018D6CC
	.4byte lbl_8018D6DC
	.4byte lbl_8018D6EC
	.4byte lbl_8018D6FC
	.4byte lbl_8018D70C
	.4byte lbl_8018D724
	.4byte lbl_8018D764
	.4byte lbl_8018D774
	.4byte lbl_8018D784
	.4byte lbl_8018D794
	.4byte lbl_8018D7A4
	.4byte lbl_8018D7B8
	.4byte lbl_8018D80C
	.4byte lbl_8018D88C
	.4byte lbl_8018D89C
	.4byte lbl_8018D8AC
	.4byte lbl_8018D914
	.4byte lbl_8018D97C
	.4byte lbl_8018D9B4
	.4byte lbl_8018D9C4
	.4byte lbl_8018DA20
	.4byte lbl_8018DAA4
	.4byte lbl_8018DAC0
	.4byte lbl_8018DB14
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018DB28
	.4byte lbl_8018DBA0
	.4byte lbl_8018DBE4
	.4byte lbl_8018DBF4
	.4byte lbl_8018DC64
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018DC74
	.4byte lbl_8018DCE0
	.4byte lbl_8018DD08
	.4byte lbl_8018DD20
	.4byte lbl_8018DD38
	.4byte lbl_8018DD50
	.4byte lbl_8018DD64
	.4byte lbl_8018DD74
	.4byte lbl_8018DDB4
	.4byte lbl_8018DDE0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018DE34
	.4byte lbl_8018DE44
	.4byte lbl_8018DE54
	.4byte lbl_8018DE64
	.4byte lbl_8018DE74
	.4byte lbl_8018DE84
	.4byte lbl_8018DE94
	.4byte lbl_8018DEA4
	.4byte lbl_8018DEB4
	.4byte lbl_8018DEC4
	.4byte lbl_8018DED4
	.4byte lbl_8018DEE4
	.4byte lbl_8018DEF4
	.4byte lbl_8018DF04
	.4byte lbl_8018DF14
	.4byte func_8018E0E0
	.4byte lbl_8018DF24
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018DF74
	.4byte lbl_8018DFA0
	.4byte lbl_8018DFB0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018DFE4
	.4byte lbl_8018DFF4
	.4byte lbl_8018E004
	.4byte lbl_8018E018
	.4byte lbl_8018E02C
	.4byte lbl_8018E040
	.4byte lbl_8018E054
	.4byte lbl_8018E068
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte func_8018E0E0
	.4byte lbl_8018E0BC
	.4byte lbl_8018E0D0

.global lbl_801D2858
lbl_801D2858:

	# ROM: 0x1CF858
	.4byte 0x3F800000
	.4byte 0x3F879C80
	.4byte 0x3F8FACD8
	.4byte 0x3F9837F0
	.4byte 0x3FA14518
	.4byte 0x3FAADC08
	.4byte 0x3FB504F8
	.4byte 0x3FBFC888
	.4byte 0x3FCB2FF8
	.4byte 0x3FD74500
	.4byte 0x3FE411F8
	.4byte 0x3FF1A1C0
	.4byte 0x40000004
	.4byte 0x40079C80
	.4byte 0x400FACD8
	.4byte 0x401837F4
	.4byte 0x4021451C
	.4byte 0x402ADC0C
	.4byte 0x403504F8
	.4byte 0x403FC88C
	.4byte 0x404B2FFC
	.4byte 0x40574504
	.4byte 0x406411F8
	.4byte 0x4071A1C4
	.4byte 0x40800004
	.4byte 0x40879C80
	.4byte 0x408FACDA
	.4byte 0x409837F4
	.4byte 0x40A1451C
	.4byte 0x40AADC0E
	.4byte 0x40B504F8
	.4byte 0x40BFC88C
	.4byte 0x40CB2FFC
	.4byte 0x40D74504
	.4byte 0x40E411F8
	.4byte 0x40F1A1C6
	.4byte 0x41000004
	.4byte 0x41079C81
	.4byte 0x410FACDB
	.4byte 0x411837F5
	.4byte 0x4121451D
	.4byte 0x412ADC0E
	.4byte 0x413504F9
	.4byte 0x413FC88D
	.4byte 0x414B2FFC
	.4byte 0x41574504
	.4byte 0x416411F8
	.4byte 0x4171A1C7
	.4byte 0x41800004
	.4byte 0x41879C81
	.4byte 0x418FACDB
	.4byte 0x419837F5
	.4byte 0x41A1451D
	.4byte 0x41AADC0E
	.4byte 0x41B504F9
	.4byte 0x41BFC88D
	.4byte 0x41CB2FFC
	.4byte 0x41D74504
	.4byte 0x41E411F8
	.4byte 0x41F1A1C7
	.4byte 0x42000004
	.4byte 0x42079C81
	.4byte 0x420FACDB
	.4byte 0x421837F5
	.4byte 0x4221451D
	.4byte 0x422ADC0E
	.4byte 0x423504F9
	.4byte 0x423FC88D
	.4byte 0x424B2FFC
	.4byte 0x42574504
	.4byte 0x426411F8
	.4byte 0x4271A1C7
	.4byte 0x42800004
	.4byte 0x42879C81
	.4byte 0x428FACDB
	.4byte 0x429837F5
	.4byte 0x42A1451D
	.4byte 0x42AADC0E
	.4byte 0x42B504F9
	.4byte 0x42BFC88D
	.4byte 0x42CB2FFC
	.4byte 0x42D74504
	.4byte 0x42E411F8
	.4byte 0x42F1A1C7
	.4byte 0x43000004
	.4byte 0x43079C81
	.4byte 0x430FACDB
	.4byte 0x431837F5
	.4byte 0x4321451D
	.4byte 0x432ADC0E
	.4byte 0x433504F9
	.4byte 0x433FC88D
	.4byte 0x434B2FFC
	.4byte 0x43574504
	.4byte 0x436411F8
	.4byte 0x4371A1C7
	.4byte 0x43800004
	.4byte 0x43879C81
	.4byte 0x438FACDB
	.4byte 0x439837F5
	.4byte 0x43A1451D
	.4byte 0x43AADC0E
	.4byte 0x43B504F9
	.4byte 0x43BFC88D
	.4byte 0x43CB2FFC
	.4byte 0x43D74504
	.4byte 0x43E411F8
	.4byte 0x43F1A1C7
	.4byte 0x44000004
	.4byte 0x44079C81
	.4byte 0x440FACDB
	.4byte 0x441837F5
	.4byte 0x4421451D
	.4byte 0x442ADC0E
	.4byte 0x443504F9
	.4byte 0x443FC88D
	.4byte 0x444B2FFC
	.4byte 0x44574504
	.4byte 0x446411F8
	.4byte 0x4471A1C7
	.4byte 0x44800004
	.4byte 0x44879C81
	.4byte 0x448FACDB
	.4byte 0x449837F5
	.4byte 0x44A1451D
	.4byte 0x44AADC0E
	.4byte 0x44B504F9
	.4byte 0x44BFC88D

.global lbl_801D2A58
lbl_801D2A58:

	# ROM: 0x1CFA58
	.4byte 0x3F800000
	.4byte 0x3F71A1C0
	.4byte 0x3F6411F0
	.4byte 0x3F574500
	.4byte 0x3F4B2FF0
	.4byte 0x3F3FC880
	.4byte 0x3F3504F0
	.4byte 0x3F2ADC00
	.4byte 0x3F214510
	.4byte 0x3F1837F0
	.4byte 0x3F0FACD0
	.4byte 0x3F079C80
	.4byte 0x3F000000
	.4byte 0x3EF1A1C0
	.4byte 0x3EE411E0
	.4byte 0x3ED74500
	.4byte 0x3ECB3000
	.4byte 0x3EBFC880
	.4byte 0x3EB504E0
	.4byte 0x3EAADC00
	.4byte 0x3EA14520
	.4byte 0x3E9837E0
	.4byte 0x3E8FACE0
	.4byte 0x3E879C80
	.4byte 0x3E800000
	.4byte 0x3E71A1C0
	.4byte 0x3E641200
	.4byte 0x3E574500
	.4byte 0x3E4B3000
	.4byte 0x3E3FC880
	.4byte 0x3E350500
	.4byte 0x3E2ADC00
	.4byte 0x3E214500
	.4byte 0x3E183800
	.4byte 0x3E0FACC0
	.4byte 0x3E079C80
	.4byte 0x3E000000
	.4byte 0x3DF1A180
	.4byte 0x3DE41200
	.4byte 0x3DD74500
	.4byte 0x3DCB3000
	.4byte 0x3DBFC880
	.4byte 0x3DB50500
	.4byte 0x3DAADC00
	.4byte 0x3DA14500
	.4byte 0x3D983800
	.4byte 0x3D8FAD00
	.4byte 0x3D879C80
	.4byte 0x3D800000
	.4byte 0x3D71A200
	.4byte 0x3D641200
	.4byte 0x3D574500
	.4byte 0x3D4B3000
	.4byte 0x3D3FC900
	.4byte 0x3D350500
	.4byte 0x3D2ADC00
	.4byte 0x3D214500
	.4byte 0x3D183800
	.4byte 0x3D0FAD00
	.4byte 0x3D079C00
	.4byte 0x3D000000
	.4byte 0x3CF1A200
	.4byte 0x3CE41200
	.4byte 0x3CD74400
	.4byte 0x3CCB3000
	.4byte 0x3CBFC800
	.4byte 0x3CB50400
	.4byte 0x3CAADC00
	.4byte 0x3CA14600
	.4byte 0x3C983800
	.4byte 0x3C8FAC00
	.4byte 0x3C879C00
	.4byte 0x3C800000
	.4byte 0x3C71A000
	.4byte 0x3C641000
	.4byte 0x3C574400
	.4byte 0x3C4B3000
	.4byte 0x3C3FC800
	.4byte 0x3C350400
	.4byte 0x3C2ADC00
	.4byte 0x3C214400
	.4byte 0x3C183800
	.4byte 0x3C0FAC00
	.4byte 0x3C079C00
	.4byte 0x3C000000
	.4byte 0x3BF1A000
	.4byte 0x3BE41000
	.4byte 0x3BD74800
	.4byte 0x3BCB3000
	.4byte 0x3BBFC800
	.4byte 0x3BB50800
	.4byte 0x3BAAE000
	.4byte 0x3BA14800
	.4byte 0x3B983800
	.4byte 0x3B8FB000
	.4byte 0x3B87A000
	.4byte 0x3B800000
	.4byte 0x3B71A000
	.4byte 0x3B641000
	.4byte 0x3B574000
	.4byte 0x3B4B3000
	.4byte 0x3B3FD000
	.4byte 0x3B350000
	.4byte 0x3B2AE000
	.4byte 0x3B214000
	.4byte 0x3B183000
	.4byte 0x3B0FB000
	.4byte 0x3B07A000
	.4byte 0x3B000000
	.4byte 0x3AF1A000
	.4byte 0x3AE42000
	.4byte 0x3AD74000
	.4byte 0x3ACB2000
	.4byte 0x3ABFC000
	.4byte 0x3AB50000
	.4byte 0x3AAAE000
	.4byte 0x3AA14000
	.4byte 0x3A984000
	.4byte 0x3A8FA000
	.4byte 0x3A87A000
	.4byte 0x3A800000
	.4byte 0x3A71C000
	.4byte 0x3A640000
	.4byte 0x3A574000
	.4byte 0x3A4B4000
	.4byte 0x3A3FC000
	.4byte 0x3A350000
	.4byte 0x3A2AC000

.global lbl_801D2C58
lbl_801D2C58:

	# ROM: 0x1CFC58
	.4byte 0x7FFF78D6
	.4byte 0x72136BB1
	.4byte 0x65AB5FFB
	.4byte 0x5A9D558B
	.4byte 0x50C24C3E
	.4byte 0x47FA43F3
	.4byte 0x40263C8F
	.4byte 0x392C35F9
	.4byte 0x32F4301B
	.4byte 0x2D6A2ADF
	.4byte 0x28792636
	.4byte 0x2412220E
	.4byte 0x20261E5A
	.4byte 0x1CA71B0D
	.4byte 0x1989181C
	.4byte 0x16C2157C
	.4byte 0x14491326
	.4byte 0x12141111
	.4byte 0x101D0F36
	.4byte 0x0E5C0D8E
	.4byte 0x0CCC0C15
	.4byte 0x0B680AC5
	.4byte 0x0A2A0999
	.4byte 0x090F088D
	.4byte 0x0813079F
	.4byte 0x073206CB
	.4byte 0x066A060E
	.4byte 0x05B70565
	.4byte 0x051804CF
	.4byte 0x048A0449
	.4byte 0x040C03D2
	.4byte 0x039B0367
	.4byte 0x03370309
	.4byte 0x02DD02B4
	.4byte 0x028D0269
	.4byte 0x02460226
	.4byte 0x020701EA
	.4byte 0x01CE01B4
	.4byte 0x019C0185
	.4byte 0x016F015B
	.4byte 0x01470135
	.4byte 0x01240113
	.4byte 0x010400F5
	.4byte 0x00E700DA
	.4byte 0x00CE00C3
	.4byte 0x00B800AD
	.4byte 0x00A4009B
	.4byte 0x0092008A
	.4byte 0x0082007B
	.4byte 0x0074006D
	.4byte 0x00670061
	.4byte 0x005C0057
	.4byte 0x0052004D
	.4byte 0x00490045
	.4byte 0x0041003D
	.4byte 0x003A0037
	.4byte 0x00330031
	.4byte 0x002E002B
	.4byte 0x00290026
	.4byte 0x00240022
	.4byte 0x0020001E
	.4byte 0x001D001B
	.4byte 0x001A0018
	.4byte 0x00170015
	.4byte 0x00140013
	.4byte 0x00120011
	.4byte 0x0010000F
	.4byte 0x000E000D
	.4byte 0x000D000C
	.4byte 0x000B000A
	.4byte 0x000A0009
	.4byte 0x00090008
	.4byte 0x00080007
	.4byte 0x00070006
	.4byte 0x00060006
	.4byte 0x00050005
	.4byte 0x00050004
	.4byte 0x00040004
	.4byte 0x00040003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D2DDC
lbl_801D2DDC:

	# ROM: 0x1CFDDC
	.4byte 0xC1786C65
	.4byte 0x605C5957
	.4byte 0x5452504F
	.4byte 0x4D4C4B49
	.4byte 0x48474645
	.4byte 0x44444342
	.4byte 0x4140403F
	.4byte 0x3F3E3D3D
	.4byte 0x3C3C3B3B
	.4byte 0x3A3A3939
	.4byte 0x38383737
	.4byte 0x37363636
	.4byte 0x35353434
	.4byte 0x34333333
	.4byte 0x32323232
	.4byte 0x31313130
	.4byte 0x3030302F
	.4byte 0x2F2F2F2E
	.4byte 0x2E2E2E2D
	.4byte 0x2D2D2D2C
	.4byte 0x2C2C2C2C
	.4byte 0x2B2B2B2B
	.4byte 0x2B2A2A2A
	.4byte 0x2A2A2929
	.4byte 0x29292929
	.4byte 0x28282828
	.4byte 0x28282727
	.4byte 0x27272727
	.4byte 0x26262626
	.4byte 0x26262625
	.4byte 0x25252525
	.4byte 0x25252424
	.4byte 0x24242424
	.4byte 0x24232323
	.4byte 0x23232323
	.4byte 0x23222222
	.4byte 0x22222222
	.4byte 0x22212121
	.4byte 0x21212121
	.4byte 0x21212020
	.4byte 0x20202020
	.4byte 0x2020201F
	.4byte 0x1F1F1F1F
	.4byte 0x1F1F1F1F
	.4byte 0x1F1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1E1E1E1E
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1D
	.4byte 0x1D1D1D1C
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1C
	.4byte 0x1C1C1C1B
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1B
	.4byte 0x1B1B1B1A
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x1A1A1A1A
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x19191919
	.4byte 0x19191818
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x18181818
	.4byte 0x18171717
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x17171717
	.4byte 0x17161616
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x16161616
	.4byte 0x16151515
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x15151515
	.4byte 0x15151514
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141414
	.4byte 0x14141313
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x13121212
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x12121111
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x10101010
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x0F0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0E0E0E0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0D0D0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0C0C0C0C
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0B0B0B0B
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A0A0A0A
	.4byte 0x0A090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x09090909
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08080808
	.4byte 0x08070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x07070707
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050505
	.4byte 0x05050404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04040404
	.4byte 0x04030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030302
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020201
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D31DC
lbl_801D31DC:

	# ROM: 0x1D01DC
	.4byte 0
	.4byte 0x388205FF
	.4byte 0x398205FF
	.4byte 0x3A1246BF
	.4byte 0x3A8205FF
	.4byte 0x3ACB295F
	.4byte 0x3B1246BF
	.4byte 0x3B47192F
	.4byte 0x3B8205FF
	.4byte 0x3BA48F97
	.4byte 0x3BCB295F
	.4byte 0x3BF5D356
	.4byte 0x3C1246BF
	.4byte 0x3C2BABEB
	.4byte 0x3C47192F
	.4byte 0x3C648E8A
	.4byte 0x3C8205FF
	.4byte 0x3C92C8C5
	.4byte 0x3CA48F97
	.4byte 0x3CB75A75
	.4byte 0x3CCB295F
	.4byte 0x3CDFFC54
	.4byte 0x3CF5D356
	.4byte 0x3D065732
	.4byte 0x3D1246BF
	.4byte 0x3D1EB852
	.4byte 0x3D2BABEB
	.4byte 0x3D39218A
	.4byte 0x3D47192F
	.4byte 0x3D5592DA
	.4byte 0x3D648E8A
	.4byte 0x3D740C41
	.4byte 0x3D8205FF
	.4byte 0x3D8A46E1
	.4byte 0x3D92C8C5
	.4byte 0x3D9B8BAC
	.4byte 0x3DA48F97
	.4byte 0x3DADD484
	.4byte 0x3DB75A75
	.4byte 0x3DC12168
	.4byte 0x3DCB295F
	.4byte 0x3DD57258
	.4byte 0x3DDFFC54
	.4byte 0x3DEAC754
	.4byte 0x3DF5D356
	.4byte 0x3E00902E
	.4byte 0x3E065732
	.4byte 0x3E0C3EB8
	.4byte 0x3E1246BF
	.4byte 0x3E186F48
	.4byte 0x3E1EB852
	.4byte 0x3E2521DE
	.4byte 0x3E2BABEB
	.4byte 0x3E32567A
	.4byte 0x3E39218A
	.4byte 0x3E400D1B
	.4byte 0x3E47192F
	.4byte 0x3E4E45C3
	.4byte 0x3E5592DA
	.4byte 0x3E5D0071
	.4byte 0x3E648E8A
	.4byte 0x3E6C3D25
	.4byte 0x3E740C41
	.4byte 0x3E7BFBDF
	.4byte 0x3E820621
	.4byte 0x3E861E71
	.4byte 0x3E8A4702
	.4byte 0x3E8E7FD4
	.4byte 0x3E92C8E7
	.4byte 0x3E97223A
	.4byte 0x3E9B8BCE
	.4byte 0x3EA005A3
	.4byte 0x3EA48FB8
	.4byte 0x3EA92A0F
	.4byte 0x3EADD4A6
	.4byte 0x3EB28F7E
	.4byte 0x3EB75A96
	.4byte 0x3EBC35F0
	.4byte 0x3EC1218A
	.4byte 0x3EC61D65
	.4byte 0x3ECB2980
	.4byte 0x3ED045DD
	.4byte 0x3ED5727A
	.4byte 0x3EDAAF57
	.4byte 0x3EDFFC76
	.4byte 0x3EE559D5
	.4byte 0x3EEAC775
	.4byte 0x3EF04556
	.4byte 0x3EF5D378
	.4byte 0x3EFB71DA
	.4byte 0x3F00903F
	.4byte 0x3F036FB1
	.4byte 0x3F065743
	.4byte 0x3F0946F6
	.4byte 0x3F0C3EC9
	.4byte 0x3F0F3EBC
	.4byte 0x3F1246D0
	.4byte 0x3F155704
	.4byte 0x3F186F58
	.4byte 0x3F1B8FCD
	.4byte 0x3F1EB863
	.4byte 0x3F21E918
	.4byte 0x3F2521EE
	.4byte 0x3F2862E5
	.4byte 0x3F2BABFC
	.4byte 0x3F2EFD33
	.4byte 0x3F32568A
	.4byte 0x3F35B802
	.4byte 0x3F39219B
	.4byte 0x3F3C9353
	.4byte 0x3F400D3D
	.4byte 0x3F438F36
	.4byte 0x3F471950
	.4byte 0x3F4AAB8A
	.4byte 0x3F4E45E5
	.4byte 0x3F51E860
	.4byte 0x3F5592FB
	.4byte 0x3F5945B7
	.4byte 0x3F5D0093
	.4byte 0x3F60C38F
	.4byte 0x3F648EAC
	.4byte 0x3F6861E9
	.4byte 0x3F6C3D47
	.4byte 0x3F7020C5
	.4byte 0x3F740C63
	.4byte 0x3F780022
	.4byte 0x3F7BFC01
	.4byte 0x3F800000
	.4byte 0x3F800000

.global lbl_801D33E0
lbl_801D33E0:

	# ROM: 0x1D03E0
	.4byte 0x7FA17F43
	.4byte 0x7EE67E88
	.4byte 0x7E2B7DCE
	.4byte 0x7D727D16
	.4byte 0x7CBA7C5E
	.4byte 0x7C027BA7
	.4byte 0x7B4C7AF1
	.4byte 0x7A977A3D
	.4byte 0x79E37989
	.4byte 0x793078D6
	.4byte 0x787E7825
	.4byte 0x77CD7774
	.4byte 0x771C76C5
	.4byte 0x766D7616
	.4byte 0x75BF7569
	.4byte 0x751274BC
	.4byte 0x74667411
	.4byte 0x73BB7366
	.4byte 0x731172BD
	.4byte 0x72687214
	.4byte 0x71C0716C
	.4byte 0x711970C6
	.4byte 0x70737020
	.4byte 0x6FCD6F7B
	.4byte 0x6F296ED7
	.4byte 0x6E866E35
	.4byte 0x6DE36D93
	.4byte 0x6D426CF2
	.4byte 0x6CA16C52
	.4byte 0x6C026BB2
	.4byte 0x6B636B14
	.4byte 0x6AC56A77
	.4byte 0x6A2869DA
	.4byte 0x698C693F
	.4byte 0x68F168A4
	.4byte 0x6857680A
	.4byte 0x67BE6771
	.4byte 0x672566D9
	.4byte 0x668E6642
	.4byte 0x65F765AC
	.4byte 0x65616517
	.4byte 0x64CC6482
	.4byte 0x643863EE
	.4byte 0x63A5635C
	.4byte 0x631262CA
	.4byte 0x62816238
	.4byte 0x61F061A8
	.4byte 0x61606119
	.4byte 0x60D1608A
	.4byte 0x60435FFC
	.4byte 0x5FB55F6F
	.4byte 0x5F295EE3
	.4byte 0x5E9D5E57
	.4byte 0x5E125DCD
	.4byte 0x5D885D43
	.4byte 0x5CFE5CBA
	.4byte 0x5C765C32
	.4byte 0x5BEE5BAA
	.4byte 0x5B675B23
	.4byte 0x5AE05A9D
	.4byte 0x5A5B5A18
	.4byte 0x59D65994
	.4byte 0x59525910
	.4byte 0x58CF588D
	.4byte 0x584C580B
	.4byte 0x57CB578A
	.4byte 0x574A5709
	.4byte 0x56C95689
	.4byte 0x564A560A
	.4byte 0x55CB558C
	.4byte 0x554D550E
	.4byte 0x54D05491
	.4byte 0x54535415
	.4byte 0x53D75399
	.4byte 0x535C531E
	.4byte 0x52E152A4
	.4byte 0x5267522B
	.4byte 0x51EE51B2
	.4byte 0x5176513A
	.4byte 0x50FE50C3
	.4byte 0x79EC799B
	.4byte 0x794A78FA
	.4byte 0x78AA785A
	.4byte 0x780A77BB
	.4byte 0x776C771C
	.4byte 0x76CE767F
	.4byte 0x763075E2
	.4byte 0x75947546
	.4byte 0x74F974AB
	.4byte 0x745E7411
	.4byte 0x73C47377
	.4byte 0x732B72DE
	.4byte 0x72927246
	.4byte 0x71FB71AF
	.4byte 0x71647119
	.4byte 0x70CE7083
	.4byte 0x70396FEE
	.4byte 0x6FA46F5A
	.4byte 0x6F116EC7
	.4byte 0x6E7E6E35
	.4byte 0x6DEC6DA3
	.4byte 0x6D5A6D12
	.4byte 0x6CC96C81
	.4byte 0x6C3A6BF2
	.4byte 0x6BAA6B63
	.4byte 0x6B1C6AD5
	.4byte 0x6A8E6A48
	.4byte 0x6A0169BB
	.4byte 0x6975692F
	.4byte 0x68EA68A4
	.4byte 0x685F681A
	.4byte 0x67D56790
	.4byte 0x674B6707
	.4byte 0x66C3667F
	.4byte 0x663B65F7
	.4byte 0x65B46570
	.4byte 0x652D64EA
	.4byte 0x64A76464
	.4byte 0x642263E0
	.4byte 0x639E635C
	.4byte 0x631A62D8
	.4byte 0x62976255
	.4byte 0x621461D3
	.4byte 0x61926152
	.4byte 0x611160D1
	.4byte 0x60916051
	.4byte 0x60115FD2
	.4byte 0x5F925F53
	.4byte 0x5F145ED5
	.4byte 0x5E965E57
	.4byte 0x5E195DDB
	.4byte 0x5D9C5D5E
	.4byte 0x5D215CE3
	.4byte 0x5CA55C68
	.4byte 0x5C2B5BEE
	.4byte 0x5BB15B74
	.4byte 0x5B385AFB
	.4byte 0x5ABF5A83
	.4byte 0x5A475A0B
	.4byte 0x59CF5994
	.4byte 0x5959591D
	.4byte 0x58E258A8
	.4byte 0x586D5832
	.4byte 0x57F857BE
	.4byte 0x5783574A
	.4byte 0x571056D6
	.4byte 0x569D5663
	.4byte 0x562A55F1
	.4byte 0x55B8557F
	.4byte 0x5547550E
	.4byte 0x54D6549E
	.4byte 0x5466542E
	.4byte 0x53F653BE
	.4byte 0x5387534F
	.4byte 0x531852E1
	.4byte 0x52AA5274
	.4byte 0x523D5207
	.4byte 0x51D0519A
	.4byte 0x5164512E
	.4byte 0x50F850C3
	.4byte 0x74787433
	.4byte 0x73EF73AA
	.4byte 0x73667322
	.4byte 0x72DE729B
	.4byte 0x72577214
	.4byte 0x71D1718E
	.4byte 0x714B7108
	.4byte 0x70C67083
	.4byte 0x70416FFF
	.4byte 0x6FBD6F7B
	.4byte 0x6F3A6EF8
	.4byte 0x6EB76E76
	.4byte 0x6E356DF4
	.4byte 0x6DB36D72
	.4byte 0x6D326CF2
	.4byte 0x6CB16C71
	.4byte 0x6C326BF2
	.4byte 0x6BB26B73
	.4byte 0x6B346AF5
	.4byte 0x6AB66A77
	.4byte 0x6A3869FA
	.4byte 0x69BB697D
	.4byte 0x693F6901
	.4byte 0x68C36885
	.4byte 0x6848680A
	.4byte 0x67CD6790
	.4byte 0x67536716
	.4byte 0x66D9669D
	.4byte 0x66606624
	.4byte 0x65E865AC
	.4byte 0x65706534
	.4byte 0x64F964BD
	.4byte 0x64826447
	.4byte 0x640C63D1
	.4byte 0x6396635C
	.4byte 0x632162E7
	.4byte 0x62AC6272
	.4byte 0x623861FF
	.4byte 0x61C5618B
	.4byte 0x61526119
	.4byte 0x60DF60A6
	.4byte 0x606D6035
	.4byte 0x5FFC5FC4
	.4byte 0x5F8B5F53
	.4byte 0x5F1B5EE3
	.4byte 0x5EAB5E73
	.4byte 0x5E3C5E04
	.4byte 0x5DCD5D95
	.4byte 0x5D5E5D27
	.4byte 0x5CF15CBA
	.4byte 0x5C835C4D
	.4byte 0x5C165BE0
	.4byte 0x5BAA5B74
	.4byte 0x5B3E5B09
	.4byte 0x5AD35A9D
	.4byte 0x5A685A33
	.4byte 0x59FE59C9
	.4byte 0x5994595F
	.4byte 0x592B58F6
	.4byte 0x58C2588D
	.4byte 0x58595825
	.4byte 0x57F157BE
	.4byte 0x578A5756
	.4byte 0x572356F0
	.4byte 0x56BC5689
	.4byte 0x56565624
	.4byte 0x55F155BE
	.4byte 0x558C5559
	.4byte 0x552754F5
	.4byte 0x54C35491
	.4byte 0x545F542E
	.4byte 0x53FC53CB
	.4byte 0x53995368
	.4byte 0x53375306
	.4byte 0x52D552A4
	.4byte 0x52745243
	.4byte 0x521351E2
	.4byte 0x51B25182
	.4byte 0x51525122
	.4byte 0x50F250C3
	.4byte 0x6F426F08
	.4byte 0x6ECF6E96
	.4byte 0x6E5D6E24
	.4byte 0x6DEC6DB3
	.4byte 0x6D7A6D42
	.4byte 0x6D0A6CD2
	.4byte 0x6C996C61
	.4byte 0x6C2A6BF2
	.4byte 0x6BBA6B83
	.4byte 0x6B4B6B14
	.4byte 0x6ADD6AA6
	.4byte 0x6A6F6A38
	.4byte 0x6A0169CB
	.4byte 0x6994695E
	.4byte 0x692768F1
	.4byte 0x68BB6885
	.4byte 0x684F681A
	.4byte 0x67E467AE
	.4byte 0x67796744
	.4byte 0x670F66D9
	.4byte 0x66A46670
	.4byte 0x663B6606
	.4byte 0x65D2659D
	.asciz "eie4e"
	.byte 0x64, 0xCC
	.4byte 0x64986464
	.4byte 0x643163FD
	.4byte 0x63CA6396
	.4byte 0x63636330
	.4byte 0x62FD62CA
	.4byte 0x62976264
	.4byte 0x623161FF
	.4byte 0x61CC619A
	.4byte 0x61676135
	.4byte 0x610360D1
	.4byte 0x609F606D
	.4byte 0x603C600A
	.4byte 0x5FD95FA7
	.4byte 0x5F765F45
	.4byte 0x5F145EE3
	.4byte 0x5EB25E81
	.4byte 0x5E505E20
	.4byte 0x5DEF5DBF
	.4byte 0x5D8F5D5E
	.4byte 0x5D2E5CFE
	.4byte 0x5CCE5C9F
	.4byte 0x5C6F5C3F
	.4byte 0x5C105BE0
	.4byte 0x5BB15B82
	.4byte 0x5B525B23
	.4byte 0x5AF45AC6
	.4byte 0x5A975A68
	.4byte 0x5A3A5A0B
	.4byte 0x59DD59AE
	.4byte 0x59805952
	.4byte 0x592458F6
	.4byte 0x58C8589A
	.4byte 0x586D583F
	.4byte 0x581257E4
	.4byte 0x57B7578A
	.4byte 0x575D5730
	.4byte 0x570356D6
	.4byte 0x56A9567D
	.4byte 0x56505624
	.4byte 0x55F755CB
	.4byte 0x559F5573
	.4byte 0x5547551B
	.4byte 0x54EF54C3
	.4byte 0x5497546C
	.4byte 0x54405415
	.4byte 0x53EA53BE
	.4byte 0x53935368
	.4byte 0x533D5312
	.4byte 0x52E752BD
	.4byte 0x52925267
	.4byte 0x523D5213
	.4byte 0x51E851BE
	.4byte 0x5194516A
	.4byte 0x51405116
	.4byte 0x50EC50C3
	.4byte 0x6A486A19
	.4byte 0x69EA69BB
	.4byte 0x698C695E
	.4byte 0x692F6901
	.4byte 0x68D268A4
	.4byte 0x68766848
	.4byte 0x681A67EC
	.4byte 0x67BE6790
	.4byte 0x67626735
	.4byte 0x670766D9
	.4byte 0x66AC667F
	.4byte 0x66516624
	.4byte 0x65F765CA
	.4byte 0x659D6570
	.4byte 0x65436517
	.4byte 0x64EA64BD
	.4byte 0x64916464
	.4byte 0x6438640C
	.4byte 0x63E063B4
	.4byte 0x6388635C
	.4byte 0x63306304
	.4byte 0x62D862AC
	.4byte 0x62816255
	.4byte 0x622A61FF
	.4byte 0x61D361A8
	.4byte 0x617D6152
	.4byte 0x612760FC
	.4byte 0x60D160A6
	.4byte 0x607C6051
	.4byte 0x60275FFC
	.4byte 0x5FD25FA7
	.4byte 0x5F7D5F53
	.4byte 0x5F295EFF
	.4byte 0x5ED55EAB
	.4byte 0x5E815E57
	.4byte 0x5E2E5E04
	.4byte 0x5DDB5DB1
	.4byte 0x5D885D5E
	.4byte 0x5D355D0C
	.4byte 0x5CE35CBA
	.4byte 0x5C915C68
	.4byte 0x5C3F5C16
	.4byte 0x5BEE5BC5
	.4byte 0x5B9D5B74
	.4byte 0x5B4C5B23
	.4byte 0x5AFB5AD3
	.4byte 0x5AAB5A83
	.4byte 0x5A5B5A33
	.4byte 0x5A0B59E3
	.4byte 0x59BC5994
	.4byte 0x596C5945
	.4byte 0x591D58F6
	.4byte 0x58CF58A8
	.4byte 0x58805859
	.4byte 0x5832580B
	.4byte 0x57E457BE
	.4byte 0x57975770
	.4byte 0x574A5723
	.4byte 0x56FC56D6
	.4byte 0x56B05689
	.4byte 0x5663563D
	.4byte 0x561755F1
	.4byte 0x55CB55A5
	.4byte 0x557F5559
	.4byte 0x5534550E
	.4byte 0x54E954C3
	.4byte 0x549E5478
	.4byte 0x5453542E
	.4byte 0x540853E3
	.4byte 0x53BE5399
	.4byte 0x5374534F
	.4byte 0x532B5306
	.4byte 0x52E152BD
	.4byte 0x52985274
	.4byte 0x524F522B
	.4byte 0x520751E2
	.4byte 0x51BE519A
	.4byte 0x51765152
	.4byte 0x512E510A
	.4byte 0x50E650C3
	.4byte 0x65876561
	.4byte 0x653C6517
	.4byte 0x64F164CC
	.4byte 0x64A76482
	.4byte 0x645D6438
	.4byte 0x641363EE
	.4byte 0x63CA63A5
	.4byte 0x6380635C
	.4byte 0x63376312
	.4byte 0x62EE62CA
	.4byte 0x62A56281
	.4byte 0x625D6238
	.4byte 0x621461F0
	.4byte 0x61CC61A8
	.4byte 0x61846160
	.4byte 0x613C6119
	.4byte 0x60F560D1
	.4byte 0x60AD608A
	.4byte 0x60666043
	.4byte 0x601F5FFC
	.4byte 0x5FD95FB5
	.4byte 0x5F925F6F
	.4byte 0x5F4C5F29
	.4byte 0x5F065EE3
	.4byte 0x5EC05E9D
	.4byte 0x5E7A5E57
	.4byte 0x5E355E12
	.4byte 0x5DEF5DCD
	.4byte 0x5DAA5D88
	.4byte 0x5D655D43
	.4byte 0x5D215CFE
	.4byte 0x5CDC5CBA
	.4byte 0x5C985C76
	.4byte 0x5C545C32
	.4byte 0x5C105BEE
	.4byte 0x5BCC5BAA
	.4byte 0x5B885B67
	.4byte 0x5B455B23
	.4byte 0x5B025AE0
	.4byte 0x5ABF5A9D
	.4byte 0x5A7C5A5B
	.4byte 0x5A3A5A18
	.4byte 0x59F759D6
	.4byte 0x59B55994
	.4byte 0x59735952
	.4byte 0x59315910
	.4byte 0x58F058CF
	.4byte 0x58AE588D
	.4byte 0x586D584C
	.4byte 0x582C580B
	.4byte 0x57EB57CB
	.4byte 0x57AA578A
	.4byte 0x576A574A
	.4byte 0x57295709
	.4byte 0x56E956C9
	.4byte 0x56A95689
	.4byte 0x566A564A
	.4byte 0x562A560A
	.4byte 0x55EB55CB
	.4byte 0x55AB558C
	.4byte 0x556C554D
	.4byte 0x552D550E
	.4byte 0x54EF54D0
	.4byte 0x54B05491
	.4byte 0x54725453
	.4byte 0x54345415
	.4byte 0x53F653D7
	.4byte 0x53B85399
	.4byte 0x537B535C
	.4byte 0x533D531E
	.4byte 0x530052E1
	.4byte 0x52C352A4
	.4byte 0x52865267
	.4byte 0x5249522B
	.4byte 0x520D51EE
	.4byte 0x51D051B2
	.4byte 0x51945176
	.4byte 0x5158513A
	.4byte 0x511C50FE
	.4byte 0x50E050C3
	.4byte 0x60FC60DF
	.4byte 0x60C360A6
	.4byte 0x608A606D
	.4byte 0x60516035
	.4byte 0x60185FFC
	.4byte 0x5FE05FC4
	.4byte 0x5FA75F8B
	.4byte 0x5F6F5F53
	.4byte 0x5F375F1B
	.4byte 0x5EFF5EE3
	.4byte 0x5EC75EAB
	.4byte 0x5E8F5E73
	.4byte 0x5E575E3C
	.4byte 0x5E205E04
	.4byte 0x5DE85DCD
	.4byte 0x5DB15D95
	.4byte 0x5D7A5D5E
	.4byte 0x5D435D27
	.4byte 0x5D0C5CF1
	.4byte 0x5CD55CBA
	.4byte 0x5C9F5C83
	.4byte 0x5C685C4D
	.4byte 0x5C325C16
	.4byte 0x5BFB5BE0
	.4byte 0x5BC55BAA
	.4byte 0x5B8F5B74
	.4byte 0x5B595B3E
	.4byte 0x5B235B09
	.4byte 0x5AEE5AD3
	.4byte 0x5AB85A9D
	.4byte 0x5A835A68
	.4byte 0x5A4D5A33
	.4byte 0x5A1859FE
	.4byte 0x59E359C9
	.4byte 0x59AE5994
	.4byte 0x597A595F
	.4byte 0x5945592B
	.4byte 0x591058F6
	.4byte 0x58DC58C2
	.4byte 0x58A8588D
	.4byte 0x58735859
	.4byte 0x583F5825
	.4byte 0x580B57F1
	.4byte 0x57D757BE
	.4byte 0x57A4578A
	.4byte 0x57705756
	.4byte 0x573D5723
	.4byte 0x570956F0
	.4byte 0x56D656BC
	.4byte 0x56A35689
	.4byte 0x56705656
	.4byte 0x563D5624
	.4byte 0x560A55F1
	.4byte 0x55D855BE
	.4byte 0x55A5558C
	.4byte 0x55735559
	.4byte 0x55405527
	.4byte 0x550E54F5
	.4byte 0x54DC54C3
	.4byte 0x54AA5491
	.4byte 0x5478545F
	.4byte 0x5446542E
	.4byte 0x541553FC
	.4byte 0x53E353CB
	.4byte 0x53B25399
	.4byte 0x53815368
	.4byte 0x534F5337
	.4byte 0x531E5306
	.4byte 0x52ED52D5
	.4byte 0x52BD52A4
	.4byte 0x528C5274
	.4byte 0x525B5243
	.4byte 0x522B5213
	.4byte 0x51FA51E2
	.4byte 0x51CA51B2
	.4byte 0x519A5182
	.4byte 0x516A5152
	.4byte 0x513A5122
	.4byte 0x510A50F2
	.4byte 0x50DB50C3
	.4byte 0x5CA55C91
	.4byte 0x5C7C5C68
	.4byte 0x5C545C3F
	.4byte 0x5C2B5C16
	.4byte 0x5C025BEE
	.4byte 0x5BD95BC5
	.4byte 0x5BB15B9D
	.4byte 0x5B885B74
	.4byte 0x5B605B4C
	.4byte 0x5B385B23
	.4byte 0x5B0F5AFB
	.4byte 0x5AE75AD3
	.4byte 0x5ABF5AAB
	.4byte 0x5A975A83
	.4byte 0x5A6F5A5B
	.4byte 0x5A475A33
	.4byte 0x5A1F5A0B
	.4byte 0x59F759E3
	.4byte 0x59CF59BC
	.4byte 0x59A85994
	.4byte 0x5980596C
	.4byte 0x59595945
	.4byte 0x5931591D
	.4byte 0x590A58F6
	.4byte 0x58E258CF
	.4byte 0x58BB58A8
	.4byte 0x58945880
	.4byte 0x586D5859
	.4byte 0x58465832
	.4byte 0x581F580B
	.4byte 0x57F857E4
	.4byte 0x57D157BE
	.4byte 0x57AA5797
	.4byte 0x57835770
	.4byte 0x575D574A
	.4byte 0x57365723
	.4byte 0x571056FC
	.4byte 0x56E956D6
	.4byte 0x56C356B0
	.4byte 0x569D5689
	.4byte 0x56765663
	.4byte 0x5650563D
	.4byte 0x562A5617
	.4byte 0x560455F1
	.4byte 0x55DE55CB
	.4byte 0x55B855A5
	.4byte 0x5592557F
	.4byte 0x556C5559
	.4byte 0x55475534
	.4byte 0x5521550E
	.4byte 0x54FB54E9
	.4byte 0x54D654C3
	.4byte 0x54B0549E
	.4byte 0x548B5478
	.4byte 0x54665453
	.4byte 0x5440542E
	.4byte 0x541B5408
	.4byte 0x53F653E3
	.4byte 0x53D153BE
	.4byte 0x53AC5399
	.4byte 0x53875374
	.4byte 0x5362534F
	.4byte 0x533D532B
	.4byte 0x53185306
	.4byte 0x52F452E1
	.4byte 0x52CF52BD
	.4byte 0x52AA5298
	.4byte 0x52865274
	.4byte 0x5261524F
	.4byte 0x523D522B
	.4byte 0x52195207
	.4byte 0x51F451E2
	.4byte 0x51D051BE
	.4byte 0x51AC519A
	.4byte 0x51885176
	.4byte 0x51645152
	.4byte 0x5140512E
	.4byte 0x511C510A
	.4byte 0x50F850E6
	.4byte 0x50D550C3
	.4byte 0x58805873
	.4byte 0x58665859
	.4byte 0x584C583F
	.4byte 0x58325825
	.4byte 0x5818580B
	.4byte 0x57FE57F1
	.4byte 0x57E457D7
	.4byte 0x57CB57BE
	.4byte 0x57B157A4
	.4byte 0x5797578A
	.4byte 0x577D5770
	.4byte 0x57635756
	.4byte 0x574A573D
	.4byte 0x57305723
	.4byte 0x57165709
	.4byte 0x56FC56F0
	.4byte 0x56E356D6
	.4byte 0x56C956BC
	.4byte 0x56B056A3
	.4byte 0x56965689
	.4byte 0x567D5670
	.4byte 0x56635656
	.4byte 0x564A563D
	.4byte 0x56305624
	.4byte 0x5617560A
	.4byte 0x55FE55F1
	.4byte 0x55E455D8
	.4byte 0x55CB55BE
	.4byte 0x55B255A5
	.4byte 0x5598558C
	.4byte 0x557F5573
	.4byte 0x55665559
	.4byte 0x554D5540
	.4byte 0x55345527
	.4byte 0x551B550E
	.4byte 0x550254F5
	.4byte 0x54E954DC
	.4byte 0x54D054C3
	.4byte 0x54B754AA
	.4byte 0x549E5491
	.4byte 0x54855478
	.4byte 0x546C545F
	.4byte 0x54535446
	.4byte 0x543A542E
	.4byte 0x54215415
	.4byte 0x540853FC
	.4byte 0x53F053E3
	.4byte 0x53D753CB
	.4byte 0x53BE53B2
	.4byte 0x53A65399
	.4byte 0x538D5381
	.4byte 0x53745368
	.4byte 0x535C534F
	.4byte 0x53435337
	.4byte 0x532B531E
	.4byte 0x53125306
	.4byte 0x52FA52ED
	.4byte 0x52E152D5
	.4byte 0x52C952BD
	.4byte 0x52B052A4
	.4byte 0x5298528C
	.4byte 0x52805274
	.4byte 0x5267525B
	.4byte 0x524F5243
	.4byte 0x5237522B
	.4byte 0x521F5213
	.4byte 0x520751FA
	.4byte 0x51EE51E2
	.4byte 0x51D651CA
	.4byte 0x51BE51B2
	.4byte 0x51A6519A
	.4byte 0x518E5182
	.4byte 0x5176516A
	.4byte 0x515E5152
	.4byte 0x5146513A
	.4byte 0x512E5122
	.4byte 0x5116510A
	.4byte 0x50FE50F2
	.4byte 0x50E650DB
	.4byte 0x50CF50C3
	.4byte 0x548B5485
	.4byte 0x547E5478
	.4byte 0x5472546C
	.4byte 0x5466545F
	.4byte 0x54595453
	.4byte 0x544D5446
	.4byte 0x5440543A
	.4byte 0x5434542E
	.4byte 0x54275421
	.4byte 0x541B5415
	.4byte 0x540F5408
	.4byte 0x540253FC
	.4byte 0x53F653F0
	.4byte 0x53EA53E3
	.4byte 0x53DD53D7
	.4byte 0x53D153CB
	.4byte 0x53C453BE
	.4byte 0x53B853B2
	.4byte 0x53AC53A6
	.4byte 0x539F5399
	.4byte 0x5393538D
	.4byte 0x53875381
	.4byte 0x537B5374
	.4byte 0x536E5368
	.4byte 0x5362535C
	.4byte 0x5356534F
	.4byte 0x53495343
	.4byte 0x533D5337
	.4byte 0x5331532B
	.4byte 0x5325531E
	.4byte 0x53185312
	.4byte 0x530C5306
	.4byte 0x530052FA
	.4byte 0x52F452ED
	.4byte 0x52E752E1
	.4byte 0x52DB52D5
	.4byte 0x52CF52C9
	.4byte 0x52C352BD
	.4byte 0x52B752B0
	.4byte 0x52AA52A4
	.4byte 0x529E5298
	.4byte 0x5292528C
	.4byte 0x52865280
	.4byte 0x527A5274
	.4byte 0x526E5267
	.4byte 0x5261525B
	.4byte 0x5255524F
	.4byte 0x52495243
	.4byte 0x523D5237
	.4byte 0x5231522B
	.4byte 0x5225521F
	.4byte 0x52195213
	.4byte 0x520D5207
	.4byte 0x520151FA
	.4byte 0x51F451EE
	.4byte 0x51E851E2
	.4byte 0x51DC51D6
	.4byte 0x51D051CA
	.4byte 0x51C451BE
	.4byte 0x51B851B2
	.4byte 0x51AC51A6
	.4byte 0x51A0519A
	.4byte 0x5194518E
	.4byte 0x51885182
	.4byte 0x517C5176
	.4byte 0x5170516A
	.4byte 0x5164515E
	.4byte 0x51585152
	.4byte 0x514C5146
	.4byte 0x5140513A
	.4byte 0x5134512E
	.4byte 0x51285122
	.4byte 0x511C5116
	.4byte 0x5110510A
	.4byte 0x510450FE
	.4byte 0x50F850F2
	.4byte 0x50EC50E6
	.4byte 0x50E050DB
	.4byte 0x50D550CF
	.4byte 0x50C950C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x50C350C3
	.4byte 0x7A467A4F
	.4byte 0x7A587A61
	.4byte 0x7A6A7A73
	.4byte 0x7A7C7A85
	.4byte 0x7A8E7A97
	.4byte 0x7AA07AA9
	.4byte 0x7AB27ABB
	.4byte 0x7AC47ACD
	.4byte 0x7AD67ADF
	.4byte 0x7AE87AF1
	.4byte 0x7AFA7B03
	.4byte 0x7B0D7B16
	.4byte 0x7B1F7B28
	.4byte 0x7B317B3A
	.4byte 0x7B437B4C
	.4byte 0x7B557B5E
	.4byte 0x7B677B70
	.4byte 0x7B7A7B83
	.4byte 0x7B8C7B95
	.4byte 0x7B9E7BA7
	.4byte 0x7BB07BB9
	.4byte 0x7BC27BCC
	.4byte 0x7BD57BDE
	.4byte 0x7BE77BF0
	.4byte 0x7BF97C02
	.4byte 0x7C0B7C15
	.4byte 0x7C1E7C27
	.4byte 0x7C307C39
	.4byte 0x7C427C4B
	.4byte 0x7C557C5E
	.4byte 0x7C677C70
	.4byte 0x7C797C82
	.4byte 0x7C8C7C95
	.4byte 0x7C9E7CA7
	.4byte 0x7CB07CBA
	.4byte 0x7CC37CCC
	.4byte 0x7CD57CDE
	.4byte 0x7CE87CF1
	.4byte 0x7CFA7D03
	.4byte 0x7D0C7D16
	.4byte 0x7D1F7D28
	.4byte 0x7D317D3A
	.4byte 0x7D447D4D
	.4byte 0x7D567D5F
	.4byte 0x7D697D72
	.4byte 0x7D7B7D84
	.4byte 0x7D8E7D97
	.4byte 0x7DA07DA9
	.4byte 0x7DB37DBC
	.4byte 0x7DC57DCE
	.4byte 0x7DD87DE1
	.4byte 0x7DEA7DF4
	.4byte 0x7DFD7E06
	.4byte 0x7E0F7E19
	.4byte 0x7E227E2B
	.4byte 0x7E357E3E
	.4byte 0x7E477E51
	.4byte 0x7E5A7E63
	.4byte 0x7E6C7E76
	.4byte 0x7E7F7E88
	.4byte 0x7E927E9B
	.4byte 0x7EA47EAE
	.4byte 0x7EB77EC0
	.4byte 0x7ECA7ED3
	.4byte 0x7EDC7EE6
	.4byte 0x7EEF7EF8
	.4byte 0x7F027F0B
	.4byte 0x7F157F1E
	.4byte 0x7F277F31
	.4byte 0x7F3A7F43
	.4byte 0x7F4D7F56
	.4byte 0x7F607F69
	.4byte 0x7F727F7C
	.4byte 0x7F857F8F
	.4byte 0x7F987FA1
	.4byte 0x7FAB7FB4
	.4byte 0x7FBE7FC7
	.4byte 0x7FD07FDA
	.4byte 0x7FE37FED
	.4byte 0x7FF68000
	.4byte 0x74C574CD
	.4byte 0x74D674DF
	.4byte 0x74E774F0
	.4byte 0x74F97501
	.4byte 0x750A7512
	.4byte 0x751B7524
	.4byte 0x752C7535
	.4byte 0x753E7546
	.4byte 0x754F7558
	.4byte 0x75607569
	.4byte 0x7571757A
	.4byte 0x7583758B
	.4byte 0x7594759D
	.4byte 0x75A575AE
	.4byte 0x75B775BF
	.4byte 0x75C875D1
	.4byte 0x75D975E2
	.4byte 0x75EB75F4
	.4byte 0x75FC7605
	.4byte 0x760E7616
	.4byte 0x761F7628
	.4byte 0x76307639
	.4byte 0x7642764B
	.4byte 0x7653765C
	.4byte 0x7665766D
	.4byte 0x7676767F
	.4byte 0x76887690
	.4byte 0x769976A2
	.4byte 0x76AB76B3
	.4byte 0x76BC76C5
	.4byte 0x76CE76D6
	.4byte 0x76DF76E8
	.4byte 0x76F176F9
	.4byte 0x7702770B
	.4byte 0x7714771C
	.4byte 0x7725772E
	.4byte 0x77377740
	.4byte 0x77487751
	.4byte 0x775A7763
	.4byte 0x776C7774
	.4byte 0x777D7786
	.4byte 0x778F7798
	.4byte 0x77A077A9
	.4byte 0x77B277BB
	.4byte 0x77C477CD
	.4byte 0x77D577DE
	.4byte 0x77E777F0
	.4byte 0x77F97802
	.4byte 0x780A7813
	.4byte 0x781C7825
	.4byte 0x782E7837
	.4byte 0x783F7848
	.4byte 0x7851785A
	.4byte 0x7863786C
	.4byte 0x7875787E
	.4byte 0x7886788F
	.4byte 0x789878A1
	.4byte 0x78AA78B3
	.4byte 0x78BC78C5
	.4byte 0x78CE78D6
	.4byte 0x78DF78E8
	.4byte 0x78F178FA
	.4byte 0x7903790C
	.4byte 0x7915791E
	.4byte 0x79277930
	.4byte 0x79397942
	.4byte 0x794A7953
	.4byte 0x795C7965
	.4byte 0x796E7977
	.4byte 0x79807989
	.4byte 0x7992799B
	.4byte 0x79A479AD
	.4byte 0x79B679BF
	.4byte 0x79C879D1
	.4byte 0x79DA79E3
	.4byte 0x79EC79F5
	.4byte 0x79FE7A07
	.4byte 0x7A107A19
	.4byte 0x7A227A2B
	.4byte 0x7A347A3D
	.4byte 0x6F836F8C
	.4byte 0x6F946F9C
	.4byte 0x6FA46FAD
	.4byte 0x6FB56FBD
	.4byte 0x6FC56FCD
	.4byte 0x6FD66FDE
	.4byte 0x6FE66FEE
	.4byte 0x6FF76FFF
	.4byte 0x7007700F
	.4byte 0x70187020
	.4byte 0x70287031
	.4byte 0x70397041
	.4byte 0x70497052
	.4byte 0x705A7062
	.4byte 0x706A7073
	.4byte 0x707B7083
	.4byte 0x708C7094
	.4byte 0x709C70A4
	.4byte 0x70AD70B5
	.4byte 0x70BD70C6
	.4byte 0x70CE70D6
	.4byte 0x70DF70E7
	.4byte 0x70EF70F8
	.4byte 0x71007108
	.4byte 0x71117119
	.4byte 0x7121712A
	.4byte 0x7132713A
	.4byte 0x7143714B
	.4byte 0x7153715C
	.4byte 0x7164716C
	.4byte 0x7175717D
	.4byte 0x7185718E
	.4byte 0x7196719F
	.4byte 0x71A771AF
	.4byte 0x71B871C0
	.4byte 0x71C871D1
	.4byte 0x71D971E2
	.4byte 0x71EA71F2
	.4byte 0x71FB7203
	.4byte 0x720C7214
	.4byte 0x721C7225
	.4byte 0x722D7236
	.4byte 0x723E7246
	.4byte 0x724F7257
	.4byte 0x72607268
	.4byte 0x72717279
	.4byte 0x7281728A
	.4byte 0x7292729B
	.4byte 0x72A372AC
	.4byte 0x72B472BD
	.4byte 0x72C572CE
	.4byte 0x72D672DE
	.4byte 0x72E772EF
	.4byte 0x72F87300
	.4byte 0x73097311
	.4byte 0x731A7322
	.4byte 0x732B7333
	.4byte 0x733C7344
	.4byte 0x734D7355
	.4byte 0x735E7366
	.4byte 0x736F7377
	.4byte 0x73807388
	.4byte 0x73917399
	.4byte 0x73A273AA
	.4byte 0x73B373BB
	.4byte 0x73C473CC
	.4byte 0x73D573DD
	.4byte 0x73E673EF
	.4byte 0x73F77400
	.4byte 0x74087411
	.4byte 0x74197422
	.4byte 0x742A7433
	.4byte 0x743C7444
	.4byte 0x744D7455
	.4byte 0x745E7466
	.4byte 0x746F7478
	.4byte 0x74807489
	.4byte 0x7491749A
	.4byte 0x74A274AB
	.4byte 0x74B474BC
	.4byte 0x6A7F6A86
	.4byte 0x6A8E6A96
	.4byte 0x6A9E6AA6
	.4byte 0x6AAE6AB6
	.4byte 0x6ABD6AC5
	.4byte 0x6ACD6AD5
	.4byte 0x6ADD6AE5
	.4byte 0x6AED6AF5
	.4byte 0x6AFC6B04
	.4byte 0x6B0C6B14
	.4byte 0x6B1C6B24
	.4byte 0x6B2C6B34
	.4byte 0x6B3C6B43
	.4byte 0x6B4B6B53
	.4byte 0x6B5B6B63
	.4byte 0x6B6B6B73
	.4byte 0x6B7B6B83
	.4byte 0x6B8B6B93
	.4byte 0x6B9B6BA2
	.4byte 0x6BAA6BB2
	.4byte 0x6BBA6BC2
	.4byte 0x6BCA6BD2
	.4byte 0x6BDA6BE2
	.4byte 0x6BEA6BF2
	.4byte 0x6BFA6C02
	.4byte 0x6C0A6C12
	.4byte 0x6C1A6C22
	.4byte 0x6C2A6C32
	.4byte 0x6C3A6C42
	.4byte 0x6C4A6C52
	.4byte 0x6C596C61
	.4byte 0x6C696C71
	.4byte 0x6C796C81
	.4byte 0x6C896C91
	.4byte 0x6C996CA1
	.4byte 0x6CA96CB1
	.4byte 0x6CB96CC1
	.4byte 0x6CC96CD2
	.4byte 0x6CDA6CE2
	.4byte 0x6CEA6CF2
	.4byte 0x6CFA6D02
	.4byte 0x6D0A6D12
	.4byte 0x6D1A6D22
	.4byte 0x6D2A6D32
	.4byte 0x6D3A6D42
	.4byte 0x6D4A6D52
	.4byte 0x6D5A6D62
	.4byte 0x6D6A6D72
	.4byte 0x6D7A6D82
	.4byte 0x6D8B6D93
	.4byte 0x6D9B6DA3
	.4byte 0x6DAB6DB3
	.4byte 0x6DBB6DC3
	.4byte 0x6DCB6DD3
	.4byte 0x6DDB6DE3
	.4byte 0x6DEC6DF4
	.4byte 0x6DFC6E04
	.4byte 0x6E0C6E14
	.4byte 0x6E1C6E24
	.4byte 0x6E2C6E35
	.4byte 0x6E3D6E45
	.4byte 0x6E4D6E55
	.4byte 0x6E5D6E65
	.4byte 0x6E6D6E76
	.4byte 0x6E7E6E86
	.4byte 0x6E8E6E96
	.4byte 0x6E9E6EA6
	.4byte 0x6EAF6EB7
	.4byte 0x6EBF6EC7
	.4byte 0x6ECF6ED7
	.4byte 0x6EE06EE8
	.4byte 0x6EF06EF8
	.4byte 0x6F006F08
	.4byte 0x6F116F19
	.4byte 0x6F216F29
	.4byte 0x6F316F3A
	.4byte 0x6F426F4A
	.4byte 0x6F526F5A
	.4byte 0x6F636F6B
	.4byte 0x6F736F7B
	.4byte 0x65B465BB
	.4byte 0x65C365CA
	.4byte 0x65D265D9
	.4byte 0x65E165E8
	.4byte 0x65F065F7
	.4byte 0x65FF6606
	.4byte 0x660E6615
	.4byte 0x661D6624
	.4byte 0x662C6633
	.4byte 0x663B6642
	.4byte 0x664A6651
	.4byte 0x66596660
	.4byte 0x66686670
	.4byte 0x6677667F
	.4byte 0x6686668E
	.4byte 0x6695669D
	.4byte 0x66A466AC
	.4byte 0x66B466BB
	.4byte 0x66C366CA
	.4byte 0x66D266D9
	.4byte 0x66E166E9
	.4byte 0x66F066F8
	.4byte 0x66FF6707
	.4byte 0x670F6716
	.4byte 0x671E6725
	.4byte 0x672D6735
	.4byte 0x673C6744
	.4byte 0x674B6753
	.4byte 0x675B6762
	.4byte 0x676A6771
	.4byte 0x67796781
	.4byte 0x67886790
	.4byte 0x6798679F
	.4byte 0x67A767AE
	.4byte 0x67B667BE
	.4byte 0x67C567CD
	.4byte 0x67D567DC
	.4byte 0x67E467EC
	.4byte 0x67F367FB
	.4byte 0x6803680A
	.4byte 0x6812681A
	.4byte 0x68216829
	.4byte 0x68316838
	.4byte 0x68406848
	.4byte 0x684F6857
	.4byte 0x685F6866
	.4byte 0x686E6876
	.4byte 0x687E6885
	.4byte 0x688D6895
	.4byte 0x689C68A4
	.4byte 0x68AC68B4
	.4byte 0x68BB68C3
	.4byte 0x68CB68D2
	.4byte 0x68DA68E2
	.4byte 0x68EA68F1
	.4byte 0x68F96901
	.4byte 0x69096910
	.4byte 0x69186920
	.4byte 0x6927692F
	.4byte 0x6937693F
	.4byte 0x6947694E
	.4byte 0x6956695E
	.4byte 0x6966696D
	.4byte 0x6975697D
	.4byte 0x6985698C
	.4byte 0x6994699C
	.4byte 0x69A469AC
	.4byte 0x69B369BB
	.4byte 0x69C369CB
	.4byte 0x69D269DA
	.4byte 0x69E269EA
	.4byte 0x69F269FA
	.4byte 0x6A016A09
	.4byte 0x6A116A19
	.4byte 0x6A216A28
	.4byte 0x6A306A38
	.4byte 0x6A406A48
	.4byte 0x6A506A57
	.4byte 0x6A5F6A67
	.4byte 0x6A6F6A77
	.4byte 0x61206127
	.4byte 0x612E6135
	.4byte 0x613C6144
	.4byte 0x614B6152
	.4byte 0x61596160
	.4byte 0x6167616F
	.4byte 0x6176617D
	.4byte 0x6184618B
	.4byte 0x6192619A
	.4byte 0x61A161A8
	.4byte 0x61AF61B6
	.4byte 0x61BE61C5
	.4byte 0x61CC61D3
	.4byte 0x61DA61E2
	.4byte 0x61E961F0
	.4byte 0x61F761FF
	.4byte 0x6206620D
	.4byte 0x6214621B
	.4byte 0x6223622A
	.4byte 0x62316238
	.4byte 0x62406247
	.4byte 0x624E6255
	.4byte 0x625D6264
	.4byte 0x626B6272
	.4byte 0x627A6281
	.4byte 0x6288628F
	.4byte 0x6297629E
	.4byte 0x62A562AC
	.4byte 0x62B462BB
	.4byte 0x62C262CA
	.4byte 0x62D162D8
	.4byte 0x62DF62E7
	.4byte 0x62EE62F5
	.4byte 0x62FD6304
	.4byte 0x630B6312
	.4byte 0x631A6321
	.4byte 0x63286330
	.4byte 0x6337633E
	.4byte 0x6346634D
	.4byte 0x6354635C
	.4byte 0x6363636A
	.4byte 0x63726379
	.4byte 0x63806388
	.4byte 0x638F6396
	.4byte 0x639E63A5
	.4byte 0x63AC63B4
	.4byte 0x63BB63C2
	.4byte 0x63CA63D1
	.4byte 0x63D863E0
	.4byte 0x63E763EE
	.4byte 0x63F663FD
	.4byte 0x6405640C
	.4byte 0x6413641B
	.4byte 0x64226429
	.4byte 0x64316438
	.4byte 0x64406447
	.4byte 0x644E6456
	.4byte 0x645D6464
	.4byte 0x646C6473
	.4byte 0x647B6482
	.4byte 0x648A6491
	.4byte 0x649864A0
	.4byte 0x64A764AF
	.4byte 0x64B664BD
	.4byte 0x64C564CC
	.4byte 0x64D464DB
	.4byte 0x64E364EA
	.4byte 0x64F164F9
	.4byte 0x65006508
	.4byte 0x650F6517
	.4byte 0x651E6526
	.4byte 0x652D6534
	.4byte 0x653C6543
	.4byte 0x654B6552
	.4byte 0x655A6561
	.4byte 0x65696570
	.4byte 0x6578657F
	.4byte 0x6587658E
	.4byte 0x6596659D
	.4byte 0x65A565AC
	.4byte 0x5CC15CC7
	.4byte 0x5CCE5CD5
	.4byte 0x5CDC5CE3
	.4byte 0x5CEA5CF1
	.4byte 0x5CF75CFE
	.4byte 0x5D055D0C
	.4byte 0x5D135D1A
	.4byte 0x5D215D27
	.4byte 0x5D2E5D35
	.4byte 0x5D3C5D43
	.4byte 0x5D4A5D51
	.4byte 0x5D575D5E
	.4byte 0x5D655D6C
	.4byte 0x5D735D7A
	.4byte 0x5D815D88
	.4byte 0x5D8F5D95
	.4byte 0x5D9C5DA3
	.4byte 0x5DAA5DB1
	.4byte 0x5DB85DBF
	.4byte 0x5DC65DCD
	.4byte 0x5DD45DDB
	.4byte 0x5DE15DE8
	.4byte 0x5DEF5DF6
	.4byte 0x5DFD5E04
	.4byte 0x5E0B5E12
	.4byte 0x5E195E20
	.4byte 0x5E275E2E
	.4byte 0x5E355E3C
	.4byte 0x5E425E49
	.4byte 0x5E505E57
	.4byte 0x5E5E5E65
	.4byte 0x5E6C5E73
	.4byte 0x5E7A5E81
	.4byte 0x5E885E8F
	.4byte 0x5E965E9D
	.4byte 0x5EA45EAB
	.4byte 0x5EB25EB9
	.4byte 0x5EC05EC7
	.4byte 0x5ECE5ED5
	.4byte 0x5EDC5EE3
	.4byte 0x5EEA5EF1
	.4byte 0x5EF85EFF
	.4byte 0x5F065F0D
	.4byte 0x5F145F1B
	.4byte 0x5F225F29
	.4byte 0x5F305F37
	.4byte 0x5F3E5F45
	.4byte 0x5F4C5F53
	.4byte 0x5F5A5F61
	.4byte 0x5F685F6F
	.4byte 0x5F765F7D
	.4byte 0x5F845F8B
	.4byte 0x5F925F99
	.4byte 0x5FA05FA7
	.4byte 0x5FAE5FB5
	.4byte 0x5FBC5FC4
	.4byte 0x5FCB5FD2
	.4byte 0x5FD95FE0
	.4byte 0x5FE75FEE
	.4byte 0x5FF55FFC
	.4byte 0x6003600A
	.4byte 0x60116018
	.4byte 0x601F6027
	.4byte 0x602E6035
	.4byte 0x603C6043
	.4byte 0x604A6051
	.4byte 0x6058605F
	.4byte 0x6066606D
	.4byte 0x6075607C
	.4byte 0x6083608A
	.4byte 0x60916098
	.4byte 0x609F60A6
	.4byte 0x60AD60B5
	.4byte 0x60BC60C3
	.4byte 0x60CA60D1
	.4byte 0x60D860DF
	.4byte 0x60E760EE
	.4byte 0x60F560FC
	.4byte 0x6103610A
	.4byte 0x61116119
	.4byte 0x5894589A
	.4byte 0x58A158A8
	.4byte 0x58AE58B5
	.4byte 0x58BB58C2
	.4byte 0x58C858CF
	.4byte 0x58D558DC
	.4byte 0x58E258E9
	.4byte 0x58F058F6
	.4byte 0x58FD5903
	.4byte 0x590A5910
	.4byte 0x5917591D
	.4byte 0x5924592B
	.4byte 0x59315938
	.4byte 0x593E5945
	.4byte 0x594B5952
	.4byte 0x5959595F
	.4byte 0x5966596C
	.4byte 0x5973597A
	.4byte 0x59805987
	.4byte 0x598D5994
	.4byte 0x599B59A1
	.4byte 0x59A859AE
	.4byte 0x59B559BC
	.4byte 0x59C259C9
	.4byte 0x59CF59D6
	.4byte 0x59DD59E3
	.4byte 0x59EA59F1
	.4byte 0x59F759FE
	.4byte 0x5A045A0B
	.4byte 0x5A125A18
	.4byte 0x5A1F5A26
	.4byte 0x5A2C5A33
	.4byte 0x5A3A5A40
	.4byte 0x5A475A4D
	.4byte 0x5A545A5B
	.4byte 0x5A615A68
	.4byte 0x5A6F5A75
	.4byte 0x5A7C5A83
	.4byte 0x5A895A90
	.4byte 0x5A975A9D
	.4byte 0x5AA45AAB
	.4byte 0x5AB25AB8
	.4byte 0x5ABF5AC6
	.4byte 0x5ACC5AD3
	.4byte 0x5ADA5AE0
	.4byte 0x5AE75AEE
	.4byte 0x5AF45AFB
	.4byte 0x5B025B09
	.4byte 0x5B0F5B16
	.4byte 0x5B1D5B23
	.4byte 0x5B2A5B31
	.4byte 0x5B385B3E
	.4byte 0x5B455B4C
	.4byte 0x5B525B59
	.4byte 0x5B605B67
	.4byte 0x5B6D5B74
	.4byte 0x5B7B5B82
	.4byte 0x5B885B8F
	.4byte 0x5B965B9D
	.4byte 0x5BA35BAA
	.4byte 0x5BB15BB8
	.4byte 0x5BBE5BC5
	.4byte 0x5BCC5BD3
	.4byte 0x5BD95BE0
	.4byte 0x5BE75BEE
	.4byte 0x5BF55BFB
	.4byte 0x5C025C09
	.4byte 0x5C105C16
	.4byte 0x5C1D5C24
	.4byte 0x5C2B5C32
	.4byte 0x5C385C3F
	.4byte 0x5C465C4D
	.4byte 0x5C545C5A
	.4byte 0x5C615C68
	.4byte 0x5C6F5C76
	.4byte 0x5C7C5C83
	.4byte 0x5C8A5C91
	.4byte 0x5C985C9F
	.4byte 0x5CA55CAC
	.4byte 0x5CB35CBA
	.4byte 0x5497549E
	.4byte 0x54A454AA
	.4byte 0x54B054B7
	.4byte 0x54BD54C3
	.4byte 0x54C954D0
	.4byte 0x54D654DC
	.4byte 0x54E254E9
	.4byte 0x54EF54F5
	.4byte 0x54FB5502
	.4byte 0x5508550E
	.4byte 0x5514551B
	.4byte 0x55215527
	.4byte 0x552D5534
	.4byte 0x553A5540
	.4byte 0x5547554D
	.4byte 0x55535559
	.4byte 0x55605566
	.4byte 0x556C5573
	.4byte 0x5579557F
	.4byte 0x5585558C
	.4byte 0x55925598
	.4byte 0x559F55A5
	.4byte 0x55AB55B2
	.4byte 0x55B855BE
	.4byte 0x55C555CB
	.4byte 0x55D155D8
	.4byte 0x55DE55E4
	.4byte 0x55EB55F1
	.4byte 0x55F755FE
	.4byte 0x5604560A
	.4byte 0x56115617
	.4byte 0x561D5624
	.4byte 0x562A5630
	.4byte 0x5637563D
	.4byte 0x5643564A
	.4byte 0x56505656
	.4byte 0x565D5663
	.4byte 0x566A5670
	.4byte 0x5676567D
	.4byte 0x56835689
	.4byte 0x56905696
	.4byte 0x569D56A3
	.4byte 0x56A956B0
	.4byte 0x56B656BC
	.4byte 0x56C356C9
	.4byte 0x56D056D6
	.4byte 0x56DC56E3
	.4byte 0x56E956F0
	.4byte 0x56F656FC
	.4byte 0x57035709
	.4byte 0x57105716
	.4byte 0x571D5723
	.4byte 0x57295730
	.4byte 0x5736573D
	.4byte 0x5743574A
	.4byte 0x57505756
	.4byte 0x575D5763
	.4byte 0x576A5770
	.4byte 0x5777577D
	.4byte 0x5783578A
	.4byte 0x57905797
	.4byte 0x579D57A4
	.4byte 0x57AA57B1
	.4byte 0x57B757BE
	.4byte 0x57C457CB
	.4byte 0x57D157D7
	.4byte 0x57DE57E4
	.4byte 0x57EB57F1
	.4byte 0x57F857FE
	.4byte 0x5805580B
	.4byte 0x58125818
	.4byte 0x581F5825
	.4byte 0x582C5832
	.4byte 0x5839583F
	.4byte 0x5846584C
	.4byte 0x58535859
	.4byte 0x58605866
	.4byte 0x586D5873
	.4byte 0x587A5880
	.4byte 0x5887588D
	.4byte 0x50C950CF
	.4byte 0x50D550DB
	.4byte 0x50E050E6
	.4byte 0x50EC50F2
	.4byte 0x50F850FE
	.4byte 0x5104510A
	.4byte 0x51105116
	.4byte 0x511C5122
	.4byte 0x5128512E
	.4byte 0x5134513A
	.4byte 0x51405146
	.4byte 0x514C5152
	.4byte 0x5158515E
	.4byte 0x5164516A
	.4byte 0x51705176
	.4byte 0x517C5182
	.4byte 0x5188518E
	.4byte 0x5194519A
	.4byte 0x51A051A6
	.4byte 0x51AC51B2
	.4byte 0x51B851BE
	.4byte 0x51C451CA
	.4byte 0x51D051D6
	.4byte 0x51DC51E2
	.4byte 0x51E851EE
	.4byte 0x51F451FA
	.4byte 0x52015207
	.4byte 0x520D5213
	.4byte 0x5219521F
	.4byte 0x5225522B
	.4byte 0x52315237
	.4byte 0x523D5243
	.4byte 0x5249524F
	.4byte 0x5255525B
	.4byte 0x52615267
	.4byte 0x526E5274
	.4byte 0x527A5280
	.4byte 0x5286528C
	.4byte 0x52925298
	.4byte 0x529E52A4
	.4byte 0x52AA52B0
	.4byte 0x52B752BD
	.4byte 0x52C352C9
	.4byte 0x52CF52D5
	.4byte 0x52DB52E1
	.4byte 0x52E752ED
	.4byte 0x52F452FA
	.4byte 0x53005306
	.4byte 0x530C5312
	.4byte 0x5318531E
	.4byte 0x5325532B
	.4byte 0x53315337
	.4byte 0x533D5343
	.4byte 0x5349534F
	.4byte 0x5356535C
	.4byte 0x53625368
	.4byte 0x536E5374
	.4byte 0x537B5381
	.4byte 0x5387538D
	.4byte 0x53935399
	.4byte 0x539F53A6
	.4byte 0x53AC53B2
	.4byte 0x53B853BE
	.4byte 0x53C453CB
	.4byte 0x53D153D7
	.4byte 0x53DD53E3
	.4byte 0x53EA53F0
	.4byte 0x53F653FC
	.4byte 0x54025408
	.4byte 0x540F5415
	.4byte 0x541B5421
	.4byte 0x5427542E
	.4byte 0x5434543A
	.4byte 0x54405446
	.4byte 0x544D5453
	.4byte 0x5459545F
	.4byte 0x5466546C
	.4byte 0x54725478
	.4byte 0x547E5485
	.4byte 0x548B5491

.global lbl_801D4E20
lbl_801D4E20:

	# ROM: 0x1D1E20
	.4byte 0x0BAE0BAE
	.4byte 0x045B0CE4
	.4byte 0x0CE4045B
	.4byte 0x0E740E74
	.4byte 0x045B0000
	.4byte 0

.global lbl_801D4E38
lbl_801D4E38:

	# ROM: 0x1D1E38
	.4byte 0
	.4byte 0x380000FD
	.4byte 0x3920015F
	.4byte 0x39D001AD
	.4byte 0x3A380175
	.4byte 0x3A9400FE
	.4byte 0x3AD801B4
	.4byte 0x3B12011F
	.4byte 0x3B40018D
	.4byte 0x3B7401F0
	.4byte 0x3B970123
	.4byte 0x3BB70174
	.4byte 0x3BDA01BF
	.4byte 0x3C008104
	.4byte 0x3C158126
	.4byte 0x3C2C017B
	.4byte 0x3C4401B8
	.4byte 0x3C5E01A8
	.4byte 0x3C7901DF
	.4byte 0x3C8B4111
	.4byte 0x3C9A8120
	.4byte 0x3CAAC13F
	.4byte 0x3CBBC177
	.4byte 0x3CCDC18A
	.4byte 0x3CE081B5
	.4byte 0x3CF441F1
	.4byte 0x3D046108
	.4byte 0x3D0F2120
	.4byte 0x3D1A412A
	.4byte 0x3D25C140
	.4byte 0x3D31E159
	.4byte 0x3D3E617F
	.4byte 0x3D4B4197
	.4byte 0x3D58A1B7
	.4byte 0x3D6681C5
	.4byte 0x3D74E1F4
	.4byte 0x3D81D0FE
	.4byte 0x3D897113
	.4byte 0x3D91511E
	.4byte 0x3D99712D
	.4byte 0x3DA1C143
	.4byte 0x3DAA514F
	.4byte 0x3DB32160
	.4byte 0x3DBC417F
	.4byte 0x3DC5918A
	.4byte 0x3DCF2171
	.4byte 0x3DD8F1D4
	.4byte 0x3DE301A8
	.4byte 0x3DED51F8
	.4byte 0x3DF7E1B9
	.4byte 0x3E01611C
	.4byte 0x3E06E8F3
	.4byte 0x3E0C9928
	.4byte 0x3E126916
	.4byte 0x3E185943
	.4byte 0x3E1E7147
	.4byte 0x3E24A16A
	.4byte 0x3E2B0143
	.4byte 0x3E31797D
	.4byte 0x3E38198F
	.4byte 0x3E3EE17A
	.4byte 0x3E45C183
	.4byte 0x3E4CD185
	.4byte 0x3E53F9A5
	.4byte 0x3E5B51BD
	.4byte 0x3E62C9D1
	.4byte 0x3E6A69BE
	.4byte 0x3E7229E9
	.4byte 0x3E7A11ED
	.4byte 0x3E811106
	.4byte 0x3E852913
	.4byte 0x3E89591D
	.4byte 0x3E8D9924
	.4byte 0x3E91ED18
	.4byte 0x3E965929
	.4byte 0x3E9AD539
	.4byte 0x3E9F6534
	.4byte 0x3EA4093E
	.4byte 0x3EA8C155
	.4byte 0x3EAD9168
	.4byte 0x3EB27158
	.4byte 0x3EB76966
	.4byte 0x3EBC7582
	.4byte 0x3EC19589
	.4byte 0x3EC6CD8E
	.4byte 0x3ECC19A0
	.4byte 0x3ED1799E
	.4byte 0x3ED6F1BB
	.4byte 0x3EDC7DC3
	.4byte 0x3EE221C9
	.4byte 0x3EE7DDCA
	.4byte 0x3EEDADDA
	.4byte 0x3EF395E6
	.4byte 0x3EF991FF
	.4byte 0x3EFFA5F4
	.4byte 0x3F02EB0B
	.4byte 0x3F060B0B
	.4byte 0x3F093911
	.4byte 0x3F0C7315
	.4byte 0x3F0FB928
	.4byte 0x3F130B28
	.4byte 0x3F166927
	.4byte 0x3F19D335
	.4byte 0x3F1D4941
	.4byte 0x3F20CD42
	.4byte 0x3F245B4B
	.4byte 0x3F27F951
	.4byte 0x3F2BA15E
	.4byte 0x3F2F5760
	.4byte 0x3F331B69
	.4byte 0x3F36EB70
	.4byte 0x3F3AC97E
	.4byte 0x3F3EB378
	.4byte 0x3F42AB8A
	.4byte 0x3F46B192
	.4byte 0x3F4AC58F
	.4byte 0x3F4EE59B
	.4byte 0x3F5315A5
	.4byte 0x3F5751AD
	.4byte 0x3F5B9BBB
	.4byte 0x3F5FF5C7
	.4byte 0x3F645DC8
	.4byte 0x3F68D1D9
	.4byte 0x3F6D57DE
	.4byte 0x3F71EBEA
	.4byte 0x3F768BF4
	.4byte 0x3F7B3DF3
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0
	.4byte 0x3F3538EF
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F133333
	.4byte 0x3F3538EF
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0

.global lbl_801D5060
lbl_801D5060:

	# ROM: 0x1D2060
	.4byte 0x80000001
	.4byte 0x80000002
	.4byte 0x80000004
	.4byte 0x80000008

.global lbl_801D5070
lbl_801D5070:

	# ROM: 0x1D2070
	.4byte 0x80000010
	.4byte 0x80000020
	.4byte 0x80000040
	.4byte 0x80000080

.global lbl_801D5080
lbl_801D5080:

	# ROM: 0x1D2080
	.4byte lbl_8019AA14
	.4byte lbl_8019AA1C
	.4byte lbl_8019AA24
	.4byte lbl_8019AA2C
	.4byte lbl_8019AA34
	.4byte lbl_8019AA3C
	.4byte lbl_8019AA44
	.4byte lbl_8019AA4C
	.4byte lbl_8019AA54

.global lbl_801D50A4
lbl_801D50A4:

	# ROM: 0x1D20A4
	.4byte lbl_8019AA94
	.4byte lbl_8019AA9C
	.4byte lbl_8019AAA4
	.4byte lbl_8019AAAC
	.4byte lbl_8019AAB4
	.4byte lbl_8019AABC
	.4byte lbl_8019AAC4
	.4byte lbl_8019AACC
	.4byte lbl_8019AAD4

.global lbl_801D50C8
lbl_801D50C8:

	# ROM: 0x1D20C8
	.4byte lbl_8019ABC8
	.4byte lbl_8019ABD0
	.4byte lbl_8019ABD8
	.4byte lbl_8019ABE0
	.4byte lbl_8019ABE8
	.4byte lbl_8019ABF0
	.4byte lbl_8019ABF8
	.4byte lbl_8019AC00
	.4byte lbl_8019AC08
	.4byte 0

.global lbl_801D50F0
lbl_801D50F0:

	# ROM: 0x1D20F0
	.4byte 0x00000006
	.4byte 0x000C0012
	.4byte 0x0019001F
	.4byte 0x0025002B
	.4byte 0x00320038
	.4byte 0x003E0045
	.4byte 0x004B0051
	.4byte 0x0057005E
	.4byte 0x0064006A
	.4byte 0x00710077
	.4byte 0x007D0083
	.4byte 0x008A0090
	.4byte 0x0096009D
	.4byte 0x00A300A9
	.4byte 0x00AF00B6
	.4byte 0x00BC00C2
	.4byte 0x00C800CF
	.4byte 0x00D500DB
	.4byte 0x00E200E8
	.4byte 0x00EE00F4
	.4byte 0x00FB0101
	.4byte 0x0107010D
	.4byte 0x0114011A
	.4byte 0x01200127
	.4byte 0x012D0133
	.4byte 0x01390140
	.4byte 0x0146014C
	.4byte 0x01520159
	.4byte 0x015F0165
	.4byte 0x016B0172
	.4byte 0x0178017E
	.4byte 0x0184018B
	.4byte 0x01910197
	.4byte 0x019D01A4
	.4byte 0x01AA01B0
	.4byte 0x01B601BD
	.4byte 0x01C301C9
	.4byte 0x01CF01D6
	.4byte 0x01DC01E2
	.4byte 0x01E801EF
	.4byte 0x01F501FB
	.4byte 0x02010208
	.4byte 0x020E0214
	.4byte 0x021A0221
	.4byte 0x0227022D
	.4byte 0x02330239
	.4byte 0x02400246
	.4byte 0x024C0252
	.4byte 0x0259025F
	.4byte 0x0265026B
	.4byte 0x02710278
	.4byte 0x027E0284
	.4byte 0x028A0290
	.4byte 0x0297029D
	.4byte 0x02A302A9
	.4byte 0x02AF02B6
	.4byte 0x02BC02C2
	.4byte 0x02C802CE
	.4byte 0x02D502DB
	.4byte 0x02E102E7
	.4byte 0x02ED02F3
	.4byte 0x02FA0300
	.4byte 0x0306030C
	.4byte 0x03120318
	.4byte 0x031F0325
	.4byte 0x032B0331
	.4byte 0x0337033D
	.4byte 0x0344034A
	.4byte 0x03500356
	.4byte 0x035C0362
	.4byte 0x0368036F
	.4byte 0x0375037B
	.4byte 0x03810387
	.4byte 0x038D0393
	.4byte 0x039903A0
	.4byte 0x03A603AC
	.4byte 0x03B203B8
	.4byte 0x03BE03C4
	.4byte 0x03CA03D0
	.4byte 0x03D703DD
	.4byte 0x03E303E9
	.4byte 0x03EF03F5
	.4byte 0x03FB0401
	.4byte 0x0407040D
	.4byte 0x0413041A
	.4byte 0x04200426
	.4byte 0x042C0432
	.4byte 0x0438043E
	.4byte 0x0444044A
	.4byte 0x04500456
	.4byte 0x045C0462
	.4byte 0x0468046E
	.4byte 0x0474047A
	.4byte 0x04800486
	.4byte 0x048C0492
	.4byte 0x0498049E
	.4byte 0x04A504AB
	.4byte 0x04B104B7
	.4byte 0x04BD04C3
	.4byte 0x04C904CF
	.4byte 0x04D504DB
	.4byte 0x04E004E6
	.4byte 0x04EC04F2
	.4byte 0x04F804FE
	.4byte 0x0504050A
	.4byte 0x05100516
	.4byte 0x051C0522
	.4byte 0x0528052E
	.4byte 0x0534053A
	.4byte 0x05400546
	.4byte 0x054C0552
	.4byte 0x0558055D
	.4byte 0x05630569
	.4byte 0x056F0575
	.4byte 0x057B0581
	.4byte 0x0587058D
	.4byte 0x05930599
	.4byte 0x059E05A4
	.4byte 0x05AA05B0
	.4byte 0x05B605BC
	.4byte 0x05C205C7
	.4byte 0x05CD05D3
	.4byte 0x05D905DF
	.4byte 0x05E505EB
	.4byte 0x05F005F6
	.4byte 0x05FC0602
	.4byte 0x0608060E
	.4byte 0x06130619
	.4byte 0x061F0625
	.4byte 0x062B0630
	.4byte 0x0636063C
	.4byte 0x06420648
	.4byte 0x064D0653
	.4byte 0x0659065F
	.4byte 0x0664066A
	.4byte 0x06700676
	.4byte 0x067B0681
	.4byte 0x0687068D
	.4byte 0x06920698
	.4byte 0x069E06A3
	.4byte 0x06A906AF
	.4byte 0x06B506BA
	.4byte 0x06C006C6
	.4byte 0x06CB06D1
	.4byte 0x06D706DC
	.4byte 0x06E206E8
	.4byte 0x06ED06F3
	.4byte 0x06F906FE
	.4byte 0x0704070A
	.4byte 0x070F0715
	.4byte 0x071B0720
	.4byte 0x0726072B
	.4byte 0x07310737
	.4byte 0x073C0742
	.4byte 0x0748074D
	.4byte 0x07530758
	.4byte 0x075E0763
	.4byte 0x0769076F
	.4byte 0x0774077A
	.4byte 0x077F0785
	.4byte 0x078A0790
	.4byte 0x0795079B
	.4byte 0x07A007A6
	.4byte 0x07AC07B1
	.4byte 0x07B707BC
	.4byte 0x07C207C7
	.4byte 0x07CD07D2
	.4byte 0x07D707DD
	.4byte 0x07E207E8
	.4byte 0x07ED07F3
	.4byte 0x07F807FE
	.4byte 0x08030809
	.4byte 0x080E0813
	.4byte 0x0819081E
	.4byte 0x08240829
	.4byte 0x082E0834
	.4byte 0x0839083F
	.4byte 0x08440849
	.4byte 0x084F0854
	.4byte 0x085A085F
	.4byte 0x0864086A
	.4byte 0x086F0874
	.4byte 0x087A087F
	.4byte 0x0884088A
	.4byte 0x088F0894
	.4byte 0x0899089F
	.4byte 0x08A408A9
	.4byte 0x08AF08B4
	.4byte 0x08B908BE
	.4byte 0x08C408C9
	.4byte 0x08CE08D3
	.4byte 0x08D908DE
	.4byte 0x08E308E8
	.4byte 0x08EE08F3
	.4byte 0x08F808FD
	.4byte 0x09020908
	.4byte 0x090D0912
	.4byte 0x0917091C
	.4byte 0x09210927
	.4byte 0x092C0931
	.4byte 0x0936093B
	.4byte 0x09400945
	.4byte 0x094B0950
	.4byte 0x0955095A
	.4byte 0x095F0964
	.4byte 0x0969096E
	.4byte 0x09730978
	.4byte 0x097D0982
	.4byte 0x0987098D
	.4byte 0x09920997
	.4byte 0x099C09A1
	.4byte 0x09A609AB
	.4byte 0x09B009B5
	.4byte 0x09BA09BF
	.4byte 0x09C409C9
	.4byte 0x09CE09D3
	.4byte 0x09D709DC
	.4byte 0x09E109E6
	.4byte 0x09EB09F0
	.4byte 0x09F509FA
	.4byte 0x09FF0A04
	.4byte 0x0A090A0E
	.4byte 0x0A120A17
	.4byte 0x0A1C0A21
	.4byte 0x0A260A2B
	.4byte 0x0A300A35
	.4byte 0x0A390A3E
	.4byte 0x0A430A48
	.4byte 0x0A4D0A51
	.4byte 0x0A560A5B
	.4byte 0x0A600A65
	.4byte 0x0A690A6E
	.4byte 0x0A730A78
	.4byte 0x0A7C0A81
	.4byte 0x0A860A8B
	.4byte 0x0A8F0A94
	.4byte 0x0A990A9D
	.4byte 0x0AA20AA7
	.4byte 0x0AAC0AB0
	.4byte 0x0AB50ABA
	.4byte 0x0ABE0AC3
	.4byte 0x0AC80ACC
	.4byte 0x0AD10AD5
	.4byte 0x0ADA0ADF
	.4byte 0x0AE30AE8
	.4byte 0x0AEC0AF1
	.4byte 0x0AF60AFA
	.4byte 0x0AFF0B03
	.4byte 0x0B080B0C
	.4byte 0x0B110B15
	.4byte 0x0B1A0B1F
	.4byte 0x0B230B28
	.4byte 0x0B2C0B31
	.4byte 0x0B350B3A
	.4byte 0x0B3E0B42
	.4byte 0x0B470B4B
	.4byte 0x0B500B54
	.4byte 0x0B590B5D
	.4byte 0x0B620B66
	.4byte 0x0B6A0B6F
	.4byte 0x0B730B78
	.4byte 0x0B7C0B80
	.4byte 0x0B850B89
	.4byte 0x0B8D0B92
	.4byte 0x0B960B9A
	.4byte 0x0B9F0BA3
	.4byte 0x0BA70BAC
	.4byte 0x0BB00BB4
	.4byte 0x0BB80BBD
	.4byte 0x0BC10BC5
	.4byte 0x0BCA0BCE
	.4byte 0x0BD20BD6
	.4byte 0x0BDA0BDF
	.4byte 0x0BE30BE7
	.4byte 0x0BEB0BEF
	.4byte 0x0BF40BF8
	.4byte 0x0BFC0C00
	.4byte 0x0C040C08
	.4byte 0x0C0D0C11
	.4byte 0x0C150C19
	.4byte 0x0C1D0C21
	.4byte 0x0C250C29
	.4byte 0x0C2D0C31
	.4byte 0x0C360C3A
	.4byte 0x0C3E0C42
	.4byte 0x0C460C4A
	.4byte 0x0C4E0C52
	.4byte 0x0C560C5A
	.4byte 0x0C5E0C62
	.4byte 0x0C660C6A
	.4byte 0x0C6E0C72
	.4byte 0x0C760C79
	.4byte 0x0C7D0C81
	.4byte 0x0C850C89
	.4byte 0x0C8D0C91
	.4byte 0x0C950C99
	.4byte 0x0C9D0CA0
	.4byte 0x0CA40CA8
	.4byte 0x0CAC0CB0
	.4byte 0x0CB40CB7
	.4byte 0x0CBB0CBF
	.4byte 0x0CC30CC7
	.4byte 0x0CCA0CCE
	.4byte 0x0CD20CD6
	.4byte 0x0CD90CDD
	.4byte 0x0CE10CE5
	.4byte 0x0CE80CEC
	.4byte 0x0CF00CF3
	.4byte 0x0CF70CFB
	.4byte 0x0CFE0D02
	.4byte 0x0D060D09
	.4byte 0x0D0D0D11
	.4byte 0x0D140D18
	.4byte 0x0D1C0D1F
	.4byte 0x0D230D26
	.4byte 0x0D2A0D2D
	.4byte 0x0D310D35
	.4byte 0x0D380D3C
	.4byte 0x0D3F0D43
	.4byte 0x0D460D4A
	.4byte 0x0D4D0D51
	.4byte 0x0D540D58
	.4byte 0x0D5B0D5F
	.4byte 0x0D620D65
	.4byte 0x0D690D6C
	.4byte 0x0D700D73
	.4byte 0x0D770D7A
	.4byte 0x0D7D0D81
	.4byte 0x0D840D87
	.4byte 0x0D8B0D8E
	.4byte 0x0D910D95
	.4byte 0x0D980D9B
	.4byte 0x0D9F0DA2
	.4byte 0x0DA50DA9
	.4byte 0x0DAC0DAF
	.4byte 0x0DB20DB6
	.4byte 0x0DB90DBC
	.4byte 0x0DBF0DC2
	.4byte 0x0DC60DC9
	.4byte 0x0DCC0DCF
	.4byte 0x0DD20DD5
	.4byte 0x0DD90DDC
	.4byte 0x0DDF0DE2
	.4byte 0x0DE50DE8
	.4byte 0x0DEB0DEE
	.4byte 0x0DF20DF5
	.4byte 0x0DF80DFB
	.4byte 0x0DFE0E01
	.4byte 0x0E040E07
	.4byte 0x0E0A0E0D
	.4byte 0x0E100E13
	.4byte 0x0E160E19
	.4byte 0x0E1C0E1F
	.4byte 0x0E220E25
	.4byte 0x0E280E2B
	.4byte 0x0E2D0E30
	.4byte 0x0E330E36
	.4byte 0x0E390E3C
	.4byte 0x0E3F0E42
	.4byte 0x0E440E47
	.4byte 0x0E4A0E4D
	.4byte 0x0E500E53
	.4byte 0x0E550E58
	.4byte 0x0E5B0E5E
	.4byte 0x0E600E63
	.4byte 0x0E660E69
	.4byte 0x0E6B0E6E
	.4byte 0x0E710E74
	.4byte 0x0E760E79
	.4byte 0x0E7C0E7E
	.4byte 0x0E810E84
	.4byte 0x0E860E89
	.4byte 0x0E8B0E8E
	.4byte 0x0E910E93
	.4byte 0x0E960E98
	.4byte 0x0E9B0E9E
	.4byte 0x0EA00EA3
	.4byte 0x0EA50EA8
	.4byte 0x0EAA0EAD
	.4byte 0x0EAF0EB2
	.4byte 0x0EB40EB7
	.4byte 0x0EB90EBC
	.4byte 0x0EBE0EC0
	.4byte 0x0EC30EC5
	.4byte 0x0EC80ECA
	.4byte 0x0ECD0ECF
	.4byte 0x0ED10ED4
	.4byte 0x0ED60ED8
	.4byte 0x0EDB0EDD
	.4byte 0x0EDF0EE2
	.4byte 0x0EE40EE6
	.4byte 0x0EE80EEB
	.4byte 0x0EED0EEF
	.4byte 0x0EF20EF4
	.4byte 0x0EF60EF8
	.4byte 0x0EFA0EFD
	.4byte 0x0EFF0F01
	.4byte 0x0F030F05
	.4byte 0x0F080F0A
	.4byte 0x0F0C0F0E
	.4byte 0x0F100F12
	.4byte 0x0F140F16
	.4byte 0x0F180F1B
	.4byte 0x0F1D0F1F
	.4byte 0x0F210F23
	.4byte 0x0F250F27
	.4byte 0x0F290F2B
	.4byte 0x0F2D0F2F
	.4byte 0x0F310F33
	.4byte 0x0F350F37
	.4byte 0x0F390F3B
	.4byte 0x0F3C0F3E
	.4byte 0x0F400F42
	.4byte 0x0F440F46
	.4byte 0x0F480F4A
	.4byte 0x0F4B0F4D
	.4byte 0x0F4F0F51
	.4byte 0x0F530F55
	.4byte 0x0F560F58
	.4byte 0x0F5A0F5C
	.4byte 0x0F5D0F5F
	.4byte 0x0F610F63
	.4byte 0x0F640F66
	.4byte 0x0F680F69
	.4byte 0x0F6B0F6D
	.4byte 0x0F6E0F70
	.4byte 0x0F720F73
	.4byte 0x0F750F77
	.4byte 0x0F780F7A
	.4byte 0x0F7B0F7D
	.4byte 0x0F7F0F80
	.4byte 0x0F820F83
	.4byte 0x0F850F86
	.4byte 0x0F880F89
	.4byte 0x0F8B0F8C
	.4byte 0x0F8E0F8F
	.4byte 0x0F910F92
	.4byte 0x0F940F95
	.4byte 0x0F960F98
	.4byte 0x0F990F9B
	.4byte 0x0F9C0F9D
	.4byte 0x0F9F0FA0
	.4byte 0x0FA10FA3
	.4byte 0x0FA40FA5
	.4byte 0x0FA70FA8
	.4byte 0x0FA90FAB
	.4byte 0x0FAC0FAD
	.4byte 0x0FAE0FB0
	.4byte 0x0FB10FB2
	.4byte 0x0FB30FB4
	.4byte 0x0FB60FB7
	.4byte 0x0FB80FB9
	.4byte 0x0FBA0FBB
	.4byte 0x0FBD0FBE
	.4byte 0x0FBF0FC0
	.4byte 0x0FC10FC2
	.4byte 0x0FC30FC4
	.4byte 0x0FC50FC6
	.4byte 0x0FC70FC8
	.4byte 0x0FC90FCA
	.4byte 0x0FCB0FCC
	.4byte 0x0FCD0FCE
	.4byte 0x0FCF0FD0
	.4byte 0x0FD10FD2
	.4byte 0x0FD30FD4
	.4byte 0x0FD50FD6
	.4byte 0x0FD70FD8
	.4byte 0x0FD90FD9
	.4byte 0x0FDA0FDB
	.4byte 0x0FDC0FDD
	.4byte 0x0FDE0FDE
	.4byte 0x0FDF0FE0
	.4byte 0x0FE10FE1
	.4byte 0x0FE20FE3
	.4byte 0x0FE40FE4
	.4byte 0x0FE50FE6
	.4byte 0x0FE70FE7
	.4byte 0x0FE80FE9
	.4byte 0x0FE90FEA
	.4byte 0x0FEB0FEB
	.4byte 0x0FEC0FEC
	.4byte 0x0FED0FEE
	.4byte 0x0FEE0FEF
	.4byte 0x0FEF0FF0
	.4byte 0x0FF00FF1
	.4byte 0x0FF10FF2
	.4byte 0x0FF20FF3
	.4byte 0x0FF30FF4
	.4byte 0x0FF40FF5
	.4byte 0x0FF50FF6
	.4byte 0x0FF60FF7
	.4byte 0x0FF70FF7
	.4byte 0x0FF80FF8
	.4byte 0x0FF90FF9
	.4byte 0x0FF90FFA
	.4byte 0x0FFA0FFA
	.4byte 0x0FFB0FFB
	.4byte 0x0FFB0FFB
	.4byte 0x0FFC0FFC
	.4byte 0x0FFC0FFC
	.4byte 0x0FFD0FFD
	.4byte 0x0FFD0FFD
	.4byte 0x0FFE0FFE
	.4byte 0x0FFE0FFE
	.4byte 0x0FFE0FFE
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0x0FFF0FFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D5900
lbl_801D5900:

	# ROM: 0x1D2900
	.4byte 0
	.4byte 0x029F0E76
	.4byte 0x029F0E85
	.4byte 0x029F0EA1
	.4byte 0x029F0EB0
	.4byte 0x029F0EB6
	.4byte 0x029F0EE8
	.4byte 0x029F0EEE
	.4byte 0x13021303
	.4byte 0x12041305
	.4byte 0x13068E00
	.4byte 0x8C008B00
	.4byte 0x009200FF
	.4byte 0x81008900
	.4byte 0x009E0E80
	.4byte 0x00FE0E1B
	.4byte 0x810000FE
	.4byte 0x0E3116FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000126FC
	.4byte 0x02A08000
	.4byte 0x029C0029
	.4byte 0x029F0045
	.4byte 0x13021303
	.4byte 0x12041305
	.4byte 0x13068E00
	.4byte 0x8C008B00
	.4byte 0x009200FF
	.4byte 0x16FCDCD1
	.4byte 0x16FD0001
	.4byte 0x16FB0001
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x00408E00
	.4byte 0x81008900
	.4byte 0x009FBABE
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x004A8200
	.4byte 0x0294004A
	.4byte 0x23FF8100
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x005427FF
	.4byte 0x02407FFF
	.4byte 0x2ECE2FCF
	.4byte 0x16CD0C00
	.4byte 0x81002EC9
	.4byte 0x1FFB2FCB
	.4byte 0x02BF0657
	.4byte 0x00800C00
	.4byte 0x8E008100
	.4byte 0x8970B100
	.4byte 0x0291007E
	.4byte 0x0A13C100
	.4byte 0x0292007E
	.4byte 0x009F0C8B
	.4byte 0x4C001C7E
	.4byte 0x02131C7E
	.4byte 0x176F16FC
	.4byte 0xFBAD16FD
	.4byte 0x80800021
	.4byte 0x16FCBAAD
	.4byte 0x2EFD0021
	.4byte 0x8D008F00
	.4byte 0x8A008900
	.4byte 0x81680098
	.4byte 0x00000099
	.4byte 0x00010081
	.4byte 0
	.4byte 0x193E193C
	.4byte 0x11A0009B
	.4byte 0xA1008271
	.4byte 0x02771F19
	.4byte 0x193CA100
	.4byte 0x82710277
	.4byte 0x1F19193C
	.4byte 0x1FD8B100
	.4byte 0x029400CD
	.4byte 0x00DE0E44
	.4byte 0x0000B100
	.4byte 0x029400AD
	.4byte 0x191C191C
	.4byte 0x191C00E0
	.4byte 0x0E45029F
	.4byte 0x01188B00
	.4byte 0x7A0000FE
	.4byte 0x0E448400
	.4byte 0x00990140
	.4byte 0x1F1EA000
	.4byte 0x191E191E
	.4byte 0x191C00E0
	.4byte 0x0E45009A
	.4byte 0x00000098
	.4byte 0x0DC04E00
	.4byte 0x48002ECE
	.4byte 0x2CCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0140
	.4byte 0x2ECB029F
	.4byte 0x00E78B00
	.4byte 0x00D80E44
	.4byte 0x00990140
	.4byte 0x0000A000
	.4byte 0x191E0000
	.4byte 0x00FE0E44
	.4byte 0x191E191C
	.4byte 0x00E00E45
	.4byte 0x4E002ECE
	.4byte 0x2CCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0140
	.4byte 0x2ECB02BF
	.4byte 0x06578A48
	.4byte 0x00830E48
	.4byte 0x00800000
	.4byte 0x00810000
	.4byte 0x1979193A
	.4byte 0xB041A64B
	.4byte 0xF051B441
	.4byte 0x91001150
	.4byte 0x0100A792
	.4byte 0xF151B520
	.4byte 0x9941A693
	.4byte 0xF051B428
	.4byte 0x91410083
	.4byte 0x0E480080
	.4byte 0x01400081
	.4byte 0x01401979
	.4byte 0x193AB041
	.4byte 0xA64BF051
	.4byte 0xB4419100
	.4byte 0x11500117
	.4byte 0xA792F151
	.4byte 0xB5209941
	.4byte 0xA693F051
	.4byte 0xB4289141
	.4byte 0x00C00E45
	.4byte 0x029F0068
	.4byte 0x81008970
	.4byte 0x8E782ECE
	.4byte 0x2FCF009E
	.4byte 0x0E482ECD
	.4byte 0x0E002EC9
	.4byte 0x009E0040
	.4byte 0x2ECB0081
	.4byte 0x0E480082
	.4byte 0x0000009B
	.4byte 0x009F009A
	.4byte 0x01408100
	.4byte 0x89008F00
	.4byte 0x02BF0657
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x02940140
	.4byte 0x005A1B5E
	.4byte 0x029F0148
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01474C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x02940152
	.4byte 0x005A1B5E
	.4byte 0x029F015A
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01594C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB100193F
	.4byte 0x02940164
	.4byte 0x005A1B5E
	.4byte 0x029F016C
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x016B4C00
	.4byte 0x1B5E1B5C
	.4byte 0x00820400
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0177005A
	.4byte 0x1B5E029F
	.4byte 0x017F9900
	.4byte 0x1B5E1B5C
	.4byte 0x007B017E
	.4byte 0x4C001B5E
	.4byte 0x1B5C193E
	.4byte 0x193CB179
	.4byte 0x02940188
	.4byte 0x005A1B5E
	.4byte 0x029F0190
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x018F4C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x0199005A
	.4byte 0x1B5E029F
	.4byte 0x01A19900
	.4byte 0x1B5E1B5C
	.4byte 0x007B01A0
	.4byte 0x4C001B5E
	.4byte 0x1B5C0082
	.4byte 0x07C0193E
	.4byte 0x193CB179
	.4byte 0x029401AC
	.4byte 0x005A1B5E
	.4byte 0x029F01B4
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01B34C00
	.4byte 0x1B5E1B5C
	.4byte 0x193E193C
	.4byte 0xB1790294
	.4byte 0x01BD005A
	.4byte 0x1B5E029F
	.4byte 0x01C59900
	.4byte 0x1B5E1B5C
	.4byte 0x007B01C4
	.4byte 0x4C001B5E
	.4byte 0x1B5C193E
	.4byte 0x193CB179
	.4byte 0x029401CE
	.4byte 0x005A1B5E
	.4byte 0x029F01D6
	.4byte 0x99001B5E
	.4byte 0x1B5C007B
	.4byte 0x01D54C00
	.4byte 0x1B5E1B5C
	.4byte 0x029F0068
	.4byte 0x0085FFFF
	.4byte 0x81508940
	.4byte 0x8E4800FA
	.4byte 0x0E1700F8
	.4byte 0x0E180081
	.4byte 0x000002BF
	.4byte 0x05EC00DA
	.4byte 0x0E1700D8
	.4byte 0x0E188948
	.4byte 0x00810400
	.4byte 0x02BF05EC
	.4byte 0x00DA0E17
	.4byte 0x00D80E18
	.4byte 0x89480081
	.4byte 0x07C002BF
	.4byte 0x05EC029F
	.4byte 0x00680086
	.4byte 0x07C002BF
	.4byte 0x057F029F
	.4byte 0x00688100
	.4byte 0x8E00191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x000016C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x0657029F
	.4byte 0x00688100
	.4byte 0x89708E60
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x89000D20
	.4byte 0x2DCB4C00
	.4byte 0x1C800080
	.4byte 0x02800081
	.4byte 0x00000082
	.4byte 0x01400083
	.4byte 0x0E480A00
	.4byte 0x27C903A0
	.4byte 0x0004029C
	.4byte 0x02262ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E5816C9
	.4byte 0x000016CB
	.4byte 0x0260009F
	.4byte 0x00A08F00
	.4byte 0x007F023F
	.4byte 0x197E1B1A
	.4byte 0x197C1B1A
	.4byte 0x1B5E7C22
	.4byte 0x1B3E1B3C
	.4byte 0x1C04029F
	.4byte 0x00688E70
	.4byte 0x8960191F
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0C00
	.4byte 0x16C90000
	.4byte 0x05030340
	.4byte 0xFFF02FCB
	.4byte 0x02BF0657
	.4byte 0x00800C00
	.4byte 0x029F0068
	.4byte 0x81008970
	.4byte 0x8E782ECE
	.4byte 0x2FCF16CD
	.4byte 0x0B8016C9
	.4byte 0x000016CB
	.4byte 0x00C40082
	.4byte 0x0E08009F
	.4byte 0x00001B5F
	.4byte 0x009F0140
	.4byte 0x1B5F009F
	.4byte 0x02801B5F
	.4byte 0x009F0400
	.4byte 0x1B5F009F
	.4byte 0x05401B5F
	.4byte 0x009F0680
	.4byte 0x1B5F009F
	.4byte 0x07C01B5F
	.4byte 0x009F0900
	.4byte 0x1B5F009F
	.4byte 0x0A401B5F
	.4byte 0x02BF0657
	.4byte 0x00DE0BA7
	.4byte 0x00DF0BA8
	.4byte 0x2ECE2FCF
	.4byte 0x16CD03C0
	.4byte 0x16C90000
	.4byte 0x16CB0080
	.4byte 0x81008900
	.4byte 0x00DE0B84
	.4byte 0x009F0D0F
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E1500DE
	.4byte 0x0B85009F
	.4byte 0x0D124C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E16
	.4byte 0x00DE0B86
	.4byte 0x009A000F
	.4byte 0x009F0C9F
	.4byte 0x34004C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E14
	.4byte 0x00DE0B86
	.4byte 0x009A001F
	.4byte 0x009F0CAF
	.4byte 0x14FC3400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E4600DE
	.4byte 0x0B86009F
	.4byte 0x0CCF14F7
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E478100
	.4byte 0x00DE0B9B
	.4byte 0xB1000295
	.4byte 0x02EE8900
	.4byte 0x00DF0B9E
	.4byte 0x03000CC0
	.4byte 0x00FF0E40
	.4byte 0x00DF0B9F
	.4byte 0x03000CC0
	.4byte 0x00FF0E41
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E43
	.4byte 0x02BF0657
	.4byte 0x00DE0B9C
	.4byte 0x2ECE00DE
	.4byte 0x0B9D2ECF
	.4byte 0x16CD0CC0
	.4byte 0x16C90000
	.4byte 0x16CB0040
	.4byte 0x02BF0657
	.4byte 0x029F0068
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E40
	.4byte 0x00FF0E41
	.4byte 0x00FF0E43
	.4byte 0x02BF0657
	.4byte 0x029F0068
	.4byte 0x8E0000E0
	.4byte 0x0E070080
	.4byte 0x0BA20081
	.4byte 0x03C00E05
	.4byte 0x00FE0E04
	.4byte 0x89008150
	.4byte 0x009F0B80
	.4byte 0x007A030F
	.4byte 0x193E4C49
	.4byte 0x1C5E1A59
	.4byte 0x00830E05
	.4byte 0x1B611B60
	.4byte 0x00DE0B87
	.4byte 0x06010295
	.4byte 0x031B029F
	.4byte 0x041300DE
	.4byte 0x0E4200FE
	.4byte 0x0E1C00C3
	.4byte 0x0E15177F
	.4byte 0x8E008A00
	.4byte 0x81008900
	.4byte 0x00DE0BB3
	.4byte 0x00DF0BB2
	.4byte 0x1F1F4D00
	.4byte 0x14818D1E
	.4byte 0x1FD80098
	.4byte 0x80000080
	.4byte 0x0E48A830
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC38AD30
	.4byte 0xAC3800FE
	.4byte 0x0BB28F00
	.4byte 0x00800E48
	.4byte 0x00C10E43
	.4byte 0x1C61193A
	.4byte 0x19189059
	.4byte 0x19199E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E51
	.4byte 0x80809759
	.4byte 0x80919E00
	.4byte 0x6F331B7F
	.4byte 0x810000DE
	.4byte 0x0BDD0000
	.4byte 0xB1000295
	.4byte 0x03C58D00
	.4byte 0x8F008A00
	.4byte 0x00C00E43
	.4byte 0x00C10E43
	.4byte 0x00830BDF
	.4byte 0x0087FFFF
	.4byte 0x00DE0BDE
	.4byte 0x80E1B04F
	.4byte 0x1F5EE2E1
	.4byte 0xB64F1F5E
	.4byte 0xE2E1110F
	.4byte 0x03C0B79A
	.4byte 0x1F5FE2E1
	.4byte 0xB69B1F5E
	.4byte 0xE2E1B79A
	.4byte 0x1B1F00FF
	.4byte 0x0BDE00C3
	.4byte 0x0E148A00
	.4byte 0x177F00C3
	.4byte 0x0E468A00
	.4byte 0x177F00C3
	.4byte 0x0E478A00
	.4byte 0x177F8100
	.4byte 0x00DE0B9B
	.4byte 0xB1000295
	.4byte 0x040B00DE
	.4byte 0x0E4200FE
	.4byte 0x0E438100
	.4byte 0x890000DE
	.4byte 0x0B9E00DF
	.4byte 0x0BA08200
	.4byte 0x029303E7
	.4byte 0x7800029F
	.4byte 0x03EA0295
	.4byte 0x03EA7400
	.4byte 0x00FE0B9E
	.4byte 0x00DF0E43
	.4byte 0x05E04C00
	.4byte 0x00FE0E40
	.4byte 0x81008900
	.4byte 0x00DE0B9F
	.4byte 0x00DF0BA1
	.4byte 0x82000293
	.4byte 0x03FE7800
	.4byte 0x029F0401
	.4byte 0x02950401
	.4byte 0x740000FE
	.4byte 0x0B9F00DF
	.4byte 0x0E4305E0
	.4byte 0x4C0000FE
	.4byte 0x0E41029F
	.4byte 0x041300DE
	.4byte 0x0E4200FE
	.4byte 0x0E4000FE
	.4byte 0x0E4100FE
	.4byte 0x0E438100
	.4byte 0x8E008400
	.4byte 0x89001EFE
	.4byte 0x0E401EBE
	.4byte 0x00830E08
	.4byte 0x1C031FF5
	.4byte 0x191AF858
	.4byte 0xFBA0F8B1
	.4byte 0xFBA0F8B1
	.4byte 0xFBA0F8B1
	.4byte 0xFBA0F83B
	.4byte 0x1B7E0083
	.4byte 0x0E048100
	.4byte 0x89731961
	.4byte 0x19607800
	.4byte 0x00FE0E04
	.4byte 0x02940307
	.4byte 0x8E008100
	.4byte 0x00DE0B9B
	.4byte 0xB1000295
	.4byte 0x044B00DE
	.4byte 0x0B9C00DC
	.4byte 0x0B9D2ECE
	.4byte 0x2CCF8100
	.4byte 0x00DE0E1C
	.4byte 0x2ECD16C9
	.4byte 0x000116CB
	.4byte 0x004002BF
	.4byte 0x06578100
	.4byte 0x890000DE
	.4byte 0x0B8200DF
	.4byte 0x0B832ECE
	.4byte 0x2FCF16CD
	.4byte 0x0B8016C9
	.4byte 0x000116CB
	.4byte 0x00C402BF
	.4byte 0x06578100
	.4byte 0x00DE0B80
	.4byte 0x00DC0B81
	.4byte 0xB1000294
	.4byte 0x046700C0
	.4byte 0x0E07029F
	.4byte 0x00682ECE
	.4byte 0x2CCF16CD
	.4byte 0x0B8016C9
	.4byte 0x000016CB
	.4byte 0x00C40082
	.4byte 0x0E08009F
	.4byte 0x00001B5F
	.4byte 0x009F0140
	.4byte 0x1B5F009F
	.4byte 0x02801B5F
	.4byte 0x009F0400
	.4byte 0x1B5F009F
	.4byte 0x05401B5F
	.4byte 0x009F0680
	.4byte 0x1B5F009F
	.4byte 0x07C01B5F
	.4byte 0x009F0900
	.4byte 0x1B5F009F
	.4byte 0x0A401B5F
	.4byte 0x02BF0657
	.4byte 0x00DE0BA7
	.4byte 0x00DF0BA8
	.4byte 0x2ECE2FCF
	.4byte 0x16CD03C0
	.4byte 0x16C90000
	.4byte 0x16CB0080
	.4byte 0x81008900
	.4byte 0x00DE0B84
	.4byte 0x009F0D0F
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E1500DE
	.4byte 0x0B85009F
	.4byte 0x0D124C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E16
	.4byte 0x00DE0B86
	.4byte 0x009A000F
	.4byte 0x009F0C9F
	.4byte 0x34004C00
	.4byte 0x1C7E0213
	.4byte 0x00FE0E14
	.4byte 0x00DE0B86
	.4byte 0x009A001F
	.4byte 0x009F0CAF
	.4byte 0x14FC3400
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E4600DE
	.4byte 0x0B86009F
	.4byte 0x0CCF14F7
	.4byte 0x4C001C7E
	.4byte 0x021300FE
	.4byte 0x0E478100
	.4byte 0x00DE0B9B
	.4byte 0xB1000295
	.4byte 0x04FE8900
	.4byte 0x00DF0B9E
	.4byte 0x03000CC0
	.4byte 0x00FF0E40
	.4byte 0x00DF0B9F
	.4byte 0x03000CC0
	.4byte 0x00FF0E41
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E43
	.4byte 0x02BF0657
	.4byte 0x00DE0B9C
	.4byte 0x2ECE00DE
	.4byte 0x0B9D2ECF
	.4byte 0x16CD0CC0
	.4byte 0x16C90000
	.4byte 0x16CB0040
	.4byte 0x02BF0657
	.4byte 0x00C00E07
	.4byte 0x029F02FC
	.4byte 0x009F0CE0
	.4byte 0x00FF0E42
	.4byte 0x00FF0E40
	.4byte 0x00FF0E41
	.4byte 0x00FF0E43
	.4byte 0x02BF0657
	.4byte 0x00C00E07
	.4byte 0x029F02FC
	.4byte 0x8E000086
	.4byte 0x04008100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x1FC62ECD
	.4byte 0x16C90001
	.4byte 0x16CB0780
	.4byte 0x02BF0657
	.4byte 0x02BF057F
	.4byte 0x029F0068
	.4byte 0x8E000086
	.4byte 0x07C08100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x1FC62ECD
	.4byte 0x16C90001
	.4byte 0x16CB0780
	.4byte 0x02BF0657
	.4byte 0x02BF057F
	.4byte 0x029F0068
	.4byte 0x8C008A00
	.4byte 0x81008970
	.4byte 0x191F2ECE
	.4byte 0x2FCF16CD
	.4byte 0x028016C9
	.4byte 0x000116CB
	.4byte 0x02808F50
	.4byte 0x81400081
	.4byte 0x04000083
	.4byte 0x00000082
	.4byte 0x01400099
	.4byte 0x008002BF
	.4byte 0x06571105
	.4byte 0x05671F61
	.4byte 0x11200559
	.4byte 0x8972195C
	.4byte 0xF07B197D
	.4byte 0xF1318139
	.4byte 0x89006800
	.4byte 0x2ECE2CCF
	.4byte 0x1FFB2FCD
	.4byte 0x0F012FC9
	.4byte 0x1FF92FCB
	.4byte 0x72001F5E
	.4byte 0x1F1C8100
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0568029F
	.4byte 0x0068029F
	.4byte 0x0068029F
	.4byte 0x0068029F
	.4byte 0x006816FC
	.4byte 0xDCD116FD
	.4byte 0x000216FB
	.4byte 0x0001029F
	.4byte 0x0EF7029F
	.4byte 0x00458E00
	.4byte 0x191F191D
	.4byte 0x1F5F1F1D
	.4byte 0x2FCE2DCF
	.4byte 0x89001FA6
	.4byte 0x2DCD0E00
	.4byte 0x2EC98100
	.4byte 0x009C00C0
	.4byte 0x2CCB1CA0
	.4byte 0x00810E48
	.4byte 0x48001B3E
	.4byte 0x1B3C0B00
	.4byte 0x00990060
	.4byte 0x4B001B3D
	.4byte 0x00810E48
	.4byte 0x1C060083
	.4byte 0x00001C43
	.4byte 0x27C903A0
	.4byte 0x0004029C
	.4byte 0x05A01109
	.4byte 0x05D58E00
	.4byte 0x193A1938
	.4byte 0x69002FCE
	.4byte 0x2DCF8900
	.4byte 0x193D2DCD
	.4byte 0x16C90000
	.4byte 0x8100009C
	.4byte 0x00C02CCB
	.4byte 0x00810E48
	.4byte 0x48001B3E
	.4byte 0x1B3C0B00
	.4byte 0x09604B00
	.4byte 0x1B3D0081
	.4byte 0x0E488F00
	.4byte 0x80F080C0
	.4byte 0x6A004800
	.4byte 0x111705CF
	.4byte 0x80F080C0
	.4byte 0x6B324922
	.4byte 0x80F080C0
	.4byte 0x6A3A482A
	.4byte 0x80F080C0
	.4byte 0x6B324922
	.4byte 0x1B5F1B5D
	.4byte 0x80F080C0
	.4byte 0x6A004800
	.4byte 0x111705E3
	.4byte 0x80F080C0
	.4byte 0x6B324922
	.4byte 0x80F080C0
	.4byte 0x6A3A482A
	.4byte 0x80F080C0
	.4byte 0x6B324922
	.4byte 0x1B5F1B5D
	.4byte 0x1C0502DF
	.4byte 0x8E00009B
	.4byte 0x0E48009D
	.4byte 0x00C002BF
	.4byte 0x063C4900
	.4byte 0x00FF0E1D
	.4byte 0x00FD0E1E
	.4byte 0x890002BF
	.4byte 0x06571104
	.4byte 0x062700DA
	.4byte 0x0E1D00D8
	.4byte 0x0E1E009B
	.4byte 0x0EA8009D
	.4byte 0x00C002BF
	.4byte 0x063C4900
	.4byte 0x00FF0E1D
	.4byte 0x00FD0E1E
	.4byte 0x00830E48
	.4byte 0x02BF0647
	.4byte 0x890000DA
	.4byte 0x0E1D00D8
	.4byte 0x0E1E009B
	.4byte 0x0E48009D
	.4byte 0x00C002BF
	.4byte 0x063C4900
	.4byte 0x00FF0E1D
	.4byte 0x00FD0E1E
	.4byte 0x00830EA8
	.4byte 0x02BF0647
	.4byte 0
	.4byte 0x8E008900
	.4byte 0x00DA0E1D
	.4byte 0x00D80E1E
	.4byte 0x009B0EA8
	.4byte 0x009D00C0
	.4byte 0x02BF063C
	.4byte 0x49000083
	.4byte 0x0E4802BF
	.4byte 0x06470083
	.4byte 0x0EA802BF
	.4byte 0x064702DF
	.4byte 0x8E0000FA
	.4byte 0xFFCE00F8
	.4byte 0xFFCF00FB
	.4byte 0xFFCD16C9
	.4byte 0x00002DCB
	.4byte 0x02DF8F00
	.4byte 0x8D008A00
	.4byte 0x197A1978
	.4byte 0xA000B600
	.4byte 0x11300655
	.4byte 0x91794E6D
	.4byte 0x197A4D43
	.4byte 0xA039B629
	.4byte 0x02DF26C9
	.4byte 0x02A00004
	.4byte 0x029C0657
	.4byte 0x02DF26FE
	.4byte 0x02C08000
	.4byte 0x029C065D
	.4byte 0x02DF26FC
	.4byte 0x02A08000
	.4byte 0x029C0663
	.4byte 0x02DF26FC
	.4byte 0x02A08000
	.4byte 0x029C0669
	.4byte 0x02DF8100
	.4byte 0x89708E60
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x89000D20
	.4byte 0x2DCB4C00
	.4byte 0x1C800080
	.4byte 0x02800081
	.4byte 0x00000082
	.4byte 0x01400083
	.4byte 0x0E480A00
	.4byte 0x27C903A0
	.4byte 0x0004029C
	.4byte 0x06862ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E5816C9
	.4byte 0x000016CB
	.4byte 0x0260009F
	.4byte 0x00A08F00
	.4byte 0x007F069F
	.4byte 0x197E1B1A
	.4byte 0x197C1B1A
	.4byte 0x1B5E1B5C
	.4byte 0x1B3E1B3C
	.4byte 0x1C04029F
	.4byte 0x00680082
	.4byte 0x0BB8195E
	.4byte 0x2ED1195E
	.4byte 0x2ED4195E
	.4byte 0x2ED5195E
	.4byte 0x2ED6195E
	.4byte 0x2ED7195E
	.4byte 0x2ED8195E
	.4byte 0x2ED9195E
	.4byte 0x2EA0195E
	.4byte 0x2EA1195E
	.4byte 0x2EA2195E
	.4byte 0x2EA3195E
	.4byte 0x2EA4195E
	.4byte 0x2EA5195E
	.4byte 0x2EA6195E
	.4byte 0x2EA7195E
	.4byte 0x2EA8195E
	.4byte 0x2EA9195E
	.4byte 0x2EAA195E
	.4byte 0x2EAB195E
	.4byte 0x2EAC195E
	.4byte 0x2EAD195E
	.4byte 0x2EAE195E
	.4byte 0x2EAF195E
	.4byte 0x2EDE195E
	.4byte 0x2EDA195E
	.4byte 0x2EDB195E
	.4byte 0x2EDC8C00
	.4byte 0x8A008E00
	.4byte 0x00D80E16
	.4byte 0x195B1959
	.4byte 0x8100195C
	.4byte 0x00800E48
	.4byte 0x195F1B1F
	.4byte 0x195F1B1F
	.4byte 0x195F1B1F
	.4byte 0x185F1B1F
	.4byte 0x6B001505
	.4byte 0x4D00157E
	.4byte 0x1C9F1CBD
	.4byte 0x05E09900
	.4byte 0x7D001CDD
	.4byte 0x89001FA5
	.4byte 0x15021CBF
	.4byte 0x009A01FC
	.4byte 0x009E0E48
	.4byte 0x0081FFDD
	.4byte 0x00830D80
	.4byte 0x00640715
	.4byte 0x18271B07
	.4byte 0x4A001FFC
	.4byte 0x18271B07
	.4byte 0x15793500
	.4byte 0x18271B07
	.4byte 0x41001B7E
	.4byte 0x18271B07
	.4byte 0x1B7F0000
	.4byte 0x0065071B
	.4byte 0x18271B07
	.4byte 0
	.4byte 0x0007187F
	.4byte 0x00660724
	.4byte 0x4A3B1FFC
	.4byte 0x15793533
	.4byte 0x41001B7F
	.4byte 0x0004189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF1ADC
	.4byte 0x00820BD2
	.4byte 0x27DC1ADF
	.4byte 0x27DB1ADF
	.4byte 0x27DA1ADF
	.4byte 0x00820BBE
	.4byte 0x27D91ADF
	.4byte 0x27D81ADF
	.4byte 0x8F0000C1
	.4byte 0x0E420082
	.4byte 0x0D801940
	.4byte 0x194380F0
	.4byte 0xB8C0111F
	.4byte 0x074FA6F0
	.4byte 0xBCF01940
	.4byte 0x1943BCF0
	.4byte 0x4EC0B831
	.4byte 0xA6F0BCF0
	.4byte 0xBC004E00
	.4byte 0x1B3E00E1
	.4byte 0x0E4202DF
	.4byte 0x00820BB8
	.4byte 0x195E2ED1
	.4byte 0x195E2ED4
	.4byte 0x195E2ED5
	.4byte 0x195E2ED6
	.4byte 0x195E2ED7
	.4byte 0x195E2ED8
	.4byte 0x195E2ED9
	.4byte 0x195E2EA0
	.4byte 0x195E2EA1
	.4byte 0x195E2EA2
	.4byte 0x195E2EA3
	.4byte 0x195E2EA4
	.4byte 0x195E2EA5
	.4byte 0x195E2EA6
	.4byte 0x195E2EA7
	.4byte 0x195E2EA8
	.4byte 0x195E2EA9
	.4byte 0x195E2EAA
	.4byte 0x195E2EAB
	.4byte 0x195E2EAC
	.4byte 0x195E2EAD
	.4byte 0x195E2EAE
	.4byte 0x195E2EAF
	.4byte 0x195E2EDE
	.4byte 0x195E2EDA
	.4byte 0x195E2EDB
	.4byte 0x195E2EDC
	.4byte 0x8C008A00
	.4byte 0x8E00195B
	.4byte 0x19598100
	.4byte 0x195C0080
	.4byte 0x0E48195F
	.4byte 0x195F195F
	.4byte 0x1B1F185F
	.4byte 0x1B1F6B00
	.4byte 0x15054D00
	.4byte 0x157E1C9F
	.4byte 0x1CBD05E0
	.4byte 0x99007D00
	.4byte 0x1CDD8900
	.4byte 0x1FA51502
	.4byte 0x1CBF009A
	.4byte 0x01FC009E
	.4byte 0x0E490081
	.4byte 0xFFDD0083
	.4byte 0x0D800064
	.4byte 0x07C61827
	.4byte 0x1B074A00
	.4byte 0x1B7E1827
	.4byte 0x1B071B7C
	.4byte 0x00001827
	.4byte 0x1B070000
	.4byte 0x00001827
	.4byte 0x1B070000
	.4byte 0x00000065
	.4byte 0x07CC1827
	.4byte 0x1B070000
	.4byte 0x00000066
	.4byte 0x07D14A00
	.4byte 0x1B7E1B7C
	.4byte 0x0004189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF1ADC
	.4byte 0x00820BD2
	.4byte 0x27DC1ADF
	.4byte 0x27DB1ADF
	.4byte 0x27DA1ADF
	.4byte 0x00820BBE
	.4byte 0x27D91ADF
	.4byte 0x27D81ADF
	.4byte 0x8D008B00
	.4byte 0x8F0000C1
	.4byte 0x0E420082
	.4byte 0x0D808100
	.4byte 0x112007FE
	.4byte 0x89001940
	.4byte 0x189E181B
	.4byte 0x199A5400
	.4byte 0x1F5E1959
	.4byte 0xB000FB00
	.4byte 0x813900E1
	.4byte 0x0E4202DF
	.4byte 0x00820BB8
	.4byte 0x195E2ED1
	.4byte 0x195E2ED4
	.4byte 0x195E2ED5
	.4byte 0x195E2ED6
	.4byte 0x195E2ED7
	.4byte 0x195E2ED8
	.4byte 0x195E2ED9
	.4byte 0x195E2EA0
	.4byte 0x195E2EA1
	.4byte 0x195E2EA2
	.4byte 0x195E2EA3
	.4byte 0x195E2EA4
	.4byte 0x195E2EA5
	.4byte 0x195E2EA6
	.4byte 0x195E2EA7
	.4byte 0x195E2EA8
	.4byte 0x195E2EA9
	.4byte 0x195E2EAA
	.4byte 0x195E2EAB
	.4byte 0x195E2EAC
	.4byte 0x195E2EAD
	.4byte 0x195E2EAE
	.4byte 0x195E2EAF
	.4byte 0x195E2EDE
	.4byte 0x195E2EDA
	.4byte 0x195E2EDB
	.4byte 0x195E2EDC
	.4byte 0x00C00E42
	.4byte 0x0081FFDD
	.4byte 0x11200843
	.4byte 0x18241B04
	.4byte 0
	.4byte 0x00E00E42
	.4byte 0x00820BD9
	.4byte 0x0004189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF189F
	.4byte 0x1ADF8900
	.4byte 0x1ADC27DC
	.4byte 0x00FF0BD2
	.4byte 0x27DB00FF
	.4byte 0x0BD127DA
	.4byte 0x00FF0BD0
	.4byte 0x27D900FF
	.4byte 0x0BBE27D8
	.4byte 0x00FF0BBD
	.4byte 0x02DF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BA902DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAC02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x80E700F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC02DF
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BA900C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B8B00C2
	.4byte 0x0E091C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAC
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B89
	.4byte 0x00C20E08
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x80E700F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC00C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BA902DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAC
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4800C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x828200F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC02DF
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BA900C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E41
	.4byte 0x00810B8B
	.4byte 0x00C20E09
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAC
	.4byte 0x00C00E43
	.4byte 0x00810B97
	.4byte 0x00C20E0A
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAF
	.4byte 0x02DF00C0
	.4byte 0x0E400081
	.4byte 0x0B8900C2
	.4byte 0x0E080083
	.4byte 0x0E4800C4
	.4byte 0x0E4100C5
	.4byte 0x0E0902BF
	.4byte 0x828200F8
	.4byte 0x0BA900FB
	.4byte 0x0BAC00C0
	.4byte 0x0E430081
	.4byte 0x0B9700C2
	.4byte 0x0E0A0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAF02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAA02DF
	.4byte 0x00C00E41
	.4byte 0x00810B8F
	.4byte 0x00C20E0C
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0C02BF
	.4byte 0x80E700F8
	.4byte 0x0BAA00FB
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAA
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B8F00C2
	.4byte 0x0E0C0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAD02DF
	.4byte 0x00C00E40
	.4byte 0x00810B8D
	.4byte 0x00C20E0B
	.4byte 0x00830E48
	.4byte 0x00C40E41
	.4byte 0x00C50E0C
	.4byte 0x02BF8282
	.4byte 0x00F80BAA
	.4byte 0x00FB0BAD
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F0970
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x097C00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F0988
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x099A00C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D1C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB0
	.4byte 0x029F09A7
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB0029F
	.4byte 0x09B400C0
	.4byte 0x0E430081
	.4byte 0x0B9900C2
	.4byte 0x0E0D0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB002DF
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F0970
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F097C
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F0988
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F099A
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F09A7
	.4byte 0x00C00E43
	.4byte 0x00810B99
	.4byte 0x00C20E0D
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB0
	.4byte 0x029F09B4
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAB02DF
	.4byte 0x00C00E41
	.4byte 0x00810B93
	.4byte 0x00C20E0F
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6200C4
	.4byte 0x0E4100C5
	.4byte 0x0E0F02BF
	.4byte 0x80E700F8
	.4byte 0x0BAB00FB
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAB
	.4byte 0x02DF00C0
	.4byte 0x0E410081
	.4byte 0x0B9300C2
	.4byte 0x0E0F0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E40
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x00C40E41
	.4byte 0x00C50E0F
	.4byte 0x02BF8282
	.4byte 0x00F80BAB
	.4byte 0x00FB0BAE
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0A82
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0A8E00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0A9A
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0AAC00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0AB9
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0AC600C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D02DF
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0A82
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0A8E
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0A9A
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AAC
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AB9
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BB1
	.4byte 0x029F0AC6
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAB02DF
	.4byte 0x00C00E43
	.4byte 0x00810B93
	.4byte 0x00C20E0F
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x1C6200C4
	.4byte 0x0E4300C5
	.4byte 0x0E0F02BF
	.4byte 0x80E700F8
	.4byte 0x0BAB00FB
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x02BF845D
	.4byte 0x00F80BAB
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9300C2
	.4byte 0x0E0F0083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BAE02DF
	.4byte 0x00C00E43
	.4byte 0x00810B91
	.4byte 0x00C20E0E
	.4byte 0x00830E48
	.4byte 0x00C40E43
	.4byte 0x00C50E0F
	.4byte 0x02BF8282
	.4byte 0x00F80BAB
	.4byte 0x00FB0BAE
	.4byte 0x02DF00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0B92
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0B9E00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0BAA
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0BBC00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E101C62
	.4byte 0x02BF81F9
	.4byte 0x00F80BB1
	.4byte 0x029F0BC9
	.4byte 0x00C00E43
	.4byte 0x00810B95
	.4byte 0x00C20E10
	.4byte 0x1C6202BF
	.4byte 0x81F900F8
	.4byte 0x0BB1029F
	.4byte 0x0BD600C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0B9200C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0B9E00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BAA00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BBC00C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BC900C0
	.4byte 0x0E430081
	.4byte 0x0B9500C2
	.4byte 0x0E100083
	.4byte 0x0E4802BF
	.4byte 0x845D00F8
	.4byte 0x0BB1029F
	.4byte 0x0BD6011C
	.4byte 0x01D80256
	.4byte 0x02FC050E
	.4byte 0x052201FF
	.4byte 0x066F0D15
	.4byte 0x01F90573
	.4byte 0x056F0571
	.4byte 0x02430536
	.4byte 0x05750D8F
	.4byte 0x020F0082
	.4byte 0x0E050863
	.4byte 0x08640870
	.4byte 0x087C088E
	.4byte 0x089A08B1
	.4byte 0x08C80863
	.4byte 0x08E508F2
	.4byte 0x08FF0912
	.4byte 0x091F0938
	.4byte 0x09510863
	.4byte 0x0970097C
	.4byte 0x09880863
	.4byte 0x099A09A7
	.4byte 0x09B409C7
	.4byte 0x09D309E0
	.4byte 0x09ED09C7
	.4byte 0x09FA0A07
	.4byte 0x0A140863
	.4byte 0x0970097C
	.4byte 0x09880863
	.4byte 0x099A09A7
	.4byte 0x09B40A21
	.4byte 0x0A2E0A3C
	.4byte 0x0A4A0A21
	.4byte 0x0A580A66
	.4byte 0x0A740863
	.4byte 0x0A820A8E
	.4byte 0x0A9A0863
	.4byte 0x0AAC0AB9
	.4byte 0x0AC60AD9
	.4byte 0x0AE50AF2
	.4byte 0x0AFF0AD9
	.4byte 0x0B0C0B19
	.4byte 0x0B260863
	.4byte 0x0A820A8E
	.4byte 0x0A9A0863
	.4byte 0x0AAC0AB9
	.4byte 0x0AC60B33
	.4byte 0x0B3E0B4C
	.4byte 0x0B5A0B33
	.4byte 0x0B680B76
	.4byte 0x0B840863
	.4byte 0x0B920B9E
	.4byte 0x0BAA0863
	.4byte 0x0BBC0BC9
	.4byte 0x0BD60AD9
	.4byte 0x0BE90BF6
	.4byte 0x0C030AD9
	.4byte 0x0C100C1D
	.4byte 0x0C2A0863
	.4byte 0x0B920B9E
	.4byte 0x0BAA0863
	.4byte 0x0BBC0BC9
	.4byte 0x0BD60B33
	.4byte 0x0C370C45
	.4byte 0x0C530B33
	.4byte 0x0C610C6F
	.4byte 0x0C7D06A3
	.4byte 0x07580802
	.4byte 0x10001200
	.4byte 0x14008E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E8016C9
	.4byte 0x000016CB
	.4byte 0x01001F7E
	.4byte 0x1F3C8100
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0D24191E
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x028016C9
	.4byte 0x000016CB
	.4byte 0x02801C80
	.4byte 0x00800280
	.4byte 0x00C10E1B
	.4byte 0x00850000
	.4byte 0x0089007F
	.4byte 0x00820F00
	.4byte 0x008316B4
	.4byte 0x1CE38100
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0D428F00
	.4byte 0x8A788C68
	.4byte 0xF1001A3F
	.4byte 0x84E3107E
	.4byte 0xF2E3F2E7
	.4byte 0xF2786E68
	.4byte 0xF1321A3F
	.4byte 0x119E0D5E
	.4byte 0x1C6784E3
	.4byte 0x107EF2E3
	.4byte 0xF2E7F278
	.4byte 0x6E68F132
	.4byte 0x1A3F1C67
	.4byte 0x84E3107E
	.4byte 0xF2E3F2E7
	.4byte 0xF2006E00
	.4byte 0x1B5E00E1
	.4byte 0x0E1B0080
	.4byte 0x02800083
	.4byte 0x0F000081
	.4byte 0x00000082
	.4byte 0x01400089
	.4byte 0xFFFF8900
	.4byte 0x81008F00
	.4byte 0x11A00D7E
	.4byte 0x197F9930
	.4byte 0x1B1E1B3F
	.4byte 0x7D291B5F
	.4byte 0x1B5D8E00
	.4byte 0x1FDB1F99
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E80
	.4byte 0x16C90001
	.4byte 0x16CB0100
	.4byte 0x02BF0657
	.4byte 0x1C04029F
	.4byte 0x00688E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x07C016C9
	.4byte 0x000116CB
	.4byte 0x050002BF
	.4byte 0x06578100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD07C0
	.4byte 0x16C90000
	.4byte 0x89000D20
	.4byte 0x2DCB4C00
	.4byte 0x1C800080
	.4byte 0x07C00083
	.4byte 0x00001C43
	.4byte 0x0A0027C9
	.4byte 0x03A00004
	.4byte 0x029C0DB1
	.4byte 0x2ECE2CCF
	.4byte 0x16CD07D0
	.4byte 0x16C90000
	.4byte 0x16CB04E0
	.4byte 0x8F0080F0
	.4byte 0x80C06A00
	.4byte 0x4800114F
	.4byte 0x0DCC80F0
	.4byte 0x80C06B32
	.4byte 0x492280F0
	.4byte 0x80C06A3A
	.4byte 0x482A80F0
	.4byte 0x80C06B32
	.4byte 0x49221B5F
	.4byte 0x1B5D80F0
	.4byte 0x80C06800
	.4byte 0x7C004A00
	.4byte 0x114F0DE3
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B2280F0
	.4byte 0x80C0683A
	.4byte 0x7C004A2A
	.4byte 0x80F080C0
	.4byte 0x69327D00
	.4byte 0x4B221B5F
	.4byte 0x1B5D1C04
	.4byte 0x029F0068
	.4byte 0x8F0080F1
	.4byte 0x80C16A00
	.4byte 0x4800114F
	.4byte 0x0DFC80F1
	.4byte 0x80C16B32
	.4byte 0x492280F1
	.4byte 0x80C16A3A
	.4byte 0x482A80F1
	.4byte 0x80C16B32
	.4byte 0x49221B5F
	.4byte 0x1B5D8E00
	.4byte 0x02DF8E00
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x040016C9
	.4byte 0x000116CB
	.4byte 0x078002BF
	.4byte 0x06578100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0A40
	.4byte 0x16C90001
	.4byte 0x16CB0280
	.4byte 0x02BF0657
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E4816C9
	.4byte 0x000016CB
	.4byte 0x02800081
	.4byte 0x0E480082
	.4byte 0x00000083
	.4byte 0x000002BF
	.4byte 0x065702BF
	.4byte 0x0DEE8100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x16CB0280
	.4byte 0x00810E48
	.4byte 0x00820140
	.4byte 0x00830140
	.4byte 0x02BF0657
	.4byte 0x02BF0DEE
	.4byte 0x81008970
	.4byte 0x191C2ECE
	.4byte 0x2CCF16CD
	.4byte 0x0E4816C9
	.4byte 0x000016CB
	.4byte 0x02800081
	.4byte 0x0E480082
	.4byte 0x07C00083
	.4byte 0x07C002BF
	.4byte 0x065702BF
	.4byte 0x0DEE8100
	.4byte 0x8970191C
	.4byte 0x2ECE2CCF
	.4byte 0x16CD0E48
	.4byte 0x16C90000
	.4byte 0x16CB0280
	.4byte 0x00810E48
	.4byte 0x00820900
	.4byte 0x00830900
	.4byte 0x02BF0657
	.4byte 0x02BF0DEE
	.4byte 0x029F0068
	.4byte 0x8E0016FC
	.4byte 0xECC01FCC
	.4byte 0x1D9E2EFD
	.4byte 0x26FC02A0
	.4byte 0x8000029C
	.4byte 0x0E7C0000
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x00F00E17
	.4byte 0x00FE0E18
	.4byte 0x00FC0E19
	.4byte 0x1FCC1D9E
	.4byte 0x16FCFEED
	.4byte 0x2EFD26FC
	.4byte 0x02A08000
	.4byte 0x029C0E91
	.4byte 0x00D00E17
	.4byte 0x00DE0E18
	.4byte 0x00DC0E19
	.4byte 0
	.4byte 0
	.4byte 0x02FF8E00
	.4byte 0x1DBC1DBE
	.4byte 0x810000DE
	.4byte 0x0BB70601
	.4byte 0x02950EAD
	.4byte 0x0E0000FE
	.4byte 0x0B871FCD
	.4byte 0x1F8D02FF
	.4byte 0
	.4byte 0
	.4byte 0x000002FF
	.4byte 0x8E001DBC
	.4byte 0x1DBE8100
	.4byte 0x00DE0BB7
	.4byte 0x06010295
	.4byte 0x0EC50E00
	.4byte 0x00FE0B87
	.4byte 0x1FCD1F8D
	.4byte 0x02FF8100
	.4byte 0x00DE0B88
	.4byte 0x06010295
	.4byte 0x0ED700DE
	.4byte 0x0BDA2EDA
	.4byte 0x00DE0BDB
	.4byte 0x2EDB00DE
	.4byte 0x0BDC2EDC
	.4byte 0x1FCD1F8D
	.4byte 0x02FF00DE
	.4byte 0x0BDA2EDA
	.4byte 0x26DB2EDB
	.4byte 0x26DC2EDC
	.4byte 0x810000DC
	.4byte 0x0BE17600
	.4byte 0x00FC0BE1
	.4byte 0x81001FCD
	.4byte 0x1F8D02FF
	.4byte 0
	.4byte 0
	.4byte 0x000002FF
	.4byte 0
	.4byte 0
	.4byte 0x02FF0F05
	.4byte 0x0F080F40
	.4byte 0x0F438E00
	.4byte 0x81008900
	.4byte 0x02BF0F46
	.4byte 0x27FF009E
	.4byte 0x0EF34C00
	.4byte 0x1C7E0313
	.4byte 0x1C7F176F
	.4byte 0x0021029F
	.4byte 0x00300021
	.4byte 0x81008900
	.4byte 0x02BF0F46
	.4byte 0x24FF02BF
	.4byte 0x0F4C25FF
	.4byte 0x02BF0F4C
	.4byte 0x27FF2ECE
	.4byte 0x2CCF16C9
	.4byte 0x00012FCD
	.4byte 0x2DCB8100
	.4byte 0x890002BF
	.4byte 0x0F4624FF
	.4byte 0x1C9E1CBC
	.4byte 0x02BF0F4C
	.4byte 0x25FF02BF
	.4byte 0x0F4C27FF
	.4byte 0x1CDF1CFD
	.4byte 0x810002BF
	.4byte 0x0F4626FF
	.4byte 0x1C1E8900
	.4byte 0x02BF0F4C
	.4byte 0x20FF1F5F
	.4byte 0x02BF0F46
	.4byte 0x21FF02BF
	.4byte 0x0F4623FF
	.4byte 0x26C902A0
	.4byte 0x0004029C
	.4byte 0x0F38029F
	.4byte 0x80B50021
	.4byte 0x029F8000
	.4byte 0x0021029F
	.4byte 0x00450021
	.4byte 0x26FE02C0
	.4byte 0x8000029C
	.4byte 0x0F4602DF
	.4byte 0x27FE03C0
	.4byte 0x8000029C
	.4byte 0x0F4C02DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_801D77C0
lbl_801D77C0:

	# ROM: 0x1D47C0
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x000001B1
	.4byte 0x00000095

.global lbl_801D77D0
lbl_801D77D0:

	# ROM: 0x1D47D0
	.4byte 0x000006FD
	.4byte 0x000007CF
	.4byte 0x0000091D
	.4byte 0x000001B1
	.4byte 0x00000095
	.4byte 0x0000002F
	.4byte 0x00000049
	.4byte 0x00000043

.global lbl_801D77F0
lbl_801D77F0:

	# ROM: 0x1D47F0
	.4byte 0x3DC7B000
	.4byte 0x3F4D5E00
	.4byte 0x3DD01000
	.4byte 0xBA800000
	.4byte 0x3DBF8000
	.4byte 0x3F4D5200
	.4byte 0x3DD8B000
	.4byte 0xBA880000
	.4byte 0x3DB78000
	.4byte 0x3F4D3C00
	.4byte 0x3DE18000
	.4byte 0xBA980000
	.4byte 0x3DAFB000
	.4byte 0x3F4D1A00
	.4byte 0x3DEA7000
	.4byte 0xBAA80000
	.4byte 0x3DA80000
	.4byte 0x3F4CEC00
	.4byte 0x3DF39000
	.4byte 0xBAB80000
	.4byte 0x3DA08000
	.4byte 0x3F4CB400
	.4byte 0x3DFCE000
	.4byte 0xBAC80000
	.4byte 0x3D993000
	.4byte 0x3F4C7200
	.4byte 0x3E033800
	.4byte 0xBAD80000
	.4byte 0x3D922000
	.4byte 0x3F4C2400
	.4byte 0x3E081000
	.4byte 0xBAE80000
	.4byte 0x3D8B3000
	.4byte 0x3F4BCA00
	.4byte 0x3E0D0000
	.4byte 0xBAFC0000
	.4byte 0x3D848000
	.4byte 0x3F4B6600
	.4byte 0x3E120800
	.4byte 0xBB060000
	.4byte 0x3D7BE000
	.4byte 0x3F4AF800
	.4byte 0x3E172800
	.4byte 0xBB100000
	.4byte 0x3D6F0000
	.4byte 0x3F4A7E00
	.4byte 0x3E1C6000
	.4byte 0xBB180000
	.4byte 0x3D62A000
	.4byte 0x3F49F800
	.4byte 0x3E21B000
	.4byte 0xBB220000
	.4byte 0x3D568000
	.4byte 0x3F496800
	.4byte 0x3E271800
	.4byte 0xBB2E0000
	.4byte 0x3D4AC000
	.4byte 0x3F48D000
	.4byte 0x3E2C9000
	.4byte 0xBB380000
	.4byte 0x3D3F6000
	.4byte 0x3F482A00
	.4byte 0x3E322800
	.4byte 0xBB440000
	.4byte 0x3D344000
	.4byte 0x3F477A00
	.4byte 0x3E37D000
	.4byte 0xBB4E0000
	.4byte 0x3D29A000
	.4byte 0x3F46C000
	.4byte 0x3E3D9000
	.4byte 0xBB5A0000
	.4byte 0x3D1F4000
	.4byte 0x3F45FC00
	.4byte 0x3E436800
	.4byte 0xBB660000
	.4byte 0x3D152000
	.4byte 0x3F452E00
	.4byte 0x3E495000
	.4byte 0xBB720000
	.4byte 0x3D0B6000
	.4byte 0x3F445600
	.4byte 0x3E4F5800
	.4byte 0xBB7E0000
	.4byte 0x3D020000
	.4byte 0x3F437400
	.4byte 0x3E557000
	.4byte 0xBB850000
	.4byte 0x3CF1C000
	.4byte 0x3F428600
	.4byte 0x3E5B9800
	.4byte 0xBB8C0000
	.4byte 0x3CE04000
	.4byte 0x3F419000
	.4byte 0x3E61D800
	.4byte 0xBB920000
	.4byte 0x3CCF4000
	.4byte 0x3F409000
	.4byte 0x3E683000
	.4byte 0xBB990000
	.4byte 0x3CBF0000
	.4byte 0x3F3F8800
	.4byte 0x3E6E9800
	.4byte 0xBB9F0000
	.4byte 0x3CAF4000
	.4byte 0x3F3E7600
	.4byte 0x3E751000
	.4byte 0xBBA60000
	.4byte 0x3CA04000
	.4byte 0x3F3D5A00
	.4byte 0x3E7BA000
	.4byte 0xBBAE0000
	.4byte 0x3C91C000
	.4byte 0x3F3C3600
	.4byte 0x3E812000
	.4byte 0xBBB50000
	.4byte 0x3C838000
	.4byte 0x3F3B0800
	.4byte 0x3E847800
	.4byte 0xBBBB0000
	.4byte 0x3C6C0000
	.4byte 0x3F39D200
	.4byte 0x3E87DC00
	.4byte 0xBBC20000
	.4byte 0x3C520000
	.4byte 0x3F389400
	.4byte 0x3E8B4800
	.4byte 0xBBCA0000
	.4byte 0x3C398000
	.4byte 0x3F374C00
	.4byte 0x3E8EBC00
	.4byte 0xBBD10000
	.4byte 0x3C220000
	.4byte 0x3F35FE00
	.4byte 0x3E923800
	.4byte 0xBBD70000
	.4byte 0x3C0B8000
	.4byte 0x3F34A600
	.4byte 0x3E95BC00
	.4byte 0xBBDE0000
	.4byte 0x3BEC0000
	.4byte 0x3F334800
	.4byte 0x3E994400
	.4byte 0xBBE60000
	.4byte 0x3BC20000
	.4byte 0x3F31E200
	.4byte 0x3E9CD800
	.4byte 0xBBED0000
	.4byte 0x3B9A0000
	.4byte 0x3F307400
	.4byte 0x3EA07400
	.4byte 0xBBF30000
	.4byte 0x3B6A0000
	.4byte 0x3F2EFE00
	.4byte 0x3EA41400
	.4byte 0xBBFA0000
	.4byte 0x3B220000
	.4byte 0x3F2D8000
	.4byte 0x3EA7BC00
	.4byte 0xBC010000
	.4byte 0x3ABC0000
	.4byte 0x3F2BFE00
	.4byte 0x3EAB6800
	.4byte 0xBC048000
	.4byte 0x39F00000
	.4byte 0x3F2A7400
	.4byte 0x3EAF1800
	.4byte 0xBC078000
	.4byte 0xBA000000
	.4byte 0x3F28E400
	.4byte 0x3EB2D000
	.4byte 0xBC0A8000
	.4byte 0xBAB00000
	.4byte 0x3F274E00
	.4byte 0x3EB69000
	.4byte 0xBC0D8000
	.4byte 0xBB0E0000
	.4byte 0x3F25B000
	.4byte 0x3EBA5000
	.4byte 0xBC110000
	.4byte 0xBB420000
	.4byte 0x3F240E00
	.4byte 0x3EBE1800
	.4byte 0xBC140000
	.4byte 0xBB720000
	.4byte 0x3F226400
	.4byte 0x3EC1E400
	.4byte 0xBC170000
	.4byte 0xBB8F0000
	.4byte 0x3F20B600
	.4byte 0x3EC5B400
	.4byte 0xBC190000
	.4byte 0xBBA30000
	.4byte 0x3F1F0400
	.4byte 0x3EC98800
	.4byte 0xBC1B8000
	.4byte 0xBBB70000
	.4byte 0x3F1D4C00
	.4byte 0x3ECD5C00
	.4byte 0xBC1E0000
	.4byte 0xBBC90000
	.4byte 0x3F1B8E00
	.4byte 0x3ED13400
	.4byte 0xBC208000
	.4byte 0xBBDA0000
	.4byte 0x3F19CC00
	.4byte 0x3ED50C00
	.4byte 0xBC228000
	.4byte 0xBBEA0000
	.4byte 0x3F180600
	.4byte 0x3ED8E800
	.4byte 0xBC240000
	.4byte 0xBBF80000
	.4byte 0x3F163C00
	.4byte 0x3EDCC800
	.4byte 0xBC260000
	.4byte 0xBC028000
	.4byte 0x3F146C00
	.4byte 0x3EE0A400
	.4byte 0xBC278000
	.4byte 0xBC088000
	.4byte 0x3F129A00
	.4byte 0x3EE48400
	.4byte 0xBC288000
	.4byte 0xBC0E0000
	.4byte 0x3F10C600
	.4byte 0x3EE86400
	.4byte 0xBC298000
	.4byte 0xBC130000
	.4byte 0x3F0EEE00
	.4byte 0x3EEC4400
	.4byte 0xBC2A8000
	.4byte 0xBC170000
	.4byte 0x3F0D1200
	.4byte 0x3EF02400
	.4byte 0xBC2A8000
	.4byte 0xBC1B0000
	.4byte 0x3F0B3200
	.4byte 0x3EF40400
	.4byte 0xBC2A8000
	.4byte 0xBC1E8000
	.4byte 0x3F095200
	.4byte 0x3EF7E000
	.4byte 0xBC2A0000
	.4byte 0xBC218000
	.4byte 0x3F076E00
	.4byte 0x3EFBBC00
	.4byte 0xBC2A0000
	.4byte 0xBC240000
	.4byte 0x3F058800
	.4byte 0x3EFF9400
	.4byte 0xBC290000
	.4byte 0xBC260000
	.4byte 0x3F03A000
	.4byte 0x3F01B600
	.4byte 0xBC280000
	.4byte 0xBC280000
	.4byte 0x3F01B600
	.4byte 0x3F03A000
	.4byte 0xBC260000
	.4byte 0xBC290000
	.4byte 0x3EFF9400
	.4byte 0x3F058800
	.4byte 0xBC240000
	.4byte 0xBC2A0000
	.4byte 0x3EFBBC00
	.4byte 0x3F076E00
	.4byte 0xBC218000
	.4byte 0xBC2A0000
	.4byte 0x3EF7E000
	.4byte 0x3F095200
	.4byte 0xBC1E8000
	.4byte 0xBC2A8000
	.4byte 0x3EF40400
	.4byte 0x3F0B3200
	.4byte 0xBC1B0000
	.4byte 0xBC2A8000
	.4byte 0x3EF02400
	.4byte 0x3F0D1200
	.4byte 0xBC170000
	.4byte 0xBC2A8000
	.4byte 0x3EEC4400
	.4byte 0x3F0EEE00
	.4byte 0xBC130000
	.4byte 0xBC298000
	.4byte 0x3EE86400
	.4byte 0x3F10C600
	.4byte 0xBC0E0000
	.4byte 0xBC288000
	.4byte 0x3EE48400
	.4byte 0x3F129A00
	.4byte 0xBC088000
	.4byte 0xBC278000
	.4byte 0x3EE0A400
	.4byte 0x3F146C00
	.4byte 0xBC028000
	.4byte 0xBC260000
	.4byte 0x3EDCC800
	.4byte 0x3F163C00
	.4byte 0xBBF80000
	.4byte 0xBC240000
	.4byte 0x3ED8E800
	.4byte 0x3F180600
	.4byte 0xBBEA0000
	.4byte 0xBC228000
	.4byte 0x3ED50C00
	.4byte 0x3F19CC00
	.4byte 0xBBDA0000
	.4byte 0xBC208000
	.4byte 0x3ED13400
	.4byte 0x3F1B8E00
	.4byte 0xBBC90000
	.4byte 0xBC1E0000
	.4byte 0x3ECD5C00
	.4byte 0x3F1D4C00
	.4byte 0xBBB70000
	.4byte 0xBC1B8000
	.4byte 0x3EC98800
	.4byte 0x3F1F0400
	.4byte 0xBBA30000
	.4byte 0xBC190000
	.4byte 0x3EC5B400
	.4byte 0x3F20B600
	.4byte 0xBB8F0000
	.4byte 0xBC170000
	.4byte 0x3EC1E400
	.4byte 0x3F226400
	.4byte 0xBB720000
	.4byte 0xBC140000
	.4byte 0x3EBE1800
	.4byte 0x3F240E00
	.4byte 0xBB420000
	.4byte 0xBC110000
	.4byte 0x3EBA5000
	.4byte 0x3F25B000
	.4byte 0xBB0E0000
	.4byte 0xBC0D8000
	.4byte 0x3EB69000
	.4byte 0x3F274E00
	.4byte 0xBAB00000
	.4byte 0xBC0A8000
	.4byte 0x3EB2D000
	.4byte 0x3F28E400
	.4byte 0xBA000000
	.4byte 0xBC078000
	.4byte 0x3EAF1800
	.4byte 0x3F2A7400
	.4byte 0x39F00000
	.4byte 0xBC048000
	.4byte 0x3EAB6800
	.4byte 0x3F2BFE00
	.4byte 0x3ABC0000
	.4byte 0xBC010000
	.4byte 0x3EA7BC00
	.4byte 0x3F2D8000
	.4byte 0x3B220000
	.4byte 0xBBFA0000
	.4byte 0x3EA41400
	.4byte 0x3F2EFE00
	.4byte 0x3B6A0000
	.4byte 0xBBF30000
	.4byte 0x3EA07400
	.4byte 0x3F307400
	.4byte 0x3B9A0000
	.4byte 0xBBED0000
	.4byte 0x3E9CD800
	.4byte 0x3F31E200
	.4byte 0x3BC20000
	.4byte 0xBBE60000
	.4byte 0x3E994400
	.4byte 0x3F334800
	.4byte 0x3BEC0000
	.4byte 0xBBDE0000
	.4byte 0x3E95BC00
	.4byte 0x3F34A600
	.4byte 0x3C0B8000
	.4byte 0xBBD70000
	.4byte 0x3E923800
	.4byte 0x3F35FE00
	.4byte 0x3C220000
	.4byte 0xBBD10000
	.4byte 0x3E8EBC00
	.4byte 0x3F374C00
	.4byte 0x3C398000
	.4byte 0xBBCA0000
	.4byte 0x3E8B4800
	.4byte 0x3F389400
	.4byte 0x3C520000
	.4byte 0xBBC20000
	.4byte 0x3E87DC00
	.4byte 0x3F39D200
	.4byte 0x3C6C0000
	.4byte 0xBBBB0000
	.4byte 0x3E847800
	.4byte 0x3F3B0800
	.4byte 0x3C838000
	.4byte 0xBBB50000
	.4byte 0x3E812000
	.4byte 0x3F3C3600
	.4byte 0x3C91C000
	.4byte 0xBBAE0000
	.4byte 0x3E7BA000
	.4byte 0x3F3D5A00
	.4byte 0x3CA04000
	.4byte 0xBBA60000
	.4byte 0x3E751000
	.4byte 0x3F3E7600
	.4byte 0x3CAF4000
	.4byte 0xBB9F0000
	.4byte 0x3E6E9800
	.4byte 0x3F3F8800
	.4byte 0x3CBF0000
	.4byte 0xBB990000
	.4byte 0x3E683000
	.4byte 0x3F409000
	.4byte 0x3CCF4000
	.4byte 0xBB920000
	.4byte 0x3E61D800
	.4byte 0x3F419000
	.4byte 0x3CE04000
	.4byte 0xBB8C0000
	.4byte 0x3E5B9800
	.4byte 0x3F428600
	.4byte 0x3CF1C000
	.4byte 0xBB850000
	.4byte 0x3E557000
	.4byte 0x3F437400
	.4byte 0x3D020000
	.4byte 0xBB7E0000
	.4byte 0x3E4F5800
	.4byte 0x3F445600
	.4byte 0x3D0B6000
	.4byte 0xBB720000
	.4byte 0x3E495000
	.4byte 0x3F452E00
	.4byte 0x3D152000
	.4byte 0xBB660000
	.4byte 0x3E436800
	.4byte 0x3F45FC00
	.4byte 0x3D1F4000
	.4byte 0xBB5A0000
	.4byte 0x3E3D9000
	.4byte 0x3F46C000
	.4byte 0x3D29A000
	.4byte 0xBB4E0000
	.4byte 0x3E37D000
	.4byte 0x3F477A00
	.4byte 0x3D344000
	.4byte 0xBB440000
	.4byte 0x3E322800
	.4byte 0x3F482A00
	.4byte 0x3D3F6000
	.4byte 0xBB380000
	.4byte 0x3E2C9000
	.4byte 0x3F48D000
	.4byte 0x3D4AC000
	.4byte 0xBB2E0000
	.4byte 0x3E271800
	.4byte 0x3F496800
	.4byte 0x3D568000
	.4byte 0xBB220000
	.4byte 0x3E21B000
	.4byte 0x3F49F800
	.4byte 0x3D62A000
	.4byte 0xBB180000
	.4byte 0x3E1C6000
	.4byte 0x3F4A7E00
	.4byte 0x3D6F0000
	.4byte 0xBB100000
	.4byte 0x3E172800
	.4byte 0x3F4AF800
	.4byte 0x3D7BE000
	.4byte 0xBB060000
	.4byte 0x3E120800
	.4byte 0x3F4B6600
	.4byte 0x3D848000
	.4byte 0xBAFC0000
	.4byte 0x3E0D0000
	.4byte 0x3F4BCA00
	.4byte 0x3D8B3000
	.4byte 0xBAE80000
	.4byte 0x3E081000
	.4byte 0x3F4C2400
	.4byte 0x3D922000
	.4byte 0xBAD80000
	.4byte 0x3E033800
	.4byte 0x3F4C7200
	.4byte 0x3D993000
	.4byte 0xBAC80000
	.4byte 0x3DFCE000
	.4byte 0x3F4CB400
	.4byte 0x3DA08000
	.4byte 0xBAB80000
	.4byte 0x3DF39000
	.4byte 0x3F4CEC00
	.4byte 0x3DA80000
	.4byte 0xBAA80000
	.4byte 0x3DEA7000
	.4byte 0x3F4D1A00
	.4byte 0x3DAFB000
	.4byte 0xBA980000
	.4byte 0x3DE18000
	.4byte 0x3F4D3C00
	.4byte 0x3DB78000
	.4byte 0xBA880000
	.4byte 0x3DD8B000
	.4byte 0x3F4D5200
	.4byte 0x3DBF8000
	.4byte 0xBA800000
	.4byte 0x3DD01000
	.4byte 0x3F4D5E00
	.4byte 0x3DC7B000

.global lbl_801D7FF0
lbl_801D7FF0:

	# ROM: 0x1D4FF0
	.4byte 0x41424344
	.4byte 0x45464748
	.4byte 0x4B4C4D4E
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x595A9192
	.4byte 0x93949596
	.4byte 0x9798999A
	.4byte 0x9B9C9D9E
	.4byte 0x9FA0A1A2
	.4byte 0xA3A4A5A6
	.4byte 0xA7A8A9AA
	.4byte 0xABACAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB9BABCBD

.global lbl_801D8030
lbl_801D8030:

	# ROM: 0x1D5030
	.4byte 0x0000000D
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000002
	.4byte 0x00000012
	.4byte 0x00000004
	.4byte 0x00000016
	.4byte 0x00000009
	.4byte 0x00000014
	.4byte 0x00000011
	.4byte 0x00000006
	.4byte 0x0000000F
	.4byte 0x0000000B
	.4byte 0x00000017
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000015
	.4byte 0x00000013
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
