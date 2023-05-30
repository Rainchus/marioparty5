.include "include/macros.s"

.section .dtors, "wa"  # 0x801A9B80 - 0x801A9BA0 ; 0x00000020


.global lbl_801A9B80
lbl_801A9B80:

	# ROM: 0x1A6B80
	.4byte func_8016B244
	.4byte lbl_8016BF14
	.4byte func_8016B244
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
