	.include "asm/macros.inc"
	.text

	.global _secure
_secure: ; 0x02000000
	.byte 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0x1A, 0x27
	.byte 0x2E, 0xDA, 0x94, 0xA5, 0xD0, 0x60, 0xF9, 0xD9, 0x23, 0x89, 0x79, 0x35, 0x50, 0xFB, 0x92, 0xDC
	.byte 0x7E, 0xC9, 0xF1, 0x46, 0x0A, 0xB3, 0xC1, 0x53, 0x48, 0xE3, 0x87

	.global _0200002B
_0200002B:
	.byte 0x54, 0xB8, 0x55, 0x9F, 0x53
	.byte 0x13, 0xDF, 0x16, 0x28, 0xCD, 0xCF, 0x4F, 0x1A, 0x20, 0x0A, 0x2B, 0x72, 0xDA, 0xBA, 0x06, 0x3D
	.byte 0x43, 0x32, 0x7F, 0x73, 0xE8, 0xF0, 0xA1, 0xAC, 0xAC, 0xCB, 0xD8, 0xCE, 0xE6, 0xA8, 0x60, 0x31
	.byte 0x6D, 0x01, 0x0F, 0x69, 0x76, 0x79, 0x41, 0xD9, 0x54, 0x6E, 0xA7, 0x23, 0x90, 0x04, 0x99, 0x1D
	.byte 0x9E, 0xF8, 0x19, 0xD1, 0x89, 0x1E, 0xBA, 0xEB, 0x24, 0x28, 0xCA, 0xD6, 0x62, 0xD2, 0xE2, 0xAD
	.byte 0x11, 0x13, 0xA0, 0x78, 0xFA, 0xAD, 0x35, 0xA6, 0x6D, 0xA0, 0x51, 0x9A, 0x1D, 0x95, 0xBA, 0x52
	.byte 0x4B, 0xAE, 0xEC, 0x95, 0x86, 0xF8, 0xF6, 0x8A

	thumb_func_start SVC_WaitByLoop
SVC_WaitByLoop: ; 0x02000088
	swi 3
	bx lr
	thumb_func_end SVC_WaitByLoop
_0200008C:
	.byte 0x45, 0x41, 0x78, 0x28
	.byte 0x94, 0x55, 0x54, 0x8C, 0x07, 0x9D, 0xAB, 0xBE, 0x6D, 0x58, 0x6E, 0xE2, 0x00, 0x97, 0x11, 0x2A
	.byte 0xE3, 0xB0, 0xDB, 0xB6, 0x68, 0xD8, 0x76, 0x7F, 0x9D, 0x71, 0x30, 0x97, 0x60, 0xF9, 0x65, 0x4E
	.byte 0xC0, 0xC3, 0x0D, 0x68, 0xB3, 0x56, 0x6F, 0x6B, 0x07, 0x34, 0xA0, 0x7D, 0x1D, 0x92, 0x25, 0x06
	.byte 0x0B, 0x96, 0x9E, 0x45, 0x18, 0x0B, 0x35, 0xB5, 0x63, 0xB7, 0x2B, 0xBD, 0x44, 0x95, 0x70, 0x85
	.byte 0xFB, 0x1B, 0xC4, 0x39, 0x03, 0xA3, 0xFD, 0xE9, 0x6D, 0xC0, 0xAA, 0x8D, 0x73, 0x60, 0xB9, 0x58
	.byte 0x90, 0x18, 0x0A, 0xB4, 0xCA, 0x78, 0xB7, 0x4F, 0x28, 0xC5

	non_word_aligned_thumb_func_start sub_020000EA
sub_020000EA: ; 0x020000EA
	swi 0xc
	bx lr
	thumb_func_end sub_020000EA
