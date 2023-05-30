.include "include/macros.s"

.section .ctors, "wa"  # 0x801A9B60 - 0x801A9B80 ; 0x00000020


.global lbl_801A9B60
lbl_801A9B60:

	# ROM: 0x1A6B60
	.4byte lbl_8016BF48
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