_020000EE:
	.byte 0xF3, 0x7C
	.byte 0x27, 0x2B, 0x3D, 0x72, 0x9B, 0x46, 0x68, 0x44, 0x07, 0x83, 0xF5, 0xD2, 0x51, 0x1A, 0xBB, 0x91
	.byte 0x85, 0xA1, 0x0C, 0xF1, 0x47, 0x86, 0x9D, 0xB5, 0xC0, 0xD4, 0xE0, 0x35, 0x82, 0x7D, 0xCA, 0x98
	.byte 0x99, 0x55, 0xFE, 0x95, 0xC7, 0x61, 0x81, 0xD9, 0x50, 0xC5, 0x6C, 0x53, 0xAE, 0x6A, 0xE3, 0x3E
	.byte 0xA8, 0x9D, 0xB0, 0xC1, 0x73, 0xBA, 0xB2, 0x58, 0x60, 0xE3, 0x20, 0xAB, 0xB1, 0xCC, 0xC0, 0x0C
	.byte 0xF2, 0xE4, 0x83, 0x95, 0x34, 0xC8, 0x13, 0x04, 0x09, 0x3A, 0x26, 0x78, 0x33, 0x53

	non_word_aligned_thumb_func_start sub_0200013E
sub_0200013E: ; 0x0200013E
	swi 9
	bx lr
	thumb_func_end sub_0200013E
_02000142:
	.byte 0x03, 0xE0, 0x34, 0x82, 0xFD, 0x63, 0x9A, 0x56, 0xC6, 0xA6, 0x59, 0x56, 0x3A, 0xB6
	.byte 0x97, 0xA2, 0xD3, 0xE3, 0x1A, 0x12, 0x2E, 0xF2, 0x54, 0xB6, 0x46, 0x0E, 0x34, 0x52, 0x01, 0x32
	.byte 0xE8, 0x1F, 0xDF, 0xA6, 0x58, 0x09, 0x8A, 0xF8, 0x51, 0x08, 0x03, 0xCC, 0xC0, 0xFB, 0x92, 0x7A
	.byte 0xC7, 0x70, 0x59, 0xE6, 0xA8, 0xB8, 0x15, 0xF7, 0x12, 0x78, 0x4F, 0x24, 0x83, 0x2D, 0x53, 0xDC
	.byte 0x5C, 0xFF, 0x35, 0xA1, 0x39, 0x84, 0xCD, 0xC5, 0x7F, 0xA4, 0x36, 0x4F, 0x78, 0x8D, 0xAC, 0x8E
	.byte 0x8B, 0x61, 0xBF, 0x09

	thumb_func_start sub_02000194
sub_02000194: ; 0x02000194
	swi 0x12
	bx lr
	thumb_func_end sub_02000194
_02000198:
	.byte 0x15, 0xFE, 0xD0, 0xD7, 0xB6, 0x2F, 0x3A, 0x9B
	.byte 0x77, 0x51, 0x5E, 0x98, 0x28, 0x29, 0x6C, 0xAA, 0xE7, 0x23, 0x0F, 0x2D, 0xF0, 0xE1, 0xDD, 0x13
	.byte 0x98, 0xF7, 0x3B, 0x74, 0x81, 0x7F, 0x0E, 0x4A, 0xBA, 0xCE, 0x22, 0x77, 0x1A, 0xE5, 0xC3, 0xC6
	.byte 0x3F, 0xA8, 0xDF, 0x1C, 0xC8, 0x51, 0x88, 0x8C, 0x8E, 0xEF, 0xA4, 0xB7, 0xD5, 0x02, 0x3E, 0x78
	.byte 0x1E, 0xED, 0xA0, 0x14, 0x70, 0xC4, 0x2C, 0x48, 0x07, 0x94, 0x5C, 0x6F, 0x42, 0x91, 0x89, 0x4C
	.byte 0x82, 0x27, 0xEC, 0x55, 0xDC, 0x08, 0x00, 0x6A, 0xB0, 0x89, 0x4E, 0x0A, 0x77, 0x3A, 0x09, 0xC7
	.byte 0x09, 0xF3, 0x91, 0x35, 0x90, 0x18, 0x6B, 0x56, 0x99, 0x1D, 0x02, 0x9D, 0x60, 0xC3, 0x9C, 0xC1
	.byte 0x0A, 0x8C, 0xA0, 0x67, 0x2C, 0x12, 0xCB, 0x34, 0xCE, 0x27, 0x66, 0x78

	thumb_func_start sub_0200020C
sub_0200020C: ; 0x0200020C
	swi 0xf
	bx lr
	thumb_func_end sub_0200020C
_02000210:
	.byte 0xFF, 0x77, 0xA8, 0xD1, 0xF2, 0x91, 0xA3, 0x17, 0x3B, 0x91, 0xD0, 0x62, 0x5F, 0xDC, 0xF3, 0x6F
	.byte 0x1F, 0x1C, 0xE3, 0x51, 0x1E, 0x03, 0x60, 0xC4, 0x19, 0xD4, 0xBE, 0x9E, 0xBE, 0x9E, 0x18, 0xF7
	.byte 0x0E, 0xF9, 0x46, 0x69, 0x63, 0xA1, 0x60, 0xBB, 0x39, 0x6D, 0x93, 0x3D, 0x41, 0xDC, 0xD0, 0xAC
	.byte 0x65, 0x51, 0x94, 0xAD, 0xEF, 0x70, 0x1C, 0x0B, 0xCF, 0x2F, 0x86, 0x94, 0xDD, 0x94, 0xD6, 0xA5
	.byte 0x3F, 0xC5, 0x39, 0x9E, 0x9E, 0x62, 0x92, 0x61, 0xDA, 0x0E, 0x03, 0x8D, 0x6B, 0x40, 0x7A, 0x2B
	.byte 0x46, 0x3F, 0x5F, 0x73, 0x3C, 0x82, 0xE0, 0x0F, 0x98, 0xCA, 0x8A, 0xD4, 0xA9, 0xC3, 0x5E, 0xCF
	.byte 0x8B, 0xB3, 0x11, 0x4E

	thumb_func_start sub_02000274
sub_02000274: ; 0x02000274
	swi 0x13
	bx lr
	thumb_func_end sub_02000274
_02000278:
	.byte 0xC9, 0x2F, 0x8A, 0x04, 0x2A, 0x77, 0x9D, 0x01
	.byte 0xBC, 0x69, 0xD8, 0xA2, 0x67, 0x71, 0x01, 0x07, 0x50, 0xE9, 0xFA, 0xBB, 0x3B, 0xA1, 0x4B, 0x59
	.byte 0xDD, 0xF9, 0x03, 0x36, 0xB6, 0xE3, 0x63, 0x5D, 0xA0, 0x21, 0xAA, 0x9C, 0x8C, 0xC4, 0x9D, 0xAB
	.byte 0x1B, 0xB9, 0x52, 0xFB, 0xB2, 0x77, 0x51, 0xB5, 0x5C, 0x5D, 0xE0, 0x25, 0xF3, 0xA6, 0x03, 0x43
	.byte 0x6C, 0xB0, 0x94, 0x39, 0x25, 0xFF, 0xF7, 0x2D, 0xCD, 0x81, 0xBB, 0x21, 0x7F, 0x4E, 0x53, 0x55
	.byte 0x61, 0x38, 0x44, 0x3C, 0x78, 0x25, 0x04, 0x48, 0x05, 0x5D, 0x3C, 0x86, 0x10, 0x61, 0x3E, 0xE0
	.byte 0xC8, 0x9B, 0x17, 0x47, 0x11, 0xF4, 0x2F, 0x10, 0xD9, 0x8A, 0xA1, 0x68, 0xB6, 0x9C, 0x0A, 0x56
	.byte 0x8B, 0x99, 0x35, 0x18, 0xCA, 0x8A

	non_word_aligned_thumb_func_start sub_020002E6
sub_020002E6: ; 0x020002E6
	swi 6
	bx lr
	thumb_func_end sub_020002E6
_020002EA:
	.byte 0x91, 0x73, 0xCC, 0xA6, 0xEB, 0x9B
	.byte 0x41, 0x0D, 0xE6, 0xBF, 0x8F, 0x3D, 0x6F, 0x6F, 0x2B, 0x01, 0x27, 0x05, 0x49, 0xEF, 0xA8, 0xE3
	.byte 0x31, 0x63, 0x10, 0x93, 0x36, 0x36, 0xD8, 0x43, 0x26, 0xA3, 0x7F, 0xF5, 0x4C, 0xD3, 0x0D, 0x5B
	.byte 0x57, 0x29, 0xD3, 0xD5, 0x9C, 0x7D, 0x81, 0x52, 0x4A, 0x78, 0xEE, 0x73, 0xB4, 0x9A, 0x5B, 0xB2
	.byte 0xD7, 0x67, 0xD2, 0x95

	thumb_func_start sub_02000324
sub_02000324: ; 0x02000324
	swi 0x14
	bx lr
	thumb_func_end sub_02000324
_02000328:
	.byte 0x9D, 0x55, 0x4B, 0xDA, 0x47, 0x8D, 0x2D, 0xA7
	.byte 0x88, 0xD3, 0x48, 0xB6, 0xCD, 0xD6, 0x4A, 0x34, 0x6C, 0xA3, 0x82, 0x7E, 0xE6, 0xF2, 0xBD, 0xA1
	.byte 0xC4, 0xFB, 0xE4, 0x58, 0xDB, 0xD0, 0xF8, 0x04, 0xEA, 0x80, 0x71, 0xF3, 0x06, 0x52, 0x64, 0x91
	.byte 0x7A, 0x2A, 0x22, 0xBD, 0x5C, 0xD7, 0x21, 0x99, 0x12, 0x52, 0x80, 0x13, 0x1C, 0xF7, 0x47, 0x25
	.byte 0x1F, 0x1F, 0x3B, 0xB9, 0xD1, 0xF1, 0x06, 0x48, 0x6D, 0x22, 0x7D, 0x29, 0x4C, 0xCB, 0xDC, 0x8C
	.byte 0x23, 0x59, 0x28, 0x85, 0xC6, 0xF9, 0x3F, 0x74, 0x6C, 0x4B, 0x0E, 0xE8, 0xA9, 0xFA, 0x04, 0xBF
	.byte 0x65, 0x4F, 0x88, 0x82, 0xD7, 0xD3

	non_word_aligned_thumb_func_start sub_02000386
sub_02000386: ; 0x02000386
	swi 0xd
	bx lr
	thumb_func_end sub_02000386
_0200038A:
	.byte 0xCC, 0x3C, 0xBF, 0x89, 0xBA, 0xF8
	.byte 0x88, 0x14, 0xB3, 0x04, 0xD7, 0xB4, 0x77, 0xAB, 0xC5, 0xF6, 0x9E, 0x90, 0x48, 0xDC, 0x0B, 0xF6
	.byte 0x9E, 0xB8, 0x75, 0x4B, 0xE1, 0x6D, 0xAE, 0xD3, 0xD4, 0x44, 0x74, 0x54, 0x85, 0xD7, 0x8C, 0xB8
	.byte 0x66, 0x96, 0xB4, 0x31, 0x0A, 0xCD, 0x6A, 0x4C, 0x19, 0x24, 0x2D, 0x68, 0x16, 0xBA, 0x26, 0xFA
	.byte 0xE6, 0x75, 0x30, 0x0B, 0x3A, 0x40, 0xD0, 0xCE, 0x69, 0x48, 0xB2, 0x0F, 0xEF, 0xA2, 0x6C, 0xAF
	.byte 0x12, 0x56, 0xF7, 0xB1, 0xF9, 0xAE, 0x3F, 0xDD, 0x7C, 0xDC, 0xC0, 0x10, 0x49, 0xFC, 0x1D, 0x66
	.byte 0x57, 0x03, 0x5A, 0x6A, 0x45, 0xBD, 0xEF, 0xDB, 0xAC, 0x2F, 0x80, 0x76, 0x78, 0xAC, 0x18, 0x7B

	thumb_func_start sub_020003F0
sub_020003F0: ; 0x020003F0
	swi 0xe
	bx lr
	thumb_func_end sub_020003F0
_020003F4:
	.byte 0x76, 0x85, 0xC2, 0x04, 0x82, 0x90, 0x91, 0xCA, 0xDE, 0xB1, 0x80, 0x66
	.byte 0x31, 0xC0, 0x57, 0x90, 0xBF, 0xEC, 0x17, 0xC3, 0xDF, 0x9F, 0xC2, 0xC4, 0x6D, 0x69, 0xC6, 0x3D
	.byte 0xE8, 0x92, 0xA3, 0xD1, 0x52, 0xC8, 0x7B, 0x22, 0x43, 0xBC, 0x57, 0xE4, 0xE7, 0xD5, 0x76, 0xDD
	.byte 0x85, 0x50, 0xE5, 0x3E, 0xFF, 0x59, 0xDE, 0xF5, 0x7D, 0xFB, 0xB4, 0x3E, 0xC0, 0x6D, 0x92, 0x9E
	.byte 0xBE, 0xF4, 0x45, 0xA7, 0x7D, 0xCB, 0x80, 0x7C, 0xA8, 0x94, 0xBA, 0x59, 0xA9, 0x62, 0x17, 0xC6
	.byte 0x6A, 0xE5, 0xA9, 0xA0, 0xA8, 0x66, 0x8A, 0x14, 0x31, 0xD2, 0x22, 0x48, 0xD7, 0x13, 0x91, 0x57
	.byte 0xE0, 0x9F, 0x3C, 0xA8, 0xB5, 0xBF, 0xE9, 0x04, 0xA4, 0x3C, 0x22, 0xDB, 0x41, 0xE8, 0xD0, 0x49
	.byte 0x16, 0x3A, 0x24, 0x0D, 0x14, 0x41, 0x76, 0x42, 0x3A, 0xE8, 0x5B, 0xF6, 0x75, 0x91, 0xB4, 0xAA
	.byte 0x00, 0x22

	non_word_aligned_thumb_func_start sub_02000472
sub_02000472: ; 0x02000472
	swi 4
	bx lr
	thumb_func_end sub_02000472
_02000476:
	.byte 0x9C, 0xB3, 0x8E, 0x7B, 0xD3, 0xE6, 0xCD, 0x2E, 0x74, 0xF4
	.byte 0xEF, 0x05, 0x01, 0x9A, 0xC0, 0x73, 0x8B, 0xB3, 0xCE, 0x7D, 0xBF, 0xA6, 0xDE, 0x90, 0x41, 0xB2
	.byte 0x2D, 0x2B, 0xEF, 0x39, 0xD6, 0xEA, 0x97, 0xBB, 0xEF, 0xE8, 0xDC, 0x8B, 0x0A, 0x89, 0xF1, 0x0F
	.byte 0xFF, 0xBB, 0x64, 0x02, 0xC0, 0x4A, 0xC2, 0x16, 0x11, 0x48, 0x32, 0x28, 0x86, 0xA5, 0xD1, 0xC7
	.byte 0x5B, 0x4E, 0x7F, 0x89, 0x3B, 0x95, 0xEC, 0x6F, 0x9A, 0x8B, 0xDF, 0xAE, 0x27, 0x0B, 0xFE, 0xFB
	.byte 0x6D, 0x25, 0xFD, 0x5E, 0x41, 0x7A, 0xE9, 0x78, 0x20, 0x15, 0x7E, 0x51, 0x7A, 0x8E, 0x18, 0x89
	.byte 0xFE, 0x94, 0x90, 0x65, 0xE9, 0x8A, 0xB6, 0xEE, 0x09, 0xDF

	non_word_aligned_thumb_func_start sub_020004DA
sub_020004DA: ; 0x020004DA
	add r0, r1, #0
	bx lr
	thumb_func_end sub_020004DA
_020004DE:
	.byte 0x16, 0x7E
	.byte 0x3A, 0x07, 0x59, 0xE1, 0xE0, 0x0D, 0x24, 0x6A, 0x4E, 0x9A, 0x84, 0x34, 0x25, 0x5E, 0xCA, 0x24
	.byte 0x8E, 0xB6, 0x05, 0x9F, 0x0E, 0x5B, 0xAB, 0x4C, 0x96, 0x3F, 0x19, 0xAD, 0x0C, 0x6F, 0x2D, 0xA2
	.byte 0xFF, 0xA1, 0x00, 0x13, 0x2A, 0xAC, 0x13, 0xF2, 0x26, 0x87, 0x30, 0x1D, 0xD9, 0x9C, 0xC3, 0x8D
	.byte 0x64, 0xD3, 0x33, 0xB3, 0xE2, 0xF8, 0xDB, 0xA6, 0x46, 0x45, 0x3A, 0xF8, 0x20, 0xDA, 0x5F, 0x94
	.byte 0x6D, 0xFE, 0x8C, 0x0F, 0x07, 0xB4, 0xCC, 0x1E, 0xC8, 0xB8, 0x7A, 0x90, 0xAD, 0xAC, 0xBE, 0x54
	.byte 0x69, 0x85, 0x72, 0x28, 0x71, 0x23, 0x40, 0xCB, 0xF7, 0x85, 0xBB, 0xD2, 0x83, 0x85, 0x0A, 0x51
	.byte 0xCF, 0xB8, 0xDC, 0x49, 0xFF, 0xE6, 0x0E, 0xEB, 0xAB, 0x81, 0xE9, 0x97, 0x6A, 0xB2, 0xB3, 0x3D
	.byte 0x08, 0x67, 0x82, 0x1E, 0x2E, 0xE8, 0x81, 0x46, 0x52, 0x1E, 0xBB, 0xFF, 0xF1, 0xB8, 0x28, 0xEB
	.byte 0x47, 0xB4, 0x63, 0xF5, 0xF7, 0x00

	non_word_aligned_thumb_func_start SVC_SoftReset
SVC_SoftReset: ; 0x02000566
	swi 0
	bx lr
	thumb_func_end SVC_SoftReset

	.byte 0x4A, 0xC6, 0x17, 0x00, 0x26, 0x22
	.byte 0xF8, 0xE9, 0x1E, 0x6B, 0x38, 0xFF, 0x0B, 0xB5, 0x8F, 0x9B, 0xC7, 0x68, 0xC2, 0xC5, 0x6B, 0x3E
	.byte 0x98, 0x43, 0x36, 0xBA, 0x85, 0x85, 0x1D, 0x60, 0x61, 0x24, 0x34, 0xFD, 0x70, 0xCB, 0x0D, 0xA8
	.byte 0xFF, 0xE3, 0x60, 0xDA, 0xF9, 0x66, 0xA4, 0x22, 0xA1, 0x5A, 0x7E, 0xFA, 0x4B, 0x1D, 0x44, 0x4E
	.byte 0xEC, 0xFC, 0x88, 0x8A, 0x07, 0x5F, 0x46, 0x6B, 0x72, 0x80, 0x64, 0x72, 0x50, 0x38, 0x61, 0xDC
	.byte 0x07, 0x93, 0xCE, 0x8C, 0x78, 0x4D, 0x9A, 0xE4, 0xD7, 0x60, 0xE1, 0x01, 0xC1, 0x58, 0x20, 0x3B
	.byte 0x0C, 0xCB, 0x0A, 0x6F, 0xF4, 0x36, 0x4A, 0x5C, 0x89, 0x73, 0x8F, 0x0E, 0x14, 0xC6, 0xB9, 0x90
	.byte 0xA1, 0x1C, 0x50, 0xA2, 0x5F, 0x5D, 0x51, 0xED

	thumb_func_start sub_020005D8
sub_020005D8: ; 0x020005D8
	swi 0x11
	bx lr
	thumb_func_end sub_020005D8
_020005DC:
	.byte 0x8C, 0x8F, 0x0B, 0x78
	.byte 0x9E, 0xA4, 0x8F, 0x47, 0x13, 0xC2, 0x0C, 0x0D, 0x79, 0x7A, 0x6B, 0xD3, 0xB8, 0xAC, 0xA9, 0x80
	.byte 0x1C, 0x7B, 0x67, 0x6E, 0x66, 0xC9, 0xD2, 0xF6, 0x5A, 0x9A, 0x13, 0x6D, 0xEA, 0xAB, 0x38, 0xC4
	.byte 0x7E, 0xD7, 0x74, 0x97, 0x9E, 0xF7, 0xBE, 0xF0, 0x34, 0x07, 0x70, 0x1E, 0x07, 0x88, 0x7F, 0x86
	.byte 0x67, 0x12, 0x01, 0x6C, 0x87, 0x87, 0xDC, 0x5B, 0x83, 0xA6, 0x8B, 0x1A, 0x99, 0xE0, 0x6A, 0x0B
	.byte 0x26, 0x8A, 0x99, 0xD6, 0xBD, 0x5B, 0x4C, 0x20, 0xAC, 0x33, 0xD7, 0x25, 0xF4, 0x78, 0xFB, 0x5D
	.byte 0xEF, 0x7D, 0xD4, 0x86, 0x42, 0x93, 0xF1, 0x6D, 0x4C, 0x22, 0x86, 0x8A, 0x1F, 0xA3, 0xEB, 0xBF
	.byte 0xCC, 0xB6, 0xE5, 0x56, 0x0D, 0xE7, 0x0A, 0x7F, 0xAE, 0x59

	non_word_aligned_thumb_func_start sub_0200064A
sub_0200064A: ; 0x0200064A
	swi 0x15
	bx lr
	thumb_func_end sub_0200064A
_0200064E:
	.byte 0x0D, 0xD4
	.byte 0xB1, 0xF0, 0xCA, 0xB3, 0x1E, 0x6D, 0x7C, 0x73, 0xF9, 0x3C, 0x7A, 0xF0, 0xBF, 0xA5, 0xE4, 0x9D
	.byte 0x30, 0x9C, 0x1E, 0xD1, 0x13, 0xEA, 0x19, 0x5C, 0xCC, 0xBC, 0x81, 0x49, 0x9B, 0x1D, 0x24, 0xA9
	.byte 0xC3, 0xB0, 0x4E, 0x4A, 0x1A, 0x7D, 0x26, 0xFA, 0x48, 0xA3, 0x9B, 0xF3, 0x46, 0x5F, 0xB6, 0x57
	.byte 0x1B, 0x06, 0x3F, 0x3F, 0x0C, 0x78, 0xC4, 0xFC, 0x6B, 0x57, 0x14, 0xA0, 0xAD, 0xA5, 0x7F, 0x01
	.byte 0x73, 0xC1, 0xE2, 0x63, 0xE0, 0xE8, 0x16, 0x5F, 0x29, 0x0B, 0x39, 0x74, 0xF4, 0x61, 0x7B, 0xEA
	.byte 0x1E, 0xF5, 0x14, 0x1E, 0x16, 0x5B

	non_word_aligned_thumb_func_start sub_020006A6
sub_020006A6: ; 0x020006A6
	swi 0x10
	bx lr
	thumb_func_end sub_020006A6
_020006AA:
	.byte 0xC0, 0x52, 0x74, 0x4C, 0xE2, 0x91
	.byte 0xF3, 0x5A, 0x6A, 0x15, 0xAF, 0x51, 0x6F, 0x3C, 0x92, 0x7E, 0x19, 0x73, 0x4D, 0x64, 0xC6, 0x3D
	.byte 0x7F, 0xC7, 0x84, 0x2F, 0xE7, 0x95, 0x1E, 0x8A, 0x03, 0xCC, 0x12, 0x06, 0x0E, 0xD5, 0xC2, 0x5D
	.byte 0xA7, 0xB5, 0x0C, 0xD5, 0x57, 0xB6, 0xE5, 0xDF, 0x79, 0xA3, 0xC1, 0x4E, 0x25, 0x44, 0x0C, 0xA0
	.byte 0x72, 0x84, 0xE1, 0x67, 0xC0, 0x9E, 0xA3, 0x24, 0x2F, 0xBB, 0x41, 0xAF, 0x3D, 0xF8, 0xCF, 0xAE
	.byte 0x8E, 0xE0, 0x65, 0x07, 0x97, 0xDC, 0x6E, 0x48, 0x6A, 0x88, 0x23, 0x44, 0x7A, 0xAC, 0xED, 0x99
	.byte 0x0C, 0x29, 0x8F, 0x4C, 0x77, 0x00, 0x90, 0xF8, 0x18, 0x88, 0xF4, 0x46, 0x67, 0x82, 0x27, 0x46
	.byte 0xF8, 0x82, 0xE0, 0x75, 0x00, 0x22

	non_word_aligned_thumb_func_start sub_02000716
sub_02000716: ; 0x02000716
	swi 5
	bx lr
	thumb_func_end sub_02000716
_0200071A:
	.byte 0xB7, 0x51, 0x85, 0x90, 0x5E, 0xBC
	.byte 0x39, 0x07, 0x89, 0x33, 0x48, 0xC9, 0x43, 0xB0, 0x0D, 0xFD, 0x97, 0xD2, 0x69, 0x5C, 0x0F, 0xAC
	.byte 0x92, 0x92, 0x3F, 0x30, 0xA2, 0x3C, 0x9A, 0x36, 0x33, 0x92, 0xD7, 0xF6, 0x19, 0x98, 0x6C, 0x0B
	.byte 0x19, 0x01, 0x31, 0x1C, 0x25, 0x26, 0x87, 0x8D, 0x68, 0x1E, 0x0F, 0x68, 0x3C, 0xD3, 0x73, 0x1F
	.byte 0x77, 0xE3, 0xC5, 0xD6, 0x43, 0x98, 0xE7, 0xAC, 0xC0, 0xFB, 0xAD, 0x92, 0xC1, 0x24, 0xC3, 0x18
	.byte 0x7D, 0xF1, 0x08, 0x78, 0xAD, 0x42, 0xE0, 0x5B, 0xDE, 0x11, 0xCE, 0x9E, 0x37, 0xEA, 0x02, 0x48
	.byte 0xBE, 0xBA, 0x9C, 0xDD, 0xF4, 0xF3, 0xE1, 0x16, 0x18, 0xF5, 0x4A, 0x7A, 0x96, 0xB4, 0x33, 0x5C
	.byte 0xCC, 0x39, 0xAF, 0x99, 0x91, 0x1D, 0x94, 0xA4, 0x91, 0x7A, 0x32, 0xF8, 0x6A, 0x10

	non_word_aligned_thumb_func_start SVC_CpuSet
SVC_CpuSet: ; 0x0200078E
	swi 0xb
	bx lr
	thumb_func_end SVC_CpuSet
_02000792:
	.byte 0x4B, 0xB8, 0x8C, 0x61, 0xEF, 0xBC, 0x38, 0x56, 0xED, 0xA3, 0x4A, 0x82, 0x63, 0xDE
	.byte 0x2E, 0xE5, 0x89, 0xA4, 0x26, 0x99, 0x41, 0x4B, 0x48, 0xA0, 0x4B, 0x4D, 0x09, 0xE0, 0x15, 0x24
	.byte 0xDC, 0x2A, 0x32, 0x0E, 0x02, 0x67, 0xF9, 0xAF, 0xA5, 0xF3, 0xAC, 0x83, 0x01, 0x82, 0x23, 0x4F
	.byte 0x26, 0xD0, 0x31, 0x84, 0xA5, 0x92, 0xCD, 0xF0, 0x0E, 0x43, 0xF8, 0x21, 0x03, 0x3B, 0xB5, 0x40
	.byte 0x61, 0x6F, 0x6A, 0x6B, 0x25, 0x51, 0x1F, 0xDE, 0xFB, 0x04, 0x8B, 0x3E, 0x62, 0x53, 0xB1, 0xE5
	.byte 0xAF, 0xBF, 0xA0, 0x34, 0xC5, 0xD4, 0xDE, 0x28, 0x1E, 0xEF, 0x93, 0xD2, 0x85, 0x83, 0x49, 0x41
	.byte 0xA6, 0x20, 0x03, 0x5E, 0xAA, 0xB6, 0x53, 0x4A, 0xE1, 0x86, 0xDB, 0x3A, 0xF3, 0xC5, 0x00, 0x00