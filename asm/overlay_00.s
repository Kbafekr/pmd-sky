	.include "asm/macros.inc"
	.include "overlay_00.inc"
	.include "global.inc"

	.text

	arm_func_start ov00_022BCA80
ov00_022BCA80: @ 0x022BCA80
	push {r4, r5, r6, lr}
	ldr r1, _022BCB9C @ =0x023187A0
	mov r5, r0
	ldr r0, [r1, #8]
	cmp r0, #0
	addgt r0, r0, #1
	strgt r0, [r1, #8]
	movgt r0, #0
	popgt {r4, r5, r6, pc}
	bl FUN_0207AFF0
	mov r0, #0x720
	mov r1, #8
	bl FUN_02001170
	mov r6, r0
	add r0, r6, #0x1f
	bic r0, r0, #0x1f
	bl ov00_022DB054
	mov r4, r0
	mov r0, r6
	bl FUN_02001188
	mov r0, #0x40000
	mov r1, #8
	bl FUN_02001170
	ldr r3, _022BCB9C @ =0x023187A0
	add r1, r0, #0x1f
	str r0, [r3, #0x10]
	bic r1, r1, #0x1f
	str r1, [r3, #0x20]
	mov r2, #0
	str r2, [r1]
	ldr ip, [r3, #0x20]
	ldr r1, [r3, #0x10]
	ldr r0, _022BCBA0 @ =0x0003FFE0
	sub r1, ip, r1
	sub r0, r0, r1
	lsr r0, r0, #5
	str r0, [ip, #4]
	ldr r1, [r3, #0x20]
	sub ip, r2, #1
	str ip, [r1, #8]
	ldr lr, [r3, #0x20]
	ldr r0, _022BCBA4 @ =ov00_022BDE30
	ldr ip, [lr, #4]
	ldr r1, _022BCBA8 @ =ov00_022BDF1C
	add ip, lr, ip, lsl #5
	add ip, ip, #0x20
	str ip, [r3, #0x18]
	str r2, [r3, #0x14]
	bl ov00_022E03DC
	ldr r0, _022BCB9C @ =0x023187A0
	cmp r4, #3
	str r5, [r0, #0xc]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	addls pc, pc, r4, lsl #2
	b _022BCB94
_022BCB64: @ jump table
	b _022BCB74 @ case 0
	b _022BCB7C @ case 1
	b _022BCB84 @ case 2
	b _022BCB8C @ case 3
_022BCB74:
	mov r0, #0
	pop {r4, r5, r6, pc}
_022BCB7C:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022BCB84:
	mov r0, #2
	pop {r4, r5, r6, pc}
_022BCB8C:
	mov r0, #3
	pop {r4, r5, r6, pc}
_022BCB94:
	mov r0, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BCB9C: .4byte 0x023187A0
_022BCBA0: .4byte 0x0003FFE0
_022BCBA4: .4byte ov00_022BDE30
_022BCBA8: .4byte ov00_022BDF1C
	arm_func_end ov00_022BCA80

	arm_func_start ov00_022BCBAC
ov00_022BCBAC: @ 0x022BCBAC
	push {r3, lr}
	cmp r0, #0
	beq _022BCBF0
	ldr r0, _022BCC2C @ =0x023187A0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022BCBE0
	bl FUN_02001188
	ldr r0, _022BCC2C @ =0x023187A0
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x20]
	str r1, [r0, #0x18]
_022BCBE0:
	ldr r0, _022BCC2C @ =0x023187A0
	mov r1, #0
	str r1, [r0, #8]
	pop {r3, pc}
_022BCBF0:
	ldr r0, _022BCC2C @ =0x023187A0
	ldr r1, [r0, #8]
	cmp r1, #0
	pople {r3, pc}
	subs r1, r1, #1
	str r1, [r0, #8]
	popne {r3, pc}
	ldr r0, [r0, #0x10]
	bl FUN_02001188
	ldr r0, _022BCC2C @ =0x023187A0
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x20]
	str r1, [r0, #0x18]
	pop {r3, pc}
	.align 2, 0
_022BCC2C: .4byte 0x023187A0
	arm_func_end ov00_022BCBAC

	arm_func_start ov00_022BCC30
ov00_022BCC30: @ 0x022BCC30
	push {r3, lr}
	cmp r0, #0
	bne _022BCC64
	ldr r0, _022BCC88 @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DB7BC
	cmp r0, #0
	beq _022BCC64
	ldr r0, _022BCC88 @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DBC64
	mov r0, #1
	pop {r3, pc}
_022BCC64:
	ldr r0, _022BCC88 @ =0x023187A0
	ldr r1, _022BCC8C @ =0x59465945
	ldr r0, [r0, #0xc]
	bl ov00_022DB5B8
	ldr r0, _022BCC88 @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DBC64
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022BCC88: .4byte 0x023187A0
_022BCC8C: .4byte 0x59465945
	arm_func_end ov00_022BCC30

	arm_func_start ov00_022BCC90
ov00_022BCC90: @ 0x022BCC90
	push {r3, lr}
	ldr r0, _022BCCA8 @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DB8F0
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022BCCA8: .4byte 0x023187A0
	arm_func_end ov00_022BCC90
_022BCCAC:
	.byte 0x08, 0x40, 0x2D, 0xE9
	.byte 0x0C, 0x00, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0xD0, 0x7A, 0x00, 0xEB, 0xFF, 0x00, 0x00, 0xE2
	.byte 0x08, 0x80, 0xBD, 0xE8, 0xA0, 0x87, 0x31, 0x02

	arm_func_start ov00_022BCCC8
ov00_022BCCC8: @ 0x022BCCC8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	add r0, sp, #0
	bl ov00_022BCD4C
	ldr r0, _022BCCF0 @ =0x023187A0
	add r1, sp, #0
	ldr r0, [r0, #0xc]
	bl ov00_022DB98C
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_022BCCF0: .4byte 0x023187A0
	arm_func_end ov00_022BCCC8

	arm_func_start ov00_022BCCF4
ov00_022BCCF4: @ 0x022BCCF4
	push {r3, lr}
	ldr r0, _022BCD0C @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DB830
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022BCD0C: .4byte 0x023187A0
	arm_func_end ov00_022BCCF4

	arm_func_start ov00_022BCD10
ov00_022BCD10: @ 0x022BCD10
	ldr r1, _022BCD24 @ =0x023187A0
	ldr ip, _022BCD28 @ =FUN_020032D4
	mov r2, #0x40
	ldr r1, [r1, #0xc]
	bx ip
	.align 2, 0
_022BCD24: .4byte 0x023187A0
_022BCD28: .4byte FUN_020032D4
	arm_func_end ov00_022BCD10
_022BCD2C:
	.byte 0x10, 0x20, 0x9F, 0xE5
	.byte 0x10, 0xC0, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x0C, 0x00, 0x92, 0xE5, 0x40, 0x20, 0xA0, 0xE3
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0xD4, 0x32, 0x00, 0x02

	arm_func_start ov00_022BCD4C
ov00_022BCD4C: @ 0x022BCD4C
	push {r4, lr}
	ldr r1, _022BCDA0 @ =0x023187A0
	mov r4, r0
	ldr r0, [r1, #0xc]
	bl ov00_022DB800
	tst r0, #0xff
	bne _022BCD7C
	ldr r0, _022BCDA0 @ =0x023187A0
	mov r1, r4
	ldr r0, [r0, #0xc]
	bl ov00_022DBA58
	pop {r4, pc}
_022BCD7C:
	ldr r0, _022BCDA0 @ =0x023187A0
	ldr r0, [r0, #0xc]
	bl ov00_022DB9EC
	mov r3, r0
	mov r2, r1
	mov r0, r4
	mov r1, r3
	bl ov00_022DBA1C
	pop {r4, pc}
	.align 2, 0
_022BCDA0: .4byte 0x023187A0
	arm_func_end ov00_022BCD4C
_022BCDA4:
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x08, 0xC0, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0xEC, 0xB9, 0x2D, 0x02, 0xF8, 0x4F, 0x2D, 0xE9
	.byte 0x10, 0xD0, 0x4D, 0xE2, 0x00, 0xA0, 0xB0, 0xE1, 0x01, 0x90, 0xA0, 0xE1, 0x00, 0x20, 0x8D, 0xE5
	.byte 0x04, 0x00, 0xA0, 0x03, 0x4B, 0x00, 0x00, 0x0A, 0x6B, 0x7A, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x04, 0x00, 0xA0, 0x03, 0x47, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x8D, 0xE2, 0xD6, 0xFF, 0xFF, 0xEB
	.byte 0x04, 0x10, 0x8D, 0xE2, 0x0A, 0x00, 0xA0, 0xE1, 0x3E, 0x7B, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x01, 0x00, 0xA0, 0x13, 0x3F, 0x00, 0x00, 0x1A, 0x00, 0x01, 0x9F, 0xE5, 0x0A, 0x10, 0xA0, 0xE1
	.byte 0x0C, 0x00, 0x90, 0xE5, 0xDC, 0x7A, 0x00, 0xEB, 0x00, 0x50, 0xA0, 0xE3, 0x00, 0x70, 0xA0, 0xE1
	.byte 0x01, 0x60, 0x45, 0xE2, 0x00, 0xB0, 0xE0, 0xE3, 0x20, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0xA0, 0xE3
	.byte 0x95, 0x00, 0x08, 0xE0, 0xD4, 0x00, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0xE0, 0x00, 0x80, 0xE2
	.byte 0x08, 0x00, 0x80, 0xE0, 0x50, 0x7A, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x14, 0x00, 0x00, 0x0A
	.byte 0xB8, 0x00, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0xE0, 0x10, 0x80, 0xE2, 0x08, 0x10, 0x81, 0xE0
	.byte 0xC9, 0x7A, 0x00, 0xEB, 0xA4, 0x10, 0x9F, 0xE5, 0x00, 0x40, 0xA0, 0xE1, 0x0C, 0x10, 0x91, 0xE5
	.byte 0xE0, 0x00, 0x81, 0xE2, 0x08, 0x10, 0x80, 0xE0, 0x0A, 0x00, 0xA0, 0xE1, 0x1D, 0x7B, 0x00, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x54, 0xE3, 0x00, 0x00, 0x57, 0xC3
	.byte 0x05, 0x00, 0x00, 0xDA, 0x07, 0x00, 0x54, 0xE1, 0x03, 0x00, 0x00, 0x1A, 0x02, 0x00, 0xA0, 0xE3
	.byte 0x18, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x56, 0xE1, 0x05, 0x60, 0xA0, 0x01, 0x01, 0x50, 0x85, 0xE2
	.byte 0x10, 0x00, 0x55, 0xE3, 0xDC, 0xFF, 0xFF, 0xBA, 0x00, 0x00, 0x56, 0xE3, 0x10, 0x00, 0x00, 0xBA
	.byte 0x00, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x59, 0xE3
	.byte 0x04, 0x00, 0xA0, 0x03, 0x0B, 0x00, 0x00, 0x0A, 0x06, 0x08, 0xA0, 0xE1, 0x0A, 0x10, 0xA0, 0xE1
	.byte 0x09, 0x20, 0xA0, 0xE1, 0x20, 0x08, 0xA0, 0xE1, 0x1F, 0x00, 0x00, 0xEB, 0x06, 0x08, 0xA0, 0xE1
	.byte 0x20, 0x08, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE3, 0xE9, 0x00, 0x00, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x00, 0xEA, 0x03, 0x00, 0xA0, 0xE3, 0x10, 0xD0, 0x8D, 0xE2, 0xF8, 0x8F, 0xBD, 0xE8
	.byte 0xA0, 0x87, 0x31, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x00, 0x40, 0xA0, 0xE1, 0x10, 0x00, 0x54, 0xE3
	.byte 0x01, 0xE0, 0xA0, 0xE1, 0x02, 0xC0, 0xA0, 0xE1, 0x00, 0x00, 0xA0, 0x23, 0x10, 0x80, 0xBD, 0x28
	.byte 0x30, 0x10, 0x9F, 0xE5, 0x0C, 0x00, 0xA0, 0xE3, 0x0C, 0x30, 0x91, 0xE5, 0x94, 0x30, 0x20, 0xE0
	.byte 0xE0, 0x00, 0x80, 0xE2, 0x07, 0x00, 0x90, 0xE8, 0x07, 0x00, 0x8E, 0xE8, 0x40, 0x00, 0x83, 0xE2
	.byte 0x0A, 0x20, 0xA0, 0xE3, 0x94, 0x02, 0x21, 0xE0, 0x0C, 0x00, 0xA0, 0xE1, 0xDC, 0x18, 0xF5, 0xEB
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x10, 0x80, 0xBD, 0xE8, 0xA0, 0x87, 0x31, 0x02, 0x10, 0x40, 0x2D, 0xE9
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x10, 0x00, 0x54, 0xE3, 0x02, 0xE0, 0xA0, 0xE1, 0x00, 0x00, 0xA0, 0x23
	.byte 0x10, 0x80, 0xBD, 0x28, 0x00, 0x00, 0x5E, 0xE3, 0x00, 0x00, 0x51, 0x13, 0x00, 0x00, 0xA0, 0x03
	.byte 0x10, 0x80, 0xBD, 0x08, 0x30, 0x00, 0x9F, 0xE5, 0x0C, 0x30, 0xA0, 0xE3, 0x0C, 0xC0, 0x90, 0xE5
	.byte 0x07, 0x00, 0x91, 0xE8, 0x94, 0xC3, 0x23, 0xE0, 0xE0, 0x30, 0x83, 0xE2, 0x07, 0x00, 0x83, 0xE8
	.byte 0x40, 0x00, 0x8C, 0xE2, 0x0A, 0x20, 0xA0, 0xE3, 0x94, 0x02, 0x20, 0xE0, 0x0E, 0x10, 0xA0, 0xE1
	.byte 0xC3, 0x18, 0xF5, 0xEB, 0x01, 0x00, 0xA0, 0xE3, 0x10, 0x80, 0xBD, 0xE8, 0xA0, 0x87, 0x31, 0x02
	.byte 0x38, 0x40, 0x2D, 0xE9, 0x00, 0x50, 0xA0, 0xE1, 0x10, 0x00, 0x55, 0xE3, 0x01, 0x40, 0xA0, 0xE1
	.byte 0x00, 0x00, 0xA0, 0x23, 0x38, 0x80, 0xBD, 0x28, 0x00, 0x00, 0x54, 0xE3, 0x02, 0x00, 0x00, 0x0A
	.byte 0x2A, 0x00, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x01, 0x00, 0x00, 0x1A, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x38, 0x80, 0xBD, 0xE8, 0x1C, 0x00, 0x9F, 0xE5, 0x0A, 0x20, 0xA0, 0xE3, 0x0C, 0x00, 0x90, 0xE5
	.byte 0x04, 0x10, 0xA0, 0xE1, 0x40, 0x00, 0x80, 0xE2, 0x95, 0x02, 0x20, 0xE0, 0xAC, 0x18, 0xF5, 0xEB
	.byte 0x01, 0x00, 0xA0, 0xE3, 0x38, 0x80, 0xBD, 0xE8, 0xA0, 0x87, 0x31, 0x02, 0xF0, 0x41, 0x2D, 0xE9
	.byte 0x00, 0x60, 0xA0, 0xE1, 0x00, 0x40, 0xA0, 0xE3, 0x5C, 0x80, 0x9F, 0xE5, 0x0C, 0x70, 0xA0, 0xE3
	.byte 0x11, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x98, 0xE5, 0x84, 0x07, 0x65, 0xE1, 0xE0, 0x00, 0x80, 0xE2
	.byte 0x05, 0x00, 0x80, 0xE0, 0xCC, 0x79, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x0A
	.byte 0x0C, 0x10, 0x98, 0xE5, 0x06, 0x00, 0xA0, 0xE1, 0xE0, 0x10, 0x81, 0xE2, 0x05, 0x10, 0x81, 0xE0
	.byte 0xA0, 0x7A, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x04, 0x00, 0xA0, 0x11, 0xF0, 0x81, 0xBD, 0x18
	.byte 0x01, 0x00, 0x84, 0xE2, 0x00, 0x08, 0xA0, 0xE1, 0x40, 0x48, 0xA0, 0xE1, 0x10, 0x00, 0x54, 0xE3
	.byte 0xEB, 0xFF, 0xFF, 0xBA, 0x00, 0x00, 0xE0, 0xE3, 0xF0, 0x81, 0xBD, 0xE8, 0xA0, 0x87, 0x31, 0x02

	arm_func_start ov00_022BD0A0
ov00_022BD0A0: @ 0x022BD0A0
	push {r3, lr}
	cmp r0, #0x10
	movhs r0, #0
	pophs {r3, pc}
	ldr r2, _022BD0D0 @ =0x023187A0
	mov r1, #0xc
	ldr r2, [r2, #0xc]
	add r2, r2, #0xe0
	mla r0, r1, r0, r2
	bl ov00_022DB78C
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022BD0D0: .4byte 0x023187A0
	arm_func_end ov00_022BD0A0

	arm_func_start ov00_022BD0D4
ov00_022BD0D4: @ 0x022BD0D4
	push {r4, lr}
	mov r4, r0
	bl ov00_022BD0A0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r1, _022BD104 @ =0x023187A0
	mov r0, #0xa
	ldr r1, [r1, #0xc]
	add r1, r1, #0x40
	mla r0, r4, r0, r1
	pop {r4, pc}
	.align 2, 0
_022BD104: .4byte 0x023187A0
	arm_func_end ov00_022BD0D4

	arm_func_start ov00_022BD108
ov00_022BD108: @ 0x022BD108
	push {r3, lr}
	cmp r0, #0x10
	movhs r0, #0
	movhs r1, r0
	pophs {r3, pc}
	ldr r2, _022BD138 @ =0x023187A0
	mov r1, #0xc
	ldr r2, [r2, #0xc]
	add r2, r2, #0xe0
	mla r0, r1, r0, r2
	bl ov00_022DB964
	pop {r3, pc}
	.align 2, 0
_022BD138: .4byte 0x023187A0
	arm_func_end ov00_022BD108

	arm_func_start ov00_022BD13C
ov00_022BD13C: @ 0x022BD13C
	push {r3, lr}
	mov r3, r0
	cmp r3, #0x10
	movhs r0, #0
	pophs {r3, pc}
	ldr r0, _022BD16C @ =0x023187A0
	mov r1, #0xc
	ldr r0, [r0, #0xc]
	add r2, r0, #0xe0
	mla r1, r3, r1, r2
	bl ov00_022DB98C
	pop {r3, pc}
	.align 2, 0
_022BD16C: .4byte 0x023187A0
	arm_func_end ov00_022BD13C

	arm_func_start ov00_022BD170
ov00_022BD170: @ 0x022BD170
	push {r3, lr}
	cmp r0, #0x10
	movhs r0, #0
	pophs {r3, pc}
	ldr r2, _022BD19C @ =0x023187A0
	mov r1, #0xc
	ldr r2, [r2, #0xc]
	add r2, r2, #0xe0
	mla r0, r1, r0, r2
	bl ov00_022DB1A4
	pop {r3, pc}
	.align 2, 0
_022BD19C: .4byte 0x023187A0
	arm_func_end ov00_022BD170

	arm_func_start ov00_022BD1A0
ov00_022BD1A0: @ 0x022BD1A0
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	b _022BD1C8
_022BD1B4:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov00_022BD170
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
_022BD1C8:
	cmp r4, r5
	blt _022BD1B4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022BD1A0

	arm_func_start ov00_022BD1D4
ov00_022BD1D4: @ 0x022BD1D4
	push {r3, lr}
	cmp r2, #0
	movlt r2, #0
	blt _022BD1EC
	cmp r2, #0x10
	movgt r2, #0x10
_022BD1EC:
	mov lr, #0
	b _022BD20C
_022BD1F4:
	ldrb ip, [r0, lr]
	ldrb r3, [r1, lr]
	cmp ip, r3
	movne r0, #0
	popne {r3, pc}
	add lr, lr, #1
_022BD20C:
	cmp lr, r2
	blt _022BD1F4
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov00_022BD1D4

	arm_func_start ov00_022BD21C
ov00_022BD21C: @ 0x022BD21C
	push {r3, lr}
	cmp r2, #0
	movlt r2, #0
	blt _022BD234
	cmp r2, #0x10
	movgt r2, #0x10
_022BD234:
	mov lr, #0
	b _022BD254
_022BD23C:
	ldr ip, [r0, lr, lsl #2]
	ldr r3, [r1, lr, lsl #2]
	cmp ip, r3
	movne r0, #0
	popne {r3, pc}
	add lr, lr, #1
_022BD254:
	cmp lr, r2
	blt _022BD23C
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov00_022BD21C

	arm_func_start ov00_022BD264
ov00_022BD264: @ 0x022BD264
	ldr r1, _022BD270 @ =0x023187A0
	strb r0, [r1]
	bx lr
	.align 2, 0
_022BD270: .4byte 0x023187A0
	arm_func_end ov00_022BD264

	arm_func_start ov00_022BD274
ov00_022BD274: @ 0x022BD274
	ldr r0, _022BD280 @ =0x023187A0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022BD280: .4byte 0x023187A0
	arm_func_end ov00_022BD274

	arm_func_start ov00_022BD284
ov00_022BD284: @ 0x022BD284
	cmp r0, #0x10
	ldrlo r1, _022BD2A0 @ =0x023187A0
	movhs r0, #0
	ldrlo r1, [r1, #0xc]
	addlo r0, r1, r0
	ldrblo r0, [r0, #0x1a0]
	bx lr
	.align 2, 0
_022BD2A0: .4byte 0x023187A0
	arm_func_end ov00_022BD284

	arm_func_start ov00_022BD2A4
ov00_022BD2A4: @ 0x022BD2A4
	cmp r0, #0x10
	ldrlo r2, _022BD2BC @ =0x023187A0
	ldrlo r2, [r2, #0xc]
	addlo r0, r2, r0
	strblo r1, [r0, #0x1a0]
	bx lr
	.align 2, 0
_022BD2BC: .4byte 0x023187A0
	arm_func_end ov00_022BD2A4

	arm_func_start ov00_022BD2C0
ov00_022BD2C0: @ 0x022BD2C0
	push {r3, lr}
	cmp r0, #0x10
	movhs r0, #0
	pophs {r3, pc}
	ldr r2, _022BD2F0 @ =0x023187A0
	mov r1, #0xc
	ldr r2, [r2, #0xc]
	add r2, r2, #0xe0
	mla r0, r1, r0, r2
	bl ov00_022DB1B4
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022BD2F0: .4byte 0x023187A0
	arm_func_end ov00_022BD2C0

	arm_func_start ov00_022BD2F4
ov00_022BD2F4: @ 0x022BD2F4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r5, _022BD334 @ =0x023187A0
	mov r6, r7
	mov r4, #0xc
_022BD308:
	ldr r0, [r5, #0xc]
	add r0, r0, #0xe0
	mla r0, r6, r4, r0
	bl ov00_022DB78C
	cmp r0, #0
	add r6, r6, #1
	addne r7, r7, #1
	cmp r6, #0x10
	blt _022BD308
	mov r0, r7
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022BD334: .4byte 0x023187A0
	arm_func_end ov00_022BD2F4

	arm_func_start ov00_022BD338
ov00_022BD338: @ 0x022BD338
	push {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	ldr r8, _022BD394 @ =0x023187A0
	mov r4, r5
	mov r7, #0xc
_022BD34C:
	mul r6, r4, r7
	ldr r0, [r8, #0xc]
	add r0, r0, #0xe0
	add r0, r0, r6
	bl ov00_022DB78C
	cmp r0, #0
	beq _022BD380
	ldr r0, [r8, #0xc]
	add r0, r0, #0xe0
	add r0, r0, r6
	bl ov00_022DB1B4
	cmp r0, #0
	addne r5, r5, #1
_022BD380:
	add r4, r4, #1
	cmp r4, #0x10
	blt _022BD34C
	mov r0, r5
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022BD394: .4byte 0x023187A0
	arm_func_end ov00_022BD338
_022BD398:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0xD4, 0xFF, 0xFF, 0xEB
	.byte 0x10, 0x00, 0x50, 0xE3, 0x01, 0x00, 0xA0, 0xB3, 0x00, 0x00, 0xA0, 0xA3, 0xFF, 0x00, 0x00, 0xE2
	.byte 0x08, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022BD3B4
ov00_022BD3B4: @ 0x022BD3B4
	push {r4, lr}
	ldr r1, _022BD3F0 @ =0x023187A0
	mov r4, r0
	ldr r0, [r1, #0xc]
	mov r1, #0xa
	add r0, r0, #0x40
	mla r0, r4, r1, r0
	bl FUN_02003250
	ldr r1, _022BD3F0 @ =0x023187A0
	mov r0, #0xc
	ldr r1, [r1, #0xc]
	add r1, r1, #0xe0
	mla r0, r4, r0, r1
	bl ov00_022E3680
	pop {r4, pc}
	.align 2, 0
_022BD3F0: .4byte 0x023187A0
	arm_func_end ov00_022BD3B4

	arm_func_start ov00_022BD3F4
ov00_022BD3F4: @ 0x022BD3F4
	push {r4, r5, r6, lr}
	ldr r5, _022BD438 @ =0x023187A0
	mov r6, #0
	mov r4, #0xc
_022BD404:
	ldr r0, [r5, #0xc]
	add r0, r0, #0xe0
	mla r0, r6, r4, r0
	bl ov00_022DB78C
	cmp r0, #0
	beq _022BD428
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl ov00_022BD3B4
_022BD428:
	add r6, r6, #1
	cmp r6, #0x10
	blt _022BD404
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BD438: .4byte 0x023187A0
	arm_func_end ov00_022BD3F4

	arm_func_start ov00_022BD43C
ov00_022BD43C: @ 0x022BD43C
	push {r4, r5, r6, lr}
	ldr r3, _022BD47C @ =0x023187A0
	mov r6, r0
	ldr r0, [r3, #0xc]
	mov r5, r1
	mov r4, r2
	bl ov00_022DB3E0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022DBA1C
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BD47C: .4byte 0x023187A0
	arm_func_end ov00_022BD43C

	arm_func_start ov00_022BD480
ov00_022BD480: @ 0x022BD480
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r2, _022BD4CC @ =0x0231D420
	mov r1, #0
	strb r1, [r2, #2]
	ldr r0, _022BD4D0 @ =0x022BE058
	strb r1, [r2]
	bl ov00_022E3714
	mov r0, #0
	ldr r1, _022BD4D4 @ =0x022BE044
	mov r2, r0
	stm sp, {r0, r1}
	ldr r1, _022BD4D8 @ =0x022BE020
	mov r3, r0
	str r0, [sp, #8]
	bl ov00_022E1E0C
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_022BD4CC: .4byte 0x0231D420
_022BD4D0: .4byte 0x022BE058
_022BD4D4: .4byte 0x022BE044
_022BD4D8: .4byte 0x022BE020
	arm_func_end ov00_022BD480

	arm_func_start ov00_022BD4DC
ov00_022BD4DC: @ 0x022BD4DC
	ldr r0, _022BD4E8 @ =0x0231D420
	ldrb r0, [r0, #2]
	bx lr
	.align 2, 0
_022BD4E8: .4byte 0x0231D420
	arm_func_end ov00_022BD4DC

	arm_func_start ov00_022BD4EC
ov00_022BD4EC: @ 0x022BD4EC
	push {r3, r4, r5, lr}
	ldr r0, _022BD570 @ =0x023187A0
	mov r1, #0x36
	ldr r0, [r0, #0xc]
	add r0, r0, #0x1b0
	bl FUN_02003250
	ldr r1, _022BD570 @ =0x023187A0
	ldr r3, _022BD574 @ =0x00003FFF
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r0, r0, #0x100
	strh r3, [r0, #0xe6]
	ldr r0, [r1, #0xc]
	mov r2, #1
	add r0, r0, #0x100
	strh r3, [r0, #0xe8]
	ldr r0, [r1, #0xc]
	mov r5, r4
	strb r2, [r0, #0x1ea]
	ldr r0, [r1, #0xc]
	strb r2, [r0, #0x1eb]
	ldr r0, [r1, #0xc]
	strb r2, [r0, #0x1ec]
	ldr r0, [r1, #0xc]
	strb r4, [r0, #0x1ed]
_022BD550:
	lsl r0, r4, #0x10
	mov r1, r5
	lsr r0, r0, #0x10
	bl ov00_022BD2A4
	add r4, r4, #1
	cmp r4, #0x10
	blt _022BD550
	pop {r3, r4, r5, pc}
	.align 2, 0
_022BD570: .4byte 0x023187A0
_022BD574: .4byte 0x00003FFF
	arm_func_end ov00_022BD4EC
_022BD578:
	.byte 0x1C, 0x10, 0x9F, 0xE5, 0x27, 0x20, 0xA0, 0xE3
	.byte 0x0C, 0x10, 0x91, 0xE5, 0x1A, 0x3E, 0x81, 0xE2, 0xB2, 0x10, 0xD3, 0xE0, 0x01, 0x20, 0x52, 0xE2
	.byte 0xB2, 0x10, 0xC0, 0xE0, 0xFB, 0xFF, 0xFF, 0x1A, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02
	.byte 0x1C, 0x10, 0x9F, 0xE5, 0x27, 0x20, 0xA0, 0xE3, 0x0C, 0x10, 0x91, 0xE5, 0x1A, 0x3E, 0x81, 0xE2
	.byte 0xB2, 0x10, 0xD0, 0xE0, 0x01, 0x20, 0x52, 0xE2, 0xB2, 0x10, 0xC3, 0xE0, 0xFB, 0xFF, 0xFF, 0x1A
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02

	arm_func_start ov00_022BD5C8
ov00_022BD5C8: @ 0x022BD5C8
	ldr r0, _022BD5E8 @ =0x023187A0
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x1b0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022BD5E8: .4byte 0x023187A0
	arm_func_end ov00_022BD5C8

	arm_func_start ov00_022BD5EC
ov00_022BD5EC: @ 0x022BD5EC
	ldr r0, _022BD5FC @ =0x023187A0
	ldr r0, [r0, #0xc]
	add r0, r0, #0x1b0
	bx lr
	.align 2, 0
_022BD5FC: .4byte 0x023187A0
	arm_func_end ov00_022BD5EC
_022BD600:
	.byte 0x20, 0x00, 0x9F, 0xE5, 0x20, 0x10, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0x01, 0x0C, 0x80, 0xE2
	.byte 0xB6, 0x0E, 0xD0, 0xE1, 0x01, 0x00, 0x50, 0xE1, 0x01, 0x00, 0xA0, 0x33, 0x00, 0x00, 0xA0, 0x23
	.byte 0xFF, 0x00, 0x00, 0xE2, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0x10, 0x27, 0x00, 0x00
	.byte 0x0C, 0x00, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0x01, 0x0C, 0x80, 0xE2, 0xB6, 0x0E, 0xD0, 0xE1
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0x0C, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5
	.byte 0x01, 0x1C, 0x81, 0xE2, 0xB6, 0x0E, 0xC1, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02

	arm_func_start ov00_022BD660
ov00_022BD660: @ 0x022BD660
	ldr r0, _022BD688 @ =0x023187A0
	ldr r1, _022BD68C @ =0x00002710
	ldr r0, [r0, #0xc]
	add r0, r0, #0x100
	ldrh r0, [r0, #0xe8]
	cmp r0, r1
	movlo r0, #1
	movhs r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022BD688: .4byte 0x023187A0
_022BD68C: .4byte 0x00002710
	arm_func_end ov00_022BD660

	arm_func_start ov00_022BD690
ov00_022BD690: @ 0x022BD690
	ldr r0, _022BD6A4 @ =0x023187A0
	ldr r0, [r0, #0xc]
	add r0, r0, #0x100
	ldrh r0, [r0, #0xe8]
	bx lr
	.align 2, 0
_022BD6A4: .4byte 0x023187A0
	arm_func_end ov00_022BD690
_022BD6A8:
	.byte 0x0C, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5
	.byte 0x01, 0x1C, 0x81, 0xE2, 0xB8, 0x0E, 0xC1, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02
	.byte 0x10, 0x00, 0x9F, 0xE5, 0x10, 0x10, 0x9F, 0xE5, 0x0C, 0x00, 0x90, 0xE5, 0x01, 0x0C, 0x80, 0xE2
	.byte 0xB8, 0x1E, 0xC0, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0xFF, 0x3F, 0x00, 0x00

	arm_func_start ov00_022BD6E0
ov00_022BD6E0: @ 0x022BD6E0
	ldr r0, _022BD6F0 @ =0x023187A0
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x1ea]
	bx lr
	.align 2, 0
_022BD6F0: .4byte 0x023187A0
	arm_func_end ov00_022BD6E0

	arm_func_start ov00_022BD6F4
ov00_022BD6F4: @ 0x022BD6F4
	ldr r0, _022BD704 @ =0x023187A0
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x1eb]
	bx lr
	.align 2, 0
_022BD704: .4byte 0x023187A0
	arm_func_end ov00_022BD6F4

	arm_func_start ov00_022BD708
ov00_022BD708: @ 0x022BD708
	ldr r0, _022BD718 @ =0x023187A0
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x1ec]
	bx lr
	.align 2, 0
_022BD718: .4byte 0x023187A0
	arm_func_end ov00_022BD708

	arm_func_start ov00_022BD71C
ov00_022BD71C: @ 0x022BD71C
	ldr r0, _022BD72C @ =0x023187A0
	ldr r0, [r0, #0xc]
	ldrb r0, [r0, #0x1ed]
	bx lr
	.align 2, 0
_022BD72C: .4byte 0x023187A0
	arm_func_end ov00_022BD71C
_022BD730:
	.byte 0x08, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5, 0xEA, 0x01, 0xC1, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xA0, 0x87, 0x31, 0x02, 0x08, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5, 0xEB, 0x01, 0xC1, 0xE5
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0x08, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5
	.byte 0xEC, 0x01, 0xC1, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02, 0x08, 0x10, 0x9F, 0xE5
	.byte 0x0C, 0x10, 0x91, 0xE5, 0xED, 0x01, 0xC1, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xA0, 0x87, 0x31, 0x02

	arm_func_start ov00_022BD780
ov00_022BD780: @ 0x022BD780
	ldr r0, _022BD790 @ =0x023187A0
	ldr ip, _022BD794 @ =FUN_022DB914
	ldr r0, [r0, #0xc]
	bx ip
	.align 2, 0
_022BD790: .4byte 0x023187A0
_022BD794: .4byte FUN_022DB914
	arm_func_end ov00_022BD780

	arm_func_start ov00_022BD798
ov00_022BD798: @ 0x022BD798
	push {r3, lr}
	ldr r0, _022BD7B4 @ =0x0231D42C
	bl ov00_022E05B0
	mov r0, #2
	bl ov00_022E05C8
	bl ov00_022E0618
	pop {r3, pc}
	.align 2, 0
_022BD7B4: .4byte 0x0231D42C
	arm_func_end ov00_022BD798

	arm_func_start ov00_022BD7B8
ov00_022BD7B8: @ 0x022BD7B8
	push {r3, lr}
	bl ov00_022E0780
	bl ov00_022E0728
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov00_022BD7B8

	arm_func_start ov00_022BD7D8
ov00_022BD7D8: @ 0x022BD7D8
	push {r3, lr}
	bl ov00_022E0AFC
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov00_022BD7D8

	arm_func_start ov00_022BD7E8
ov00_022BD7E8: @ 0x022BD7E8
	push {r3, lr}
	bl ov00_022E089C
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _022BD868
_022BD7FC: @ jump table
	b _022BD820 @ case 0
	b _022BD828 @ case 1
	b _022BD830 @ case 2
	b _022BD838 @ case 3
	b _022BD840 @ case 4
	b _022BD848 @ case 5
	b _022BD850 @ case 6
	b _022BD858 @ case 7
	b _022BD860 @ case 8
_022BD820:
	mov r0, #0
	pop {r3, pc}
_022BD828:
	mov r0, #1
	pop {r3, pc}
_022BD830:
	mov r0, #2
	pop {r3, pc}
_022BD838:
	mov r0, #3
	pop {r3, pc}
_022BD840:
	mov r0, #4
	pop {r3, pc}
_022BD848:
	mov r0, #5
	pop {r3, pc}
_022BD850:
	mov r0, #6
	pop {r3, pc}
_022BD858:
	mov r0, #7
	pop {r3, pc}
_022BD860:
	mov r0, #8
	pop {r3, pc}
_022BD868:
	mov r0, #9
	pop {r3, pc}
	arm_func_end ov00_022BD7E8

	arm_func_start ov00_022BD870
ov00_022BD870: @ 0x022BD870
	push {r3, r4, lr}
	sub sp, sp, #0x14
	ldr r1, _022BD8E0 @ =0x023187A0
	mov r4, r0
	ldr r1, [r1, #0xc]
	ldr r2, _022BD8E4 @ =0x02317F54
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add ip, r1, #0xe0
	ldr r0, _022BD8E8 @ =0x0231D490
	ldr r2, _022BD8EC @ =0x00002B1A
	ldr r3, _022BD8F0 @ =0x02317F44
	str ip, [sp, #0xc]
	mov ip, #0x10
	str ip, [sp, #0x10]
	bl ov00_022E1690
	mov r1, #0
	ldr ip, _022BD8F4 @ =0x0231D420
	ldr r2, _022BD8F8 @ =0x022BE008
	mov r0, r4
	mov r3, r1
	strb r1, [ip, #1]
	bl ov00_022E1D04
	and r0, r0, #0xff
	add sp, sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_022BD8E0: .4byte 0x023187A0
_022BD8E4: .4byte 0x02317F54
_022BD8E8: .4byte 0x0231D490
_022BD8EC: .4byte 0x00002B1A
_022BD8F0: .4byte 0x02317F44
_022BD8F4: .4byte 0x0231D420
_022BD8F8: .4byte 0x022BE008
	arm_func_end ov00_022BD870

	arm_func_start ov00_022E1A84
ov00_022E1A84: @ 0x022BD8FC
	ldr ip, _022BD904 @ =ov00_022E1A84
	bx ip
	.align 2, 0
_022BD904: .4byte ov00_022E1A84
	arm_func_end ov00_022E1A84

	arm_func_start ov00_022BD908
ov00_022BD908: @ 0x022BD908
	ldr r0, _022BD914 @ =0x0231D420
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_022BD914: .4byte 0x0231D420
	arm_func_end ov00_022BD908

	arm_func_start ov00_022BD918
ov00_022BD918: @ 0x022BD918
	push {r3, lr}
	bl ov00_022E0DAC
	cmp r0, #0
	beq _022BD93C
	cmp r0, #1
	beq _022BD944
	cmp r0, #2
	beq _022BD94C
	b _022BD954
_022BD93C:
	mov r0, #0
	pop {r3, pc}
_022BD944:
	mov r0, #1
	pop {r3, pc}
_022BD94C:
	mov r0, #2
	pop {r3, pc}
_022BD954:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022BD918

	arm_func_start ov00_022E1914
ov00_022E1914: @ 0x022BD95C
	ldr ip, _022BD964 @ =ov00_022E1914
	bx ip
	.align 2, 0
_022BD964: .4byte ov00_022E1914
	arm_func_end ov00_022E1914

	arm_func_start ov00_022BD968
ov00_022BD968: @ 0x022BD968
	ldr ip, _022BD978 @ =FUN_022EF210
	ldr r1, _022BD97C @ =0x02317F5C
	mov r0, #0
	bx ip
	.align 2, 0
_022BD978: .4byte FUN_022EF210
_022BD97C: .4byte 0x02317F5C
	arm_func_end ov00_022BD968

	arm_func_start ov00_022BD980
ov00_022BD980: @ 0x022BD980
	push {r3, lr}
	bl ov00_022EF4D8
	ldr r0, _022BD998 @ =0x023187A0
	mov r1, #0
	strb r1, [r0, #1]
	pop {r3, pc}
	.align 2, 0
_022BD998: .4byte 0x023187A0
	arm_func_end ov00_022BD980

	arm_func_start ov00_022BD99C
ov00_022BD99C: @ 0x022BD99C
	push {r3, lr}
	ldr ip, [sp, #8]
	str ip, [sp]
	bl ov00_022EF7AC
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022BD9E0
_022BD9B8: @ jump table
	b _022BD9E0 @ case 0
	b _022BD9C8 @ case 1
	b _022BD9D0 @ case 2
	b _022BD9D8 @ case 3
_022BD9C8:
	mov r0, #1
	pop {r3, pc}
_022BD9D0:
	mov r0, #2
	pop {r3, pc}
_022BD9D8:
	mov r0, #3
	pop {r3, pc}
_022BD9E0:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022BD99C

	arm_func_start ov00_022BD9E8
ov00_022BD9E8: @ 0x022BD9E8
	push {r3, lr}
	bl ov00_022EF380
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _022BDA60
_022BD9FC: @ jump table
	b _022BDA20 @ case 0
	b _022BDA28 @ case 1
	b _022BDA30 @ case 2
	b _022BDA38 @ case 3
	b _022BDA40 @ case 4
	b _022BDA48 @ case 5
	b _022BDA50 @ case 6
	b _022BDA58 @ case 7
	b _022BDA60 @ case 8
_022BDA20:
	mov r0, #0
	pop {r3, pc}
_022BDA28:
	mov r0, #1
	pop {r3, pc}
_022BDA30:
	mov r0, #2
	pop {r3, pc}
_022BDA38:
	mov r0, #3
	pop {r3, pc}
_022BDA40:
	mov r0, #4
	pop {r3, pc}
_022BDA48:
	mov r0, #5
	pop {r3, pc}
_022BDA50:
	mov r0, #6
	pop {r3, pc}
_022BDA58:
	mov r0, #7
	pop {r3, pc}
_022BDA60:
	mov r0, #8
	pop {r3, pc}
	arm_func_end ov00_022BD9E8

	arm_func_start ov00_022EF548
ov00_022EF548: @ 0x022BDA68
	ldr ip, _022BDA70 @ =ov00_022EF548
	bx ip
	.align 2, 0
_022BDA70: .4byte ov00_022EF548
	arm_func_end ov00_022EF548

	arm_func_start ov00_022BDA74
ov00_022BDA74: @ 0x022BDA74
	push {r3, lr}
	ldr r0, _022BDA90 @ =0x023187A0
	ldrb r0, [r0, #1]
	cmp r0, #0
	popeq {r3, pc}
	bl ov00_022EF4AC
	pop {r3, pc}
	.align 2, 0
_022BDA90: .4byte 0x023187A0
	arm_func_end ov00_022BDA74

	arm_func_start ov00_022BDA94
ov00_022BDA94: @ 0x022BDA94
	push {r3, lr}
	ldr r0, _022BDABC @ =0x022BE06C
	ldr r1, _022BDAC0 @ =0x023187D0
	ldr r2, _022BDAC4 @ =0x023187D8
	bl ov00_022E1178
	ldr r0, _022BDAC8 @ =0x0231D420
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, pc}
	.align 2, 0
_022BDABC: .4byte 0x022BE06C
_022BDAC0: .4byte 0x023187D0
_022BDAC4: .4byte 0x023187D8
_022BDAC8: .4byte 0x0231D420
	arm_func_end ov00_022BDA94

	arm_func_start ov00_022BDACC
ov00_022BDACC: @ 0x022BDACC
	ldr r0, _022BDAD8 @ =0x0231D420
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_022BDAD8: .4byte 0x0231D420
	arm_func_end ov00_022BDACC

	arm_func_start ov00_022BDADC
ov00_022BDADC: @ 0x022BDADC
	push {r3, lr}
	movs r2, r0
	ldreq r2, _022BDB00 @ =0x023187C4
	ldm r2, {r0, r1, r2}
	bl ov00_022E12DC
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	pop {r3, pc}
	.align 2, 0
_022BDB00: .4byte 0x023187C4
	arm_func_end ov00_022BDADC

	arm_func_start ov00_022BDB04
ov00_022BDB04: @ 0x022BDB04
	push {r3, lr}
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	bl ov00_022E1310
	cmp r0, #0
	ldrne r0, _022BDB34 @ =0x0231D420
	movne r1, #0
	strne r1, [r0, #8]
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022BDB34: .4byte 0x0231D420
	arm_func_end ov00_022BDB04

	arm_func_start ov00_022BDB38
ov00_022BDB38: @ 0x022BDB38
	push {r3, lr}
	cmp r2, #0
	moveq r0, #0
	popeq {r3, pc}
	bl ov00_022E1334
	cmp r0, #0
	ldrne r0, _022BDB68 @ =0x0231D420
	movne r1, #0
	strne r1, [r0, #8]
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022BDB68: .4byte 0x0231D420
	arm_func_end ov00_022BDB38

	arm_func_start ov00_022BDB6C
ov00_022BDB6C: @ 0x022BDB6C
	push {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	cmpne r2, #0
	moveq r0, #0
	popeq {r3, pc}
	bl ov00_022E137C
	cmp r0, #0
	ldrne r0, _022BDBA4 @ =0x0231D420
	movne r1, #0
	strne r1, [r0, #8]
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022BDBA4: .4byte 0x0231D420
	arm_func_end ov00_022BDB6C

	arm_func_start ov00_022BDBA8
ov00_022BDBA8: @ 0x022BDBA8
	push {r3, lr}
	ldr r0, _022BDBE0 @ =0x0231D420
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _022BDBD8
	bl ov00_022E13B4
	cmp r0, #0
	ldrne r1, _022BDBE0 @ =0x0231D420
	movne r0, #1
	strne r0, [r1, #8]
	moveq r0, #0
	pop {r3, pc}
_022BDBD8:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022BDBE0: .4byte 0x0231D420
	arm_func_end ov00_022BDBA8

	arm_func_start ov00_022BDBE4
ov00_022BDBE4: @ 0x022BDBE4
	push {r3, lr}
	ldr r0, _022BDC54 @ =0x0231D420
	ldr r1, [r0, #8]
	cmp r1, #1
	movne r0, #0
	popne {r3, pc}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022BDC1C
	cmp r0, #1
	beq _022BDC4C
	cmp r0, #2
	beq _022BDC44
	b _022BDC4C
_022BDC1C:
	ldr r0, _022BDC58 @ =0x022BE080
	bl ov00_022E1290
	cmp r0, #0
	beq _022BDC4C
	ldr r0, _022BDC54 @ =0x0231D420
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, #1
	streq r1, [r0, #4]
	b _022BDC4C
_022BDC44:
	mov r0, #1
	pop {r3, pc}
_022BDC4C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022BDC54: .4byte 0x0231D420
_022BDC58: .4byte 0x022BE080
	arm_func_end ov00_022BDBE4
_022BDC5C:
	.byte 0x04, 0xC0, 0x9F, 0xE5
	.byte 0x02, 0x00, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1, 0xC8, 0x05, 0x2E, 0x02, 0x08, 0x40, 0x2D, 0xE9
	.byte 0xDD, 0x8B, 0x00, 0xEB, 0x03, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x02, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8, 0x01, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x02, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8, 0x03, 0x00, 0xA0, 0xE3, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x00, 0x00, 0xE0, 0xE3, 0x08, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022BDCB8
ov00_022BDCB8: @ 0x022BDCB8
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov00_022E025C
	ldr r1, [sp]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _022BDD34
_022BDCDC: @ jump table
	b _022BDD34 @ case 0
	b _022BDCFC @ case 1
	b _022BDD04 @ case 2
	b _022BDD0C @ case 3
	b _022BDD14 @ case 4
	b _022BDD1C @ case 5
	b _022BDD24 @ case 6
	b _022BDD2C @ case 7
_022BDCFC:
	mov r1, #1
	b _022BDD38
_022BDD04:
	mov r1, #2
	b _022BDD38
_022BDD0C:
	mov r1, #3
	b _022BDD38
_022BDD14:
	mov r1, #4
	b _022BDD38
_022BDD1C:
	mov r1, #5
	b _022BDD38
_022BDD24:
	mov r1, #6
	b _022BDD38
_022BDD2C:
	mov r1, #7
	b _022BDD38
_022BDD34:
	mov r1, #0
_022BDD38:
	str r1, [r4]
	cmp r0, #0x11
	addls pc, pc, r0, lsl #2
	b _022BDE18
_022BDD48: @ jump table
	b _022BDE18 @ case 0
	b _022BDD90 @ case 1
	b _022BDD98 @ case 2
	b _022BDDA0 @ case 3
	b _022BDDA8 @ case 4
	b _022BDDB0 @ case 5
	b _022BDDB8 @ case 6
	b _022BDDC0 @ case 7
	b _022BDDC8 @ case 8
	b _022BDDD0 @ case 9
	b _022BDDD8 @ case 10
	b _022BDDE0 @ case 11
	b _022BDDE8 @ case 12
	b _022BDDF0 @ case 13
	b _022BDDF8 @ case 14
	b _022BDE00 @ case 15
	b _022BDE08 @ case 16
	b _022BDE10 @ case 17
_022BDD90:
	mov r0, #1
	b _022BDE1C
_022BDD98:
	mov r0, #2
	b _022BDE1C
_022BDDA0:
	mov r0, #3
	b _022BDE1C
_022BDDA8:
	mov r0, #4
	b _022BDE1C
_022BDDB0:
	mov r0, #5
	b _022BDE1C
_022BDDB8:
	mov r0, #6
	b _022BDE1C
_022BDDC0:
	mov r0, #7
	b _022BDE1C
_022BDDC8:
	mov r0, #8
	b _022BDE1C
_022BDDD0:
	mov r0, #9
	b _022BDE1C
_022BDDD8:
	mov r0, #0xa
	b _022BDE1C
_022BDDE0:
	mov r0, #0xb
	b _022BDE1C
_022BDDE8:
	mov r0, #0xc
	b _022BDE1C
_022BDDF0:
	mov r0, #0xd
	b _022BDE1C
_022BDDF8:
	mov r0, #0xe
	b _022BDE1C
_022BDE00:
	mov r0, #0xf
	b _022BDE1C
_022BDE08:
	mov r0, #0x10
	b _022BDE1C
_022BDE10:
	mov r0, #0x11
	b _022BDE1C
_022BDE18:
	mov r0, #0
_022BDE1C:
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov00_022BDCB8
_022BDE24:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x58, 0x03, 0x2E, 0x02

	arm_func_start ov00_022BDE30
ov00_022BDE30: @ 0x022BDE30
	push {r4, r5, r6, lr}
	ldr r0, _022BDF18 @ =0x023187A0
	add r2, r1, #0x1f
	ldr r5, [r0, #0x20]
	lsr r6, r2, #5
	mov r4, #0
	cmp r1, #0
	moveq r0, r4
	popeq {r4, r5, r6, pc}
	bl FUN_0207B7E4
	ldr r1, _022BDF18 @ =0x023187A0
	ldr r1, [r1, #0x18]
	b _022BDEE4
_022BDE64:
	ldr r2, [r5]
	cmp r2, #0
	bne _022BDED8
	ldr r2, [r5, #4]
	cmp r6, r2
	bhs _022BDEC8
	add r2, r5, r6, lsl #5
	mov r1, #0
	str r1, [r2, #0x20]
	ldr r1, [r5, #4]
	add r3, r2, #0x20
	sub r1, r1, r6
	sub r1, r1, #1
	stmib r3, {r1, r6}
	ldr r2, [r3, #4]
	ldr r1, _022BDF18 @ =0x023187A0
	add r3, r3, r2, lsl #5
	ldr r1, [r1, #0x18]
	add r3, r3, #0x20
	cmp r3, r1
	strlo r2, [r3, #8]
	mov r1, #1
	stm r5, {r1, r6}
	add r4, r5, #0x20
	b _022BDEEC
_022BDEC8:
	moveq r1, #1
	streq r1, [r5]
	addeq r4, r5, #0x20
	beq _022BDEEC
_022BDED8:
	ldr r2, [r5, #4]
	add r2, r5, r2, lsl #5
	add r5, r2, #0x20
_022BDEE4:
	cmp r5, r1
	blo _022BDE64
_022BDEEC:
	bl FUN_0207B7F8
	ldr r0, _022BDF18 @ =0x023187A0
	add r1, r6, #1
	ldr r2, [r0, #0x14]
	add r2, r2, r1
	str r2, [r0, #0x14]
	ldr r1, [r0, #4]
	cmp r2, r1
	strgt r2, [r0, #4]
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BDF18: .4byte 0x023187A0
	arm_func_end ov00_022BDE30

	arm_func_start ov00_022BDF1C
ov00_022BDF1C: @ 0x022BDF1C
	push {r4, r5, r6, lr}
	mov r4, #0
	movs r6, r1
	mov r5, r4
	popeq {r4, r5, r6, pc}
	bl FUN_0207B7E4
	sub r1, r6, #0x20
	ldr r2, _022BE004 @ =0x023187A0
	ldr r3, [r1, #4]
	ldr ip, [r2, #0x14]
	add r3, r3, #1
	sub r3, ip, r3
	str r3, [r2, #0x14]
	mov r2, r4
	str r2, [r6, #-0x20]
	ldr r2, [r1, #8]
	ldr r3, [r1, #4]
	cmp r2, #0
	subge r2, r1, r2, lsl #5
	subge r5, r2, #0x20
	ldr r2, _022BE004 @ =0x023187A0
	add r3, r1, r3, lsl #5
	ldr r2, [r2, #0x18]
	add r3, r3, #0x20
	cmp r3, r2
	movlo r4, r3
	cmp r5, #0
	beq _022BDFBC
	ldr r2, [r5]
	cmp r2, #0
	bne _022BDFBC
	ldr r1, [r1, #4]
	ldr r2, [r5, #4]
	add r1, r1, #1
	add r1, r2, r1
	str r1, [r5, #4]
	cmp r4, #0
	ldrne r1, [r5, #4]
	strne r1, [r4, #8]
	mov r1, r5
_022BDFBC:
	cmp r4, #0
	beq _022BDFFC
	ldr r2, [r4]
	cmp r2, #0
	bne _022BDFFC
	ldr r2, [r4, #4]
	ldr r3, [r1, #4]
	add r2, r2, #1
	add r4, r3, r2
	ldr r2, _022BE004 @ =0x023187A0
	add r3, r1, r4, lsl #5
	str r4, [r1, #4]
	ldr r1, [r2, #0x18]
	add r2, r3, #0x20
	cmp r2, r1
	strlo r4, [r2, #8]
_022BDFFC:
	bl FUN_0207B7F8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BE004: .4byte 0x023187A0
	arm_func_end ov00_022BDF1C
_022BE008:
	.byte 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x9F, 0x05
	.byte 0x01, 0x10, 0xA0, 0x03, 0x01, 0x10, 0xC0, 0x05, 0x1E, 0xFF, 0x2F, 0xE1, 0x20, 0xD4, 0x31, 0x02
	.byte 0x00, 0x00, 0x50, 0xE3, 0x1E, 0xFF, 0x2F, 0x11, 0x10, 0x00, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE3
	.byte 0x02, 0x20, 0xC0, 0xE5, 0x00, 0x00, 0x51, 0xE3, 0x00, 0x20, 0xC0, 0x15, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0x20, 0xD4, 0x31, 0x02, 0x08, 0x00, 0x9F, 0xE5, 0x01, 0x10, 0xA0, 0xE3, 0x00, 0x10, 0xC0, 0xE5
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x20, 0xD4, 0x31, 0x02, 0x08, 0x00, 0x9F, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x10, 0xC0, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0x20, 0xD4, 0x31, 0x02, 0x08, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x10, 0xA0, 0xE3, 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0x20, 0xD4, 0x31, 0x02
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x02, 0x10, 0xA0, 0xE3, 0x04, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0x20, 0xD4, 0x31, 0x02

	arm_func_start ov00_022BE094
ov00_022BE094: @ 0x022BE094
	push {r3, lr}
	ldr r0, _022BE0B0 @ =0x02317FA0
	bl FUN_020348E4
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_0232F3F4
	pop {r3, pc}
	.align 2, 0
_022BE0B0: .4byte 0x02317FA0
	arm_func_end ov00_022BE094

	arm_func_start ov00_022BE0B4
ov00_022BE0B4: @ 0x022BE0B4
	ldr ip, _022BE0C0 @ =FUN_020348E4
	ldr r0, _022BE0C4 @ =0x02317FB0
	bx ip
	.align 2, 0
_022BE0C0: .4byte FUN_020348E4
_022BE0C4: .4byte 0x02317FB0
	arm_func_end ov00_022BE0B4

	arm_func_start ov00_022BE0C8
ov00_022BE0C8: @ 0x022BE0C8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x130
	mov sl, r0
	cmp sl, #3
	bne _022BE108
	bl FUN_0204A1CC
	bl ov00_022BCA80
	mov r0, #1
	bl ov00_022BCC30
	bl ov00_022BD3F4
	bl ov00_022BD4EC
	bl ov00_022BD780
	mov r0, #1
	bl ov00_022BCBAC
	mov r0, #2
	b _022BE3B0
_022BE108:
	cmp sl, #4
	bne _022BE134
	bl FUN_0204A1CC
	bl ov00_022BCA80
	mov r4, r0
	mov r0, #1
	bl ov00_022BCBAC
	cmp r4, #3
	beq _022BE184
	mov r0, #0x16
	b _022BE3B0
_022BE134:
	bl FUN_0204A1CC
	bl ov00_022BCA80
	mov r0, #0
	bl ov00_022BCC30
	cmp r0, #0
	bne _022BE17C
	bl ov00_022BD3F4
	bl FUN_0205B80C
	mov r0, #0
	bl FUN_0205B77C
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r0, r1
	bl FUN_020590DC
	bl ov00_022BD4EC
	cmp sl, #0
	moveq sl, #5
_022BE17C:
	mov r0, #1
	bl ov00_022BCBAC
_022BE184:
	ldr r0, _022BE3B8 @ =0x0231E2A0
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0]
	bl FUN_02028E2C
	bl FUN_02017A68
	mov r0, #2
	bl FUN_02017B58
	bl FUN_020519D0
	bl FUN_0201DC90
	bl ov00_022BE4D8
	bl FUN_0232E768
	ldr r1, _022BE3BC @ =0x023187EC
	mov r2, #1
	ldr r0, _022BE3C0 @ =ov00_022BE3CC
	strb r2, [r1]
	bl FUN_0200383C
	mov r6, #0
	ldr r7, _022BE3C4 @ =0x022BE4C8
	ldr r4, _022BE3B8 @ =0x0231E2A0
	mov fp, r6
	mov r5, r6
	mov r8, #3
	mov sb, #2
_022BE1E8:
	bl FUN_020038E8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022BE2AC
	cmp r0, #1
	streq sb, [r4, #4]
	beq _022BE304
	cmp r0, #2
	bne _022BE234
	bl ov00_022BE918
	cmp sl, #1
	bne _022BE224
	mov r0, #0
	bl ov00_022BE57C
	b _022BE22C
_022BE224:
	mov r0, #0x1e
	bl ov00_022BE57C
_022BE22C:
	str r8, [r4, #4]
	b _022BE304
_022BE234:
	bl ov00_022BE680
	cmp r0, #0
	bne _022BE304
	bl ov00_022BE6AC
	cmp r0, #0
	bne _022BE304
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _022BE320
	cmp sl, #4
	bne _022BE268
	bl FUN_0233AE64
	b _022BE2A4
_022BE268:
	cmp sl, #2
	bne _022BE278
	bl FUN_02337914
	b _022BE2A4
_022BE278:
	cmp sl, #5
	bne _022BE29C
	mov r0, #0x248
	mov r1, #0x100
	add r2, sp, #0x98
	str r7, [sp, #0x11c]
	str r6, [sp, #0x120]
	bl FUN_02046804
	b _022BE2A4
_022BE29C:
	mov r0, #0
	bl FUN_023310B8
_022BE2A4:
	str r5, [r4, #4]
	b _022BE304
_022BE2AC:
	ldr r0, [r4]
	cmp r0, #0
	beq _022BE304
	cmp r0, #0x14
	beq _022BE320
	cmp r0, #8
	bne _022BE2E4
	str r7, [sp, #0x84]
	str fp, [sp, #0x88]
	mov r0, #0x100
	add r1, sp, #0
	str fp, [r4]
	bl FUN_02049A40
	b _022BE304
_022BE2E4:
	mov r0, #0x1e
	bl FUN_02017ACC
	mov r0, #0x1e
	bl ov00_022BE5C8
	mov r0, #0x1e
	bl ov00_022BE630
	mov r0, #4
	str r0, [r4, #4]
_022BE304:
	bl FUN_02006E14
	bl FUN_0232EA30
	bl FUN_020039E4
	bl FUN_0232EC30
	bl FUN_02034A80
	bl FUN_02028848
	b _022BE1E8
_022BE320:
	mov r0, #0
	bl FUN_0200383C
	bl FUN_0232E7E8
	bl FUN_02034710
	bl FUN_0232E7C0
	bl ov00_022BE51C
	bl FUN_0201DCD0
	bl FUN_02051B44
	ldr r0, _022BE3B8 @ =0x0231E2A0
	ldr r0, [r0]
	cmp r0, #0x15
	bne _022BE398
	mov r0, #4
	bl FUN_02004868
	mov r0, #5
	bl FUN_020040AC
	bl FUN_020184B4
	bl FUN_020024B0
	bl FUN_02329520
	ldr r2, _022BE3C8 @ =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_020024C0
	bl FUN_020184C0
	mov r0, #3
	bl FUN_02002448
	mov r0, #3
	bl FUN_02002448
	b _022BE3A8
_022BE398:
	cmp r0, #3
	bne _022BE3A8
	mov r0, #5
	bl FUN_02002448
_022BE3A8:
	ldr r0, _022BE3B8 @ =0x0231E2A0
	ldr r0, [r0]
_022BE3B0:
	add sp, sp, #0x130
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022BE3B8: .4byte 0x0231E2A0
_022BE3BC: .4byte 0x023187EC
_022BE3C0: .4byte ov00_022BE3CC
_022BE3C4: .4byte 0x022BE4C8
_022BE3C8: .4byte 0x04000208
	arm_func_end ov00_022BE0C8

	arm_func_start ov00_022BE3CC
ov00_022BE3CC: @ 0x022BE3CC
	push {r4, lr}
	bl FUN_0201BF64
	bl FUN_02028E40
	bl FUN_020038D8
	cmp r0, #0
	beq _022BE3EC
	bl ov00_022BE6D0
	bl FUN_02003990
_022BE3EC:
	bl FUN_0232BE98
	bl FUN_0233103C
	bl FUN_0232ED5C
	bl ov00_022BE774
	bl FUN_0232C244
	bl FUN_0232C4D8
	bl FUN_0201DD48
	bl FUN_0201F464
	ldr r0, _022BE4A4 @ =0x023187EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _022BE420
	bl FUN_0201DDFC
_022BE420:
	bl FUN_02008F84
	bl FUN_0201BE28
	bl FUN_02017A80
	bl FUN_02003A40
	ldr r1, _022BE4A4 @ =0x023187EC
	mov r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _022BE464
	mov r0, #0
	bl FUN_02008ED0
	mov r0, #0
	mov r1, #2
	bl FUN_02008F64
	mov r0, #1
	mov r1, #2
	bl FUN_02008F64
_022BE464:
	bl FUN_0232ED84
	mov r0, r4
	bl FUN_02028A64
	bl FUN_0201BE5C
	bl FUN_0201BE84
	bl FUN_020778D0
	bl FUN_0201DE10
	bl FUN_02028E88
	bl FUN_02051C24
	bl FUN_0201BF4C
	bl FUN_02008F88
	ldr r1, _022BE4A4 @ =0x023187EC
	mov r2, #0
	mov r0, r4
	strb r2, [r1]
	pop {r4, pc}
	.align 2, 0
_022BE4A4: .4byte 0x023187EC
	arm_func_end ov00_022BE3CC

	arm_func_start ov00_022BE4A8
ov00_022BE4A8: @ 0x022BE4A8
	ldr r1, _022BE4C4 @ =0x0231E2A0
	ldr r2, [r1]
	cmp r2, #0
	streq r0, [r1]
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022BE4C4: .4byte 0x0231E2A0
	arm_func_end ov00_022BE4A8
_022BE4C8:
	.byte 0x04, 0xC0, 0x9F, 0xE5, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xB8, 0x10, 0x33, 0x02

	arm_func_start ov00_022BE4D8
ov00_022BE4D8: @ 0x022BE4D8
	push {r3, lr}
	ldr r0, _022BE514 @ =0x0231E2FC
	mov r1, #1
	bl FUN_0200B894
	ldr r0, _022BE518 @ =0x0231E2B8
	mov r1, #1
	bl FUN_0200B894
	bl ov00_022BE53C
	ldr r0, _022BE518 @ =0x0231E2B8
	mov r1, #1
	bl FUN_0200B8D4
	ldr r0, _022BE518 @ =0x0231E2B8
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE868
	pop {r3, pc}
	.align 2, 0
_022BE514: .4byte 0x0231E2FC
_022BE518: .4byte 0x0231E2B8
	arm_func_end ov00_022BE4D8

	arm_func_start ov00_022BE51C
ov00_022BE51C: @ 0x022BE51C
	push {r3, lr}
	ldr r0, _022BE534 @ =0x0231E2FC
	bl FUN_0200B8B8
	ldr r0, _022BE538 @ =0x0231E2B8
	bl FUN_0200B8B8
	pop {r3, pc}
	.align 2, 0
_022BE534: .4byte 0x0231E2FC
_022BE538: .4byte 0x0231E2B8
	arm_func_end ov00_022BE51C

	arm_func_start ov00_022BE53C
ov00_022BE53C: @ 0x022BE53C
	push {r3, lr}
	ldr r2, _022BE574 @ =0x0231E2A8
	mov r1, #0
	strb r1, [r2]
	str r1, [r2, #0xc]
	ldr r0, _022BE578 @ =0x0231E2FC
	str r1, [r2, #8]
	mov r1, #1
	strb r1, [r2, #1]
	bl FUN_0200B8D4
	ldr r0, _022BE578 @ =0x0231E2FC
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE868
	pop {r3, pc}
	.align 2, 0
_022BE574: .4byte 0x0231E2A8
_022BE578: .4byte 0x0231E2FC
	arm_func_end ov00_022BE53C

	arm_func_start ov00_022BE57C
ov00_022BE57C: @ 0x022BE57C
	push {r4, lr}
	mov r4, r0
	mov r0, #2
	bl FUN_02002878
	cmp r0, #0
	ldreq r0, _022BE5C0 @ =0x0231E2A8
	moveq r1, #1
	streq r1, [r0, #8]
	streq r4, [r0, #4]
	beq _022BE5B8
	ldr r0, _022BE5C4 @ =0x0231E2FC
	mov r1, r4
	bl FUN_0200BB60
	ldr r0, _022BE5C0 @ =0x0231E2A8
	mov r1, #1
_022BE5B8:
	strb r1, [r0, #1]
	pop {r4, pc}
	.align 2, 0
_022BE5C0: .4byte 0x0231E2A8
_022BE5C4: .4byte 0x0231E2FC
	arm_func_end ov00_022BE57C

	arm_func_start ov00_022BE5C8
ov00_022BE5C8: @ 0x022BE5C8
	push {r4, lr}
	mov r4, r0
	mov r0, #2
	bl FUN_02002878
	cmp r0, #0
	ldreq r0, _022BE610 @ =0x0231E2A8
	moveq r1, #2
	streq r1, [r0, #8]
	streq r4, [r0, #4]
	beq _022BE604
	ldr r0, _022BE614 @ =0x0231E2FC
	mov r2, r4
	mov r1, #1
	bl FUN_0200BB74
	ldr r0, _022BE610 @ =0x0231E2A8
_022BE604:
	mov r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
	.align 2, 0
_022BE610: .4byte 0x0231E2A8
_022BE614: .4byte 0x0231E2FC
	arm_func_end ov00_022BE5C8

	arm_func_start ov00_022BE618
ov00_022BE618: @ 0x022BE618
	ldr ip, _022BE628 @ =FUN_0200BB60
	mov r1, r0
	ldr r0, _022BE62C @ =0x0231E2B8
	bx ip
	.align 2, 0
_022BE628: .4byte FUN_0200BB60
_022BE62C: .4byte 0x0231E2B8
	arm_func_end ov00_022BE618

	arm_func_start ov00_022BE630
ov00_022BE630: @ 0x022BE630
	ldr ip, _022BE644 @ =FUN_0200BB74
	mov r2, r0
	ldr r0, _022BE648 @ =0x0231E2B8
	mov r1, #1
	bx ip
	.align 2, 0
_022BE644: .4byte FUN_0200BB74
_022BE648: .4byte 0x0231E2B8
	arm_func_end ov00_022BE630

	arm_func_start ov00_022BE64C
ov00_022BE64C: @ 0x022BE64C
	push {r3, lr}
	mov r2, r0
	ldr r0, _022BE67C @ =0x0231E2B8
	ldrsh r1, [r0, #0x14]
	cmp r1, #0
	ble _022BE670
	mov r1, #2
	bl FUN_0200BB74
	pop {r3, pc}
_022BE670:
	mov r1, #1
	bl FUN_0200BB74
	pop {r3, pc}
	.align 2, 0
_022BE67C: .4byte 0x0231E2B8
	arm_func_end ov00_022BE64C

	arm_func_start ov00_022BE680
ov00_022BE680: @ 0x022BE680
	push {r3, lr}
	ldr r0, _022BE6A4 @ =0x0231E2A8
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
	ldr r0, _022BE6A8 @ =0x0231E2FC
	bl FUN_0200BD14
	pop {r3, pc}
	.align 2, 0
_022BE6A4: .4byte 0x0231E2A8
_022BE6A8: .4byte 0x0231E2FC
	arm_func_end ov00_022BE680

	arm_func_start ov00_022BE6AC
ov00_022BE6AC: @ 0x022BE6AC
	ldr ip, _022BE6B8 @ =FUN_0200BD14
	ldr r0, _022BE6BC @ =0x0231E2B8
	bx ip
	.align 2, 0
_022BE6B8: .4byte FUN_0200BD14
_022BE6BC: .4byte 0x0231E2B8
	arm_func_end ov00_022BE6AC
_022BE6C0:
	.byte 0x04, 0x00, 0x9F, 0xE5, 0xF4, 0x01, 0xD0, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0xB8, 0xE2, 0x31, 0x02

	arm_func_start ov00_022BE6D0
ov00_022BE6D0: @ 0x022BE6D0
	push {r3, lr}
	ldr r0, _022BE76C @ =0x0231E2A8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _022BE74C
	cmp r1, #1
	beq _022BE700
	cmp r1, #2
	beq _022BE710
	cmp r1, #3
	beq _022BE724
	b _022BE734
_022BE700:
	ldr r1, [r0, #4]
	ldr r0, _022BE770 @ =0x0231E2FC
	bl FUN_0200BB60
	b _022BE734
_022BE710:
	ldr r2, [r0, #4]
	ldr r0, _022BE770 @ =0x0231E2FC
	mov r1, #1
	bl FUN_0200BB74
	b _022BE734
_022BE724:
	ldr r2, [r0, #4]
	ldr r0, _022BE770 @ =0x0231E2FC
	mov r1, #2
	bl FUN_0200BB74
_022BE734:
	ldr r0, _022BE76C @ =0x0231E2A8
	mov r1, #0
	str r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #1]
	pop {r3, pc}
_022BE74C:
	ldr r0, _022BE770 @ =0x0231E2FC
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r1, #1
	ldr r0, _022BE76C @ =0x0231E2A8
	moveq r1, #0
	strb r1, [r0, #1]
	pop {r3, pc}
	.align 2, 0
_022BE76C: .4byte 0x0231E2A8
_022BE770: .4byte 0x0231E2FC
	arm_func_end ov00_022BE6D0

	arm_func_start ov00_022BE774
ov00_022BE774: @ 0x022BE774
	push {r4, lr}
	ldr r0, _022BE85C @ =0x0231E2A8
	mov r4, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _022BE830
	ldr r0, _022BE860 @ =0x0231E2FC
	bl FUN_0200BD2C
	cmp r0, #0
	bne _022BE7B8
	ldr r1, _022BE85C @ =0x0231E2A8
	ldr r0, _022BE860 @ =0x0231E2FC
	ldr r2, [r1, #0xc]
	mov r1, r4
	bl FUN_0200BB74
	mov r4, #0
	b _022BE7C8
_022BE7B8:
	ldr r0, _022BE860 @ =0x0231E2FC
	bl FUN_0200BC54
	cmp r0, #0
	movne r4, #0
_022BE7C8:
	ldr r0, _022BE860 @ =0x0231E2FC
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE868
	ldr r0, _022BE864 @ =0x0231E2B8
	bl FUN_0200BD2C
	cmp r0, #0
	bne _022BE800
	ldr r1, _022BE85C @ =0x0231E2A8
	ldr r0, _022BE864 @ =0x0231E2B8
	ldr r2, [r1, #0xc]
	mov r1, #1
	bl FUN_0200BB74
	mov r4, #0
	b _022BE810
_022BE800:
	ldr r0, _022BE864 @ =0x0231E2B8
	bl FUN_0200BC54
	cmp r0, #0
	movne r4, #0
_022BE810:
	ldr r0, _022BE864 @ =0x0231E2B8
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE89C
	cmp r4, #0
	ldrne r0, _022BE85C @ =0x0231E2A8
	movne r1, #0
	strbne r1, [r0]
	pop {r4, pc}
_022BE830:
	ldr r0, _022BE860 @ =0x0231E2FC
	bl FUN_0200BC54
	ldr r0, _022BE860 @ =0x0231E2FC
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE868
	ldr r0, _022BE864 @ =0x0231E2B8
	bl FUN_0200BC54
	ldr r0, _022BE864 @ =0x0231E2B8
	ldrsh r0, [r0, #0x14]
	bl ov00_022BE89C
	pop {r4, pc}
	.align 2, 0
_022BE85C: .4byte 0x0231E2A8
_022BE860: .4byte 0x0231E2FC
_022BE864: .4byte 0x0231E2B8
	arm_func_end ov00_022BE774

	arm_func_start ov00_022BE868
ov00_022BE868: @ 0x022BE868
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	bl FUN_0200C110
	cmp r0, #0
	mov r0, #0
	beq _022BE890
	mov r1, r0
	bl FUN_02008F3C
	pop {r4, pc}
_022BE890:
	mov r1, r4
	bl FUN_02008F3C
	pop {r4, pc}
	arm_func_end ov00_022BE868

	arm_func_start ov00_022BE89C
ov00_022BE89C: @ 0x022BE89C
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	bl FUN_0200C110
	cmp r0, #0
	mov r0, #1
	beq _022BE8C4
	mov r1, #0
	bl FUN_02008F3C
	pop {r4, pc}
_022BE8C4:
	mov r1, r4
	bl FUN_02008F3C
	pop {r4, pc}
	arm_func_end ov00_022BE89C

	arm_func_start ov00_022BE8D0
ov00_022BE8D0: @ 0x022BE8D0
	push {r3, lr}
	sub sp, sp, #8
	ldr r0, _022BE910 @ =0x023187F0
	mov r1, #0
	ldr r3, [r0]
	mov r2, #1
	str r3, [r0]
	str r2, [sp]
	ldr r0, _022BE914 @ =0x023187F4
	str r1, [sp, #4]
	ldr r0, [r0, r3, lsl #2]
	mov r2, r1
	mov r3, r1
	bl FUN_02052060
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022BE910: .4byte 0x023187F0
_022BE914: .4byte 0x023187F4
	arm_func_end ov00_022BE8D0

	arm_func_start ov00_022BE918
ov00_022BE918: @ 0x022BE918
	push {r3, lr}
	sub sp, sp, #8
	mov r0, #7
	bl FUN_02002274
	mov r1, #0
	ldr r2, _022BE95C @ =0x023187F0
	mov r3, #1
	str r0, [r2]
	str r3, [sp]
	ldr r2, _022BE960 @ =0x023187F4
	str r1, [sp, #4]
	ldr r0, [r2, r0, lsl #2]
	mov r2, r1
	mov r3, r1
	bl FUN_02052060
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022BE95C: .4byte 0x023187F0
_022BE960: .4byte 0x023187F4
	arm_func_end ov00_022BE918

	arm_func_start ov00_022BE964
ov00_022BE964: @ 0x022BE964
	push {r3, lr}
	mov r2, #0xf00
	bl ov00_022BE990
	cmp r0, #0
	popne {r3, pc}
	ldr r1, _022BE98C @ =0x0231E340
	mov r2, #0
	ldr r1, [r1, #4]
	strh r2, [r1, #0x16]
	pop {r3, pc}
	.align 2, 0
_022BE98C: .4byte 0x0231E340
	arm_func_end ov00_022BE964

	arm_func_start ov00_022BE990
ov00_022BE990: @ 0x022BE990
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, r0
	mov r4, r1
	mov r7, r2
	bl FUN_0207B7E4
	ldr r1, _022BEB60 @ =0x0231E340
	mov r5, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _022BE9C4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022BE9C4:
	cmp r6, #0
	bne _022BE9D8
	bl FUN_0207B7F8
	mov r0, #6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022BE9D8:
	cmp r4, #3
	bls _022BE9EC
	bl FUN_0207B7F8
	mov r0, #6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022BE9EC:
	tst r6, #0x1f
	beq _022BEA00
	bl FUN_0207B7F8
	mov r0, #6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022BEA00:
	bl FUN_0207D9A4
	mov r0, #0xa
	mov r1, #1
	bl FUN_0207DAFC
	cmp r0, #0
	bne _022BEA28
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #4
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022BEA28:
	mov r0, r6
	mov r1, r7
	bl FUN_0207A2A4
	mov r0, r4
	mov r1, r6
	mov r3, r7
	mov r2, #0
	bl FUN_0207BC4C
	ldr r0, _022BEB60 @ =0x0231E340
	add r1, r6, #0x200
	str r6, [r0, #4]
	str r1, [r6]
	ldr r2, [r0, #4]
	ldr r1, [r2]
	add r1, r1, #0x300
	str r1, [r2, #4]
	ldr r2, [r0, #4]
	ldr r1, [r2, #4]
	add r1, r1, #0x800
	str r1, [r2, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x100
	str r0, [r1, #0x10]
	bl ov00_022BF224
	ldr r1, _022BEB60 @ =0x0231E340
	mov r3, #0
	ldr r0, [r1, #4]
	mov r2, r3
	strh r4, [r0, #0x14]
	ldr r0, [r1, #4]
	str r3, [r0, #0x14c]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0x50]
	b _022BEAD4
_022BEAB8:
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0xcc]
	ldr r0, [r1, #4]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0x10c]
	add r3, r3, #1
_022BEAD4:
	cmp r3, #0x10
	blt _022BEAB8
	ldr r0, _022BEB64 @ =0x0231E348
	ldr r1, _022BEB68 @ =0x0231E368
	mov r2, #0xa
	bl FUN_02079DB8
	mov r6, #0
	mov r4, #0x8000
	ldr sl, _022BEB6C @ =0x0231E3E0
	mov sb, #2
	ldr r8, _022BEB64 @ =0x0231E348
	mov r7, #1
	b _022BEB30
_022BEB08:
	lsl r2, r6, #8
	mov r1, sb
	add r0, sl, r6, lsl #8
	strh r4, [sl, r2]
	bl FUN_0207A2C0
	mov r0, r8
	mov r2, r7
	add r1, sl, r6, lsl #8
	bl FUN_02079DE0
	add r6, r6, #1
_022BEB30:
	cmp r6, #0xa
	blt _022BEB08
	ldr r1, _022BEB70 @ =ov00_022BEE78
	mov r0, #0xa
	bl FUN_0207DAB0
	ldr r1, _022BEB60 @ =0x0231E340
	mov r2, #1
	mov r0, r5
	strh r2, [r1]
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022BEB60: .4byte 0x0231E340
_022BEB64: .4byte 0x0231E348
_022BEB68: .4byte 0x0231E368
_022BEB6C: .4byte 0x0231E3E0
_022BEB70: .4byte ov00_022BEE78
	arm_func_end ov00_022BE990

	arm_func_start ov00_022BEB74
ov00_022BEB74: @ 0x022BEB74
	push {r4, lr}
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022BED80
	cmp r0, #0
	beq _022BEB9C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, pc}
_022BEB9C:
	mov r0, #1
	mov r1, #0
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	bl ov00_022BF224
	mov r0, #0xa
	mov r1, #0
	bl FUN_0207DAB0
	ldr r1, _022BEBE0 @ =0x0231E340
	mov r2, #0
	str r2, [r1, #4]
	mov r0, r4
	strh r2, [r1]
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022BEBE0: .4byte 0x0231E340
	arm_func_end ov00_022BEB74

	arm_func_start ov00_022BEBE4
ov00_022BEBE4: @ 0x022BEBE4
	ldr r2, _022BEBF8 @ =0x0231E340
	ldr r2, [r2, #4]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_022BEBF8: .4byte 0x0231E340
	arm_func_end ov00_022BEBE4

	arm_func_start ov00_022BEBFC
ov00_022BEBFC: @ 0x022BEBFC
	push {r3, lr}
	ldr r0, _022BEC50 @ =0x0231E348
	add r1, sp, #0
	mov r2, #0
	bl FUN_02079E74
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r0, [sp]
	mov r1, #2
	bl FUN_0207A2A4
	ldr r1, [sp]
	ldrh r0, [r1]
	tst r0, #0x8000
	movne r0, r1
	popne {r3, pc}
	ldr r0, _022BEC50 @ =0x0231E348
	mov r2, #1
	bl FUN_02079F18
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022BEC50: .4byte 0x0231E348
	arm_func_end ov00_022BEBFC

	arm_func_start ov00_022BEC54
ov00_022BEC54: @ 0x022BEC54
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022BEBFC
	movs r4, r0
	moveq r0, #8
	popeq {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	strh r5, [r4]
	ldrh r5, [sp, #0x14]
	add r0, sp, #0x14
	bic r0, r0, #3
	mov r3, #0
	cmp r5, #0
	add r2, r0, #4
	ble _022BECB4
_022BEC98:
	add r2, r2, #4
	ldr r1, [r2, #-4]
	add r0, r4, r3, lsl #2
	add r3, r3, #1
	str r1, [r0, #4]
	cmp r3, r5
	blt _022BEC98
_022BECB4:
	mov r0, r4
	mov r1, #0x100
	bl FUN_0207A2C0
	mov r1, r4
	mov r0, #0xa
	mov r2, #0
	bl FUN_0207DB20
	mov r5, r0
	ldr r0, _022BECFC @ =0x0231E348
	mov r1, r4
	mov r2, #1
	bl FUN_02079DE0
	cmp r5, #0
	movlt r0, #8
	movge r0, #2
	pop {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022BECFC: .4byte 0x0231E348
	arm_func_end ov00_022BEC54

	arm_func_start ov00_022BED00
ov00_022BED00: @ 0x022BED00
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl ov00_022BEBFC
	movs r5, r0
	moveq r0, #8
	popeq {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0207C4C8
	mov r0, r5
	mov r1, r4
	bl FUN_0207A2C0
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl FUN_0207DB20
	mov r4, r0
	ldr r0, _022BED6C @ =0x0231E348
	mov r1, r5
	mov r2, #1
	bl FUN_02079DE0
	cmp r4, #0
	movlt r0, #8
	movge r0, #2
	pop {r4, r5, r6, pc}
	.align 2, 0
_022BED6C: .4byte 0x0231E348
	arm_func_end ov00_022BED00

	arm_func_start ov00_022BED70
ov00_022BED70: @ 0x022BED70
	ldr r0, _022BED7C @ =0x0231E340
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_022BED7C: .4byte 0x0231E340
	arm_func_end ov00_022BED70

	arm_func_start ov00_022BED80
ov00_022BED80: @ 0x022BED80
	ldr r0, _022BED98 @ =0x0231E340
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	bx lr
	.align 2, 0
_022BED98: .4byte 0x0231E340
	arm_func_end ov00_022BED80

	arm_func_start ov00_022BED9C
ov00_022BED9C: @ 0x022BED9C
	push {r3, lr}
	bl ov00_022BED80
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022BEDE0 @ =0x0231E340
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl FUN_0207A2A4
	ldr r0, _022BEDE0 @ =0x0231E340
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	movls r0, #3
	movhi r0, #0
	pop {r3, pc}
	.align 2, 0
_022BEDE0: .4byte 0x0231E340
	arm_func_end ov00_022BED9C

	arm_func_start ov00_022BEDE4
ov00_022BEDE4: @ 0x022BEDE4
	push {r0, r1, r2, r3}
	push {r3, lr}
	bl ov00_022BED80
	cmp r0, #0
	popne {r3, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, _022BEE74 @ =0x0231E340
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl FUN_0207A2A4
	ldr r0, _022BEE74 @ =0x0231E340
	ldr r3, [sp, #8]
	ldr r0, [r0, #4]
	add r1, sp, #8
	ldr r2, [r0, #4]
	bic r0, r1, #3
	add ip, r0, #4
	ldrh lr, [r2]
	cmp r3, #0
	mov r0, #3
	popeq {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, #0
_022BEE4C:
	add ip, ip, #4
	ldr r2, [ip, #-4]
	cmp r2, lr
	moveq r0, r1
	subs r3, r3, #1
	str r3, [sp, #8]
	bne _022BEE4C
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022BEE74: .4byte 0x0231E340
	arm_func_end ov00_022BEDE4

	arm_func_start ov00_022BEE78
ov00_022BEE78: @ 0x022BEE78
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022BF210 @ =0x0231E340
	cmp r2, #0
	ldr r4, [r0, #4]
	mov sl, r1
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl FUN_0207A2A4
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _022BEEBC
	ldr r0, [r4, #4]
	mov r1, #0x800
	bl FUN_0207A2A4
_022BEEBC:
	ldr r0, [r4, #0x10]
	cmp sl, r0
	beq _022BEED4
	mov r0, sl
	mov r1, #0x100
	bl FUN_0207A2A4
_022BEED4:
	ldrh r0, [sl]
	cmp r0, #0x2c
	blo _022BEF8C
	cmp r0, #0x80
	bne _022BEF10
	ldrh r0, [sl, #2]
	cmp r0, #0x13
	bne _022BEEF8
	bl FUN_0207BC20
_022BEEF8:
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _022BF1D0
	mov r0, sl
	blx r1
	b _022BF1D0
_022BEF10:
	cmp r0, #0x82
	bne _022BEF64
	ldrh r0, [sl, #6]
	add r1, r4, r0, lsl #2
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	beq _022BF1D0
	ldr r0, [r1, #0x10c]
	str r0, [sl, #0x1c]
	ldr r0, [r4, #0x14c]
	strh r0, [sl, #0x22]
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl FUN_0207A2A4
	ldrh r1, [sl, #6]
	mov r0, sl
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0xcc]
	blx r1
	b _022BF1D0
_022BEF64:
	cmp r0, #0x81
	bne _022BF1D0
	mov r0, #0xf
	strh r0, [sl]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _022BF1D0
	mov r0, sl
	blx r1
	b _022BF1D0
_022BEF8C:
	cmp r0, #0xe
	bne _022BEFCC
	ldrh r0, [sl, #4]
	add r0, r0, #0xf5
	add r0, r0, #0xff00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022BEFCC
	ldrh r0, [sl, #2]
	cmp r0, #0
	bne _022BEFCC
	ldr r1, [r4, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl FUN_0207A2A4
_022BEFCC:
	ldrh r1, [sl]
	cmp r1, #2
	ldrheq r0, [sl, #2]
	cmpeq r0, #0
	add r0, r4, r1, lsl #2
	bne _022BF008
	ldr r4, [r0, #0x18]
	bl ov00_022BEB74
	cmp r4, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	blx r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022BF008:
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _022BF030
	mov r0, sl
	blx r1
	ldr r0, _022BF210 @ =0x0231E340
	ldrh r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022BF030:
	ldrh r0, [sl]
	cmp r0, #8
	cmpne r0, #0xc
	bne _022BF1D0
	cmp r0, #8
	bne _022BF074
	add r0, sl, #0xa
	str r0, [sp]
	ldrh r5, [sl, #8]
	ldrh r6, [sl, #0x10]
	ldrh r0, [sl, #0x12]
	add fp, sl, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldrh r8, [sl, #0x2c]
	ldrh sb, [sl, #0x2e]
	b _022BF0A4
_022BF074:
	cmp r0, #0xc
	bne _022BF0A4
	ldrh r5, [sl, #8]
	ldrh r7, [sl, #0xa]
	ldrh r0, [sl, #0xc]
	mov r6, #0
	mov fp, r6
	str r0, [sp, #4]
	add r0, sl, #0x10
	ldrh r8, [sl, #0x16]
	ldrh sb, [sl, #0x18]
	str r0, [sp]
_022BF0A4:
	cmp r5, #7
	cmpne r5, #9
	cmpne r5, #0x1a
	bne _022BF1D0
	cmp r5, #7
	ldreq r1, [r4, #0x14c]
	mov r0, #1
	orreq r0, r1, r0, lsl r6
	mvnne r0, r0, lsl r6
	ldrne r1, [r4, #0x14c]
	add r3, r4, #0x100
	andne r0, r1, r0
	str r0, [r4, #0x14c]
	ldr r0, _022BF214 @ =0x0231E390
	mov r1, #0
	mov r2, #0x44
	strh r7, [r3, #0x50]
	bl FUN_0207C40C
	ldr ip, _022BF210 @ =0x0231E340
	mov r1, #0x82
	strh r1, [ip, #0x50]
	mov r1, #0
	strh r1, [ip, #0x52]
	strh r5, [ip, #0x54]
	str r1, [ip, #0x58]
	str r1, [ip, #0x5c]
	strh r1, [ip, #0x60]
	strh r6, [ip, #0x62]
	strh r7, [ip, #0x70]
	ldr r2, [r4, #0x14c]
	ldr r1, _022BF218 @ =0x0000FFFF
	strh r2, [ip, #0x72]
	strh r1, [ip, #0x6a]
	ldr r3, [sp, #4]
	ldr r0, [sp]
	ldr r1, _022BF21C @ =0x0231E3A4
	mov r2, #6
	strh r3, [ip, #0x8c]
	bl FUN_0207C4C8
	cmp fp, #0
	mov r2, #0x18
	beq _022BF15C
	ldr r1, _022BF220 @ =0x0231E3B4
	mov r0, fp
	bl FUN_0207C2E0
	b _022BF168
_022BF15C:
	ldr r1, _022BF220 @ =0x0231E3B4
	mov r0, #0
	bl FUN_0207C2B8
_022BF168:
	cmp r7, #0
	moveq r1, r8
	movne r1, sb
	cmp r7, #0
	ldr r0, _022BF210 @ =0x0231E340
	ldr r7, _022BF210 @ =0x0231E340
	strh r1, [r0, #0x90]
	movne sb, r8
	ldr r5, _022BF214 @ =0x0231E390
	mov r6, #0
	strh sb, [r7, #0x92]
_022BF194:
	strh r6, [r7, #0x56]
	add r2, r4, r6, lsl #2
	ldr r0, [r2, #0xcc]
	cmp r0, #0
	beq _022BF1BC
	ldr r1, [r2, #0x10c]
	mov r0, r5
	str r1, [r7, #0x6c]
	ldr r1, [r2, #0xcc]
	blx r1
_022BF1BC:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x10
	blo _022BF194
_022BF1D0:
	ldr r0, [r4, #0x10]
	mov r1, #0x100
	bl FUN_0207A2A4
	bl ov00_022BF224
	ldr r0, [r4, #0x10]
	cmp sl, r0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r2, [sl]
	mov r0, sl
	mov r1, #0x100
	orr r2, r2, #0x8000
	strh r2, [sl]
	bl FUN_0207A2C0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022BF210: .4byte 0x0231E340
_022BF214: .4byte 0x0231E390
_022BF218: .4byte 0x0000FFFF
_022BF21C: .4byte 0x0231E3A4
_022BF220: .4byte 0x0231E3B4
	arm_func_end ov00_022BEE78

	arm_func_start ov00_022BF224
ov00_022BF224: @ 0x022BF224
	ldr r1, _022BF23C @ =0x027FFF96
	ldrh r0, [r1]
	tst r0, #1
	bicne r0, r0, #1
	strhne r0, [r1]
	bx lr
	.align 2, 0
_022BF23C: .4byte 0x027FFF96
	arm_func_end ov00_022BF224

	arm_func_start ov00_022BF240
ov00_022BF240: @ 0x022BF240
	push {r3, lr}
	bl ov00_022BED80
	cmp r0, #0
	movne r0, #0
	ldreq r0, _022BF260 @ =0x0231E340
	ldreq r0, [r0, #4]
	ldreq r0, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_022BF260: .4byte 0x0231E340
	arm_func_end ov00_022BF240

	arm_func_start ov00_022BF264
ov00_022BF264: @ 0x022BF264
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022BF290 @ =0x0231E340
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x100
	ldrhne r4, [r1, #0x50]
	moveq r4, #0
	bl FUN_0207B7F8
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022BF290: .4byte 0x0231E340
	arm_func_end ov00_022BF264

	arm_func_start ov00_022BF294
ov00_022BF294: @ 0x022BF294
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022BF2C0 @ =0x0231E340
	ldr r1, [r1, #4]
	cmp r1, #0
	ldrne r4, [r1, #0x14c]
	moveq r4, #0
	bl FUN_0207B7F8
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
_022BF2C0: .4byte 0x0231E340
	arm_func_end ov00_022BF294

	arm_func_start ov00_022BF2C4
ov00_022BF2C4: @ 0x022BF2C4
	push {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_0207B7E4
	mov r5, r0
	bl ov00_022BED80
	movs r4, r0
	beq _022BF2F0
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, r4
	pop {r4, r5, r6, pc}
_022BF2F0:
	bl ov00_022BED70
	str r6, [r0, #0xc8]
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022BF2C4

	arm_func_start ov00_022BF308
ov00_022BF308: @ 0x022BF308
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _022BF370
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x44
	bl FUN_0207C40C
	mov r3, #0
	ldr r1, _022BF3DC @ =0x0000FFFF
	mov r7, #0x82
	mov r2, #0x19
	add r0, sp, #0x14
	strh r7, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r6, [sp, #6]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x1a]
	str r4, [sp, #0x1c]
	strh r3, [sp, #0x12]
	bl FUN_0207B9EC
_022BF370:
	bl FUN_0207B7E4
	mov r8, r0
	bl ov00_022BED80
	movs r7, r0
	beq _022BF398
	mov r0, r8
	bl FUN_0207B7F8
	add sp, sp, #0x44
	mov r0, r7
	pop {r3, r4, r5, r6, r7, r8, pc}
_022BF398:
	bl ov00_022BED70
	add r0, r0, r6, lsl #2
	str r5, [r0, #0xcc]
	str r4, [r0, #0x10c]
	cmp r5, #0
	beq _022BF3C8
	bl ov00_022BF294
	strh r0, [sp, #0x22]
	bl ov00_022BF264
	strh r0, [sp, #0x20]
	add r0, sp, #0
	blx r5
_022BF3C8:
	mov r0, r8
	bl FUN_0207B7F8
	mov r0, #0
	add sp, sp, #0x44
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022BF3DC: .4byte 0x0000FFFF
	arm_func_end ov00_022BF308

	arm_func_start ov00_022BF3E0
ov00_022BF3E0: @ 0x022BF3E0
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022BED70
	mov r4, r0
	bl ov00_022BED80
	cmp r0, #0
	popne {r3, r4, r5, pc}
	cmp r5, #0
	moveq r0, #6
	popeq {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #0x7d0
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	mov r1, r5
	mov r2, #0x7d0
	bl FUN_0207C3B4
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022BF3E0

	arm_func_start ov00_022BF42C
ov00_022BF42C: @ 0x022BF42C
	push {r4, lr}
	bl ov00_022BED70
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl ov00_022BEDE4
	cmp r0, #0
	movne r0, #0
	popne {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl FUN_0207A2A4
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	popeq {r4, pc}
	add r0, r1, #0x3c
	mov r1, #4
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	pop {r4, pc}
	arm_func_end ov00_022BF42C

	arm_func_start ov00_022BF498
ov00_022BF498: @ 0x022BF498
	push {r3, r4, r5, lr}
	bl ov00_022BED70
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl ov00_022BEDE4
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl FUN_0207A2A4
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	add r0, r1, #0x188
	mov r1, #2
	bl FUN_0207A2A4
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	moveq r5, #1
	add r0, r1, #0x3e
	mov r1, #2
	movne r5, #0
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	cmp r5, #1
	ldrh r5, [r0, #0x3e]
	addne r0, r5, #0x51
	bicne r0, r0, #0x1f
	lslne r0, r0, #1
	popne {r3, r4, r5, pc}
	add r0, r0, #0xf8
	mov r1, #2
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	add r1, r5, #0xc
	ldrh r0, [r0, #0xf8]
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	lsl r0, r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022BF498

	arm_func_start ov00_022BF55C
ov00_022BF55C: @ 0x022BF55C
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r4, r1
	bl ov00_022BED70
	mov r6, r0
	bl ov00_022BED80
	cmp r0, #0
	addne sp, sp, #0x3c
	movne r0, #0
	popne {r3, r4, r5, r6, pc}
	cmp r4, #1
	blo _022BF598
	cmp r4, #0xf
	bls _022BF5A4
_022BF598:
	add sp, sp, #0x3c
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022BF5A4:
	ldr r0, [r6, #4]
	mov r1, #2
	add r0, r0, #0x82
	add r0, r0, #0x100
	bl FUN_0207A2A4
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	addeq sp, sp, #0x3c
	moveq r0, #0
	popeq {r3, r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #0
	popeq {r3, r4, r5, r6, pc}
	add r0, r5, #0xa
	str r0, [sp]
	mov r3, #0
	add r2, sp, #0
_022BF5FC:
	ldr r0, [r2, r3, lsl #2]
	ldrh r1, [r0, #4]
	cmp r4, r1
	addeq sp, sp, #0x3c
	popeq {r3, r4, r5, r6, pc}
	add r3, r3, #1
	add r0, r2, r3, lsl #2
	ldrh r1, [r5, #6]
	ldr r0, [r0, #-4]
	add r0, r1, r0
	str r0, [r2, r3, lsl #2]
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _022BF5FC
	mov r0, #0
	add sp, sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022BF55C

	arm_func_start ov00_022BF640
ov00_022BF640: @ 0x022BF640
	push {r3, lr}
	bl ov00_022BED80
	cmp r0, #0
	movne r0, #0x8000
	ldreq r0, _022BF65C @ =0x027FFCFA
	ldrheq r0, [r0]
	pop {r3, pc}
	.align 2, 0
_022BF65C: .4byte 0x027FFCFA
	arm_func_end ov00_022BF640

	arm_func_start ov00_022BF660
ov00_022BF660: @ 0x022BF660
	push {r4, lr}
	bl ov00_022BED70
	mov r4, r0
	bl ov00_022BED80
	cmp r0, #0
	movne r0, #0
	popne {r4, pc}
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_0207A2A4
	ldr r1, [r4, #4]
	ldrh r0, [r1]
	cmp r0, #9
	beq _022BF6A8
	cmp r0, #0xa
	cmpne r0, #0xb
	beq _022BF6D0
	b _022BF6E8
_022BF6A8:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl FUN_0207A2A4
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
_022BF6D0:
	add r0, r1, #0xbc
	mov r1, #2
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0xbc]
	pop {r4, pc}
_022BF6E8:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022BF660

	arm_func_start ov00_022BF6F0
ov00_022BF6F0: @ 0x022BF6F0
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_0207B9EC
	mov r2, #0
	add r3, sp, #0
	mov r1, r2
_022BF70C:
	ldrb r0, [r3], #1
	add r2, r2, #1
	cmp r2, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	blt _022BF70C
	ldr r0, _022BF778 @ =0x027FFC3C
	ldr ip, _022BF77C @ =0x66666667
	ldr r0, [r0]
	mov r3, #0x14
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	rsb r0, r0, r0, lsl #3
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsr r1, r2, #0x1f
	smull r2, lr, ip, r2
	add lr, r1, lr, asr #3
	smull r1, r2, r3, lr
	rsb lr, r1, r0, lsr #16
	add r0, lr, #0xc8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022BF778: .4byte 0x027FFC3C
_022BF77C: .4byte 0x66666667
	arm_func_end ov00_022BF6F0

	arm_func_start ov00_022BF780
ov00_022BF780: @ 0x022BF780
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_0207B9EC
	mov r1, #0
	add r3, sp, #0
	mov r2, r1
_022BF79C:
	ldrb r0, [r3], #1
	add r1, r1, #1
	cmp r1, #6
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	blt _022BF79C
	ldr r0, _022BF80C @ =0x027FFC3C
	mov r1, #0xd
	ldr r0, [r0]
	ldr r3, _022BF810 @ =0x66666667
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mul r0, r2, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsr r1, r2, #0x1f
	smull r2, ip, r3, r2
	add ip, r1, ip, asr #2
	mov r3, #0xa
	smull r1, r2, r3, ip
	rsb ip, r1, r0, lsr #16
	add r0, ip, #0x1e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022BF80C: .4byte 0x027FFC3C
_022BF810: .4byte 0x66666667
	arm_func_end ov00_022BF780

	arm_func_start ov00_022BF814
ov00_022BF814: @ 0x022BF814
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	ldrh r2, [r1, #0x3c]
	mov lr, r0
	cmp r2, #0
	beq _022BF85C
	mov r0, #0
	add r5, sp, #0
	strb r0, [sp]
	mov r4, #8
_022BF83C:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BF83C
	ldr r0, [r5]
	add sp, sp, #0x84
	str r0, [lr]
	pop {r3, r4, r5, r6, pc}
_022BF85C:
	ldrh r0, [r1, #0x3e]
	strb r0, [sp]
	ands r0, r0, #0xff
	bne _022BF894
	add r5, sp, #0
	mov r4, #8
_022BF874:
	ldm r5!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BF874
	ldr r0, [r5]
	add sp, sp, #0x84
	str r0, [lr]
	pop {r3, r4, r5, r6, pc}
_022BF894:
	cmp r0, #0x10
	movhi r0, #0x10
	strbhi r0, [sp]
	ldrh r2, [r1]
	ldrb r0, [sp]
	mov r3, #0
	lsl r2, r2, #1
	sub r4, r2, #0x40
	cmp r0, #0
	add r0, r1, #0x40
	mov r2, r3
	and r1, r4, #0xff
	ble _022BF944
	add ip, sp, #0
_022BF8CC:
	ldrb r5, [r0]
	add r6, ip, r2, lsl #3
	add r4, r0, #2
	strb r5, [r6, #4]
	ldrb r5, [r0, #1]
	strb r5, [r6, #5]
	str r4, [r6, #8]
	ldrb r4, [r6, #5]
	add r4, r4, #2
	and r5, r4, #0xff
	add r3, r3, r5
	and r3, r3, #0xff
	cmp r3, r1
	bls _022BF930
	mov r0, #0
	strb r0, [sp]
	mov r4, #8
_022BF910:
	ldm ip!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022BF910
	ldr r0, [ip]
	add sp, sp, #0x84
	str r0, [lr]
	pop {r3, r4, r5, r6, pc}
_022BF930:
	ldrb r4, [sp]
	add r2, r2, #1
	add r0, r0, r5
	cmp r2, r4
	blt _022BF8CC
_022BF944:
	add r4, sp, #0
	mov ip, #8
_022BF94C:
	ldm r4!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022BF94C
	ldr r0, [r4]
	str r0, [lr]
	add sp, sp, #0x84
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022BF814

	arm_func_start ov00_022BF96C
ov00_022BF96C: @ 0x022BF96C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _022BF9DC @ =0x02318810
	ldr r0, [r0]
	cmp r0, #0x10000
	bne _022BF9B4
	bl FUN_0208266C
	add r0, sp, #0
	bl FUN_020827F4
	cmp r0, #0
	bne _022BF9B4
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _022BF9DC @ =0x02318810
	add r0, r2, r0, lsl #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r1]
_022BF9B4:
	ldr r1, _022BF9DC @ =0x02318810
	ldr r0, [r1]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsl r0, r2, #0x10
	str r2, [r1]
	lsr r0, r0, #0x10
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_022BF9DC: .4byte 0x02318810
	arm_func_end ov00_022BF96C

	arm_func_start ov00_022BF9E0
ov00_022BF9E0: @ 0x022BF9E0
	ldr ip, _022BF9EC @ =FUN_022BF9F0
	mov r1, #0
	bx ip
	.align 2, 0
_022BF9EC: .4byte FUN_022BF9F0
	arm_func_end ov00_022BF9E0

	arm_func_start FUN_022BF9F0
FUN_022BF9F0: @ 0x022BF9F0
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #0
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #3
	bl ov00_022BEBE4
	bl ov00_022BED70
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #3
	stm sp, {r1, r4}
	mov r1, #4
	ldm r3, {r2, r3}
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	arm_func_end FUN_022BF9F0

	arm_func_start ov00_022BFA54
ov00_022BFA54: @ 0x022BFA54
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #4
	bl ov00_022BEBE4
	mov r0, #4
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFA54

	arm_func_start ov00_022BFA94
ov00_022BFA94: @ 0x022BFA94
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #5
	bl ov00_022BEBE4
	mov r0, #5
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFA94

	arm_func_start ov00_022BFAD4
ov00_022BFAD4: @ 0x022BFAD4
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #6
	bl ov00_022BEBE4
	mov r0, #6
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFAD4
_022BFB14:
	.byte 0x04, 0xC0, 0x9F, 0xE5, 0x00, 0x30, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x3C, 0xFB, 0x2B, 0x02

	arm_func_start ov00_022BFB24
ov00_022BFB24: @ 0x022BFB24
	ldr ip, _022BFB38 @ =FUN_022BFB3C
	cmp r3, #0
	mov r3, #1
	orreq r3, r3, #2
	bx ip
	.align 2, 0
_022BFB38: .4byte FUN_022BFB3C
	arm_func_end ov00_022BFB24

	arm_func_start FUN_022BFB3C
FUN_022BFB3C: @ 0x022BFB3C
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r1, r2
	mov r4, r3
	bl ov00_022BE964
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0
	bl ov00_022BEBE4
	bl ov00_022BED70
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #0
	stm sp, {r1, r4}
	mov r1, #4
	ldm r3, {r2, r3}
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	arm_func_end FUN_022BFB3C

	arm_func_start ov00_022BFB9C
ov00_022BFB9C: @ 0x022BFB9C
	push {r4, lr}
	mov r4, r0
	bl ov00_022BED9C
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #1
	bl ov00_022BEBE4
	mov r0, #1
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFB9C

	arm_func_start ov00_022BFBD4
ov00_022BFBD4: @ 0x022BFBD4
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #2
	bl ov00_022BEBE4
	mov r0, #2
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFBD4

	arm_func_start ov00_022BFC14
ov00_022BFC14: @ 0x022BFC14
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #6
	popeq {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _022BFC5C
	ldr r0, [r4]
	cmp r0, #0
	moveq r0, #6
	popeq {r3, r4, r5, pc}
_022BFC5C:
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x34]
	cmp r1, #0
	movne r2, #0x2a
	moveq r2, #0
	add r0, r0, r2
	cmp r0, #0x200
	bgt _022BFC98
	ldrh r0, [r4, #0x36]
	cmp r1, #0
	movne r1, #6
	moveq r1, #0
	add r0, r0, r1
	cmp r0, #0x200
	ble _022BFCA0
_022BFC98:
	mov r0, #6
	pop {r3, r4, r5, pc}
_022BFCA0:
	mov r0, r4
	bl ov00_022BFCF0
	mov r1, r5
	mov r0, #7
	bl ov00_022BEBE4
	mov r0, r4
	mov r1, #0x40
	bl FUN_0207A2C0
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _022BFCD4
	ldr r0, [r4]
	bl FUN_0207A2C0
_022BFCD4:
	mov r2, r4
	mov r0, #7
	mov r1, #1
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022BFC14

	arm_func_start ov00_022BFCF0
ov00_022BFCF0: @ 0x022BFCF0
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #0x18]
	cmp r1, #0xa
	blo _022BFD14
	cmp r1, #0x3e8
	bls _022BFD1C
_022BFD14:
	mov r0, #0
	bx lr
_022BFD1C:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _022BFD30
	cmp r0, #0xe
	bls _022BFD38
_022BFD30:
	mov r0, #0
	bx lr
_022BFD38:
	mov r0, #1
	bx lr
	arm_func_end ov00_022BFCF0

	arm_func_start ov00_022BFD40
ov00_022BFD40: @ 0x022BFD40
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, pc}
	bl ov00_022BED70
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r5
	mov r0, #8
	bl ov00_022BEBE4
	mov r2, r4
	mov r0, #8
	mov r1, #1
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022BFD40

	arm_func_start ov00_022BFD9C
ov00_022BFD9C: @ 0x022BFD9C
	ldr ip, _022BFDA8 @ =ov00_022BFD40
	mov r1, #1
	bx ip
	.align 2, 0
_022BFDA8: .4byte ov00_022BFD40
	arm_func_end ov00_022BFD9C

	arm_func_start ov00_022BFDAC
ov00_022BFDAC: @ 0x022BFDAC
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #7
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #9
	bl ov00_022BEBE4
	mov r0, #9
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022BFDAC

	arm_func_start ov00_022BFDEC
ov00_022BFDEC: @ 0x022BFDEC
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x10
	popne {r3, r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	popeq {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	popeq {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	blo _022BFE54
	cmp r0, #0xe
	bls _022BFE60
_022BFE54:
	add sp, sp, #0x10
	mov r0, #6
	pop {r3, r4, r5, pc}
_022BFE60:
	mov r1, r5
	mov r0, #0xa
	bl ov00_022BEBE4
	mov r0, #0xa
	strh r0, [sp]
	ldrh r2, [r4, #4]
	add r0, sp, #0
	mov r1, #0x10
	strh r2, [sp, #2]
	ldr r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #6]
	strh r2, [sp, #8]
	ldrb r2, [r4, #8]
	strb r2, [sp, #0xa]
	ldrb r2, [r4, #9]
	strb r2, [sp, #0xb]
	ldrb r2, [r4, #0xa]
	strb r2, [sp, #0xc]
	ldrb r2, [r4, #0xb]
	strb r2, [sp, #0xd]
	ldrb r2, [r4, #0xc]
	strb r2, [sp, #0xe]
	ldrb r2, [r4, #0xd]
	strb r2, [sp, #0xf]
	bl ov00_022BED00
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022BFDEC

	arm_func_start ov00_022BFED8
ov00_022BFED8: @ 0x022BFED8
	push {r4, r5, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x3c
	popne {r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	popeq {r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	popeq {r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0x400
	addhi sp, sp, #0x3c
	movhi r0, #6
	pophi {r4, r5, pc}
	ldrh r0, [r4, #0x12]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	pophi {r4, r5, pc}
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #3
	addne sp, sp, #0x3c
	movne r0, #6
	popne {r4, r5, pc}
	add r0, r0, #0xfe
	add r0, r0, #0xff00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022BFFA0
	ldrh r0, [r4, #0x34]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	pophi {r4, r5, pc}
_022BFFA0:
	mov r1, r5
	mov r0, #0x26
	bl ov00_022BEBE4
	mov r0, #0x26
	strh r0, [sp]
	ldrh r2, [r4, #6]
	add r1, sp, #0xc
	add r0, r4, #0xa
	strh r2, [sp, #2]
	ldr r3, [r4]
	mov r2, #6
	str r3, [sp, #4]
	ldrh r3, [r4, #4]
	strh r3, [sp, #8]
	ldrh r3, [r4, #8]
	strh r3, [sp, #0xa]
	bl FUN_0207C4C8
	ldrh r2, [r4, #0x10]
	add r1, sp, #0x16
	add r0, r4, #0x14
	strh r2, [sp, #0x12]
	ldrh r3, [r4, #0x34]
	mov r2, #0x20
	strh r3, [sp, #0x36]
	ldrh r3, [r4, #0x12]
	strh r3, [sp, #0x14]
	bl FUN_0207C4C8
	add r0, sp, #0
	mov r1, #0x3c
	bl ov00_022BED00
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x3c
	pop {r4, r5, pc}
	arm_func_end ov00_022BFED8

	arm_func_start ov00_022C0028
ov00_022C0028: @ 0x022C0028
	push {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #5
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r4, pc}
	mov r1, r4
	mov r0, #0xb
	bl ov00_022BEBE4
	mov r0, #0xb
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r4, pc}
	arm_func_end ov00_022C0028

	arm_func_start ov00_022C0068
ov00_022C0068: @ 0x022C0068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r7, r0
	mov r6, r1
	mov r0, #1
	mov r1, #2
	mov r5, r2
	mov r4, r3
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x28
	popne {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	addeq sp, sp, #0x28
	moveq r0, #6
	popeq {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6]
	mov r0, r6
	lsl r1, r1, #1
	bl FUN_0207A2C0
	bl ov00_022BED70
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r7
	mov r0, #0xc
	bl ov00_022BEBE4
	mov r0, #0xc
	strh r0, [sp]
	str r6, [sp, #4]
	cmp r5, #0
	mov r2, #0x18
	beq _022C0100
	add r1, sp, #8
	mov r0, r5
	bl FUN_0207C4C8
	b _022C010C
_022C0100:
	add r0, sp, #8
	mov r1, #0
	bl FUN_0207C40C
_022C010C:
	ldrh r2, [sp, #0x40]
	add r0, sp, #0
	mov r1, #0x28
	str r4, [sp, #0x20]
	strh r2, [sp, #0x26]
	bl ov00_022BED00
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C0068

	arm_func_start ov00_022C0134
ov00_022C0134: @ 0x022C0134
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl ov00_022BED70
	mov r1, #0xa
	mov r6, r0
	str r1, [sp]
	mov ip, #0xb
	mov r0, #5
	mov r1, #7
	mov r2, #9
	mov r3, #8
	str ip, [sp, #4]
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #8
	popne {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldrh r0, [r1]
	cmp r0, #7
	cmpne r0, #9
	bne _022C01E0
	cmp r4, #1
	blo _022C01A0
	cmp r4, #0xf
	bls _022C01AC
_022C01A0:
	add sp, sp, #8
	mov r0, #6
	pop {r4, r5, r6, pc}
_022C01AC:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl FUN_0207A2A4
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	bne _022C01F0
	add sp, sp, #8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022C01E0:
	cmp r4, #0
	addne sp, sp, #8
	movne r0, #6
	popne {r4, r5, r6, pc}
_022C01F0:
	mov r1, r5
	mov r0, #0xd
	bl ov00_022BEBE4
	mov r1, #1
	lsl r2, r1, r4
	mov r0, #0xd
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C0134

	arm_func_start ov00_022C021C
ov00_022C021C: @ 0x022C021C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x40
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov00_022BED70
	ldr r4, [r0, #4]
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x40
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0x188
	mov r1, #2
	bl FUN_0207A2A4
	add r0, r4, #0xc6
	mov r1, #2
	bl FUN_0207A2A4
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	ldrhne r0, [r4, #0xc6]
	cmpne r0, #1
	addne sp, sp, #0x40
	movne r0, #3
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0xc
	mov r1, #4
	bl FUN_0207A2A4
	ldr r0, [r4, #0xc]
	cmp r0, #1
	addeq sp, sp, #0x40
	moveq r0, #3
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r6, #0x3f
	addne sp, sp, #0x40
	movne r0, #6
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh sb, [sp, #0x60]
	tst sb, #0x1f
	addne sp, sp, #0x40
	movne r0, #6
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r4, #0x9c
	mov r1, #2
	bl FUN_0207A2A4
	ldrh r0, [r4, #0x9c]
	cmp r0, #0
	bne _022C0314
	bl ov00_022BF498
	cmp r6, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	poplt {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov00_022BF42C
	cmp sb, r0
	addlt sp, sp, #0x40
	movlt r0, #6
	poplt {r3, r4, r5, r6, r7, r8, sb, pc}
_022C0314:
	mov r1, r8
	mov r0, #0xe
	bl ov00_022BEBE4
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x40
	bl FUN_0207C314
	lsr r4, r6, #1
	ldrh r3, [sp, #0x60]
	mov r6, #0xe
	add r1, sp, #0x14
	mov r0, #0
	mov r2, #0x1c
	strh r6, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_0207C314
	ldr r0, [sp, #0x64]
	add r1, sp, #0x30
	mov r2, #0x10
	bl FUN_0207C330
	add r0, sp, #0
	mov r1, #0x40
	bl ov00_022BED00
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x40
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022C021C

	arm_func_start ov00_022C038C
ov00_022C038C: @ 0x022C038C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r1
	mov r8, r0
	mov r6, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x10
	mov r5, r3
	ldr r4, [sp, #0x34]
	bl FUN_0207C314
	ldr r1, [sp, #0x48]
	ldrh ip, [sp, #0x38]
	ldr r0, [sp, #0x44]
	ldr lr, _022C042C @ =0x00001E03
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	strb r1, [sp, #0x16]
	cmp r0, #0
	cmpne r4, #0
	strb r3, [sp, #0x14]
	strb r2, [sp, #0x15]
	ldrh r1, [sp, #0x30]
	str lr, [sp, #8]
	orrne r0, lr, #4
	strne r0, [sp, #8]
	strh ip, [sp, #0x12]
	strh r4, [sp, #0xc]
	strh r4, [sp, #0xe]
	strhne r4, [sp, #0x10]
	str r1, [sp]
	add r4, sp, #8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r4, [sp, #4]
	bl ov00_022C021C
	add sp, sp, #0x18
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C042C: .4byte 0x00001E03
	arm_func_end ov00_022C038C

	arm_func_start ov00_022C0430
ov00_022C0430: @ 0x022C0430
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r1
	mov r7, r0
	mov r5, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x10
	mov r4, r3
	bl FUN_0207C314
	ldrh ip, [sp, #0x34]
	mov r0, #3
	str r0, [sp, #8]
	ldrh lr, [sp, #0x30]
	strh ip, [sp, #0xc]
	strh ip, [sp, #0xe]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	add ip, sp, #8
	str lr, [sp]
	str ip, [sp, #4]
	bl ov00_022C021C
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C0430

	arm_func_start ov00_022C0498
ov00_022C0498: @ 0x022C0498
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #1
	bl ov00_022BED70
	ldr r5, [r0, #4]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x14
	popne {r4, r5, r6, r7, r8, sb, pc}
	add r0, r5, #0x188
	mov r1, #2
	bl FUN_0207A2A4
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	bne _022C0518
	add r0, r5, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl FUN_0207A2A4
	add r2, r5, #0x100
	add r0, r5, #0x86
	mov r1, #2
	ldrh r4, [r2, #0x82]
	bl FUN_0207A2A4
_022C0518:
	cmp r7, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, pc}
	cmp r4, #0
	addeq sp, sp, #0x14
	moveq r0, #7
	popeq {r4, r5, r6, r7, r8, sb, pc}
	add r0, r5, #0x7c
	mov r1, #2
	bl FUN_0207A2A4
	ldr r0, [r5, #0x7c]
	cmp r7, r0
	addeq sp, sp, #0x14
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x200
	addhi sp, sp, #0x14
	movhi r0, #6
	pophi {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_0207A2C0
	ldrh r2, [sp, #0x30]
	ldrh r1, [sp, #0x34]
	ldrh r0, [sp, #0x38]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str sb, [sp, #0xc]
	mov r2, r7
	mov r3, r6
	mov r0, #0xf
	mov r1, #7
	str r8, [sp, #0x10]
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022C0498

	arm_func_start ov00_022C05C8
ov00_022C05C8: @ 0x022C05C8
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022BED70
	mov r4, r0
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #3
	popeq {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x10
	bl ov00_022BEBE4
	mov r0, #0x10
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C05C8

	arm_func_start ov00_022C0638
ov00_022C0638: @ 0x022C0638
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl ov00_022BED70
	mov r4, r0
	mov r0, #1
	mov r1, #8
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	moveq r0, #3
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	movlo r0, #6
	poplo {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #6
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0207A2C0
	mov r1, r7
	mov r0, #0x11
	bl ov00_022BEBE4
	mov r2, r6
	mov r3, r5
	mov r0, #0x11
	mov r1, #2
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C0638

	arm_func_start ov00_022C06D8
ov00_022C06D8: @ 0x022C06D8
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022BED70
	mov r8, r0
	mov r0, #1
	mov r1, #0xb
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0x10
	popne {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl FUN_0207A2A4
	ldr r0, [r8, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #3
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, _022C07A0 @ =0x000005E4
	cmp r4, r0
	addhi sp, sp, #0x10
	movhi r0, #6
	pophi {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_0207A2C0
	mov r1, r7
	mov r0, #0x12
	bl ov00_022BEBE4
	add r1, sp, #8
	mov r0, r6
	mov r2, #6
	bl FUN_0207C4C8
	str r5, [sp]
	str r4, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, #0x12
	mov r1, #4
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C07A0: .4byte 0x000005E4
	arm_func_end ov00_022C06D8

	arm_func_start ov00_022C07A4
ov00_022C07A4: @ 0x022C07A4
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022BED70
	mov r4, r0
	mov r0, #1
	mov r1, #0xb
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0x10
	bl FUN_0207A2A4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #3
	popeq {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x13
	bl ov00_022BEBE4
	mov r0, #0x13
	mov r1, #0
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C07A4

	arm_func_start ov00_022C0810
ov00_022C0810: @ 0x022C0810
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov r7, r1
	mov r6, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	mov r5, r3
	mov r8, #1
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0x10
	addhs sp, sp, #0xc
	movhs r0, #6
	pophs {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022BF264
	movs r4, r0
	bne _022C088C
	bl ov00_022BF294
	mov r8, r0
_022C088C:
	mov r1, sl
	mov r0, #0
	mov r2, #0x820
	bl FUN_0207C358
	add r0, sl, #0x800
	mov r2, #0
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r5, [r0, #0x10]
	strh r7, [r0, #0x16]
	strh r2, [r0, #0xe]
	mov r0, #1
	ldr r1, [sp, #0x30]
	orr r0, r6, r0, lsl r4
	cmp r1, #0
	lsl r0, r0, #0x10
	movne r2, #1
	add r1, sl, #0x800
	strh r2, [r1, #0x18]
	lsr r0, r0, #0x10
	strh r0, [r1, #0xe]
	bl FUN_02084F34
	add r3, sl, #0x800
	mul r1, r5, r0
	strh r0, [r3, #0x12]
	strh r1, [r3, #0x14]
	ldrh r0, [r3, #0x14]
	cmp r0, #0x1fc
	bls _022C0918
	mov r0, #0
	strh r0, [r3, #0xe]
	add sp, sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C0918:
	add r0, r0, #4
	strh r0, [r3, #0x14]
	mov r0, #1
	strh r0, [r3, #0x1c]
	cmp r4, #0
	bne _022C0A30
	orr r4, r8, #1
	mov r2, #0
_022C0938:
	ldrh r1, [r3, #0xe]
	lsl r0, r2, #9
	add r2, r2, #1
	and r1, r1, r4
	strh r1, [sl, r0]
	cmp r2, #4
	blt _022C0938
	ldr r1, _022C0A54 @ =ov00_022C0ECC
	mov r0, r7
	mov r2, sl
	bl ov00_022BF308
	mov r7, sl
	mov sb, #0
	add r4, sl, #0x800
	mov r6, #1
	ldr fp, _022C0A58 @ =ov00_022C0DF4
	ldr r5, _022C0A5C @ =0x0000FFFF
	b _022C0A14
_022C0980:
	ldrh r2, [r4, #8]
	mov r0, fp
	mov r1, sl
	add r2, r2, #1
	and r2, r2, #3
	strh r2, [r4, #8]
	ldrh r3, [r4, #0xe]
	mov r2, r7
	and r3, r3, r8
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp]
	ldrh r3, [r4, #0x16]
	stmib sp, {r3, r6}
	ldrh r3, [r4, #0x14]
	bl ov00_022C0498
	cmp r0, #7
	bne _022C09E8
	add r0, sl, sb, lsl #1
	add r0, r0, #0x800
	strh r5, [r0]
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r4, #0xa]
	b _022C0A0C
_022C09E8:
	cmp r0, #0
	cmpne r0, #2
	beq _022C0A0C
	add r0, sl, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C0A0C:
	add r7, r7, #0x200
	add sb, sb, #1
_022C0A14:
	ldrh r0, [r4, #0x18]
	cmp r0, #1
	movne r0, #1
	moveq r0, #2
	cmp sb, r0
	blt _022C0980
	b _022C0A48
_022C0A30:
	ldr r1, _022C0A60 @ =ov00_022C0FF8
	mov r4, #3
	mov r0, r7
	mov r2, sl
	strh r4, [r3, #0xa]
	bl ov00_022BF308
_022C0A48:
	mov r0, #0
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C0A54: .4byte ov00_022C0ECC
_022C0A58: .4byte ov00_022C0DF4
_022C0A5C: .4byte 0x0000FFFF
_022C0A60: .4byte ov00_022C0FF8
	arm_func_end ov00_022C0810

	arm_func_start ov00_022C0A64
ov00_022C0A64: @ 0x022C0A64
	push {r4, lr}
	movs r4, r0
	moveq r0, #6
	popeq {r4, pc}
	add r0, r4, #0x800
	ldrh r1, [r0, #0xe]
	cmp r1, #0
	moveq r0, #3
	popeq {r4, pc}
	ldrh r0, [r0, #0x16]
	mov r1, #0
	mov r2, r1
	bl ov00_022BF308
	add r1, r4, #0x800
	mov r0, #0
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x1c]
	pop {r4, pc}
	arm_func_end ov00_022C0A64

	arm_func_start ov00_022C0AAC
ov00_022C0AAC: @ 0x022C0AAC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022BF264
	movs r5, r0
	bne _022C0B20
	bl ov00_022BF294
	mov r4, r0
_022C0B20:
	add r0, sl, #0x800
	ldrh r0, [r0, #0x1c]
	cmp r0, #5
	addeq sp, sp, #0xc
	moveq r0, #1
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #1
	cmpne r0, #4
	addne sp, sp, #0xc
	movne r0, #3
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	mov r7, #5
	bne _022C0CE4
	mov r5, #0
	mov fp, r5
	cmp r0, #4
	bne _022C0C08
	add ip, sl, #0x800
	mov r2, #1
	strh r2, [ip, #0x1c]
	ldrh r3, [ip, #0xe]
	ldrh r1, [ip, #8]
	ldr r0, _022C0DEC @ =ov00_022C0DF4
	and r3, r3, r4
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp]
	ldrh r3, [ip, #0x16]
	add r1, r1, #3
	and r6, r1, #3
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldrh r3, [ip, #0x14]
	mov r1, sl
	add r2, sl, r6, lsl #9
	bl ov00_022C0498
	cmp r0, #7
	bne _022C0BE4
	add r0, sl, r6, lsl #1
	ldr r1, _022C0DF0 @ =0x0000FFFF
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	b _022C0C08
_022C0BE4:
	cmp r0, #0
	cmpne r0, #2
	beq _022C0C08
	add r0, sl, #0x800
	mov r1, r7
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C0C08:
	add r0, sl, #0x800
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xa]
	cmp r2, r1
	beq _022C0CA0
	lsl r5, r2, #9
	ldrh r3, [sl, r5]
	mov r1, r8
	mov r2, #0x200
	orr r3, r3, #1
	strh r3, [sl, r5]
	ldrh r0, [r0, #0xc]
	add r0, sl, r0, lsl #9
	bl FUN_0207C2E0
	add r1, sl, #0x800
	ldrh r0, [r1, #0xc]
	mov r5, #1
	mov r7, #0
	add r0, sl, r0, lsl #1
	add r0, r0, #0x800
	ldrh r0, [r0]
	strh r0, [r1, #0x1a]
	ldrh r0, [r1, #0xc]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	bne _022C0C9C
	cmp r4, #0
	beq _022C0C9C
	ldrh r0, [r1, #8]
	lsl r0, r0, #9
	ldrh r0, [sl, r0]
	cmp r0, #1
	moveq fp, r5
	beq _022C0CA0
_022C0C9C:
	mov fp, #0
_022C0CA0:
	mov r0, sl
	mov r1, #0
	bl ov00_022C11B8
	cmp r5, #0
	beq _022C0DE0
	mov r0, sl
	mov r2, sb
	mov r1, #0
	bl ov00_022C10EC
	add r0, sl, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _022C0DE0
	mov r0, sl
	mov r1, fp
	bl ov00_022C11B8
	b _022C0DE0
_022C0CE4:
	cmp r0, #4
	mov r0, #0
	add r1, sl, #0x800
	moveq r0, #1
	strheq r0, [r1, #0x1c]
	beq _022C0D64
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #8]
	cmp r2, r1
	beq _022C0D64
	lsl r2, r2, #9
	ldrh r1, [sl, r2]
	tst r1, #1
	orreq r1, r1, #1
	strheq r1, [sl, r2]
	beq _022C0D64
	mov r1, r8
	add r0, sl, r2
	mov r2, #0x200
	bl FUN_0207C2E0
	add r2, sl, #0x800
	ldrh r1, [r2, #0xc]
	mov r0, #1
	mov r7, #0
	add r1, sl, r1, lsl #1
	add r1, r1, #0x800
	ldrh r1, [r1]
	strh r1, [r2, #0x1a]
	ldrh r1, [r2, #0xc]
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r2, #0xc]
_022C0D64:
	cmp r0, #0
	beq _022C0DE0
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0x10]
	mov r0, sb
	add r6, sl, r1, lsl #9
	add r1, r6, #0x20
	bl FUN_0207C2E0
	add r3, sl, #0x800
	ldrh r1, [r3, #0xe]
	mov r4, #1
	ldr r0, _022C0DEC @ =ov00_022C0DF4
	str r1, [sp]
	ldrh r5, [r3, #0x16]
	mov r1, sl
	add r2, r6, #0x20
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldrh r3, [r3, #0x10]
	bl ov00_022C0498
	add r1, sl, #0x800
	ldrh r2, [r1, #0xa]
	cmp r0, #2
	cmpne r0, #0
	add r2, r2, #1
	and r2, r2, #3
	strh r2, [r1, #0xa]
	movne r0, #5
	strhne r0, [r1, #0x1c]
	movne r7, r4
_022C0DE0:
	mov r0, r7
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C0DEC: .4byte ov00_022C0DF4
_022C0DF0: .4byte 0x0000FFFF
	arm_func_end ov00_022C0AAC

	arm_func_start ov00_022C0DF4
ov00_022C0DF4: @ 0x022C0DF4
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022BED70
	ldrh r2, [r5, #0xa]
	ldr r1, _022C0EC4 @ =ov00_022C0ECC
	add r0, r0, r2, lsl #2
	ldr r2, [r0, #0xcc]
	ldr r4, [r0, #0x10c]
	cmp r2, r1
	ldrne r0, _022C0EC8 @ =ov00_022C0FF8
	cmpne r2, r0
	popne {r3, r4, r5, pc}
	cmp r4, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	cmp r4, r0
	popne {r3, r4, r5, pc}
	bl ov00_022BF264
	ldrh r1, [r5, #2]
	cmp r1, #0
	bne _022C0E80
	cmp r0, #0
	popne {r3, r4, r5, pc}
	add r1, r4, #0x800
	ldrh r0, [r1, #0xa]
	ldrh r2, [r5, #0x1a]
	add r0, r4, r0, lsl #1
	asr r2, r2, #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #0xa]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #0xa]
	pop {r3, r4, r5, pc}
_022C0E80:
	cmp r1, #0xa
	bne _022C0EB4
	cmp r0, #0
	beq _022C0EA4
	add r0, r4, #0x800
	ldrh r1, [r0, #0xa]
	add r1, r1, #3
	and r1, r1, #3
	strh r1, [r0, #0xa]
_022C0EA4:
	add r0, r4, #0x800
	mov r1, #4
	strh r1, [r0, #0x1c]
	pop {r3, r4, r5, pc}
_022C0EB4:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C0EC4: .4byte ov00_022C0ECC
_022C0EC8: .4byte ov00_022C0FF8
	arm_func_end ov00_022C0DF4

	arm_func_start ov00_022C0ECC
ov00_022C0ECC: @ 0x022C0ECC
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	popeq {r4, r5, r6, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _022C0FE8
	ldrh r1, [r0, #4]
	cmp r1, #0x15
	bgt _022C0F18
	bge _022C0F38
	cmp r1, #9
	popgt {r4, r5, r6, pc}
	cmp r1, #7
	poplt {r4, r5, r6, pc}
	beq _022C0F58
	cmp r1, #9
	beq _022C0F68
	pop {r4, r5, r6, pc}
_022C0F18:
	cmp r1, #0x1a
	popgt {r4, r5, r6, pc}
	cmp r1, #0x19
	poplt {r4, r5, r6, pc}
	popeq {r4, r5, r6, pc}
	cmp r1, #0x1a
	beq _022C0F68
	pop {r4, r5, r6, pc}
_022C0F38:
	ldrh r1, [r0, #0x12]
	ldr r2, [r0, #0xc]
	mov r0, r4
	bl ov00_022C10EC
	mov r0, r4
	mov r1, #0
	bl ov00_022C11B8
	pop {r4, r5, r6, pc}
_022C0F58:
	mov r0, r4
	mov r1, #0
	bl ov00_022C11B8
	pop {r4, r5, r6, pc}
_022C0F68:
	ldrh r5, [r0, #0x12]
	mov r6, #1
	bl FUN_0207B7E4
	add r1, r4, #0x800
	ldrh lr, [r1, #8]
	mvn ip, r6, lsl r5
	lsl r3, lr, #9
	ldrh r2, [r4, r3]
	and r2, r2, ip
	strh r2, [r4, r3]
	ldrh r1, [r1, #0x18]
	cmp r1, #1
	bne _022C0FB8
	add r1, lr, #1
	and r1, r1, #3
	lsl r1, r1, #0x10
	lsr r2, r1, #7
	ldrh r1, [r4, r2]
	and r1, r1, ip
	strh r1, [r4, r2]
_022C0FB8:
	bl FUN_0207B7F8
	mov r0, r4
	mov r1, #0
	bl ov00_022C11B8
	add r0, r4, #0x800
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0
	bl ov00_022C11B8
	pop {r4, r5, r6, pc}
_022C0FE8:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C0ECC

	arm_func_start ov00_022C0FF8
ov00_022C0FF8: @ 0x022C0FF8
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r4, [r8, #0x1c]
	cmp r4, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r8, #2]
	cmp r0, #0
	bne _022C10DC
	ldrh r0, [r8, #4]
	cmp r0, #0x15
	bgt _022C1040
	bge _022C1058
	cmp r0, #9
	popgt {r4, r5, r6, r7, r8, pc}
	cmp r0, #7
	poplt {r4, r5, r6, r7, r8, pc}
	cmpne r0, #9
	pop {r4, r5, r6, r7, r8, pc}
_022C1040:
	cmp r0, #0x1a
	popgt {r4, r5, r6, r7, r8, pc}
	cmp r0, #0x19
	poplt {r4, r5, r6, r7, r8, pc}
	cmpne r0, #0x1a
	pop {r4, r5, r6, r7, r8, pc}
_022C1058:
	ldr r7, [r8, #0xc]
	ldrh r5, [r8, #0x10]
	ldrh r6, [r7]
	bl ov00_022BF264
	add r1, r4, #0x800
	ldrh r1, [r1, #0x14]
	cmp r5, r1
	beq _022C1080
	cmp r5, #0x200
	movhi r5, #0x200
_022C1080:
	cmp r5, #4
	poplo {r4, r5, r6, r7, r8, pc}
	mov r1, #1
	tst r6, r1, lsl r0
	popeq {r4, r5, r6, r7, r8, pc}
	add r0, r4, #0x800
	ldrh r1, [r0, #8]
	mov r0, r7
	mov r2, r5
	add r1, r4, r1, lsl #9
	bl FUN_0207C2E0
	add r1, r4, #0x800
	ldrh r0, [r1, #8]
	ldrh r2, [r8, #0x1a]
	add r0, r4, r0, lsl #1
	asr r2, r2, #1
	add r0, r0, #0x800
	strh r2, [r0]
	ldrh r0, [r1, #8]
	add r0, r0, #1
	and r0, r0, #3
	strh r0, [r1, #8]
	pop {r4, r5, r6, r7, r8, pc}
_022C10DC:
	add r0, r4, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022C0FF8

	arm_func_start ov00_022C10EC
ov00_022C10EC: @ 0x022C10EC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r3, r1
	mov r1, #1
	lsl r4, r1, r3
	add r0, r6, #0x800
	ldrh r1, [r0, #0xe]
	lsl r7, r4, #0x10
	mov r5, r2
	tst r1, r7, lsr #16
	popeq {r3, r4, r5, r6, r7, pc}
	ldrh r4, [r0, #8]
	lsl r2, r4, #9
	ldrh r2, [r6, r2]
	tst r2, r7, lsr #16
	bne _022C1150
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	add r0, r4, #1
	and r4, r0, #3
	lsl r0, r4, #9
	ldrh r0, [r6, r0]
	tst r0, r7, lsr #16
	popeq {r3, r4, r5, r6, r7, pc}
_022C1150:
	add r2, r6, r4, lsl #9
	mov r0, r6
	add r2, r2, #4
	bl ov00_022C1360
	mov r1, r0
	add r0, r6, #0x800
	cmp r5, #0
	ldrh r2, [r0, #0x10]
	beq _022C1180
	mov r0, r5
	bl FUN_0207C2E0
	b _022C1188
_022C1180:
	mov r0, #0
	bl FUN_0207C2B8
_022C1188:
	bl FUN_0207B7E4
	lsl r4, r4, #9
	ldrh r3, [r6, r4]
	mvn r1, r7, lsr #16
	add r2, r6, #2
	and r1, r3, r1
	strh r1, [r6, r4]
	ldrh r1, [r2, r4]
	orr r1, r1, r7, lsr #16
	strh r1, [r2, r4]
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C10EC

	arm_func_start ov00_022C11B8
ov00_022C11B8: @ 0x022C11B8
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov sb, r1
	bl FUN_0207B7E4
	add r1, sl, #0x800
	ldrh r1, [r1, #8]
	mov r4, r0
	lsl r1, r1, #9
	ldrh r1, [sl, r1]
	cmp r1, #0
	bne _022C12F8
	bl ov00_022BF294
	add r1, sl, #0x800
	ldrh r6, [r1, #8]
	ldrh r1, [r1, #0x18]
	mov r7, r0
	add r0, r6, #1
	and r5, r0, #3
	cmp r1, #1
	addeq r0, r5, #1
	andeq r8, r0, #3
	movne r8, r5
	add r1, sl, r8, lsl #9
	mov r0, #0
	mov r2, #0x200
	bl FUN_0207C2B8
	add r0, sl, #0x800
	ldrh r3, [r0, #0xe]
	orr r2, r7, #1
	lsl r1, r8, #9
	and r2, r3, r2
	strh r2, [sl, r1]
	strh r5, [r0, #8]
	ldrh r0, [r0, #0xe]
	lsl r1, r6, #9
	cmp sb, #1
	strh r0, [sl, r1]
	ldrheq r0, [sl, r1]
	biceq r0, r0, #1
	strheq r0, [sl, r1]
	mov r0, r4
	bl FUN_0207B7F8
	add r3, sl, #0x800
	ldrh r1, [r3, #0xe]
	mov r4, #1
	ldr r0, _022C1304 @ =ov00_022C0DF4
	and r1, r1, r7
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	ldrh r5, [r3, #0x16]
	mov r1, sl
	add r2, sl, r6, lsl #9
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldrh r3, [r3, #0x14]
	bl ov00_022C0498
	cmp r0, #7
	bne _022C12D4
	add r0, sl, r6, lsl #1
	ldr r1, _022C1308 @ =0x0000FFFF
	add r0, r0, #0x800
	strh r1, [r0]
	add r0, sl, #0x800
	ldrh r1, [r0, #0xa]
	add sp, sp, #0xc
	add r1, r1, #1
	and r1, r1, #3
	strh r1, [r0, #0xa]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_022C12D4:
	cmp r0, #0
	cmpne r0, #2
	addeq sp, sp, #0xc
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sl, #0x800
	mov r1, #5
	strh r1, [r0, #0x1c]
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_022C12F8:
	bl FUN_0207B7F8
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022C1304: .4byte ov00_022C0DF4
_022C1308: .4byte 0x0000FFFF
	arm_func_end ov00_022C11B8

	arm_func_start ov00_022C130C
ov00_022C130C: @ 0x022C130C
	push {r3, lr}
	mov lr, r1
	mov r3, r2
	cmp r0, #0
	ldrh r1, [lr]
	ldrh ip, [lr, #2]
	mov r2, #1
	moveq r0, #0
	popeq {r3, pc}
	cmp lr, #0
	moveq r0, #0
	popeq {r3, pc}
	tst r1, r2, lsl r3
	moveq r0, #0
	popeq {r3, pc}
	tst ip, r2, lsl r3
	moveq r0, #0
	popeq {r3, pc}
	add r2, lr, #4
	bl ov00_022C1360
	pop {r3, pc}
	arm_func_end ov00_022C130C

	arm_func_start ov00_022C1360
ov00_022C1360: @ 0x022C1360
	push {r3, r4, r5, lr}
	mov ip, #1
	lsl r3, ip, r3
	sub r3, r3, #1
	mov r5, r0
	and r0, r1, r3
	mov r4, r2
	bl FUN_02084F34
	add r1, r5, #0x800
	ldrh r1, [r1, #0x10]
	mla r0, r1, r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C1360

	arm_func_start ov00_022C1390
ov00_022C1390: @ 0x022C1390
	push {r3, lr}
	mov ip, #1
	rsb r2, ip, #0x10000
	mov r3, #2
	str ip, [sp]
	bl ov00_022C0810
	pop {r3, pc}
	arm_func_end ov00_022C1390
_022C13AC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x64, 0x0A, 0x2C, 0x02, 0x70, 0x40, 0x2D, 0xE9, 0x00, 0x60, 0xA0, 0xE1
	.byte 0x01, 0x50, 0xA0, 0xE1, 0x02, 0x40, 0xA0, 0xE1, 0x73, 0xF6, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x70, 0x80, 0xBD, 0x18, 0x03, 0x00, 0x55, 0xE3, 0x06, 0x00, 0xA0, 0x83, 0x70, 0x80, 0xBD, 0x88
	.byte 0x00, 0x00, 0x55, 0xE3, 0x05, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x54, 0xE3, 0x06, 0x00, 0xA0, 0x03
	.byte 0x70, 0x80, 0xBD, 0x08, 0x04, 0x00, 0xA0, 0xE1, 0x50, 0x10, 0xA0, 0xE3, 0xAF, 0xE3, 0xF6, 0xEB
	.byte 0x06, 0x10, 0xA0, 0xE1, 0x14, 0x00, 0xA0, 0xE3, 0xF5, 0xF5, 0xFF, 0xEB, 0x05, 0x20, 0xA0, 0xE1
	.byte 0x04, 0x30, 0xA0, 0xE1, 0x14, 0x00, 0xA0, 0xE3, 0x02, 0x10, 0xA0, 0xE3, 0x0C, 0xF6, 0xFF, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x02, 0x00, 0xA0, 0x03, 0x70, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022C142C
ov00_022C142C: @ 0x022C142C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022BED9C
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	cmp r6, #3
	movhi r0, #6
	pophi {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	beq _022C1478
	cmp r4, #0
	moveq r0, #6
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x50
	bl FUN_0207A2C0
_022C1478:
	mov r1, r7
	mov r0, #0x27
	bl ov00_022BEBE4
	mov r2, r6
	mov r3, r4
	mov r0, #0x27
	mov r1, #3
	str r5, [sp]
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C142C

	arm_func_start ov00_022C14A8
ov00_022C14A8: @ 0x022C14A8
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, #2
	mov r1, #7
	mov r2, #9
	mov r4, r3
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	cmp r6, #0
	addeq sp, sp, #0xc
	moveq r0, #6
	popeq {r4, r5, r6, r7, pc}
	cmp r5, #0x70
	addhi sp, sp, #0xc
	movhi r0, #6
	pophi {r4, r5, r6, r7, pc}
	ldr r1, _022C155C @ =0x0231EDE0
	mov r0, r6
	mov r2, r5
	bl FUN_0207C2E0
	ldr r0, _022C155C @ =0x0231EDE0
	mov r1, r5
	bl FUN_0207A2C0
	mov r1, r7
	mov r0, #0x18
	bl ov00_022BEBE4
	ldrh r0, [sp, #0x20]
	str r4, [sp]
	ldrb r1, [sp, #0x24]
	str r0, [sp, #4]
	ldr r2, _022C155C @ =0x0231EDE0
	str r1, [sp, #8]
	mov r3, r5
	mov r0, #0x18
	mov r1, #5
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022C155C: .4byte 0x0231EDE0
	arm_func_end ov00_022C14A8

	arm_func_start ov00_022C1560
ov00_022C1560: @ 0x022C1560
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022BED9C
	cmp r0, #0
	popne {r3, r4, r5, pc}
	cmp r4, #0
	cmpne r4, #1
	movne r0, #6
	popne {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x19
	bl ov00_022BEBE4
	mov r2, r4
	mov r0, #0x19
	mov r1, #1
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C1560

	arm_func_start ov00_022C15B0
ov00_022C15B0: @ 0x022C15B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022BED9C
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	mov r1, r7
	mov r0, #0x1d
	bl ov00_022BEBE4
	ldrh ip, [sp, #0x20]
	mov r2, r6
	mov r3, r5
	mov r0, #0x1d
	mov r1, #4
	stm sp, {r4, ip}
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C15B0

	arm_func_start ov00_022C1610
ov00_022C1610: @ 0x022C1610
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022BED70
	mov r0, #1
	mov r1, #2
	bl ov00_022BEDE4
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	mov r1, r7
	mov r0, #0x1e
	bl ov00_022BEBE4
	ldrh r2, [sp, #0x20]
	mov r3, #0x1e
	add r0, sp, #0
	mov r1, #0xa
	strh r3, [sp]
	strh r6, [sp, #2]
	strh r5, [sp, #4]
	strh r4, [sp, #6]
	strh r2, [sp, #8]
	bl ov00_022BED00
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	arm_func_end ov00_022C1610

	arm_func_start ov00_022C1688
ov00_022C1688: @ 0x022C1688
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	mov r1, #7
	mov r2, #9
	bl ov00_022BEDE4
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0x21
	bl ov00_022BEBE4
	mov r2, r4
	mov r0, #0x21
	mov r1, #1
	bl ov00_022BEC54
	cmp r0, #0
	moveq r0, #2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C1688

	arm_func_start ov00_022C16D4
ov00_022C16D4: @ 0x022C16D4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r1, [sp, #0x1c]
	mov r5, r2
	ldr ip, [sp, #0x18]
	add r2, r5, r1
	mov r7, r0
	stm r6, {r5, ip}
	sub r0, r2, #1
	mov r4, r3
	bl FUN_0208FEA4
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [r6, #8]
	mov r0, r7
	mov r1, r5
	str r4, [r6, #0x10]
	bl ov00_022C2BB8
	mov r2, r0
	mov r0, r4
	mov r1, #0
	bl FUN_0207C40C
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C16D4

	arm_func_start ov00_022C1730
ov00_022C1730: @ 0x022C1730
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x10]
	asr r6, r1, #5
	ldr r0, [r0, r6, lsl #2]
	and r4, r1, #0x1f
	mov r5, #1
	tst r0, r5, lsl r4
	mov r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	mul ip, r1, r2
	ldm r7, {r0, r1}
	sub r0, r0, ip
	cmp r2, r0
	movhi r2, r0
	mov r0, r3
	add r1, r1, ip
	bl FUN_0207C4C8
	ldr r2, [r7, #0x10]
	mov r0, #1
	ldr r1, [r2, r6, lsl #2]
	orr r1, r1, r5, lsl r4
	str r1, [r2, r6, lsl #2]
	ldr r1, [r7, #8]
	add r1, r1, #1
	str r1, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C1730

	arm_func_start ov00_022C179C
ov00_022C179C: @ 0x022C179C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x14]
	ldr r6, [r0, #0xc]
	add r5, r1, #1
	cmp r5, r6
	movge r5, #0
	ldr r7, [r0, #0x10]
	asr r0, r5, #5
	add r4, r7, r0, lsl #2
	mov r0, #0
	mov ip, r5
	and lr, r5, #0x1f
	mov r1, r0
	mov r2, #1
_022C17D4:
	ldr r3, [r4]
	tst r3, r2, lsl lr
	beq _022C1818
	add r5, r5, #1
	cmp r5, r6
	blt _022C17FC
	mov r5, r1
	mov lr, r1
	mov r4, r7
	b _022C180C
_022C17FC:
	add lr, lr, #1
	cmp lr, #0x20
	movge lr, r0
	addge r4, r4, #4
_022C180C:
	cmp r5, ip
	bne _022C17D4
	mvn r5, #0
_022C1818:
	mov r0, r5
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C179C

	arm_func_start ov00_022C1820
ov00_022C1820: @ 0x022C1820
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x2f4]
	mov lr, #0
	mov r5, r2
	mov r2, lr
	cmp r4, #0
	beq _022C18A0
_022C1840:
	cmp r1, #0x3e8
	bhs _022C1880
	cmp r1, r2
	bne _022C1890
	ldr ip, _022C18B8 @ =0x0231EE60
	ldm r4!, {r0, r1, r2, r3}
	mov lr, ip
	stm ip!, {r0, r1, r2, r3}
	ldm r4!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldm r4, {r0, r1}
	stm ip, {r0, r1}
	ldr r0, _022C18BC @ =0x0231EE60
	ldr r1, [r0, #4]
	str r1, [r0, #4]
	b _022C18A0
_022C1880:
	ldr r0, [r4]
	cmp r1, r0
	ldreq lr, [r4, #0x2c]
	beq _022C18A0
_022C1890:
	ldr r4, [r4, #0x28]
	add r2, r2, #1
	cmp r4, #0
	bne _022C1840
_022C18A0:
	cmp lr, #0
	addne r0, r6, #0x200
	ldrshne r0, [r0, #0xf2]
	mlane lr, r5, r0, lr
	mov r0, lr
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C18B8: .4byte 0x0231EE60
_022C18BC: .4byte 0x0231EE60
	arm_func_end ov00_022C1820

	arm_func_start ov00_022C18C0
ov00_022C18C0: @ 0x022C18C0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r8, r0
	ldr r0, [r8]
	cmp r0, #0
	addne r7, r0, #4
	moveq r7, #0
	cmp r7, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [r8, #0x2f8]
	add r0, r0, #1
	strb r0, [r8, #0x2f8]
	tst r0, #0xff
	ldrbeq r0, [r8, #0x2f8]
	addeq r0, r0, #1
	strbeq r0, [r8, #0x2f8]
	ldrb r0, [r8, #0x2f8]
	strb r0, [r7, #0xc]
	ldr r0, [r7]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _022C19AC
_022C191C: @ jump table
	b _022C19AC @ case 0
	b _022C19AC @ case 1
	b _022C19B4 @ case 2
	b _022C19AC @ case 3
	b _022C1948 @ case 4
	b _022C19AC @ case 5
	b _022C1948 @ case 6
	b _022C19AC @ case 7
	b _022C19AC @ case 8
	b _022C19AC @ case 9
	b _022C19B4 @ case 10
_022C1948:
	mov r5, #0
	add r6, r8, #0xb8
	add sb, r8, #0x200
	mov sl, r5
	mov r4, #1
_022C195C:
	ldrh r0, [r7, #8]
	tst r0, r4, lsl r5
	beq _022C1994
	add r3, r7, r5, lsl #2
	ldr r1, [r3, #0x1c]
	mov r0, r8
	str r1, [sp]
	ldrsh r2, [sb, #0xf0]
	mov r1, r6
	str r2, [sp, #4]
	ldr r2, [r7, #0x18]
	ldr r3, [r3, #0x5c]
	bl ov00_022C16D4
	str sl, [r6, #0x14]
_022C1994:
	add r5, r5, #1
	cmp r5, #0x10
	add r6, r6, #0x24
	blt _022C195C
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022C19AC:
	mov r0, #0
	str r0, [r7]
_022C19B4:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov00_022C18C0

	arm_func_start ov00_022C19BC
ov00_022C19BC: @ 0x022C19BC
	push {r3, r4, r5, lr}
	mov ip, r0
	add lr, ip, #0xac
	mov r0, #0x24
	mla r5, r2, r0, lr
	cmp r1, #0xd
	mov r4, #1
	beq _022C19F0
	ldrb lr, [r5, #1]
	ldrb r0, [r5, #2]
	cmp lr, r0
	moveq r4, #0
	beq _022C1A04
_022C19F0:
	cmp r1, #8
	bne _022C1A04
	ldr r0, [r5, #4]
	cmp r0, #0x3e8
	movlo r4, #0
_022C1A04:
	cmp r4, #0
	popeq {r3, r4, r5, pc}
	ldrb lr, [r5, #1]
	mov r0, #1
	lsl r0, r0, r2
	strb lr, [r5, #2]
	ldrb lr, [r5, #1]
	mov r2, #0xc
	strb lr, [ip, #0x1d]
	strh r3, [ip, #0x1e]
	str r1, [ip, #0x14]
	str r2, [ip, #0x10]
	strh r0, [ip, #0x1a]
	ldr r2, [ip, #0xc]
	cmp r2, #0
	beq _022C1A54
	ldr r0, [ip, #8]
	add r1, ip, #0x10
	blx r2
	pop {r3, r4, r5, pc}
_022C1A54:
	ldr r1, [ip, #0x20]
	cmp r1, #0
	popeq {r3, r4, r5, pc}
	add r0, ip, #0x10
	blx r1
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C19BC

	arm_func_start ov00_022C1A6C
ov00_022C1A6C: @ 0x022C1A6C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r0
	mov fp, r1
	add r4, sl, #0xac
	mov r3, #0x24
	mov r1, #0
	ldr r5, [sp, #0x38]
	mla r4, fp, r3, r4
	str r1, [sp, #0xc]
	mov sb, r2
	str r1, [sp, #8]
	cmp r5, #2
	bne _022C1B20
	mov r1, #1
	lsl r1, r1, fp
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldrb r4, [r4, #1]
	mov r3, #3
	asr r1, r2, #8
	strb r3, [sb]
	strb r2, [sb, #1]
	strb r1, [sb, #2]
	strb r4, [sb, #3]
	bl ov00_022C2CE0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strb r0, [sb, #4]
	asr r0, r0, #8
	strb r0, [sb, #5]
	add r1, sl, #0x200
	ldrh r2, [r1, #0xf2]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
	strb r2, [sb, #6]
	asr r0, r2, #8
	strb r0, [sb, #7]
	ldrh r0, [r1, #0xf0]
	strb r0, [sb, #8]
	asr r0, r0, #8
	strb r0, [sb, #9]
	b _022C1EA0
_022C1B20:
	cmp r5, #8
	bne _022C1B84
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r0, fp
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r3, [r4, #1]
	ldr r5, [r4, #4]
	mov r2, #9
	strb r2, [sb]
	asr r0, r1, #8
	strb r1, [sb, #1]
	strb r0, [sb, #2]
	strb r3, [sb, #3]
	strb r5, [sb, #4]
	lsr r0, r5, #8
	strb r0, [sb, #5]
	lsr r0, r5, #0x10
	strb r0, [sb, #6]
	lsr r0, r5, #0x18
	strb r0, [sb, #7]
	mov r0, #8
	str r0, [sp, #0xc]
	b _022C1EA0
_022C1B84:
	cmp r5, #0xa
	bne _022C1BC8
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r0, fp
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r3, [r4, #1]
	mov r2, #0xb
	asr r0, r1, #8
	strb r2, [sb]
	strb r1, [sb, #1]
	strb r0, [sb, #2]
	mov r0, #4
	strb r3, [sb, #3]
	str r0, [sp, #0xc]
	b _022C1EA0
_022C1BC8:
	cmp r5, #4
	bne _022C1DC8
	ldr r6, [sl, #0x2f4]
	ldr r5, [r4, #4]
	cmp r6, #0
	beq _022C1BF4
_022C1BE0:
	ldr r0, [r6]
	cmp r0, r5
	ldrne r6, [r6, #0x28]
	cmpne r6, #0
	bne _022C1BE0
_022C1BF4:
	cmp r6, #0
	beq _022C1EA0
	cmp r5, #0x3e8
	ldr r7, [r4, #8]
	blo _022C1C74
	ldr r0, [sl, #0x300]
	cmp r5, r0
	bne _022C1C64
	add r0, sl, #0x200
	ldrsh r1, [r0, #0xf2]
	ldr r0, [r6, #4]
	mov r8, #0
	add r0, r0, r1
	sub r0, r0, #1
	bl FUN_0208FEA4
	mov r2, r8
	b _022C1C48
_022C1C38:
	add r7, r7, #1
	cmp r7, r0
	movge r7, r2
	add r8, r8, #1
_022C1C48:
	cmp r8, #3
	bge _022C1C64
	ldr r1, [sl, #0x304]
	cmp r7, r1
	ldrne r1, [sl, #0x308]
	cmpne r7, r1
	beq _022C1C38
_022C1C64:
	str r5, [sl, #0x300]
	ldr r0, [sl, #0x304]
	str r0, [sl, #0x308]
	str r7, [sl, #0x304]
_022C1C74:
	ldr r2, [r6, #0x2c]
	mov r0, #0
	add r1, sl, #0x200
	str r0, [sp, #4]
	str r0, [sp]
	cmp r2, #0
	ldrsh r8, [r1, #0xf2]
	beq _022C1CB4
	mov r0, sl
	mov r1, r5
	mov r2, r7
	bl ov00_022C1820
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp]
	b _022C1D0C
_022C1CB4:
	ldrh r0, [r6, #0x32]
	cmp r0, #1
	bne _022C1D0C
	str r5, [sl, #0x24]
	ldr r3, [sp, #4]
	str r7, [sl, #0x28]
	strh r8, [sl, #0x30]
	mov r1, r3
	str r1, [sl, #0x2c]
	mov r0, sl
	mov r2, fp
	mov r1, #0xd
	bl ov00_022C19BC
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	beq _022C1D0C
	ldrsh r8, [sl, #0x30]
	str r0, [sp, #4]
	mov r0, #1
	ldr r5, [sl, #0x24]
	ldr r7, [sl, #0x28]
	str r0, [sp]
_022C1D0C:
	ldr r0, [sp]
	cmp r0, #0
	beq _022C1EA0
	ldr r0, [sl, #0x2ec]
	ldrb r3, [r4, #1]
	cmp r0, #0
	ldreq r0, _022C1ECC @ =0x0000FFFE
	mov r2, #5
	movne r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	strb r2, [sb]
	asr r0, r1, #8
	strb r1, [sb, #1]
	strb r0, [sb, #2]
	strb r3, [sb, #3]
	strb r5, [sb, #4]
	lsr r0, r5, #8
	strb r0, [sb, #5]
	lsr r0, r5, #0x10
	strb r0, [sb, #6]
	lsr r0, r5, #0x18
	strb r0, [sb, #7]
	strb r7, [sb, #8]
	lsr r0, r7, #8
	strb r0, [sb, #9]
	lsr r0, r7, #0x10
	strb r0, [sb, #0xa]
	lsr r0, r7, #0x18
	strb r0, [sb, #0xb]
	ldr r0, [sp, #4]
	mov r2, r8
	cmp r0, #0
	bne _022C1DAC
	add r0, sb, #0xc
	mov r1, #0
	bl FUN_0207C40C
	b _022C1DB4
_022C1DAC:
	add r1, sb, #0xc
	bl FUN_0207C4C8
_022C1DB4:
	add r0, r8, #0xc
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
	b _022C1EA0
_022C1DC8:
	cmp r5, #6
	bne _022C1EA0
	ldmib r4, {r5, r6}
	add r3, sl, #0x200
	mov r1, r5
	mov r2, r6
	ldrsh r7, [r3, #0xf2]
	bl ov00_022C1820
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	cmpeq r0, #0
	beq _022C1EA0
	ldr r1, [sl, #0x2ec]
	ldrb r4, [r4, #1]
	cmp r1, #0
	ldreq r1, _022C1ED0 @ =0x0000FFFF
	mov r3, #7
	movne r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	strb r3, [sb]
	asr r1, r2, #8
	strb r2, [sb, #1]
	strb r1, [sb, #2]
	strb r4, [sb, #3]
	strb r5, [sb, #4]
	lsr r1, r5, #8
	strb r1, [sb, #5]
	lsr r1, r5, #0x10
	strb r1, [sb, #6]
	lsr r1, r5, #0x18
	strb r1, [sb, #7]
	strb r6, [sb, #8]
	lsr r1, r6, #8
	strb r1, [sb, #9]
	lsr r1, r6, #0x10
	strb r1, [sb, #0xa]
	lsr r1, r6, #0x18
	strb r1, [sb, #0xb]
	cmp r0, #0
	mov r2, r7
	bne _022C1E88
	add r0, sb, #0xc
	mov r1, #0
	bl FUN_0207C40C
	b _022C1E90
_022C1E88:
	add r1, sb, #0xc
	bl FUN_0207C4C8
_022C1E90:
	add r0, r7, #0xc
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #8]
_022C1EA0:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022C1EC0
	mov r0, #1
	mvn r0, r0, lsl fp
	ldr r1, [sl, #0x30c]
	and r0, r1, r0
	str r0, [sl, #0x30c]
_022C1EC0:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C1ECC: .4byte 0x0000FFFE
_022C1ED0: .4byte 0x0000FFFF
	arm_func_end ov00_022C1A6C

	arm_func_start ov00_022C1ED4
ov00_022C1ED4: @ 0x022C1ED4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, [r0]
	mov r5, r1
	cmp r2, #0
	mov r1, #0
	addne r4, r2, #4
	moveq r4, r1
	cmp r4, #0
	beq _022C20B4
	ldr r2, [r4]
	cmp r2, #0xa
	addls pc, pc, r2, lsl #2
	b _022C20B4
_022C1F08: @ jump table
	b _022C20B4 @ case 0
	b _022C20B4 @ case 1
	b _022C1F34 @ case 2
	b _022C20B4 @ case 3
	b _022C1F80 @ case 4
	b _022C20B4 @ case 5
	b _022C1F80 @ case 6
	b _022C20B4 @ case 7
	b _022C20B4 @ case 8
	b _022C20B4 @ case 9
	b _022C2078 @ case 10
_022C1F34:
	ldrh r3, [r4, #8]
	ldrb r4, [r4, #0xc]
	mov r2, #2
	asr r1, r3, #8
	strb r2, [r5]
	strb r3, [r5, #1]
	strb r1, [r5, #2]
	strb r4, [r5, #3]
	add r0, r0, #0x200
	ldrh r2, [r0, #0xf2]
	mov r1, #8
	strb r2, [r5, #4]
	asr r2, r2, #8
	strb r2, [r5, #5]
	ldrh r0, [r0, #0xf0]
	strb r0, [r5, #6]
	asr r0, r0, #8
	strb r0, [r5, #7]
	b _022C20B4
_022C1F80:
	add sb, r0, #0xb8
	mov r8, #0
	mov r7, #8
	mov fp, #1
	mvn r6, #0
_022C1F94:
	ldrh r0, [r4, #8]
	lsl sl, fp, r8
	tst r0, fp, lsl r8
	beq _022C2064
	mov r0, sb
	bl ov00_022C179C
	cmp r0, r6
	bne _022C1FFC
	ldrb r1, [r4, #0xc]
	lsl r0, sl, #0x10
	lsr r0, r0, #0x10
	strb r7, [r5]
	strb r0, [r5, #1]
	asr r0, r0, #8
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	ldr r2, [r4, #0x14]
	mov r1, r7
	strb r2, [r5, #4]
	lsr r0, r2, #8
	strb r0, [r5, #5]
	lsr r0, r2, #0x10
	strb r0, [r5, #6]
	lsr r0, r2, #0x18
	strb r0, [r5, #7]
	b _022C205C
_022C1FFC:
	ldrh r3, [r4, #8]
	ldrb sl, [r4, #0xc]
	ldr r2, [r4]
	asr r1, r3, #8
	strb r2, [r5]
	strb r3, [r5, #1]
	strb r1, [r5, #2]
	strb sl, [r5, #3]
	ldr r3, [r4, #0x14]
	lsr r1, r0, #8
	strb r3, [r5, #4]
	lsr r2, r3, #8
	strb r2, [r5, #5]
	lsr r2, r3, #0x10
	strb r2, [r5, #6]
	lsr r2, r3, #0x18
	strb r2, [r5, #7]
	strb r0, [r5, #8]
	strb r1, [r5, #9]
	lsr r1, r0, #0x10
	strb r1, [r5, #0xa]
	lsr r0, r0, #0x18
	mov r1, #0xc
	strb r0, [r5, #0xb]
_022C205C:
	cmp r1, #0
	bne _022C20B4
_022C2064:
	add r8, r8, #1
	cmp r8, #0x10
	add sb, sb, #0x24
	blt _022C1F94
	b _022C20B4
_022C2078:
	ldrh r2, [r4, #8]
	ldrb r3, [r4, #0xc]
	mov r1, #0xa
	asr r0, r2, #8
	strb r1, [r5]
	strb r2, [r5, #1]
	strb r0, [r5, #2]
	strb r3, [r5, #3]
	ldrb r3, [r4, #0x1d]
	add r0, r4, #0x14
	add r1, r5, #5
	mov r2, #9
	strb r3, [r5, #4]
	bl FUN_0207C4C8
	mov r1, #0xe
_022C20B4:
	mov r0, r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022C1ED4

	arm_func_start ov00_022C20BC
ov00_022C20BC: @ 0x022C20BC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov sb, r1
	mov r8, r2
	ldr r6, [sl, #0x30c]
	movs r0, #0
	bne _022C2188
	cmp r6, #0
	beq _022C2188
	ldr r1, [sl, #0x2fc]
	mov r2, #1
	mov r3, r6
	tst r6, r2, lsl r1
	clzeq r3, r3
	rsbeq r1, r3, #0x1f
	streq r1, [sl, #0x2fc]
	ldr r7, [sl, #0x2fc]
	mvn r2, r6
	sub r1, r6, #1
	add r4, sl, #0xac
	and r5, r2, r1
	mov fp, #1
_022C2118:
	add r7, r7, #1
	cmp r6, fp, lsl r7
	movlt r1, r5
	clzlt r1, r1
	rsblt r7, r1, #0x20
	ldr r2, [sl, #0x30c]
	mov r1, #1
	tst r2, r1, lsl r7
	beq _022C217C
	mov r1, #0x24
	mul r1, r7, r1
	ldrb r1, [r4, r1]
	cmp r1, #4
	bne _022C2174
	mov r0, #4
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, sl
	mov r1, r7
	mov r2, sb
	mov r3, r8
	bl ov00_022C1A6C
_022C2174:
	cmp r0, #0
	strne r7, [sl, #0x2fc]
_022C217C:
	ldr r1, [sl, #0x2fc]
	cmp r7, r1
	bne _022C2118
_022C2188:
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [sl, #0x30c]
	ldr r1, [sl, #0x2fc]
	mov r2, #1
	tst r3, r2, lsl r1
	clzeq r3, r3
	rsbeq r1, r3, #0x1f
	streq r1, [sl, #0x2fc]
	ldr r7, [sl, #0x2fc]
	mvn r2, r6
	sub r1, r6, #1
	add r4, sl, #0xac
	and r5, r2, r1
	mov fp, #1
_022C21D4:
	add r7, r7, #1
	mov r1, #1
	cmp r6, r1, lsl r7
	movlt r1, r5
	clzlt r1, r1
	rsblt r7, r1, #0x20
	ldr r1, [sl, #0x30c]
	tst r1, fp, lsl r7
	beq _022C2234
	mov r1, #0x24
	mul r1, r7, r1
	ldrb r1, [r4, r1]
	cmp r1, #6
	bne _022C222C
	mov r0, #6
	str r0, [sp]
	mov r0, sl
	mov r1, r7
	mov r2, sb
	mov r3, r8
	str fp, [sp, #4]
	bl ov00_022C1A6C
_022C222C:
	cmp r0, #0
	strne r7, [sl, #0x2fc]
_022C2234:
	ldr r1, [sl, #0x2fc]
	cmp r7, r1
	bne _022C21D4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022C20BC

	arm_func_start ov00_022C2248
ov00_022C2248: @ 0x022C2248
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	mov r0, #0
	ldr r5, [sl, #0x2fc]
	sub r4, r0, #1
	mov sb, r1
	mov r8, r2
	str r3, [sp, #8]
	cmp r5, r4
	bne _022C2284
	movs r1, r3
	movne r1, #1
	moveq r1, r0
	str r1, [sl, #0x2fc]
_022C2284:
	cmp sb, #0
	beq _022C2294
	cmp r8, #0
	bgt _022C22A0
_022C2294:
	add sp, sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C22A0:
	ldr r1, [sl, #0x30c]
	str r1, [sp, #0xc]
	cmp r1, #0
	beq _022C2384
	ldr r2, [sl, #0x2fc]
	mov r3, #1
	mov r4, r1
	tst r1, r3, lsl r2
	clzeq r4, r4
	rsbeq r1, r4, #0x1f
	streq r1, [sl, #0x2fc]
	ldr r1, [sp, #0xc]
	ldr r7, [sl, #0x2fc]
	mvn r2, r1
	sub r1, r1, #1
	and r1, r2, r1
	ldr fp, _022C243C @ =0x0231804C
	add r5, sl, #0xac
	str r1, [sp, #0x10]
_022C22EC:
	ldr r2, [sp, #0xc]
	add r7, r7, #1
	mov r1, #1
	cmp r2, r1, lsl r7
	ldrlt r1, [sp, #0x10]
	clzlt r1, r1
	rsblt r7, r1, #0x20
	ldr r2, [sp, #0xc]
	mov r1, #1
	tst r2, r1, lsl r7
	beq _022C2378
	mov r1, #0x24
	mul r4, r7, r1
	mov r6, #0
	b _022C235C
_022C2328:
	ldrb r2, [r5, r4]
	ldr r1, [fp, r6, lsl #2]
	cmp r2, r1
	bne _022C2358
	str r1, [sp]
	mov r0, #0
	arm_func_end ov00_022C2248

	arm_func_start ov00_022C2340
ov00_022C2340: @ 0x022C2340
	str r0, [sp, #4]
	mov r0, sl
	mov r1, r7
	mov r2, sb
	mov r3, r8
	bl ov00_022C1A6C
_022C2358:
	add r6, r6, #1
_022C235C:
	cmp r0, #0
	bne _022C2370
	ldr r1, [fp, r6, lsl #2]
	cmp r1, #0
	bne _022C2328
_022C2370:
	cmp r0, #0
	strne r7, [sl, #0x2fc]
_022C2378:
	ldr r1, [sl, #0x2fc]
	cmp r7, r1
	bne _022C22EC
_022C2384:
	cmp r0, #0
	addne sp, sp, #0x14
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	mov r1, sb
	cmp r0, #0
	mov r0, sl
	beq _022C23C8
	mov r2, r8
	bl ov00_022C1ED4
	cmp r0, #0
	arm_func_end ov00_022C2340

	arm_func_start ov00_022C23B0
ov00_022C23B0: @ 0x022C23B0
	bne _022C23E8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov00_022C20BC
	b _022C23E8
_022C23C8:
	mov r2, r8
	bl ov00_022C20BC
	cmp r0, #0
	bne _022C23E8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov00_022C1ED4
_022C23E8:
	cmp r0, #0
	arm_func_end ov00_022C23B0

	arm_func_start ov00_022C23EC
ov00_022C23EC: @ 0x022C23EC
	addne sp, sp, #0x14
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	mov r1, #1
	cmp r0, #0
	ldrne r0, _022C2440 @ =0x0000FFFE
	strb r1, [sb]
	moveq r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strb r0, [sb, #1]
	asr r0, r0, #8
	strb r0, [sb, #2]
	mov r0, #0
	strb r0, [sb, #3]
	mov r0, #4
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C243C: .4byte 0x0231804C
_022C2440: .4byte 0x0000FFFE
	arm_func_end ov00_022C23EC

	arm_func_start ov00_022C2444
ov00_022C2444: @ 0x022C2444
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r3, #0x24
	arm_func_end ov00_022C2444

	arm_func_start ov00_022C2450
ov00_022C2450: @ 0x022C2450
	mla r3, r2, r3, r5
	ldr r0, [r5]
	ldrb r6, [r3, #0xad]
	cmp r0, #0
	addne r4, r0, #4
	moveq r4, #0
	ldrb r3, [r4, #0xc]
	cmp r3, r6
	popne {r4, r5, r6, pc}
	mov ip, #1
	lsl lr, ip, r2
	strb r6, [r4, #0xd]
	strh lr, [r4, #0xa]
	ldrh r3, [r4, #8]
	tst r3, ip, lsl r2
	beq _022C24D8
	mvn r2, lr
	and r2, r3, r2
	strh r2, [r4, #8]
	str r1, [r4, #4]
	mov r1, #0
	strh r1, [r4, #0xe]
	ldr r2, [r0, #0xa0]
	cmp r2, #0
	beq _022C24C4
	ldr r0, [r5, #8]
	mov r1, r4
	blx r2
	b _022C24D8
_022C24C4:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _022C24D8
	mov r0, r4
	blx r1
_022C24D8:
	ldrh r0, [r4, #8]
	arm_func_end ov00_022C2450

	arm_func_start ov00_022C24DC
ov00_022C24DC: @ 0x022C24DC
	cmp r0, #0
	popne {r4, r5, r6, pc}
	ldr r3, [r5]
	mov r0, #1
	ldr r1, [r3]
	sub r2, r0, #1
	str r1, [r5]
_022C24F8:
	ldr r0, [r5, #4]
	subs r2, r2, #1
	str r0, [r3]
	str r3, [r5, #4]
	add r3, r3, #0xa4
	bpl _022C24F8
	mov r0, r5
	bl ov00_022C18C0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C24DC

	arm_func_start ov00_022C251C
ov00_022C251C: @ 0x022C251C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r1
	mov r1, #0x24
	arm_func_end ov00_022C251C

	arm_func_start ov00_022C2528
ov00_022C2528: @ 0x022C2528
	mul r1, r4, r1
	mov r5, r0
	mov r6, #1
	movs ip, r2
	mvn r2, r6, lsl r4
	ldr r7, [r5, #0x30c]
	add r8, r5, #0xac
	and r2, r7, r2
	str r2, [r5, #0x30c]
	add r2, r8, r1
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r3, #4
	poplo {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r8, [ip]
	ldrb sl, [ip, #1]
	ldrb lr, [ip, #2]
	ldrb r7, [ip, #3]
	sub sb, r6, #2
	orr sl, sl, lr, lsl #8
	strb r7, [r2, #1]
	strb r8, [r2]
	ldr lr, [r5, #0x2ec]
	lsl r7, sl, #0x10
	cmp lr, sb
	beq _022C2914
	lsl sb, r6, lr
	tst sb, r7, lsr #16
	beq _022C2914
	cmp r8, #0x11
	bhs _022C2914
	mov r7, #0xc
	mul sb, r8, r7
	ldr r7, _022C2940 @ =0x02318064
	ldr r7, [r7, sb]
	cmp r3, r7
	blo _022C2914
	ldr r3, _022C2944 @ =0x02318060
	add r3, r3, sb
	ldr r3, [r3, #8]
	lsl r7, r3, #0x1f
	lsrs r7, r7, #0x1f
	beq _022C2728
	cmp r8, #1
	beq _022C2914
	cmp r8, #2
	bne _022C2638
	ldrb r2, [ip, #4]
	ldrb r1, [ip, #5]
	mov r0, #0
	orr r1, r2, r1, lsl #8
	strh r1, [r5, #0x26]
	ldrb r2, [ip, #6]
	ldrb r1, [ip, #7]
	orr r1, r2, r1, lsl #8
	strh r1, [r5, #0x28]
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x2ec]
	cmp r0, #0
	beq _022C2628
	ldrsh r1, [r5, #0x28]
	add r0, r5, #0x200
	strh r1, [r0, #0xf2]
	ldrsh r1, [r5, #0x26]
	strh r1, [r0, #0xf0]
_022C2628:
	ldr r0, [r5, #0x30c]
	orr r0, r0, r6, lsl r4
	str r0, [r5, #0x30c]
	b _022C2914
_022C2638:
	cmp r8, #0xa
	bne _022C2674
	ldrb r0, [ip, #4]
	add r1, r5, #0x24
	strb r0, [r5, #0x2d]
	cmp r0, #9
	movhi r0, #0
	strbhi r0, [r5, #0x2d]
	ldrb r2, [r5, #0x2d]
	add r0, ip, #5
	bl FUN_0207C4C8
	ldr r0, [r5, #0x30c]
	orr r0, r0, r6, lsl r4
	str r0, [r5, #0x30c]
	b _022C2914
_022C2674:
	cmp r8, #4
	cmpne r8, #6
	bne _022C26D0
	ldrb r1, [ip, #4]
	ldrb r0, [ip, #5]
	ldrb r3, [ip, #6]
	ldrb r7, [ip, #7]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r0, r0, r7, lsl #24
	str r0, [r2, #4]
	ldrb r1, [ip, #8]
	ldrb r0, [ip, #9]
	ldrb r3, [ip, #0xa]
	ldrb r7, [ip, #0xb]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r0, r0, r7, lsl #24
	str r0, [r2, #8]
	ldr r0, [r5, #0x30c]
	orr r0, r0, r6, lsl r4
	str r0, [r5, #0x30c]
	b _022C2914
_022C26D0:
	cmp r8, #8
	bne _022C2914
	ldrb r1, [ip, #4]
	ldrb r0, [ip, #5]
	ldrb r3, [ip, #6]
	ldrb r7, [ip, #7]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r0, r0, r7, lsl #24
	str r0, [r5, #0x24]
	ldrb r1, [ip, #4]
	ldrb r0, [ip, #5]
	ldrb r3, [ip, #6]
	ldrb r7, [ip, #7]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r0, r0, r7, lsl #24
	str r0, [r2, #4]
	ldr r0, [r5, #0x30c]
	orr r0, r0, r6, lsl r4
	str r0, [r5, #0x30c]
	b _022C2914
_022C2728:
	lsl r2, r3, #0x1e
	lsrs r2, r2, #0x1f
	beq _022C2904
	ldr r0, [r5]
	cmp r0, #0
	addne r2, r0, #4
	moveq r2, #0
	cmp r2, #0
	beq _022C2914
	cmp r8, #3
	bne _022C27C4
	ldr r0, [r2]
	cmp r0, #2
	bne _022C2914
	ldrb r1, [ip, #4]
	ldrb r0, [ip, #5]
	orr r0, r1, r0, lsl #8
	strh r0, [r2, #0x14]
	ldrb r1, [ip, #6]
	ldrb r0, [ip, #7]
	orr r0, r1, r0, lsl #8
	strh r0, [r2, #0x16]
	ldrb r1, [ip, #8]
	ldrb r0, [ip, #9]
	orr r0, r1, r0, lsl #8
	strh r0, [r2, #0x18]
	ldr r0, [r5, #0x2ec]
	cmp r0, #0
	beq _022C27B0
	ldrsh r1, [r2, #0x18]
	add r0, r5, #0x200
	strh r1, [r0, #0xf2]
	ldrsh r1, [r2, #0x16]
	strh r1, [r0, #0xf0]
_022C27B0:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl ov00_022C2444
	b _022C2914
_022C27C4:
	cmp r8, #0xb
	bne _022C27EC
	ldr r0, [r2]
	cmp r0, #0xa
	bne _022C2914
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl ov00_022C2444
	b _022C2914
_022C27EC:
	cmp r8, #5
	cmpne r8, #7
	bne _022C28A8
	ldr r0, [r2]
	cmp r0, #4
	cmpne r0, #6
	bne _022C2914
	ldrb r3, [ip, #4]
	ldrb r0, [ip, #5]
	ldrb sb, [ip, #8]
	ldrb lr, [ip, #9]
	ldrb r7, [ip, #6]
	orr r3, r3, r0, lsl #8
	ldrb r0, [ip, #0xa]
	orr sb, sb, lr, lsl #8
	ldrb lr, [ip, #7]
	orr r7, r3, r7, lsl #16
	ldrb r3, [ip, #0xb]
	orr sb, sb, r0, lsl #16
	ldr r0, [r2, #0x14]
	orr r7, r7, lr, lsl #24
	cmp r7, r0
	orr r7, sb, r3, lsl #24
	bne _022C2914
	ldrh r0, [r2, #8]
	tst r0, r6, lsl r4
	beq _022C2914
	add r0, r5, #0xb8
	add sb, r0, r1
	ldr r0, [sb, #0xc]
	cmp r7, r0
	blt _022C2884
	mov r0, r5
	mov r2, r4
	mov r1, #0xf
	mov r3, #6
	bl ov00_022C19BC
	b _022C2914
_022C2884:
	add r0, r5, #0x200
	ldrsh r2, [r0, #0xf0]
	mov r0, sb
	mov r1, r7
	add r3, ip, #0xc
	bl ov00_022C1730
	cmp r0, #0
	strne r7, [sb, #0x14]
	b _022C2914
_022C28A8:
	cmp r8, #9
	bne _022C2914
	ldr r0, [r2]
	cmp r0, #4
	cmpne r0, #6
	bne _022C2914
	ldrb r3, [ip, #4]
	ldrb r1, [ip, #5]
	ldrb r7, [ip, #6]
	ldrb sb, [ip, #7]
	orr r1, r3, r1, lsl #8
	orr r1, r1, r7, lsl #16
	ldr r2, [r2, #0x14]
	orr r1, r1, sb, lsl #24
	cmp r2, r1
	bne _022C2914
	cmp r0, #4
	moveq r1, #5
	movne r1, #7
	mov r0, r5
	mov r2, r4
	bl ov00_022C2444
	b _022C2914
_022C2904:
	mov r2, r4
	mov r1, #0xf
	mov r3, #3
	bl ov00_022C19BC
_022C2914:
	ldr r0, [r5, #0x30c]
	tst r0, r6, lsl r4
	cmpne r8, #4
	cmpne r8, #6
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r5
	mov r1, r8
	mov r2, r4
	mov r3, #0
	bl ov00_022C19BC
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022C2940: .4byte 0x02318064
_022C2944: .4byte 0x02318060
	arm_func_end ov00_022C2528

	arm_func_start ov00_022C2948
ov00_022C2948: @ 0x022C2948
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	str r1, [r5, #8]
	str r4, [r5, #0xc]
	mvn r0, #0
	str r0, [r5, #0x300]
	str r0, [r5, #0x304]
	str r0, [r5, #0x308]
	mov r1, #0
	str r1, [r5]
	str r1, [r5, #4]
	strb r1, [r5, #0x2f8]
	str r0, [r5, #0x2fc]
	add r0, r5, #0x10
	mov r2, #0x9c
	str r1, [r5, #0x30c]
	bl FUN_0207C40C
	add r0, r5, #0xac
	mov r1, #0
	mov r2, #0x240
	bl FUN_0207C40C
	mov r0, r5
	mov r1, r4
	bl ov00_022C29B0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C2948

	arm_func_start ov00_022C29B0
ov00_022C29B0: @ 0x022C29B0
	mvn r2, #0
	str r2, [r0, #0x2ec]
	add r2, r0, #0x200
	mov r3, #0
	strh r3, [r2, #0xf0]
	strh r3, [r2, #0xf2]
	str r3, [r0, #0x2f4]
	str r1, [r0, #0xc]
	ldr r3, [r0]
	cmp r3, #0
	beq _022C29F8
	mov r1, #0
_022C29E0:
	ldr r2, [r3]
	str r2, [r0]
	str r1, [r3, #4]
	ldr r3, [r0]
	cmp r3, #0
	bne _022C29E0
_022C29F8:
	mov r2, #0
	str r2, [r0, #0x10]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, r2
_022C2A0C:
	add r2, r2, #1
	strb r1, [r0, #0xae]
	cmp r2, #0x10
	add r0, r0, #0x24
	blt _022C2A0C
	bx lr
	arm_func_end ov00_022C29B0

	arm_func_start ov00_022C2A24
ov00_022C2A24: @ 0x022C2A24
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bl FUN_0207B7E4
	mov r4, r0
	cmp r7, #0
	beq _022C2A90
	ldr r0, [r8]
	mov r1, r8
	cmp r0, #0
	beq _022C2A68
_022C2A58:
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _022C2A58
_022C2A68:
	str r7, [r1]
	mov r0, #0
	str r0, [r7]
	strh r6, [r7, #0xc]
	str r5, [r7, #0xa0]
	ldr r0, [r8]
	cmp r0, r7
	bne _022C2A90
	mov r0, r8
	bl ov00_022C18C0
_022C2A90:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022C2A24

	arm_func_start ov00_022C2A9C
ov00_022C2A9C: @ 0x022C2A9C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	bl FUN_0207B7E4
	ldr r6, [sl]
	str r0, [sp]
	cmp r6, #0
	addne r8, r6, #4
	moveq r8, #0
	cmp r8, #0
	beq _022C2BA8
	ldrh r0, [r8, #8]
	mov fp, #0x10
	mov r7, #0
	and sb, sb, r0
	mov r4, fp
	mov r5, #1
_022C2AE0:
	cmp sb, r5, lsl r7
	lsl r2, r5, r7
	blt _022C2B6C
	tst r2, sb
	mvneq r0, r2
	andeq sb, sb, r0
	beq _022C2B64
	ldr r0, [r6, #0xa0]
	cmp r0, #0
	beq _022C2B34
	str r4, [r8, #4]
	ldrh r3, [r8, #8]
	mvn r0, r2
	mov r1, r8
	and r0, r3, r0
	strh r0, [r8, #8]
	strh r2, [r8, #0xa]
	ldr r0, [sl, #8]
	ldr r2, [r6, #0xa0]
	blx r2
	b _022C2B64
_022C2B34:
	ldr r0, [r8, #0x10]
	cmp r0, #0
	beq _022C2B64
	str fp, [r8, #4]
	ldrh r3, [r8, #8]
	mvn r1, r2
	mov r0, r8
	and r1, r3, r1
	strh r1, [r8, #8]
	strh r2, [r8, #0xa]
	ldr r1, [r8, #0x10]
	blx r1
_022C2B64:
	add r7, r7, #1
	b _022C2AE0
_022C2B6C:
	ldrh r0, [r8, #8]
	cmp r0, #0
	bne _022C2BA8
	ldr r2, [sl]
	sub r1, r5, #1
	ldr r0, [r2]
	str r0, [sl]
_022C2B88:
	ldr r0, [sl, #4]
	subs r1, r1, #1
	str r0, [r2]
	str r2, [sl, #4]
	add r2, r2, #0xa4
	bpl _022C2B88
	mov r0, sl
	bl ov00_022C18C0
_022C2BA8:
	ldr r0, [sp]
	bl FUN_0207B7F8
	mov r0, sb
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022C2A9C

	arm_func_start ov00_022C2BB8
ov00_022C2BB8: @ 0x022C2BB8
	push {r3, lr}
	add r0, r0, #0x200
	ldrsh r2, [r0, #0xf0]
	add r0, r1, r2
	mov r1, r2
	sub r0, r0, #1
	bl FUN_0208FEA4
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	lsl r0, r0, #2
	pop {r3, pc}
	arm_func_end ov00_022C2BB8

	arm_func_start ov00_022C2BE4
ov00_022C2BE4: @ 0x022C2BE4
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl FUN_0207B7E4
	ldr r1, [r8, #0x2f4]
	mov r5, r0
	cmp r1, #0
	add r0, r8, #0x2f4
	beq _022C2C20
_022C2C10:
	add r0, r1, #0x28
	ldr r1, [r1, #0x28]
	cmp r1, #0
	bne _022C2C10
_022C2C20:
	str r4, [r0]
	mov r1, #0
	str r1, [r4, #0x28]
	ldr r0, [sp, #0x1c]
	str r7, [r4]
	str r0, [r4, #4]
	cmp r6, #0
	mov r2, #0x20
	bne _022C2C50
	add r0, r4, #8
	bl FUN_0207C40C
	b _022C2C5C
_022C2C50:
	mov r0, r6
	add r1, r4, #8
	bl FUN_0207C4C8
_022C2C5C:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r4, #0x2c]
	cmp r0, #0
	strh r1, [r4, #0x30]
	moveq r1, #1
	mov r0, r5
	strh r1, [r4, #0x32]
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022C2BE4

	arm_func_start ov00_022C2C84
ov00_022C2C84: @ 0x022C2C84
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl FUN_0207B7E4
	ldr r3, [r6, #0x2f4]
	add r2, r6, #0x2f4
	cmp r3, #0
	beq _022C2CD4
_022C2CA8:
	ldr r1, [r3]
	cmp r1, r5
	bne _022C2CC4
	ldr r1, [r3, #0x28]
	mov r4, r3
	str r1, [r2]
	b _022C2CD4
_022C2CC4:
	add r2, r3, #0x28
	ldr r3, [r3, #0x28]
	cmp r3, #0
	bne _022C2CA8
_022C2CD4:
	bl FUN_0207B7F8
	mov r0, r4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C2C84

	arm_func_start ov00_022C2CE0
ov00_022C2CE0: @ 0x022C2CE0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_0207B7E4
	ldr r1, [r5, #0x2f4]
	cmp r1, #0
	beq _022C2D0C
_022C2CFC:
	ldr r1, [r1, #0x28]
	add r4, r4, #1
	cmp r1, #0
	bne _022C2CFC
_022C2D0C:
	bl FUN_0207B7F8
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C2CE0

	arm_func_start ov00_022C2D18
ov00_022C2D18: @ 0x022C2D18
	ldr r0, _022C2D38 @ =0x0231EE88
	ldr r0, [r0, #0x440]
	cmp r0, #0
	bxeq lr
_022C2D28:
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _022C2D28
	bx lr
	.align 2, 0
_022C2D38: .4byte 0x0231EE88
	arm_func_end ov00_022C2D18

	arm_func_start ov00_022C2D3C
ov00_022C2D3C: @ 0x022C2D3C
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	mvn r1, r0
	sub r0, r0, #1
	and r0, r1, r0
	clz r0, r0
	rsb r0, r0, #0x20
	bx lr
	arm_func_end ov00_022C2D3C

	arm_func_start ov00_022C2D60
ov00_022C2D60: @ 0x022C2D60
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_0207B7E4
	ldr r3, _022C2E0C @ =0x0231EE88
	mov r4, r0
	ldr r0, [r3]
	cmp r0, #0
	bne _022C2E00
	mov r1, #0
	mov ip, #1
	ldr r0, _022C2E10 @ =0x0231EFD4
	mov r2, r1
	str ip, [r3]
	bl ov00_022C2948
	ldr r3, _022C2E0C @ =0x0231EE88
	ldr r0, _022C2E14 @ =0x0231EE8C
	mov r1, #0
	mov r2, #0x148
	str r5, [r3, #0x16c]
	bl FUN_0207C40C
	mov r0, #2
	sub r2, r0, #1
	ldr r3, _022C2E14 @ =0x0231EE8C
	ldr r0, _022C2E0C @ =0x0231EE88
_022C2DC8:
	ldr r1, [r0, #0x150]
	subs r2, r2, #1
	str r1, [r3]
	str r3, [r0, #0x150]
	add r3, r3, #0xa4
	bpl _022C2DC8
	ldr r1, _022C2E0C @ =0x0231EE88
	mov r2, #0
	ldr r0, _022C2E18 @ =0x0231F288
	str r2, [r1, #0x438]
	sub r1, r7, #0xe
	strh r1, [r0, #0x3e]
	sub r1, r6, #0xe
	strh r1, [r0, #0x3c]
_022C2E00:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C2E0C: .4byte 0x0231EE88
_022C2E10: .4byte 0x0231EFD4
_022C2E14: .4byte 0x0231EE8C
_022C2E18: .4byte 0x0231F288
	arm_func_end ov00_022C2D60

	arm_func_start ov00_022C2E1C
ov00_022C2E1C: @ 0x022C2E1C
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0207B7E4
	ldr r3, _022C2EA0 @ =0x0231EE88
	mov r4, r0
	ldr r0, [r3]
	cmp r0, #0
	bne _022C2E94
	mov r1, #0
	mov ip, #1
	ldr r0, _022C2EA4 @ =0x0231EFD4
	mov r2, r1
	str ip, [r3]
	bl ov00_022C2948
	ldr r3, _022C2EA0 @ =0x0231EE88
	ldr r0, _022C2EA8 @ =0x0231EE8C
	mov r1, #0
	mov r2, #0x148
	str r5, [r3, #0x16c]
	bl FUN_0207C40C
	mov r0, #2
	sub r2, r0, #1
	ldr r3, _022C2EA8 @ =0x0231EE8C
	ldr r0, _022C2EA0 @ =0x0231EE88
_022C2E7C:
	ldr r1, [r0, #0x150]
	subs r2, r2, #1
	str r1, [r3]
	str r3, [r0, #0x150]
	add r3, r3, #0xa4
	bpl _022C2E7C
_022C2E94:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C2EA0: .4byte 0x0231EE88
_022C2EA4: .4byte 0x0231EFD4
_022C2EA8: .4byte 0x0231EE8C
	arm_func_end ov00_022C2E1C

	arm_func_start ov00_022C2EAC
ov00_022C2EAC: @ 0x022C2EAC
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r2, _022C2EE8 @ =0x0231EE88
	mov r4, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _022C2EDC
	mov r1, #0
	str r1, [r2]
	ldr r0, _022C2EEC @ =0x0231EFD4
	str r1, [r2, #0x16c]
	bl ov00_022C29B0
_022C2EDC:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, pc}
	.align 2, 0
_022C2EE8: .4byte 0x0231EE88
_022C2EEC: .4byte 0x0231EFD4
	arm_func_end ov00_022C2EAC

	arm_func_start ov00_022C2EF0
ov00_022C2EF0: @ 0x022C2EF0
	ldr r3, _022C2F1C @ =0x0231EFD4
	mvn r1, #0
	ldr r2, [r3, #0x2ec]
	cmp r2, r1
	bxne lr
	add r1, r3, #0x200
	mov r2, #0
	strh r2, [r1, #0xf2]
	strh r2, [r1, #0xf0]
	str r0, [r3, #0x2ec]
	bx lr
	.align 2, 0
_022C2F1C: .4byte 0x0231EFD4
	arm_func_end ov00_022C2EF0

	arm_func_start ov00_022C2F20
ov00_022C2F20: @ 0x022C2F20
	ldr ip, _022C2F3C @ =ov00_022C2248
	mov r3, r0
	mov r2, r1
	mov r1, r3
	ldr r0, _022C2F40 @ =0x0231EFD4
	mov r3, #1
	bx ip
	.align 2, 0
_022C2F3C: .4byte ov00_022C2248
_022C2F40: .4byte 0x0231EFD4
	arm_func_end ov00_022C2F20

	arm_func_start ov00_022C2F44
ov00_022C2F44: @ 0x022C2F44
	ldr ip, _022C2F60 @ =ov00_022C2248
	mov r3, r0
	mov r2, r1
	mov r1, r3
	ldr r0, _022C2F64 @ =0x0231EFD4
	mov r3, #0
	bx ip
	.align 2, 0
_022C2F60: .4byte ov00_022C2248
_022C2F64: .4byte 0x0231EFD4
	arm_func_end ov00_022C2F44

	arm_func_start ov00_022C2F68
ov00_022C2F68: @ 0x022C2F68
	push {r3, lr}
	mov ip, r0
	mov r3, r1
	mov r1, r2
	ldr r0, _022C2F88 @ =0x0231EFD4
	mov r2, ip
	bl ov00_022C251C
	pop {r3, pc}
	.align 2, 0
_022C2F88: .4byte 0x0231EFD4
	arm_func_end ov00_022C2F68

	arm_func_start ov00_022C2F8C
ov00_022C2F8C: @ 0x022C2F8C
	ldr ip, _022C2FA4 @ =ov00_022C251C
	mov r2, r0
	mov r3, r1
	ldr r0, _022C2FA8 @ =0x0231EFD4
	mov r1, #0
	bx ip
	.align 2, 0
_022C2FA4: .4byte ov00_022C251C
_022C2FA8: .4byte 0x0231EFD4
	arm_func_end ov00_022C2F8C

	arm_func_start ov00_022C2FAC
ov00_022C2FAC: @ 0x022C2FAC
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov lr, r2
	str r3, [sp]
	ldr ip, [sp, #0x18]
	ldr r0, _022C2FEC @ =0x0231EFD4
	mov r1, r5
	mov r2, r4
	mov r3, lr
	str ip, [sp, #4]
	bl ov00_022C2BE4
	mov r0, #1
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C2FEC: .4byte 0x0231EFD4
	arm_func_end ov00_022C2FAC

	arm_func_start ov00_022C2FF0
ov00_022C2FF0: @ 0x022C2FF0
	ldr ip, _022C3000 @ =ov00_022C2C84
	mov r1, r0
	ldr r0, _022C3004 @ =0x0231EFD4
	bx ip
	.align 2, 0
_022C3000: .4byte ov00_022C2C84
_022C3004: .4byte 0x0231EFD4
	arm_func_end ov00_022C2FF0

	arm_func_start ov00_022C3008
ov00_022C3008: @ 0x022C3008
	push {r4, lr}
	ldr r3, _022C3064 @ =0x0231EE88
	mov r2, r0
	ldr r4, [r3, #0x150]
	cmp r4, #0
	beq _022C3030
	ldr ip, [r4]
	mov r0, #0
	str ip, [r3, #0x150]
	str r0, [r4]
_022C3030:
	cmp r4, #0
	beq _022C3054
	ldr r0, _022C3068 @ =0x0231EFD4
	str r1, [r4, #0x14]
	mov ip, #2
	mov r1, r4
	mov r3, #0
	str ip, [r4, #4]
	bl ov00_022C2A24
_022C3054:
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	pop {r4, pc}
	.align 2, 0
_022C3064: .4byte 0x0231EE88
_022C3068: .4byte 0x0231EFD4
	arm_func_end ov00_022C3008

	arm_func_start ov00_022C306C
ov00_022C306C: @ 0x022C306C
	push {r3, r4, r5, lr}
	ldr lr, _022C3104 @ =0x0231EE88
	mov ip, r0
	ldr r4, [lr, #0x150]
	cmp r4, #0
	beq _022C3094
	ldr r5, [r4]
	mov r0, #0
	str r5, [lr, #0x150]
	str r0, [r4]
_022C3094:
	cmp r4, #0
	beq _022C30F4
	str r3, [r4, #0x14]
	str r1, [r4, #0x18]
	add r5, r4, #0x18
	mov r0, #0x28
	ldr lr, _022C3108 @ =0x0231F2E4
	str r0, [r5, #4]
	mov r3, #0
_022C30B8:
	add r1, r5, r3, lsl #2
	str lr, [r1, #0x48]
	ldr r0, [r2, r3, lsl #2]
	add r3, r3, #1
	str r0, [r1, #8]
	cmp r3, #0x10
	add lr, lr, #0x28
	blt _022C30B8
	ldr r0, _022C310C @ =0x0231EFD4
	mov lr, #6
	mov r1, r4
	mov r2, ip
	mov r3, #0
	str lr, [r4, #4]
	bl ov00_022C2A24
_022C30F4:
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C3104: .4byte 0x0231EE88
_022C3108: .4byte 0x0231F2E4
_022C310C: .4byte 0x0231EFD4
	arm_func_end ov00_022C306C

	arm_func_start ov00_022C3110
ov00_022C3110: @ 0x022C3110
	push {r4, r5, r6, r7, r8, lr}
	ldr r5, _022C31CC @ =0x0231EE88
	mov lr, r0
	ldr r4, [r5, #0x150]
	mov ip, r2
	cmp r4, #0
	beq _022C313C
	ldr r2, [r4]
	mov r0, #0
	str r2, [r5, #0x150]
	str r0, [r4]
_022C313C:
	cmp r4, #0
	beq _022C31BC
	ldr r0, [sp, #0x1c]
	add r8, r4, #0x20
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r3, [r4, #0x1c]
	ldm ip!, {r0, r1, r2, r3}
	stm r8!, {r0, r1, r2, r3}
	ldm ip!, {r0, r1, r2, r3}
	stm r8!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x18]
	add r6, r4, #0x60
	mov r5, #4
	ldm ip!, {r0, r1, r2, r3}
	stm r8!, {r0, r1, r2, r3}
	ldm ip, {r0, r1, r2, r3}
	stm r8, {r0, r1, r2, r3}
	ldm r7!, {r0, r1, r2, r3}
	stm r6!, {r0, r1, r2, r3}
	ldm r7!, {r0, r1, r2, r3}
	stm r6!, {r0, r1, r2, r3}
	ldm r7!, {r0, r1, r2, r3}
	stm r6!, {r0, r1, r2, r3}
	ldm r7, {r0, r1, r2, r3}
	stm r6, {r0, r1, r2, r3}
	str r5, [r4, #4]
	mov r2, lr
	ldr r0, _022C31D0 @ =0x0231EFD4
	mov r1, r4
	mov r3, #0
	bl ov00_022C2A24
_022C31BC:
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C31CC: .4byte 0x0231EE88
_022C31D0: .4byte 0x0231EFD4
	arm_func_end ov00_022C3110

	arm_func_start ov00_022C31D4
ov00_022C31D4: @ 0x022C31D4
	push {r3, r4, r5, lr}
	ldr ip, _022C3244 @ =0x0231EE88
	mov r5, r0
	ldr r4, [ip, #0x150]
	cmp r4, #0
	beq _022C31FC
	ldr lr, [r4]
	mov r0, #0
	str lr, [ip, #0x150]
	str r0, [r4]
_022C31FC:
	cmp r4, #0
	beq _022C3234
	mov r0, r1
	str r3, [r4, #0x14]
	add r1, r4, #0x18
	strb r2, [r4, #0x21]
	bl FUN_0207C4C8
	mov ip, #0xa
	ldr r0, _022C3248 @ =0x0231EFD4
	mov r1, r4
	mov r2, r5
	mov r3, #0
	str ip, [r4, #4]
	bl ov00_022C2A24
_022C3234:
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C3244: .4byte 0x0231EE88
_022C3248: .4byte 0x0231EFD4
	arm_func_end ov00_022C31D4

	arm_func_start ov00_022C324C
ov00_022C324C: @ 0x022C324C
	push {r3, lr}
	mov r1, r0
	ldr r0, _022C326C @ =0x0231EFD4
	bl ov00_022C2A9C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022C326C: .4byte 0x0231EFD4
	arm_func_end ov00_022C324C
_022C3270:
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x00, 0x40, 0xA0, 0xE1, 0x59, 0xE1, 0xF6, 0xEB, 0x10, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x10, 0x91, 0xE5, 0x01, 0x1A, 0x81, 0xE2, 0xE4, 0x44, 0x81, 0xE5, 0x59, 0xE1, 0xF6, 0xEB
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x2C, 0x50, 0x32, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x3C, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x00, 0x10, 0x91, 0xE5, 0x00, 0x00, 0x51, 0xE3, 0x09, 0x00, 0x00, 0x0A
	.byte 0xEB, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x06, 0x00, 0x00, 0x0A, 0x1C, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x10, 0x44, 0xE2, 0x00, 0x00, 0x90, 0xE5, 0x01, 0x01, 0x80, 0xE0, 0x01, 0x0A, 0x80, 0xE2
	.byte 0xE8, 0x04, 0x90, 0xE5, 0x10, 0x80, 0xBD, 0xE8, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x2C, 0x50, 0x32, 0x02, 0x38, 0x40, 0x2D, 0xE9, 0x00, 0x50, 0xA0, 0xE1, 0x3C, 0xE1, 0xF6, 0xEB
	.byte 0x6C, 0x10, 0x9F, 0xE5, 0x00, 0x40, 0xA0, 0xE1, 0x00, 0x00, 0x91, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x13, 0x00, 0x00, 0x0A, 0x05, 0x00, 0xA0, 0xE1, 0xD5, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x0F, 0x00, 0x00, 0x0A, 0x48, 0x00, 0x9F, 0xE5, 0x01, 0x10, 0x45, 0xE2, 0x00, 0x30, 0x90, 0xE5
	.byte 0x16, 0x20, 0xA0, 0xE3, 0x4D, 0x0D, 0x83, 0xE2, 0x91, 0x02, 0x20, 0xE0, 0x72, 0x10, 0x83, 0xE2
	.byte 0x17, 0x1C, 0x81, 0xE2, 0x63, 0xE4, 0xF6, 0xEB, 0x04, 0x00, 0xA0, 0xE1, 0x2D, 0xE1, 0xF6, 0xEB
	.byte 0x1C, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x72, 0x00, 0x80, 0xE2, 0x17, 0x0C, 0x80, 0xE2
	.byte 0x38, 0x80, 0xBD, 0xE8, 0x04, 0x00, 0xA0, 0xE1, 0x26, 0xE1, 0xF6, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x38, 0x80, 0xBD, 0xE8, 0x2C, 0x50, 0x32, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x44, 0x10, 0x9F, 0xE5
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x00, 0x10, 0x91, 0xE5, 0x00, 0x00, 0x51, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0xB7, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x08, 0x00, 0x00, 0x0A, 0x24, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x10, 0x44, 0xE2, 0x00, 0x00, 0x90, 0xE5, 0x01, 0x01, 0x80, 0xE0, 0x01, 0x0A, 0x80, 0xE2
	.byte 0xE8, 0x04, 0x90, 0xE5, 0x07, 0x00, 0x50, 0xE3, 0x01, 0x00, 0xA0, 0x03, 0x10, 0x80, 0xBD, 0x08
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x80, 0xBD, 0xE8, 0x2C, 0x50, 0x32, 0x02, 0xF8, 0x40, 0x2D, 0xE9
	.byte 0x01, 0x40, 0xA0, 0xE1, 0x00, 0x70, 0xA0, 0xE1, 0x05, 0xE1, 0xF6, 0xEB, 0x00, 0x60, 0xA0, 0xE1
	.byte 0x03, 0x00, 0x54, 0xE3, 0x04, 0xF1, 0x8F, 0x90, 0x0F, 0x00, 0x00, 0xEA, 0x02, 0x00, 0x00, 0xEA
	.byte 0x04, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA, 0x08, 0x00, 0x00, 0xEA, 0x0A, 0x50, 0xA0, 0xE3
	.byte 0x04, 0x40, 0xA0, 0xE3, 0x0C, 0x00, 0x00, 0xEA, 0x0A, 0x50, 0xA0, 0xE3, 0x03, 0x40, 0xA0, 0xE3
	.byte 0x09, 0x00, 0x00, 0xEA, 0x0E, 0x50, 0xA0, 0xE3, 0x02, 0x40, 0xA0, 0xE3, 0x06, 0x00, 0x00, 0xEA
	.byte 0x07, 0x50, 0xA0, 0xE3, 0x05, 0x40, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0x06, 0x00, 0xA0, 0xE1
	.byte 0xF4, 0xE0, 0xF6, 0xEB, 0x00, 0x00, 0xA0, 0xE3, 0xF8, 0x80, 0xBD, 0xE8, 0x64, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x12, 0x00, 0x00, 0x0A, 0x07, 0x00, 0xA0, 0xE1
	.byte 0x87, 0x04, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x0E, 0x00, 0x00, 0x0A, 0x44, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x20, 0x47, 0xE2, 0x00, 0x10, 0x90, 0xE5, 0x02, 0x01, 0x81, 0xE0, 0x01, 0x0A, 0x80, 0xE2
	.byte 0xE8, 0x04, 0x90, 0xE5, 0x00, 0x00, 0x55, 0xE1, 0x06, 0x00, 0x00, 0x1A, 0x82, 0x00, 0x81, 0xE0
	.byte 0x17, 0x1C, 0x80, 0xE2, 0x06, 0x00, 0xA0, 0xE1, 0xB4, 0x45, 0xC1, 0xE1, 0xDD, 0xE0, 0xF6, 0xEB
	.byte 0x01, 0x00, 0xA0, 0xE3, 0xF8, 0x80, 0xBD, 0xE8, 0x06, 0x00, 0xA0, 0xE1, 0xD9, 0xE0, 0xF6, 0xEB
	.byte 0x00, 0x00, 0xA0, 0xE3, 0xF8, 0x80, 0xBD, 0xE8, 0x2C, 0x50, 0x32, 0x02

	arm_func_start ov00_022C349C
ov00_022C349C: @ 0x022C349C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022C4664
	cmp r0, #0
	beq _022C34D0
	ldr r0, _022C34E4 @ =0x0232502C
	sub r1, r6, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
_022C34D0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022C34E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C34E4: .4byte 0x0232502C
	arm_func_end ov00_022C349C

	arm_func_start ov00_022C34E8
ov00_022C34E8: @ 0x022C34E8
	push {r3, lr}
	ldr r3, _022C350C @ =0x0232502C
	ldr r3, [r3]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x4e4]
	cmp r3, #0
	popeq {r3, pc}
	blx r3
	pop {r3, pc}
	.align 2, 0
_022C350C: .4byte 0x0232502C
	arm_func_end ov00_022C34E8

	arm_func_start ov00_022C3510
ov00_022C3510: @ 0x022C3510
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, #0x19
	bgt _022C3568
	bge _022C37AC
	cmp r5, #0x11
	bgt _022C355C
	bge _022C3960
	cmp r5, #3
	bgt _022C3960
	cmp r5, #0
	blt _022C3960
	beq _022C35A0
	cmp r5, #1
	beq _022C35C4
	cmp r5, #3
	beq _022C37A0
	b _022C3960
_022C355C:
	cmp r5, #0x15
	beq _022C358C
	b _022C3960
_022C3568:
	cmp r5, #0xff
	bgt _022C3580
	bge _022C384C
	cmp r5, #0x1c
	beq _022C37B4
	b _022C3960
_022C3580:
	cmp r5, #0x100
	beq _022C38BC
	b _022C3960
_022C358C:
	mov r2, r4
	mov r0, #0
	mov r1, #1
	bl ov00_022C349C
	b _022C3960
_022C35A0:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _022C3960
	cmp r0, #0x10
	bhs _022C3960
	mov r2, r4
	mov r1, #2
	bl ov00_022C349C
	b _022C3960
_022C35C4:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _022C3960
	cmp r0, #0x10
	bhs _022C3960
	ldr r2, _022C39A8 @ =0x0232502C
	sub r0, r0, #1
	ldr r3, [r2]
	mov r1, #0
	add r0, r3, r0, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2]
	ldrh r2, [r4, #0x10]
	add r0, r0, #0xa8
	add r3, r0, #0x1400
	sub r0, r2, #1
	add r0, r3, r0, lsl #2
	mov r2, #4
	bl FUN_0207C40C
	ldr r0, _022C39A8 @ =0x0232502C
	ldrh r1, [r4, #0x10]
	ldr r0, [r0]
	mov r2, #0x16
	add r0, r0, #0x1340
	sub r1, r1, #1
	mla r0, r1, r2, r0
	mov r1, #0
	bl FUN_0207C40C
	ldrh r0, [r4, #0x10]
	bl ov00_022C7E70
	ldrh r1, [r4, #0x10]
	ldr r0, _022C39A8 @ =0x0232502C
	mov r3, #0
	ldr r2, [r0]
	sub r1, r1, #1
	add r1, r2, r1, lsl #1
	add r1, r1, #0x1700
	strh r3, [r1, #0x54]
	ldrh r7, [r4, #0x10]
	ldr r8, [r0]
	sub r2, r3, #1
	sub r6, r7, #1
	add r1, r8, r6
	add r1, r1, #0x1500
	ldrsb r3, [r1, #0x26]
	cmp r3, r2
	beq _022C36F0
	ldr r1, _022C39AC @ =0x000005D4
	and r2, r3, #0xff
	mul r1, r2, r1
	add r2, r8, r1
	add r8, r2, #0x1d00
	mov r3, #1
	ldrh sb, [r8, #0x4e]
	mvn r2, r3, lsl r7
	and sb, sb, r2
	strh sb, [r8, #0x4e]
	ldr r8, [r0]
	sub sb, r3, #2
	add r8, r8, r1
	add r8, r8, #0x1d00
	ldrh ip, [r8, #0x50]
	orr r3, ip, r3, lsl r7
	strh r3, [r8, #0x50]
	ldr r3, [r0]
	add r3, r3, r6
	add r3, r3, #0x1000
	strb sb, [r3, #0x526]
	ldr r0, [r0]
	add r0, r0, r1
	add r0, r0, #0x1d00
	ldrh r1, [r0, #0x4c]
	and r1, r1, r2
	strh r1, [r0, #0x4c]
_022C36F0:
	ldr r1, _022C39A8 @ =0x0232502C
	ldrh r2, [r4, #0x10]
	ldr r6, [r1]
	mov r3, #1
	add r0, r6, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, r3, lsl r2
	beq _022C373C
	add r0, r6, #0x1000
	ldrb r2, [r0, #0x535]
	sub r2, r2, #1
	strb r2, [r0, #0x535]
	ldr r0, [r1]
	ldrh r1, [r4, #0x10]
	add r0, r0, #0x1500
	ldrh r2, [r0, #0x36]
	mvn r1, r3, lsl r1
	and r1, r2, r1
	strh r1, [r0, #0x36]
_022C373C:
	ldrh r0, [r4, #0x10]
	ldr r1, _022C39A8 @ =0x0232502C
	ldr r2, [r1]
	sub r1, r0, #1
	add r1, r2, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #8
	bne _022C376C
	mov r1, #9
	mov r2, #0
	bl ov00_022C349C
_022C376C:
	ldrh r0, [r4, #0x10]
	mov r2, r4
	mov r1, #3
	bl ov00_022C349C
	ldrh r1, [r4, #0x10]
	ldr r0, _022C39A8 @ =0x0232502C
	mov r3, #0
	ldr r2, [r0]
	sub r0, r1, #1
	add r0, r2, r0, lsl #2
	add r0, r0, #0x1000
	str r3, [r0, #0x4e8]
	b _022C3960
_022C37A0:
	mov r0, r4
	bl ov00_022C3E94
	b _022C3960
_022C37AC:
	bl ov00_022C4458
	b _022C3960
_022C37B4:
	mov r8, #0
	ldr r6, _022C39A8 @ =0x0232502C
	ldr r4, _022C39AC @ =0x000005D4
	mov r7, r8
_022C37C4:
	mul sb, r8, r4
	ldr r1, [r6]
	add r2, r1, sb
	add r0, r2, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r2, r2, #0x1d00
	ldrhne r3, [r2, #0x50]
	cmpne r3, #0
	beq _022C3814
	add r0, r1, #0x6c
	add r0, r0, #0x1800
	ldrh r2, [r2, #0x4e]
	add r0, r0, sb
	add r1, r1, #0x1340
	bl ov00_022C5590
	ldr r0, [r6]
	add r0, r0, sb
	add r0, r0, #0x1d00
	strh r7, [r0, #0x50]
_022C3814:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x10
	blo _022C37C4
	bl ov00_022C78A0
	mov r6, r0
	bl ov00_022C78B4
	mov r4, r0
	bl ov00_022C78C8
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl ov00_022C56BC
	b _022C3960
_022C384C:
	ldrh r0, [r4, #2]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _022C38AC
_022C385C: @ jump table
	b _022C38AC @ case 0
	b _022C389C @ case 1
	b _022C38AC @ case 2
	b _022C38AC @ case 3
	b _022C389C @ case 4
	b _022C389C @ case 5
	b _022C389C @ case 6
	b _022C38AC @ case 7
	b _022C389C @ case 8
	b _022C389C @ case 9
	b _022C38AC @ case 10
	b _022C38AC @ case 11
	b _022C38AC @ case 12
	b _022C38AC @ case 13
	b _022C38AC @ case 14
	b _022C38AC @ case 15
_022C389C:
	mov r0, #0
	mov r1, #9
	bl ov00_022C4680
	b _022C3960
_022C38AC:
	mov r0, #0
	mov r1, #8
	bl ov00_022C4680
	b _022C3960
_022C38BC:
	ldrh r0, [r4]
	cmp r0, #0x1d
	addls pc, pc, r0, lsl #2
	b _022C3954
_022C38CC: @ jump table
	b _022C3944 @ case 0
	b _022C3954 @ case 1
	b _022C3954 @ case 2
	b _022C3954 @ case 3
	b _022C3954 @ case 4
	b _022C3954 @ case 5
	b _022C3954 @ case 6
	b _022C3944 @ case 7
	b _022C3944 @ case 8
	b _022C3954 @ case 9
	b _022C3954 @ case 10
	b _022C3954 @ case 11
	b _022C3954 @ case 12
	b _022C3944 @ case 13
	b _022C3944 @ case 14
	b _022C3944 @ case 15
	b _022C3954 @ case 16
	b _022C3944 @ case 17
	b _022C3944 @ case 18
	b _022C3954 @ case 19
	b _022C3954 @ case 20
	b _022C3944 @ case 21
	b _022C3954 @ case 22
	b _022C3954 @ case 23
	b _022C3954 @ case 24
	b _022C3944 @ case 25
	b _022C3954 @ case 26
	b _022C3954 @ case 27
	b _022C3954 @ case 28
	b _022C3944 @ case 29
_022C3944:
	mov r0, #0
	mov r1, #9
	bl ov00_022C4680
	b _022C3960
_022C3954:
	mov r0, #0
	mov r1, #8
	bl ov00_022C4680
_022C3960:
	cmp r5, #0x11
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _022C39A8 @ =0x0232502C
	mov r0, #0
	ldr r1, [r1]
	mov r2, #0x7d00
	add r3, r1, #0x1000
	ldr r4, [r3, #0x4e4]
	bl FUN_0207C358
	ldr r1, _022C39A8 @ =0x0232502C
	mov r0, #0
	str r0, [r1]
	cmp r4, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r2, r0
	mov r1, #0xc
	blx r4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C39A8: .4byte 0x0232502C
_022C39AC: .4byte 0x000005D4
	arm_func_end ov00_022C3510

	arm_func_start ov00_022C39B0
ov00_022C39B0: @ 0x022C39B0
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	movs r6, r1
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0xf
	addhi sp, sp, #0x34
	pophi {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0x20
	mov r2, r6
	add r0, r0, #0xa
	bl ov00_022C7F38
	ldr r1, _022C3E88 @ =0x0232502C
	ldrb r7, [sp, #0x20]
	ldr r2, [r1]
	sub r3, r6, #1
	add r4, r2, r3, lsl #2
	add r4, r4, #0x1000
	ldr r4, [r4, #0x4e8]
	mov r5, r0
	cmp r7, #0xb
	addls pc, pc, r7, lsl #2
	b _022C3E80
_022C3A0C: @ jump table
	b _022C3E80 @ case 0
	b _022C3E80 @ case 1
	b _022C3E80 @ case 2
	b _022C3E80 @ case 3
	b _022C3E80 @ case 4
	b _022C3E80 @ case 5
	b _022C3E80 @ case 6
	b _022C3A3C @ case 7
	b _022C3CD4 @ case 8
	b _022C3D7C @ case 9
	b _022C3DEC @ case 10
	b _022C3E80 @ case 11
_022C3A3C:
	cmp r4, #2
	bne _022C3AE4
	cmp r5, #0
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r2, #0x1d
	bl FUN_0207C4C8
	ldr r2, _022C3E88 @ =0x0232502C
	sub r0, r6, #1
	ldr r1, [r2]
	ldr r3, [sp]
	add r1, r1, r0, lsl #2
	add r1, r1, #0x1000
	str r3, [r1, #0x4a8]
	ldr r1, [r2]
	ldrh r3, [sp, #0x1a]
	add r1, r1, r0, lsl #1
	add r1, r1, #0x1400
	strh r3, [r1, #0x8a]
	ldr r1, [r2]
	mov r2, #0x16
	add r1, r1, #0x1340
	mla r1, r0, r2, r1
	add r0, sp, #4
	bl FUN_0207C4C8
	ldr r0, _022C3E88 @ =0x0232502C
	sub r2, r6, #1
	ldr r3, [r0]
	mov r0, #0x16
	mul r7, r2, r0
	add r8, r3, #0x1340
	and r1, r6, #0xff
	ldrb r3, [r8, r7]
	lsl r0, r1, #0x1c
	add r2, sp, #4
	bic r1, r3, #0xf0
	orr r1, r1, r0, lsr #24
	strb r1, [r8, r7]
	mov r0, r6
	mov r1, #0xa
	bl ov00_022C349C
_022C3AE4:
	cmp r4, #0xa
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	ldrb lr, [r5, #0x1c]
	mov r0, #0
	cmp lr, #0x10
	bhs _022C3B40
	ldr r2, _022C3E88 @ =0x0232502C
	ldr r1, _022C3E8C @ =0x000005D4
	ldr r3, [r2]
	mla r4, lr, r1, r3
	add r1, r4, #0x1000
	ldrb r2, [r1, #0xd52]
	cmp r2, #0
	beq _022C3B40
	sub r2, r6, #1
	add r3, r3, r2, lsl #2
	ldr r2, [r1, #0xd40]
	add r1, r3, #0x1000
	ldr r3, [r1, #0x4a8]
	ldr r1, [r2, #0x14]
	cmp r3, r1
	beq _022C3B60
_022C3B40:
	ldr r0, _022C3E88 @ =0x0232502C
	sub r1, r6, #1
	ldr r0, [r0]
	mov r2, #4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	b _022C3BDC
_022C3B60:
	mov r5, r0
	add r1, r4, #0x1d00
	mov r3, #1
	b _022C3B88
_022C3B70:
	ldrh r2, [r1, #0x4e]
	tst r2, r3, lsl r5
	addne r0, r0, #1
	add r2, r5, #1
	andne r0, r0, #0xff
	and r5, r2, #0xff
_022C3B88:
	cmp r5, #0x10
	blo _022C3B70
	ldr r2, _022C3E88 @ =0x0232502C
	ldr r1, _022C3E8C @ =0x000005D4
	ldr r2, [r2]
	mla r1, lr, r1, r2
	add r1, r1, #0x1000
	ldr r1, [r1, #0xd40]
	ldrb r1, [r1, #0x18]
	cmp r0, r1
	blo _022C3BDC
	sub r0, r6, #1
	add r1, r2, r0, lsl #1
	add r3, r1, #0x1700
	mov r2, #0
	mov r0, r6
	mov r1, #0xb
	strh r2, [r3, #0x54]
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3BDC:
	ldr r3, _022C3E88 @ =0x0232502C
	sub ip, r6, #1
	ldr r1, [r3]
	add r0, r1, ip, lsl #1
	add r4, r0, #0x1700
	ldrh r0, [r4, #0x54]
	cmp r0, #3
	beq _022C3C0C
	cmp r0, #4
	beq _022C3CB8
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3C0C:
	add r0, r1, #0x1500
	ldrh r0, [r0, #0x36]
	mov r5, #1
	tst r0, r5, lsl r6
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r1, r1, #0x1000
	ldrb r4, [r1, #0x535]
	ldr r2, _022C3E8C @ =0x000005D4
	mov r0, r6
	add r4, r4, #1
	strb r4, [r1, #0x535]
	ldr r1, [r3]
	mul r4, lr, r2
	add r7, r1, #0x1500
	ldrh r8, [r7, #0x36]
	mov r2, #0
	mov r1, #5
	orr r8, r8, r5, lsl r6
	strh r8, [r7, #0x36]
	ldr r7, [r3]
	add r7, r7, ip
	add r7, r7, #0x1000
	strb lr, [r7, #0x526]
	ldr r7, [r3]
	add r7, r7, #0x4e
	add lr, r7, #0x1d00
	ldrh r7, [lr, r4]
	orr r7, r7, r5, lsl r6
	strh r7, [lr, r4]
	ldr r7, [r3]
	add r7, r7, #0xd50
	add lr, r7, #0x1000
	ldrh r7, [lr, r4]
	orr r5, r7, r5, lsl r6
	strh r5, [lr, r4]
	ldr r3, [r3]
	add r3, r3, ip, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3CB8:
	mov r2, #0
	mov r0, r6
	mov r1, #4
	strh r2, [r4, #0x54]
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3CD4:
	cmp r4, #5
	bne _022C3CF4
	mov r0, r6
	mov r1, #0xe
	mov r2, #0
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3CF4:
	cmp r4, #0xe
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r0, r0, #0x1700
	ldrh r0, [r0, #0x54]
	cmp r0, #2
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r7, [r0, #0x526]
	ldr r4, _022C3E8C @ =0x000005D4
	add r0, r2, #0x14c
	mul r5, r7, r4
	add r7, r0, #0x1c00
	ldrh r4, [r7, r5]
	mov r0, #1
	mov r2, #0
	orr r0, r4, r0, lsl r6
	strh r0, [r7, r5]
	ldr r4, [r1]
	mov r0, r6
	add r4, r4, r5
	add r4, r4, #0x1d00
	strh r2, [r4, #0x48]
	ldr r4, [r1]
	mov r1, #6
	add r3, r4, r3, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3D7C:
	cmp r4, #6
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x526]
	cmp r4, #0xff
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _022C3E8C @ =0x000005D4
	ldrh r1, [sp, #0x22]
	mla r0, r4, r0, r2
	add r0, r0, #0x1d00
	ldrh r0, [r0, #0x4a]
	bl ov00_022C4654
	ldr r2, _022C3E88 @ =0x0232502C
	ldr r1, _022C3E8C @ =0x000005D4
	ldr r3, [r2]
	ldr r2, _022C3E90 @ =0x0231F564
	mla r1, r4, r1, r3
	add r1, r1, #0x1d00
	strh r0, [r1, #0x4a]
	ldr r1, [r2]
	mov r0, #1
	orr r0, r1, r0, lsl r4
	str r0, [r2]
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3DEC:
	cmp r4, #6
	bne _022C3E48
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r3, [r0, #0x526]
	cmp r3, #0xff
	addeq sp, sp, #0x34
	popeq {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _022C3E8C @ =0x000005D4
	add r0, r2, #0x14c
	mul r4, r3, r1
	add r5, r0, #0x1c00
	mov r0, #1
	ldrh r1, [r5, r4]
	mvn r0, r0, lsl r6
	and r3, r1, r0
	mov r0, r6
	mov r1, #7
	mov r2, #0
	strh r3, [r5, r4]
	bl ov00_022C349C
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
_022C3E48:
	cmp r4, #7
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r3, r0, #0x1700
	ldrh r0, [r3, #0x54]
	cmp r0, #5
	addne sp, sp, #0x34
	popne {r3, r4, r5, r6, r7, r8, pc}
	mov r2, #0
	mov r0, r6
	mov r1, #8
	strh r2, [r3, #0x54]
	bl ov00_022C349C
_022C3E80:
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C3E88: .4byte 0x0232502C
_022C3E8C: .4byte 0x000005D4
_022C3E90: .4byte 0x0231F564
	arm_func_end ov00_022C39B0

	arm_func_start ov00_022C3E94
ov00_022C3E94: @ 0x022C3E94
	push {r4, r5, r6, lr}
	mov ip, #0
	ldr r2, _022C3F30 @ =0x0232502C
	ldr r1, _022C3F34 @ =0x000005D4
	mov r4, r0
	mov r3, ip
_022C3EAC:
	ldr r0, [r2]
	mla r5, ip, r1, r0
	add r0, r5, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, r5, #0x1d00
	strhne r3, [r0, #0x4a]
	add r0, ip, #1
	lsl r0, r0, #0x10
	lsr ip, r0, #0x10
	cmp ip, #0x10
	blo _022C3EAC
	ldr r0, _022C3F38 @ =0x0231F564
	mov r1, #0
	ldr r5, _022C3F3C @ =0x0000FFFF
	str r1, [r0]
	mov r6, #1
_022C3EF0:
	mov r0, r4
	mov r1, r6
	bl ov00_022BF55C
	cmp r0, #0
	ldrhne r1, [r0]
	cmpne r1, r5
	cmpne r1, #0
	beq _022C3F18
	mov r1, r6
	bl ov00_022C39B0
_022C3F18:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xf
	bls _022C3EF0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C3F30: .4byte 0x0232502C
_022C3F34: .4byte 0x000005D4
_022C3F38: .4byte 0x0231F564
_022C3F3C: .4byte 0x0000FFFF
	arm_func_end ov00_022C3E94

	arm_func_start ov00_022C3F40
ov00_022C3F40: @ 0x022C3F40
	push {r4, lr}
	sub sp, sp, #8
	ldr r2, _022C3F7C @ =0x0232502C
	mov r4, r1
	ldr r1, [r2]
	strb r0, [sp]
	add r0, sp, #0
	bl ov00_022C7EB4
	ldr r0, _022C3F7C @ =0x0232502C
	mov r1, r4
	ldr r2, [r0]
	mov r0, #6
	bl ov00_022C537C
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022C3F7C: .4byte 0x0232502C
	arm_func_end ov00_022C3F40

	arm_func_start ov00_022C3F80
ov00_022C3F80: @ 0x022C3F80
	push {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, #0
	add r0, sp, #6
	mov r1, r5
	mov r2, #0x10
	mvn r4, #0
	bl FUN_0207C40C
	ldr r1, _022C410C @ =0x0232502C
	mov r0, #1
	ldr r1, [r1]
	add ip, sp, #6
_022C3FB0:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _022C3FDC
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r3, [r2, #0x25]
	ldrb r2, [ip, r3]
	add r2, r2, #1
	strb r2, [ip, r3]
_022C3FDC:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bls _022C3FB0
	ldr r2, _022C4110 @ =0x02318814
	ldr ip, _022C4114 @ =0x000005D4
	ldrb r3, [r2]
	mov r0, #0
	add lr, sp, #6
_022C4004:
	add r2, r3, #1
	lsr r3, r2, #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	and r3, r2, #0xff
	mla r2, r3, ip, r1
	add r2, r2, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	ldrbne r2, [lr, r3]
	cmpne r2, #0
	lslne r0, r3, #0x18
	asrne r4, r0, #0x18
	bne _022C404C
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	blo _022C4004
_022C404C:
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, pc}
	ldr r2, _022C4110 @ =0x02318814
	mov r0, #1
	strb r4, [r2]
	mov r3, r0
_022C4070:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _022C40A0
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r2, [r2, #0x25]
	cmp r4, r2
	orreq r2, r5, r3, lsl r0
	lsleq r2, r2, #0x10
	lsreq r5, r2, #0x10
_022C40A0:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bls _022C4070
	mov r2, #3
	add r0, sp, #0
	strb r2, [sp]
	strh r4, [sp, #2]
	bl ov00_022C7EB4
	movs r1, r0
	beq _022C40F0
	ldr r0, _022C410C @ =0x0232502C
	ldr r3, _022C4114 @ =0x000005D4
	ldr r0, [r0]
	mov r2, #0xe4
	add r0, r0, #0x388
	add r0, r0, #0x1400
	mla r0, r4, r3, r0
	bl FUN_0207C4C8
_022C40F0:
	ldr r0, _022C410C @ =0x0232502C
	mov r1, r5
	ldr r2, [r0]
	mov r0, #0xea
	bl ov00_022C537C
	add sp, sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C410C: .4byte 0x0232502C
_022C4110: .4byte 0x02318814
_022C4114: .4byte 0x000005D4
	arm_func_end ov00_022C3F80

	arm_func_start ov00_022C4118
ov00_022C4118: @ 0x022C4118
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r5, #0x10
	bl FUN_0207EDB4
	movs r6, r0
	add r0, sp, #4
	ldreq r6, [r5, #0x18]
	bl FUN_0207F3E4
	ldr r2, [r4]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, sp, #4
	mov r1, r6
	add r3, r2, r3
	bl FUN_0207F60C
	cmp r0, #0
	beq _022C4194
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0207F818
	ldr r1, [r4, #4]
	cmp r1, r0
	moveq r0, #2
	streq r0, [r4, #0xc]
	add r0, sp, #4
	bl FUN_0207F70C
_022C4194:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	addeq sp, sp, #0x4c
	popeq {r3, r4, r5, r6, pc}
	mov r0, #0
	str r0, [r4]
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022C4118

	arm_func_start ov00_022C41BC
ov00_022C41BC: @ 0x022C41BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r5, _022C444C @ =0x0232502C
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x524]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r4, _022C4450 @ =0x000005D4
	mov r1, #0
_022C41EC:
	ldr r0, [r5]
	add r3, r0, #0x1000
	ldrb r0, [r3, #0x525]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	rsb r0, r2, r0, lsl #28
	add r0, r2, r0, ror #28
	strb r0, [r3, #0x525]
	ldr r2, [r5]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x525]
	mla r3, r0, r4, r2
	add r2, r3, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	addne r2, r3, #0x1d00
	ldrhne r2, [r2, #0x4c]
	cmpne r2, #0
	bne _022C4248
	add r1, r1, #1
	and r1, r1, #0xff
	cmp r1, #0x10
	blo _022C41EC
_022C4248:
	cmp r1, #0x10
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022C45D8
	ldr r0, _022C444C @ =0x0232502C
	ldr r2, _022C4450 @ =0x000005D4
	ldr r6, [r0]
	add r0, sp, #8
	add r1, r6, #0x1000
	ldrb r4, [r1, #0x525]
	add r1, r6, #0x12c
	add r3, r6, #0x388
	mul r5, r4, r2
	add r2, r6, r5
	add r2, r2, #0x1d00
	add r1, r1, #0x1c00
	add r3, r3, #0x1400
	ldrh r2, [r2, #0x48]
	add r1, r1, r5
	add r3, r3, r5
	bl ov00_022C5150
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _022C444C @ =0x0232502C
	mov r3, #4
	ldr r1, [r0]
	strb r3, [sp]
	add r2, r1, #0x1000
	ldrb r4, [r2, #0x525]
	add r3, r3, #0x5d0
	add r0, sp, #0
	strh r4, [sp, #2]
	ldrb r4, [r2, #0x525]
	mla r2, r4, r3, r1
	add r2, r2, #0x1d00
	ldrh r2, [r2, #0x48]
	strh r2, [sp, #4]
	bl ov00_022C7EB4
	ldr r1, _022C444C @ =0x0232502C
	ldr r4, _022C4450 @ =0x000005D4
	ldr r5, [r1]
	ldrb r1, [sp, #0x14]
	add r2, r5, #0x1000
	ldrb r2, [r2, #0x525]
	ldr r6, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mla r4, r2, r4, r5
	add r2, r4, r1, lsl #2
	add r5, r4, #0x1000
	ldr r4, [r5, #0xd58]
	add r2, r2, #0x1000
	ldr r2, [r2, #0xd2c]
	ldr r1, [r4, r1, lsl #2]
	sub r2, r6, r2
	add r4, r2, r1
	ldr r5, [r5, #0xd54]
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov00_022C79FC
	cmp r0, #0
	bne _022C4418
	ldr r0, _022C444C @ =0x0232502C
	ldr r0, [r0]
	add r0, r0, #0xce0
	add r6, r0, #0x7000
	mov r0, r6
	bl ov00_022C7C5C
	cmp r0, #0
	bne _022C440C
	ldr r0, [r5]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r5]
	bne _022C440C
	add r2, r5, #0x30
	mov r7, #0
	mov r3, r7
	mov ip, r2
_022C4390:
	add r0, r2, r3, lsl #4
	ldr r0, [r0, #0xc]
	cmp r0, #2
	bne _022C43BC
	cmp r7, #0
	beq _022C43B8
	ldr r1, [r7]
	ldr r0, [r2, r3, lsl #4]
	cmp r1, r0
	bls _022C43BC
_022C43B8:
	mov r7, ip
_022C43BC:
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #0x10
	blt _022C4390
	cmp r7, #0
	bne _022C43D8
	bl FUN_0207BC20
_022C43D8:
	mov r0, #2
	str r0, [r5]
	mov r0, #1
	str r0, [r7, #0xc]
	bic r0, r4, #0x1f
	str r0, [r7]
	str r7, [r6, #0x10]
	ldr r1, _022C4454 @ =ov00_022C4118
	mov r0, r6
	mov r2, #0
	mov r3, #4
	str r5, [r6, #0x14]
	bl ov00_022C7C74
_022C440C:
	add sp, sp, #0x18
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_022C4418:
	ldr r0, _022C444C @ =0x0232502C
	ldr r4, [sp, #0xc]
	ldr r2, [r0]
	ldr r1, _022C4450 @ =0x000005D4
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x525]
	add r0, r4, #6
	mla r1, r3, r1, r2
	add r1, r1, #0x1d00
	ldrh r1, [r1, #0x4c]
	bl ov00_022C537C
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C444C: .4byte 0x0232502C
_022C4450: .4byte 0x000005D4
_022C4454: .4byte ov00_022C4118
	arm_func_end ov00_022C41BC

	arm_func_start ov00_022C4458
ov00_022C4458: @ 0x022C4458
	push {r4, r5, lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r0, #0
	mov r2, #0xa
	bl FUN_0207C2B8
	mov r3, #1
	ldr r0, _022C45D0 @ =0x0232502C
	mov r4, r3
	ldr ip, [r0]
	mov r5, r3
	mov r0, r3
	mov r1, r3
	mov r2, r3
_022C4490:
	add lr, ip, r3, lsl #2
	add lr, lr, #0x1000
	ldr lr, [lr, #0x4e4]
	cmp lr, #0xb
	addls pc, pc, lr, lsl #2
	b _022C4524
_022C44A8: @ jump table
	b _022C4524 @ case 0
	b _022C4524 @ case 1
	b _022C44D8 @ case 2
	b _022C4524 @ case 3
	b _022C44F8 @ case 4
	b _022C44E8 @ case 5
	b _022C4524 @ case 6
	b _022C4524 @ case 7
	b _022C4508 @ case 8
	b _022C4524 @ case 9
	b _022C4524 @ case 10
	b _022C4518 @ case 11
_022C44D8:
	ldrh lr, [sp]
	orr lr, lr, r2, lsl r3
	strh lr, [sp]
	b _022C4524
_022C44E8:
	ldrh lr, [sp, #2]
	orr lr, lr, r1, lsl r3
	strh lr, [sp, #2]
	b _022C4524
_022C44F8:
	ldrh lr, [sp, #4]
	orr lr, lr, r0, lsl r3
	strh lr, [sp, #4]
	b _022C4524
_022C4508:
	ldrh lr, [sp, #6]
	orr lr, lr, r5, lsl r3
	strh lr, [sp, #6]
	b _022C4524
_022C4518:
	ldrh lr, [sp, #8]
	orr lr, lr, r4, lsl r3
	strh lr, [sp, #8]
_022C4524:
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	cmp r3, #0xf
	bls _022C4490
	ldrh r1, [sp, #6]
	cmp r1, #0
	beq _022C4550
	mov r0, #5
	bl ov00_022C3F40
	b _022C45B0
_022C4550:
	ldrh r1, [sp]
	cmp r1, #0
	beq _022C4568
	mov r0, #1
	bl ov00_022C3F40
	b _022C45B0
_022C4568:
	ldrh r1, [sp, #8]
	cmp r1, #0
	beq _022C4580
	mov r0, #6
	bl ov00_022C3F40
	b _022C45B0
_022C4580:
	ldrh r1, [sp, #4]
	cmp r1, #0
	beq _022C4598
	mov r0, #2
	bl ov00_022C3F40
	b _022C45B0
_022C4598:
	ldrh r0, [sp, #2]
	cmp r0, #0
	beq _022C45AC
	bl ov00_022C3F80
	b _022C45B0
_022C45AC:
	bl ov00_022C41BC
_022C45B0:
	cmp r0, #0x15
	addne sp, sp, #0xc
	popne {r4, r5, pc}
	ldr r1, _022C45D4 @ =0x0000FFFF
	mov r0, #0
	bl ov00_022C3F40
	add sp, sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022C45D0: .4byte 0x0232502C
_022C45D4: .4byte 0x0000FFFF
	arm_func_end ov00_022C4458

	arm_func_start ov00_022C45D8
ov00_022C45D8: @ 0x022C45D8
	ldr r1, _022C4648 @ =0x0231F564
	mov r2, #1
	ldr r1, [r1]
	tst r1, r2, lsl r0
	bxeq lr
	ldr r2, _022C464C @ =0x0232502C
	ldr r1, _022C4650 @ =0x000005D4
	ldr r2, [r2]
	mla ip, r0, r1, r2
	add r0, ip, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, ip, #0x1d00
	ldrhne r1, [r0, #0x4c]
	cmpne r1, #0
	bxeq lr
	ldrh r2, [r0, #0x48]
	ldrh r3, [r0, #0x4a]
	cmp r3, r2
	bhi _022C463C
	add r1, r3, #2
	cmp r2, r1
	addle r1, r2, #1
	strhle r1, [r0, #0x48]
	bxle lr
_022C463C:
	add r0, ip, #0x1d00
	strh r3, [r0, #0x48]
	bx lr
	.align 2, 0
_022C4648: .4byte 0x0231F564
_022C464C: .4byte 0x0232502C
_022C4650: .4byte 0x000005D4
	arm_func_end ov00_022C45D8

	arm_func_start ov00_022C4654
ov00_022C4654: @ 0x022C4654
	cmp r1, r0
	movls r1, r0
	mov r0, r1
	bx lr
	arm_func_end ov00_022C4654

	arm_func_start ov00_022C4664
ov00_022C4664: @ 0x022C4664
	cmp r0, #1
	blo _022C4678
	cmp r0, #0xf
	movls r0, #1
	bxls lr
_022C4678:
	mov r0, #0
	bx lr
	arm_func_end ov00_022C4664

	arm_func_start ov00_022C4680
ov00_022C4680: @ 0x022C4680
	push {r3, lr}
	strh r1, [sp]
	add r2, sp, #0
	mov r1, #0xd
	bl ov00_022C34E8
	pop {r3, pc}
	arm_func_end ov00_022C4680

	arm_func_start ov00_022C4698
ov00_022C4698: @ 0x022C4698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, #0
	movs r7, r0
	mov r5, r4
	beq _022C46E4
	ldr ip, [r7, #0x2c]
	ldr r3, [r7, #0x24]
	add r1, sp, #0
	mov r2, #0x60
	sub r6, ip, r3
	bl FUN_0207F818
	cmp r0, #0x60
	mov r0, r7
	mov r1, r6
	mov r2, #0
	addhs r4, sp, #0
	bl FUN_0207F828
	b _022C46E8
_022C46E4:
	ldr r4, _022C4714 @ =0x027FFE00
_022C46E8:
	cmp r4, #0
	beq _022C4708
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	add r1, r1, #0x268
	add r5, r1, r0
	cmp r5, #0x10000
	movlo r5, #0x10000
_022C4708:
	mov r0, r5
	add sp, sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C4714: .4byte 0x027FFE00
	arm_func_end ov00_022C4698

	arm_func_start ov00_022C4718
ov00_022C4718: @ 0x022C4718
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	str r2, [sp, #4]
	cmp r2, #0x164
	mov r2, #0
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0x10]
	blo _022C4B70
	ldr r4, [sp, #4]
	mov r5, sb
	str r2, [sp, #0xc]
	mov r6, r2
	mov fp, r2
	cmp sl, #0
	add r5, r5, #0x160
	sub r4, r4, #0x160
	beq _022C4790
	ldr r7, [sl, #0x2c]
	ldr r3, [sl, #0x24]
	mov r2, #0x160
	sub r3, r7, r3
	str r3, [sp, #8]
	bl FUN_0207F818
	cmp r0, #0x160
	ldr r7, [sb, #0x80]
	movlt r4, fp
	cmp r7, #0
	moveq r7, #0x1000000
	b _022C480C
_022C4790:
	ldr r0, _022C4B7C @ =0x027FFE00
	mov r1, #1
	ldr r7, [r0, #0x80]
	add r0, sp, #0x24
	cmp r7, #0
	moveq r7, #0x1000000
	str r1, [sp, #0xc]
	bl FUN_0207F3E4
	ldr r0, _022C4B80 @ =0x0231881C
	mov r1, #3
	bl FUN_0207EDB4
	mov r1, r0
	mvn r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	mov r2, #0
	add r3, r7, #0x88
	bl FUN_0207F60C
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x48]
	ldr r0, _022C4B7C @ =0x027FFE00
	sub r1, r2, r1
	str r1, [sp, #8]
	mov r1, sb
	mov r2, #0x160
	add sl, sp, #0x24
	bl FUN_0207C4C8
	ldr r0, [sb, #0x60]
	orr r0, r0, #0x6000
	orr r0, r0, #0x400000
	str r0, [sb, #0x60]
_022C480C:
	cmp r4, #0x88
	movlo r4, #0
	blo _022C4844
	ldr r1, [sp, #8]
	mov r0, sl
	add r1, r1, r7
	mov r2, #0
	bl FUN_0207F828
	mov r0, sl
	mov r1, r5
	mov r2, #0x88
	bl FUN_0207F818
	add r5, r5, #0x88
	sub r4, r4, #0x88
_022C4844:
	cmp r4, #0x70
	blo _022C48BC
	mov r0, r5
	mov r6, r5
	bl ov00_022C7980
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, #0
	mov r2, #0x160
	mov r3, sb
	add r5, r5, #0x70
	sub r4, r4, #0x70
	bl ov00_022C7994
	ldr r8, [sl, #8]
	mov r7, #0
	b _022C488C
_022C4888:
	add r7, r7, #1
_022C488C:
	cmp r7, #3
	bge _022C48A0
	ldrsb r0, [r8, r7]
	cmp r0, #0
	bne _022C4888
_022C48A0:
	mov r0, r8
	mov r2, r7
	add r1, r6, #0x10
	bl FUN_0207C4C8
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	b _022C48C0
_022C48BC:
	mov r4, #0
_022C48C0:
	cmp r4, #0x10
	movlo r4, #0
	blo _022C4910
	mov r0, #0
	str r0, [r5]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x20]
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r5, #4]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x30]
	add r0, r0, r1
	add r0, r2, r0
	mov fp, r5
	str r0, [r5, #8]
	add r5, r5, #0x10
	sub r4, r4, #0x10
_022C4910:
	ldr r1, [sb, #0x2c]
	ldr r0, [sb, #0x3c]
	add r0, r1, r0
	cmp r4, r0
	blo _022C49B8
	ldr r7, [sl, #0x24]
	ldr r1, [fp, #4]
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_0207F828
	ldr r2, [sb, #0x2c]
	mov r0, sl
	mov r1, r5
	bl FUN_0207F818
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #4]
	ldr r2, [sb, #0x2c]
	mov r0, r6
	mov r3, r5
	bl ov00_022C7994
	ldr r1, [fp, #8]
	ldr r4, [sb, #0x2c]
	mov r0, sl
	mov r2, #0
	sub r1, r1, r7
	bl FUN_0207F828
	ldr r2, [sb, #0x3c]
	mov r0, sl
	add r1, r5, r4
	bl FUN_0207F818
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #8]
	ldr r2, [sb, #0x3c]
	add r3, r5, r4
	mov r0, r6
	bl ov00_022C7994
	mov r0, #1
	str r0, [sp, #0x10]
	b _022C4A8C
_022C49B8:
	cmp r4, #0xcc00
	blo _022C4A8C
	ldr r7, [sl, #0x24]
	ldr r4, [fp, #4]
	mov r0, sl
	sub r1, r4, r7
	mov r2, #0
	bl FUN_0207F828
	mov r0, sl
	mov r1, r5
	mov r2, #0x4400
	bl FUN_0207F818
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0x4400
	mov r3, r5
	bl ov00_022C7994
	add r1, r4, #0x4400
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_0207F828
	mov r0, sl
	add r1, r5, #0x4400
	mov r2, #0x4400
	bl FUN_0207F818
	mov r0, #2
	str r0, [sp]
	mov r0, r6
	add r1, r4, #0x4400
	mov r2, #0x4400
	add r3, r5, #0x4400
	bl ov00_022C7994
	add r1, r4, #0x8800
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl FUN_0207F828
	mov r0, sl
	add r1, r5, #0x8800
	mov r2, #0x4400
	bl FUN_0207F818
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0x8800
	add r3, r5, #0x8800
	mov r0, r6
	mov r2, #0x4400
	bl ov00_022C7994
	mov r0, #1
	str r0, [sp, #0x10]
_022C4A8C:
	ldr r1, [sp, #8]
	mov r0, sl
	mov r2, #0
	bl FUN_0207F828
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022C4B58
	add r0, sp, #0x24
	bl FUN_0207F70C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022C4B58
	ldr r1, [sb, #0x20]
	ldr r0, _022C4B84 @ =0x02318818
	str r1, [sp, #0x14]
	ldr r2, [sb, #0x28]
	ldr r1, [sb, #0x20]
	ldr r4, [r0]
	sub r0, r2, r1
	str r0, [sp, #0x18]
	ldr r2, [r6, #0x48]
	ldr r1, [sb, #0x20]
	add r0, sp, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r2, #0x8000
	str r1, [sp, #0x20]
	mov r1, #0x4000
	mov r3, #1
	bl ov00_022C4B90
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022C4B40
	add r7, sp, #0x14
	mov r5, #0
_022C4B1C:
	ldm r4, {r1, r2}
	mov r0, r7
	mov r3, r5
	add r2, r1, r2
	bl ov00_022C4B90
	add r4, r4, #8
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022C4B1C
_022C4B40:
	ldr r1, [sb, #0x28]
	ldr r2, _022C4B88 @ =0x02000AAC
	ldr r3, [r6, #0x48]
	ldr r0, _022C4B8C @ =0xE12FFF1E
	sub r1, r2, r1
	str r0, [r3, r1]
_022C4B58:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022C4B70
	ldr r1, [sp, #4]
	mov r0, sb
	bl FUN_0207A2DC
_022C4B70:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x6c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C4B7C: .4byte 0x027FFE00
_022C4B80: .4byte 0x0231881C
_022C4B84: .4byte 0x02318818
_022C4B88: .4byte 0x02000AAC
_022C4B8C: .4byte 0xE12FFF1E
	arm_func_end ov00_022C4718

	arm_func_start ov00_022C4B90
ov00_022C4B90: @ 0x022C4B90
	push {r3, lr}
	mov lr, r1
	ldr ip, [r0]
	ldr r1, [r0, #0xc]
	cmp lr, #0x4000
	movlo lr, #0x4000
	cmp r2, #0x8000
	movhi r2, #0x8000
	cmp lr, ip
	add r1, ip, r1
	movlo lr, ip
	cmp r2, r1
	movhi r2, r1
	cmp lr, r2
	pophs {r3, pc}
	cmp r3, #0
	beq _022C4BEC
	ldr r0, [r0, #8]
	sub r2, r2, lr
	add r0, r0, lr
	mov r1, #0
	bl FUN_0207C40C
	pop {r3, pc}
_022C4BEC:
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r3, lr
	add r1, r1, lr
	sub r2, r2, lr
	bl FUN_0207C4C8
	pop {r3, pc}
	arm_func_end ov00_022C4B90

	arm_func_start ov00_022C4C08
ov00_022C4C08: @ 0x022C4C08
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0xff
	bl FUN_0207B7E4
	mov r5, r0
	bl ov00_022C7928
	cmp r0, #0
	bne _022C4C3C
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022C4C3C:
	ldr r0, _022C4E8C @ =0x0232502C
	ldr r0, [r0]
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x524]
	add r1, r1, #1
	cmp r1, #0x10
	ble _022C4C68
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022C4C68:
	ldr r1, _022C4E90 @ =0x000005D4
	mov r6, #0
_022C4C70:
	mla r2, r6, r1, r0
	add r2, r2, #0x1000
	ldr r3, [r2, #0xd40]
	cmp r3, r8
	bne _022C4C94
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022C4C94:
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	moveq r4, r6
	beq _022C4CB4
	add r2, r6, #1
	and r6, r2, #0xff
	cmp r6, #0x10
	blo _022C4C70
_022C4CB4:
	cmp r6, #0x10
	bne _022C4CCC
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022C4CCC:
	ldr r1, _022C4E90 @ =0x000005D4
	ldr r2, _022C4E8C @ =0x0232502C
	mul r6, r4, r1
	add r0, r0, r6
	add r0, r0, #0x1000
	str r8, [r0, #0xd40]
	ldr r0, [r2]
	mov r1, r7
	add r0, r0, #0x388
	add r0, r0, #0x1400
	add sb, r0, r6
	mov r0, sb
	bl ov00_022C4E98
	add r0, r8, #0x1c
	add r1, sb, #0xc4
	mov r2, #0x20
	bl FUN_0207C4C8
	ldr r0, _022C4E8C @ =0x0232502C
	mov r1, sb
	ldr r0, [r0]
	add r0, r0, #0x12c
	add r0, r0, #0x1c00
	add r0, r0, r6
	bl ov00_022C5084
	cmp r0, #0
	bne _022C4D44
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022C4D44:
	ldr r0, _022C4E8C @ =0x0232502C
	mov r1, r8
	ldr r2, [r0]
	add r0, r2, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	add r2, r2, #0x1300
	bl ov00_022C5400
	ldr r1, _022C4E8C @ =0x0232502C
	ldr r0, [r1]
	add r0, r0, r6
	add r0, r0, #0x1000
	strb r4, [r0, #0xd21]
	ldr r0, [r1]
	add r0, r0, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	bl ov00_022C5628
	ldr r2, _022C4E8C @ =0x0232502C
	ldr r3, _022C4E94 @ =0x0231F568
	ldr r1, [r2]
	ldrb r0, [r3]
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r0, [r1, #0xd1f]
	ldr r1, [r2]
	mov r4, #1
	add r1, r1, r6
	add r1, r1, #0x1d00
	strh r4, [r1, #0x4e]
	ldr r1, [r2]
	add r8, r7, #0x1e8
	add r1, r1, r6
	add r1, r1, #0x1000
	str r7, [r1, #0xd44]
	ldr r1, [r2]
	add r4, r7, #0x258
	add r1, r1, r6
	add r1, r1, #0x1000
	str r8, [r1, #0xd54]
	ldr r1, [r2]
	add r7, r0, #1
	add r0, r1, r6
	add r0, r0, #0x1000
	str r4, [r0, #0xd58]
	ldr r0, [r2]
	strb r7, [r3]
	add r0, r0, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd54]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _022C4E50
	bl ov00_022C7C2C
	cmp r0, #0
	bne _022C4E50
	ldr r0, _022C4E8C @ =0x0232502C
	ldr r0, [r0]
	add r0, r0, #0xce0
	add r0, r0, #0x7000
	bl ov00_022C7C48
	ldr r0, _022C4E8C @ =0x0232502C
	mov r1, #0x800
	ldr r0, [r0]
	add r0, r0, #0x4e0
	add r0, r0, #0x7000
	bl ov00_022C7BAC
_022C4E50:
	ldr r2, _022C4E8C @ =0x0232502C
	mov r3, #1
	ldr r1, [r2]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r3, [r1, #0xd52]
	ldr r1, [r2]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x524]
	add r2, r2, #1
	strb r2, [r1, #0x524]
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C4E8C: .4byte 0x0232502C
_022C4E90: .4byte 0x000005D4
_022C4E94: .4byte 0x0231F568
	arm_func_end ov00_022C4C08

	arm_func_start ov00_022C4E98
ov00_022C4E98: @ 0x022C4E98
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0x22c0000
	mov r4, r1
	mov r5, r0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r7, _022C4F08 @ =0x0231812C
	str r0, [r5]
	ldr r0, [r4, #0x34]
	add r8, r5, #0xc
	str r0, [r5, #4]
	mov sb, #0
	add r6, sp, #0
_022C4ECC:
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl ov00_022C4F0C
	add sb, sb, #1
	cmp sb, #3
	add r8, r8, #0x10
	add r7, r7, #4
	blt _022C4ECC
	add r0, r4, #0x160
	add r1, r5, #0x3c
	mov r2, #0x88
	bl FUN_0207C4C8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C4F08: .4byte 0x0231812C
	arm_func_end ov00_022C4E98

	arm_func_start ov00_022C4F0C
ov00_022C4F0C: @ 0x022C4F0C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1]
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _022C4F3C
	cmp r1, #1
	beq _022C4F88
	cmp r1, #2
	beq _022C5058
	pop {r3, r4, r5, r6, r7, pc}
_022C4F3C:
	ldr r0, [r7, #0x28]
	cmp r0, #0x2000000
	blo _022C4F80
	cmp r0, #0x22c0000
	bhs _022C4F80
	ldr r1, [r7, #0x2c]
	add r0, r0, r1
	cmp r0, #0x22c0000
	bhi _022C4F80
	str r1, [r6, #8]
	ldr r0, [r7, #0x28]
	str r0, [r6, #4]
	str r0, [r6]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022C4F80:
	bl FUN_0207BC20
	pop {r3, r4, r5, r6, r7, pc}
_022C4F88:
	ldr ip, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	mov r2, #0
	mov r4, r2
	cmp ip, #0x2000000
	add r3, ip, r1
	blo _022C4FD4
	ldr r0, _022C5078 @ =0x023FE800
	cmp ip, r0
	bhs _022C4FD4
	cmp r3, #0x2300000
	bls _022C5000
	cmp r3, r0
	bhs _022C4FCC
	cmp r1, #0x40000
	movls r4, #1
	bls _022C5000
_022C4FCC:
	mov r2, #1
	b _022C5000
_022C4FD4:
	ldr r1, _022C507C @ =0x037F8000
	cmp ip, r1
	blo _022C4FFC
	add r0, r1, #0x17000
	cmp ip, r0
	bhs _022C4FFC
	cmp r3, r0
	movls r4, #1
	movhi r2, #1
	b _022C5000
_022C4FFC:
	mov r2, #1
_022C5000:
	cmp r2, #1
	bne _022C500C
	bl FUN_0207BC20
_022C500C:
	ldr r0, [r7, #0x3c]
	cmp r4, #0
	str r0, [r6, #8]
	ldr r0, [r7, #0x38]
	str r0, [r6, #4]
	ldreq r0, [r6, #4]
	streq r0, [r6]
	beq _022C5044
	ldr r0, [r5]
	str r0, [r6]
	ldr r1, [r5]
	ldr r0, [r6, #8]
	add r0, r1, r0
	str r0, [r5]
_022C5044:
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022C5058:
	ldr r0, _022C5080 @ =0x027FFE00
	mov r1, #0x160
	stmib r6, {r0, r1}
	str r0, [r6]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C5078: .4byte 0x023FE800
_022C507C: .4byte 0x037F8000
_022C5080: .4byte 0x027FFE00
	arm_func_end ov00_022C4F0C

	arm_func_start ov00_022C5084
ov00_022C5084: @ 0x022C5084
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	add r6, sl, #0xc
	cmp r1, #0
	mov r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r2, r0
_022C50A0:
	str r0, [sl, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _022C50A0
	mov sb, #0
	ldr r4, _022C514C @ =0x0232502C
	strh sb, [r6]
	add r5, r1, #0xc
_022C50D0:
	ldr r0, [r4]
	add r7, r5, sb, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl FUN_020900B0
	lsl r1, sb, #1
	ldrh r3, [r6, r1]
	lsl r2, r0, #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	lsl r3, r2, #0x10
	mov r0, sb
	mov r2, r8
	lsr r7, r3, #0x10
	bl ov00_022C52B0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #2
	addlo r0, r6, sb, lsl #1
	strhlo r7, [r0, #2]
	add r0, sb, #1
	and sb, r0, #0xff
	strhhs r7, [sl, #0x12]
	cmp sb, #3
	blo _022C50D0
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022C514C: .4byte 0x0232502C
	arm_func_end ov00_022C5084

	arm_func_start ov00_022C5150
ov00_022C5150: @ 0x022C5150
	push {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	pophs {r3, r4, r5, pc}
	mov ip, #2
_022C5168:
	add r4, r1, ip, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _022C5188
	sub r4, ip, #1
	lsl ip, r4, #0x18
	asrs ip, ip, #0x18
	bpl _022C5168
_022C5188:
	cmp ip, #0
	movlt r0, #0
	poplt {r3, r4, r5, pc}
	ldr r4, _022C5200 @ =0x0232502C
	add r5, r1, ip, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, ip, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, ip, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5]
	add r1, r2, r1
	str r1, [r0]
	strb ip, [r0, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C5200: .4byte 0x0232502C
	arm_func_end ov00_022C5150

	arm_func_start ov00_022C5204
ov00_022C5204: @ 0x022C5204
	ldr r3, _022C52A8 @ =0x0231812C
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _022C5248
	cmp r0, #1
	beq _022C5264
	cmp r0, #2
	bne _022C5298
	ldr r0, _022C52AC @ =0x027FFE00
	cmp r1, r0
	blo _022C52A0
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _022C52A0
	mov r0, #1
	bx lr
_022C5248:
	cmp r1, #0x2000000
	blo _022C52A0
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _022C52A0
	mov r0, #1
	bx lr
_022C5264:
	cmp r1, #0x22c0000
	blo _022C527C
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_022C527C:
	cmp r1, #0x2000000
	blo _022C52A0
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _022C52A0
	mov r0, #1
	bx lr
_022C5298:
	mov r0, #0
	bx lr
_022C52A0:
	mov r0, #0
	bx lr
	.align 2, 0
_022C52A8: .4byte 0x0231812C
_022C52AC: .4byte 0x027FFE00
	arm_func_end ov00_022C5204

	arm_func_start ov00_022C52B0
ov00_022C52B0: @ 0x022C52B0
	push {r3, lr}
	ldr r3, _022C5370 @ =0x0231812C
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _022C52D4
	cmp r3, #1
	beq _022C52DC
	cmp r3, #2
	bne _022C5360
_022C52D4:
	bl ov00_022C5204
	pop {r3, pc}
_022C52DC:
	cmp r1, #0x2000000
	blo _022C5334
	ldr r0, _022C5374 @ =0x023FE800
	cmp r1, r0
	bhs _022C5334
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _022C5308
	cmp r1, #0x2300000
	movhi r0, #0
	pophi {r3, pc}
_022C5308:
	cmp r1, #0x2300000
	movls r0, #1
	popls {r3, pc}
	ldr r0, _022C5374 @ =0x023FE800
	cmp r1, r0
	bhs _022C532C
	cmp r2, #0x40000
	movls r0, #1
	popls {r3, pc}
_022C532C:
	mov r0, #0
	pop {r3, pc}
_022C5334:
	ldr r3, _022C5378 @ =0x037F8000
	cmp r1, r3
	blo _022C5368
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _022C5368
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	pop {r3, pc}
_022C5360:
	mov r0, #0
	pop {r3, pc}
_022C5368:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022C5370: .4byte 0x0231812C
_022C5374: .4byte 0x023FE800
_022C5378: .4byte 0x037F8000
	arm_func_end ov00_022C52B0

	arm_func_start ov00_022C537C
ov00_022C537C: @ 0x022C537C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl FUN_0207A2DC
	bl FUN_0207A300
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov00_022C77C0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C537C

	arm_func_start ov00_022C53B4
ov00_022C53B4: @ 0x022C53B4
	asr r3, r1, #1
	cmp r3, #0
	mov r2, #0
	ble _022C53D8
_022C53C4:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _022C53C4
_022C53D8:
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _022C53FC @ =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
_022C53FC: .4byte 0x0000FFFF
	arm_func_end ov00_022C53B4

	arm_func_start ov00_022C5400
ov00_022C5400: @ 0x022C5400
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r6
	mov r0, #0
	mov r2, #0x4c0
	bl FUN_0207C2B8
	mov r0, #0
	strb r0, [r6, #0x4b2]
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r2, #1
	bl ov00_022C54F0
	cmp r0, #0
	moveq r7, #1
	ldr r0, [r5, #0x10]
	mov r1, r6
	mov r2, #0
	movne r7, #0
	bl ov00_022C54F0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	orrs r0, r7, r0
	beq _022C5480
	mov r3, #1
	mov r1, r6
	mov r0, #0
	mov r2, #0x220
	strb r3, [r6, #0x4b2]
	bl FUN_0207C358
_022C5480:
	ldr r0, [r5, #0x14]
	cmp r4, #0
	str r0, [r6, #0x4b8]
	beq _022C54A0
	mov r0, r4
	add r1, r6, #0x220
	mov r2, #0x16
	bl FUN_0207C2E0
_022C54A0:
	ldrb r0, [r5, #0x18]
	strb r0, [r6, #0x236]
	ldr r0, [r5, #4]
	bl ov00_022C5600
	lsl r2, r0, #0x11
	ldr r0, [r5, #4]
	add r1, r6, #0x238
	lsr r2, r2, #0x10
	bl FUN_0207C2E0
	ldr r0, [r5, #8]
	add r1, r6, #0x298
	mov r2, #0xc0
	bl FUN_0207C2E0
	mov r1, #1
	strb r1, [r6, #0x358]
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	add r0, r6, #0x400
	strh r1, [r0, #0xb0]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C5400

	arm_func_start ov00_022C54F0
ov00_022C54F0: @ 0x022C54F0
	push {r4, r5, r6, lr}
	sub sp, sp, #0x48
	cmp r2, #0
	movne r4, #0x200
	moveq r4, #0x20
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	addne r5, r5, #0x20
	cmp r6, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	add r0, sp, #0
	bl FUN_0207F3E4
	add r0, sp, #0
	mov r1, r6
	bl FUN_0207F6C4
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	cmp r4, r0
	add r0, sp, #0
	beq _022C5570
	bl FUN_0207F70C
	add sp, sp, #0x48
	mov r0, #0
	pop {r4, r5, r6, pc}
_022C5570:
	mov r1, r5
	mov r2, r4
	bl FUN_0207F818
	add r0, sp, #0
	bl FUN_0207F70C
	mov r0, #1
	add sp, sp, #0x48
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C54F0

	arm_func_start ov00_022C5590
ov00_022C5590: @ 0x022C5590
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r2
	add r4, r6, #0x5e
	mov r0, r1
	add r1, r4, #0x300
	ldr r2, _022C55FC @ =0x0000014A
	mov r4, r3
	mov r7, #1
	bl FUN_0207C2E0
	mov r2, #0
	mov r1, #2
_022C55C0:
	tst r5, r1, lsl r2
	addne r0, r7, #1
	add r2, r2, #1
	andne r7, r0, #0xff
	cmp r2, #0xf
	blt _022C55C0
	strb r7, [r6, #0x358]
	orr r1, r5, #1
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	strh r4, [r0, #0x5c]
	ldrb r0, [r6, #0x4b4]
	add r0, r0, #1
	strb r0, [r6, #0x4b4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C55FC: .4byte 0x0000014A
	arm_func_end ov00_022C5590

	arm_func_start ov00_022C5600
ov00_022C5600: @ 0x022C5600
	ldrh r1, [r0], #2
	mov r2, #0
	cmp r1, #0
	beq _022C5620
_022C5610:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _022C5610
_022C5620:
	mov r0, r2
	bx lr
	arm_func_end ov00_022C5600

	arm_func_start ov00_022C5628
ov00_022C5628: @ 0x022C5628
	ldr r1, _022C5668 @ =0x0231F580
	ldr r2, [r1, #0x18]
	cmp r2, #0
	streq r0, [r1, #0x18]
	beq _022C565C
	ldr r1, [r2, #0x4bc]
	cmp r1, #0
	beq _022C5658
_022C5648:
	mov r2, r1
	ldr r1, [r1, #0x4bc]
	cmp r1, #0
	bne _022C5648
_022C5658:
	str r0, [r2, #0x4bc]
_022C565C:
	mov r1, #0
	str r1, [r0, #0x4bc]
	bx lr
	.align 2, 0
_022C5668: .4byte 0x0231F580
	arm_func_end ov00_022C5628
_022C566C:
	.byte 0x1C, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x18, 0x20, 0x80, 0xE5, 0x1C, 0x20, 0x80, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x24, 0x10, 0xC0, 0xE5, 0x08, 0xC0, 0x9F, 0xE5, 0x14, 0x20, 0x80, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x80, 0xF5, 0x31, 0x02, 0x98, 0x56, 0x2C, 0x02

	arm_func_start ov00_022C5698
ov00_022C5698: @ 0x022C5698
	ldr r0, _022C56B8 @ =0x0231F580
	mov r1, #0
	strb r1, [r0, #0x25]
	strb r1, [r0, #0x26]
	strb r1, [r0, #0x27]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	bx lr
	.align 2, 0
_022C56B8: .4byte 0x0231F580
	arm_func_end ov00_022C5698

	arm_func_start ov00_022C56BC
ov00_022C56BC: @ 0x022C56BC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _022C5744 @ =0x0231F580
	mov r7, r0
	mov r6, r1
	mov r5, r2
_022C56D0:
	ldrb r0, [r4, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022C56D0
_022C56E0: @ jump table
	b _022C56FC @ case 0
	b _022C56FC @ case 1
	b _022C570C @ case 2
	b _022C5714 @ case 3
	b _022C5728 @ case 4
	b _022C5730 @ case 5
	b _022C56D0 @ case 6
_022C56FC:
	bl ov00_022C5748
	cmp r0, #0
	bne _022C56D0
	pop {r3, r4, r5, r6, r7, pc}
_022C570C:
	bl ov00_022C57E8
	b _022C56D0
_022C5714:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022C583C
	pop {r3, r4, r5, r6, r7, pc}
_022C5728:
	bl ov00_022C59A0
	b _022C56D0
_022C5730:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022C59D0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C5744: .4byte 0x0231F580
	arm_func_end ov00_022C56BC

	arm_func_start ov00_022C5748
ov00_022C5748: @ 0x022C5748
	push {r4, lr}
	sub sp, sp, #8
	ldr r0, _022C57E0 @ =0x0231F580
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _022C5798
	bl ov00_022C78A0
	mov r4, r0
	bl ov00_022C78B4
	str r0, [sp]
	mov ip, #8
	ldr r1, _022C57E4 @ =0x0231F5C0
	mov r3, r4
	mov r0, #0
	mov r2, #0x70
	str ip, [sp, #4]
	bl ov00_022C14A8
	add sp, sp, #8
	mov r0, #0
	pop {r4, pc}
_022C5798:
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldrne r1, [r0, #0x4bc]
	cmpne r1, #0
	ldreq r0, _022C57E0 @ =0x0231F580
	ldreq r1, [r0, #0x18]
	ldr r0, _022C57E0 @ =0x0231F580
	str r1, [r0, #0x1c]
	bl ov00_022C5698
	ldr r1, _022C57E0 @ =0x0231F580
	mov r2, #2
	ldr r3, [r1, #0x1c]
	mov r0, #1
	ldrb r3, [r3, #0x4b4]
	strb r3, [r1, #0x26]
	strb r2, [r1, #0x24]
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022C57E0: .4byte 0x0231F580
_022C57E4: .4byte 0x0231F5C0
	arm_func_end ov00_022C5748

	arm_func_start ov00_022C57E8
ov00_022C57E8: @ 0x022C57E8
	ldr r0, _022C5838 @ =0x0231F580
	ldrb r1, [r0, #0x24]
	cmp r1, #2
	bxne lr
	ldr r2, [r0, #0x1c]
	ldrb r1, [r2, #0x4b2]
	cmp r1, #0
	bne _022C5818
	mov r1, #9
	strb r1, [r0, #0x28]
	str r2, [r0, #0x20]
	b _022C5828
_022C5818:
	mov r1, #4
	strb r1, [r0, #0x28]
	add r1, r2, #0x220
	str r1, [r0, #0x20]
_022C5828:
	ldr r0, _022C5838 @ =0x0231F580
	mov r1, #3
	strb r1, [r0, #0x24]
	bx lr
	.align 2, 0
_022C5838: .4byte 0x0231F580
	arm_func_end ov00_022C57E8

	arm_func_start ov00_022C583C
ov00_022C583C: @ 0x022C583C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _022C5990 @ =0x0231F580
	mov r6, r0
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #0x20]
	add ip, r4, #0x358
	add r7, r0, #0x62
	cmp r7, ip
	movls r0, #0x62
	mov r5, r1
	mov r4, r2
	strbls r0, [r3, #0x4c]
	bls _022C5894
	sub r7, ip, r0
	and r1, r7, #0xff
	ldr r0, _022C5994 @ =0x0231F5CE
	rsb r2, r1, #0x62
	add r1, r0, r1
	mov r0, #0
	strb r7, [r3, #0x4c]
	bl FUN_0207C2B8
_022C5894:
	ldr r0, _022C5990 @ =0x0231F580
	ldr r1, _022C5994 @ =0x0231F5CE
	ldrb r2, [r0, #0x4c]
	ldr r0, [r0, #0x20]
	bl FUN_0207C2E0
	ldr r2, _022C5990 @ =0x0231F580
	ldr r0, _022C5998 @ =0x0231F5C8
	ldrb r7, [r2, #0x27]
	mov r3, #0
	mov r1, #0x68
	strb r7, [r2, #0x4a]
	ldrb r7, [r2, #0x28]
	strb r7, [r2, #0x4b]
	ldr r7, [r2, #0x1c]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b2]
	bic lr, lr, #3
	and ip, ip, #3
	orr ip, lr, ip
	strb ip, [r2, #0x44]
	ldrb ip, [r7, #0x4b3]
	strb ip, [r2, #0x45]
	ldrb ip, [r2, #0x26]
	strb ip, [r2, #0x46]
	ldr ip, [r7, #0x4b8]
	str ip, [r2, #0x40]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b5]
	bic lr, lr, #0xfc
	lsl ip, ip, #0x1a
	orr ip, lr, ip, lsr #24
	strb ip, [r2, #0x44]
	ldrb lr, [r2, #0x29]
	add ip, lr, #1
	strb ip, [r2, #0x29]
	strb lr, [r2, #0x47]
	strh r3, [r2, #0x48]
	bl ov00_022C53B4
	ldr r1, _022C5990 @ =0x0231F580
	strh r0, [r1, #0x48]
	ldrb r0, [r1, #0x27]
	add r2, r0, #1
	strb r2, [r1, #0x27]
	ldrb r0, [r1, #0x28]
	and r2, r2, #0xff
	cmp r2, r0
	movhs r0, #4
	strbhs r0, [r1, #0x24]
	bhs _022C5964
	ldr r0, [r1, #0x20]
	add r0, r0, #0x62
	str r0, [r1, #0x20]
_022C5964:
	orr r0, r4, #3
	ldr r1, _022C599C @ =0x0231F5C0
	mov r3, r6
	str r5, [sp]
	and r4, r0, #0xff
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl ov00_022C14A8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C5990: .4byte 0x0231F580
_022C5994: .4byte 0x0231F5CE
_022C5998: .4byte 0x0231F5C8
_022C599C: .4byte 0x0231F5C0
	arm_func_end ov00_022C583C

	arm_func_start ov00_022C59A0
ov00_022C59A0: @ 0x022C59A0
	ldr r1, _022C59CC @ =0x0231F580
	mov r3, #1
	ldr r0, [r1, #0x1c]
	mov r2, #5
	add r0, r0, #0x400
	strh r3, [r0, #0xb0]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #0x4b4]
	strb r0, [r1, #0x26]
	strb r2, [r1, #0x24]
	bx lr
	.align 2, 0
_022C59CC: .4byte 0x0231F580
	arm_func_end ov00_022C59A0

	arm_func_start ov00_022C59D0
ov00_022C59D0: @ 0x022C59D0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r3, _022C5C28 @ =0x0231F580
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	ldrb r3, [r3, #0x26]
	ldrb r0, [r0, #0x4b4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r3, r0
	beq _022C5A00
	bl ov00_022C59A0
_022C5A00:
	ldr r2, _022C5C28 @ =0x0231F580
	ldrb r0, [r2, #0x44]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r2, #0x44]
	ldr r0, [r2, #0x1c]
	ldrb r3, [r0, #0x4b3]
	add r1, r0, #0x300
	strb r3, [r2, #0x45]
	ldrb r3, [r2, #0x26]
	strb r3, [r2, #0x46]
	ldr r3, [r0, #0x4b8]
	str r3, [r2, #0x40]
	ldrb r4, [r2, #0x44]
	ldrb r3, [r0, #0x4b5]
	bic r4, r4, #0xfc
	lsl r3, r3, #0x1a
	orr r3, r4, r3, lsr #24
	strb r3, [r2, #0x44]
	ldrb r4, [r2, #0x29]
	add r3, r4, #1
	strb r3, [r2, #0x29]
	strb r4, [r2, #0x47]
	ldrb r3, [r0, #0x358]
	strb r3, [r2, #0x4a]
	ldrh r3, [r1, #0x5a]
	strh r3, [r2, #0x4c]
	ldrh r1, [r1, #0x5c]
	strh r1, [r2, #0x4e]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bne _022C5A94
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _022C5A94
	ldr r0, [r0, #0x4b8]
	blx r1
_022C5A94:
	ldr r0, _022C5C28 @ =0x0231F580
	mov sb, #0
	ldr r1, _022C5C2C @ =0x0231F628
	ldr r2, [r0, #0x1c]
	b _022C5AB8
_022C5AA8:
	add r0, r2, sb
	ldrb r0, [r0, #0x4a8]
	strb r0, [r1, sb]
	add sb, sb, #1
_022C5AB8:
	cmp sb, #8
	blt _022C5AA8
	ldr r1, _022C5C30 @ =0x0231F5D0
	mov r0, #0
	mov r2, #0x58
	bl FUN_0207C2B8
	ldr r5, _022C5C28 @ =0x0231F580
	mov sl, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	mov sb, sl
	ldr r7, _022C5C30 @ =0x0231F5D0
	eor r0, r2, r0
	lsl r4, r0, #0x10
	mov r8, r6
	mov fp, #0x16
	b _022C5B5C
_022C5B0C:
	lsl r0, r8, sb
	tst r0, r4, lsr #16
	beq _022C5B58
	ldr r0, [r5, #0x1c]
	mla r1, sl, fp, r7
	add r0, r0, #0x5e
	add r2, r0, #0x300
	mov r0, #0x16
	mla r0, sb, r0, r2
	mov r2, #0x16
	bl FUN_0207C2E0
	ldr r0, [r5, #0x1c]
	add sl, sl, #1
	add r0, r0, #0x400
	ldrh r1, [r0, #0xb0]
	cmp sl, #4
	orr r1, r1, r6, lsl sb
	strh r1, [r0, #0xb0]
	beq _022C5B64
_022C5B58:
	add sb, sb, #1
_022C5B5C:
	cmp sb, #0xf
	blt _022C5B0C
_022C5B64:
	cmp sl, #4
	bhs _022C5B84
	mov r0, #0x16
	mul r1, sl, r0
	ldr r2, _022C5C30 @ =0x0231F5D0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf0
	strb r0, [r2, r1]
_022C5B84:
	ldr r2, _022C5C28 @ =0x0231F580
	mov r3, #0
	ldr r0, _022C5C34 @ =0x0231F5C8
	mov r1, #0x68
	strh r3, [r2, #0x48]
	bl ov00_022C53B4
	ldr r2, _022C5C28 @ =0x0231F580
	strh r0, [r2, #0x48]
	ldr r1, [r2, #0x1c]
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r3, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	ldr r1, _022C5C38 @ =0x0231F5C0
	cmp r3, r0
	moveq r0, #1
	strbeq r0, [r2, #0x24]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	orr r2, r0, #3
	ldr r0, [sp, #0xc]
	and r4, r2, #0xff
	str r0, [sp]
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl ov00_022C14A8
	ldr r0, _022C5C28 @ =0x0231F580
	ldr r1, [r0, #0x10]
	cmp r1, #1
	addne sp, sp, #0x14
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	addeq sp, sp, #0x14
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x4b8]
	blx r1
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C5C28: .4byte 0x0231F580
_022C5C2C: .4byte 0x0231F628
_022C5C30: .4byte 0x0231F5D0
_022C5C34: .4byte 0x0231F5C8
_022C5C38: .4byte 0x0231F5C0
	arm_func_end ov00_022C59D0

	arm_func_start ov00_022C5C3C
ov00_022C5C3C: @ 0x022C5C3C
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov00_022BF640
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrh lr, [r4, #4]
	mov r2, #1
	mov ip, #0
	mov r5, lr
	mov r3, r2
_022C5C68:
	sub r1, r5, #1
	tst r0, r3, lsl r1
	cmpne lr, r5
	strhne r5, [r4, #4]
	bne _022C5CA4
	add r1, ip, #1
	lsl r1, r1, #0x10
	cmp r5, #0x10
	lsr ip, r1, #0x10
	moveq r1, r2
	addne r1, r5, #1
	lsl r1, r1, #0x10
	cmp ip, #0x10
	lsr r5, r1, #0x10
	blo _022C5C68
_022C5CA4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022C5C3C

	arm_func_start ov00_022C5CAC
ov00_022C5CAC: @ 0x022C5CAC
	ldr r1, _022C5D08 @ =0x02325020
	mov r0, #0
	ldr ip, [r1, #8]
	mov r3, r0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldrbeq r1, [ip, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _022C5CF0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_022C5CF0:
	cmp r2, #0
	addne r1, ip, #0x500
	ldrhne r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
	.align 2, 0
_022C5D08: .4byte 0x02325020
	arm_func_end ov00_022C5CAC

	arm_func_start ov00_022C5D0C
ov00_022C5D0C: @ 0x022C5D0C
	push {r3, lr}
	ldr r0, _022C5D54 @ =ov00_022C5DA0
	bl ov00_022BF2C4
	mov r1, r0
	mov r0, #0x80
	bl ov00_022C7948
	ldr r3, _022C5D58 @ =0x02318820
	ldr r0, _022C5D54 @ =ov00_022C5DA0
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl ov00_022C15B0
	mov r1, r0
	mov r0, #0x1d
	bl ov00_022C7948
	pop {r3, pc}
	.align 2, 0
_022C5D54: .4byte ov00_022C5DA0
_022C5D58: .4byte 0x02318820
	arm_func_end ov00_022C5D0C

	arm_func_start ov00_022C5D5C
ov00_022C5D5C: @ 0x022C5D5C
	push {r3, lr}
	ldr r2, _022C5D9C @ =0x02325020
	mov ip, #0
	ldr r3, [r2, #8]
	mov r1, r0
	strb ip, [r3, #0x50d]
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1300
	strh ip, [r0, #0x16]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x51c]
	cmp r2, #0
	popeq {r3, pc}
	mov r0, #0x11
	blx r2
	pop {r3, pc}
	.align 2, 0
_022C5D9C: .4byte 0x02325020
	arm_func_end ov00_022C5D5C

	arm_func_start ov00_022C5DA0
ov00_022C5DA0: @ 0x022C5DA0
	push {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0x19
	bgt _022C5E08
	bge _022C5EE4
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _022C65C8
_022C5DC8: @ jump table
	b _022C5E24 @ case 0
	b _022C6398 @ case 1
	b _022C6488 @ case 2
	b _022C65C8 @ case 3
	b _022C65C8 @ case 4
	b _022C65C8 @ case 5
	b _022C65C8 @ case 6
	b _022C5EAC @ case 7
	b _022C5F80 @ case 8
	b _022C65C8 @ case 9
	b _022C65C8 @ case 10
	b _022C65C8 @ case 11
	b _022C65C8 @ case 12
	b _022C64D0 @ case 13
	b _022C61D4 @ case 14
	b _022C6274 @ case 15
_022C5E08:
	cmp r1, #0x1d
	bgt _022C5E18
	beq _022C5E5C
	b _022C65C8
_022C5E18:
	cmp r1, #0x80
	beq _022C6508
	b _022C65C8
_022C5E24:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022C5E50
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5E50:
	bl ov00_022C5D0C
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5E5C:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022C5E88
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5E88:
	ldr r1, _022C65E8 @ =0x02325020
	ldr r0, _022C65EC @ =ov00_022C5DA0
	ldr r1, [r1, #8]
	bl ov00_022BFC14
	mov r1, r0
	mov r0, #7
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5EAC:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x15
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r0, _022C65EC @ =ov00_022C5DA0
	mov r1, #1
	bl ov00_022C1560
	mov r1, r0
	mov r0, #0x19
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5EE4:
	ldr r2, _022C65E8 @ =0x02325020
	ldr ip, [r2, #8]
	add r1, ip, #0x500
	ldrh r3, [r1, #0x26]
	cmp r3, #0
	bne _022C5F44
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022C5F20
	ldr r2, [ip, #0x51c]
	mov r1, r4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5F20:
	ldr r1, _022C65F0 @ =0x02318820
	ldr r0, _022C65EC @ =ov00_022C5DA0
	ldr r1, [r1, #0xc]
	bl ov00_022BFD40
	mov r1, r0
	mov r0, #8
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5F44:
	ldrh r3, [r4, #2]
	cmp r3, #0
	beq _022C5F74
	mov r0, #0
	strh r0, [r1, #0x26]
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5F74:
	bl ov00_022C5D5C
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5F80:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022C5FAC
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C5FAC:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _022C5FDC
	bge _022C6024
	cmp r0, #2
	bgt _022C61B4
	cmp r0, #0
	blt _022C61B4
	beq _022C5FFC
	cmp r0, #2
	beq _022C6180
	b _022C61B4
_022C5FDC:
	cmp r0, #9
	bgt _022C5FEC
	beq _022C6144
	b _022C61B4
_022C5FEC:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	b _022C61B4
_022C5FFC:
	ldr r1, _022C65E8 @ =0x02325020
	mov r2, #0
	ldr r0, [r1, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	strh r2, [r0, #0x28]
	pop {r3, r4, pc}
_022C6024:
	ldr r2, _022C65E8 @ =0x02325020
	ldr r0, [r2, #8]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x26]
	cmp r1, #1
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldrh lr, [r0, #0x2a]
	ldrh r3, [r4, #0x10]
	mov ip, #1
	mov r1, r4
	orr r3, lr, ip, lsl r3
	strh r3, [r0, #0x2a]
	ldr r2, [r2, #8]
	mov r0, #0
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r1, _022C65E8 @ =0x02325020
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	bne _022C6114
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x31c]
	cmp r2, #0
	bne _022C6114
	mov r2, #1
	str r2, [r0, #0x31c]
	ldr r0, [r1, #8]
	ldr r1, _022C65E8 @ =0x02325020
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	ldr ip, [r1, #8]
	mov r1, #1
	cmp r0, #0
	movne r2, #0
	lsl r0, r2, #0x10
	lsr r3, r0, #0x10
	add r0, ip, #0x500
	ldrh r4, [r0, #0x18]
	mov r2, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r0, #0x1a]
	ldr r1, [ip, #0x504]
	ldr r0, _022C65EC @ =ov00_022C5DA0
	add r3, ip, #0x40
	bl ov00_022C038C
	mov r1, r0
	mov r0, #0xe
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6114:
	bl ov00_022C5CAC
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldr r1, _022C65E8 @ =0x02325020
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6144:
	ldr r2, _022C65E8 @ =0x02325020
	ldrh r3, [r4, #0x10]
	ldr r1, [r2, #8]
	mov r0, #1
	add r1, r1, #0x500
	ldrh ip, [r1, #0x2a]
	mvn r3, r0, lsl r3
	and r3, ip, r3
	strh r3, [r1, #0x2a]
	ldr r2, [r2, #8]
	mov r1, r4
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6180:
	ldr r0, _022C65E8 @ =0x02325020
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	popeq {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r4
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C61B4:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C61D4:
	ldr r2, _022C65E8 @ =0x02325020
	mov r1, #0
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _022C6200
	cmp r0, #0xb
	beq _022C623C
	b _022C6258
_022C6200:
	ldr r0, [r2, #8]
	mov r3, #1
	add r0, r0, #0x500
	strh r3, [r0, #0x28]
	ldr r2, [r2, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r2, #0x51c]
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C623C:
	ldr r0, [r2, #8]
	ldr r1, [r4, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6258:
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6274:
	ldr r0, _022C65E8 @ =0x02325020
	ldr r3, [r0, #0xc]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _022C62D0
	mov r2, #0
	mov r1, r2
_022C6294:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _022C62B4
	add r2, r2, #1
	cmp r2, #2
	bhs _022C62C0
_022C62B4:
	add r1, r1, #1
	cmp r1, #0xf
	blo _022C6294
_022C62C0:
	cmp r2, #1
	bne _022C62D0
	ldr r0, _022C65F4 @ =0x000032C8
	bl FUN_0207B854
_022C62D0:
	ldr r0, _022C65E8 @ =0x02325020
	mov r2, #0
	ldr r1, [r0, #8]
	strb r2, [r1, #0x50c]
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _022C6334
	ldr r0, [r0, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r0, _022C65E8 @ =0x02325020
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6334:
	cmp r1, #0xa
	ldr r0, [r0, #8]
	mov r1, r4
	bne _022C6358
	ldr r2, [r0, #0x51c]
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6358:
	ldr r2, [r0, #0x51c]
	mov r0, #0x13
	blx r2
	ldr r0, _022C65E8 @ =0x02325020
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6398:
	ldr r1, _022C65E8 @ =0x02325020
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _022C6414
	ldrh r0, [r4, #2]
	mov r2, #0
	cmp r0, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	beq _022C63E8
	strh r2, [r0, #0x26]
	ldr r0, [r1, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C63E8:
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _022C65EC @ =ov00_022C5DA0
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl ov00_022BFBD4
	mov r1, r0
	mov r0, #2
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6414:
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov00_022BF308
	mov r0, #0
	bl ov00_022BF2C4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022C6468
	ldr r2, _022C65E8 @ =0x02325020
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6468:
	ldr r0, _022C65EC @ =ov00_022C5DA0
	mov r1, #0
	bl ov00_022C1560
	mov r1, r0
	mov r0, #0x19
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C6488:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _022C64C4
	ldr r2, _022C65E8 @ =0x02325020
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C64C4:
	bl ov00_022C5D5C
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C64D0:
	ldrh r0, [r4, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, pc}
	ldr r0, _022C65E8 @ =0x02325020
	ldrh r1, [r4, #0xa]
	ldr r0, [r0, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	ldrh r2, [r0, #0x2a]
	mvn r1, r1
	and r1, r2, r1
	strh r1, [r0, #0x2a]
	pop {r3, r4, pc}
_022C6508:
	ldrh r0, [r4, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _022C65E0
_022C651C: @ jump table
	b _022C653C @ case 0
	b _022C655C @ case 1
	b _022C657C @ case 2
	b _022C659C @ case 3
	b _022C65E0 @ case 4
	b _022C65E0 @ case 5
	b _022C65BC @ case 6
	b _022C65E0 @ case 7
_022C653C:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1d
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C655C:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1f
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C657C:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x20
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C659C:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x21
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C65BC:
	bl FUN_0207BC20
	add sp, sp, #0x1c
	pop {r3, r4, pc}
_022C65C8:
	ldr r0, _022C65E8 @ =0x02325020
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
_022C65E0:
	add sp, sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_022C65E8: .4byte 0x02325020
_022C65EC: .4byte ov00_022C5DA0
_022C65F0: .4byte 0x02318820
_022C65F4: .4byte 0x000032C8
	arm_func_end ov00_022C5DA0

	arm_func_start ov00_022C65F8
ov00_022C65F8: @ 0x022C65F8
	push {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	popne {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _022C6634
	bge _022C664C
	cmp r0, #9
	popgt {r3, pc}
	cmp r0, #7
	poplt {r3, pc}
	cmpne r0, #9
	pop {r3, pc}
_022C6634:
	cmp r0, #0x1a
	popgt {r3, pc}
	cmp r0, #0x19
	poplt {r3, pc}
	cmpne r0, #0x1a
	pop {r3, pc}
_022C664C:
	ldr r2, _022C6664 @ =0x02325020
	mov r0, #9
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	pop {r3, pc}
	.align 2, 0
_022C6664: .4byte 0x02325020
	arm_func_end ov00_022C65F8

	arm_func_start ov00_022C6668
ov00_022C6668: @ 0x022C6668
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrh r2, [r6]
	ldr r1, _022C6E80 @ =0x02325020
	cmp r2, #0x1d
	ldr r4, [r1, #8]
	bgt _022C66F4
	cmp r2, #0x1d
	bge _022C6760
	cmp r2, #0x15
	addls pc, pc, r2, lsl #2
	b _022C6E68
_022C669C: @ jump table
	b _022C6700 @ case 0
	b _022C6D80 @ case 1
	b _022C6DE0 @ case 2
	b _022C6E68 @ case 3
	b _022C6E68 @ case 4
	b _022C6E68 @ case 5
	b _022C6E68 @ case 6
	b _022C6E68 @ case 7
	b _022C6E68 @ case 8
	b _022C6E68 @ case 9
	b _022C67FC @ case 10
	b _022C6AC4 @ case 11
	b _022C6B14 @ case 12
	b _022C6E68 @ case 13
	b _022C6C8C @ case 14
	b _022C6D00 @ case 15
	b _022C6E68 @ case 16
	b _022C6E68 @ case 17
	b _022C6E68 @ case 18
	b _022C6E68 @ case 19
	b _022C6E68 @ case 20
	b _022C6E1C @ case 21
_022C66F4:
	cmp r2, #0x80
	beq _022C6E44
	b _022C6E68
_022C6700:
	ldrh r0, [r6, #2]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	cmp r0, #0
	beq _022C6724
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6724:
	mov r0, #0x15
	blx r2
	ldr r3, _022C6E84 @ =0x02318820
	ldr r0, _022C6E88 @ =ov00_022C6668
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl ov00_022C15B0
	mov r1, r0
	mov r0, #0x1d
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6760:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022C6784
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6784:
	add r0, r4, #0x440
	str r0, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	strheq r0, [r1, #0x24]
	ldr r0, _022C6E80 @ =0x02325020
	ldrh r1, [r0, #0x26]
	cmp r1, #0
	moveq r1, #0xc8
	strheq r1, [r0, #0x26]
	ldr r0, _022C6E80 @ =0x02325020
	mov r1, #0xff
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	strb r1, [r0, #0x2c]
	strb r1, [r0, #0x2d]
	str r2, [r4, #0x5e4]
	ldr r0, _022C6E88 @ =ov00_022C6668
	ldr r1, _022C6E8C @ =0x02325040
	str r2, [r4, #0x5e8]
	bl ov00_022BFDEC
	mov r1, r0
	mov r0, #0xa
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C67FC:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022C6820
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6820:
	ldrh r0, [r6, #8]
	cmp r0, #3
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #4
	beq _022C6A4C
	cmp r0, #5
	bne _022C6AAC
	add ip, r4, #0x600
	mov r5, #0
	add r0, r4, #0x500
	mov fp, #0x180
	b _022C697C
_022C6854:
	mla r2, r5, fp, ip
	ldrb r3, [r6, #0xa]
	ldrb r1, [r2, #0xca]
	mov lr, #0
	mov sl, lr
	cmp r3, r1
	ldrbeq r1, [r2, #0xcb]
	ldrbeq r2, [r6, #0xb]
	mov r7, lr
	mov r8, lr
	cmpeq r2, r1
	moveq sl, #1
	mov sb, lr
	cmp sl, #0
	beq _022C68A8
	mov r2, #0x180
	mla r2, r5, r2, ip
	ldrb r1, [r6, #0xc]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq sb, #1
_022C68A8:
	cmp sb, #0
	beq _022C68C8
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xd]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, #1
_022C68C8:
	cmp r8, #0
	beq _022C68E8
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xe]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq r7, #1
_022C68E8:
	cmp r7, #0
	beq _022C6908
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xf]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq lr, #1
_022C6908:
	cmp lr, #0
	beq _022C6978
	mov r0, #0x180
	mla r0, r5, r0, ip
	ldrh r1, [r6, #0x36]
	add sb, r6, #0x38
	add r8, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r7, #8
_022C692C:
	ldm sb!, {r0, r1, r2, r3}
	stm r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _022C692C
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_0207A2A4
	ldr r1, _022C6E80 @ =0x02325020
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_0207BD3C
	str r5, [r4, #0x5ec]
	b _022C69EC
_022C6978:
	add r5, r5, #1
_022C697C:
	ldrh r1, [r0, #0xe0]
	cmp r5, r1
	blt _022C6854
	cmp r5, #0x10
	bge _022C69EC
	mov r0, #0x180
	mla r1, r5, r0, ip
	mov r0, r6
	add r7, r5, #1
	add r3, r4, #0x500
	add r1, r1, #0xc0
	mov r2, #0xb8
	strh r7, [r3, #0xe0]
	bl FUN_0207C2E0
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_0207A2A4
	ldr r1, _022C6E80 @ =0x02325020
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_0207BD3C
	str r5, [r4, #0x5ec]
_022C69EC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #4
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _022C6A2C
	ldr r0, _022C6E8C @ =0x02325040
	bl ov00_022C5C3C
	cmp r0, #0
	bne _022C6A2C
	bl ov00_022C7508
_022C6A2C:
	ldr r0, _022C6E88 @ =ov00_022C6668
	ldr r1, _022C6E8C @ =0x02325040
	bl ov00_022BFDEC
	mov r1, r0
	mov r0, #0xa
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6A4C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #5
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _022C6A8C
	ldr r0, _022C6E8C @ =0x02325040
	bl ov00_022C5C3C
	cmp r0, #0
	bne _022C6A8C
	bl ov00_022C7508
_022C6A8C:
	ldr r0, _022C6E88 @ =ov00_022C6668
	ldr r1, _022C6E8C @ =0x02325040
	bl ov00_022BFDEC
	mov r1, r0
	mov r0, #0xa
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6AAC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6AC4:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022C6AE8
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6AE8:
	ldr r1, [r4, #0x520]
	mov r2, #0
	ldr r0, _022C6E88 @ =ov00_022C6668
	mov r3, #1
	str r2, [sp]
	bl ov00_022C0068
	mov r1, r0
	mov r0, #0xc
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6B14:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022C6B44
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0xe0]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xb
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6B44:
	ldrh r0, [r6, #8]
	cmp r0, #9
	bgt _022C6B70
	cmp r0, #6
	blt _022C6C74
	beq _022C6B80
	cmp r0, #7
	beq _022C6B9C
	cmp r0, #9
	beq _022C6C4C
	b _022C6C74
_022C6B70:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _022C6C74
_022C6B80:
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6B9C:
	ldrh r2, [r6, #0xa]
	add r0, r4, #0x500
	mov r1, r6
	strh r2, [r0, #0xe2]
	ldr r2, [r4, #0x51c]
	mov r0, #6
	blx r2
	ldr r1, _022C6E90 @ =ov00_022C65F8
	add r3, r4, #0x500
	mov r0, #1
	mov r2, #0
	strh r0, [r3, #0x2a]
	bl ov00_022BF308
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r4, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r4, #0x504]
	ldr r0, _022C6E88 @ =ov00_022C6668
	add r3, r4, #0x40
	bl ov00_022C038C
	mov r1, r0
	mov r0, #0xe
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6C4C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xa
	blx r2
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6C74:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6C8C:
	ldrh r0, [r6, #4]
	cmp r0, #0xa
	beq _022C6CB4
	cmp r0, #0xc
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xd
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _022C6CE8
_022C6CB4:
	add r0, r4, #0x500
	mov r1, #1
	strh r1, [r0, #0x28]
	bl ov00_022C5CAC
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6CE8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6D00:
	mov r0, #0
	strb r0, [r4, #0x50c]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _022C6D28
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #8
	blx r2
	b _022C6D4C
_022C6D28:
	cmp r0, #9
	ldr r2, [r4, #0x51c]
	mov r1, r6
	bne _022C6D44
	mov r0, #0x29
	blx r2
	b _022C6D4C
_022C6D44:
	mov r0, #0x12
	blx r2
_022C6D4C:
	ldr r0, _022C6E80 @ =0x02325020
	ldr r0, [r0, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6D80:
	ldrh r0, [r6, #2]
	cmp r0, #0
	add r0, r4, #0x500
	beq _022C6DB0
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6DB0:
	mov r2, #0
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _022C6E88 @ =ov00_022C6668
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl ov00_022BFBD4
	mov r1, r0
	mov r0, #2
	bl ov00_022C7948
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6DE0:
	ldrh r1, [r6, #2]
	cmp r1, #0
	beq _022C6E10
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6E10:
	bl ov00_022C5D5C
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6E1C:
	bl ov00_022C5CAC
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6E44:
	ldrh r0, [r6, #4]
	cmp r0, #0x16
	beq _022C6E5C
	add sp, sp, #0x1c
	cmp r0, #0x17
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6E5C:
	bl FUN_0207BC20
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022C6E68:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C6E80: .4byte 0x02325020
_022C6E84: .4byte 0x02318820
_022C6E88: .4byte ov00_022C6668
_022C6E8C: .4byte 0x02325040
_022C6E90: .4byte ov00_022C65F8
	arm_func_end ov00_022C6668

	arm_func_start ov00_022C6E94
ov00_022C6E94: @ 0x022C6E94
	push {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_0207B9EC
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
_022C6EB0:
	ldrb r0, [r2], #1
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _022C6EB0
	ldr r1, _022C6EF4 @ =0x027FFC3C
	ldr r0, _022C6EF8 @ =0xCCCCCCCD
	ldr r1, [r1]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	lsr r0, r0, #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022C6EF4: .4byte 0x027FFC3C
_022C6EF8: .4byte 0xCCCCCCCD
	arm_func_end ov00_022C6E94

	arm_func_start ov00_022C6EFC
ov00_022C6EFC: @ 0x022C6EFC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _022C70D4 @ =0x02325020
	mov sb, r1
	ldr r1, [r4, #0xc]
	mov r8, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrhne r1, [r1, #0x16]
	mov r7, r3
	cmpne r1, #0
	movne r0, #2
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #0x1f
	bic r4, r0, #0x1f
	add r0, r4, #0x1f
	add r0, r0, #0x1e00
	cmp r7, #0x10000
	bic r5, r0, #0x1f
	bne _022C6F50
	bl ov00_022BF96C
	mov r7, r0
_022C6F50:
	bl FUN_0207B7E4
	ldr r3, _022C70D8 @ =0x0000FFFF
	ldr r1, _022C70DC @ =0x02318820
	mov r2, #5
	strh r3, [r1, #6]
	strh r2, [r1]
	mov r2, #0x28
	strh r2, [r1, #2]
	mov r6, r0
	strh r2, [r1, #4]
	mov r2, #1
	ldr r0, [sp, #0x20]
	ldr r3, _022C70D4 @ =0x02325020
	str r2, [r1, #0xc]
	strh r0, [r3]
	str r4, [r3, #8]
	mov r1, r4
	mov r0, #0
	mov r2, #0x1e00
	str r5, [r3, #0xc]
	bl FUN_0207C314
	mov r1, r5
	mov r0, #0
	mov r2, #0x1340
	bl FUN_0207C2B8
	ldrb r0, [sb, #1]
	add r2, r4, #0x530
	mov r1, #0
	cmp r0, #0
	ble _022C6FE4
_022C6FC8:
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #2]
	add r1, r1, #1
	strh r0, [r2], #2
	ldrb r0, [sb, #1]
	cmp r1, r0
	blt _022C6FC8
_022C6FE4:
	add r0, r4, #0x138
	add r3, r0, #0x400
	ldr r0, _022C70DC @ =0x02318820
	mov ip, #0
	ldr r1, [r0, #8]
_022C6FF8:
	ldrh r2, [r1]
	cmp r2, #0
	beq _022C701C
	add r1, r1, #2
	add ip, ip, #1
	str r1, [r0, #8]
	cmp ip, #0x10
	strh r2, [r3], #2
	blt _022C6FF8
_022C701C:
	mov r0, sb
	add r1, r5, #0x1300
	mov r2, #0x16
	bl FUN_0207C4C8
	ldrb r0, [sb, #1]
	cmp r0, #0xa
	bhs _022C7048
	add r0, r5, r0, lsl #1
	add r0, r0, #0x1300
	mov r1, #0
	strh r1, [r0, #2]
_022C7048:
	add r0, r4, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r5, #0x400
	str r0, [r4, #0x504]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x12]
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x14]
	str r8, [r4, #8]
	strh r7, [r4, #0xc]
	bl ov00_022C6E94
	add r0, r0, #0xc8
	strh r0, [r4, #0x18]
	mov r0, #0xf
	strh r0, [r4, #0x10]
	mov r3, #0
	strb r3, [r4, #0x50c]
	strb r3, [r4, #0x50d]
	add r1, r5, #0x1300
	mov r2, #1
	mov r0, r6
	strh r2, [r1, #0x16]
	add r1, r5, #0x1000
	str r3, [r1, #0x31c]
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C70D4: .4byte 0x02325020
_022C70D8: .4byte 0x0000FFFF
_022C70DC: .4byte 0x02318820
	arm_func_end ov00_022C6EFC
_022C70E0:
	.byte 0x60, 0x30, 0x9F, 0xE5, 0x03, 0x00, 0x50, 0xE1, 0x01, 0x00, 0x00, 0x8A, 0xE4, 0x00, 0x50, 0xE3
	.byte 0x01, 0x00, 0x00, 0x2A, 0x00, 0x00, 0xA0, 0xE3, 0x1E, 0xFF, 0x2F, 0xE1, 0x10, 0x00, 0x51, 0xE3
	.byte 0x01, 0x00, 0x00, 0x8A, 0x08, 0x00, 0x51, 0xE3, 0x01, 0x00, 0x00, 0x2A, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x26, 0x00, 0x80, 0xE2, 0x00, 0x01, 0xA0, 0xE1, 0x20, 0x10, 0x81, 0xE2
	.byte 0x4A, 0x00, 0x80, 0xE2, 0x01, 0x11, 0xA0, 0xE1, 0x01, 0x3C, 0x80, 0xE2, 0x70, 0x00, 0x81, 0xE2
	.byte 0x92, 0x30, 0x21, 0xE0, 0x10, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x51, 0xE1, 0x01, 0x00, 0xA0, 0xB3
	.byte 0x00, 0x00, 0xA0, 0xA3, 0x1E, 0xFF, 0x2F, 0xE1, 0xFE, 0x01, 0x00, 0x00, 0xE0, 0x15, 0x00, 0x00
	.byte 0x70, 0x40, 0x2D, 0xE9, 0x00, 0x50, 0xA0, 0xE1, 0x01, 0x40, 0xA0, 0xE1, 0xA0, 0xD1, 0xF6, 0xEB
	.byte 0x7C, 0x10, 0x9F, 0xE5, 0x00, 0x60, 0xA0, 0xE1, 0x08, 0x10, 0x91, 0xE5, 0x0D, 0x15, 0xD1, 0xE5
	.byte 0x00, 0x00, 0x51, 0xE3, 0x02, 0x00, 0x00, 0x0A, 0x9E, 0xD1, 0xF6, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x70, 0x80, 0xBD, 0xE8, 0x05, 0x00, 0xA0, 0xE1, 0x04, 0x20, 0xA0, 0xE1, 0x08, 0x10, 0xA0, 0xE3
	.byte 0xD2, 0xFF, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x1A, 0x06, 0x00, 0xA0, 0xE1
	.byte 0x94, 0xD1, 0xF6, 0xEB, 0x00, 0x00, 0xA0, 0xE3, 0x70, 0x80, 0xBD, 0xE8, 0x30, 0x20, 0x9F, 0xE5
	.byte 0x06, 0x00, 0xA0, 0xE1, 0x08, 0x10, 0x92, 0xE5, 0x08, 0x30, 0xA0, 0xE3, 0xB0, 0x41, 0xC1, 0xE1
	.byte 0x08, 0x10, 0x92, 0xE5, 0x05, 0x1C, 0x81, 0xE2, 0xB0, 0x50, 0xC1, 0xE1, 0x08, 0x10, 0x92, 0xE5
	.byte 0x05, 0x1C, 0x81, 0xE2, 0xB2, 0x30, 0xC1, 0xE1, 0x86, 0xD1, 0xF6, 0xEB, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x70, 0x80, 0xBD, 0xE8, 0x20, 0x50, 0x32, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0xC4, 0x20, 0x9F, 0xE5
	.byte 0x00, 0x30, 0xA0, 0xE3, 0x08, 0x10, 0x92, 0xE5, 0x0A, 0x00, 0xA0, 0xE3, 0x05, 0x1C, 0x81, 0xE2
	.byte 0xB8, 0x32, 0xC1, 0xE1, 0x08, 0x10, 0x92, 0xE5, 0x05, 0x1C, 0x81, 0xE2, 0xBA, 0x32, 0xC1, 0xE1
	.byte 0x08, 0x10, 0x92, 0xE5, 0x05, 0x1C, 0x81, 0xE2, 0xB6, 0x32, 0xC1, 0xE1, 0x08, 0x10, 0x92, 0xE5
	.byte 0x05, 0x1C, 0x81, 0xE2, 0xB8, 0x34, 0xC1, 0xE1, 0x4D, 0x01, 0x00, 0xEB, 0x84, 0x40, 0x9F, 0xE5
	.byte 0x0C, 0x00, 0x94, 0xE5, 0x01, 0x0A, 0x80, 0xE2, 0x20, 0x03, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x12, 0x00, 0x00, 0x1A, 0xB0, 0x20, 0xD4, 0xE1, 0x03, 0x00, 0x94, 0xE9, 0x08, 0x15, 0x91, 0xE5
	.byte 0x2F, 0xE2, 0xFF, 0xEB, 0x04, 0x00, 0x50, 0xE3, 0xF9, 0xFF, 0xFF, 0x0A, 0x02, 0x00, 0x50, 0xE3
	.byte 0x08, 0x00, 0xA0, 0x13, 0x10, 0x80, 0xBD, 0x18, 0x48, 0x00, 0x9F, 0xE5, 0x08, 0x00, 0x90, 0xE5
	.byte 0x08, 0x05, 0x90, 0xE5, 0x12, 0xE0, 0xFF, 0xEB, 0x38, 0x00, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE3
	.byte 0x08, 0x10, 0x90, 0xE5, 0x00, 0x00, 0xA0, 0xE3, 0x0D, 0x25, 0xC1, 0xE5, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x08, 0x00, 0x94, 0xE5, 0x08, 0x05, 0x90, 0xE5, 0x09, 0xE0, 0xFF, 0xEB, 0x04, 0x00, 0xA0, 0xE1
	.byte 0x08, 0x00, 0x90, 0xE5, 0x01, 0x10, 0xA0, 0xE3, 0x0D, 0x15, 0xC0, 0xE5, 0x96, 0xFA, 0xFF, 0xEB
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x80, 0xBD, 0xE8, 0x20, 0x50, 0x32, 0x02, 0x70, 0x40, 0x2D, 0xE9
	.byte 0x00, 0x50, 0xA0, 0xE1, 0x46, 0xD1, 0xF6, 0xEB, 0xBC, 0x31, 0x9F, 0xE5, 0x00, 0x40, 0xA0, 0xE1
	.byte 0x08, 0x00, 0x93, 0xE5, 0xB4, 0x21, 0x9F, 0xE5, 0xB2, 0x53, 0xC0, 0xE1, 0x0C, 0x50, 0x93, 0xE5
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x1F, 0x10, 0x85, 0xE2, 0x7D, 0x1C, 0x81, 0xE2, 0x1F, 0x10, 0xC1, 0xE3
	.byte 0x04, 0x10, 0x83, 0xE5, 0x01, 0x1A, 0x85, 0xE2, 0xE4, 0x64, 0x91, 0xE5, 0x4D, 0x1D, 0x85, 0xE2
	.byte 0xEC, 0xD3, 0xF6, 0xEB, 0x06, 0x00, 0xA0, 0xE1, 0xD8, 0xEF, 0xFF, 0xEB, 0x78, 0x11, 0x9F, 0xE5
	.byte 0x08, 0x00, 0x91, 0xE5, 0x0C, 0x20, 0x91, 0xE5, 0x05, 0x0C, 0x80, 0xE2, 0xB0, 0x30, 0xD0, 0xE1
	.byte 0x01, 0x0A, 0x82, 0xE2, 0x06, 0x20, 0x43, 0xE2, 0x18, 0x23, 0x80, 0xE5, 0x08, 0x00, 0x91, 0xE5
	.byte 0x05, 0x0C, 0x80, 0xE2, 0xB2, 0x00, 0xD0, 0xE1, 0xB8, 0x02, 0x00, 0xEB, 0x48, 0x01, 0x9F, 0xE5
	.byte 0x0C, 0x00, 0x90, 0xE5, 0x4E, 0x0F, 0x80, 0xE2, 0x05, 0x0B, 0x80, 0xE2, 0xBF, 0x02, 0x00, 0xEB
	.byte 0x00, 0x50, 0xA0, 0xE3, 0x30, 0x21, 0x9F, 0xE5, 0x05, 0x00, 0xA0, 0xE1, 0x00, 0x30, 0xE0, 0xE3
	.byte 0x0C, 0x10, 0x92, 0xE5, 0x05, 0x11, 0x81, 0xE0, 0x01, 0x1A, 0x81, 0xE2, 0xE8, 0x04, 0x81, 0xE5
	.byte 0x0C, 0x10, 0x92, 0xE5, 0x05, 0x10, 0x81, 0xE0, 0x01, 0x1A, 0x81, 0xE2, 0x01, 0x50, 0x85, 0xE2
	.byte 0x26, 0x35, 0xC1, 0xE5, 0x0F, 0x00, 0x55, 0xE3, 0xF4, 0xFF, 0xFF, 0xBA, 0xF8, 0x30, 0x9F, 0xE5
	.byte 0xFC, 0x20, 0x9F, 0xE5, 0x0C, 0x10, 0x93, 0xE5, 0x01, 0x1A, 0x81, 0xE2, 0x24, 0x05, 0xC1, 0xE5
	.byte 0x0C, 0x10, 0x93, 0xE5, 0xE2, 0x1F, 0x81, 0xE2, 0x05, 0x1B, 0x81, 0xE2, 0xC1, 0xD3, 0xF6, 0xEB
	.byte 0xD4, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x0C, 0x00, 0x90, 0xE5, 0x1E, 0x20, 0xA0, 0xE3
	.byte 0xD5, 0x0F, 0x80, 0xE2, 0x05, 0x0B, 0x80, 0xE2, 0x0F, 0xD4, 0xF6, 0xEB, 0xB8, 0x10, 0x9F, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE3, 0x08, 0x00, 0x91, 0xE5, 0xB8, 0x30, 0x9F, 0xE5, 0x05, 0x0C, 0x80, 0xE2
	.byte 0xB4, 0x22, 0xC0, 0xE1, 0x08, 0x00, 0x91, 0xE5, 0xAC, 0x20, 0x9F, 0xE5, 0x1C, 0x35, 0x80, 0xE5
	.byte 0x08, 0x00, 0x91, 0xE5, 0x08, 0x25, 0x80, 0xE5, 0x08, 0x20, 0x91, 0xE5, 0x05, 0x0C, 0x82, 0xE2
	.byte 0xB0, 0x00, 0xD0, 0xE1, 0xB4, 0x03, 0xC2, 0xE1, 0x08, 0x00, 0x91, 0xE5, 0xB4, 0x23, 0xD0, 0xE1
	.byte 0x05, 0x0C, 0x80, 0xE2, 0x23, 0x20, 0x82, 0xE2, 0x1F, 0x20, 0xC2, 0xE3, 0xB8, 0x21, 0xC0, 0xE1
	.byte 0x08, 0x20, 0x91, 0xE5, 0x05, 0x0C, 0x82, 0xE2, 0xB2, 0x00, 0xD0, 0xE1, 0xB6, 0x03, 0xC2, 0xE1
	.byte 0x08, 0x00, 0x91, 0xE5, 0xB6, 0x13, 0xD0, 0xE1, 0x05, 0x0C, 0x80, 0xE2, 0x0E, 0x10, 0x81, 0xE2
	.byte 0x01, 0x12, 0x61, 0xE0, 0x29, 0x10, 0x81, 0xE2, 0x1F, 0x10, 0xC1, 0xE3, 0x81, 0x10, 0xA0, 0xE1
	.byte 0xBA, 0x11, 0xC0, 0xE1, 0x84, 0xF8, 0xFF, 0xEB, 0x62, 0xFF, 0xFF, 0xEB, 0x00, 0x50, 0xA0, 0xE1
	.byte 0x04, 0x00, 0xA0, 0xE1, 0xE3, 0xD0, 0xF6, 0xEB, 0x0F, 0x00, 0xA0, 0xE3, 0x01, 0x10, 0xA0, 0xE3
	.byte 0xA1, 0xD9, 0xF6, 0xEB, 0x10, 0x10, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5, 0x07, 0x1A, 0x81, 0xE2
	.byte 0xC8, 0x04, 0x81, 0xE5, 0x05, 0x00, 0xA0, 0xE1, 0x70, 0x80, 0xBD, 0xE8, 0x20, 0x50, 0x32, 0x02
	.byte 0xC0, 0x69, 0x00, 0x00, 0x40, 0x5D, 0x00, 0x00, 0x10, 0x35, 0x2C, 0x02, 0xA0, 0x5D, 0x2C, 0x02
	.byte 0x14, 0x10, 0x9F, 0xE5, 0x14, 0xC0, 0x9F, 0xE5, 0x0C, 0x10, 0x91, 0xE5, 0x01, 0x20, 0xA0, 0xE3
	.byte 0x01, 0x1A, 0x81, 0xE2, 0x20, 0x23, 0x81, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x20, 0x50, 0x32, 0x02
	.byte 0xBC, 0x72, 0x2C, 0x02

	arm_func_start ov00_022C74C4
ov00_022C74C4: @ 0x022C74C4
	push {r4, lr}
	ldr r0, _022C74F8 @ =0x02325020
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl ov00_022BFB9C
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov00_022C7948
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022C74F8: .4byte 0x02325020
	arm_func_end ov00_022C74C4
_022C74FC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xC4, 0x74, 0x2C, 0x02

	arm_func_start ov00_022C7508
ov00_022C7508: @ 0x022C7508
	push {r3, r4, r5, lr}
	mov r5, #1
	bl FUN_0207B7E4
	ldr r1, _022C7594 @ =0x02325020
	mov r4, r0
	ldr r2, [r1, #8]
	ldrb r0, [r2, #0x50d]
	cmp r0, #0
	bne _022C7538
	mov r0, #0
	bl ov00_022C5D5C
	b _022C7584
_022C7538:
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _022C7584
	mov r0, #0
	str r0, [r2, #0x5e4]
	ldr r0, [r1, #8]
	mov r1, r5
	add r0, r0, #0x500
	strh r1, [r0, #0x26]
	bl ov00_022C7C2C
	cmp r0, #0
	beq _022C757C
	ldr r0, _022C7598 @ =0x022C74FC
	bl ov00_022C7DD8
	mov r5, #0
	b _022C7584
_022C757C:
	bl ov00_022C74C4
	mov r5, r0
_022C7584:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C7594: .4byte 0x02325020
_022C7598: .4byte 0x022C74FC
	arm_func_end ov00_022C7508

	arm_func_start ov00_022C759C
ov00_022C759C: @ 0x022C759C
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022C75D4 @ =0x02325020
	mov r4, r0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _022C75C4
	bl FUN_0207BC20
_022C75C4:
	bl ov00_022C7508
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, pc}
	.align 2, 0
_022C75D4: .4byte 0x02325020
	arm_func_end ov00_022C759C

	arm_func_start ov00_022C75D8
ov00_022C75D8: @ 0x022C75D8
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _022C7758 @ =ov00_022C5DA0
	mov r1, r5
	bl ov00_022C0134
	cmp r5, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	pophs {r3, r4, r5, r6, r7, pc}
	ldr r2, _022C775C @ =0x02325020
	sub r4, r5, #1
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2, #0xc]
	mov r2, #4
	add r0, r0, #0xa8
	add r0, r0, #0x1400
	add r0, r0, r4, lsl #2
	bl FUN_0207C40C
	ldr r0, _022C775C @ =0x02325020
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r0, r0, #0x1340
	mla r0, r4, r2, r0
	bl FUN_0207C40C
	mov r0, r5
	bl ov00_022C7E70
	ldr ip, _022C775C @ =0x02325020
	mov r2, #0
	ldr r0, [ip, #0xc]
	sub r1, r2, #1
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	ldr r3, [ip, #0xc]
	add r0, r3, r4
	add r0, r0, #0x1500
	ldrsb r2, [r0, #0x26]
	cmp r2, r1
	beq _022C76F8
	ldr r0, _022C7760 @ =0x000005D4
	and r1, r2, #0xff
	mul r0, r1, r0
	add r1, r3, r0
	add r3, r1, #0x1d00
	mov r2, #1
	ldrh r6, [r3, #0x4e]
	mvn r1, r2, lsl r5
	and r6, r6, r1
	strh r6, [r3, #0x4e]
	ldr r3, [ip, #0xc]
	sub r6, r2, #2
	add r3, r3, r0
	add r3, r3, #0x1d00
	ldrh r7, [r3, #0x50]
	mov lr, r4
	orr r2, r7, r2, lsl r5
	strh r2, [r3, #0x50]
	ldr r2, [ip, #0xc]
	add r2, r2, lr
	add r2, r2, #0x1000
	strb r6, [r2, #0x526]
	ldr r2, [ip, #0xc]
	add r0, r2, r0
	add r0, r0, #0x1d00
	ldrh r2, [r0, #0x4c]
	and r1, r2, r1
	strh r1, [r0, #0x4c]
_022C76F8:
	ldr r1, _022C775C @ =0x02325020
	mov ip, #1
	ldr r2, [r1, #0xc]
	add r0, r2, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, ip, lsl r5
	beq _022C773C
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x535]
	mvn r2, ip, lsl r5
	sub r3, r3, #1
	strb r3, [r0, #0x535]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1500
	ldrh r1, [r0, #0x36]
	and r1, r1, r2
	strh r1, [r0, #0x36]
_022C773C:
	ldr r0, _022C775C @ =0x02325020
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C7758: .4byte ov00_022C5DA0
_022C775C: .4byte 0x02325020
_022C7760: .4byte 0x000005D4
	arm_func_end ov00_022C75D8
_022C7764:
	.byte 0x04, 0x10, 0x9F, 0xE5, 0xB6, 0x02, 0xC1, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0x20, 0x50, 0x32, 0x02

	arm_func_start ov00_022C7774
ov00_022C7774: @ 0x022C7774
	push {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl ov00_022C0498
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl ov00_022C7948
	mov r0, r4
	add sp, sp, #0xc
	pop {r3, r4, pc}
	arm_func_end ov00_022C7774

	arm_func_start ov00_022C77C0
ov00_022C77C0: @ 0x022C77C0
	push {r3, r4, r5, lr}
	ldr ip, _022C7898 @ =0x02325020
	lsl r3, r1, #0x10
	ldr r5, [ip, #8]
	lsl ip, r2, #0x10
	add lr, r5, #0x500
	ldrh r4, [lr, #0x28]
	mov r1, r0
	lsr r2, r3, #0x10
	cmp r4, #0
	ldrhne r0, [lr, #0x26]
	lsr r4, ip, #0x10
	cmpne r0, #1
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrh r0, [lr, #0x24]
	cmp r0, #1
	beq _022C7814
	cmp r0, #2
	beq _022C785C
	b _022C7890
_022C7814:
	ldrh r0, [lr, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	lsl r3, r0, #0x10
	str r4, [sp]
	ldr r0, [r5, #0x508]
	lsr r3, r3, #0x10
	bl ov00_022C7774
	cmp r0, #2
	bne _022C7850
	ldr r1, _022C7898 @ =0x02325020
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_022C7850:
	cmp r0, #2
	moveq r0, #0
	pop {r3, r4, r5, pc}
_022C785C:
	ldr r0, _022C789C @ =ov00_022C6668
	mov r3, #0
	str r4, [sp]
	bl ov00_022C7774
	cmp r0, #2
	bne _022C7884
	ldr r1, _022C7898 @ =0x02325020
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_022C7884:
	cmp r0, #2
	moveq r0, #0
	pop {r3, r4, r5, pc}
_022C7890:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C7898: .4byte 0x02325020
_022C789C: .4byte ov00_022C6668
	arm_func_end ov00_022C77C0

	arm_func_start ov00_022C78A0
ov00_022C78A0: @ 0x022C78A0
	ldr r0, _022C78B0 @ =0x02325020
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_022C78B0: .4byte 0x02325020
	arm_func_end ov00_022C78A0

	arm_func_start ov00_022C78B4
ov00_022C78B4: @ 0x022C78B4
	ldr r0, _022C78C4 @ =0x02325020
	ldr r0, [r0, #8]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_022C78C4: .4byte 0x02325020
	arm_func_end ov00_022C78B4

	arm_func_start ov00_022C78C8
ov00_022C78C8: @ 0x022C78C8
	ldr r0, _022C7924 @ =0x02325020
	ldr r1, [r0, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	ldrh r0, [r1, #0xe]
	movne r2, #2
	moveq r2, #0
	cmp r0, #0
	movne r3, #1
	ldrh r0, [r1, #0x14]
	moveq r3, #0
	cmp r0, #0
	movne ip, #4
	ldrh r0, [r1, #0x16]
	moveq ip, #0
	cmp r0, #0
	movne r1, #8
	orr r0, r3, r2
	moveq r1, #0
	orr r0, ip, r0
	orr r0, r1, r0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022C7924: .4byte 0x02325020
	arm_func_end ov00_022C78C8

	arm_func_start ov00_022C7928
ov00_022C7928: @ 0x022C7928
	ldr r0, _022C7944 @ =0x02325020
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x50d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022C7944: .4byte 0x02325020
	arm_func_end ov00_022C7928

	arm_func_start ov00_022C7948
ov00_022C7948: @ 0x022C7948
	push {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	popeq {r3, pc}
	ldr r2, _022C797C @ =0x02325020
	strh r0, [sp]
	ldr r0, [r2, #8]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	pop {r3, pc}
	.align 2, 0
_022C797C: .4byte 0x02325020
	arm_func_end ov00_022C7948

	arm_func_start ov00_022C7980
ov00_022C7980: @ 0x022C7980
	ldr ip, _022C7990 @ =FUN_0207C40C
	mov r1, #0
	mov r2, #0x70
	bx ip
	.align 2, 0
_022C7990: .4byte FUN_0207C40C
	arm_func_end ov00_022C7980

	arm_func_start ov00_022C7994
ov00_022C7994: @ 0x022C7994
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	bl FUN_0207B7E4
	add r6, r4, #0x30
	mov r5, r0
	add r4, r4, #0x70
_022C79B8:
	cmp r6, r4
	blo _022C79C4
	bl FUN_0207BC20
_022C79C4:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _022C79E8
	str sb, [r6]
	str r8, [r6, #4]
	ldr r0, [sp, #0x20]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	b _022C79F0
_022C79E8:
	add r6, r6, #0x10
	b _022C79B8
_022C79F0:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022C7994

	arm_func_start ov00_022C79FC
ov00_022C79FC: @ 0x022C79FC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl FUN_0207B7E4
	add r2, sb, #0x30
	add r1, sb, #0x70
	mov r5, r0
	cmp r2, r1
	bhs _022C7A84
_022C7A2C:
	ldr r0, [r2, #0xc]
	cmp r0, #2
	blo _022C7A78
	ldr r0, [r2]
	subs r0, r8, r0
	bmi _022C7A78
	ldr r3, [r2, #4]
	add ip, r0, r6
	cmp ip, r3
	bhi _022C7A78
	ldr r3, [r2, #8]
	mov r1, r7
	mov r2, r6
	add r0, r3, r0
	bl FUN_0207C4C8
	mov r0, #0
	str r0, [sb]
	mov r4, #1
	b _022C7A84
_022C7A78:
	add r2, r2, #0x10
	cmp r2, r1
	blo _022C7A2C
_022C7A84:
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, r4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022C79FC

	arm_func_start ov00_022C7A94
ov00_022C7A94: @ 0x022C7A94
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
_022C7A9C:
	bl FUN_0207B7E4
	ldr r1, [r7, #0xc0]
	mov r5, r0
	cmp r1, #0
	bne _022C7AD8
	mov r6, #0
	mov r4, r6
_022C7AB8:
	mov r0, r7
	mov r1, r6
	bl FUN_02079A64
	mov r0, r4
	bl FUN_02079888
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _022C7AB8
_022C7AD8:
	ldr r4, [r7, #0xc0]
	ldr r1, [r7, #0xc0]
	mov r0, r7
	ldr r1, [r1]
	str r1, [r7, #0xc0]
	ldr r1, [r4, #4]
	lsr r1, r1, #1
	bl FUN_02079A64
	mov r0, r5
	bl FUN_0207B7F8
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022C7B14
	mov r0, r4
	blx r1
_022C7B14:
	bl FUN_0207B7E4
	mov r5, r0
	mov r0, r7
	ldr r6, [r4, #0xc]
	bl FUN_02079B0C
	ldr r1, [r7, #0xc0]
	cmp r1, #0
	moveq r1, #0
	beq _022C7B58
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	cmp r0, r1, lsr #1
	movhs r1, r0
	bhs _022C7B58
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	lsr r1, r1, #1
_022C7B58:
	cmp r1, r0
	beq _022C7B68
	mov r0, r7
	bl FUN_02079A64
_022C7B68:
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r6, #0
	bic r0, r0, #1
	str r0, [r4, #4]
	beq _022C7B8C
	mov r0, r4
	blx r6
_022C7B8C:
	add r0, r7, #0xc4
	cmp r4, r0
	beq _022C7BA4
	mov r0, r5
	bl FUN_0207B7F8
	b _022C7A9C
_022C7BA4:
	bl FUN_0207965C
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C7A94

	arm_func_start ov00_022C7BAC
ov00_022C7BAC: @ 0x022C7BAC
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r1
	bl FUN_0207B7E4
	ldr r1, _022C7C24 @ =0x02325060
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _022C7C14
	add r0, r5, #0xc4
	str r5, [r1]
	bl ov00_022C7C48
	sub r0, r6, #0xe4
	mov lr, #0
	bic ip, r0, #3
	add r3, r5, #0xe4
	str lr, [r5, #0xc0]
	ldr r1, _022C7C28 @ =ov00_022C7A94
	mov r0, r5
	mov r2, r5
	add r3, r3, ip
	stm sp, {ip, lr}
	bl FUN_02079560
	mov r0, r5
	bl FUN_02079940
_022C7C14:
	mov r0, r4
	bl FUN_0207B7F8
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C7C24: .4byte 0x02325060
_022C7C28: .4byte ov00_022C7A94
	arm_func_end ov00_022C7BAC

	arm_func_start ov00_022C7C2C
ov00_022C7C2C: @ 0x022C7C2C
	ldr r0, _022C7C44 @ =0x02325060
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_022C7C44: .4byte 0x02325060
	arm_func_end ov00_022C7C2C

	arm_func_start ov00_022C7C48
ov00_022C7C48: @ 0x022C7C48
	ldr ip, _022C7C58 @ =FUN_0207C40C
	mov r1, #0
	mov r2, #0x20
	bx ip
	.align 2, 0
_022C7C58: .4byte FUN_0207C40C
	arm_func_end ov00_022C7C48

	arm_func_start ov00_022C7C5C
ov00_022C7C5C: @ 0x022C7C5C
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov00_022C7C5C

	arm_func_start ov00_022C7C74
ov00_022C7C74: @ 0x022C7C74
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _022C7DD4 @ =0x02325060
	mov sb, r0
	ldr r4, [r4]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov00_022C7C2C
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #4]
	lsl r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x1f
	bls _022C7CF8
	mov r0, r4
	bl FUN_02079B0C
	cmp r6, #0x20
	bne _022C7CD4
	cmp r0, #0
	subne r6, r0, #1
	moveq r6, #0
	b _022C7CF8
_022C7CD4:
	cmp r6, #0x21
	bne _022C7CEC
	cmp r0, #0x1f
	addlo r6, r0, #1
	movhs r6, #0x1f
	b _022C7CF8
_022C7CEC:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_022C7CF8:
	bl FUN_0207B7E4
	ldr r1, [sb, #4]
	mov r5, r0
	bic r0, r1, #1
	orr r1, r0, #1
	and r0, r1, #1
	str r1, [sb, #4]
	orr r0, r0, r6, lsl #1
	stmib sb, {r0, r8}
	str r7, [sb, #0xc]
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	add r0, r4, #0xc4
	bne _022C7D50
	cmp sb, r0
	ldreq r0, _022C7DD4 @ =0x02325060
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str sb, [r4, #0xc0]
	bl FUN_02079940
	b _022C7DC8
_022C7D50:
	cmp sb, r0
	ldr r1, [r4, #0xc0]
	bne _022C7D8C
	ldr r0, [r1]
	cmp r0, #0
	beq _022C7D78
_022C7D68:
	mov r1, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _022C7D68
_022C7D78:
	ldr r0, _022C7DD4 @ =0x02325060
	str sb, [r1]
	mov r1, #0
	str r1, [r0]
	b _022C7DC8
_022C7D8C:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	strlo sb, [r4, #0xc0]
	strlo r1, [sb]
	blo _022C7DC8
	b _022C7DA8
_022C7DA4:
	mov r1, r2
_022C7DA8:
	ldr r2, [r1]
	cmp r2, #0
	beq _022C7DC0
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _022C7DA4
_022C7DC0:
	str r2, [sb]
	str sb, [r1]
_022C7DC8:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C7DD4: .4byte 0x02325060
	arm_func_end ov00_022C7C74

	arm_func_start ov00_022C7DD8
ov00_022C7DD8: @ 0x022C7DD8
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022C7C2C
	cmp r0, #0
	beq _022C7E10
	ldr r0, _022C7E1C @ =0x02325060
	mov r1, #0
	ldr r0, [r0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl ov00_022C7C74
_022C7E10:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C7E1C: .4byte 0x02325060
	arm_func_end ov00_022C7DD8

	arm_func_start ov00_022C7E20
ov00_022C7E20: @ 0x022C7E20
	push {r3, lr}
	ldr r2, _022C7E4C @ =0x02325064
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r2, #8]
	bl FUN_0208FEA4
	ldr r1, _022C7E4C @ =0x02325064
	mov r2, #0x1e
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	pop {r3, pc}
	.align 2, 0
_022C7E4C: .4byte 0x02325064
	arm_func_end ov00_022C7E20
_022C7E50:
	.byte 0x10, 0x30, 0x9F, 0xE5, 0x10, 0xC0, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x87, 0x2F, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x83, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x64, 0x50, 0x32, 0x02, 0x0C, 0xC4, 0x07, 0x02

	arm_func_start ov00_022C7E70
ov00_022C7E70: @ 0x022C7E70
	push {r4, lr}
	ldr r1, _022C7EB0 @ =0x02325064
	ldr r1, [r1, #4]
	cmp r1, #0
	popeq {r4, pc}
	sub r4, r0, #1
	add r0, r1, r4, lsl #5
	mov r1, #0
	mov r2, #0x1e
	bl FUN_0207C40C
	ldr r0, _022C7EB0 @ =0x02325064
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x1e0]
	pop {r4, pc}
	.align 2, 0
_022C7EB0: .4byte 0x02325064
	arm_func_end ov00_022C7E70

	arm_func_start ov00_022C7EB4
ov00_022C7EB4: @ 0x022C7EB4
	ldrb r2, [r0]
	mov r3, r1
	add r3, r3, #1
	strb r2, [r1]
	ldrb r1, [r0]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022C7F28
_022C7ED4: @ jump table
	b _022C7F28 @ case 0
	b _022C7F30 @ case 1
	b _022C7F30 @ case 2
	b _022C7F30 @ case 3
	b _022C7EF0 @ case 4
	b _022C7F30 @ case 5
	b _022C7F30 @ case 6
_022C7EF0:
	ldrh r1, [r0, #2]
	strb r1, [r3]
	ldrh r1, [r0, #2]
	and r1, r1, #0xff00
	asr r1, r1, #8
	strb r1, [r3, #1]
	ldrh r1, [r0, #4]
	strb r1, [r3, #2]
	ldrh r0, [r0, #4]
	and r0, r0, #0xff00
	asr r0, r0, #8
	strb r0, [r3, #3]
	add r3, r3, #4
	b _022C7F30
_022C7F28:
	mov r0, #0
	bx lr
_022C7F30:
	mov r0, r3
	bx lr
	arm_func_end ov00_022C7EB4

	arm_func_start ov00_022C7F38
ov00_022C7F38: @ 0x022C7F38
	push {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6]
	mov r5, r1
	mov r4, r2
	strb r0, [r5]
	cmp r0, #7
	beq _022C7F6C
	cmp r0, #8
	beq _022C7FD0
	cmp r0, #9
	beq _022C7FF8
	b _022C8040
_022C7F6C:
	mov r0, r4
	bl ov00_022C80E0
	cmp r0, #0
	beq _022C7F90
	ldr r0, _022C8050 @ =0x02325064
	sub r1, r4, #1
	ldr r0, [r0, #4]
	add r0, r0, r1, lsl #5
	pop {r4, r5, r6, pc}
_022C7F90:
	ldrb r2, [r6, #1]
	ldr r0, _022C8050 @ =0x02325064
	strb r2, [r5, #2]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	movgt r0, #0
	popgt {r4, r5, r6, pc}
	ldr r2, [r0, #8]
	add r0, r6, #2
	add r1, r5, #3
	bl FUN_0207C4C8
	mov r0, r5
	mov r1, r4
	bl ov00_022C8054
	mov r4, r0
	b _022C8048
_022C7FD0:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	strh r0, [r5, #2]
	ldrb r0, [r6, #2]
	ldrh r1, [r5, #2]
	lsl r0, r0, #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [r5, #2]
	b _022C8048
_022C7FF8:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	ldr r1, _022C8050 @ =0x02325064
	strh r0, [r5, #2]
	ldrb r2, [r6, #2]
	ldrh r3, [r5, #2]
	mov r0, r4
	lsl r2, r2, #8
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r5, #2]
	ldr r2, [r1, #8]
	add r1, r5, #4
	bl FUN_0207C4C8
	ldr r0, _022C8050 @ =0x02325064
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _022C8048
_022C8040:
	mov r0, #0
	pop {r4, r5, r6, pc}
_022C8048:
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C8050: .4byte 0x02325064
	arm_func_end ov00_022C7F38

	arm_func_start ov00_022C8054
ov00_022C8054: @ 0x022C8054
	push {r4, r5, r6, lr}
	ldr r2, _022C80DC @ =0x02325064
	mov r6, r1
	ldr r3, [r2, #4]
	cmp r3, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldrb r5, [r0, #2]
	ldr r1, [r2, #0xc]
	cmp r5, r1
	movgt r0, #0
	popgt {r4, r5, r6, pc}
	sub r4, r6, #1
	ldr r2, [r2, #8]
	add r1, r3, r4, lsl #5
	mla r1, r5, r2, r1
	add r0, r0, #3
	bl FUN_0207C4C8
	ldr r0, _022C80DC @ =0x02325064
	mov r1, #1
	ldr r2, [r0, #4]
	mov r0, r6
	add r3, r2, #0x1e0
	ldr r2, [r3, r4, lsl #2]
	orr r1, r2, r1, lsl r5
	str r1, [r3, r4, lsl #2]
	bl ov00_022C80E0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r0, _022C80DC @ =0x02325064
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #5
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C80DC: .4byte 0x02325064
	arm_func_end ov00_022C8054

	arm_func_start ov00_022C80E0
ov00_022C80E0: @ 0x022C80E0
	ldr r1, _022C8130 @ =0x02325064
	mov r2, #0
	ldr ip, [r1, #0xc]
	cmp ip, #0
	ble _022C8128
	ldr r1, [r1, #4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x1e0]
	mov r1, #1
_022C8108:
	tst r3, r1, lsl r2
	moveq r0, #0
	bxeq lr
	add r0, r2, #1
	lsl r0, r0, #0x10
	cmp ip, r0, lsr #16
	lsr r2, r0, #0x10
	bgt _022C8108
_022C8128:
	mov r0, #1
	bx lr
	.align 2, 0
_022C8130: .4byte 0x02325064
	arm_func_end ov00_022C80E0

	arm_func_start ov00_022C8134
ov00_022C8134: @ 0x022C8134
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022C8228 @ =0x02325078
	ldr r2, _022C8228 @ =0x02325078
	ldr r1, [r1, #0x50]
	str r0, [r2, #0xc]
	cmp r1, #0
	mov r1, #0
	str r1, [r2, #0x50]
	str r1, [r2, #0x1c]
	str r1, [r2, #0x2c]
	str r1, [r2, #0x60]
	movne r3, #1
	str r1, [r2, #0x64]
	moveq r3, #0
	str r1, [r2, #0x20]
	cmp r3, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, _022C822C @ =0x023250F8
	mov r2, #0x60
	bl FUN_0207C40C
	ldr r0, _022C8230 @ =0x022B966C
	ldr r6, [r0, #8]
	cmp r6, #0
	beq _022C81E4
	mov r5, #0
	mov r4, r5
_022C819C:
	ldr r1, [r6, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _022C81D8
	ldrb r0, [r1, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	strbne r5, [r1, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _022C81D8
	str r4, [r1, #4]
	ldr r0, [r1]
	bl FUN_02079940
_022C81D8:
	ldr r6, [r6, #0x68]
	cmp r6, #0
	bne _022C819C
_022C81E4:
	mov r6, #0
	ldr r7, _022C8234 @ =0x023253A0
	ldr r4, _022C8228 @ =0x02325078
	mov r5, r6
_022C81F4:
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _022C8210
	ldr r0, [r7, #0x34]
	ldr r1, [r4, #0x40]
	blx r1
	strh r5, [r7, #4]
_022C8210:
	add r6, r6, #1
	cmp r6, #8
	add r7, r7, #0x38
	blt _022C81F4
	bl ov00_022D2C54
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C8228: .4byte 0x02325078
_022C822C: .4byte 0x023250F8
_022C8230: .4byte 0x022B966C
_022C8234: .4byte 0x023253A0
	arm_func_end ov00_022C8134

	arm_func_start ov00_022C8238
ov00_022C8238: @ 0x022C8238
	push {r3, lr}
	ldr r0, _022C825C @ =0x02325078
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _022C8254
	bl FUN_020799AC
	pop {r3, pc}
_022C8254:
	bl FUN_02079B14
	pop {r3, pc}
	.align 2, 0
_022C825C: .4byte 0x02325078
	arm_func_end ov00_022C8238
_022C8260:
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x01, 0x00, 0xA0, 0xE3, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov00_022C826C
ov00_022C826C: @ 0x022C826C
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _022C8464 @ =0x02000BDC
	bl FUN_02000B9C
	ldr r3, [r4, #0x18]
	ldr r5, [r4, #0x14]
	cmp r3, #0
	cmpeq r5, #0
	mov r1, #0
	beq _022C82C4
	ldr r0, _022C8468 @ =0x02325078
	ldr r2, _022C846C @ =0x6C078965
	str r5, [r0, #0x68]
	str r3, [r0, #0x6c]
	ldr r3, _022C8470 @ =0x5D588B65
	str r2, [r0, #0x70]
	ldr r2, _022C8474 @ =0x00269EC3
	str r3, [r0, #0x74]
	str r2, [r0, #0x78]
	str r1, [r0, #0x7c]
	b _022C82F4
_022C82C4:
	bl FUN_0207AE44
	ldr r2, _022C8468 @ =0x02325078
	ldr r3, _022C846C @ =0x6C078965
	str r0, [r2, #0x68]
	str r1, [r2, #0x6c]
	ldr r1, _022C8470 @ =0x5D588B65
	str r3, [r2, #0x70]
	ldr r0, _022C8474 @ =0x00269EC3
	str r1, [r2, #0x74]
	str r0, [r2, #0x78]
	mov r0, #0
	str r0, [r2, #0x7c]
_022C82F4:
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	beq _022C8318
	ldr r0, _022C8468 @ =0x02325078
	str r1, [r0, #0x14]
	ldr r1, [r4, #8]
	b _022C8324
_022C8318:
	ldr r1, _022C8478 @ =0x022C8260
	ldr r0, _022C8468 @ =0x02325078
	str r1, [r0, #0x14]
_022C8324:
	str r1, [r0, #0x40]
	ldr r1, [r4]
	ldr r0, _022C8468 @ =0x02325078
	ldr r2, _022C8468 @ =0x02325078
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldreq r1, _022C847C @ =0x000005B4
	strh r1, [r0, #2]
	ldr r1, [r4, #0x28]
	ldr r0, _022C8468 @ =0x02325078
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x2c]
	str r1, [r0, #0x24]
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldreq r1, _022C8478 @ =0x022C8260
	str r1, [r0, #0x18]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldrne r0, _022C8468 @ =0x02325078
	ldreq r1, _022C8480 @ =0x022C8264
	ldreq r0, _022C8468 @ =0x02325078
	str r1, [r0, #0x48]
	ldr r1, [r4, #0x1c]
	mov r0, #0
	str r1, [r2, #0x58]
	ldr r3, [r4, #0x20]
	ldr r1, _022C8484 @ =0x00000F88
	str r3, [r2, #0x5c]
	str r0, [r2, #0x30]
	str r0, [r2, #0x28]
	ldr ip, [r2, #0x70]
	ldr r4, [r2, #0x68]
	ldr r3, [r2, #0x6c]
	umull r5, lr, ip, r4
	mla lr, ip, r3, lr
	ldr r3, [r2, #0x74]
	ldr ip, [r2, #0x78]
	mla lr, r3, r4, lr
	ldr r3, [r2, #0x7c]
	adds ip, ip, r5
	adc r5, r3, lr
	umull r3, r4, r5, r1
	mla r4, r5, r0, r4
	mla r4, r0, r1, r4
	str ip, [r2, #0x68]
	ldr r0, _022C8488 @ =0x02325560
	str r5, [r2, #0x6c]
	add r1, r4, #0x400
	strh r1, [r2, #8]
	bl FUN_0207B9EC
	ldr r0, _022C8468 @ =0x02325078
	mov r2, #0
	strb r2, [r0, #1]
	mov r1, #0x800
	str r1, [sp]
	ldr r0, _022C848C @ =0x02318844
	ldr r1, _022C8490 @ =ov00_022CAFDC
	ldr r4, [r0]
	ldr r0, _022C8494 @ =0x023252E0
	ldr r3, _022C8498 @ =0x023268C0
	str r4, [sp, #4]
	bl FUN_02079560
	mov r1, #0x800
	ldr r0, _022C848C @ =0x02318844
	str r1, [sp]
	ldr r1, [r0]
	ldr r0, _022C849C @ =0x02325220
	str r1, [sp, #4]
	ldr r1, _022C84A0 @ =ov00_022CBC40
	ldr r3, _022C84A4 @ =0x023260C0
	mov r2, #0
	bl FUN_02079560
	ldr r0, _022C8494 @ =0x023252E0
	bl FUN_02079940
	ldr r0, _022C849C @ =0x02325220
	bl FUN_02079940
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C8464: .4byte 0x02000BDC
_022C8468: .4byte 0x02325078
_022C846C: .4byte 0x6C078965
_022C8470: .4byte 0x5D588B65
_022C8474: .4byte 0x00269EC3
_022C8478: .4byte 0x022C8260
_022C847C: .4byte 0x000005B4
_022C8480: .4byte 0x022C8264
_022C8484: .4byte 0x00000F88
_022C8488: .4byte 0x02325560
_022C848C: .4byte 0x02318844
_022C8490: .4byte ov00_022CAFDC
_022C8494: .4byte 0x023252E0
_022C8498: .4byte 0x023268C0
_022C849C: .4byte 0x02325220
_022C84A0: .4byte ov00_022CBC40
_022C84A4: .4byte 0x023260C0
	arm_func_end ov00_022C826C

	arm_func_start ov00_022C84A8
ov00_022C84A8: @ 0x022C84A8
	push {r3, r4, r5, lr}
	bl FUN_0207B7E4
	mov r4, r0
	ldr r0, _022C84F0 @ =0x02325220
	bl FUN_02079830
	movs r5, r0
	ldreq r1, _022C84F4 @ =0x02325078
	ldreq r0, [r1, #0x44]
	cmpeq r0, #0
	bne _022C84E0
	ldr r0, _022C84F0 @ =0x02325220
	mov r2, #1
	str r2, [r1, #0x44]
	bl FUN_02079940
_022C84E0:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C84F0: .4byte 0x02325220
_022C84F4: .4byte 0x02325078
	arm_func_end ov00_022C84A8

	arm_func_start ov00_022C84F8
ov00_022C84F8: @ 0x022C84F8
	ldr r1, _022C8504 @ =0x02325078
	str r0, [r1, #0x3c]
	bx lr
	.align 2, 0
_022C8504: .4byte 0x02325078
	arm_func_end ov00_022C84F8

	arm_func_start ov00_022C8508
ov00_022C8508: @ 0x022C8508
	push {r3, lr}
	bl ov00_022C84A8
	ldr r0, _022C8544 @ =0x02325220
	bl FUN_02079800
	ldr r0, _022C8548 @ =0x023252E0
	bl FUN_0207976C
	ldr r1, _022C854C @ =0x02325078
	mov r0, #0
	str r0, [r1, #0x54]
	bl ov00_022C8134
	ldr r0, _022C854C @ =0x02325078
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	pop {r3, pc}
	.align 2, 0
_022C8544: .4byte 0x02325220
_022C8548: .4byte 0x023252E0
_022C854C: .4byte 0x02325078
	arm_func_end ov00_022C8508

	arm_func_start ov00_022C8550
ov00_022C8550: @ 0x022C8550
	push {r4, lr}
	mov r4, r0
	ldr r2, _022C857C @ =0x02318844
	ldr r0, _022C8580 @ =0x023252E0
	mov r1, r4
	str r4, [r2]
	bl FUN_02079A64
	ldr r0, _022C8584 @ =0x02325220
	mov r1, r4
	bl FUN_02079A64
	pop {r4, pc}
	.align 2, 0
_022C857C: .4byte 0x02318844
_022C8580: .4byte 0x023252E0
_022C8584: .4byte 0x02325220
	arm_func_end ov00_022C8550

	arm_func_start ov00_022C8588
ov00_022C8588: @ 0x022C8588
	tst r0, #1
	beq _022C85C0
	cmp r1, #1
	bls _022C8610
_022C8598:
	ldrb ip, [r0]
	ldrb r3, [r0, #1]
	sub r1, r1, #2
	cmp r1, #1
	orr r3, r3, ip, lsl #8
	lsl r3, r3, #0x10
	add r2, r2, r3, lsr #16
	add r0, r0, #2
	bhi _022C8598
	b _022C8610
_022C85C0:
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	lsl r2, r3, #8
	orr r2, r2, r3, asr #8
	lsl r2, r2, #0x10
	cmp r1, #1
	lsr r2, r2, #0x10
	bls _022C85F4
_022C85E0:
	ldrh r3, [r0], #2
	sub r1, r1, #2
	cmp r1, #1
	add r2, r2, r3
	bhi _022C85E0
_022C85F4:
	ldr r3, _022C8638 @ =0x00FF00FF
	lsl ip, r3, #8
	and r3, r3, r2, lsr #8
	and r2, ip, r2, lsl #8
	orr r3, r3, r2
	lsl r2, r3, #0x10
	orr r2, r2, r3, lsr #16
_022C8610:
	cmp r1, #0
	ldrbne r0, [r0]
	addne r2, r2, r0, lsl #8
	lsl r0, r2, #0x10
	lsr r1, r2, #0x10
	add r0, r1, r0, lsr #16
	add r0, r0, r0, lsr #16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.align 2, 0
_022C8638: .4byte 0x00FF00FF
	arm_func_end ov00_022C8588

	arm_func_start ov00_022C863C
ov00_022C863C: @ 0x022C863C
	ldr r1, _022C8654 @ =0x0000FFFF
	eor r0, r0, r1
	lsl r0, r0, #0x10
	lsrs r0, r0, #0x10
	moveq r0, r1
	bx lr
	.align 2, 0
_022C8654: .4byte 0x0000FFFF
	arm_func_end ov00_022C863C

	arm_func_start ov00_022C8658
ov00_022C8658: @ 0x022C8658
	push {r3, lr}
	mov r2, #0
	bl ov00_022C8588
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov00_022C863C
	pop {r3, pc}
	arm_func_end ov00_022C8658

	arm_func_start ov00_022C8674
ov00_022C8674: @ 0x022C8674
	push {r3, r4, r5, lr}
	mov r4, r2
	mov r2, r3
	mov r5, r1
	bl ov00_022C8588
	mov r2, r0
	add r0, r4, #0xc
	mov r1, #8
	bl ov00_022C8588
	add r1, r0, r5
	tst r1, #0x10000
	addne r0, r1, #1
	lslne r0, r0, #0x10
	lsrne r1, r0, #0x10
	ldr r0, _022C86C0 @ =0x0000FFFF
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C86C0: .4byte 0x0000FFFF
	arm_func_end ov00_022C8674

	arm_func_start ov00_022C86C4
ov00_022C86C4: @ 0x022C86C4
	mov ip, #1
	sub r1, ip, #2
	cmp r0, r1
	subne r1, ip, #0x81000000
	cmpne r0, r1
	beq _022C86F8
	ldr r1, _022C8700 @ =0x02325078
	ldr r3, [r1, #0x1c]
	ldr r1, [r1, #0x50]
	and r2, r0, r3
	and r0, r1, r3
	cmp r2, r0
	movne ip, #0
_022C86F8:
	mov r0, ip
	bx lr
	.align 2, 0
_022C8700: .4byte 0x02325078
	arm_func_end ov00_022C86C4

	arm_func_start ov00_022C8704
ov00_022C8704: @ 0x022C8704
	push {r4, lr}
	mov r4, r0
	bl ov00_022C86C4
	cmp r0, #0
	ldreq r0, _022C8724 @ =0x02325078
	ldreq r4, [r0, #0x2c]
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022C8724: .4byte 0x02325078
	arm_func_end ov00_022C8704

	arm_func_start ov00_022C8728
ov00_022C8728: @ 0x022C8728
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov00_022C86C4
	cmp r0, #0
	beq _022C8758
	ldr r0, _022C8760 @ =0x02325078
	ldr r0, [r0, #0x1c]
	mvn r1, r0
	and r0, r1, r5
	cmp r1, r0
	moveq r4, #1
_022C8758:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022C8760: .4byte 0x02325078
	arm_func_end ov00_022C8728

	arm_func_start ov00_022C8764
ov00_022C8764: @ 0x022C8764
	and r0, r0, #0xf0000000
	cmp r0, #0xe0000000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov00_022C8764

	arm_func_start ov00_022C8778
ov00_022C8778: @ 0x022C8778
	push {r4, r5, r6, lr}
	ldr r1, _022C87F0 @ =0x02325078
	mov r4, #1
	ldr r1, [r1, #0x50]
	mov r6, r0
	cmp r1, #0
	mov r0, r4
	cmpne r6, r1
	movne r0, #0
	mov r5, r4
	mov r2, r4
	cmp r0, #0
	bne _022C87B8
	ldr r0, _022C87F4 @ =0x7F000001
	cmp r6, r0
	movne r2, #0
_022C87B8:
	cmp r2, #0
	bne _022C87D0
	mov r0, r6
	bl ov00_022C8728
	cmp r0, #0
	moveq r5, #0
_022C87D0:
	cmp r5, #0
	bne _022C87E8
	mov r0, r6
	bl ov00_022C8764
	cmp r0, #0
	moveq r4, #0
_022C87E8:
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C87F0: .4byte 0x02325078
_022C87F4: .4byte 0x7F000001
	arm_func_end ov00_022C8778

	arm_func_start ov00_022C87F8
ov00_022C87F8: @ 0x022C87F8
	mov ip, #0
_022C87FC:
	ldrh r3, [r0], #2
	ldrh r2, [r1], #2
	cmp r3, r2
	movne r0, #1
	bxne lr
	add ip, ip, #1
	cmp ip, #3
	blt _022C87FC
	mov r0, #0
	bx lr
	arm_func_end ov00_022C87F8

	arm_func_start ov00_022C8824
ov00_022C8824: @ 0x022C8824
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _022C8878 @ =0x02318850
	add r1, r7, #6
	mov r2, #6
	mov r4, r3
	bl FUN_0207C4C8
	mov r0, r7
	mov r3, r5
	add r1, r7, #6
	sub r2, r6, #6
	str r4, [sp]
	bl ov00_022D7204
	cmp r0, #0
	movlt r1, #1
	ldr r0, _022C887C @ =0x02325078
	movge r1, #0
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C8878: .4byte 0x02318850
_022C887C: .4byte 0x02325078
	arm_func_end ov00_022C8824

	arm_func_start ov00_022C8880
ov00_022C8880: @ 0x022C8880
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, _022C8A68 @ =0x02325078
	mov r7, r0
	ldr ip, [r4, #0x58]
	mov r6, r2
	cmp ip, #0
	ldrne r0, [r4, #0x5c]
	mov r5, r3
	cmpne r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x1c]
	add r0, r5, r0
	cmp r0, #8
	poplo {r4, r5, r6, r7, r8, pc}
	ldr r2, _022C8A6C @ =0x000005E4
	cmp r0, r2
	pophi {r4, r5, r6, r7, r8, pc}
	ldr r2, _022C8A70 @ =0x02318850
	ldrb r4, [r6]
	ldrb r3, [r2]
	cmp r4, r3
	ldrbeq r4, [r6, #1]
	ldrbeq r3, [r2, #1]
	cmpeq r4, r3
	ldrbeq r3, [r6, #2]
	ldrbeq r2, [r2, #2]
	cmpeq r3, r2
	ldrbeq r2, [r6, #6]
	cmpeq r2, #8
	popne {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r6, #7]
	cmp r2, #0
	cmpne r2, #6
	popne {r4, r5, r6, r7, r8, pc}
	ldr r2, _022C8A68 @ =0x02325078
	add r0, r0, #9
	bic r0, r0, #1
	ldr r8, [r2, #0x28]
	lsl r0, r0, #0x10
	ldr lr, [r2, #0x28]
	ldr r4, [r2, #0x30]
	lsr r3, r0, #0x10
	cmp lr, r4
	add r4, r8, r0, lsr #16
	bhs _022C8940
	ldr r0, [r2, #0x30]
	cmp r0, r4
	popls {r4, r5, r6, r7, r8, pc}
_022C8940:
	ldr r0, _022C8A68 @ =0x02325078
	ldr r2, [r0, #0x5c]
	cmp r4, r2
	bne _022C8964
	ldr r0, [r0, #0x30]
	mov r4, #0
	cmp r0, #0
	bne _022C8980
	pop {r4, r5, r6, r7, r8, pc}
_022C8964:
	ldr r2, [r0, #0x5c]
	cmp r4, r2
	bls _022C8980
	ldr r0, [r0, #0x30]
	mov r4, r3
	cmp r0, r3
	popls {r4, r5, r6, r7, r8, pc}
_022C8980:
	ldr r0, _022C8A68 @ =0x02325078
	ldr lr, [r0, #0x28]
	ldr r2, [r0, #0x5c]
	add lr, lr, r3
	cmp lr, r2
	bls _022C89C0
	ldr lr, [r0, #0x5c]
	ldr r2, [r0, #0x28]
	sub r2, lr, r2
	cmp r2, #2
	ldrhs r0, [r0, #0x28]
	movhs r2, #0
	strhhs r2, [ip, r0]
	ldr r0, _022C8A68 @ =0x02325078
	mov r2, #0
	str r2, [r0, #0x28]
_022C89C0:
	ldr ip, _022C8A68 @ =0x02325078
	mov r0, r1
	ldr lr, [ip, #0x58]
	ldr r1, [ip, #0x28]
	mov r2, #6
	strh r3, [lr, r1]
	ldr r3, [ip, #0x58]
	ldr r1, [ip, #0x28]
	add r1, r3, r1
	add r1, r1, #2
	bl FUN_0207C4C8
	ldr r1, _022C8A68 @ =0x02325078
	mov r0, r7
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	mov r2, #6
	add r1, r3, r1
	add r1, r1, #8
	bl FUN_0207C4C8
	ldr r1, _022C8A68 @ =0x02325078
	add r0, r6, #6
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	sub r2, r5, #6
	add r1, r3, r1
	add r1, r1, #0xe
	bl FUN_0207C4C8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldrne r2, [sp, #0x1c]
	cmpne r2, #0
	beq _022C8A5C
	ldr r1, _022C8A68 @ =0x02325078
	ldr r3, [r1, #0x58]
	ldr r1, [r1, #0x28]
	add r1, r3, r1
	add r1, r1, #8
	add r1, r1, r5
	bl FUN_0207C4C8
_022C8A5C:
	ldr r0, _022C8A68 @ =0x02325078
	str r4, [r0, #0x28]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C8A68: .4byte 0x02325078
_022C8A6C: .4byte 0x000005E4
_022C8A70: .4byte 0x02318850
	arm_func_end ov00_022C8880

	arm_func_start ov00_022C8A74
ov00_022C8A74: @ 0x022C8A74
	push {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str ip, [sp, #4]
	bl ov00_022C8880
	ldr r0, _022C8AC8 @ =0x02325078
	ldr r1, [r0, #0x54]
	cmp r1, #0
	addeq sp, sp, #8
	popeq {r3, pc}
	ldr r0, [r0, #0x54]
	bl FUN_02079830
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, pc}
	ldr r0, _022C8AC8 @ =0x02325078
	ldr r0, [r0, #0x54]
	bl FUN_02079940
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022C8AC8: .4byte 0x02325078
	arm_func_end ov00_022C8A74

	arm_func_start ov00_022C8ACC
ov00_022C8ACC: @ 0x022C8ACC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	bl FUN_0207B7E4
	ldr sb, _022C8B84 @ =0x02325078
	mov r6, r0
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x28]
	cmp r1, r0
	bne _022C8B20
	mov r5, #0
	ldr r8, _022C8B88 @ =0x022B966C
	mov r4, r5
_022C8AFC:
	ldr r1, [r8, #4]
	mov r0, r5
	str r1, [sb, #0x54]
	bl FUN_02079888
	str r4, [sb, #0x54]
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x28]
	cmp r1, r0
	beq _022C8AFC
_022C8B20:
	mov r0, r6
	bl FUN_0207B7F8
	ldr r0, _022C8B84 @ =0x02325078
	mov r3, #0
	ldr r5, [r0, #0x58]
	mov r1, r3
_022C8B38:
	ldr r4, [r0, #0x5c]
	ldr r2, [r0, #0x30]
	sub r2, r4, r2
	cmp r2, #2
	strlo r3, [r0, #0x30]
	ldr r2, [r0, #0x30]
	ldrh r2, [r5, r2]
	cmp r2, #0
	streq r1, [r0, #0x30]
	cmp r2, #0
	beq _022C8B38
	sub r1, r2, #2
	ldr r0, _022C8B84 @ =0x02325078
	str r1, [r7]
	ldr r1, [r0, #0x58]
	ldr r0, [r0, #0x30]
	add r0, r1, r0
	add r0, r0, #2
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C8B84: .4byte 0x02325078
_022C8B88: .4byte 0x022B966C
	arm_func_end ov00_022C8ACC

	arm_func_start ov00_022C8B8C
ov00_022C8B8C: @ 0x022C8B8C
	push {r3, lr}
	bl FUN_0207B7E4
	ldr r1, _022C8BCC @ =0x02325078
	ldr ip, [r1, #0x30]
	ldr r3, [r1, #0x58]
	ldr r2, [r1, #0x30]
	ldrh r2, [r3, r2]
	add r2, ip, r2
	str r2, [r1, #0x30]
	ldr r3, [r1, #0x30]
	ldr r2, [r1, #0x5c]
	cmp r3, r2
	movhs r2, #0
	strhs r2, [r1, #0x30]
	bl FUN_0207B7F8
	pop {r3, pc}
	.align 2, 0
_022C8BCC: .4byte 0x02325078
	arm_func_end ov00_022C8B8C

	arm_func_start ov00_022C8BD0
ov00_022C8BD0: @ 0x022C8BD0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_0207B7E4
	ldr r1, _022C8C88 @ =0x7F000001
	mov r4, r0
	cmp r5, r1
	ldrne r0, _022C8C8C @ =0x02325078
	mov r7, #0
	ldrne r0, [r0, #0x50]
	cmpne r5, r0
	ldreq r7, _022C8C90 @ =0x02325560
	beq _022C8C78
	mov r0, r5
	bl ov00_022C8728
	cmp r0, #0
	bne _022C8C20
	mov r0, r5
	bl ov00_022C8764
	cmp r0, #0
	beq _022C8C28
_022C8C20:
	ldr r7, _022C8C94 @ =0x02318848
	b _022C8C78
_022C8C28:
	ldr r1, _022C8C98 @ =0x023250F8
	mov r6, r7
_022C8C30:
	ldr r0, [r1]
	cmp r5, r0
	bne _022C8C68
	bl FUN_0207AE44
	mov r2, #0xc
	mul r3, r6, r2
	ldr r2, _022C8C98 @ =0x023250F8
	lsr r5, r0, #0x10
	add r0, r2, r3
	ldr r2, _022C8C9C @ =0x02325102
	orr r5, r5, r1, lsl #16
	strh r5, [r2, r3]
	add r7, r0, #4
	b _022C8C78
_022C8C68:
	add r6, r6, #1
	cmp r6, #8
	add r1, r1, #0xc
	blo _022C8C30
_022C8C78:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r7
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C8C88: .4byte 0x7F000001
_022C8C8C: .4byte 0x02325078
_022C8C90: .4byte 0x02325560
_022C8C94: .4byte 0x02318848
_022C8C98: .4byte 0x023250F8
_022C8C9C: .4byte 0x02325102
	arm_func_end ov00_022C8BD0

	arm_func_start ov00_022C8CA0
ov00_022C8CA0: @ 0x022C8CA0
	push {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x2a
	bl FUN_0207C40C
	add r0, sp, #0
	mov r1, #0xff
	mov r2, #6
	bl FUN_0207C40C
	ldr r0, _022C8D8C @ =0x02325560
	add r1, sp, #6
	mov r2, #6
	bl FUN_0207C4C8
	mov r0, #1
	ldr r1, _022C8D90 @ =0x00000608
	strb r0, [sp, #0xf]
	strh r1, [sp, #0xc]
	strb r0, [sp, #0x15]
	mov r0, #8
	ldr r1, _022C8D94 @ =0x00000406
	strb r0, [sp, #0x10]
	strh r1, [sp, #0x12]
	ldr r0, _022C8D8C @ =0x02325560
	add r1, sp, #0x16
	mov r2, #6
	bl FUN_0207C4C8
	ldr r0, _022C8D98 @ =0x02325078
	lsr r1, r4, #0x10
	ldr r3, [r0, #0x50]
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	lsr r0, r3, #0x10
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	lsl r0, r3, #0x10
	lsr r3, r0, #0x10
	lsl r0, r4, #8
	orr r0, r0, r4, asr #8
	strh r0, [sp, #0x1c]
	lsl r0, r3, #8
	orr r0, r0, r3, asr #8
	strh r0, [sp, #0x1e]
	lsl r0, r2, #8
	orr r0, r0, r2, asr #8
	strh r0, [sp, #0x26]
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	mov r2, #0
	strh r0, [sp, #0x28]
	add r0, sp, #0
	mov r1, #0x2a
	mov r3, r2
	bl ov00_022C8824
	add sp, sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
_022C8D8C: .4byte 0x02325560
_022C8D90: .4byte 0x00000608
_022C8D94: .4byte 0x00000406
_022C8D98: .4byte 0x02325078
	arm_func_end ov00_022C8CA0

	arm_func_start ov00_022C8D9C
ov00_022C8D9C: @ 0x022C8D9C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, #0
	ldr r4, _022C8E08 @ =0x02325078
	mov sb, r0
	mov r5, #0x64
	mov r6, r7
_022C8DB4:
	mov r0, sb
	bl ov00_022C8CA0
	mov r8, r6
_022C8DC0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl FUN_02079B14
	mov r0, sb
	bl ov00_022C8BD0
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r8, r8, #1
	cmp r8, #0x14
	blo _022C8DC0
	add r7, r7, #1
	cmp r7, #8
	blo _022C8DB4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022C8E08: .4byte 0x02325078
	arm_func_end ov00_022C8D9C

	arm_func_start ov00_022C8E0C
ov00_022C8E0C: @ 0x022C8E0C
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _022C8F38 @ =0x7F000001
	mov r6, r1
	mov r7, r0
	cmp r6, r3
	ldrne r0, _022C8F3C @ =0x02325078
	mov r5, r2
	ldrne r0, [r0, #0x50]
	cmpne r6, r0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov00_022C86C4
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov00_022C8764
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	lsl r0, r0, #0x10
	ldr r2, _022C8F40 @ =0x023250F8
	lsr r4, r0, #0x10
	mov r1, #0
_022C8E70:
	ldr r0, [r2]
	cmp r6, r0
	bne _022C8EA8
	mov r0, #0xc
	mul r5, r1, r0
	ldr r0, _022C8F40 @ =0x023250F8
	ldr r3, _022C8F44 @ =0x02325102
	add r1, r0, r5
	mov r0, r7
	add r1, r1, #4
	mov r2, #6
	strh r4, [r3, r5]
	bl FUN_0207C4C8
	pop {r3, r4, r5, r6, r7, pc}
_022C8EA8:
	add r1, r1, #1
	cmp r1, #8
	add r2, r2, #0xc
	blo _022C8E70
	cmp r5, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	ldr r3, _022C8F40 @ =0x023250F8
	mov r1, r2
	mov r5, r2
_022C8ED0:
	ldr r0, [r3]
	cmp r0, #0
	moveq r1, r5
	beq _022C8F08
	ldrh r0, [r3, #0xa]
	add r3, r3, #0xc
	sub r0, r4, r0
	lsl r0, r0, #0x10
	cmp r2, r0, asr #16
	movlt r1, r5
	add r5, r5, #1
	lsrlt r2, r0, #0x10
	cmp r5, #8
	blo _022C8ED0
_022C8F08:
	mov r0, #0xc
	mul r5, r1, r0
	ldr r3, _022C8F40 @ =0x023250F8
	mov r0, r7
	add r1, r3, r5
	add r1, r1, #4
	mov r2, #6
	str r6, [r3, r5]
	bl FUN_0207C4C8
	ldr r0, _022C8F44 @ =0x02325102
	strh r4, [r0, r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C8F38: .4byte 0x7F000001
_022C8F3C: .4byte 0x02325078
_022C8F40: .4byte 0x023250F8
_022C8F44: .4byte 0x02325102
	arm_func_end ov00_022C8E0C

	arm_func_start ov00_022C8F48
ov00_022C8F48: @ 0x022C8F48
	push {r4, r5, r6, r7, r8, lr}
	ldrh r5, [sp, #0x1c]
	ldr r4, [sp, #0x18]
	mov r8, r0
	lsl r0, r5, #8
	orr ip, r0, r5, asr #8
	mov r0, r4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	strh ip, [r8, #-2]
	bl ov00_022C8764
	cmp r0, #0
	bne _022C8FBC
	mov r0, r4
	bl ov00_022C8704
	movs r4, r0
	popeq {r4, r5, r6, r7, r8, pc}
	bl ov00_022C8BD0
	cmp r0, #0
	bne _022C8FA4
	mov r0, r4
	bl ov00_022C8D9C
_022C8FA4:
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	sub r1, r8, #0xe
	mov r2, #6
	bl FUN_0207C4C8
	b _022C8FEC
_022C8FBC:
	mov r0, #1
	strb r0, [r8, #-0xe]
	mov r1, #0
	lsr r0, r4, #0x10
	strb r1, [r8, #-0xd]
	mov r1, #0x5e
	strb r1, [r8, #-0xc]
	and r0, r0, #0x7f
	strb r0, [r8, #-0xb]
	lsr r0, r4, #8
	strb r0, [r8, #-0xa]
	strb r4, [r8, #-9]
_022C8FEC:
	ldr r0, _022C9014 @ =0x02325560
	sub r1, r8, #8
	mov r2, #6
	bl FUN_0207C4C8
	mov r2, r6
	mov r3, r5
	sub r0, r8, #0xe
	add r1, r7, #0xe
	bl ov00_022C8824
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C9014: .4byte 0x02325560
	arm_func_end ov00_022C8F48

	arm_func_start ov00_022C9018
ov00_022C9018: @ 0x022C9018
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r5, r3
	add r1, r7, #0x14
	add r1, r1, r5
	lsl r1, r1, #0x10
	ldr r3, [sp, #0x24]
	lsr r4, r1, #0x10
	lsl r1, r3, #0x10
	lsl r3, r4, #8
	orr r3, r3, r4, asr #8
	mov r8, r0
	lsr r1, r1, #0x10
	lsl r0, r1, #8
	strh r3, [r8, #-0x12]
	orr r0, r0, r1, asr #8
	strh r0, [r8, #-0xe]
	mov r3, #0
	sub r0, r8, #0x14
	mov r1, #0x14
	mov r6, r2
	strh r3, [r8, #-0xa]
	ldr r4, [sp, #0x20]
	bl ov00_022C8658
	lsl r2, r0, #8
	ldr r1, _022C9130 @ =0x7F000001
	orr r0, r2, r0, asr #8
	strh r0, [r8, #-0xa]
	cmp r4, r1
	ldrne r0, _022C9134 @ =0x02325078
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _022C90C0
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	mov ip, #0x800
	sub r0, r8, #0x14
	add r1, r7, #0x14
	str ip, [sp, #4]
	bl ov00_022C8F48
_022C90C0:
	ldr r0, _022C9130 @ =0x7F000001
	cmp r4, r0
	ldrne r0, _022C9134 @ =0x02325078
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _022C90EC
	mov r0, r4
	bl ov00_022C8764
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, pc}
_022C90EC:
	ldr r0, _022C9138 @ =0x02318850
	sub r1, r8, #0x1c
	mov r2, #8
	bl FUN_0207C4C8
	bl FUN_0207B7E4
	mov r4, r0
	ldr r0, _022C913C @ =0x02325560
	str r6, [sp]
	mov r1, r0
	str r5, [sp, #4]
	sub r2, r8, #0x1c
	add r3, r7, #0x1c
	bl ov00_022C8880
	mov r0, r4
	bl FUN_0207B7F8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C9130: .4byte 0x7F000001
_022C9134: .4byte 0x02325078
_022C9138: .4byte 0x02318850
_022C913C: .4byte 0x02325560
	arm_func_end ov00_022C9018

	arm_func_start ov00_022C9140
ov00_022C9140: @ 0x022C9140
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov r0, #0x45
	strb r0, [sl, #-0x14]
	mov r4, #0
	ldr r7, _022C9330 @ =0x02325078
	strb r4, [sl, #-0x13]
	ldrh r0, [r7, #6]
	ldr r6, [sp, #0x30]
	ldrb r5, [sp, #0x34]
	add r0, r0, #1
	strh r0, [r7, #6]
	ldrh fp, [r7, #6]
	lsr r0, r6, #0x10
	mov r8, #0x80
	lsl sb, fp, #8
	orr sb, sb, fp, asr #8
	strh sb, [sl, #-0x10]
	strb r8, [sl, #-0xc]
	strb r5, [sl, #-0xb]
	ldr r8, [r7, #0x50]
	lsl r5, r0, #0x10
	lsr r0, r8, #0x10
	lsl r0, r0, #0x10
	lsr r8, r0, #0x10
	lsl r0, r8, #8
	orr r0, r0, r8, asr #8
	strh r0, [sl, #-8]
	ldr r0, [r7, #0x50]
	lsr r8, r5, #0x10
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	lsl r5, r7, #8
	lsl r0, r6, #0x10
	orr sb, r5, r7, asr #8
	lsl r7, r8, #8
	lsr r5, r0, #0x10
	lsl r0, r5, #8
	strh sb, [sl, #-6]
	orr r7, r7, r8, asr #8
	ldr fp, _022C9334 @ =0x000005C8
	mov sb, r1
	strh r7, [sl, #-4]
	orr r0, r0, r5, asr #8
	mov r8, r2
	mov r7, r3
	strh r0, [sl, #-2]
	cmp sb, fp
	bls _022C92AC
	mov r5, sl
	bls _022C9250
_022C9210:
	mov r0, sl
	mov r1, #0
	mov r2, r5
	mov r3, fp
	str r6, [sp]
	orr ip, r4, #0x2000
	str ip, [sp, #4]
	bl ov00_022C9018
	add r1, r4, #0xb9
	add r0, r5, #0x1c8
	sub sb, sb, fp
	lsl r1, r1, #0x10
	cmp sb, fp
	add r5, r0, #0x400
	lsr r4, r1, #0x10
	bhi _022C9210
_022C9250:
	cmp sb, #0
	beq _022C92AC
	cmp r7, #0
	mov r1, #0
	beq _022C9284
	mov r2, r5
	mov r0, sl
	mov r3, sb
	str r6, [sp]
	orr r5, r4, #0x2000
	str r5, [sp, #4]
	bl ov00_022C9018
	b _022C929C
_022C9284:
	str r6, [sp]
	mov r0, sl
	mov r2, r5
	mov r3, sb
	str r4, [sp, #4]
	bl ov00_022C9018
_022C929C:
	add r0, r4, sb, lsr #3
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov sb, #0
_022C92AC:
	ldr fp, _022C9334 @ =0x000005C8
	add r0, sb, r7
	cmp r0, fp
	bls _022C9300
_022C92BC:
	sub r5, fp, sb
	mov r1, sb
	mov r0, sl
	mov r2, r8
	mov r3, r5
	str r6, [sp]
	orr sb, r4, #0x2000
	str sb, [sp, #4]
	bl ov00_022C9018
	add r0, r4, #0xb9
	sub r7, r7, r5
	lsl r0, r0, #0x10
	mov sb, #0
	cmp r7, fp
	add r8, r8, r5
	lsr r4, r0, #0x10
	bhi _022C92BC
_022C9300:
	adds r0, sb, r7
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [sp]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl ov00_022C9018
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022C9330: .4byte 0x02325078
_022C9334: .4byte 0x000005C8
	arm_func_end ov00_022C9140

	arm_func_start ov00_022C9338
ov00_022C9338: @ 0x022C9338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	ldr r4, [r5, #0x4c]
	mov r6, r1
	mov r1, #8
	ldr r3, _022C93E0 @ =0x02325078
	ldr r2, _022C93E4 @ =0x022B966C
	strh r1, [r4, #0x22]
	ldr r2, [r2, #4]
	ldrh lr, [r3, #4]
	mov r7, r0
	strh r2, [r4, #0x26]
	mov r2, #0
	strh r2, [r4, #0x24]
	strh lr, [r5, #0xa]
	add ip, lr, #1
	add r0, r4, #0x22
	strh ip, [r3, #4]
	strh lr, [r4, #0x28]
	bl ov00_022C8588
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl ov00_022C8588
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov00_022C863C
	mov r2, r7
	mov r3, r6
	lsl r1, r0, #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #0x24]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0x22
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #8
	bl ov00_022C9140
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C93E0: .4byte 0x02325078
_022C93E4: .4byte 0x022B966C
	arm_func_end ov00_022C9338

	arm_func_start ov00_022C93E8
ov00_022C93E8: @ 0x022C93E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r7, _022C9520 @ =0x02325078
	mov r5, r2
	ldr r2, [r7, #0x50]
	mov r6, r1
	lsr r1, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r3, [r5, #0x4c]
	lsl r1, r2, #8
	add r4, r3, #0x22
	orr r1, r1, r2, asr #8
	strh r1, [r4, #-0xc]
	ldr r1, [r7, #0x50]
	add r2, r6, #8
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r1, r7, #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-0xa]
	ldr r1, [r5, #0x1c]
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r1, r7, #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-8]
	ldr r1, [r5, #0x1c]
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	lsl r1, r7, #8
	orr r7, r1, r7, asr #8
	lsl r1, r2, #8
	strh r7, [r4, #-6]
	mov r7, #0x1100
	strh r7, [r4, #-4]
	orr r1, r1, r2, asr #8
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r7, r0
	sub r0, r4, #0xc
	strh r1, [r4, #-2]
	ldrh lr, [r5, #0x18]
	mov r2, #0
	mov r1, #0x14
	lsl ip, lr, #8
	orr ip, ip, lr, asr #8
	strh ip, [r4, #2]
	ldrh lr, [r5, #0xa]
	lsl ip, lr, #8
	orr ip, ip, lr, asr #8
	strh ip, [r3, #0x22]
	strh r2, [r4, #6]
	bl ov00_022C8588
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl ov00_022C8588
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov00_022C863C
	mov r2, r7
	mov r3, r6
	lsl r1, r0, #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #6]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	mov r1, #8
	bl ov00_022C9140
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C9520: .4byte 0x02325078
	arm_func_end ov00_022C93E8

	arm_func_start ov00_022C9524
ov00_022C9524: @ 0x022C9524
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r7, r2
	ldrb r2, [r7, #8]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov r6, r3
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _022C9788 @ =0x022B966C
	ldr r1, _022C978C @ =0x023252E0
	ldr r0, [r0, #4]
	cmp r0, r1
	ldreq r4, _022C9790 @ =0x0232558A
	ldrne r0, [r7, #0x4c]
	addne r4, r0, #0x22
	ldr r0, _022C9794 @ =0x02325078
	ands r2, r6, #2
	movne r5, #0x18
	moveq r5, #0x14
	add r1, r5, r8
	ldr sl, [r0, #0x50]
	lsl r3, r1, #0x10
	lsr r1, sl, #0x10
	lsl r1, r1, #0x10
	lsr sl, r1, #0x10
	lsl r1, sl, #8
	orr r1, r1, sl, asr #8
	strh r1, [r4, #-0xc]
	lsr r1, r3, #0x10
	ldr sl, [r0, #0x50]
	lsl lr, r1, #8
	lsl r3, sl, #0x10
	lsr sl, r3, #0x10
	lsl r3, sl, #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-0xa]
	ldr r3, [r7, #0x1c]
	orr r1, lr, r1, asr #8
	lsr r3, r3, #0x10
	lsl r3, r3, #0x10
	lsr sl, r3, #0x10
	lsl r3, sl, #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-8]
	ldr r3, [r7, #0x1c]
	lsr ip, r5, #2
	lsl r3, r3, #0x10
	lsr sl, r3, #0x10
	lsl r3, sl, #8
	orr r3, r3, sl, asr #8
	strh r3, [r4, #-6]
	mov r3, #0x600
	strh r3, [r4, #-4]
	strh r1, [r4, #-2]
	ldrh lr, [r7, #0xa]
	lsl r3, ip, #4
	cmp r2, #0
	lsl r1, lr, #8
	orr r1, r1, lr, asr #8
	strh r1, [r4]
	ldrh ip, [r7, #0x18]
	lsl r1, ip, #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #2]
	ldr r1, [r7, #0x28]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr ip, r1, #0x10
	lsl r1, ip, #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #4]
	ldr r1, [r7, #0x28]
	lsl r1, r1, #0x10
	lsr ip, r1, #0x10
	lsl r1, ip, #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #6]
	ldr r1, [r7, #0x24]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr ip, r1, #0x10
	lsl r1, ip, #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #8]
	ldr r1, [r7, #0x24]
	lsl r1, r1, #0x10
	lsr ip, r1, #0x10
	lsl r1, ip, #8
	orr r1, r1, ip, asr #8
	strh r1, [r4, #0xa]
	strb r3, [r4, #0xc]
	strb r6, [r4, #0xd]
	ldr r3, [r7, #0x3c]
	ldr r1, [r7, #0x44]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	strh r1, [r4, #0xe]
	mov r1, #0
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	beq _022C9708
	ldrh r1, [r0, #2]
	add r1, r1, #0x2040000
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	lsl r1, r2, #8
	orr r1, r1, r2, asr #8
	strh r1, [r4, #0x14]
	ldrh r0, [r0, #2]
	add r0, r0, #0x2040000
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x16]
_022C9708:
	sub r0, r4, #0xc
	add r1, r5, #0xc
	mov r2, #0
	bl ov00_022C8588
	mov r2, r0
	mov r0, sb
	mov r1, r8
	bl ov00_022C8588
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov00_022C863C
	lsl r3, r0, #8
	orr r0, r3, r0, asr #8
	strh r0, [r4, #0x10]
	mov r0, r4
	ldr r4, [r7, #0x1c]
	mov r3, #6
	str r4, [sp]
	str r3, [sp, #4]
	mov r1, r5
	mov r2, sb
	mov r3, r8
	bl ov00_022C9140
	ldr r0, [r7, #0x28]
	tst r6, #3
	add r0, r0, r8
	str r0, [r7, #0x28]
	ldrne r0, [r7, #0x28]
	addne r0, r0, #1
	strne r0, [r7, #0x28]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022C9788: .4byte 0x022B966C
_022C978C: .4byte 0x023252E0
_022C9790: .4byte 0x0232558A
_022C9794: .4byte 0x02325078
	arm_func_end ov00_022C9524

	arm_func_start ov00_022C9798
ov00_022C9798: @ 0x022C9798
	push {r4, lr}
	mov r4, r0
	mov r3, #0x200
	add r0, r4, #8
	add r1, r4, #0x12
	mov r2, #0xa
	strh r3, [r4, #6]
	bl FUN_0207C4C8
	ldr r0, _022C9838 @ =0x02325560
	add r1, r4, #8
	mov r2, #6
	bl FUN_0207C4C8
	ldr r3, _022C983C @ =0x02325078
	add r0, r4, #0x12
	ldr r2, [r3, #0x50]
	sub r1, r4, #0xe
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr ip, r2, #0x10
	lsl r2, ip, #8
	orr r2, r2, ip, asr #8
	strh r2, [r4, #0xe]
	ldr r3, [r3, #0x50]
	mov r2, #6
	lsl r3, r3, #0x10
	lsr ip, r3, #0x10
	lsl r3, ip, #8
	orr r3, r3, ip, asr #8
	strh r3, [r4, #0x10]
	bl FUN_0207C4C8
	ldr r0, _022C9838 @ =0x02325560
	sub r1, r4, #8
	mov r2, #6
	bl FUN_0207C4C8
	sub r0, r4, #0xe
	mov r1, #0x2a
	mov r2, #0
	mov r3, r2
	bl ov00_022C8824
	pop {r4, pc}
	.align 2, 0
_022C9838: .4byte 0x02325560
_022C983C: .4byte 0x02325078
	arm_func_end ov00_022C9798

	arm_func_start ov00_022C9840
ov00_022C9840: @ 0x022C9840
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	cmp r1, #0x1c
	poplo {r3, r4, r5, r6, r7, pc}
	ldr r1, _022C9978 @ =0x02325560
	add r0, r6, #8
	bl ov00_022C87F8
	cmp r0, #0
	ldrne r0, _022C997C @ =0x02325078
	ldrne r0, [r0, #0x50]
	cmpne r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r6]
	cmp r0, #0x100
	ldrheq r0, [r6, #2]
	cmpeq r0, #8
	ldrheq r1, [r6, #4]
	ldreq r0, _022C9980 @ =0x00000406
	cmpeq r1, r0
	popne {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #6]
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #1
	cmpne r4, #2
	popne {r3, r4, r5, r6, r7, pc}
	ldrh r5, [r6, #0x10]
	ldrh r3, [r6, #0xe]
	ldrh lr, [r6, #0x1a]
	lsl r0, r5, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r5, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	ldrh ip, [r6, #0x18]
	ldr r2, _022C997C @ =0x02325078
	lsr r3, r0, #0x10
	lsr r1, r1, #0x10
	ldr r0, [r2, #0x50]
	orr r1, r1, r3, lsl #16
	lsl r3, ip, #8
	cmp r1, r0
	moveq r5, #1
	lsl r2, lr, #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	lsl r2, ip, #0x10
	lsl r3, r3, #0x10
	lsr ip, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, ip, lsl #16
	movne r5, #0
	cmp r0, r2
	moveq r7, #1
	movne r7, #0
	cmp r5, #0
	bne _022C993C
	mov r2, r7
	add r0, r6, #8
	bl ov00_022C8E0C
_022C993C:
	cmp r4, #1
	bne _022C9958
	cmp r7, #0
	beq _022C9958
	mov r0, r6
	bl ov00_022C9798
	pop {r3, r4, r5, r6, r7, pc}
_022C9958:
	cmp r4, #2
	popne {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r5, #0
	ldrne r0, _022C997C @ =0x02325078
	movne r1, #1
	strbne r1, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C9978: .4byte 0x02325560
_022C997C: .4byte 0x02325078
_022C9980: .4byte 0x00000406
	arm_func_end ov00_022C9840

	arm_func_start ov00_022C9984
ov00_022C9984: @ 0x022C9984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldrh r4, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r5, r1
	lsl r0, r4, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r4, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r3, lsl #16
	mov r4, r2
	bl ov00_022C8704
	movs r7, r0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022C8BD0
	cmp r0, #0
	bne _022C99F0
	mov r0, r7
	bl ov00_022C8CA0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022C99F0:
	mov r2, #0
	strb r2, [r5]
	mov r0, r5
	mov r1, r4
	strh r2, [r5, #2]
	bl ov00_022C8658
	lsl r1, r0, #8
	orr r0, r1, r0, asr #8
	strh r0, [r5, #2]
	ldrh ip, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r2, #0
	lsl r0, ip, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	orr r6, r0, r3, lsl #16
	mov r0, r5
	mov r1, r4
	mov r3, r2
	str r6, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl ov00_022C9140
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022C9984

	arm_func_start ov00_022C9A68
ov00_022C9A68: @ 0x022C9A68
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_0207B7E4
	ldr r1, _022C9B64 @ =0x022B966C
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _022C9B58
_022C9A90:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r3, [r4]
	cmpne r3, #0
	beq _022C9B4C
	ldrb r0, [r4, #8]
	cmp r0, #0xb
	ldrheq r2, [r7, #4]
	lsleq r0, r3, #0x10
	cmpeq r2, r0, lsr #16
	ldrheq r2, [r4, #0xa]
	ldrheq r0, [r7, #6]
	cmpeq r2, r0
	ldreq r0, [r4, #0x44]
	cmpeq r0, #0
	bne _022C9B4C
	ldrh lr, [r8, #0xe]
	ldrh ip, [r8, #0xc]
	ldr r0, [r4, #0x1c]
	lsl r2, lr, #8
	lsl r3, ip, #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	lsl r2, ip, #0x10
	lsl r3, r3, #0x10
	lsr ip, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, ip, lsl #16
	cmp r0, r2
	bne _022C9B4C
	ldr r1, [r4, #0x3c]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x44]
	strls r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	add r0, r7, #8
	bl FUN_0207C4C8
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _022C9B58
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl FUN_02079940
	b _022C9B58
_022C9B4C:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _022C9A90
_022C9B58:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C9B64: .4byte 0x022B966C
	arm_func_end ov00_022C9A68

	arm_func_start ov00_022C9B68
ov00_022C9B68: @ 0x022C9B68
	cmp r0, #0
	mvnne r2, #0
	cmpne r0, r2
	cmpne r1, #0
	cmpne r1, r2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov00_022C9B68

	arm_func_start ov00_022C9B88
ov00_022C9B88: @ 0x022C9B88
	push {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl ov00_022C8658
	ldr r1, _022C9C54 @ =0x0000FFFF
	cmp r0, r1
	popne {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r6, #0x12]
	ldrh r8, [r6, #0x10]
	ldrh r7, [r6, #0xe]
	ldrh lr, [r6, #0xc]
	lsl r2, r8, #8
	orr r2, r2, r8, asr #8
	lsl ip, lr, #8
	lsl r2, r2, #0x10
	lsl r3, r7, #8
	orr lr, ip, lr, asr #8
	lsl r1, r0, #8
	orr ip, r3, r7, asr #8
	orr r3, r1, r0, asr #8
	lsl r0, lr, #0x10
	lsl r1, ip, #0x10
	lsr ip, r0, #0x10
	lsr r0, r1, #0x10
	lsl r3, r3, #0x10
	lsr r2, r2, #0x10
	lsr r1, r3, #0x10
	orr r0, r0, ip, lsl #16
	orr r1, r1, r2, lsl #16
	bl ov00_022C9B68
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r5]
	cmp r0, #0
	beq _022C9C2C
	cmp r0, #8
	beq _022C9C40
	pop {r4, r5, r6, r7, r8, pc}
_022C9C2C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022C9A68
	pop {r4, r5, r6, r7, r8, pc}
_022C9C40:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022C9984
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022C9C54: .4byte 0x0000FFFF
	arm_func_end ov00_022C9B88

	arm_func_start ov00_022C9C58
ov00_022C9C58: @ 0x022C9C58
	push {r4, r5, r6, lr}
	ldr r2, _022C9D28 @ =0x022B966C
	ldr ip, [r2, #8]
	cmp ip, #0
	beq _022C9D20
_022C9C6C:
	ldr r3, [ip, #0xa4]
	cmp r3, #0
	ldrne r2, [r3]
	cmpne r2, #0
	beq _022C9D14
	ldrb r2, [r3, #8]
	cmp r2, #1
	bne _022C9D14
	ldrh r5, [r1, #2]
	ldrh r4, [r3, #0xa]
	lsl r2, r5, #8
	orr r2, r2, r5, asr #8
	lsl r2, r2, #0x10
	cmp r4, r2, lsr #16
	bne _022C9D14
	ldrh r5, [r3, #0x18]
	cmp r5, #0
	beq _022C9CCC
	ldrh r4, [r1]
	lsl r2, r4, #8
	orr r2, r2, r4, asr #8
	lsl r2, r2, #0x10
	cmp r5, r2, lsr #16
	bne _022C9D14
_022C9CCC:
	ldr r2, [r3, #0x1c]
	cmp r2, #0
	beq _022C9D0C
	ldrh r6, [r0, #0xe]
	ldrh r5, [r0, #0xc]
	lsl r4, r6, #8
	lsl lr, r5, #8
	orr lr, lr, r5, asr #8
	orr r4, r4, r6, asr #8
	lsl lr, lr, #0x10
	lsl r4, r4, #0x10
	lsr lr, lr, #0x10
	lsr r4, r4, #0x10
	orr r4, r4, lr, lsl #16
	cmp r2, r4
	bne _022C9D14
_022C9D0C:
	mov r0, r3
	pop {r4, r5, r6, pc}
_022C9D14:
	ldr ip, [ip, #0x68]
	cmp ip, #0
	bne _022C9C6C
_022C9D20:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022C9D28: .4byte 0x022B966C
	arm_func_end ov00_022C9C58

	arm_func_start ov00_022C9D2C
ov00_022C9D2C: @ 0x022C9D2C
	push {r4, r5, r6, lr}
	ldrb r4, [r2, #8]
	mov r3, #0
	mov r5, r3
	cmp r4, #0xa
	cmpne r4, #0xb
	movne r5, #1
	mov ip, r3
	mov r6, r3
	cmp r5, #0
	beq _022C9D74
	ldrh lr, [r1, #2]
	ldrh r5, [r2, #0xa]
	lsl r4, lr, #8
	orr r4, r4, lr, asr #8
	lsl lr, r4, #0x10
	cmp r5, lr, lsr #16
	moveq r6, #1
_022C9D74:
	cmp r6, #0
	beq _022C9D98
	ldrh lr, [r1]
	ldrh r4, [r2, #0x18]
	lsl r1, lr, #8
	orr r1, r1, lr, asr #8
	lsl r1, r1, #0x10
	cmp r4, r1, lsr #16
	moveq ip, #1
_022C9D98:
	cmp ip, #0
	beq _022C9DD8
	ldrh lr, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	ldr ip, [r2, #0x1c]
	lsl r1, lr, #8
	lsl r0, r4, #8
	orr r2, r1, lr, asr #8
	orr r1, r0, r4, asr #8
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r2, lsl #16
	cmp ip, r0
	moveq r3, #1
_022C9DD8:
	mov r0, r3
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022C9D2C

	arm_func_start ov00_022C9DE0
ov00_022C9DE0: @ 0x022C9DE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _022C9E40 @ =0x022B966C
	mov r7, r0
	ldr r5, [r2, #8]
	mov r6, r1
	cmp r5, #0
	beq _022C9E38
_022C9DFC:
	ldr r4, [r5, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _022C9E2C
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl ov00_022C9D2C
	cmp r0, #0
	movne r0, r4
	popne {r3, r4, r5, r6, r7, pc}
_022C9E2C:
	ldr r5, [r5, #0x68]
	cmp r5, #0
	bne _022C9DFC
_022C9E38:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022C9E40: .4byte 0x022B966C
	arm_func_end ov00_022C9DE0

	arm_func_start ov00_022C9E44
ov00_022C9E44: @ 0x022C9E44
	mov r2, #0x218
	strh r2, [r1, #0x2e]
	ldrb r2, [r0, #0xc]
	add r3, r0, #0x14
	and r2, r2, #0xf0
	asr r0, r2, #1
	add r0, r2, r0, lsr #30
	asr r0, r0, #2
	subs r0, r0, #0x14
	sub ip, r0, #1
	bxeq lr
_022C9E70:
	ldrb r0, [r3], #1
	cmp r0, #0
	bxeq lr
	cmp r0, #1
	beq _022C9EB8
	cmp r0, #2
	bne _022C9EA8
	ldrb r2, [r3, #1]
	ldrb r0, [r3, #2]
	add r3, r3, #3
	sub ip, ip, #3
	orr r0, r0, r2, lsl #8
	strh r0, [r1, #0x2e]
	b _022C9EB8
_022C9EA8:
	ldrb r0, [r3]
	sub r0, r0, #1
	sub ip, ip, r0
	add r3, r3, r0
_022C9EB8:
	cmp ip, #0
	sub ip, ip, #1
	bne _022C9E70
	bx lr
	arm_func_end ov00_022C9E44

	arm_func_start ov00_022C9EC8
ov00_022C9EC8: @ 0x022C9EC8
	push {r3, lr}
	bl ov00_022C8704
	cmp r0, #0
	moveq r0, #1
	popeq {r3, pc}
	bl ov00_022C8BD0
	pop {r3, pc}
	arm_func_end ov00_022C9EC8

	arm_func_start ov00_022C9EE4
ov00_022C9EE4: @ 0x022C9EE4
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x1c]
	mov r5, r1
	mov r4, r2
	bl ov00_022C9EC8
	cmp r0, #0
	bne _022C9F1C
	ldr r0, _022C9F50 @ =0x022B966C
	ldr r1, _022C9F54 @ =0x023252E0
	ldr r0, [r0, #4]
	cmp r0, r1
	beq _022C9F3C
_022C9F1C:
	mov r0, #0
	mov r1, r0
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	bl ov00_022C9524
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
_022C9F3C:
	ldr r0, [r6, #0x1c]
	bl ov00_022C8704
	bl ov00_022C8CA0
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022C9F50: .4byte 0x022B966C
_022C9F54: .4byte 0x023252E0
	arm_func_end ov00_022C9EE4

	arm_func_start ov00_022C9F58
ov00_022C9F58: @ 0x022C9F58
	ldr ip, _022C9F68 @ =ov00_022C9EE4
	mov r2, r1
	mov r1, #0x10
	bx ip
	.align 2, 0
_022C9F68: .4byte ov00_022C9EE4
	arm_func_end ov00_022C9F58

	arm_func_start ov00_022C9F6C
ov00_022C9F6C: @ 0x022C9F6C
	ldr ip, _022C9F7C @ =ov00_022C9EE4
	mov r2, r1
	mov r1, #0x11
	bx ip
	.align 2, 0
_022C9F7C: .4byte ov00_022C9EE4
	arm_func_end ov00_022C9F6C

	arm_func_start ov00_022C9F80
ov00_022C9F80: @ 0x022C9F80
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, _022CA0B0 @ =0x023251BC
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r4
	mov r1, #0
	mov r2, #0x64
	mov r5, r3
	bl FUN_0207C40C
	ldrh r3, [r7, #2]
	ldr r0, _022CA0B4 @ =0x02325178
	ldr r2, _022CA0B8 @ =0x02325078
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	strh r1, [r0, #0x4e]
	ldrh r3, [r7]
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	strh r1, [r0, #0x5c]
	ldrh ip, [r8, #0xe]
	ldrh r3, [r8, #0xc]
	lsl r0, ip, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r3, lsl #16
	str r0, [r2, #0x160]
	ldrb r0, [r7, #0xd]
	tst r0, #0x10
	beq _022CA050
	ldrh r6, [r7, #0xa]
	ldrh r3, [r7, #8]
	mov r0, r4
	lsl r1, r6, #8
	lsl r2, r3, #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r6, asr #8
	lsl r1, r3, #0x10
	lsl r2, r2, #0x10
	lsr r3, r1, #0x10
	lsr r1, r2, #0x10
	orr r3, r1, r3, lsl #16
	mov r2, r5
	mov r1, #4
	str r3, [r4, #0x28]
	bl ov00_022C9EE4
	pop {r4, r5, r6, r7, r8, pc}
_022CA050:
	mov r0, #0
	str r0, [r4, #0x28]
	ldrh r3, [r7, #6]
	ldrh r2, [r7, #4]
	lsl r0, r3, #8
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r2, lsl #16
	add r1, r6, r0
	str r1, [r4, #0x24]
	ldrb r0, [r7, #0xd]
	mov r2, r5
	tst r0, #3
	addne r0, r1, #1
	strne r0, [r4, #0x24]
	mov r0, r4
	mov r1, #0x14
	bl ov00_022C9EE4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022CA0B0: .4byte 0x023251BC
_022CA0B4: .4byte 0x02325178
_022CA0B8: .4byte 0x02325078
	arm_func_end ov00_022C9F80

	arm_func_start ov00_022CA0BC
ov00_022CA0BC: @ 0x022CA0BC
	push {r4, r5, r6, lr}
	mov r4, r2
	mov r2, #3
	mov r6, r0
	mov r5, r1
	strb r2, [r4, #8]
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x10]
	ldrh r2, [r6, #0x12]
	ldrh r3, [r6, #0x10]
	mov r0, r5
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r3, r1, #0x10
	lsr r1, r2, #0x10
	orr r1, r1, r3, lsl #16
	str r1, [r4, #0x14]
	ldrh r3, [r5]
	mov r1, r4
	lsl r2, r3, #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x18]
	ldrh r3, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	lsl r2, r3, #8
	orr r3, r2, r3, asr #8
	lsl r2, r6, #8
	orr r2, r2, r6, asr #8
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	lsr r6, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, r6, lsl #16
	str r2, [r4, #0x1c]
	ldrh r6, [r5, #6]
	ldrh r5, [r5, #4]
	lsl r2, r6, #8
	lsl r3, r5, #8
	orr r5, r3, r5, asr #8
	orr r3, r2, r6, asr #8
	lsl r2, r5, #0x10
	lsl r3, r3, #0x10
	lsr r5, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, r5, lsl #16
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov00_022C9E44
	mov r0, r4
	mov r1, #0x12
	mov r2, #0
	bl ov00_022C9EE4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CA0BC

	arm_func_start ov00_022CA1A8
ov00_022CA1A8: @ 0x022CA1A8
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022C9DE0
	movs r2, r0
	beq _022CA228
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _022CA1E0
	mov r0, r6
	mov r1, r5
	bl ov00_022CA0BC
	b _022CA220
_022CA1E0:
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022CA20C
	ldr r1, [r2, #0x28]
	mov r0, r6
	sub r3, r1, #1
	mov r1, r5
	str r3, [r2, #0x28]
	bl ov00_022CA0BC
	b _022CA220
_022CA20C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl ov00_022C9F80
_022CA220:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022CA228:
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CA1A8

	arm_func_start ov00_022CA230
ov00_022CA230: @ 0x022CA230
	push {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrh r0, [r4, #0x12]
	ldrh r8, [r4, #0x10]
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	lsl ip, r8, #8
	orr ip, ip, r8, asr #8
	lsl r5, r6, #8
	lsl ip, ip, #0x10
	lsl lr, r7, #8
	orr r6, r5, r6, asr #8
	lsl r3, r0, #8
	orr r5, lr, r7, asr #8
	orr lr, r3, r0, asr #8
	lsl r0, r6, #0x10
	lsl r3, r5, #0x10
	lsr r5, r0, #0x10
	lsr r0, r3, #0x10
	lsl lr, lr, #0x10
	orr r0, r0, r5, lsl #16
	lsr ip, ip, #0x10
	lsr r3, lr, #0x10
	mov r6, r1
	orr r1, r3, ip, lsl #16
	mov r5, r2
	bl ov00_022C9B68
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov00_022CA1A8
	cmp r0, #0
	popne {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl ov00_022C9C58
	movs r2, r0
	beq _022CA2E0
	mov r0, r4
	mov r1, r6
	bl ov00_022CA0BC
	pop {r4, r5, r6, r7, r8, pc}
_022CA2E0:
	bl FUN_020799AC
	mov r0, r4
	mov r1, r6
	bl ov00_022C9C58
	movs r2, r0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl ov00_022CA0BC
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CA230

	arm_func_start ov00_022CA308
ov00_022CA308: @ 0x022CA308
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r6, r2
	bl ov00_022C9DE0
	movs r4, r0
	beq _022CA330
	ldrb r0, [r4, #8]
	cmp r0, #2
	beq _022CA348
_022CA330:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, #0
	bl ov00_022C9F80
	pop {r3, r4, r5, r6, r7, pc}
_022CA348:
	bl FUN_020799AC
	ldrh ip, [r5, #6]
	ldrh r3, [r5, #4]
	mov r0, r5
	lsl r1, ip, #8
	lsl r2, r3, #8
	orr r3, r2, r3, asr #8
	orr r2, r1, ip, asr #8
	lsl r1, r3, #0x10
	lsl r2, r2, #0x10
	lsr r3, r1, #0x10
	lsr r1, r2, #0x10
	orr r1, r1, r3, lsl #16
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldrh lr, [r5, #0xa]
	ldrh ip, [r5, #8]
	mov r1, r4
	lsl r2, lr, #8
	lsl r3, ip, #8
	orr ip, r3, ip, asr #8
	orr r3, r2, lr, asr #8
	lsl r2, ip, #0x10
	lsl r3, r3, #0x10
	lsr ip, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, ip, lsl #16
	str r2, [r4, #0x30]
	ldrh r3, [r5, #0xe]
	lsl r2, r3, #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x2c]
	bl ov00_022C9E44
	mov r0, r4
	mov r1, #0
	bl ov00_022C9F58
	mov r0, #4
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl FUN_02079940
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CA308

	arm_func_start ov00_022CA400
ov00_022CA400: @ 0x022CA400
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	bl ov00_022C9DE0
	movs r5, r0
	bne _022CA434
	mov r0, r4
	mov r1, sb
	mov r2, r8
	mov r3, #0
	bl ov00_022C9F80
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022CA434:
	ldrh r6, [sb, #0xa]
	ldrh r3, [sb, #8]
	ldr r2, [r5, #0x30]
	lsl r0, r6, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r6, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	orr r1, r0, r3, lsl #16
	sub r0, r1, r2
	ldrb r6, [sb, #0xd]
	cmp r0, #0
	strgt r1, [r5, #0x30]
	ldrh r7, [sb, #6]
	ldrh r3, [sb, #4]
	ldrb r2, [r5, #8]
	lsl r0, r7, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r7, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	cmp r2, #4
	orr r1, r0, r3, lsl #16
	bne _022CA4C8
	ldr r0, [r5, #0x24]
	cmp r0, r1
	beq _022CA4C8
	mov r0, r5
	mov r1, #0
	bl ov00_022C9F58
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022CA4C8:
	ldrh r1, [sb, #0xe]
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0x2c]
	ldrb r0, [r5, #8]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _022CA6F4
_022CA4E8: @ jump table
	b _022CA510 @ case 0
	b _022CA6F4 @ case 1
	b _022CA510 @ case 2
	b _022CA528 @ case 3
	b _022CA554 @ case 4
	b _022CA6F4 @ case 5
	b _022CA6D0 @ case 6
	b _022CA65C @ case 7
	b _022CA65C @ case 8
	b _022CA6D0 @ case 9
_022CA510:
	mov r0, r4
	mov r1, sb
	mov r2, r8
	mov r3, #0
	bl ov00_022C9F80
	b _022CA710
_022CA528:
	mov r0, #4
	strb r0, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _022CA54C
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5]
	bl FUN_02079940
_022CA54C:
	cmp r8, #0
	beq _022CA710
_022CA554:
	ldr r0, [r5, #0x34]
	add r0, r0, #1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	cmp r8, r0
	movhi r7, #0
	movhi r8, r0
	movls r7, #1
	cmp r8, #0
	beq _022CA5F0
	bl FUN_0207B7E4
	ldrb r1, [sb, #0xc]
	ldr ip, [r5, #0x40]
	ldr r3, [r5, #0x44]
	and r2, r1, #0xf0
	asr r1, r2, #1
	add r1, r2, r1, lsr #30
	mov r4, r0
	mov r2, r8
	add r0, sb, r1, asr #2
	add r1, ip, r3
	bl FUN_0207C4C8
	ldr r1, [r5, #0x44]
	mov r0, r4
	add r1, r1, r8
	str r1, [r5, #0x44]
	ldr r1, [r5, #0x24]
	add r1, r1, r8
	str r1, [r5, #0x24]
	bl FUN_0207B7F8
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _022CA5F0
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5]
	bl FUN_02079940
_022CA5F0:
	cmp r7, #0
	beq _022CA644
	tst r6, #1
	beq _022CA644
	mov r0, #6
	strb r0, [r5, #8]
	ldr r1, [r5, #0x24]
	mov r0, r5
	add r2, r1, #1
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov00_022C9F6C
	cmp r8, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #2
	bne _022CA710
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5]
	bl FUN_02079940
	b _022CA710
_022CA644:
	cmp r8, #0
	beq _022CA710
	mov r0, r5
	mov r1, #0
	bl ov00_022C9F58
	b _022CA710
_022CA65C:
	tst r6, #1
	beq _022CA6A4
	ldr r1, [r5, #0x24]
	add r0, r8, #1
	add r2, r1, r0
	mov r0, r5
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov00_022C9F58
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _022CA710
	str r1, [r5, #4]
	ldr r0, [r5]
	bl FUN_02079940
	b _022CA710
_022CA6A4:
	cmp r8, #0
	beq _022CA6C4
	ldr r1, [r5, #0x24]
	mov r0, r5
	add r2, r1, r8
	mov r1, #0
	str r2, [r5, #0x24]
	bl ov00_022C9F58
_022CA6C4:
	mov r0, #8
	strb r0, [r5, #8]
	b _022CA710
_022CA6D0:
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _022CA710
	str r1, [r5, #4]
	ldr r0, [r5]
	bl FUN_02079940
	b _022CA710
_022CA6F4:
	tst r6, #1
	ldrne r0, [r5, #0x24]
	mov r1, #0
	addne r0, r0, #1
	strne r0, [r5, #0x24]
	mov r0, r5
	bl ov00_022C9F58
_022CA710:
	bl FUN_020799AC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022CA400

	arm_func_start ov00_022CA718
ov00_022CA718: @ 0x022CA718
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl ov00_022C9DE0
	movs r4, r0
	popeq {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4, #8]
	cmp r1, #4
	beq _022CA7AC
	cmp r1, #7
	beq _022CA754
	cmp r1, #8
	beq _022CA774
	b _022CA7CC
_022CA754:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov00_022C9F58
	mov r0, #9
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022CA774:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov00_022C9F58
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #2
	popne {r3, r4, r5, r6, r7, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl FUN_02079940
	pop {r3, r4, r5, r6, r7, pc}
_022CA7AC:
	ldr r2, [r4, #0x24]
	mov r1, #0
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl ov00_022C9F6C
	mov r0, #6
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022CA7CC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, #0
	bl ov00_022C9F80
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CA718

	arm_func_start ov00_022CA7E4
ov00_022CA7E4: @ 0x022CA7E4
	push {r4, lr}
	bl ov00_022C9DE0
	movs r4, r0
	popeq {r4, pc}
	bl FUN_020799AC
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	cmp r0, #1
	pophi {r4, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl FUN_02079940
	pop {r4, pc}
	arm_func_end ov00_022CA7E4

	arm_func_start ov00_022CA820
ov00_022CA820: @ 0x022CA820
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #6
	bl ov00_022C8674
	cmp r0, #0
	popne {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	and r1, r0, #0xf0
	asr r0, r1, #1
	add r0, r1, r0, lsr #30
	and r1, r2, #0x17
	cmp r1, #0x10
	sub r4, r4, r0, asr #2
	bgt _022CA898
	cmp r1, #0x10
	bge _022CA8F0
	cmp r1, #2
	bgt _022CA918
	cmp r1, #1
	blt _022CA918
	beq _022CA904
	cmp r1, #2
	beq _022CA8B8
	b _022CA918
_022CA898:
	cmp r1, #0x12
	bgt _022CA918
	cmp r1, #0x11
	blt _022CA918
	beq _022CA8F0
	cmp r1, #0x12
	beq _022CA8D4
	b _022CA918
_022CA8B8:
	tst r2, #0x28
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022CA230
	pop {r4, r5, r6, pc}
_022CA8D4:
	tst r2, #0x28
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022CA308
	pop {r4, r5, r6, pc}
_022CA8F0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022CA400
	pop {r4, r5, r6, pc}
_022CA904:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022CA718
	pop {r4, r5, r6, pc}
_022CA918:
	tst r2, #4
	mov r0, r6
	mov r1, r5
	beq _022CA930
	bl ov00_022CA7E4
	pop {r4, r5, r6, pc}
_022CA930:
	mov r2, r4
	mov r3, #0
	bl ov00_022C9F80
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CA820

	arm_func_start ov00_022CA940
ov00_022CA940: @ 0x022CA940
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r1
	ldrh r1, [r7, #6]
	mov r8, r0
	mov r6, r2
	cmp r1, #0
	beq _022CA978
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, #0x11
	bl ov00_022C8674
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
_022CA978:
	bl FUN_0207B7E4
	ldr r1, _022CAB48 @ =0x022B966C
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _022CAB3C
	mvn ip, #0
_022CA994:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _022CAB30
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _022CAB30
	ldrh r3, [r7, #2]
	ldrh r2, [r4, #0xa]
	lsl r0, r3, #8
	orr r0, r0, r3, asr #8
	lsl r0, r0, #0x10
	cmp r2, r0, lsr #16
	bne _022CAB30
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	beq _022CA9F4
	ldrh r2, [r7]
	lsl r0, r2, #8
	orr r0, r0, r2, asr #8
	lsl r0, r0, #0x10
	cmp r3, r0, lsr #16
	bne _022CAB30
_022CA9F4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	cmpne r0, ip
	beq _022CAA38
	ldrh sb, [r8, #0xe]
	ldrh lr, [r8, #0xc]
	lsl r2, sb, #8
	lsl r3, lr, #8
	orr lr, r3, lr, asr #8
	orr r3, r2, sb, asr #8
	lsl r2, lr, #0x10
	lsl r3, r3, #0x10
	lsr lr, r2, #0x10
	lsr r2, r3, #0x10
	orr r2, r2, lr, lsl #16
	cmp r0, r2
	bne _022CAB30
_022CAA38:
	ldrh r3, [r8, #0x12]
	ldrh r2, [r8, #0x10]
	lsl r0, r3, #8
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _022CAAB4
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	lsl r0, r3, #8
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x1c]
	ldrh r1, [r7]
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x18]
_022CAAB4:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _022CAB3C
	ldr r1, [r4, #0x3c]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x44]
	strls r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	add r0, r7, #8
	bl FUN_0207C4C8
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _022CAB04
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl FUN_02079940
	b _022CAB3C
_022CAB04:
	ldr r3, [r4, #0x38]
	cmp r3, #0
	beq _022CAB3C
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	mov r2, r4
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x44]
	b _022CAB3C
_022CAB30:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _022CA994
_022CAB3C:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022CAB48: .4byte 0x022B966C
	arm_func_end ov00_022CA940

	arm_func_start ov00_022CAB4C
ov00_022CAB4C: @ 0x022CAB4C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov sl, r0
	str r6, [r1]
	ldrh r3, [sl, #6]
	str r1, [sp]
	ldr r2, _022CAE08 @ =0x00003FFF
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	tst r1, r2
	addeq sp, sp, #0xc
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r3, [sl, #0xe]
	ldrh r2, [sl, #0xc]
	ldrb r4, [sl]
	lsl r0, r3, #8
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	lsl r3, r4, #0x1c
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r1, r1, #0x10
	ldrh r4, [sl, #4]
	ldr r7, _022CAE0C @ =0x023253A0
	mov r0, r6
	lsr r5, r3, #0x1a
	orr sb, r1, r2, lsl #16
_022CABD0:
	ldrh r2, [r7, #4]
	cmp r2, #0
	beq _022CABF0
	ldr r1, [r7]
	cmp r1, sb
	ldrheq r1, [r7, #6]
	cmpeq r1, r4
	beq _022CAC0C
_022CABF0:
	add r0, r0, #1
	cmp r2, #0
	cmpeq r6, #0
	moveq r6, r7
	cmp r0, #8
	add r7, r7, #0x38
	blo _022CABD0
_022CAC0C:
	ldrh r2, [sl, #2]
	cmp r0, #8
	ldr r1, _022CAE10 @ =0x00001FFF
	lsl r0, r2, #8
	orr r0, r0, r2, asr #8
	lsl r0, r0, #0x10
	rsb r0, r5, r0, lsr #16
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	and fp, r0, r1
	ldr r0, [sp, #4]
	add r8, r0, fp, lsl #3
	bne _022CACC8
	cmp r6, #0
	beq _022CAC50
	cmp r8, #0x1000
	bls _022CAC5C
_022CAC50:
	add sp, sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022CAC5C:
	ldr r1, _022CAE14 @ =0x02325078
	add r0, r5, #0xe
	ldr r1, [r1, #0x14]
	add r0, r0, #0x1000
	mov r7, r6
	blx r1
	cmp r0, #0
	str r0, [r6, #0x34]
	addeq sp, sp, #0xc
	mov r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [r6]
	strh r4, [r6, #6]
	strh r0, [r6, #8]
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r6, #0x2c]
	ldr r1, [r6, #0x34]
	mov r0, sl
	add r1, r1, #0xe
	add r1, r1, r5
	str r1, [r6, #0x30]
	ldr r1, [r6, #0x34]
	mov r2, r5
	add r1, r1, #0xe
	bl FUN_0207C4C8
_022CACC8:
	ldrh r0, [r7, #4]
	cmp r0, #8
	beq _022CACDC
	cmp r8, #0x1000
	bls _022CAD00
_022CACDC:
	ldr r1, _022CAE14 @ =0x02325078
	mov r0, #0
	strh r0, [r7, #4]
	ldr r0, [r7, #0x34]
	ldr r1, [r1, #0x40]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022CAD00:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r0, #7
	ldr r0, [sp, #8]
	add r3, fp, r1, lsr #3
	tst r0, #0x2000
	strheq r8, [r7, #0xa]
	strheq r3, [r7, #8]
	ldrh r1, [r7, #4]
	add r0, sl, r5
	add r1, r7, r1, lsl #1
	strh fp, [r1, #0xc]
	ldrh r1, [r7, #4]
	add r1, r7, r1, lsl #1
	strh r3, [r1, #0x1c]
	ldrh r1, [r7, #4]
	add r1, r1, #1
	strh r1, [r7, #4]
	ldr r1, [r7, #0x30]
	add r1, r1, fp, lsl #3
	bl FUN_0207C4C8
	ldrh r4, [r7, #8]
	cmp r4, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r3, [r7, #4]
	mov r6, #0
	mov r5, r6
	cmp r3, #0
	bls _022CADB0
	mov r0, r6
_022CAD80:
	add r2, r7, r5, lsl #1
	ldrh r1, [r2, #0xc]
	cmp r1, r6
	bhi _022CADA4
	ldrh r1, [r2, #0x1c]
	cmp r6, r1
	movlo r6, r1
	movlo r5, r0
	blo _022CADA8
_022CADA4:
	add r5, r5, #1
_022CADA8:
	cmp r5, r3
	blo _022CAD80
_022CADB0:
	cmp r6, r4
	addlo sp, sp, #0xc
	movlo r0, #0
	poplo {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [r7, #0x34]
	ldrh r3, [r7, #0xa]
	ldrb r0, [r4, #0xe]
	mov r2, #0
	mov r1, #1
	lsl r0, r0, #0x1c
	add r0, r3, r0, lsr #26
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsl r0, r3, #8
	orr r0, r0, r3, asr #8
	strh r0, [r4, #0x10]
	ldr r0, [sp]
	strh r2, [r7, #4]
	str r1, [r0]
	add r0, r4, #0xe
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CAE08: .4byte 0x00003FFF
_022CAE0C: .4byte 0x023253A0
_022CAE10: .4byte 0x00001FFF
_022CAE14: .4byte 0x02325078
	arm_func_end ov00_022CAB4C

	arm_func_start ov00_022CAE18
ov00_022CAE18: @ 0x022CAE18
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	ldrh lr, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	lsl r2, r6, #8
	lsl r3, lr, #8
	lsl ip, r5, #8
	lsl r0, r7, #8
	orr r5, ip, r5, asr #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r6, asr #8
	orr ip, r0, r7, asr #8
	lsl r0, r5, #0x10
	lsl r2, lr, #0x10
	lsl r3, r3, #0x10
	lsl ip, ip, #0x10
	lsr lr, r0, #0x10
	lsr r0, r2, #0x10
	lsr r3, r3, #0x10
	lsr r2, ip, #0x10
	orr r0, r0, lr, lsl #16
	orr r2, r2, r3, lsl #16
	mov r5, r1
	cmp r0, r2
	beq _022CAF3C
	bl ov00_022C8778
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r4, #2]
	lsl r0, r1, #8
	orr r0, r0, r1, asr #8
	lsl r0, r0, #0x10
	cmp r5, r0, lsr #16
	poplo {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4]
	mov r0, r4
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1a
	bl ov00_022C8658
	ldr r1, _022CAFD4 @ =0x0000FFFF
	cmp r0, r1
	popne {r3, r4, r5, r6, r7, pc}
	ldrh ip, [r4, #0x12]
	ldrh r3, [r4, #0x10]
	ldr r2, _022CAFD8 @ =0x02325078
	lsl r0, ip, #8
	lsl r1, r3, #8
	orr r3, r1, r3, asr #8
	orr r1, r0, ip, asr #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r3, r0, #0x10
	lsr r0, r1, #0x10
	ldr r1, [r2, #0x50]
	orr r0, r0, r3, lsl #16
	cmp r1, r0
	bne _022CAF3C
	ldrh ip, [r4, #0xe]
	ldrh r3, [r4, #0xc]
	sub r0, r4, #8
	lsl r1, ip, #8
	lsl r2, r3, #8
	orr r3, r2, r3, asr #8
	orr r2, r1, ip, asr #8
	lsl r1, r3, #0x10
	lsl r2, r2, #0x10
	lsr r3, r1, #0x10
	lsr r1, r2, #0x10
	orr r1, r1, r3, lsl #16
	mov r2, #1
	bl ov00_022C8E0C
_022CAF3C:
	add r1, sp, #0
	mov r0, r4
	bl ov00_022CAB4C
	movs r4, r0
	popeq {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r4, #2]
	ldrb r3, [r4]
	ldrb ip, [r4, #9]
	lsl r1, r2, #8
	orr r1, r1, r2, asr #8
	lsl r1, r1, #0x10
	lsl r3, r3, #0x1c
	lsr r2, r1, #0x10
	cmp ip, #0x11
	add r1, r4, r3, lsr #26
	sub r2, r2, r3, lsr #26
	bne _022CAF88
	bl ov00_022CA940
	b _022CAFB4
_022CAF88:
	ldr r3, _022CAFD8 @ =0x02325078
	ldr r3, [r3, #0x50]
	cmp r3, #0
	beq _022CAFB4
	cmp ip, #1
	bne _022CAFA8
	bl ov00_022C9B88
	b _022CAFB4
_022CAFA8:
	cmp ip, #6
	bne _022CAFB4
	bl ov00_022CA820
_022CAFB4:
	ldr r0, [sp]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r1, _022CAFD8 @ =0x02325078
	sub r0, r4, #0xe
	ldr r1, [r1, #0x40]
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CAFD4: .4byte 0x0000FFFF
_022CAFD8: .4byte 0x02325078
	arm_func_end ov00_022CAE18

	arm_func_start ov00_022CAFDC
ov00_022CAFDC: @ 0x022CAFDC
	push {r3, r4, r5, lr}
	ldr r5, _022CB048 @ =0x00000806
	add r4, sp, #0
_022CAFE8:
	mov r0, r4
	bl ov00_022C8ACC
	ldr r3, [sp]
	cmp r3, #0x22
	bls _022CB040
	ldrh r2, [r0, #0xc]
	lsl r1, r2, #8
	orr r1, r1, r2, asr #8
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x800
	beq _022CB024
	cmp r1, r5
	beq _022CB034
	b _022CB040
_022CB024:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl ov00_022CAE18
	b _022CB040
_022CB034:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl ov00_022C9840
_022CB040:
	bl ov00_022C8B8C
	b _022CAFE8
	.align 2, 0
_022CB048: .4byte 0x00000806
	arm_func_end ov00_022CAFDC

	arm_func_start ov00_022CB04C
ov00_022CB04C: @ 0x022CB04C
	push {r4, r5, r6, r7, r8, lr}
	ldr r0, _022CB0E8 @ =0x022B966C
	ldr r2, _022CB0EC @ =0x02325078
	ldr r0, [r0, #8]
	ldr r1, _022CB0F0 @ =0x00001388
	mov r4, #0x400
	mov r3, #1
	mov r5, #0
_022CB06C:
	ldrh ip, [r2, #8]
	mov r6, r5
	add ip, ip, #1
	strh ip, [r2, #8]
	ldrh ip, [r2, #8]
	cmp ip, #0x400
	blo _022CB090
	cmp ip, r1
	blo _022CB094
_022CB090:
	strh r4, [r2, #8]
_022CB094:
	mov r7, r0
	cmp r0, #0
	beq _022CB0D4
	ldrh r8, [r2, #8]
_022CB0A4:
	ldr lr, [r7, #0xa4]
	cmp lr, #0
	ldrne ip, [lr]
	cmpne ip, #0
	beq _022CB0C8
	ldrh ip, [lr, #0xa]
	cmp ip, r8
	moveq r6, r3
	beq _022CB0D4
_022CB0C8:
	ldr r7, [r7, #0x68]
	cmp r7, #0
	bne _022CB0A4
_022CB0D4:
	cmp r6, #0
	bne _022CB06C
	ldr r0, _022CB0EC @ =0x02325078
	ldrh r0, [r0, #8]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022CB0E8: .4byte 0x022B966C
_022CB0EC: .4byte 0x02325078
_022CB0F0: .4byte 0x00001388
	arm_func_end ov00_022CB04C

	arm_func_start ov00_022CB0F4
ov00_022CB0F4: @ 0x022CB0F4
	push {r3, lr}
	ldr r1, _022CB134 @ =0x02325078
	ldr r3, [r1, #0x70]
	ldr r2, [r1, #0x68]
	ldr r0, [r1, #0x6c]
	umull lr, ip, r3, r2
	mla ip, r3, r0, ip
	ldr r0, [r1, #0x74]
	ldr r3, [r1, #0x78]
	mla ip, r0, r2, ip
	ldr r0, [r1, #0x7c]
	adds r2, r3, lr
	str r2, [r1, #0x68]
	adc r0, r0, ip
	str r0, [r1, #0x6c]
	pop {r3, pc}
	.align 2, 0
_022CB134: .4byte 0x02325078
	arm_func_end ov00_022CB0F4

	arm_func_start ov00_022CB138
ov00_022CB138: @ 0x022CB138
	ldr r1, _022CB148 @ =0x022B966C
	ldr r1, [r1, #4]
	str r0, [r1, #0xa4]
	bx lr
	.align 2, 0
_022CB148: .4byte 0x022B966C
	arm_func_end ov00_022CB138

	arm_func_start ov00_022CB14C
ov00_022CB14C: @ 0x022CB14C
	ldr r0, _022CB160 @ =0x022B966C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0xa4]
	bx lr
	.align 2, 0
_022CB160: .4byte 0x022B966C
	arm_func_end ov00_022CB14C

	arm_func_start ov00_022CB164
ov00_022CB164: @ 0x022CB164
	ldr r0, _022CB18C @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	bxeq lr
	mov r0, #0xa
	strb r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #0x44]
	bx lr
	.align 2, 0
_022CB18C: .4byte 0x022B966C
	arm_func_end ov00_022CB164

	arm_func_start ov00_022CB190
ov00_022CB190: @ 0x022CB190
	push {r4, lr}
	ldr r3, _022CB1E4 @ =0x022B966C
	ldr r3, [r3, #4]
	ldr r4, [r3, #0xa4]
	cmp r4, #0
	popeq {r4, pc}
	ldr r3, _022CB1E8 @ =0x7F000001
	cmp r2, r3
	ldreq r2, _022CB1EC @ =0x02325078
	ldreq r2, [r2, #0x50]
	cmp r0, #0
	strh r1, [r4, #0x1a]
	ldrh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	str r2, [r4, #0x20]
	str r2, [r4, #0x1c]
	strhne r0, [r4, #0xa]
	popne {r4, pc}
	bl ov00_022CB04C
	strh r0, [r4, #0xa]
	pop {r4, pc}
	.align 2, 0
_022CB1E4: .4byte 0x022B966C
_022CB1E8: .4byte 0x7F000001
_022CB1EC: .4byte 0x02325078
	arm_func_end ov00_022CB190

	arm_func_start ov00_022CB1F0
ov00_022CB1F0: @ 0x022CB1F0
	ldr r0, _022CB220 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	bxeq lr
	str r0, [r1]
	mov r0, #0
	strb r0, [r1, #8]
	str r0, [r1, #0x44]
	str r0, [r1, #0x60]
	str r0, [r1, #0x38]
	bx lr
	.align 2, 0
_022CB220: .4byte 0x022B966C
	arm_func_end ov00_022CB1F0

	arm_func_start ov00_022CB224
ov00_022CB224: @ 0x022CB224
	ldr r0, _022CB240 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	bx lr
	.align 2, 0
_022CB240: .4byte 0x022B966C
	arm_func_end ov00_022CB224

	arm_func_start ov00_022CB244
ov00_022CB244: @ 0x022CB244
	ldr r1, _022CB258 @ =0x022B966C
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	str r1, [r0, #0xa4]
	bx lr
	.align 2, 0
_022CB258: .4byte 0x022B966C
	arm_func_end ov00_022CB244

	arm_func_start ov00_022CB25C
ov00_022CB25C: @ 0x022CB25C
	ldr r1, _022CB274 @ =0x022B966C
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	strne r0, [r1, #0x38]
	bx lr
	.align 2, 0
_022CB274: .4byte 0x022B966C
	arm_func_end ov00_022CB25C

	arm_func_start ov00_022CB278
ov00_022CB278: @ 0x022CB278
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl ov00_022CB0F4
	mov r6, #2
	ldr r4, _022CB328 @ =0x02325078
	mov r8, r0
	mov r7, #0
	mov r5, #1
	mov fp, r6
_022CB29C:
	str r8, [sl, #0x28]
	strb r6, [sl, #8]
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sl, #0x10]
	mov r0, sl
	mov r1, fp
	mov r2, #0x18
	bl ov00_022C9EE4
	bl FUN_0207B7E4
	mov sb, r0
	ldrb r0, [sl, #8]
	cmp r0, #2
	bne _022CB2F0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _022CB2F0
	mov r0, #0
	str r5, [sl, #4]
	bl FUN_02079888
_022CB2F0:
	mov r0, sb
	bl FUN_0207B7F8
	ldrb r0, [sl, #8]
	cmp r0, #4
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _022CB320
	add r7, r7, #1
	cmp r7, #3
	blo _022CB29C
_022CB320:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CB328: .4byte 0x02325078
	arm_func_end ov00_022CB278

	arm_func_start ov00_022CB32C
ov00_022CB32C: @ 0x022CB32C
	push {r3, lr}
	ldr r0, _022CB368 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _022CB360
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _022CB358
	bl ov00_022D261C
	pop {r3, pc}
_022CB358:
	bl ov00_022CB278
	pop {r3, pc}
_022CB360:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022CB368: .4byte 0x022B966C
	arm_func_end ov00_022CB32C

	arm_func_start ov00_022CB36C
ov00_022CB36C: @ 0x022CB36C
	push {r4, lr}
	mov r4, r0
	bl FUN_020799AC
	ldrb r1, [r4, #8]
	add r0, r1, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022CB3A4
	mov r0, r4
	mov r1, #0x19
	bl ov00_022C9F6C
	mov r0, #7
	strb r0, [r4, #8]
	pop {r4, pc}
_022CB3A4:
	cmp r1, #0
	popeq {r4, pc}
	mov r0, r4
	mov r1, #0x1a
	bl ov00_022C9F58
	pop {r4, pc}
	arm_func_end ov00_022CB36C

	arm_func_start ov00_022CB3BC
ov00_022CB3BC: @ 0x022CB3BC
	push {r4, lr}
	ldr r0, _022CB3F4 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	popeq {r4, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _022CB3E8
	mov r0, r4
	bl ov00_022D2A8C
_022CB3E8:
	mov r0, r4
	bl ov00_022CB36C
	pop {r4, pc}
	.align 2, 0
_022CB3F4: .4byte 0x022B966C
	arm_func_end ov00_022CB3BC

	arm_func_start ov00_022CB3F8
ov00_022CB3F8: @ 0x022CB3F8
	push {r4, r5, r6, lr}
	ldr r0, _022CB478 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	popeq {r4, r5, r6, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _022CB424
	mov r0, r4
	bl ov00_022D2B0C
_022CB424:
	bl FUN_0207AE44
	lsr r6, r0, #0x10
	orr r6, r6, r1, lsl #16
	ldr r5, _022CB47C @ =0x02325078
	b _022CB43C
_022CB438:
	bl ov00_022C8238
_022CB43C:
	ldr r0, [r5, #0x48]
	blx r0
	cmp r0, #0
	ldrbne r0, [r4, #8]
	cmpne r0, #0
	beq _022CB46C
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x27
	blt _022CB438
_022CB46C:
	mov r0, #0
	strb r0, [r4, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CB478: .4byte 0x022B966C
_022CB47C: .4byte 0x02325078
	arm_func_end ov00_022CB3F8

	arm_func_start ov00_022CB480
ov00_022CB480: @ 0x022CB480
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	bl FUN_0207B7E4
	ldr r6, [r8, #0x44]
	mov r7, r0
	cmp r6, #0
	bne _022CB4C0
	mov r5, #3
	mov r4, #0
_022CB4A8:
	mov r0, r4
	str r5, [r8, #4]
	bl FUN_02079888
	ldr r6, [r8, #0x44]
	cmp r6, #0
	beq _022CB4A8
_022CB4C0:
	mov r0, r7
	bl FUN_0207B7F8
	str r6, [sb]
	ldr r0, [r8, #0x40]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022CB480

	arm_func_start ov00_022CB4D4
ov00_022CB4D4: @ 0x022CB4D4
	push {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldr r1, [r4, #0x44]
	mov r5, r0
	cmp r1, #0
	ldrbeq r0, [r4, #8]
	cmpeq r0, #4
	bne _022CB534
	bl FUN_0207B7E4
	mov r8, r0
	mov r7, #2
	mov r6, #0
	b _022CB514
_022CB508:
	mov r0, r6
	str r7, [r4, #4]
	bl FUN_02079888
_022CB514:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldrbeq r0, [r4, #8]
	cmpeq r0, #4
	beq _022CB508
	mov r0, r8
	bl FUN_0207B7F8
	b _022CB538
_022CB534:
	bl FUN_020799AC
_022CB538:
	ldr r0, [r4, #0x44]
	str r0, [r5]
	cmp r0, #0
	ldrne r0, [r4, #0x40]
	moveq r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CB4D4

	arm_func_start ov00_022CB550
ov00_022CB550: @ 0x022CB550
	push {r3, lr}
	ldr r1, _022CB5B0 @ =0x022B966C
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	beq _022CB5A0
	ldrb r2, [r1, #8]
	add r2, r2, #0xf6
	and r2, r2, #0xff
	cmp r2, #1
	bhi _022CB584
	bl ov00_022CB480
	pop {r3, pc}
_022CB584:
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _022CB598
	bl ov00_022D2670
	pop {r3, pc}
_022CB598:
	bl ov00_022CB4D4
	pop {r3, pc}
_022CB5A0:
	mov r1, #0
	str r1, [r0]
	mov r0, r1
	pop {r3, pc}
	.align 2, 0
_022CB5B0: .4byte 0x022B966C
	arm_func_end ov00_022CB550

	arm_func_start ov00_022CB5B4
ov00_022CB5B4: @ 0x022CB5B4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl FUN_0207B7E4
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	mov r5, r0
	cmp r2, r1
	mov r6, #0
	bne _022CB5E4
	cmp r7, #0
	movne r6, #1
_022CB5E4:
	cmp r7, r2
	movhs r0, #0
	strhs r0, [r4, #0x44]
	bhs _022CB608
	ldr r0, [r4, #0x40]
	sub r2, r2, r7
	add r1, r0, r7
	str r2, [r4, #0x44]
	bl FUN_020872BC
_022CB608:
	mov r0, r5
	bl FUN_0207B7F8
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _022CB634
	cmp r6, #0
	popeq {r3, r4, r5, r6, r7, pc}
_022CB634:
	mov r0, r4
	mov r1, #0x1b
	bl ov00_022C9F58
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CB5B4

	arm_func_start ov00_022CB644
ov00_022CB644: @ 0x022CB644
	push {r3, lr}
	ldr r1, _022CB678 @ =0x022B966C
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	popeq {r3, pc}
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _022CB670
	bl ov00_022D2748
	pop {r3, pc}
_022CB670:
	bl ov00_022CB5B4
	pop {r3, pc}
	.align 2, 0
_022CB678: .4byte 0x022B966C
	arm_func_end ov00_022CB644

	arm_func_start ov00_022CB67C
ov00_022CB67C: @ 0x022CB67C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	ldr r6, [r8, #0x34]
	movs fp, r3
	mov sl, r0
	movne r5, #1
	lsl r0, r6, #1
	mov sb, r1
	ldrheq r5, [r8, #0x2c]
	add r7, r0, #4
	b _022CB720
_022CB6A8:
	ldr r0, _022CB73C @ =0x02325078
	ldrh r4, [r8, #0x2e]
	ldrh r0, [r0, #2]
	ldr r1, [r8, #0x34]
	cmp r4, r5
	movhs r4, r5
	cmp r0, r4
	movlo r4, r0
	cmp fp, #0
	biceq r4, r4, #1
	cmp sb, r4
	sub r0, r1, r6
	movlo r4, sb
	adds r0, r7, r0
	moveq r4, #0
	mov r6, r1
	sub r7, r0, #1
	cmp r4, #0
	beq _022CB734
	mov r2, #0
	str r2, [sp]
	mov r0, sl
	mov r1, r4
	mov r2, r8
	mov r3, #0x18
	sub r5, r5, r4
	bl ov00_022C9524
	bl FUN_020799AC
	add sl, sl, r4
	sub sb, sb, r4
_022CB720:
	cmp sb, #0
	beq _022CB734
	ldrb r0, [r8, #8]
	cmp r0, #4
	beq _022CB6A8
_022CB734:
	mov r0, r4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CB73C: .4byte 0x02325078
	arm_func_end ov00_022CB67C

	arm_func_start ov00_022CB740
ov00_022CB740: @ 0x022CB740
	push {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ov00_022CB67C
	cmp r0, #0
	cmpne r4, #0
	popeq {r3, r4, r5, pc}
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl ov00_022CB67C
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CB740

	arm_func_start ov00_022CB77C
ov00_022CB77C: @ 0x022CB77C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r4, #0
	mov fp, r0
	ldr r8, [sp, #0x38]
	mov r0, r4
	str r4, [sp, #0x10]
	mov sl, r1
	mov sb, r2
	str r3, [sp, #8]
	mov r6, r4
	str r0, [r8, #0x34]
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
	b _022CB934
_022CB7C0:
	ldr r7, [r8, #0x28]
	ldr r3, [sp, #8]
	str r8, [sp]
	mov r0, fp
	mov r1, sl
	mov r2, sb
	str r6, [sp, #4]
	bl ov00_022CB740
	bl FUN_0207AE44
	lsr r5, r0, #0x10
	ldr r4, _022CB980 @ =0x02325078
	orr r5, r5, r1, lsl #16
_022CB7F0:
	bl ov00_022C8238
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	beq _022CB848
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _022CB848
	ldr r1, [r8, #0x28]
	ldr r0, [r8, #0x30]
	cmp r1, r0
	beq _022CB848
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	bge _022CB848
	cmp r6, #0
	ldrhne r0, [r8, #0x2c]
	cmpne r0, #0
	beq _022CB7F0
_022CB848:
	ldr r1, [r8, #0x30]
	ldr r0, [r8, #0x28]
	sub r5, r1, r7
	sub r0, r0, r7
	cmp r5, r0
	movhi r5, #0
	ldr r0, [sp, #0x10]
	cmp r5, #0
	add r0, r0, r5
	str r0, [sp, #0x10]
	beq _022CB884
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
_022CB884:
	ldr r0, [r8, #0x30]
	str r0, [r8, #0x28]
	ldrb r0, [r8, #8]
	cmp r0, #4
	ldrheq r0, [r8, #0x2c]
	cmpeq r0, #0
	cmpeq r5, #0
	bne _022CB908
	cmp r6, #0
	bne _022CB90C
	bl FUN_0207AE44
	lsr r7, r0, #0x10
	orr r7, r7, r1, lsl #16
	ldr r4, _022CB980 @ =0x02325078
	b _022CB8D0
_022CB8C0:
	bl ov00_022C8238
	ldrh r0, [r8, #0x2c]
	cmp r0, #0
	bne _022CB8F8
_022CB8D0:
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	beq _022CB8F8
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r7
	cmp r0, #0xf
	blt _022CB8C0
_022CB8F8:
	ldrh r0, [r8, #0x2c]
	cmp r0, #0
	moveq r6, #1
	b _022CB90C
_022CB908:
	mov r6, #0
_022CB90C:
	cmp r5, sl
	addlo fp, fp, r5
	sublo sl, sl, r5
	blo _022CB934
	sub r1, r5, sl
	ldr r0, [sp, #8]
	add fp, sb, r1
	mov sb, #0
	sub sl, r0, r1
	str sb, [sp, #8]
_022CB934:
	ldr r0, _022CB980 @ =0x02325078
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	cmpne sl, #0
	beq _022CB974
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _022CB974
	bl FUN_0207AE44
	lsr r2, r0, #0x10
	ldr r0, [sp, #0xc]
	orr r2, r2, r1, lsl #16
	sub r0, r2, r0
	cmp r0, #0x9f
	blt _022CB7C0
_022CB974:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CB980: .4byte 0x02325078
	arm_func_end ov00_022CB77C

	arm_func_start ov00_022CB984
ov00_022CB984: @ 0x022CB984
	push {r3, r4, r5, r6, r7, lr}
	ldr ip, _022CBA50 @ =0x022B966C
	mov r7, r1
	ldr ip, [ip, #4]
	mov r6, r2
	ldr r4, [ip, #0xa4]
	mov r5, r3
	cmp r4, #0
	beq _022CBA48
	ldrb ip, [r4, #8]
	cmp ip, #0xa
	bne _022CB9E4
	cmp r7, #0
	beq _022CB9C4
	mov r2, r4
	bl ov00_022C93E8
_022CB9C4:
	cmp r5, #0
	beq _022CB9DC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022C93E8
_022CB9DC:
	add r0, r7, r5
	b _022CBA38
_022CB9E4:
	cmp ip, #0xb
	bne _022CBA1C
	cmp r7, #0
	beq _022CB9FC
	mov r2, r4
	bl ov00_022C9338
_022CB9FC:
	cmp r5, #0
	beq _022CBA14
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022C9338
_022CBA14:
	add r0, r7, r5
	b _022CBA38
_022CBA1C:
	ldrb ip, [r4, #9]
	cmp ip, #0
	str r4, [sp]
	beq _022CBA34
	bl ov00_022D2958
	b _022CBA38
_022CBA34:
	bl ov00_022CB77C
_022CBA38:
	ldr r1, _022CBA54 @ =0x02325078
	ldrb r1, [r1]
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, pc}
_022CBA48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CBA50: .4byte 0x022B966C
_022CBA54: .4byte 0x02325078
	arm_func_end ov00_022CB984

	arm_func_start ov00_022CBA58
ov00_022CBA58: @ 0x022CBA58
	push {r3, r4, r5, lr}
	ldr r3, _022CBAEC @ =0x022B966C
	mov r2, r0
	ldr r4, [r3, #4]
	mov r3, r1
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	beq _022CBAE4
	ldr r4, [r5, #0x60]
	cmp r4, #0
	beq _022CBAD4
	ldr r0, [r5, #0x5c]
	mov r1, r4
	bl ov00_022CB984
	ldr r1, [r5, #0x60]
	mov r4, r0
	cmp r4, r1
	bhs _022CBAC4
	ldr r0, [r5, #0x5c]
	sub r2, r1, r4
	add r1, r0, r4
	bl FUN_020872BC
	ldr r1, [r5, #0x60]
	mov r0, #0
	sub r1, r1, r4
	str r1, [r5, #0x60]
	pop {r3, r4, r5, pc}
_022CBAC4:
	mov r0, #0
	str r0, [r5, #0x60]
	sub r0, r4, r1
	pop {r3, r4, r5, pc}
_022CBAD4:
	mov r2, #0
	mov r3, r2
	bl ov00_022CB984
	pop {r3, r4, r5, pc}
_022CBAE4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CBAEC: .4byte 0x022B966C
	arm_func_end ov00_022CBA58

	arm_func_start ov00_022CBAF0
ov00_022CBAF0: @ 0x022CBAF0
	push {r3, lr}
	ldr r0, _022CBB5C @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _022CBB54
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _022CBB1C
	bl ov00_022D28DC
	pop {r3, pc}
_022CBB1C:
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _022CBB44
	ldrb r0, [r0, #8]
	cmp r0, #4
	beq _022CBB44
	add r0, r0, #0xf6
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022CBB4C
_022CBB44:
	mov r0, r1
	pop {r3, pc}
_022CBB4C:
	mvn r0, #0
	pop {r3, pc}
_022CBB54:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022CBB5C: .4byte 0x022B966C
	arm_func_end ov00_022CBAF0

	arm_func_start ov00_022CBB60
ov00_022CBB60: @ 0x022CBB60
	push {r4, lr}
	ldr r0, _022CBB9C @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldrne r1, [r4, #0x60]
	cmpne r1, #0
	popeq {r4, pc}
	mov r2, #0
	ldr r0, [r4, #0x5c]
	mov r3, r2
	bl ov00_022CB984
	mov r0, #0
	str r0, [r4, #0x60]
	pop {r4, pc}
	.align 2, 0
_022CBB9C: .4byte 0x022B966C
	arm_func_end ov00_022CBB60

	arm_func_start ov00_022CBBA0
ov00_022CBBA0: @ 0x022CBBA0
	push {r4, r5, r6, lr}
	ldr r0, _022CBC3C @ =0x02325078
	ldr r0, [r0, #0x18]
	blx r0
	ldr r0, _022CBC3C @ =0x02325078
	ldr r0, [r0, #0x50]
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	bl ov00_022C8CA0
	mov r0, #0x64
	bl FUN_02079B14
	ldr r0, _022CBC3C @ =0x02325078
	ldr r0, [r0, #0x50]
	bl ov00_022C8CA0
	bl FUN_0207AE44
	lsr r6, r0, #0x10
	orr r6, r6, r1, lsl #16
	mov r5, #0x64
	ldr r4, _022CBC3C @ =0x02325078
	b _022CBC10
_022CBBF0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022CBC08
	mov r0, #4
	bl ov00_022C8134
	pop {r4, r5, r6, pc}
_022CBC08:
	mov r0, r5
	bl FUN_02079B14
_022CBC10:
	ldr r0, [r4, #0x48]
	blx r0
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x17
	blt _022CBBF0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CBC3C: .4byte 0x02325078
	arm_func_end ov00_022CBBA0

	arm_func_start ov00_022CBC40
ov00_022CBC40: @ 0x022CBC40
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r3, _022CBF90 @ =0x02325078
	mov r1, #0
	ldr r0, _022CBF94 @ =0x02325158
	mov r2, #0x64
	str r1, [r3, #0x44]
	bl FUN_0207C40C
	ldr r1, _022CBF90 @ =0x02325078
	mov r3, #0x180
	ldr r0, _022CBF98 @ =0x02325724
	str r3, [r1, #0x11c]
	str r0, [r1, #0x120]
	ldr r2, _022CBF9C @ =0x023255A4
	str r3, [r1, #0x128]
	ldr r0, _022CBF94 @ =0x02325158
	str r2, [r1, #0x12c]
	bl ov00_022CB138
	mov sl, #1
	ldr r0, _022CBF90 @ =0x02325078
	mov fp, sl
	str sl, [sp]
	str sl, [r0, #0xc]
	mov r4, #0
_022CBC9C:
	mov r0, #0x3e8
	bl FUN_02079B14
	ldr r0, _022CBF90 @ =0x02325078
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _022CBF70
	bl FUN_0207AE44
	ldr r2, _022CBF90 @ =0x02325078
	lsr r5, r0, #0x10
	ldr r0, [r2, #0x48]
	orr r5, r5, r1, lsl #16
	blx r0
	cmp r0, #0
	beq _022CBDC8
	ldr r0, [sp]
	subs r0, r0, #1
	str r0, [sp]
	bne _022CBDDC
	ldr r0, _022CBF90 @ =0x02325078
	ldr r1, [r0, #0x10]
	tst r1, #1
	beq _022CBD08
	cmp r4, #0
	bne _022CBDDC
	bl ov00_022CBBA0
	mov r4, #1
	b _022CBDDC
_022CBD08:
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _022CBDDC
_022CBD14: @ jump table
	b _022CBD24 @ case 0
	b _022CBD68 @ case 1
	b _022CBD8C @ case 2
	b _022CBDDC @ case 3
_022CBD24:
	cmp fp, #0
	movne r1, #2
	strne r1, [r0, #0xc]
	movne fp, #0
	bl ov00_022CC68C
	cmp r0, #0
	beq _022CBD54
	add r0, sp, #0
	mov r1, #0
	bl ov00_022CC6E4
	cmp r0, #0
	bne _022CBD60
_022CBD54:
	bl ov00_022CBBA0
	mov r4, #3
	b _022CBDDC
_022CBD60:
	mov r4, #1
	b _022CBDDC
_022CBD68:
	add r0, sp, #0
	mov r1, #1
	bl ov00_022CC6E4
	cmp r0, #0
	bne _022CBDDC
	ldr r0, [sp]
	cmp r0, #0x3c
	movlo r4, #2
	b _022CBDDC
_022CBD8C:
	add r0, sp, #0
	mov r1, #2
	bl ov00_022CC6E4
	cmp r0, #0
	movne r4, #1
	bne _022CBDDC
	ldr r0, [sp]
	cmp r0, #0x3c
	bhs _022CBDDC
	mov r0, #3
	bl ov00_022C8134
	mov sl, #1
	str sl, [sp]
	mov r4, #0
	b _022CBDDC
_022CBDC8:
	mov r0, #1
	bl ov00_022C8134
	mov sl, #1
	str sl, [sp]
	mov r4, #0
_022CBDDC:
	mov r3, #0
	ldr r6, _022CBFA0 @ =0x023250F8
	ldr r1, _022CBFA4 @ =0x000003BD
	mov r2, r3
_022CBDEC:
	ldr r0, [r6]
	cmp r0, #0
	beq _022CBE0C
	ldrh r0, [r6, #0xa]
	sub r0, r5, r0
	lsl r0, r0, #0x10
	cmp r1, r0, asr #16
	strlt r2, [r6]
_022CBE0C:
	add r3, r3, #1
	cmp r3, #8
	add r6, r6, #0xc
	blt _022CBDEC
	ldr r0, _022CBF90 @ =0x02325078
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _022CBE3C
	subs sl, sl, #1
	bne _022CBE3C
	bl ov00_022C8CA0
	mov sl, #0x69
_022CBE3C:
	ldr r0, _022CBFA8 @ =0x022B966C
	ldr sb, [r0, #8]
	cmp sb, #0
	beq _022CBF04
	mov r6, #0
	mov r7, r6
	mov r8, #1
_022CBE58:
	ldr r0, [sb, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _022CBEF8
	ldrb r1, [r0, #8]
	cmp r1, #3
	bne _022CBEA0
	ldr r2, [r0, #0x10]
	sub r2, r5, r2
	cmp r2, #0x27
	ble _022CBEA0
	strb r8, [r0, #8]
	ldrh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	b _022CBEF8
_022CBEA0:
	cmp r1, #2
	bne _022CBED8
	ldr r2, [r0, #0x10]
	sub r2, r5, r2
	cmp r2, #0x27
	ble _022CBED8
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _022CBEF8
	strb r7, [r0, #8]
	str r7, [r0, #4]
	ldr r0, [r0]
	bl FUN_02079940
	b _022CBEF8
_022CBED8:
	cmp r1, #4
	beq _022CBEF8
	ldr r1, [r0, #4]
	cmp r1, #2
	bne _022CBEF8
	str r6, [r0, #4]
	ldr r0, [r0]
	bl FUN_02079940
_022CBEF8:
	ldr sb, [sb, #0x68]
	cmp sb, #0
	bne _022CBE58
_022CBF04:
	mov sb, #0
	ldr r8, _022CBFAC @ =0x023253A0
	ldr r6, _022CBF90 @ =0x02325078
	mov r7, sb
_022CBF14:
	ldrh r0, [r8, #4]
	cmp r0, #0
	beq _022CBF40
	ldr r0, [r8, #0x2c]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _022CBF40
	ldr r0, [r8, #0x34]
	ldr r1, [r6, #0x40]
	blx r1
	strh r7, [r8, #4]
_022CBF40:
	add sb, sb, #1
	cmp sb, #8
	add r8, r8, #0x38
	blt _022CBF14
	mov r0, r5
	bl ov00_022D2B74
	ldr r0, _022CBF90 @ =0x02325078
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _022CBC9C
	blx r0
	b _022CBC9C
_022CBF70:
	ldr r0, [r0, #0x10]
	tst r0, #1
	bne _022CBF88
	cmp r4, #3
	beq _022CBF88
	bl ov00_022CC7E0
_022CBF88:
	bl ov00_022CB14C
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CBF90: .4byte 0x02325078
_022CBF94: .4byte 0x02325158
_022CBF98: .4byte 0x02325724
_022CBF9C: .4byte 0x023255A4
_022CBFA0: .4byte 0x023250F8
_022CBFA4: .4byte 0x000003BD
_022CBFA8: .4byte 0x022B966C
_022CBFAC: .4byte 0x023253A0
	arm_func_end ov00_022CBC40

	arm_func_start ov00_022CBFB0
ov00_022CBFB0: @ 0x022CBFB0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r4, r2
	mov r1, #0
	mov r2, #0xec
	mov r6, r0
	bl FUN_0207C40C
	ldr r0, _022CC120 @ =0x00000101
	mov r1, #6
	strh r0, [r6]
	ldr r0, _022CC124 @ =0x02325078
	strb r1, [r6, #2]
	ldr r3, [r0, #0x70]
	ldr r2, [r0, #0x68]
	ldr r1, [r0, #0x6c]
	umull lr, ip, r3, r2
	mla ip, r3, r1, ip
	ldr r1, [r0, #0x74]
	ldr r7, [r0, #0x78]
	mla ip, r1, r2, ip
	ldr r3, [r0, #0x7c]
	adds r7, r7, lr
	adc r1, r3, ip
	str r7, [r0, #0x68]
	str r1, [r0, #0x6c]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r4, #0
	lsl r2, r3, #8
	lsl r0, r1, #0x10
	strne r1, [r4]
	lsr r1, r0, #0x10
	orr r2, r2, r3, asr #8
	lsl r0, r1, #8
	strh r2, [r6, #4]
	orr r0, r0, r1, asr #8
	strh r0, [r6, #6]
	ldr r2, _022CC124 @ =0x02325078
	ldr r0, _022CC128 @ =0x02325560
	ldr r1, [r2, #0x50]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r3, #8
	orr r1, r1, r3, asr #8
	strh r1, [r6, #0xc]
	ldr r2, [r2, #0x50]
	add r1, r6, #0x1c
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	lsl r2, r3, #8
	orr r3, r2, r3, asr #8
	mov r2, #6
	strh r3, [r6, #0xe]
	bl FUN_0207C4C8
	ldr r0, _022CC12C @ =0x00008263
	ldr r1, _022CC130 @ =0x00006353
	strh r0, [r6, #0xec]
	strh r1, [r6, #0xee]
	ldr r0, _022CC134 @ =0x00000135
	mov r1, #7
	strh r0, [r6, #0xf0]
	strb r5, [r6, #0xf2]
	mov r0, #0x3d
	strb r0, [r6, #0xf3]
	strb r1, [r6, #0xf4]
	mov r3, #1
	ldr r0, _022CC128 @ =0x02325560
	add r1, r6, #0xf6
	mov r2, #6
	strb r3, [r6, #0xf5]
	bl FUN_0207C4C8
	mov r1, #0xc
	strb r1, [r6, #0xfc]
	mov r2, #0xa
	ldr r0, _022CC138 @ =0x0231885C
	add r1, r6, #0xfe
	strb r2, [r6, #0xfd]
	bl FUN_0207C4C8
	mov r1, #0x37
	strb r1, [r6, #0x108]
	mov r2, #3
	add r0, r6, #0xd
	strb r2, [r6, #0x109]
	mov r1, #1
	strb r1, [r6, #0x10a]
	strb r2, [r6, #0x10b]
	mov r1, #6
	strb r1, [r6, #0x10c]
	add r0, r0, #0x100
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CC120: .4byte 0x00000101
_022CC124: .4byte 0x02325078
_022CC128: .4byte 0x02325560
_022CC12C: .4byte 0x00008263
_022CC130: .4byte 0x00006353
_022CC134: .4byte 0x00000135
_022CC138: .4byte 0x0231885C
	arm_func_end ov00_022CBFB0

	arm_func_start ov00_022CC13C
ov00_022CC13C: @ 0x022CC13C
	push {r3, r4, r5, lr}
	mov ip, r0
	mov r5, r2
	cmp r3, r1
	bhs _022CC168
	sub r4, r1, r3
	mov r0, r5
	mov r1, ip
	mov r2, r4
	bl FUN_0207C40C
	add r5, r5, r4
_022CC168:
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CC13C

	arm_func_start ov00_022CC170
ov00_022CC170: @ 0x022CC170
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _022CC22C @ =0x023255CE
	add r2, sp, #0
	mov r0, r4
	mov r1, #1
	bl ov00_022CBFB0
	ldr r1, _022CC230 @ =0x02325078
	mov ip, r0
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _022CC1F4
	mov r0, #0x32
	strb r0, [ip]
	mov r0, #4
	strb r0, [ip, #1]
	ldr r0, [r1, #0x34]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #8
	strb r0, [ip, #2]
	ldr r0, [r1, #0x34]
	lsr r0, r0, #0x10
	strb r0, [ip, #3]
	ldr r0, [r1, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #8
	strb r0, [ip, #4]
	ldr r0, [r1, #0x34]
	strb r0, [ip, #5]
	add ip, ip, #6
_022CC1F4:
	add r2, ip, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [ip]
	bl ov00_022CC13C
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl ov00_022CBA58
	ldr r0, [sp]
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022CC22C: .4byte 0x023255CE
_022CC230: .4byte 0x02325078
	arm_func_end ov00_022CC170

	arm_func_start ov00_022CC234
ov00_022CC234: @ 0x022CC234
	push {r3, r4, r5, lr}
	ldr r4, _022CC334 @ =0x023255CE
	mov r5, r0
	add r2, sp, #0
	mov r0, r4
	mov r1, #3
	bl ov00_022CBFB0
	mov ip, r0
	cmp r5, #0
	bne _022CC300
	mov r0, #0x32
	strb r0, [ip]
	mov r0, #4
	ldr r2, _022CC338 @ =0x02325078
	strb r0, [ip, #1]
	ldr r1, [r2, #0x34]
	mov r3, #0x36
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #8
	strb r1, [ip, #2]
	ldr r1, [r2, #0x34]
	lsr r1, r1, #0x10
	strb r1, [ip, #3]
	ldr r1, [r2, #0x34]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #8
	strb r1, [ip, #4]
	ldr r1, [r2, #0x34]
	strb r1, [ip, #5]
	strb r3, [ip, #6]
	strb r0, [ip, #7]
	ldr r0, [r2, #0x20]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #8
	strb r0, [ip, #8]
	ldr r0, [r2, #0x20]
	lsr r0, r0, #0x10
	strb r0, [ip, #9]
	ldr r0, [r2, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #8
	strb r0, [ip, #0xa]
	ldr r0, [r2, #0x20]
	strb r0, [ip, #0xb]
	add ip, ip, #0xc
_022CC300:
	add r2, ip, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [ip]
	bl ov00_022CC13C
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl ov00_022CBA58
	ldr r0, [sp]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CC334: .4byte 0x023255CE
_022CC338: .4byte 0x02325078
	arm_func_end ov00_022CC234

	arm_func_start ov00_022CC33C
ov00_022CC33C: @ 0x022CC33C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	add r1, r1, #1
	str r0, [sp]
	rsb fp, r1, r1, lsl #4
	bl FUN_0207AE44
	lsr r4, r0, #0x10
	orr r4, r4, r1, lsl #16
	mov r5, #0
	b _022CC644
_022CC364:
	bl ov00_022CBAF0
	cmp r0, #0
	bne _022CC378
	bl ov00_022C8238
	b _022CC644
_022CC378:
	add r0, sp, #4
	bl ov00_022CB550
	ldr r1, [sp, #4]
	mov r6, r0
	cmp r1, #0xf0
	bls _022CC63C
	ldrb r0, [r6]
	cmp r0, #2
	bne _022CC63C
	ldrh r3, [r6, #6]
	ldrh r2, [r6, #4]
	lsl r0, r3, #8
	lsl r1, r2, #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r1, r0, r2, lsl #16
	ldr r0, [sp]
	cmp r0, r1
	bne _022CC63C
	ldr r1, _022CC684 @ =0x02325560
	add r0, r6, #0x1c
	bl ov00_022C87F8
	cmp r0, #0
	bne _022CC63C
	ldrb r3, [r6, #0x10]
	ldrb r2, [r6, #0x11]
	ldrb r1, [r6, #0x12]
	ldrb r0, [r6, #0x13]
	orr r3, r2, r3, lsl #8
	ldrb r2, [r6, #0xec]
	orr r1, r0, r1, lsl #8
	lsl r0, r3, #0x10
	lsl r1, r1, #0x10
	lsr r5, r0, #0x10
	lsr r0, r1, #0x10
	cmp r2, #0x63
	orr r2, r0, r5, lsl #16
	ldrbeq r0, [r6, #0xed]
	ldr r3, [sp, #4]
	mov r5, #3
	cmpeq r0, #0x82
	ldrbeq r0, [r6, #0xee]
	add r1, r6, r3
	cmpeq r0, #0x53
	ldrbeq r0, [r6, #0xef]
	addeq r3, r6, #0xf0
	cmpeq r0, #0x63
	bne _022CC63C
	mov r0, #0
	mov sb, #2
	mov sl, #1
	ldr ip, _022CC688 @ =0x02325078
	b _022CC628
_022CC45C:
	cmp r6, #0
	beq _022CC628
	cmp r6, #0x33
	bgt _022CC498
	bge _022CC590
	cmp r6, #6
	bgt _022CC61C
	cmp r6, #1
	blt _022CC61C
	beq _022CC4B4
	cmp r6, #3
	beq _022CC4E8
	cmp r6, #6
	beq _022CC51C
	b _022CC61C
_022CC498:
	cmp r6, #0x35
	bgt _022CC4A8
	beq _022CC5C4
	b _022CC61C
_022CC4A8:
	cmp r6, #0x36
	beq _022CC5EC
	b _022CC61C
_022CC4B4:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	lsl r8, r8, #0x10
	orr r6, r6, r7, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r8, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x1c]
	b _022CC61C
_022CC4E8:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	lsl r8, r8, #0x10
	orr r6, r6, r7, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r8, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x2c]
	b _022CC61C
_022CC51C:
	ldrb r6, [r3]
	cmp r6, #8
	strlo r0, [ip, #0x64]
	blo _022CC55C
	ldrb lr, [r3, #5]
	ldrb r8, [r3, #6]
	ldrb r7, [r3, #7]
	ldrb r6, [r3, #8]
	orr r8, r8, lr, lsl #8
	lsl r8, r8, #0x10
	orr r6, r6, r7, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r8, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x64]
_022CC55C:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	lsl r8, r8, #0x10
	orr r6, r6, r7, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r8, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x60]
	b _022CC61C
_022CC590:
	ldrb lr, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	orr r8, r8, lr, lsl #8
	lsl r8, r8, #0x10
	orr r6, r6, r7, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r8, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x4c]
	b _022CC61C
_022CC5C4:
	ldrb r6, [r3, #1]
	cmp r6, #2
	beq _022CC5E0
	cmp r6, #5
	moveq r5, sb
	streq r2, [ip, #0x50]
	b _022CC61C
_022CC5E0:
	mov r5, sl
	str r2, [ip, #0x34]
	b _022CC61C
_022CC5EC:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb lr, [r3, #4]
	orr r7, r7, r8, lsl #8
	lsl r7, r7, #0x10
	orr r6, lr, r6, lsl #8
	lsl r6, r6, #0x10
	lsr r7, r7, #0x10
	lsr r6, r6, #0x10
	orr r6, r6, r7, lsl #16
	str r6, [ip, #0x20]
_022CC61C:
	ldrb r6, [r3]
	add r6, r6, #1
	add r3, r3, r6
_022CC628:
	cmp r3, r1
	bhs _022CC63C
	ldrb r6, [r3], #1
	cmp r6, #0xff
	bne _022CC45C
_022CC63C:
	ldr r0, [sp, #4]
	bl ov00_022CB644
_022CC644:
	ldr r0, _022CC688 @ =0x02325078
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	beq _022CC678
	cmp r5, #0
	bne _022CC678
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r4
	cmp r0, fp
	blt _022CC364
_022CC678:
	mov r0, r5
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CC684: .4byte 0x02325560
_022CC688: .4byte 0x02325078
	arm_func_end ov00_022CC33C

	arm_func_start ov00_022CC68C
ov00_022CC68C: @ 0x022CC68C
	push {r3, r4, r5, lr}
	bl ov00_022CB1F0
	bl ov00_022CB164
	mov r1, #0x43
	sub r2, r1, #0x44
	mov r0, #0x44
	bl ov00_022CB190
	mov r5, #0
_022CC6AC:
	bl ov00_022CC170
	mov r1, r5
	bl ov00_022CC33C
	mov r4, r0
	cmp r4, #1
	beq _022CC6D0
	add r5, r5, #1
	cmp r5, #4
	blt _022CC6AC
_022CC6D0:
	bl ov00_022CB224
	cmp r4, #1
	moveq r0, #1
	movne r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CC68C

	arm_func_start ov00_022CC6E4
ov00_022CC6E4: @ 0x022CC6E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	bl ov00_022CB1F0
	bl ov00_022CB164
	cmp r4, #1
	mov r0, #0x44
	bne _022CC718
	ldr r1, _022CC7DC @ =0x02325078
	ldr r2, [r1, #0x20]
	mov r1, #0x43
	bl ov00_022CB190
	b _022CC724
_022CC718:
	mov r1, #0x43
	sub r2, r1, #0x44
	bl ov00_022CB190
_022CC724:
	mov r7, #0
_022CC728:
	mov r0, r4
	bl ov00_022CC234
	mov r1, r7
	bl ov00_022CC33C
	movs r6, r0
	bne _022CC74C
	add r7, r7, #1
	cmp r7, #4
	blt _022CC728
_022CC74C:
	bl ov00_022CB224
	cmp r6, #2
	bne _022CC780
	ldr r1, _022CC7DC @ =0x02325078
	mov r0, #1
	ldr r2, [r1, #0x4c]
	lsr r2, r2, #1
	str r2, [r5]
	ldr r2, [r1, #0x4c]
	add r2, r2, r2, lsl #1
	lsr r2, r2, #3
	str r2, [r1, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_022CC780:
	ldr r0, _022CC7DC @ =0x02325078
	cmp r4, #1
	ldr r1, [r0, #0x38]
	lsr r1, r1, #1
	str r1, [r0, #0x38]
	str r1, [r5]
	beq _022CC7A8
	cmp r4, #2
	beq _022CC7C8
	b _022CC7D4
_022CC7A8:
	cmp r1, #0x3c
	bhs _022CC7D4
	mov r1, #1
	str r1, [r5]
	ldr r1, [r0, #0x4c]
	lsr r1, r1, #3
	str r1, [r0, #0x38]
	b _022CC7D4
_022CC7C8:
	cmp r1, #0x3c
	movlo r0, #1
	strlo r0, [r5]
_022CC7D4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CC7DC: .4byte 0x02325078
	arm_func_end ov00_022CC6E4

	arm_func_start ov00_022CC7E0
ov00_022CC7E0: @ 0x022CC7E0
	push {r4, lr}
	bl ov00_022CB1F0
	bl ov00_022CB164
	ldr r1, _022CC844 @ =0x02325078
	mov r0, #0x44
	ldr r2, [r1, #0x20]
	mov r1, #0x43
	bl ov00_022CB190
	ldr r4, _022CC848 @ =0x023255CE
	mov r1, #7
	mov r0, r4
	mov r2, #0
	bl ov00_022CBFB0
	mov r1, #0xff
	add r2, r0, #1
	strb r1, [r0]
	mov r0, #0
	mov r1, #0x12c
	sub r3, r2, r4
	bl ov00_022CC13C
	sub r1, r0, r4
	mov r0, r4
	bl ov00_022CBA58
	bl ov00_022CB224
	pop {r4, pc}
	.align 2, 0
_022CC844: .4byte 0x02325078
_022CC848: .4byte 0x023255CE
	arm_func_end ov00_022CC7E0

	arm_func_start ov00_022CC84C
ov00_022CC84C: @ 0x022CC84C
	ldrb r2, [r0], #1
	cmp r2, #0
	bxeq lr
_022CC858:
	and r1, r2, #0xc0
	cmp r1, #0xc0
	addeq r0, r0, #1
	bxeq lr
	add r0, r0, r2
	ldrb r2, [r0], #1
	cmp r2, #0
	bne _022CC858
	bx lr
	arm_func_end ov00_022CC84C

	arm_func_start ov00_022CC87C
ov00_022CC87C: @ 0x022CC87C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov sb, r2
	lsl r2, sb, #8
	mov sl, r1
	orr r1, r2, sb, asr #8
	strh r1, [sp, #4]
	cmp sl, #0x20
	mov r6, #0
	movne r1, #1
	strhne r1, [sp, #6]
	ldreq r1, _022CCB1C @ =0x00001001
	strh r6, [sp, #0xa]
	strheq r1, [sp, #6]
	mov r1, #0x100
	strh r1, [sp, #8]
	add r1, sp, #0x10
	strh r6, [sp, #0xc]
	strh r6, [sp, #0xe]
	str r6, [sp]
	ldrb r7, [r0], #1
	mov fp, r3
	ldr r8, [sp, #0x68]
	add r2, r1, #1
	cmp r7, #0
	beq _022CC944
	mov r4, r6
	add r5, sp, #4
	mov r3, r6
_022CC8F0:
	cmp r7, #0x2e
	beq _022CC920
	sub r6, r2, r5
	cmp r6, #0x3c
	addge sp, sp, #0x40
	mvnge r0, #0
	popge {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, r4, #1
	mov r4, r6
	str r6, [sp]
	strb r7, [r2], #1
	b _022CC938
_022CC920:
	strb r6, [r1]
	mov r1, r2
	mov r4, r3
	mov r6, r3
	str r3, [sp]
	add r2, r2, #1
_022CC938:
	ldrb r7, [r0], #1
	cmp r7, #0
	bne _022CC8F0
_022CC944:
	ldr r0, [sp]
	mov r3, #0
	strb r0, [r1]
	strb r3, [r2]
	lsr r0, sl, #8
	strb r0, [r2, #1]
	strb sl, [r2, #2]
	strb r3, [r2, #3]
	mov r3, #1
	add r0, sp, #4
	add r1, r2, #5
	sub r1, r1, r0
	strb r3, [r2, #4]
	bl ov00_022CBA58
	mov r4, #0
	bl FUN_0207AE44
	lsr r5, r0, #0x10
	orr r5, r5, r1, lsl #16
	b _022CCADC
_022CC990:
	bl ov00_022CBAF0
	cmp r0, #0
	bne _022CC9A4
	bl ov00_022C8238
	b _022CCADC
_022CC9A4:
	add r0, sp, #0
	bl ov00_022CB550
	ldr r1, [sp]
	cmp r1, #0xc
	bls _022CCAD4
	ldrh r3, [r0]
	lsl r2, r3, #8
	orr r2, r2, r3, asr #8
	lsl r2, r2, #0x10
	cmp sb, r2, lsr #16
	bne _022CCAD4
	ldrb r2, [r0, #3]
	and r2, r2, #0xf
	cmp r2, #3
	mvneq r4, #0
	beq _022CCAD4
	cmp r2, #0
	bne _022CCAD4
	ldrb r3, [r0, #4]
	ldrb r2, [r0, #5]
	add r6, r0, r1
	add r0, r0, #0xc
	orr r1, r2, r3, lsl #8
	lsl r1, r1, #0x10
	lsrs r1, r1, #0x10
	sub r7, r1, #1
	beq _022CCA24
_022CCA10:
	bl ov00_022CC84C
	cmp r7, #0
	add r0, r0, #4
	sub r7, r7, #1
	bne _022CCA10
_022CCA24:
	cmp r0, r6
	bhs _022CCAD4
_022CCA2C:
	bl ov00_022CC84C
	ldrb r7, [r0, #8]
	ldrb r1, [r0, #9]
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	orr r1, r1, r7, lsl #8
	lsl r1, r1, #0x10
	orr r2, r2, r3, lsl #8
	lsl r2, r2, #0x10
	cmp sl, r2, lsr #16
	lsr r2, r1, #0x10
	bne _022CCAC4
	cmp sl, #0xc
	beq _022CCAA4
	add r4, r0, #8
	add r0, r0, #6
	add r6, r4, r2
	add r1, r0, r2
	ldrb r3, [r0, r2]
	ldrb r0, [r1, #1]
	ldrb r2, [r4, r2]
	ldrb r1, [r6, #1]
	orr r0, r0, r3, lsl #8
	lsl r0, r0, #0x10
	orr r1, r1, r2, lsl #8
	lsl r1, r1, #0x10
	lsr r2, r0, #0x10
	lsr r0, r1, #0x10
	orr r4, r0, r2, lsl #16
	b _022CCAD4
_022CCAA4:
	cmp r2, r8
	movhi r4, #2
	bhi _022CCAD4
	mov r1, fp
	add r0, r0, #0xa
	bl FUN_0207C4C8
	mov r4, #1
	b _022CCAD4
_022CCAC4:
	add r1, r2, #0xa
	add r0, r0, r1
	cmp r0, r6
	blo _022CCA2C
_022CCAD4:
	ldr r0, [sp]
	bl ov00_022CB644
_022CCADC:
	ldr r0, _022CCB20 @ =0x02325078
	ldr r0, [r0, #0x48]
	blx r0
	cmp r0, #0
	beq _022CCB10
	cmp r4, #0
	bne _022CCB10
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	blt _022CC990
_022CCB10:
	mov r0, r4
	add sp, sp, #0x40
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CCB1C: .4byte 0x00001001
_022CCB20: .4byte 0x02325078
	arm_func_end ov00_022CC87C

	arm_func_start ov00_022CCB24
ov00_022CCB24: @ 0x022CCB24
	str r0, [r1]
	mov ip, #0
	mov r2, #0xa
_022CCB30:
	ldrb r3, [r0]
	sub r3, r3, #0x30
	and r3, r3, #0xff
	cmp r3, #9
	mlals ip, r2, ip, r3
	addls r0, r0, #1
	strls r0, [r1]
	bls _022CCB30
	mov r0, ip
	bx lr
	arm_func_end ov00_022CCB24

	arm_func_start ov00_022CCB58
ov00_022CCB58: @ 0x022CCB58
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r8, r0
	mov r7, r1
	mov r6, r5
	add r4, sp, #0
_022CCB74:
	mov r0, r8
	mov r1, r4
	bl ov00_022CCB24
	ldr r2, [sp]
	cmp r8, r2
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, pc}
	mov r8, r2
	cmp r0, #0xff
	bhi _022CCBC8
	cmp r6, #3
	ldrbne r1, [r2]
	addne r8, r2, #1
	cmpne r1, #0x2e
	bne _022CCBC8
	cmp r6, #3
	bne _022CCBD4
	ldrb r1, [r8]
	cmp r1, #0
	beq _022CCBD4
_022CCBC8:
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, pc}
_022CCBD4:
	add r6, r6, #1
	cmp r6, #4
	orr r5, r0, r5, lsl #8
	blt _022CCB74
	str r5, [r7]
	mov r0, #1
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CCB58

	arm_func_start ov00_022CCBF4
ov00_022CCBF4: @ 0x022CCBF4
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	movs r5, r1
	mov r6, r0
	mov r4, r2
	addeq sp, sp, #4
	mvneq r0, #0
	popeq {r3, r4, r5, r6, pc}
	bl ov00_022CB1F0
	bl ov00_022CB164
	mov r2, r5
	mov r0, #0
	mov r1, #0x35
	bl ov00_022CB190
	mov r0, r6
	mov r2, r4
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	bl ov00_022CC87C
	mov r4, r0
	bl ov00_022CB224
	mov r0, r4
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022CCBF4

	arm_func_start ov00_022CCC58
ov00_022CCC58: @ 0x022CCC58
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r2, _022CCD88 @ =0x02325078
	mov r6, #0
	ldr r5, [r2, #0x70]
	ldr r3, [r2, #0x68]
	ldr r1, [r2, #0x6c]
	umull r8, r7, r5, r3
	ldr sb, [r2, #0x78]
	mla r7, r5, r1, r7
	ldr r4, [r2, #0x74]
	adds fp, sb, r8
	mla r7, r4, r3, r7
	ldr r8, [r2, #0x7c]
	umull r3, r1, r5, fp
	adc sl, r8, r7
	mla r1, r5, sl, r1
	str fp, [r2, #0x68]
	lsl r7, r6, #0x10
	adds r5, sb, r3
	mla r1, r4, fp, r1
	str sl, [r2, #0x6c]
	orr r7, r7, sl, lsr #16
	adc r4, r8, r1
	lsl r3, r6, #0x10
	str r5, [r2, #0x68]
	orr r3, r3, r4, lsr #16
	add r1, sp, #8
	mov sl, r0
	strh r7, [sp, #2]
	str r4, [r2, #0x6c]
	strh r3, [sp, #4]
	bl ov00_022CCB58
	cmp r0, #0
	ldrne r0, [sp, #8]
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	mov fp, r6
	ldr r7, _022CCD8C @ =0x023250D8
	strb r0, [sp]
	strb r0, [sp, #1]
	add r6, sp, #2
	mov r5, fp
	mvn r4, #0
_022CCD0C:
	mov r8, #0
	add sb, sp, #0
_022CCD14:
	ldrb r0, [sb]
	cmp r0, #0
	beq _022CCD4C
	lsl r0, r8, #1
	ldrh r2, [r6, r0]
	ldr r1, [r7, r8, lsl #2]
	mov r0, sl
	bl ov00_022CCBF4
	cmp r0, #0
	str r0, [sp, #8]
	cmpne r0, r4
	bne _022CCD68
	cmp r0, r4
	strbeq r5, [sb]
_022CCD4C:
	add r8, r8, #1
	cmp r8, #2
	add sb, sb, #1
	blt _022CCD14
	add fp, fp, #1
	cmp fp, #3
	blt _022CCD0C
_022CCD68:
	ldr r1, [sp, #8]
	mvn r0, #0
	cmp r1, r0
	moveq r0, #0
	streq r0, [sp, #8]
	ldr r0, [sp, #8]
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CCD88: .4byte 0x02325078
_022CCD8C: .4byte 0x023250D8
	arm_func_end ov00_022CCC58

	arm_func_start ov00_022CCD90
ov00_022CCD90: @ 0x022CCD90
	push {r4, lr}
	mov r4, r0
	ldr r0, _022CCDC4 @ =0x02000BF4
	bl FUN_02000B9C
	ldr r0, _022CCDC8 @ =0x02318868
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	popne {r4, pc}
	str r4, [r0]
	bl ov00_022CCE0C
	bl ov00_022CCDCC
	pop {r4, pc}
	.align 2, 0
_022CCDC4: .4byte 0x02000BF4
_022CCDC8: .4byte 0x02318868
	arm_func_end ov00_022CCD90

	arm_func_start ov00_022CCDCC
ov00_022CCDCC: @ 0x022CCDCC
	push {r4, lr}
	ldr r0, _022CCE00 @ =0x02318868
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl ov00_022CD004
	movs r4, r0
	bmi _022CCDF8
	ldr r0, _022CCE04 @ =0x023188A0
	bl ov00_022CD338
	ldr r1, _022CCE08 @ =0x023268C0
	str r0, [r1, #0xc]
_022CCDF8:
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022CCE00: .4byte 0x02318868
_022CCE04: .4byte 0x023188A0
_022CCE08: .4byte 0x023268C0
	arm_func_end ov00_022CCDCC

	arm_func_start ov00_022CCE0C
ov00_022CCE0C: @ 0x022CCE0C
	push {r3, r4, r5, lr}
	ldr r0, _022CCF40 @ =0x02318868
	ldr r4, _022CCF44 @ =0x023268D0
	ldr r5, [r0]
	mov r0, r4
	mov r1, #0
	mov r2, #0x30
	bl FUN_0207C40C
	ldr r1, [r5, #0x18]
	ldr r0, _022CCF48 @ =0x023268C0
	ldr r2, _022CCF4C @ =0x022CCFEC
	str r1, [r0, #0x14]
	ldr r3, [r5, #0x1c]
	mov r1, #0
	str r3, [r0, #0x18]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	ldr r1, [r0]
	str r1, [r0, #0x3c]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	moveq r0, #0x4000
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _022CCE8C
	ldr r1, _022CCF40 @ =0x02318868
	ldr r0, [r4, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
_022CCE8C:
	str r0, [r4, #0x1c]
	ldr r1, [r5, #0x30]
	ldr lr, [r5, #0x34]
	cmp r1, #0
	moveq r1, #0x240
	sub ip, r1, #0x28
	cmp lr, #0
	moveq lr, #0x10c0
	ldr r2, _022CCF50 @ =0x02318888
	add r0, lr, lr, lsr #31
	ldr r1, _022CCF54 @ =0x023250C8
	mov r3, #0
	strh lr, [r2, #2]
	asr r0, r0, #1
	strh r0, [r2, #4]
	str ip, [r4, #0x24]
	str r3, [r1]
	ldr r0, [r5]
	mov r2, #1
	cmp r0, #0
	beq _022CCF00
	ldr r1, _022CCF58 @ =0x022CCFD4
	ldr r0, _022CCF48 @ =0x023268C0
	str r3, [r4]
	str r1, [r4, #0xc]
	str r2, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r4, #0x28]
	b _022CCF14
_022CCF00:
	ldr r0, _022CCF48 @ =0x023268C0
	ldr r1, _022CCF5C @ =0x022CCF68
	str r3, [r0, #8]
	str r2, [r4]
	str r1, [r4, #0xc]
_022CCF14:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	moveq r0, #0xb
	bl ov00_022C8550
	ldr r0, _022CCF60 @ =ov00_022C8A74
	bl ov00_022D71E4
	ldr r0, _022CCF64 @ =ov00_022CEBDC
	bl ov00_022C84F8
	mov r0, r4
	bl ov00_022C826C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CCF40: .4byte 0x02318868
_022CCF44: .4byte 0x023268D0
_022CCF48: .4byte 0x023268C0
_022CCF4C: .4byte 0x022CCFEC
_022CCF50: .4byte 0x02318888
_022CCF54: .4byte 0x023250C8
_022CCF58: .4byte 0x022CCFD4
_022CCF5C: .4byte 0x022CCF68
_022CCF60: .4byte ov00_022C8A74
_022CCF64: .4byte ov00_022CEBDC
	arm_func_end ov00_022CCE0C
_022CCF68:
	.byte 0x4C, 0x00, 0x9F, 0xE5, 0x4C, 0x10, 0x9F, 0xE5
	.byte 0x00, 0xC0, 0x90, 0xE5, 0x48, 0x00, 0x9F, 0xE5, 0x04, 0x30, 0x9C, 0xE5, 0x44, 0x20, 0x9F, 0xE5
	.byte 0x00, 0x30, 0x81, 0xE5, 0x08, 0x30, 0x9C, 0xE5, 0x3C, 0x10, 0x9F, 0xE5, 0x00, 0x30, 0x80, 0xE5
	.byte 0x0C, 0x30, 0x9C, 0xE5, 0x34, 0x00, 0x9F, 0xE5, 0x00, 0x30, 0x82, 0xE5, 0x10, 0x20, 0x9C, 0xE5
	.byte 0x00, 0x20, 0x81, 0xE5, 0x14, 0x20, 0x9C, 0xE5, 0x04, 0x20, 0x81, 0xE5, 0x08, 0x10, 0x90, 0xE5
	.byte 0x02, 0x10, 0x81, 0xE3, 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0x68, 0x88, 0x31, 0x02
	.byte 0xC8, 0x50, 0x32, 0x02, 0x94, 0x50, 0x32, 0x02, 0xA4, 0x50, 0x32, 0x02, 0xD8, 0x50, 0x32, 0x02
	.byte 0xC0, 0x68, 0x32, 0x02, 0x0C, 0x00, 0x9F, 0xE5, 0x08, 0x10, 0x90, 0xE5, 0x02, 0x10, 0x81, 0xE3
	.byte 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xC0, 0x68, 0x32, 0x02, 0x08, 0x40, 0x2D, 0xE9
	.byte 0x52, 0x28, 0x00, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x01, 0x00, 0xA0, 0x13, 0x00, 0x00, 0xA0, 0x03
	.byte 0x08, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022CD004
ov00_022CD004: @ 0x022CD004
	push {r4, r5, r6, lr}
	mov r4, r0
	mov r0, #0x2c
	mul r1, r4, r0
	ldr r0, _022CD08C @ =0x02318868
	lsl r2, r4, #2
	add r2, r2, #3
	ldr r0, [r0]
	add r1, r1, #3
	bic r5, r2, #3
	bic r2, r1, #3
	ldr r1, [r0, #0x18]
	add r0, r2, r5
	blx r1
	movs r6, r0
	mvneq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r0, _022CD090 @ =0x02326904
	mov r1, r6
	mov r2, r4
	bl FUN_02079DB8
	cmp r4, #0
	add r5, r6, r5
	ble _022CD07C
_022CD064:
	mov r0, r5
	bl ov00_022CD148
	sub r4, r4, #1
	cmp r4, #0
	add r5, r5, #0x2c
	bgt _022CD064
_022CD07C:
	ldr r1, _022CD094 @ =0x02326900
	mov r0, #0
	str r6, [r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CD08C: .4byte 0x02318868
_022CD090: .4byte 0x02326904
_022CD094: .4byte 0x02326900
	arm_func_end ov00_022CD004

	arm_func_start ov00_022CD098
ov00_022CD098: @ 0x022CD098
	push {r3, lr}
	ldr r0, _022CD0D8 @ =0x02326900
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x18]
	cmp r2, r1
	mvnlt r0, #0
	poplt {r3, pc}
	ldr r1, _022CD0DC @ =0x02318868
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	ldr r1, _022CD0D8 @ =0x02326900
	mov r0, #0
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
_022CD0D8: .4byte 0x02326900
_022CD0DC: .4byte 0x02318868
	arm_func_end ov00_022CD098

	arm_func_start ov00_022CD0E0
ov00_022CD0E0: @ 0x022CD0E0
	push {r3, lr}
	mov r2, r0
	ldr r0, _022CD104 @ =0x02326904
	add r1, sp, #0
	bl FUN_02079E74
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022CD104: .4byte 0x02326904
	arm_func_end ov00_022CD0E0

	arm_func_start ov00_022CD108
ov00_022CD108: @ 0x022CD108
	push {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl ov00_022CD0E0
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	str r6, [r0]
	str r5, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	ldrsb r1, [r5, #0x73]
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CD108

	arm_func_start ov00_022CD148
ov00_022CD148: @ 0x022CD148
	push {r3, lr}
	movs r1, r0
	popeq {r3, pc}
	ldr r0, _022CD164 @ =0x02326904
	mov r2, #0
	bl FUN_02079DE0
	pop {r3, pc}
	.align 2, 0
_022CD164: .4byte 0x02326904
	arm_func_end ov00_022CD148

	arm_func_start ov00_022CD168
ov00_022CD168: @ 0x022CD168
	ldr r1, [r0, #0x64]
	cmp r1, #0
	ldreq r1, [r0, #0x68]
	mov r0, r1
	bx lr
	arm_func_end ov00_022CD168

	arm_func_start ov00_022CD17C
ov00_022CD17C: @ 0x022CD17C
	push {r3, r4, r5, lr}
	movs r5, r1
	beq _022CD194
	ldrsb r1, [r5, #0xd]
	tst r1, #1
	beq _022CD19C
_022CD194:
	mov r2, #1
	b _022CD1A0
_022CD19C:
	mov r2, #0
_022CD1A0:
	mov r1, r5
	bl FUN_02079DE0
	movs r4, r0
	bne _022CD1B8
	mov r0, r5
	bl ov00_022CD148
_022CD1B8:
	cmp r4, #0
	movne r0, #0
	mvneq r0, #0x29
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CD17C

	arm_func_start ov00_022CD1C8
ov00_022CD1C8: @ 0x022CD1C8
	push {r4, lr}
	mov r4, r1
	bl ov00_022CD168
	mov r1, r4
	bl ov00_022CD17C
	pop {r4, pc}
	arm_func_end ov00_022CD1C8

	arm_func_start ov00_022CD1E0
ov00_022CD1E0: @ 0x022CD1E0
	push {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r4, r1
	ldrsb r2, [r4, #0xd]
	mov r5, r0
	cmp r2, #1
	bne _022CD234
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #1
	bl FUN_02079DB8
	add r2, sp, #8
	mov r0, r5
	mov r1, r4
	str r2, [r4, #8]
	bl ov00_022CD17C
	add r0, sp, #8
	add r1, sp, #4
	mov r2, #1
	bl FUN_02079E74
	b _022CD244
_022CD234:
	mov r2, #0
	str r2, [r4, #8]
	bl ov00_022CD17C
	str r0, [sp, #4]
_022CD244:
	ldr r0, [sp, #4]
	add sp, sp, #0x28
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CD1E0

	arm_func_start ov00_022CD250
ov00_022CD250: @ 0x022CD250
	ldr ip, _022CD25C @ =ov00_022CD1E0
	ldr r0, [r0, #0x64]
	bx ip
	.align 2, 0
_022CD25C: .4byte ov00_022CD1E0
	arm_func_end ov00_022CD250

	arm_func_start ov00_022CD260
ov00_022CD260: @ 0x022CD260
	ldr ip, _022CD26C @ =ov00_022CD1E0
	ldr r0, [r0, #0x68]
	bx ip
	.align 2, 0
_022CD26C: .4byte ov00_022CD1E0
	arm_func_end ov00_022CD260

	arm_func_start ov00_022CD270
ov00_022CD270: @ 0x022CD270
	push {r4, lr}
	mov r4, r1
	bl ov00_022CD168
	mov r1, r4
	bl ov00_022CD1E0
	pop {r4, pc}
	arm_func_end ov00_022CD270

	arm_func_start ov00_022CD288
ov00_022CD288: @ 0x022CD288
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r4, #0
	mov sb, r0
	mov sl, r4
	add r6, sp, #0
	mov r5, #1
_022CD2A4:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl FUN_02079FB4
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [r0]
	blx r1
	mov r8, r0
	bl FUN_0207B7E4
	mov r7, r0
	bl FUN_02079C14
	mov r0, sb
	mov r1, r4
	mov r2, r4
	bl FUN_02079E74
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	strne r8, [r0, #0x6c]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _022CD318
	mov r1, r8
	mov r2, sl
	bl FUN_02079DE0
_022CD318:
	ldr r0, [sp]
	bl ov00_022CD148
	bl FUN_02079C48
	mov r0, r7
	bl FUN_0207B7F8
	b _022CD2A4
	arm_func_end ov00_022CD288
_022CD330:
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0xF8, 0x87, 0xBD, 0xE8

	arm_func_start ov00_022CD338
ov00_022CD338: @ 0x022CD338
	push {r4, lr}
	bl ov00_022CD3E8
	movs r4, r0
	mvneq r0, #0x30
	popeq {r4, pc}
	ldr r0, _022CD370 @ =0x022CD374
	mov r1, r4
	mov r2, #1
	bl ov00_022CD108
	mov r1, r0
	mov r0, r4
	bl ov00_022CD270
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022CD370: .4byte 0x022CD374
	arm_func_end ov00_022CD338
_022CD374:
	.byte 0x10, 0x40, 0x2D, 0xE9, 0x04, 0x40, 0x90, 0xE5, 0x04, 0x00, 0xA0, 0xE1
	.byte 0x6C, 0xF7, 0xFF, 0xEB, 0xD3, 0x07, 0xD4, 0xE1, 0x68, 0x10, 0x94, 0xE5, 0x04, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x0E, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x06, 0x00, 0x00, 0xEA
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA, 0xFF, 0xFF, 0xFF, 0xEA, 0x20, 0x00, 0x81, 0xE2
	.byte 0xA3, 0xF7, 0xFF, 0xEB, 0x8D, 0xF7, 0xFF, 0xEB, 0x05, 0x00, 0x00, 0xEA, 0x8B, 0xF7, 0xFF, 0xEB
	.byte 0x67, 0xF7, 0xFF, 0xEB, 0x18, 0x00, 0x9F, 0xE5, 0xA3, 0xF7, 0xFF, 0xEB, 0x00, 0x00, 0x00, 0xEA
	.byte 0x63, 0xF7, 0xFF, 0xEB, 0x01, 0x00, 0xA0, 0xE3, 0xB0, 0x07, 0xC4, 0xE1, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x10, 0xE0, 0x2C, 0x02

	arm_func_start ov00_022CD3E8
ov00_022CD3E8: @ 0x022CD3E8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl ov00_022CD450
	mov r4, r0
	bl FUN_0207B7E4
	ldr r1, _022CD44C @ =0x02318868
	mov r6, r0
	ldr r1, [r1]
	mov r0, r4
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _022CD43C
	mov r2, r4
	mov r1, #0
	bl FUN_0207C40C
	mov r0, r5
	mov r1, r7
	bl ov00_022CD4F8
	mov r0, r5
	bl ov00_022CF09C
_022CD43C:
	mov r0, r6
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CD44C: .4byte 0x02318868
	arm_func_end ov00_022CD3E8

	arm_func_start ov00_022CD450
ov00_022CD450: @ 0x022CD450
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0x80
	cmp r0, #0
	beq _022CD48C
	add r4, r4, #0x114
	bl ov00_022CF090
	add r4, r4, r0
	ldrh r0, [r5, #8]
	bl ov00_022CF090
	add r4, r4, r0
	add r0, r5, #0x10
	bl ov00_022CD4D0
	add r4, r4, r0
_022CD48C:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _022CD4C8
	add r4, r4, #0x110
	bl ov00_022CF090
	add r4, r4, r0
	ldrh r0, [r5, #0xa]
	bl ov00_022CF090
	add r4, r4, r0
	ldrh r0, [r5, #0xc]
	bl ov00_022CF090
	add r4, r4, r0
	add r0, r5, #0x14
	bl ov00_022CD4D0
	add r4, r4, r0
_022CD4C8:
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CD450

	arm_func_start ov00_022CD4D0
ov00_022CD4D0: @ 0x022CD4D0
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #3]
	lsl r0, r0, #2
	bl ov00_022CF090
	mov r4, r0
	ldrh r0, [r5]
	bl ov00_022CF090
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CD4D0

	arm_func_start ov00_022CD4F8
ov00_022CD4F8: @ 0x022CD4F8
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrsb r1, [r5]
	mov r6, r0
	add r4, r6, #0x80
	strb r1, [r6, #0x73]
	ldrsb r0, [r5, #1]
	strb r0, [r6, #0x72]
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _022CD578
	str r4, [r6, #0x64]
	ldrh r2, [r5, #4]
	mov r1, r4
	add r0, r4, #0x114
	strh r2, [r4, #0xfc]
	add r2, r5, #0x10
	mov r7, r4
	bl ov00_022CD61C
	ldrh r2, [r5, #2]
	add r1, r6, #0x3c
	bl ov00_022CD5F4
	ldrh r2, [r5, #8]
	add r1, r6, #0x50
	bl ov00_022CD5F4
	ldrh r3, [r5, #0xe]
	add r1, r7, #0x100
	mov r2, #0
	strh r3, [r1, #0xa]
	str r2, [r7, #0x110]
	mov r4, r0
	str r2, [r7, #0x10c]
_022CD578:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _022CD5D8
	str r4, [r6, #0x68]
	mov r1, r4
	str r6, [r4, #0x10c]
	add r0, r4, #0x110
	add r2, r5, #0x14
	mov r7, r4
	bl ov00_022CD61C
	ldrh r2, [r5, #6]
	add r1, r6, #0x48
	bl ov00_022CD5F4
	ldrh r2, [r5, #0xa]
	add r1, r6, #0x58
	bl ov00_022CD5F4
	ldrh r2, [r5, #0xc]
	add r1, r4, #0xf8
	bl ov00_022CD5F4
	mov r1, #0
	str r1, [r7, #0x108]
	mov r4, r0
	str r1, [r7, #0x104]
	b _022CD5E8
_022CD5D8:
	ldr r0, _022CD5F0 @ =0x023268CC
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	str r0, [r6, #0x68]
_022CD5E8:
	mov r0, r4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CD5F0: .4byte 0x023268CC
	arm_func_end ov00_022CD4F8

	arm_func_start ov00_022CD5F4
ov00_022CD5F4: @ 0x022CD5F4
	push {r4, lr}
	mov r4, r0
	cmp r2, #0
	moveq r0, #0
	str r0, [r1, #4]
	mov r0, r2
	str r2, [r1]
	bl ov00_022CF090
	add r0, r4, r0
	pop {r4, pc}
	arm_func_end ov00_022CD5F4

	arm_func_start ov00_022CD61C
ov00_022CD61C: @ 0x022CD61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl ov00_022CD4D0
	mov r4, r0
	ldrb r2, [r5, #3]
	mov r0, r6
	mov r1, r7
	bl FUN_02079DB8
	add r0, r6, #0xe0
	bl FUN_0207A030
	ldrh r2, [r5]
	add r0, r6, #0x20
	ldr r1, _022CD68C @ =ov00_022CD288
	str r2, [sp]
	ldrb ip, [r5, #2]
	mov r2, r6
	add r3, r7, r4
	str ip, [sp, #4]
	bl FUN_02079560
	add r0, r6, #0x20
	bl FUN_02079940
	add r0, r7, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CD68C: .4byte ov00_022CD288
	arm_func_end ov00_022CD61C

	arm_func_start FUN_022CD690
FUN_022CD690: @ 0x022CD690
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022CF154
	cmp r0, #0
	mvnne r0, #0x1b
	popne {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _022CD6C4
	ldrsh r0, [r5, #0x70]
	tst r0, #1
	movne r1, #1
_022CD6C4:
	cmp r1, #0
	mvneq r0, #0x26
	popeq {r3, r4, r5, pc}
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	mvnne r0, #6
	popne {r3, r4, r5, pc}
	strh r4, [r5, #0x74]
	ldrsb r0, [r5, #0x73]
	cmp r0, #1
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl ov00_022CD7E8
	pop {r3, r4, r5, pc}
	arm_func_end FUN_022CD690

	arm_func_start ov00_022CD700
ov00_022CD700: @ 0x022CD700
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022CF154
	cmp r0, #0
	bne _022CD728
	ldrsh r0, [r6, #0x70]
	tst r0, #8
	beq _022CD730
_022CD728:
	mvn r0, #0x1b
	pop {r4, r5, r6, pc}
_022CD730:
	cmp r6, #0
	mov r1, #0
	beq _022CD748
	ldrsh r0, [r6, #0x70]
	tst r0, #1
	movne r1, #1
_022CD748:
	cmp r1, #0
	mvneq r0, #0x26
	popeq {r4, r5, r6, pc}
	ldrsb r0, [r6, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CD7D4
	ldrsh r0, [r6, #0x70]
	tst r0, #4
	beq _022CD790
	ldrsb r0, [r6, #0x72]
	cmp r0, #1
	mvneq r0, #0x1d
	movne r0, #0
	pop {r4, r5, r6, pc}
_022CD790:
	ldrsh r0, [r6, #0x70]
	tst r0, #2
	beq _022CD7B4
	ldrsh r0, [r6, #0x70]
	tst r0, #0x40
	ldrne r0, [r6, #0x6c]
	ldreq r0, _022CD7E4 @ =0x0231886C
	ldreq r0, [r0]
	pop {r4, r5, r6, pc}
_022CD7B4:
	strh r5, [r6, #0x76]
	mov r0, r6
	str r4, [r6, #0x78]
	bl ov00_022CD7E8
	ldrsb r1, [r6, #0x72]
	cmp r1, #1
	mvnne r0, #0x19
	pop {r4, r5, r6, pc}
_022CD7D4:
	strh r5, [r6, #0x76]
	str r4, [r6, #0x78]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CD7E4: .4byte 0x0231886C
	arm_func_end ov00_022CD700

	arm_func_start ov00_022CD7E8
ov00_022CD7E8: @ 0x022CD7E8
	push {r4, lr}
	mov r4, r0
	ldrsb r2, [r4, #0x72]
	ldr r0, _022CD83C @ =ov00_022CD840
	mov r1, r4
	bl ov00_022CD108
	movs r1, r0
	mvneq r0, #0x20
	popeq {r4, pc}
	ldrh r2, [r4, #0x74]
	mov r0, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r4, #0x76]
	strh r2, [r1, #0x12]
	ldr r2, [r4, #0x78]
	str r2, [r1, #0x14]
	ldrsh r2, [r4, #0x70]
	orr r2, r2, #2
	strh r2, [r4, #0x70]
	bl ov00_022CD250
	pop {r4, pc}
	.align 2, 0
_022CD83C: .4byte ov00_022CD840
	arm_func_end ov00_022CD7E8

	arm_func_start ov00_022CD840
ov00_022CD840: @ 0x022CD840
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	mov r6, #0
	ldr r5, [r4, #0x64]
	add r0, r5, #0xe0
	bl FUN_0207A048
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r7, #0x14]
	bl ov00_022CB190
	mov r0, r6
	str r0, [r5, #0xf8]
	ldrsb r0, [r7, #0xc]
	cmp r0, #0
	cmpne r0, #4
	bne _022CD88C
	bl ov00_022CB32C
	mov r6, r0
_022CD88C:
	add r0, r5, #0xe0
	bl FUN_0207A0CC
	cmp r6, #0
	beq _022CD8B0
	ldrsh r1, [r4, #0x70]
	mvn r0, #0x4b
	orr r1, r1, #0x40
	strh r1, [r4, #0x70]
	pop {r3, r4, r5, r6, r7, pc}
_022CD8B0:
	ldrsh r1, [r4, #0x70]
	mov r0, #0
	orr r1, r1, #4
	strh r1, [r4, #0x70]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CD840

	arm_func_start ov00_022CD8C4
ov00_022CD8C4: @ 0x022CD8C4
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov00_022CF154
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #0x1b
	popne {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	tst r0, #4
	bne _022CD908
	ldrsb r0, [sb, #0x72]
	cmp r0, #0
	bne _022CD924
_022CD908:
	ldrsb r0, [sb, #0x73]
	cmp r0, #4
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	popeq {r4, r5, r6, r7, r8, sb, pc}
	mov r5, #0
	b _022CD93C
_022CD924:
	bl FUN_0207B848
	cmp r0, #0x12
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	popeq {r4, r5, r6, r7, r8, sb, pc}
	mov r5, #1
_022CD93C:
	cmp sb, #0
	mov r1, #0
	beq _022CD954
	ldrsh r0, [sb, #0x70]
	tst r0, #1
	movne r1, #1
_022CD954:
	cmp r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0x26
	popeq {r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [sb, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CD9A4
	ldrsh r0, [sb, #0x70]
	tst r0, #4
	beq _022CD998
	ldrsh r0, [sb, #0x70]
	tst r0, #8
	beq _022CD9A4
_022CD998:
	add sp, sp, #0xc
	mvn r0, #0x37
	pop {r4, r5, r6, r7, r8, sb, pc}
_022CD9A4:
	ldr r4, [sb, #0x64]
	tst r5, #1
	add r0, r4, #0xe0
	bne _022CD9CC
	bl FUN_0207A164
	cmp r0, #0
	bne _022CD9D0
	add sp, sp, #0xc
	mvn r0, #5
	pop {r4, r5, r6, r7, r8, sb, pc}
_022CD9CC:
	bl FUN_0207A048
_022CD9D0:
	ldr r0, [sp, #0x28]
	ldr ip, [sp, #0x2c]
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	stmib sp, {r5, ip}
	bl ov00_022CDA0C
	mov r5, r0
	add r0, r4, #0xe0
	bl FUN_0207A0CC
	mov r0, r5
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022CD8C4

	arm_func_start ov00_022CDA0C
ov00_022CDA0C: @ 0x022CDA0C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x28]
	mov r7, r0
	tst r4, #2
	ldr r4, [r7, #0x64]
	cmpne r4, #0
	movne r6, #1
	moveq r6, #0
	cmp r6, #0
	ldrsbne r5, [r4, #0xfe]
	movne r0, #1
	strbne r0, [r4, #0xfe]
	ldrsb r0, [r7, #0x73]
	cmp r0, #1
	bne _022CDA6C
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str ip, [sp, #4]
	bl ov00_022CDECC
	mov r8, r0
	b _022CDA94
_022CDA6C:
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str ip, [sp, #4]
	bl ov00_022CDAA8
	movs r8, r0
	bmi _022CDA94
	mov r0, r7
	bl ov00_022CDE34
_022CDA94:
	cmp r6, #0
	strbne r5, [r4, #0xfe]
	mov r0, r8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CDA0C

	arm_func_start ov00_022CDAA8
ov00_022CDAA8: @ 0x022CDAA8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb ip, [r7, #0x73]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #4
	bne _022CDAD8
	ldr r4, [sp, #0x18]
	str r4, [sp]
	bl ov00_022CDC98
	pop {r3, r4, r5, r6, r7, pc}
_022CDAD8:
	ldr ip, [sp, #0x18]
	str ip, [sp]
	bl ov00_022CDB1C
	mvn r1, #5
	cmp r0, r1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x1c]
	tst r1, #1
	popeq {r3, r4, r5, r6, r7, pc}
	ldr ip, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl ov00_022CDC98
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CDAA8

	arm_func_start ov00_022CDB1C
ov00_022CDB1C: @ 0x022CDB1C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_0207B7E4
	add r1, sp, #8
	mov r4, r0
	str r1, [sp]
	add r1, sp, #0xc
	mov r0, sb
	add r2, sp, #6
	add r3, sp, #4
	bl ov00_022CDC24
	cmp r0, #0
	beq _022CDBBC
	ldr r5, [sp, #0xc]
	cmp r5, #0
	mvneq r5, #5
	beq _022CDBD8
	ldrsb r1, [sb, #0x73]
	cmp r7, r5
	mov r2, #1
	movgt r7, r5
	cmp r1, #0
	cmpne r1, #4
	movne r2, #0
	cmp r2, #0
	mov r1, r8
	mov r2, r7
	movne r5, r7
	bl FUN_0207C4C8
	ldr r1, [sb, #0x64]
	ldrsb r0, [r1, #0xfe]
	cmp r0, #0
	ldreq r0, [r1, #0xf8]
	addeq r0, r0, r5
	streq r0, [r1, #0xf8]
	b _022CDBD8
_022CDBBC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldrsh r0, [sb, #0x70]
	moveq r5, #0
	mvnne r5, #0x1b
	bic r0, r0, #6
	strh r0, [sb, #0x70]
_022CDBD8:
	cmp r5, #0
	blt _022CDC10
	cmp r6, #0
	ldrne r1, [sp, #0x30]
	cmpne r1, #0
	beq _022CDC00
	ldrh r0, [sp, #4]
	strh r0, [r6]
	ldr r0, [sp, #8]
	str r0, [r1]
_022CDC00:
	ldrh r0, [sb, #0x74]
	cmp r0, #0
	ldrheq r0, [sp, #6]
	strheq r0, [sb, #0x74]
_022CDC10:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022CDB1C

	arm_func_start ov00_022CDC24
ov00_022CDC24: @ 0x022CDC24
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x64]
	ldr r4, [r0, #0xc4]
	ldr r5, [r0, #0xf8]
	ldr r0, [r4, #0x44]
	subs lr, r0, r5
	bmi _022CDC7C
	ldrh ip, [r4, #0xa]
	ldr r0, [sp, #0x10]
	cmp lr, #0
	strh ip, [r2]
	ldrh r2, [r4, #0x18]
	strh r2, [r3]
	ldr r2, [r4, #0x1c]
	str r2, [r0]
	str lr, [r1]
	bne _022CDC8C
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _022CDC8C
	mov r0, #0
	pop {r3, r4, r5, pc}
_022CDC7C:
	mvn r0, #0
	str r0, [r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
_022CDC8C:
	ldr r0, [r4, #0x40]
	add r0, r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CDC24

	arm_func_start ov00_022CDC98
ov00_022CDC98: @ 0x022CDC98
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _022CDCE0 @ =ov00_022CDCE4
	mov r1, r7
	mov r2, #1
	mov r4, r3
	bl ov00_022CD108
	mov r1, r0
	str r6, [r1, #0x10]
	str r5, [r1, #0x14]
	ldr r2, [sp, #0x18]
	str r4, [r1, #0x18]
	mov r0, r7
	str r2, [r1, #0x1c]
	bl ov00_022CD250
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CDCE0: .4byte ov00_022CDCE4
	arm_func_end ov00_022CDC98

	arm_func_start ov00_022CDCE4
ov00_022CDCE4: @ 0x022CDCE4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r7, [r0, #4]
	ldr r1, [r0, #0x10]
	ldr r8, [r7, #0x64]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0x18]
	ldr sl, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	ldr sb, [r8, #0xf8]
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
	mov r5, #1
	mov fp, #0xa
	add r6, sp, #0x10
_022CDD24:
	mov r0, r6
	bl ov00_022CB550
	cmp r0, #0
	beq _022CDD78
	ldr r1, [sp, #0x10]
	sub r1, r1, sb
	cmp r1, #0
	bgt _022CDD78
	ldrsb r0, [r7, #0x73]
	mov r1, r5
	cmp r0, #0
	cmpne r0, #4
	movne r1, r4
	cmp r1, #0
	ldrbne r0, [r7, #8]
	cmpne r0, #4
	movne r0, #0
	bne _022CDD78
	mov r0, fp
	bl FUN_02079B14
	b _022CDD24
_022CDD78:
	ldrsh r1, [r7, #0x70]
	tst r1, #0x80
	addne sp, sp, #0x14
	mvnne r0, #0xe
	popne {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [r7, #0x73]
	cmp r1, #4
	bne _022CDDD4
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x10]
	cmp sl, r1
	movhi sl, r1
	ldr r1, [sp, #0xc]
	mov r2, sl
	bl FUN_0207C4C8
	mov r0, sl
	bl ov00_022CB644
	add sp, sp, #0x14
	mov r0, sl
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022CDDD4:
	cmp r0, #0
	moveq r4, #0
	beq _022CDE00
	ldr r4, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r7
	mov r2, sl
	str r4, [sp]
	bl ov00_022CDB1C
	mov r4, r0
_022CDE00:
	cmp r4, #0
	addle sp, sp, #0x14
	movle r0, r4
	pople {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r0, [r8, #0xfc]
	ldr r1, [r8, #0xf8]
	cmp r1, r0
	blt _022CDE28
	mov r0, r7
	bl ov00_022CDE90
_022CDE28:
	mov r0, r4
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022CDCE4

	arm_func_start ov00_022CDE34
ov00_022CDE34: @ 0x022CDE34
	push {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x64]
	ldrh r0, [r1, #0xfc]
	ldr r1, [r1, #0xf8]
	cmp r1, r0
	movlt r0, #0
	poplt {r4, pc}
	ldr r0, _022CDE7C @ =0x022CDE80
	mov r1, r4
	mov r2, #0
	bl ov00_022CD108
	movs r1, r0
	mvneq r0, #0x20
	popeq {r4, pc}
	mov r0, r4
	bl ov00_022CD250
	pop {r4, pc}
	.align 2, 0
_022CDE7C: .4byte 0x022CDE80
	arm_func_end ov00_022CDE34
_022CDE80:
	.byte 0x04, 0xC0, 0x9F, 0xE5, 0x04, 0x00, 0x90, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x90, 0xDE, 0x2C, 0x02

	arm_func_start ov00_022CDE90
ov00_022CDE90: @ 0x022CDE90
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0x64]
	bl FUN_0207B7E4
	ldr r6, [r4, #0xf8]
	mov r5, r0
	cmp r6, #0
	beq _022CDEBC
	mov r1, #0
	mov r0, r6
	str r1, [r4, #0xf8]
	bl ov00_022CB644
_022CDEBC:
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, r6
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CDE90

	arm_func_start ov00_022CDECC
ov00_022CDECC: @ 0x022CDECC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r6, [sl, #0x64]
	str r1, [sp]
	ldr r0, [r6, #0x104]
	str r2, [sp, #4]
	mov fp, r3
	bl FUN_0207B7E4
	ldr r7, [r6, #0x104]
	str r0, [sp, #8]
	cmp r7, #0
	bne _022CDF68
	ldr r0, [sp, #0x34]
	mov r4, #1
	and sb, r0, #1
	mov r5, #0
_022CDF10:
	cmp sb, #0
	mvneq r8, #5
	beq _022CDF68
	add r0, r6, #0x10c
	bl FUN_02079888
	mov r0, sl
	bl ov00_022CF154
	cmp r0, #0
	bne _022CDF54
	mov r1, r5
	cmp sl, #0
	beq _022CDF4C
	ldrsh r0, [sl, #0x70]
	tst r0, #1
	movne r1, r4
_022CDF4C:
	cmp r1, #0
	bne _022CDF5C
_022CDF54:
	mvn r8, #0x37
	b _022CDF68
_022CDF5C:
	ldr r7, [r6, #0x104]
	cmp r7, #0
	beq _022CDF10
_022CDF68:
	cmp r7, #0
	beq _022CDFF8
	ldrh r1, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0xc
	bl FUN_0207C4C8
	cmp fp, #0
	ldrhne r0, [r7, #6]
	ldr r1, [sp, #0x30]
	strhne r0, [fp]
	cmp r1, #0
	ldrne r0, [r7, #8]
	strne r0, [r1]
	ldrsb r0, [r6, #0xfe]
	ldrh r8, [r7, #4]
	cmp r0, #0
	bne _022CDFF8
	ldr r0, [r7]
	ldr r1, _022CE00C @ =0x02318868
	str r0, [r6, #0x104]
	ldr r0, [r7]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x100]
	ldr r1, [r1]
	mov r0, r7
	ldr r1, [r1, #0x1c]
	blx r1
	add r0, r6, #0x100
	ldrh r1, [r0, #8]
	sub r1, r1, r8
	strh r1, [r0, #8]
_022CDFF8:
	ldr r0, [sp, #8]
	bl FUN_0207B7F8
	mov r0, r8
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CE00C: .4byte 0x02318868
	arm_func_end ov00_022CDECC

	arm_func_start ov00_022CE010
ov00_022CE010: @ 0x022CE010
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r2
	ldr r4, [r7, #0x64]
	mov sb, r0
	mov r8, r1
	bl FUN_0207B7E4
	add r1, r4, #0x100
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r6, r0
	add r0, r2, r8
	cmp r1, r0
	blo _022CE0D4
	ldr r1, _022CE11C @ =0x02318868
	add r0, r8, #0xc
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _022CE0C0
	add r1, r4, #0x100
	ldrh r3, [r1, #8]
	mov r2, #0
	mov r0, sb
	add r3, r3, r8
	strh r3, [r1, #8]
	str r2, [r5]
	strh r8, [r5, #4]
	ldrh r3, [r7, #0x18]
	mov r2, r8
	add r1, r5, #0xc
	strh r3, [r5, #6]
	ldr r3, [r7, #0x1c]
	str r3, [r5, #8]
	bl FUN_0207C4C8
	ldr r0, [r4, #0x100]
	cmp r0, #0
	ldrne r0, [r4, #0x100]
	strne r5, [r0]
	str r5, [r4, #0x100]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	streq r5, [r4, #0x104]
	b _022CE0E4
_022CE0C0:
	ldr r0, _022CE120 @ =0x02326924
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	b _022CE0E4
_022CE0D4:
	ldr r0, _022CE120 @ =0x02326924
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_022CE0E4:
	ldrh r0, [r7, #0x74]
	cmp r0, #0
	ldrheq r0, [r7, #0xa]
	strheq r0, [r7, #0x74]
	ldrh r1, [r7, #0x1a]
	add r0, r4, #0x10c
	strh r1, [r7, #0x18]
	ldr r1, [r7, #0x20]
	str r1, [r7, #0x1c]
	bl FUN_020798D8
	mov r0, r6
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022CE11C: .4byte 0x02318868
_022CE120: .4byte 0x02326924
	arm_func_end ov00_022CE010

	arm_func_start ov00_022CE124
ov00_022CE124: @ 0x022CE124
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov00_022CF154
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0x1b
	popne {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r1, #0
	beq _022CE168
	ldrsh r0, [r8, #0x70]
	tst r0, #1
	movne r1, #1
_022CE168:
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0x26
	popeq {r4, r5, r6, r7, r8, pc}
	ldrsb r0, [r8, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CE1B8
	ldrsh r0, [r8, #0x70]
	tst r0, #4
	beq _022CE1AC
	ldrsh r0, [r8, #0x70]
	tst r0, #8
	beq _022CE1B8
_022CE1AC:
	add sp, sp, #8
	mvn r0, #0x37
	pop {r4, r5, r6, r7, r8, pc}
_022CE1B8:
	ldr r0, [sp, #0x24]
	ldr r4, [r8, #0x68]
	tst r0, #4
	bne _022CE1D4
	ldrsb r0, [r8, #0x72]
	cmp r0, #0
	bne _022CE1F4
_022CE1D4:
	add r0, r4, #0xe0
	bl FUN_0207A164
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #5
	popeq {r4, r5, r6, r7, r8, pc}
	mov ip, #0
	b _022CE200
_022CE1F4:
	add r0, r4, #0xe0
	bl FUN_0207A048
	mov ip, #1
_022CE200:
	ldr r1, [sp, #0x20]
	mov r0, r8
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp, #4]
	bl ov00_022CE238
	mov r5, r0
	add r0, r4, #0xe0
	bl FUN_0207A0CC
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CE124

	arm_func_start ov00_022CE238
ov00_022CE238: @ 0x022CE238
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	ldr r4, [sl, #0x68]
	ldrsb r0, [sl, #0x73]
	ldr r4, [r4, #0x10c]
	mov sb, r1
	str r3, [sp, #0xc]
	cmp r0, #1
	mov r8, r2
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r0, [r4, #0x48]
	mov r5, #0
	bne _022CE290
	sub r0, r0, #0x2a
	cmp r8, r0
	addgt sp, sp, #0x18
	subgt r0, r5, #0x23
	popgt {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r8, [sp, #0x10]
	b _022CE2A0
_022CE290:
	sub r0, r0, #0x36
	str r0, [sp, #0x10]
	cmp r8, r0
	strle r8, [sp, #0x10]
_022CE2A0:
	cmp r8, #0
	ble _022CE330
	and fp, r6, #1
_022CE2AC:
	ldr r2, [sp, #0x10]
	mov r0, sl
	mov r1, r8
	add r3, sp, #0x14
	str r6, [sp]
	bl ov00_022CE33C
	mov r4, r0
	cmp r4, #0
	ble _022CE30C
	ldr r0, [sp, #0xc]
	mov r1, sb
	stm sp, {r0, r7}
	str r6, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, sl
	mov r2, r4
	bl ov00_022CE3E4
	cmp r0, #0
	addle sp, sp, #0x18
	mvnle r0, #5
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, sb, r4
	sub r8, r8, r4
	add r5, r5, r4
_022CE30C:
	cmp fp, #0
	bne _022CE328
	cmp r4, #0
	bgt _022CE330
	add sp, sp, #0x18
	mvn r0, #5
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022CE328:
	cmp r8, #0
	bgt _022CE2AC
_022CE330:
	mov r0, r5
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022CE238

	arm_func_start ov00_022CE33C
ov00_022CE33C: @ 0x022CE33C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	cmp r8, sb
	mov r7, r3
	ldr r4, [sl, #0x68]
	movgt r8, sb
	bl FUN_0207B7E4
	ldr r1, [sp, #0x28]
	mov fp, r0
	and r6, r1, #1
_022CE36C:
	mov r0, sl
	bl ov00_022CE3C0
	mov r5, r0
	cmp r5, r8
	blt _022CE398
	add r0, r4, #0x100
	ldrh r0, [r0]
	cmp r5, sb
	movge r5, sb
	str r0, [r7]
	b _022CE3B0
_022CE398:
	cmp r6, #0
	moveq r5, #0
	beq _022CE3B0
	add r0, r4, #0x104
	bl FUN_02079888
	b _022CE36C
_022CE3B0:
	mov r0, fp
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022CE33C

	arm_func_start ov00_022CE3C0
ov00_022CE3C0: @ 0x022CE3C0
	ldr r2, [r0, #0x68]
	add r0, r2, #0x100
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r2, #0xf8]
	sub r0, r0, r1
	subs r0, r0, #1
	addmi r0, r0, r2
	bx lr
	arm_func_end ov00_022CE3C0

	arm_func_start ov00_022CE3E4
ov00_022CE3E4: @ 0x022CE3E4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, [sb, #0x68]
	mov r6, r1
	mov r8, r2
	ldr r1, [r4, #0x10c]
	ldr r2, [sp, #0x28]
	ldr r0, _022CE554 @ =ov00_022CE558
	mov r7, r3
	bl ov00_022CD108
	movs r5, r0
	mvneq r0, #0x20
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x28]
	add r1, r7, r8
	tst r0, #1
	ldrsbne r0, [sb, #0x73]
	cmpne r0, #1
	movne r0, #3
	strbne r0, [r5, #0xd]
	moveq r0, #0
	strbeq r0, [r5, #0xd]
	ldr r3, [r4, #0xfc]
	ldr r2, [r4, #0xf8]
	add r0, r3, r7
	cmp r1, r2
	str r0, [r5, #0x10]
	bge _022CE46C
	str r8, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r7, r1
	str r0, [r5, #0x1c]
	b _022CE498
_022CE46C:
	sub r0, r2, r7
	str r0, [r5, #0x14]
	str r3, [r5, #0x18]
	ldr r0, [r5, #0x14]
	sub r7, r8, r0
	str r7, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	mov r2, r7
	add r0, r6, r0
	bl FUN_0207C4C8
_022CE498:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r6
	bl FUN_0207C4C8
	add r0, r4, #0x100
	ldrh r6, [r0]
	strh r7, [r5, #0x20]
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
	ldrsb r0, [sb, #0x73]
	cmp r0, #1
	bne _022CE528
	ldrh r0, [sb, #0x74]
	cmp r0, #0
	bne _022CE4E4
	bl ov00_022CB04C
	strh r0, [sb, #0x74]
	ldrh r0, [sb, #0x74]
	strh r0, [sb, #0xa]
_022CE4E4:
	ldrh r0, [sb, #0x74]
	strh r0, [r5, #0x24]
	ldr r1, [sb, #0x78]
	cmp r1, #0
	beq _022CE504
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022CE518
_022CE504:
	ldr r1, [sp, #0x24]
	ldrh r0, [sp, #0x20]
	str r1, [r5, #0x28]
	strh r0, [r5, #0x26]
	b _022CE530
_022CE518:
	str r1, [r5, #0x28]
	ldrh r0, [sb, #0x76]
	strh r0, [r5, #0x26]
	b _022CE530
_022CE528:
	mov r0, #0
	str r0, [r5, #0x28]
_022CE530:
	ldr r0, [r4, #0x10c]
	mov r1, r5
	bl ov00_022CD260
	cmp r0, #0
	addne r0, r4, #0x100
	movne r8, #0
	strhne r6, [r0]
	mov r0, r8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022CE554: .4byte ov00_022CE558
	arm_func_end ov00_022CE3E4

	arm_func_start ov00_022CE558
ov00_022CE558: @ 0x022CE558
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr r5, [sb, #4]
	mov r7, #0
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	ldr r6, [r5, #0x68]
	cmp r0, #0
	cmpne r0, #4
	movne r1, r7
	cmp r1, #0
	beq _022CE594
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	beq _022CE668
_022CE594:
	ldr r2, [sb, #0x28]
	cmp r2, #0
	beq _022CE5AC
	ldrh r0, [sb, #0x24]
	ldrh r1, [sb, #0x26]
	bl ov00_022CB190
_022CE5AC:
	ldrsb r1, [r5, #0x73]
	mov r0, #1
	ldr r4, [r5, #0x4c]
	cmp r1, #0
	cmpne r1, #4
	movne r0, #0
	cmp r0, #0
	movne r8, #0x36
	moveq r8, #0x2a
	cmp r1, #0
	cmpne r1, #4
	ldrne r0, [r5, #0x48]
	subne sl, r0, r8
	bne _022CE5F4
	ldr r0, [r5, #0x48]
	sub r0, r0, r8
	bl ov00_022CE688
	mov sl, r0
_022CE5F4:
	mov r1, sl
	mov r2, sb
	add r0, r4, r8
	bl ov00_022CE72C
	mov r1, r0
	cmp r1, #0
	ble _022CE66C
	add r0, r4, r8
	bl ov00_022CBA58
	cmp r0, #0
	bgt _022CE660
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CE658
	ldrsh r0, [r5, #0x70]
	bic r0, r0, #0xe
	strh r0, [r5, #0x70]
	ldrsh r0, [r5, #0x70]
	orr r0, r0, #0x80
	strh r0, [r5, #0x70]
	bl ov00_022CB3F8
_022CE658:
	mvn r7, #0x4b
	b _022CE66C
_022CE660:
	add r7, r7, r0
	b _022CE5F4
_022CE668:
	mvn r7, #0x4b
_022CE66C:
	ldrh r2, [sb, #0x20]
	add r1, r6, #0x100
	add r0, r6, #0x104
	strh r2, [r1, #2]
	bl FUN_020798D8
	mov r0, r7
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov00_022CE558

	arm_func_start ov00_022CE688
ov00_022CE688: @ 0x022CE688
	push {r3, r4, r5, lr}
	ldr r1, _022CE724 @ =0x022B966C
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r5, [r0, #0xa4]
	bl FUN_0207B7E4
	cmp r5, #0
	beq _022CE6EC
	ldrh r3, [r5, #0x2e]
	cmp r3, #0
	ldrhne r2, [r5, #0x2c]
	cmpne r2, #0
	beq _022CE6DC
	ldr r1, _022CE728 @ =0x023268D0
	cmp r3, r2
	ldr r1, [r1, #0x24]
	movgt r3, r2
	cmp r3, r1
	movgt r3, r1
	lsl r5, r3, #1
	b _022CE6F8
_022CE6DC:
	ldr r1, _022CE728 @ =0x023268D0
	ldr r1, [r1, #0x24]
	lsl r5, r1, #1
	b _022CE6F8
_022CE6EC:
	ldr r1, _022CE728 @ =0x023268D0
	ldr r1, [r1, #0x24]
	lsl r5, r1, #1
_022CE6F8:
	bl FUN_0207B7F8
	cmp r5, #0
	ble _022CE71C
	mov r0, r4
	mov r1, r5
	bl FUN_0208FEA4
	cmp r0, #0
	mulgt r0, r5, r0
	popgt {r3, r4, r5, pc}
_022CE71C:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CE724: .4byte 0x022B966C
_022CE728: .4byte 0x023268D0
	arm_func_end ov00_022CE688

	arm_func_start ov00_022CE72C
ov00_022CE72C: @ 0x022CE72C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r4, [r6, #0x14]
	ldr r5, [r6, #0x1c]
	cmp r4, r1
	mov r7, r0
	movgt r4, r1
	movgt r5, #0
	bgt _022CE75C
	sub r0, r1, r4
	cmp r5, r0
	movgt r5, r0
_022CE75C:
	cmp r4, #0
	ble _022CE78C
	ldr r0, [r6, #0x10]
	mov r1, r7
	mov r2, r4
	bl FUN_0207C4C8
	ldr r0, [r6, #0x10]
	add r0, r0, r4
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	sub r0, r0, r4
	str r0, [r6, #0x14]
_022CE78C:
	cmp r5, #0
	ble _022CE7BC
	ldr r0, [r6, #0x18]
	mov r2, r5
	add r1, r7, r4
	bl FUN_0207C4C8
	ldr r0, [r6, #0x18]
	add r0, r0, r5
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	sub r0, r0, r5
	str r0, [r6, #0x1c]
_022CE7BC:
	add r0, r4, r5
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CE72C

	arm_func_start ov00_022CE7C4
ov00_022CE7C4: @ 0x022CE7C4
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov00_022CF154
	cmp r0, #0
	mvnne r0, #0x1b
	popne {r3, r4, r5, pc}
	cmp r4, #0
	mov r1, #0
	beq _022CE7F4
	ldrsh r0, [r4, #0x70]
	tst r0, #1
	movne r1, #1
_022CE7F4:
	cmp r1, #0
	mvneq r0, #0x26
	popeq {r3, r4, r5, pc}
	ldrsh r0, [r4, #0x70]
	tst r0, #4
	beq _022CE818
	ldrsh r0, [r4, #0x70]
	tst r0, #8
	beq _022CE820
_022CE818:
	mvn r0, #0x37
	pop {r3, r4, r5, pc}
_022CE820:
	ldrsh r0, [r4, #0x70]
	orr r0, r0, #8
	strh r0, [r4, #0x70]
	ldr r5, [r4, #0x68]
	cmp r5, #0
	ldrne r1, [r5, #0x10c]
	cmpne r1, #0
	beq _022CE864
	ldrsb r2, [r4, #0x72]
	ldr r0, _022CE86C @ =ov00_022CE870
	bl ov00_022CD108
	movs r1, r0
	mvneq r0, #0x20
	popeq {r3, r4, r5, pc}
	ldr r0, [r5, #0x10c]
	bl ov00_022CD260
	pop {r3, r4, r5, pc}
_022CE864:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CE86C: .4byte ov00_022CE870
	arm_func_end ov00_022CE7C4

	arm_func_start ov00_022CE870
ov00_022CE870: @ 0x022CE870
	push {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #1
	ldrsb r0, [r0, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CE898
	bl ov00_022CB3BC
_022CE898:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022CE870

	arm_func_start ov00_022CE8A0
ov00_022CE8A0: @ 0x022CE8A0
	push {r4, lr}
	movs r4, r0
	bmi _022CE8CC
	bl ov00_022CF154
	cmp r0, #0
	beq _022CE8CC
	mov r0, r4
	bl ov00_022CF188
	cmp r0, #0
	moveq r0, #1
	popeq {r4, pc}
_022CE8CC:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022CE8A0

	arm_func_start ov00_022CE8D4
ov00_022CE8D4: @ 0x022CE8D4
	push {r4, lr}
	mov r4, r0
	cmp r4, #0
	mvnle r0, #0x1b
	pople {r4, pc}
	bl ov00_022CF188
	cmp r0, #0
	mvnne r0, #0x19
	popne {r4, pc}
	mov r0, r4
	bl ov00_022CF154
	cmp r0, #0
	movne r0, #0
	popne {r4, pc}
	cmp r4, #0
	mov r1, #0
	beq _022CE924
	ldrsh r0, [r4, #0x70]
	tst r0, #1
	movne r1, #1
_022CE924:
	cmp r1, #0
	mvneq r0, #0x26
	popeq {r4, pc}
	ldrsh r0, [r4, #0x70]
	tst r0, #0x10
	mvnne r0, #0x19
	popne {r4, pc}
	ldrsh r0, [r4, #0x70]
	mov r1, #1
	orr r0, r0, #0x18
	strh r0, [r4, #0x70]
	ldrsb r0, [r4, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CE974
	ldr r0, [r4, #0x68]
	mov r1, #0
	bl ov00_022CD17C
_022CE974:
	ldr r0, _022CE9A0 @ =ov00_022CE9A4
	mov r1, r4
	mov r2, #1
	bl ov00_022CD108
	mov r1, r0
	mov r2, #0
	mov r0, r4
	str r2, [r1, #8]
	bl ov00_022CD1C8
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022CE9A0: .4byte ov00_022CE9A4
	arm_func_end ov00_022CE8D4

	arm_func_start ov00_022CE9A4
ov00_022CE9A4: @ 0x022CE9A4
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	mov r1, #1
	ldrsb r0, [r4, #0x73]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CE9E0
	ldr r0, [r4, #0x68]
	add r0, r0, #0x20
	bl FUN_02079800
	bl ov00_022CB3BC
	bl ov00_022CB3F8
	bl ov00_022CB224
_022CE9E0:
	bl ov00_022CB14C
	ldrsh r0, [r4, #0x70]
	mov r1, #0
	bic r0, r0, #6
	strh r0, [r4, #0x70]
	ldrsb r0, [r4, #0x73]
	cmp r0, #2
	ldreq r0, [r4, #0x68]
	ldrne r0, [r4, #0x64]
	bl ov00_022CD17C
	bl FUN_0207B7E4
	mov r5, r0
	mov r0, r4
	bl ov00_022CF0DC
	mov r0, r4
	bl ov00_022CF0C4
	mov r0, r5
	bl FUN_0207B7F8
	ldrsh r1, [r4, #0x70]
	mov r0, #0
	orr r1, r1, #0x20
	strh r1, [r4, #0x70]
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CE9A4

	arm_func_start ov00_022CEA3C
ov00_022CEA3C: @ 0x022CEA3C
	push {r4, r5, r6, lr}
	movs r4, r0
	popeq {r4, r5, r6, pc}
	mov r0, #0
	strh r0, [r4, #0x70]
	ldrsb r2, [r4, #0x73]
	mov r1, #1
	cmp r2, #0
	cmpne r2, #4
	movne r1, r0
	cmp r1, #0
	beq _022CEA80
	ldr r0, [r4, #0x68]
	bl ov00_022CEB3C
	ldr r0, [r4, #0x64]
	bl ov00_022CEB3C
	b _022CEB00
_022CEA80:
	cmp r2, #1
	bne _022CEAF0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x104]
	cmp r0, #0
	beq _022CEAB8
	ldr r5, _022CEB38 @ =0x02318868
_022CEA9C:
	ldr r1, [r5]
	ldr r6, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r6
	cmp r6, #0
	bne _022CEA9C
_022CEAB8:
	ldr r0, [r4, #0x64]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #8]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x100]
	ldr r0, [r4, #0x64]
	str r1, [r0, #0x104]
	ldr r0, [r4, #0x64]
	add r0, r0, #0x10c
	bl FUN_020798D8
	ldr r0, [r4, #0x64]
	bl ov00_022CEB3C
	b _022CEB00
_022CEAF0:
	cmp r2, #2
	bne _022CEB00
	ldr r0, [r4, #0x68]
	bl ov00_022CEB3C
_022CEB00:
	bl FUN_0207B7E4
	mov r5, r0
	mov r0, r4
	bl ov00_022CF0DC
	mov r0, r4
	bl ov00_022CF13C
	ldr r1, _022CEB38 @ =0x02318868
	mov r0, r4
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	bl FUN_0207B7F8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CEB38: .4byte 0x02318868
	arm_func_end ov00_022CEA3C

	arm_func_start ov00_022CEB3C
ov00_022CEB3C: @ 0x022CEB3C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	movs sb, r0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, sb, #0x20
	bl FUN_02079800
	bl FUN_0207B7E4
	mov r8, r0
	bl FUN_02079C14
	add r1, sp, #0
	mov r0, sb
	mov r2, #0
	bl FUN_02079E74
	cmp r0, #0
	beq _022CEBC8
	mov r6, #0
	mvn r7, #0xa
	add r5, sp, #0
	mov r4, r6
_022CEB84:
	ldr r0, [sp]
	cmp r0, #0
	beq _022CEBB0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _022CEBA8
	mov r1, r7
	mov r2, r6
	bl FUN_02079DE0
_022CEBA8:
	ldr r0, [sp]
	bl ov00_022CD148
_022CEBB0:
	mov r0, sb
	mov r1, r5
	mov r2, r4
	bl FUN_02079E74
	cmp r0, #0
	bne _022CEB84
_022CEBC8:
	bl FUN_02079C48
	bl FUN_02079990
	mov r0, r8
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022CEB3C

	arm_func_start ov00_022CEBDC
ov00_022CEBDC: @ 0x022CEBDC
	push {r3, r4, r5, lr}
	bl FUN_0207B7E4
	ldr r4, _022CEC14 @ =0x02326930
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _022CEC08
_022CEBF8:
	bl ov00_022CEA3C
	ldr r0, [r4]
	cmp r0, #0
	bne _022CEBF8
_022CEC08:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CEC14: .4byte 0x02326930
	arm_func_end ov00_022CEBDC

	arm_func_start ov00_022CEC18
ov00_022CEC18: @ 0x022CEC18
	push {r3, r4, r5, lr}
	ldr r1, _022CECAC @ =0x023268C4
	ldr r0, [r1]
	cmp r0, #0
	ldreq r0, _022CECB0 @ =0x023250C8
	ldreq r0, [r0]
	streq r0, [r1]
	bl ov00_022CED64
	mvn r4, #0x19
	cmp r0, r4
	bne _022CEC5C
	mov r5, #0x64
_022CEC48:
	mov r0, r5
	bl FUN_02079B14
	bl ov00_022CED64
	cmp r0, r4
	beq _022CEC48
_022CEC5C:
	bl ov00_022CD098
	movs r4, r0
	bmi _022CECA4
	bl ov00_022C8508
	mov r0, #0
	bl ov00_022C84F8
	ldr r0, _022CECB4 @ =0x02318868
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _022CEC98
	ldr r0, _022CECB8 @ =0x023268D0
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x1c]
	blx r1
_022CEC98:
	ldr r0, _022CECB4 @ =0x02318868
	mov r1, #0
	str r1, [r0]
_022CECA4:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CECAC: .4byte 0x023268C4
_022CECB0: .4byte 0x023250C8
_022CECB4: .4byte 0x02318868
_022CECB8: .4byte 0x023268D0
	arm_func_end ov00_022CEC18

	arm_func_start ov00_022CECBC
ov00_022CECBC: @ 0x022CECBC
	push {r4, r5, r6, lr}
	ldr r4, _022CED58 @ =0x023268CC
	ldr r5, _022CED5C @ =0x0232692C
_022CECC8:
	bl FUN_0207B7E4
	ldr r6, [r5]
	cmp r6, #0
	beq _022CECFC
	ldr r2, [r4]
_022CECDC:
	cmp r6, r2
	beq _022CECF0
	ldrsh r1, [r6, #0x70]
	tst r1, #0x10
	beq _022CECFC
_022CECF0:
	ldr r6, [r6, #0x7c]
	cmp r6, #0
	bne _022CECDC
_022CECFC:
	bl FUN_0207B7F8
	cmp r6, #0
	beq _022CED14
	mov r0, r6
	bl ov00_022CE8D4
	b _022CECC8
_022CED14:
	ldr r0, _022CED5C @ =0x0232692C
	ldr r1, [r0]
	cmp r1, #0
	beq _022CED3C
	ldr r0, _022CED58 @ =0x023268CC
	ldr r0, [r0]
	cmp r1, r0
	ldreq r0, [r1, #0x7c]
	cmpeq r0, #0
	bne _022CED50
_022CED3C:
	ldr r0, _022CED60 @ =0x02326930
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
_022CED50:
	mvn r0, #0x19
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CED58: .4byte 0x023268CC
_022CED5C: .4byte 0x0232692C
_022CED60: .4byte 0x02326930
	arm_func_end ov00_022CECBC

	arm_func_start ov00_022CED64
ov00_022CED64: @ 0x022CED64
	push {r4, lr}
	ldr r0, _022CEDDC @ =0x023268CC
	ldr r0, [r0]
	cmp r0, #0
	beq _022CEDB8
	bl ov00_022CECBC
	movs r4, r0
	bne _022CEDB0
	ldr r0, _022CEDDC @ =0x023268CC
	ldr r0, [r0]
	bl ov00_022CE8D4
	ldr r0, _022CEDDC @ =0x023268CC
	ldr r0, [r0]
	bl ov00_022CE8A0
	cmp r0, #0
	ldrne r0, _022CEDDC @ =0x023268CC
	movne r1, #0
	strne r1, [r0]
	mvn r4, #0x19
_022CEDB0:
	bl ov00_022CEBDC
	b _022CEDD4
_022CEDB8:
	bl ov00_022C84A8
	cmp r0, #0
	mvneq r4, #0x19
	beq _022CEDD4
	mov r0, #0
	bl ov00_022D71E4
	mov r4, #0
_022CEDD4:
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022CEDDC: .4byte 0x023268CC
	arm_func_end ov00_022CED64

	arm_func_start ov00_022CEDE0
ov00_022CEDE0: @ 0x022CEDE0
	push {r4, r5, lr}
	sub sp, sp, #0x64
	movs r5, r0
	addeq sp, sp, #0x64
	moveq r0, #0
	popeq {r4, r5, pc}
	ldr r1, _022CEE84 @ =0x02318868
	mov r0, #0xfd0
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
	movs r4, r0
	addeq sp, sp, #0x64
	moveq r0, #0
	popeq {r4, r5, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x64
	bl FUN_0207C40C
	add r0, r4, #0x368
	add r2, r0, #0x800
	ldr r3, _022CEE88 @ =0x00000B68
	ldr r1, _022CEE8C @ =0x00000466
	add r0, sp, #0
	str r4, [sp, #0x40]
	str r3, [sp, #0x3c]
	str r2, [sp, #0x4c]
	str r1, [sp, #0x48]
	bl ov00_022CB138
	mov r0, r5
	bl ov00_022CCC58
	mov r5, r0
	bl ov00_022CB14C
	ldr r1, _022CEE84 @ =0x02318868
	mov r0, r4
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	add sp, sp, #0x64
	pop {r4, r5, pc}
	.align 2, 0
_022CEE84: .4byte 0x02318868
_022CEE88: .4byte 0x00000B68
_022CEE8C: .4byte 0x00000466
	arm_func_end ov00_022CEDE0

	arm_func_start ov00_022CEE90
ov00_022CEE90: @ 0x022CEE90
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl FUN_0207B7E4
	ldr r1, _022CEED8 @ =0x023250D8
	mov r5, r0
	ldm r1, {r6, r7}
	mov r2, #0
	str r2, [r1]
	mov r0, r4
	str r2, [r1, #4]
	bl ov00_022CCC58
	ldr r1, _022CEED8 @ =0x023250D8
	mov r4, r0
	mov r0, r5
	stm r1, {r6, r7}
	bl FUN_0207B7F8
	mov r0, r4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022CEED8: .4byte 0x023250D8
	arm_func_end ov00_022CEE90

	arm_func_start ov00_022CEEDC
ov00_022CEEDC: @ 0x022CEEDC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022CEF10
	cmp r0, #0
	mvneq r0, #0x26
	popeq {r3, r4, r5, pc}
	ldr r1, _022CEF0C @ =0x023250D8
	mov r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CEF0C: .4byte 0x023250D8
	arm_func_end ov00_022CEEDC

	arm_func_start ov00_022CEF10
ov00_022CEF10: @ 0x022CEF10
	push {r3, lr}
	ldr r0, _022CEF6C @ =0x023250C8
	ldr r2, [r0]
	cmp r2, #0
	bne _022CEF50
	ldr r0, _022CEF70 @ =0x023268C8
	ldr r0, [r0]
	and r0, r0, #3
	cmp r0, #1
	bne _022CEF60
	bl FUN_0207B848
	cmp r0, #0x12
	beq _022CEF60
	mov r0, #0xa
	bl FUN_02079B14
	b _022CEF60
_022CEF50:
	ldr r0, _022CEF74 @ =0x023268C4
	ldr r1, [r0]
	cmp r1, #0
	streq r2, [r0]
_022CEF60:
	ldr r0, _022CEF6C @ =0x023250C8
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
_022CEF6C: .4byte 0x023250C8
_022CEF70: .4byte 0x023268C8
_022CEF74: .4byte 0x023268C4
	arm_func_end ov00_022CEF10

	arm_func_start ov00_022CEF78
ov00_022CEF78: @ 0x022CEF78
	push {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r0
	bl ov00_022CF154
	cmp r0, #0
	orrne r4, r4, #0x80
	bne _022CF040
	ldrsh r0, [r5, #0x70]
	tst r0, #0x40
	ldrsb r0, [r5, #0x73]
	orrne r4, r4, #0x20
	cmp r0, #1
	beq _022CEFB8
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	beq _022CEFE8
_022CEFB8:
	bl FUN_0207B7E4
	mov r6, r0
	mov r0, r5
	bl ov00_022CF048
	cmp r0, #0
	mov r0, r5
	orrgt r4, r4, #1
	bl ov00_022CE3C0
	cmp r0, #0
	mov r0, r6
	orrgt r4, r4, #8
	bl FUN_0207B7F8
_022CEFE8:
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022CF040
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	ldrbne r0, [r5, #8]
	cmpne r0, #4
	beq _022CF028
	tst r4, #1
	ldrsheq r0, [r5, #0x70]
	biceq r0, r0, #6
	strheq r0, [r5, #0x70]
_022CF028:
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	bne _022CF040
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	orreq r4, r4, #0x40
_022CF040:
	mov r0, r4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CEF78

	arm_func_start ov00_022CF048
ov00_022CF048: @ 0x022CF048
	ldr r2, [r0, #0x64]
	mov r3, #0
	cmp r2, #0
	beq _022CF088
	ldrsb r1, [r0, #0x73]
	cmp r1, #1
	bne _022CF074
	ldr r0, [r2, #0x104]
	cmp r0, #0
	ldrhne r3, [r0, #4]
	b _022CF088
_022CF074:
	cmp r1, #0
	cmpne r1, #4
	ldreq r1, [r0, #0x44]
	ldreq r0, [r2, #0xf8]
	subeq r3, r1, r0
_022CF088:
	mov r0, r3
	bx lr
	arm_func_end ov00_022CF048

	arm_func_start ov00_022CF090
ov00_022CF090: @ 0x022CF090
	add r0, r0, #3
	bic r0, r0, #3
	bx lr
	arm_func_end ov00_022CF090

	arm_func_start ov00_022CF09C
ov00_022CF09C: @ 0x022CF09C
	ldr ip, _022CF0AC @ =FUN_022CF0B4
	mov r1, r0
	ldr r0, _022CF0B0 @ =0x0232692C
	bx ip
	.align 2, 0
_022CF0AC: .4byte FUN_022CF0B4
_022CF0B0: .4byte 0x0232692C
	arm_func_end ov00_022CF09C

	arm_func_start FUN_022CF0B4
FUN_022CF0B4: @ 0x022CF0B4
	ldr r2, [r0]
	str r2, [r1, #0x7c]
	str r1, [r0]
	bx lr
	arm_func_end FUN_022CF0B4

	arm_func_start ov00_022CF0C4
ov00_022CF0C4: @ 0x022CF0C4
	ldr ip, _022CF0D4 @ =FUN_022CF0B4
	mov r1, r0
	ldr r0, _022CF0D8 @ =0x02326930
	bx ip
	.align 2, 0
_022CF0D4: .4byte FUN_022CF0B4
_022CF0D8: .4byte 0x02326930
	arm_func_end ov00_022CF0C4

	arm_func_start ov00_022CF0DC
ov00_022CF0DC: @ 0x022CF0DC
	ldr ip, _022CF0EC @ =FUN_022CF0F4
	mov r1, r0
	ldr r0, _022CF0F0 @ =0x0232692C
	bx ip
	.align 2, 0
_022CF0EC: .4byte FUN_022CF0F4
_022CF0F0: .4byte 0x0232692C
	arm_func_end ov00_022CF0DC

	arm_func_start FUN_022CF0F4
FUN_022CF0F4: @ 0x022CF0F4
	push {r4, lr}
	mov r4, r1
	bl ov00_022CF110
	cmp r0, #0
	ldrne r1, [r4, #0x7c]
	strne r1, [r0]
	pop {r4, pc}
	arm_func_end FUN_022CF0F4

	arm_func_start ov00_022CF110
ov00_022CF110: @ 0x022CF110
	ldr r2, [r0]
	cmp r2, #0
	beq _022CF134
_022CF11C:
	cmp r2, r1
	bxeq lr
	add r0, r2, #0x7c
	ldr r2, [r2, #0x7c]
	cmp r2, #0
	bne _022CF11C
_022CF134:
	mov r0, #0
	bx lr
	arm_func_end ov00_022CF110

	arm_func_start ov00_022CF13C
ov00_022CF13C: @ 0x022CF13C
	ldr ip, _022CF14C @ =FUN_022CF0F4
	mov r1, r0
	ldr r0, _022CF150 @ =0x02326930
	bx ip
	.align 2, 0
_022CF14C: .4byte FUN_022CF0F4
_022CF150: .4byte 0x02326930
	arm_func_end ov00_022CF13C

	arm_func_start ov00_022CF154
ov00_022CF154: @ 0x022CF154
	push {r3, lr}
	mov r1, r0
	cmp r1, #0
	ble _022CF174
	ldr r0, _022CF184 @ =0x0232692C
	bl ov00_022CF110
	cmp r0, #0
	bne _022CF17C
_022CF174:
	mov r0, #1
	pop {r3, pc}
_022CF17C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022CF184: .4byte 0x0232692C
	arm_func_end ov00_022CF154

	arm_func_start ov00_022CF188
ov00_022CF188: @ 0x022CF188
	push {r3, lr}
	mov r1, r0
	ldr r0, _022CF1A8 @ =0x02326930
	bl ov00_022CF110
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022CF1A8: .4byte 0x02326930
	arm_func_end ov00_022CF188

	arm_func_start ov00_022CF1AC
ov00_022CF1AC: @ 0x022CF1AC
	push {r3, lr}
	cmp r1, #1
	bne _022CF1C4
	ldr r0, _022CF1D0 @ =0x02318888
	bl ov00_022CD338
	pop {r3, pc}
_022CF1C4:
	ldr r0, _022CF1D4 @ =0x02318870
	bl ov00_022CD338
	pop {r3, pc}
	.align 2, 0
_022CF1D0: .4byte 0x02318888
_022CF1D4: .4byte 0x02318870
	arm_func_end ov00_022CF1AC

	arm_func_start ov00_022CF1D8
ov00_022CF1D8: @ 0x022CF1D8
	ldrh r1, [r1, #2]
	ldr ip, _022CF200 @ =FUN_022CD690
	asr r2, r1, #8
	lsl r1, r1, #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bx ip
	.align 2, 0
_022CF200: .4byte FUN_022CD690
	arm_func_end ov00_022CF1D8

	arm_func_start ov00_022CF204
ov00_022CF204: @ 0x022CF204
	push {r4, lr}
	ldrh r2, [r1, #2]
	ldr lr, [r1, #4]
	asr r4, r2, #8
	lsl r1, r2, #8
	lsr r3, lr, #0x18
	lsr r2, lr, #8
	lsl ip, lr, #8
	lsl lr, lr, #0x18
	and r4, r4, #0xff
	and r1, r1, #0xff00
	orr r1, r4, r1
	lsl r1, r1, #0x10
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	lsr r1, r1, #0x10
	orr r2, r3, r2
	bl ov00_022CD700
	pop {r4, pc}
	arm_func_end ov00_022CF204

	arm_func_start ov00_022CF260
ov00_022CF260: @ 0x022CF260
	push {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r3, ip
	bl ov00_022CD8C4
	add sp, sp, #8
	pop {r3, pc}
	arm_func_end ov00_022CF260

	arm_func_start ov00_022CF284
ov00_022CF284: @ 0x022CF284
	push {r3, lr}
	sub sp, sp, #0x10
	add ip, sp, #0xc
	str ip, [sp]
	str r3, [sp, #4]
	add r3, sp, #8
	bl ov00_022CD8C4
	cmp r0, #0
	addlt sp, sp, #0x10
	poplt {r3, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	addeq sp, sp, #0x10
	popeq {r3, pc}
	ldrh r2, [sp, #8]
	asr r3, r2, #8
	lsl r2, r2, #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r1, #2]
	ldr lr, [sp, #0xc]
	lsr r3, lr, #0x18
	lsr r2, lr, #8
	lsl ip, lr, #8
	lsl lr, lr, #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	orr r2, r3, r2
	str r2, [r1, #4]
	add sp, sp, #0x10
	pop {r3, pc}
	arm_func_end ov00_022CF284

	arm_func_start ov00_022CF314
ov00_022CF314: @ 0x022CF314
	push {r3, lr}
	sub sp, sp, #8
	mov ip, #0
	str ip, [sp]
	str r3, [sp, #4]
	mov r3, ip
	bl ov00_022CE124
	add sp, sp, #8
	pop {r3, pc}
	arm_func_end ov00_022CF314

	arm_func_start ov00_022CF338
ov00_022CF338: @ 0x022CF338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x20]
	cmp r5, #0
	moveq r5, #0
	moveq r4, r5
	beq _022CF3A4
	ldrh r4, [r5, #2]
	ldr r6, [r5, #4]
	asr r7, r4, #8
	lsl ip, r4, #8
	lsr r4, r6, #0x18
	lsr lr, r6, #8
	lsl r5, r6, #8
	lsl r6, r6, #0x18
	and r7, r7, #0xff
	and ip, ip, #0xff00
	orr r7, r7, ip
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	lsl ip, r7, #0x10
	orr r4, r5, r4
	and r6, r6, #0xff000000
	lsr r5, ip, #0x10
	orr r4, r6, r4
_022CF3A4:
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, r5
	bl ov00_022CE124
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CF338

	arm_func_start ov00_022CE7C4
ov00_022CE7C4: @ 0x022CF3BC
	ldr ip, _022CF3C4 @ =ov00_022CE7C4
	bx ip
	.align 2, 0
_022CF3C4: .4byte ov00_022CE7C4
	arm_func_end ov00_022CE7C4

	arm_func_start ov00_022CE8D4
ov00_022CE8D4: @ 0x022CF3C8
	ldr ip, _022CF3D0 @ =ov00_022CE8D4
	bx ip
	.align 2, 0
_022CF3D0: .4byte ov00_022CE8D4
	arm_func_end ov00_022CE8D4

	arm_func_start ov00_022CF3D4
ov00_022CF3D4: @ 0x022CF3D4
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022CEDE0
	movs r4, r0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022CF47C @ =0x023269BC
	ldr r2, _022CF480 @ =0x00000101
	mov r1, #0
	bl FUN_0207C40C
	ldr r0, _022CF47C @ =0x023269BC
	ldr r2, _022CF480 @ =0x00000101
	mov r1, r5
	bl FUN_02085244
	lsr r3, r4, #0x18
	lsr r2, r4, #8
	lsl ip, r4, #8
	lsl lr, r4, #0x18
	ldr r4, _022CF47C @ =0x023269BC
	ldr r1, _022CF484 @ =0x02326934
	mov r0, #0
	str r4, [r1, #0x20]
	str r0, [r1, #0x24]
	mov r4, #2
	strh r4, [r1, #0x28]
	mov r4, #4
	ldr r5, _022CF488 @ =0x0232694C
	strh r4, [r1, #0x2a]
	and r3, r3, #0xff
	and r2, r2, #0xff00
	ldr r4, _022CF48C @ =0x02326934
	str r5, [r1, #0x2c]
	str r4, [r1, #0x18]
	and ip, ip, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, ip, r2
	str r0, [r1, #0x1c]
	orr r2, r3, r2
	ldr r0, _022CF490 @ =0x02326954
	str r2, [r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CF47C: .4byte 0x023269BC
_022CF480: .4byte 0x00000101
_022CF484: .4byte 0x02326934
_022CF488: .4byte 0x0232694C
_022CF48C: .4byte 0x02326934
_022CF490: .4byte 0x02326954
	arm_func_end ov00_022CF3D4

	arm_func_start ov00_022CF494
ov00_022CF494: @ 0x022CF494
	push {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r1
	mvneq r0, #0x26
	popeq {r4, r5, r6, pc}
	bl ov00_022CEF10
	cmp r5, #0
	ldrhne r1, [r5, #0x74]
	lsr r2, r0, #0x18
	mov r6, #8
	moveq r1, #0
	cmp r0, #0
	moveq r1, #0
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	asr r5, r3, #8
	lsl lr, r3, #8
	strb r6, [r4]
	mov r6, #2
	lsr r1, r0, #8
	lsl r3, r0, #8
	lsl ip, r0, #0x18
	and r0, r1, #0xff00
	and r2, r2, #0xff
	orr r0, r2, r0
	and r1, r3, #0xff0000
	and r5, r5, #0xff
	and lr, lr, #0xff00
	strb r6, [r4, #1]
	orr r3, r5, lr
	and r2, ip, #0xff000000
	orr r0, r1, r0
	strh r3, [r4, #2]
	orr r0, r2, r0
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022CF494

	arm_func_start ov00_022CF528
ov00_022CF528: @ 0x022CF528
	push {r3, lr}
	bl ov00_022CEF10
	lsr r2, r0, #0x18
	lsr r1, r0, #8
	lsl r3, r0, #8
	lsl ip, r0, #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	pop {r3, pc}
	arm_func_end ov00_022CF528

	arm_func_start ov00_022CF560
ov00_022CF560: @ 0x022CF560
	push {r3, r4, r5, lr}
	ldr ip, [r1]
	ldr r0, [r0]
	lsr r2, ip, #0x18
	lsr r4, r0, #0x18
	lsr lr, r0, #8
	lsr r1, ip, #8
	lsl r5, r0, #8
	lsl r3, ip, #8
	lsl r0, r0, #0x18
	lsl ip, ip, #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r2, r2, #0xff
	and r1, r1, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r3, r3, #0xff0000
	orr r1, r2, r1
	and lr, r0, #0xff000000
	orr r0, r5, r4
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orr r0, lr, r0
	orr r1, r2, r1
	bl ov00_022CEEDC
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CF560

	arm_func_start ov00_022CF5CC
ov00_022CF5CC: @ 0x022CF5CC
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	cmp r1, #3
	beq _022CF5EC
	cmp r1, #4
	beq _022CF600
	b _022CF614
_022CF5EC:
	ldrsb r0, [r0, #0x72]
	cmp r0, #1
	moveq r0, #0
	movne r0, #4
	bx lr
_022CF600:
	tst r2, #4
	movne r1, #0
	strbne r1, [r0, #0x72]
	moveq r1, #1
	strbeq r1, [r0, #0x72]
_022CF614:
	mov r0, #0
	bx lr
	arm_func_end ov00_022CF5CC

	arm_func_start ov00_022CF61C
ov00_022CF61C: @ 0x022CF61C
	push {r4, lr}
	ldr r1, _022CF644 @ =0x02326934
	add r4, r0, #4
	ldr r2, [r1, #0xc]
	mov r1, r4
	mov r0, #0
	blx r2
	cmp r0, #0
	strne r4, [r0], #4
	pop {r4, pc}
	.align 2, 0
_022CF644: .4byte 0x02326934
	arm_func_end ov00_022CF61C

	arm_func_start ov00_022CF648
ov00_022CF648: @ 0x022CF648
	push {r3, lr}
	cmp r0, #0
	popeq {r3, pc}
	ldr r1, _022CF670 @ =0x02326934
	ldr r2, [r0, #-4]
	ldr r3, [r1, #4]
	sub r1, r0, #4
	mov r0, #0
	blx r3
	pop {r3, pc}
	.align 2, 0
_022CF670: .4byte 0x02326934
	arm_func_end ov00_022CF648

	arm_func_start ov00_022CF674
ov00_022CF674: @ 0x022CF674
	push {r4, r5, r6, lr}
	ldr r1, [r0, #0xc]
	ldr ip, _022CF7D8 @ =ov00_022CF61C
	cmp r1, #1
	moveq r2, #1
	ldr r1, _022CF7DC @ =0x02326934
	movne r2, #0
	str r2, [r1, #0x40]
	ldr r6, [r0, #0x10]
	ldr r3, _022CF7E0 @ =ov00_022CF648
	lsr r4, r6, #0x18
	lsr r2, r6, #8
	lsl r5, r6, #8
	and r4, r4, #0xff
	and r2, r2, #0xff00
	lsl r6, r6, #0x18
	orr r2, r4, r2
	and r5, r5, #0xff0000
	and r4, r6, #0xff000000
	orr r2, r5, r2
	orr r2, r4, r2
	str r2, [r1, #0x44]
	ldr lr, [r0, #0x14]
	mov r2, #0x40
	lsr r5, lr, #0x18
	lsr r4, lr, #8
	lsl r6, lr, #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	lsl lr, lr, #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x48]
	ldr lr, [r0, #0x18]
	lsr r5, lr, #0x18
	lsr r4, lr, #8
	lsl r6, lr, #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	lsl lr, lr, #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x4c]
	ldr lr, [r0, #0x1c]
	lsr r5, lr, #0x18
	lsr r4, lr, #8
	lsl r6, lr, #8
	and r5, r5, #0xff
	and r4, r4, #0xff00
	lsl lr, lr, #0x18
	orr r4, r5, r4
	and r6, r6, #0xff0000
	and r5, lr, #0xff000000
	orr r4, r6, r4
	orr r4, r5, r4
	str r4, [r1, #0x50]
	ldr r6, [r0, #0x20]
	lsr r4, r6, #0x18
	lsr lr, r6, #8
	lsl r5, r6, #8
	lsl r6, r6, #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r6, r6, #0xff000000
	orr r4, r5, r4
	orr r4, r6, r4
	str r4, [r1, #0x54]
	str ip, [r1, #0x58]
	str r3, [r1, #0x5c]
	ldr r3, [r0, #4]
	str r3, [r1, #0xc]
	ldr r3, [r0, #8]
	str r3, [r1, #4]
	str r2, [r1, #0x60]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x70]
	ldr r2, [r0, #0x30]
	ldr r0, _022CF7E4 @ =0x02326974
	str r2, [r1, #0x74]
	bl ov00_022CCD90
	pop {r4, r5, r6, pc}
	.align 2, 0
_022CF7D8: .4byte ov00_022CF61C
_022CF7DC: .4byte 0x02326934
_022CF7E0: .4byte ov00_022CF648
_022CF7E4: .4byte 0x02326974
	arm_func_end ov00_022CF674

	arm_func_start ov00_022CEC18
ov00_022CEC18: @ 0x022CF7E8
	ldr ip, _022CF7F0 @ =ov00_022CEC18
	bx ip
	.align 2, 0
_022CF7F0: .4byte ov00_022CEC18
	arm_func_end ov00_022CEC18

	arm_func_start ov00_022CF7F4
ov00_022CF7F4: @ 0x022CF7F4
	push {r0, r1, r2, r3}
	push {r3, lr}
	ldr r2, _022CF820 @ =0x023269AC
	add r1, sp, #8
	mov r0, #2
	mov r3, #0x10
	bl ov00_022CF874
	ldr r0, _022CF820 @ =0x023269AC
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022CF820: .4byte 0x023269AC
	arm_func_end ov00_022CF7F4

	arm_func_start ov00_022CF824
ov00_022CF824: @ 0x022CF824
	push {r4, lr}
	mov r4, r1
	bl ov00_022CEE90
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	lsr r2, r0, #0x18
	lsr r1, r0, #8
	lsl r3, r0, #8
	lsl ip, r0, #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	arm_func_end ov00_022CF824

	arm_func_start ov00_022CF874
ov00_022CF874: @ 0x022CF874
	push {r3, r4, lr}
	sub sp, sp, #0x14
	cmp r0, #2
	mov r4, r2
	addne sp, sp, #0x14
	movne r0, #0
	popne {r3, r4, pc}
	cmp r3, #0x10
	addlo sp, sp, #0x14
	movlo r0, #0
	poplo {r3, r4, pc}
	mov r0, r1
	add r1, sp, #0x10
	mov r2, #4
	bl FUN_0207C4C8
	ldr r0, [sp, #0x10]
	add r1, sp, #0xc
	bl ov00_022CF8F8
	ldrb r1, [sp, #0xe]
	ldr r2, _022CF8F4 @ =0x023188B8
	mov r0, r4
	str r1, [sp]
	ldrb r3, [sp, #0xd]
	mov r1, #0x10
	str r3, [sp, #4]
	ldrb r3, [sp, #0xc]
	str r3, [sp, #8]
	ldrb r3, [sp, #0xf]
	bl FUN_0207911C
	mov r0, r4
	add sp, sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_022CF8F4: .4byte 0x023188B8
	arm_func_end ov00_022CF874

	arm_func_start ov00_022CF8F8
ov00_022CF8F8: @ 0x022CF8F8
	lsr r2, r0, #0x18
	strb r2, [r1]
	lsr r2, r0, #0x10
	strb r2, [r1, #1]
	lsr r2, r0, #8
	strb r2, [r1, #2]
	strb r0, [r1, #3]
	bx lr
	arm_func_end ov00_022CF8F8

	arm_func_start ov00_022CF918
ov00_022CF918: @ 0x022CF918
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r2
	mov r8, r3
	mvn r2, #0
	cmp r8, r2
	cmpeq sb, r2
	movne fp, #1
	str r0, [sp]
	mov sl, r1
	moveq fp, #0
_022CF940:
	mov r6, #0
	ldr r4, [sp]
	mov r5, r6
	cmp sl, #0
	bls _022CF980
_022CF954:
	ldrsh r1, [r4, #4]
	ldr r0, [r4]
	orr r7, r1, #0xe0
	bl ov00_022CEF78
	ands r0, r7, r0
	strh r0, [r4, #6]
	add r5, r5, #1
	addne r6, r6, #1
	add r4, r4, #8
	cmp r5, sl
	blo _022CF954
_022CF980:
	cmp r6, #0
	bgt _022CF9C0
	cmp fp, #0
	beq _022CF9A4
	mov r0, #0
	subs r0, r0, sb
	mov r0, #0
	sbcs r0, r0, r8
	bge _022CF9C0
_022CF9A4:
	mov r0, #1
	bl FUN_02079B14
	ldr r0, _022CF9C8 @ =0x0000020B
	subs sb, sb, r0
	mov r0, #0
	sbc r8, r8, r0
	b _022CF940
_022CF9C0:
	mov r0, r6
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022CF9C8: .4byte 0x0000020B
	arm_func_end ov00_022CF918

	arm_func_start ov00_022CF9CC
ov00_022CF9CC: @ 0x022CF9CC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022CF154
	cmp r0, #0
	mvnne r0, #0x1b
	popne {r3, r4, r5, pc}
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	popeq {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _022CFA20
	ldrsh r0, [r5, #0x70]
	tst r0, #1
	movne r1, #1
_022CFA20:
	cmp r1, #0
	mvneq r0, #0x26
	popeq {r3, r4, r5, pc}
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	mvnne r0, #0x1b
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov00_022CFA4C
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022CF9CC

	arm_func_start ov00_022CFA4C
ov00_022CFA4C: @ 0x022CFA4C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _022CFA84 @ =ov00_022CFA88
	mov r1, r5
	mov r2, #1
	bl ov00_022CD108
	movs r1, r0
	mvneq r0, #0x20
	popeq {r3, r4, r5, pc}
	mov r0, r5
	str r4, [r1, #0x10]
	bl ov00_022CD250
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CFA84: .4byte ov00_022CFA88
	arm_func_end ov00_022CFA4C

	arm_func_start ov00_022CFA88
ov00_022CFA88: @ 0x022CFA88
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	ldr r5, [r4, #0x64]
	add r0, r5, #0xe0
	ldr r6, [r5, #0xc4]
	bl FUN_0207A048
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _022CFAC8
	mov r0, #1
	str r1, [r6, #0xc]
	bl ov00_022D2B44
	mov r0, #4
	strb r0, [r4, #0x73]
	b _022CFADC
_022CFAC8:
	mov r0, #0
	strb r0, [r4, #0x73]
	bl ov00_022D2B44
	mov r0, #0
	str r0, [r6, #0xc]
_022CFADC:
	add r0, r5, #0xe0
	bl FUN_0207A0CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022CFA88

	arm_func_start ov00_022CFAEC
ov00_022CFAEC: @ 0x022CFAEC
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl FUN_0207B7E4
	mov r4, #0
	ldr r6, _022CFB7C @ =0x02326AC8
	mov r5, r0
	strb r4, [r7, #0x30]
	mov r8, #0x20
_022CFB0C:
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _022CFB60
	ldr r0, [r6, #0x54]
	cmp r0, #0
	ldrheq r0, [r6, #0x58]
	cmpeq r0, #0
	bne _022CFB60
	mov r0, r6
	mov r2, r8
	add r1, r7, #0x74
	bl FUN_02087348
	cmp r0, #0
	bne _022CFB60
	mov r1, r7
	add r0, r6, #0x20
	mov r2, #0x30
	bl FUN_0207C4C8
	mov r0, #1
	strb r0, [r7, #0x30]
	b _022CFB70
_022CFB60:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #0x5c
	blt _022CFB0C
_022CFB70:
	mov r0, r5
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022CFB7C: .4byte 0x02326AC8
	arm_func_end ov00_022CFAEC

	arm_func_start ov00_022CFB80
ov00_022CFB80: @ 0x022CFB80
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_0207B7E4
	mov r1, #0
	ldr r5, _022CFC1C @ =0x02326AC8
	mov r4, r0
	strb r1, [r8, #0x30]
_022CFBA4:
	ldrb r0, [r5, #0x5a]
	cmp r0, #0
	beq _022CFC00
	ldr r0, [r5, #0x54]
	cmp r0, r7
	ldrheq r0, [r5, #0x58]
	cmpeq r0, r6
	bne _022CFC00
	mov r0, r5
	add r1, r8, #0x74
	mov r2, #0x20
	bl FUN_0207C4C8
	mov r1, r8
	add r0, r5, #0x20
	mov r2, #0x30
	bl FUN_0207C4C8
	bl FUN_0207AE44
	lsr r0, r0, #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r5, #0x50]
	mov r0, #1
	strb r0, [r8, #0x30]
	b _022CFC10
_022CFC00:
	add r1, r1, #1
	cmp r1, #4
	add r5, r5, #0x5c
	blt _022CFBA4
_022CFC10:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022CFC1C: .4byte 0x02326AC8
	arm_func_end ov00_022CFB80

	arm_func_start ov00_022CFC20
ov00_022CFC20: @ 0x022CFC20
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_0207B7E4
	mov r4, r0
	bl FUN_0207AE44
	ldr sb, _022CFD08 @ =0x02326AC8
	lsr r5, r0, #0x10
	mov r2, #0
	mov r0, r2
	mov r3, sb
	orr r5, r5, r1, lsl #16
	mvn ip, #0
_022CFC58:
	ldrb lr, [r3, #0x5a]
	cmp lr, #0
	cmpne r7, #0
	beq _022CFC8C
	ldr r1, [r3, #0x54]
	cmp r7, r1
	bne _022CFC8C
	cmp r6, #0
	beq _022CFC8C
	ldrh r1, [r3, #0x58]
	cmp r6, r1
	moveq sb, r3
	beq _022CFCC8
_022CFC8C:
	cmp r2, ip
	beq _022CFCB8
	cmp lr, #0
	moveq r2, ip
	moveq sb, r3
	beq _022CFCB8
	ldr r1, [r3, #0x50]
	sub r1, r5, r1
	cmp r1, r2
	movhi r2, r1
	movhi sb, r3
_022CFCB8:
	add r0, r0, #1
	cmp r0, #4
	add r3, r3, #0x5c
	blt _022CFC58
_022CFCC8:
	mov r1, sb
	add r0, r8, #0x74
	mov r2, #0x20
	bl FUN_0207C4C8
	mov r0, r8
	add r1, sb, #0x20
	mov r2, #0x30
	bl FUN_0207C4C8
	str r5, [sb, #0x50]
	mov r0, #1
	strb r0, [sb, #0x5a]
	str r7, [sb, #0x54]
	mov r0, r4
	strh r6, [sb, #0x58]
	bl FUN_0207B7F8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022CFD08: .4byte 0x02326AC8
	arm_func_end ov00_022CFC20

	arm_func_start ov00_022CFD0C
ov00_022CFD0C: @ 0x022CFD0C
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl FUN_0207B7E4
	ldr r7, _022CFD70 @ =0x02326AC8
	mov r6, r0
	mov r5, #0
	mov r4, #0x20
_022CFD28:
	ldrb r0, [r7, #0x5a]
	cmp r0, #0
	beq _022CFD54
	mov r0, r7
	mov r2, r4
	add r1, r8, #0x74
	bl FUN_02087348
	cmp r0, #0
	moveq r0, #0
	strbeq r0, [r7, #0x5a]
	beq _022CFD64
_022CFD54:
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x5c
	blt _022CFD28
_022CFD64:
	mov r0, r6
	bl FUN_0207B7F8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022CFD70: .4byte 0x02326AC8
	arm_func_end ov00_022CFD0C

	arm_func_start ov00_022CFD74
ov00_022CFD74: @ 0x022CFD74
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	add r0, sp, #0xc
	bl FUN_02082748
	add r0, sp, #0
	bl FUN_020827F4
	add r0, sp, #0xc
	add r1, sp, #0
	bl FUN_02082FDC
	ldr r1, _022CFDA8 @ =0x386D4380
	add r0, r0, r1
	add sp, sp, #0x1c
	ldm sp!, {pc}
	.align 2, 0
_022CFDA8: .4byte 0x386D4380
	arm_func_end ov00_022CFD74

	arm_func_start ov00_022CFDAC
ov00_022CFDAC: @ 0x022CFDAC
	ldr r0, _022CFDB8 @ =0x023188CC
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_022CFDB8: .4byte 0x023188CC
	arm_func_end ov00_022CFDAC

	arm_func_start ov00_022CFDBC
ov00_022CFDBC: @ 0x022CFDBC
	ldr r1, _022CFDC8 @ =0x023188CC
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_022CFDC8: .4byte 0x023188CC
	arm_func_end ov00_022CFDBC

	arm_func_start ov00_022CFDCC
ov00_022CFDCC: @ 0x022CFDCC
	push {r3, r4, r5, lr}
	ldr r0, _022CFE10 @ =0x023188CC
	ldr r0, [r0, #4]
	cmp r0, #0x20
	mvnhs r0, #0
	pophs {r3, r4, r5, pc}
	ldr r0, _022CFE14 @ =0x022B966C
	ldr r5, [r0, #4]
	mov r0, r5
	bl FUN_02079B0C
	ldr r1, _022CFE10 @ =0x023188CC
	mov r4, r0
	ldr r1, [r1, #4]
	mov r0, r5
	bl FUN_02079A64
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022CFE10: .4byte 0x023188CC
_022CFE14: .4byte 0x022B966C
	arm_func_end ov00_022CFDCC

	arm_func_start ov00_022CFE18
ov00_022CFE18: @ 0x022CFE18
	push {r3, lr}
	mov r1, r0
	cmp r1, #0x20
	pophs {r3, pc}
	ldr r0, _022CFE38 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079A64
	pop {r3, pc}
	.align 2, 0
_022CFE38: .4byte 0x022B966C
	arm_func_end ov00_022CFE18

	arm_func_start ov00_022CFE3C
ov00_022CFE3C: @ 0x022CFE3C
	ldr r2, _022CFE60 @ =0x022B966C
	ldr r2, [r2, #4]
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strne r0, [r2, #0x814]
	strne r1, [r2, #0x818]
	bx lr
	.align 2, 0
_022CFE60: .4byte 0x022B966C
	arm_func_end ov00_022CFE3C

	arm_func_start ov00_022CFE64
ov00_022CFE64: @ 0x022CFE64
	push {r4, r5, r6, r7, r8, lr}
	ldr r6, [r0, #0x818]
	mov r8, r1
	cmp r6, #0
	mov r4, #0
	ble _022CFEA8
	ldr r5, [r0, #0x814]
_022CFE80:
	ldr r7, [r5, r4, lsl #2]
	mov r1, r8
	ldr r0, [r7]
	bl FUN_0208982C
	cmp r0, #0
	moveq r0, r7
	popeq {r4, r5, r6, r7, r8, pc}
	add r4, r4, #1
	cmp r4, r6
	blt _022CFE80
_022CFEA8:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022CFE64

	arm_func_start ov00_022CFEB0
ov00_022CFEB0: @ 0x022CFEB0
	ldr r1, [r0]
	ldrb r2, [r1]
	add r3, r1, #1
	tst r2, #0x80
	beq _022CFEF4
	ands r1, r2, #0x7f
	sub ip, r1, #1
	mov r2, #0
	beq _022CFEF4
_022CFED4:
	tst r2, #0xff000000
	mvnne r0, #0
	bxne lr
	ldrb r1, [r3], #1
	cmp ip, #0
	sub ip, ip, #1
	add r2, r1, r2, lsl #8
	bne _022CFED4
_022CFEF4:
	str r3, [r0]
	mov r0, r2
	bx lr
	arm_func_end ov00_022CFEB0

	arm_func_start ov00_022CFF00
ov00_022CFF00: @ 0x022CFF00
	ldrsb r3, [r0]
	mov ip, r0
	cmp r3, #0
	beq _022CFF48
_022CFF10:
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _022CFF10
	sub r3, r0, ip
	cmp r3, #0xff
	bxge lr
	mov r3, #0x2c
	strb r3, [r0]
	mov r3, #0x20
	strb r3, [r0, #1]
	add r0, r0, #2
	b _022CFF48
_022CFF40:
	ldrsb r3, [r1], #1
	strb r3, [r0], #1
_022CFF48:
	cmp r2, #0
	sub r2, r2, #1
	beq _022CFF60
	sub r3, r0, ip
	cmp r3, #0xff
	blt _022CFF40
_022CFF60:
	mov r1, #0
	strb r1, [r0]
	bx lr
	arm_func_end ov00_022CFF00

	arm_func_start ov00_022CFF6C
ov00_022CFF6C: @ 0x022CFF6C
	push {r4, lr}
	ldrb ip, [r0, #1]
	ldrb r3, [r0], #2
	mov r2, #0xa
	cmp r1, #0x17
	mla r1, r3, r2, ip
	sub lr, r1, #0x210
	bne _022CFFA0
	cmp lr, #0x32
	addlo r4, lr, #0x7d0
	addhs r1, lr, #0x36c
	addhs r4, r1, #0x400
	b _022CFFB8
_022CFFA0:
	ldrb ip, [r0, #1]
	ldrb r3, [r0], #2
	mov r1, #0x64
	mla r2, r3, r2, ip
	sub r2, r2, #0x210
	mla r4, lr, r1, r2
_022CFFB8:
	ldrb ip, [r0, #1]
	ldrb r3, [r0]
	mov r1, #0xa
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #2]
	mla ip, r3, r1, ip
	mla r1, r0, r1, r2
	sub r0, ip, #0x210
	lsl r0, r0, #8
	add r2, r0, r4, lsl #16
	sub r0, r1, #0x210
	add r0, r2, r0
	pop {r4, pc}
	arm_func_end ov00_022CFF6C

	arm_func_start ov00_022CFFEC
ov00_022CFFEC: @ 0x022CFFEC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov fp, r1
	ldr r1, [fp]
	mov sb, r0
	add r0, r1, #1
	str r0, [sp, #4]
	add r0, sp, #4
	mov r7, r2
	mov r6, r3
	ldr r8, [sp, #0x30]
	ldrb r5, [r1]
	bl ov00_022CFEB0
	movs r4, r0
	bmi _022D0030
	cmp r4, #0x7d0
	ble _022D003C
_022D0030:
	add sp, sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D003C:
	and r1, r5, #0x1f
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _022D0460
_022D004C: @ jump table
	b _022D0460 @ case 0
	b _022D0460 @ case 1
	b _022D00B0 @ case 2
	b _022D01A8 @ case 3
	b _022D0460 @ case 4
	b _022D0460 @ case 5
	b _022D0228 @ case 6
	b _022D0460 @ case 7
	b _022D0460 @ case 8
	b _022D0460 @ case 9
	b _022D0460 @ case 10
	b _022D0460 @ case 11
	b _022D02C0 @ case 12
	b _022D0460 @ case 13
	b _022D0460 @ case 14
	b _022D0460 @ case 15
	b _022D0390 @ case 16
	b _022D0410 @ case 17
	b _022D0460 @ case 18
	b _022D02C0 @ case 19
	b _022D02C0 @ case 20
	b _022D0460 @ case 21
	b _022D02C0 @ case 22
	b _022D0340 @ case 23
	b _022D0340 @ case 24
_022D00B0:
	ldrb r0, [sb, #0x5ad]
	cmp r0, #0
	beq _022D0198
	cmp r6, #0
	bne _022D0130
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _022D00EC
_022D00D4:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _022D00D4
_022D00EC:
	cmp r8, #0
	beq _022D0100
	cmp r8, #2
	beq _022D0120
	b _022D0198
_022D0100:
	cmp r4, #0x100
	bgt _022D0198
	add r1, sb, #0x94
	mov r2, r4
	add r1, r1, #0x400
	bl FUN_0207C4C8
	str r4, [sb, #0x594]
	b _022D0198
_022D0120:
	str r4, [sb, #0x484]
	ldr r0, [sp, #4]
	str r0, [sb, #0x488]
	b _022D0198
_022D0130:
	cmp r6, #1
	bne _022D0198
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _022D0160
_022D0148:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _022D0148
_022D0160:
	cmp r8, #0
	beq _022D017C
	cmp r8, #2
	streq r4, [sb, #0x48c]
	ldreq r0, [sp, #4]
	streq r0, [sb, #0x490]
	b _022D0198
_022D017C:
	cmp r4, #8
	bgt _022D0198
	add r1, sb, #0x198
	mov r2, r4
	add r1, r1, #0x400
	bl FUN_0207C4C8
	str r4, [sb, #0x5a0]
_022D0198:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _022D04C4
_022D01A8:
	cmp r7, #1
	bne _022D01CC
	cmp r8, #2
	beq _022D01CC
	ldr r1, [sp, #4]
	sub r0, r4, #1
	add r1, r1, #1
	str r1, [sb, #0x5a4]
	str r0, [sb, #0x5a8]
_022D01CC:
	ldrb r0, [sb, #0x5ad]
	cmp r0, #0
	beq _022D0218
	ldr r0, [sp, #4]
	add r1, sp, #4
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, sb
	mov r2, r7
	mov r3, #0
	str r8, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	strb r0, [sb, #0x5ad]
	b _022D04C4
_022D0218:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _022D04C4
_022D0228:
	ldr r6, [sp, #4]
	ldr sl, _022D04D8 @ =0x023188D4
	mov r5, #0
_022D0234:
	ldr r7, [sl, r5, lsl #2]
	mov r0, r7
	bl FUN_02089678
	mov r2, r0
	mov r0, r6
	mov r1, r7
	bl FUN_02087348
	cmp r0, #0
	bne _022D02A4
	cmp r5, #5
	addls pc, pc, r5, lsl #2
	b _022D02B0
_022D0264: @ jump table
	b _022D02B0 @ case 0
	b _022D027C @ case 1
	b _022D027C @ case 2
	b _022D028C @ case 3
	b _022D028C @ case 4
	b _022D0298 @ case 5
_022D027C:
	cmp r8, #0
	streq r5, [sb, #0x45c]
	strb r5, [sb, #0x5ad]
	b _022D02B0
_022D028C:
	cmp r8, #2
	strne r5, [sb, #0x458]
	b _022D02B0
_022D0298:
	cmp r8, #2
	strbne r5, [sb, #0x5ae]
	b _022D02B0
_022D02A4:
	add r5, r5, #1
	cmp r5, #6
	blt _022D0234
_022D02B0:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _022D04C4
_022D02C0:
	cmp r8, #2
	beq _022D0328
	ldrb r0, [sb, #0x5ac]
	cmp r0, #0
	beq _022D0318
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, sb, #0x6b0
	bl ov00_022CFF00
	ldrb r0, [sb, #0x5ae]
	cmp r0, #5
	bne _022D0328
	cmp r4, #0x4f
	bgt _022D0328
	ldr r0, [sp, #4]
	mov r2, r4
	add r1, sb, #0x7b0
	bl FUN_0207C4C8
	add r0, sb, r4
	mov r1, #0
	strb r1, [r0, #0x7b0]
	b _022D0328
_022D0318:
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, sb, #0x5b0
	bl ov00_022CFF00
_022D0328:
	mov r0, #0
	strb r0, [sb, #0x5ae]
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	b _022D04C4
_022D0340:
	cmp r8, #2
	beq _022D0378
	ldr r0, [sp, #4]
	bl ov00_022CFF6C
	cmp r6, #0
	ldr r1, [sb, #0x80c]
	bne _022D036C
	cmp r1, r0
	movhs r0, #1
	strbhs r0, [sb, #0x5af]
	b _022D0378
_022D036C:
	cmp r1, r0
	movhi r0, #0
	strbhi r0, [sb, #0x5af]
_022D0378:
	ldr r1, [sp, #4]
	mov r0, #1
	add r1, r1, r4
	str r1, [sp, #4]
	strb r0, [sb, #0x5ac]
	b _022D04C4
_022D0390:
	cmp r7, #0
	cmpeq r6, #0
	bne _022D03A8
	cmp r8, #2
	ldrne r0, [sp, #4]
	strne r0, [sb, #0x460]
_022D03A8:
	ldr r0, [sp, #4]
	mov r5, #0
	add sl, r0, r4
	cmp r0, sl
	bhs _022D03F8
	add r4, sp, #4
_022D03C0:
	mov r0, sb
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	add r5, r5, #1
	addne sp, sp, #8
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, sl
	blo _022D03C0
_022D03F8:
	cmp r7, #1
	cmpeq r6, #0
	bne _022D04C4
	cmp r8, #2
	strne r0, [sb, #0x464]
	b _022D04C4
_022D0410:
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _022D04C4
	add r5, sp, #4
	mov r4, #0
_022D0428:
	mov r0, sb
	mov r1, r5
	mov r3, r4
	add r2, r7, #1
	str r8, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _022D0428
	b _022D04C4
_022D0460:
	cmp r5, #0xa0
	bne _022D04B8
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _022D04C4
	add r5, sp, #4
	mov r4, #0
_022D0480:
	mov r0, sb
	mov r1, r5
	mov r3, r4
	add r2, r7, #1
	str r8, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _022D0480
	b _022D04C4
_022D04B8:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_022D04C4:
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [fp]
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D04D8: .4byte 0x023188D4
	arm_func_end ov00_022CFFEC

	arm_func_start ov00_022D04DC
ov00_022D04DC: @ 0x022D04DC
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x5a4]
	mov r7, r1
	cmp r0, #0
	ldrne r0, [r8, #0x5a8]
	cmpne r0, #0
	ldrne r0, [r7, #0x10]
	cmpne r0, #0
	ldrne r0, [r7, #0xc]
	cmpne r0, #0
	ldrne r0, [r7, #8]
	cmpne r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	lsl r0, r0, #1
	ldr r1, _022D067C @ =0x0232508C
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	ldr r1, [r1]
	lsl r0, r5, #3
	blx r1
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #2
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r6, r4, r5, lsl #1
	add sb, r6, r5, lsl #1
	ldr r1, [r8, #0x5a4]
	ldr r2, [r8, #0x5a8]
	mov r0, r6
	mov r3, r5
	add sl, sb, r5, lsl #1
	bl ov00_022D49AC
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0xc]
	mov r0, sb
	mov r3, r5
	bl ov00_022D49AC
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	mov r0, sl
	mov r3, r5
	bl ov00_022D49AC
	bl ov00_022CFDCC
	mov r2, sb
	mov sb, r0
	mov r0, r4
	mov r1, r6
	mov r3, r5
	str sl, [sp]
	bl ov00_022D4398
	mov r0, sb
	bl ov00_022CFE18
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl ov00_022D4A08
	ldrb r0, [r4, r5, lsl #1]
	mov r5, #0
	cmp r0, #0
	ldrbeq r0, [r6, #1]
	cmpeq r0, #1
	movne r5, #2
	bne _022D0660
	ldr r3, [r7, #4]
	mov r2, #2
	cmp r3, #2
	ble _022D061C
_022D0604:
	ldrb r0, [r6, r2]
	cmp r0, #0xff
	bne _022D061C
	add r2, r2, #1
	cmp r2, r3
	blt _022D0604
_022D061C:
	add r1, r2, #1
	cmp r1, r3
	bge _022D065C
	ldrb r0, [r6, r2]
	cmp r0, #0
	ldrbeq r0, [r6, r1]
	cmpeq r0, #0x30
	bne _022D065C
	ldr r2, [r8, #0x47c]
	add r0, r8, #0x68
	add r1, r6, r3
	add r0, r0, #0x400
	sub r1, r1, r2
	bl FUN_02087348
	cmp r0, #0
	beq _022D0660
_022D065C:
	mov r5, #2
_022D0660:
	ldr r1, _022D0680 @ =0x023250B8
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r0, r5
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022D067C: .4byte 0x0232508C
_022D0680: .4byte 0x023250B8
	arm_func_end ov00_022D04DC

	arm_func_start ov00_022D0684
ov00_022D0684: @ 0x022D0684
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5af]
	ldr r1, [r5, #0x45c]
	cmp r0, #0
	movne r4, #0
	moveq r4, #0x8000
	mvn r0, #0
	cmp r1, r0
	orreq r0, r4, #4
	popeq {r3, r4, r5, pc}
	ldr r0, [r5, #0x458]
	cmp r0, #3
	beq _022D06C8
	cmp r0, #4
	beq _022D0700
	b _022D0738
_022D06C8:
	add r0, r5, #0x3fc
	bl ov00_022D30BC
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x3fc
	sub r2, r2, r1
	bl ov00_022D3104
	add r1, r5, #0x68
	add r0, r5, #0x3fc
	add r1, r1, #0x400
	bl ov00_022D31BC
	mov r0, #0x10
	str r0, [r5, #0x47c]
	b _022D0740
_022D0700:
	add r0, r5, #0x348
	bl ov00_022D397C
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x348
	sub r2, r2, r1
	bl ov00_022D39D0
	add r1, r5, #0x68
	add r0, r5, #0x348
	add r1, r1, #0x400
	bl ov00_022D3A88
	mov r0, #0x14
	str r0, [r5, #0x47c]
	b _022D0740
_022D0738:
	orr r0, r4, #3
	pop {r3, r4, r5, pc}
_022D0740:
	mov r0, r5
	add r1, r5, #0x5b0
	bl ov00_022CFE64
	movs r1, r0
	orreq r0, r4, #1
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl ov00_022D04DC
	orr r0, r4, r0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D0684

	arm_func_start ov00_022D0768
ov00_022D0768: @ 0x022D0768
	mov r2, r0
	b _022D0774
_022D0770:
	add r0, r0, #1
_022D0774:
	ldrsb r1, [r0]
	cmp r1, #0x2e
	cmpne r1, #0
	bne _022D0770
	sub r0, r0, r2
	bx lr
	arm_func_end ov00_022D0768

	arm_func_start ov00_022D078C
ov00_022D078C: @ 0x022D078C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	b _022D07A8
_022D079C:
	cmp r1, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
_022D07A8:
	ldrsb r0, [r5], #1
	ldrsb r1, [r6], #1
	cmp r1, r0
	beq _022D079C
	cmp r0, #0x2a
	movne r0, #1
	popne {r4, r5, r6, pc}
	sub r6, r6, #1
	mov r0, r6
	bl ov00_022D0768
	mov r4, r0
	mov r0, r5
	bl ov00_022D0768
	cmp r0, r4
	movgt r0, #1
	popgt {r4, r5, r6, pc}
	sub r0, r4, r0
	add r6, r6, r0
	b _022D07A8
	arm_func_end ov00_022D078C
_022D07F4:
	.byte 0x70, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022D07F8
ov00_022D07F8: @ 0x022D07F8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r1, [sp, #0x44]
	mov sl, r0
	ldrb r4, [r1, #2]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, r1, #3
	mvn r1, #0
	str r0, [sp, #0x44]
	add r2, r2, r3, lsl #8
	add r0, sp, #8
	str r1, [sl, #0x45c]
	add r8, r4, r2, lsl #8
	bl FUN_02082748
	mov r6, #0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, #0x7d0
	lsl r0, r0, #8
	ldr r2, [sp, #0x10]
	add r0, r0, r1, lsl #16
	add r0, r2, r0
	str r0, [sl, #0x80c]
	strb r6, [sl, #0x6b0]
	str r6, [sl, #0x5a0]
	mov sb, r6
	str r6, [sl, #0x594]
	mov fp, #2
	mvn r5, #0
	mov r4, r6
_022D0878:
	ldr r1, [sp, #0x44]
	mov r0, sl
	ldrb r2, [r1, #2]
	ldrb ip, [r1]
	ldrb r3, [r1, #1]
	add r7, r1, #3
	add r1, sp, #0x44
	str r7, [sp, #0x44]
	str r5, [sl, #0x458]
	strb r4, [sl, #0x5ad]
	strb r4, [sl, #0x5ac]
	strb r4, [sl, #0x5af]
	strb r4, [sl, #0x6b0]
	strb r4, [sl, #0x5b0]
	strb r4, [sl, #0x7b0]
	add r3, r3, ip, lsl #8
	ldr r7, [sp, #0x44]
	add r3, r2, r3, lsl #8
	add r2, r3, #3
	str r7, [sl, #0x804]
	str r3, [sl, #0x808]
	sub r8, r8, r2
	mov r2, r4
	mov r3, r4
	str r6, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	bne _022D0900
	ldr r0, [sl, #0x594]
	cmp r0, #0x33
	blo _022D0900
	ldr r0, [sl, #0x5a0]
	cmp r0, #0
	bne _022D0918
_022D0900:
	mov r0, #9
	add sp, sp, #0x18
	strb r0, [sl, #0x455]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_022D0918:
	mov r0, sl
	bl ov00_022D0684
	mov r7, r0
	cmp sb, #0
	bne _022D0948
	ldr r0, [sl, #0x800]
	cmp r0, #0
	beq _022D0948
	add r1, sl, #0x7b0
	bl ov00_022D078C
	cmp r0, #0
	orrne r7, r7, #0x4000
_022D0948:
	and r6, r7, #0xff
	cmp r6, #1
	bne _022D09B8
	cmp r8, #0
	beq _022D09B8
	ldr r1, [sp, #0x44]
	mov r2, #0
	add r1, r1, #3
	str r1, [sp, #4]
	mov r1, #0
	strb r1, [sl, #0x5ad]
	mov r0, sl
	add r1, sp, #4
	mov r3, r2
	str fp, [sp]
	bl ov00_022CFFEC
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x18
	strbne r0, [sl, #0x455]
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, sl
	add r1, sl, #0x480
	bl ov00_022D04DC
	bic r1, r7, #0xff
	orr r7, r1, r0
_022D09B8:
	ldr r3, [sl, #0x810]
	cmp r3, #0
	beq _022D09D8
	mov r0, r7
	mov r1, sl
	mov r2, sb
	blx r3
	mov r7, r0
_022D09D8:
	cmp r6, #0
	add sb, sb, #1
	beq _022D09F8
	cmp r7, #0
	bne _022D09F8
	cmp r8, #0
	movne r6, #1
	bne _022D0878
_022D09F8:
	cmp r7, #0
	moveq r0, #3
	strbeq r0, [sl, #0x455]
	movne r0, #9
	strbne r0, [sl, #0x455]
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov00_022D07F8

	arm_func_start ov00_022D0A1C
ov00_022D0A1C: @ 0x022D0A1C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	add r0, r5, #2
	add r1, r6, #0x54
	mov r2, #0x20
	bl FUN_0207C4C8
	ldrb r7, [r6, #0x30]
	ldrb r4, [r5, #0x22]
	add r5, r5, #0x23
	cmp r7, #0
	beq _022D0A74
	cmp r4, #0x20
	bne _022D0A74
	mov r1, r5
	add r0, r6, #0x74
	mov r2, #0x20
	bl FUN_02087348
	cmp r0, #0
	moveq r0, #1
	strbeq r0, [r6, #0x31]
	beq _022D0AB0
_022D0A74:
	cmp r7, #0
	beq _022D0A84
	mov r0, r6
	bl ov00_022CFD0C
_022D0A84:
	cmp r4, #0
	moveq r0, #0
	beq _022D0AA4
	mov r0, r5
	add r1, r6, #0x74
	mov r2, #0x20
	bl FUN_0207C4C8
	mov r0, #1
_022D0AA4:
	strb r0, [r6, #0x30]
	mov r0, #0
	strb r0, [r6, #0x31]
_022D0AB0:
	add r0, r5, r4
	ldrb r2, [r5, r4]
	ldrb r1, [r0, #1]
	mov r0, #2
	add r1, r1, r2, lsl #8
	strh r1, [r6, #0x32]
	strb r0, [r6, #0x455]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D0A1C

	arm_func_start ov00_022D0AD0
ov00_022D0AD0: @ 0x022D0AD0
	push {r4, lr}
	cmp r1, #0
	mov r4, #0
	ble _022D0B14
_022D0AE0:
	ldrb lr, [r0]
	ldrb ip, [r0, #1]
	cmp r2, #3
	add lr, ip, lr, lsl #8
	ldrbeq ip, [r0, #2]
	addeq lr, ip, lr, lsl #8
	cmp lr, r3
	moveq r0, #1
	popeq {r4, pc}
	add r4, r4, #1
	cmp r4, r1
	add r0, r0, r2
	blt _022D0AE0
_022D0B14:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022D0AD0

	arm_func_start ov00_022D0B1C
ov00_022D0B1C: @ 0x022D0B1C
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, _022D0B78 @ =0x023188CC
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_022D0B34:
	lsl r0, r5, #1
	ldrh r3, [r4, r0]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl ov00_022D0AD0
	cmp r0, #0
	beq _022D0B64
	ldr r0, _022D0B78 @ =0x023188CC
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r4, r5, r6, r7, r8, pc}
_022D0B64:
	add r5, r5, #1
	cmp r5, #2
	blo _022D0B34
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022D0B78: .4byte 0x023188CC
	arm_func_end ov00_022D0B1C

	arm_func_start ov00_022D0B7C
ov00_022D0B7C: @ 0x022D0B7C
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov00_022D0B7C

	arm_func_start ov00_022D0B8C
ov00_022D0B8C: @ 0x022D0B8C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl ov00_022D0B7C
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r6, #2]
	ldrb r1, [r6, #3]
	ldr r3, _022D0C50 @ =0x55555556
	add r0, r6, #8
	add r4, r1, r2, lsl #8
	smull r2, r1, r3, r4
	add r1, r1, r4, lsr #31
	mov r2, #3
	bl ov00_022D0B1C
	lsl r0, r0, #0x10
	lsrs r0, r0, #0x10
	popeq {r3, r4, r5, r6, r7, pc}
	strh r0, [r7, #0x32]
	ldrb r5, [r6, #4]
	ldrb r3, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #7]
	mov r1, #0
	add r3, r3, r5, lsl #8
	add r5, r0, r2, lsl #8
	add r0, r4, #8
	strb r1, [r7, #0x30]
	cmp r5, #0x20
	add r4, r0, r3
	blt _022D0C24
	add r0, r6, r4
	add r1, r7, #0x34
	mov r2, #0x20
	bl FUN_0207C4C8
	b _022D0C44
_022D0C24:
	add r0, r7, #0x34
	rsb r2, r5, #0x20
	bl FUN_0207C40C
	add r1, r7, #0x54
	mov r2, r5
	add r0, r6, r4
	sub r1, r1, r5
	bl FUN_0207C4C8
_022D0C44:
	mov r0, #1
	strb r0, [r7, #0x455]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022D0C50: .4byte 0x55555556
	arm_func_end ov00_022D0B8C

	arm_func_start ov00_022D0C54
ov00_022D0C54: @ 0x022D0C54
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl ov00_022D0B7C
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	add r0, r6, #2
	add r1, r4, #0x34
	mov r2, #0x20
	bl FUN_0207C4C8
	ldrb r5, [r6, #0x22]
	add r6, r6, #0x23
	cmp r5, #0x20
	movne r0, #0
	strbne r0, [r4, #0x30]
	bne _022D0CB4
	mov r0, r6
	add r1, r4, #0x74
	mov r2, #0x20
	bl FUN_0207C4C8
	mov r0, r4
	bl ov00_022CFAEC
_022D0CB4:
	add r0, r6, r5
	ldrb r1, [r0, #1]
	ldrb r3, [r6, r5]
	add r0, r0, #2
	mov r2, #2
	add r1, r1, r3, lsl #8
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	bl ov00_022D0B1C
	lsl r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r4, #0x32]
	movne r0, #1
	strbne r0, [r4, #0x455]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D0C54

	arm_func_start ov00_022D0CF0
ov00_022D0CF0: @ 0x022D0CF0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	movs sl, r2
	str r0, [sp, #8]
	ldrne r0, [sl]
	mov fp, r1
	cmpne r0, #0
	addeq sp, sp, #0x18
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	lsl r0, r0, #1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	add r4, r0, #1
	mov r0, #0x14
	mul r0, r4, r0
	ldr r1, _022D0F28 @ =0x0232508C
	ldr r1, [r1]
	blx r1
	movs r5, r0
	addeq sp, sp, #0x18
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, r5, r4, lsl #1
	add r7, r6, r4, lsl #1
	add r1, r7, r4, lsl #1
	str r1, [sp, #0x10]
	add r1, r1, r4, lsl #1
	add r8, r1, r4, lsl #1
	str r1, [sp, #0xc]
	ldr r2, [sl]
	add sb, r8, r4, lsl #1
	mov r1, fp
	mov r3, r4
	add fp, sb, r4, lsl #1
	bl ov00_022D49AC
	ldr r1, [sl, #0x1c]
	ldr r2, [sl, #0x18]
	mov r0, r6
	mov r3, r4
	bl ov00_022D49AC
	ldr r1, [sl, #0xc]
	ldr r2, [sl, #8]
	mov r0, r8
	mov r3, r4
	bl ov00_022D49AC
	bl ov00_022CFDCC
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r8, [sp]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl ov00_022D47A0
	ldr r1, [sl, #0x24]
	ldr r2, [sl, #0x20]
	mov r0, r6
	mov r3, r4
	bl ov00_022D49AC
	ldr r1, [sl, #0x14]
	ldr r2, [sl, #0x10]
	mov r0, r8
	mov r3, r4
	bl ov00_022D49AC
	ldr r0, [sp, #0xc]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r8, [sp]
	bl ov00_022D47A0
	ldr r0, [sp, #0x14]
	bl ov00_022CFE18
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r5
	mov r3, r4
	bl ov00_022D3D98
	ldr r1, [sl, #0x2c]
	ldr r2, [sl, #0x28]
	mov r0, r6
	mov r3, r4
	bl ov00_022D49AC
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl ov00_022D3F14
	ldr r1, [sl, #0x14]
	ldr r2, [sl, #0x10]
	mov r0, r6
	mov r3, r4
	bl ov00_022D49AC
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl ov00_022D3F14
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r3, r4
	bl ov00_022D3C58
	ldr r1, [sl, #4]
	ldr r2, [sl]
	mov r0, r6
	mov r3, r4
	bl ov00_022D49AC
	mov r0, r7
	mov r1, r4
	bl ov00_022D3C28
	cmp r0, #0
	bge _022D0EE4
	mov r0, r7
	mov r1, r4
	bl ov00_022D3D58
	mov r1, r7
	mov r2, r6
	mov r3, sb
	mov r0, #0
	stm sp, {r4, fp}
	bl ov00_022D41B8
	mov r0, sb
	mov r1, r6
	mov r2, sb
	mov r3, r4
	bl ov00_022D3D98
	b _022D0EFC
_022D0EE4:
	mov r1, r7
	mov r2, r6
	mov r3, sb
	mov r0, #0
	stm sp, {r4, fp}
	bl ov00_022D41B8
_022D0EFC:
	ldr r0, [sp, #8]
	mov r1, sb
	mov r3, r4
	mov r2, #0x30
	bl ov00_022D4A08
	ldr r1, _022D0F2C @ =0x023250B8
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D0F28: .4byte 0x0232508C
_022D0F2C: .4byte 0x023250B8
	arm_func_end ov00_022D0CF0

	arm_func_start ov00_022D0F30
ov00_022D0F30: @ 0x022D0F30
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r2
	mov r6, r0
	mov r5, r1
	add r0, r4, #0x348
	bl ov00_022D397C
	mov r0, r5
	bl FUN_02089678
	mov r2, r0
	mov r1, r5
	add r0, r4, #0x348
	bl ov00_022D39D0
	add r0, r4, #0x348
	mov r1, r4
	mov r2, #0x30
	bl ov00_022D39D0
	add r0, r4, #0x348
	add r1, r4, #0x34
	mov r2, #0x40
	bl ov00_022D39D0
	add r0, r4, #0x348
	add r1, sp, #0
	bl ov00_022D3A88
	add r0, r4, #0x3fc
	bl ov00_022D30BC
	add r0, r4, #0x3fc
	mov r1, r4
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r4, #0x3fc
	add r1, sp, #0
	mov r2, #0x14
	bl ov00_022D3104
	add r0, r4, #0x3fc
	mov r1, r6
	bl ov00_022D31BC
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022D0F30

	arm_func_start ov00_022D0FCC
ov00_022D0FCC: @ 0x022D0FCC
	push {r4, lr}
	sub sp, sp, #0x30
	mov r4, r0
	ldr r1, _022D1020 @ =0x02318918
	add r0, sp, #0
	mov r2, r4
	bl ov00_022D0F30
	ldr r1, _022D1024 @ =0x0231891C
	add r0, sp, #0x10
	mov r2, r4
	bl ov00_022D0F30
	ldr r1, _022D1028 @ =0x02318920
	add r0, sp, #0x20
	mov r2, r4
	bl ov00_022D0F30
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x30
	bl FUN_0207C4C8
	add sp, sp, #0x30
	pop {r4, pc}
	.align 2, 0
_022D1020: .4byte 0x02318918
_022D1024: .4byte 0x0231891C
_022D1028: .4byte 0x02318920
	arm_func_end ov00_022D0FCC

	arm_func_start ov00_022D102C
ov00_022D102C: @ 0x022D102C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	ldrh r0, [sl, #0x32]
	cmp r0, #4
	beq _022D1050
	cmp r0, #5
	beq _022D1064
	b _022D1078
_022D1050:
	mov r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	mov r2, #0
	b _022D1078
_022D1064:
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
_022D1078:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	add r0, r1, r0
	add r0, r2, r0
	lsl fp, r0, #1
	cmp fp, #0
	ble _022D116C
	add r0, sl, #0x74
	mov sb, r7
	str r0, [sp, #8]
	add r5, sp, #0xc
	mov r4, #1
_022D10AC:
	add r0, sl, #0x348
	bl ov00_022D397C
	add r0, r7, #0x41
	add r6, r7, #1
	strb r0, [sp, #0xc]
	mov r8, #0
	cmp r6, #0
	ble _022D10E8
_022D10CC:
	add r0, sl, #0x348
	mov r1, r5
	mov r2, r4
	bl ov00_022D39D0
	add r8, r8, #1
	cmp r8, r6
	blt _022D10CC
_022D10E8:
	add r0, sl, #0x348
	mov r1, sl
	mov r2, #0x30
	bl ov00_022D39D0
	add r0, sl, #0x348
	add r1, sl, #0x54
	mov r2, #0x20
	bl ov00_022D39D0
	add r0, sl, #0x348
	add r1, sl, #0x34
	mov r2, #0x20
	bl ov00_022D39D0
	add r0, sl, #0x348
	add r1, sp, #0xd
	bl ov00_022D3A88
	add r0, sl, #0x3fc
	bl ov00_022D30BC
	add r0, sl, #0x3fc
	mov r1, sl
	mov r2, #0x30
	bl ov00_022D3104
	add r0, sl, #0x3fc
	add r1, sp, #0xd
	mov r2, #0x14
	bl ov00_022D3104
	ldr r1, [sp, #8]
	add r0, sl, #0x3fc
	add r1, r1, sb
	bl ov00_022D31BC
	add sb, sb, #0x10
	cmp sb, fp
	add r7, r7, #1
	blt _022D10AC
_022D116C:
	ldrb r0, [sl, #0x454]
	add r3, sl, #0x74
	cmp r0, #0
	beq _022D11A8
	ldr r0, [sp, #4]
	str r3, [sl, #0x1d4]
	add r2, r3, r0
	add r1, r2, r0
	add r0, r3, r0, lsl #1
	str r0, [sl, #0x1d8]
	ldr r0, [sp]
	str r2, [sl, #0xbc]
	add r0, r1, r0
	str r0, [sl, #0xc0]
	b _022D11D0
_022D11A8:
	ldr r0, [sp, #4]
	str r3, [sl, #0xbc]
	add r2, r3, r0
	add r1, r2, r0
	add r0, r3, r0, lsl #1
	str r0, [sl, #0xc0]
	ldr r0, [sp]
	str r2, [sl, #0x1d4]
	add r0, r1, r0
	str r0, [sl, #0x1d8]
_022D11D0:
	ldr r1, [sl, #0x1d8]
	add r0, sl, #0x1e0
	mov r2, #0x10
	bl ov00_022D3B20
	ldr r1, [sl, #0xc0]
	add r0, sl, #0xc8
	mov r2, #0x10
	bl ov00_022D3B20
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022D102C

	arm_func_start ov00_022D11F8
ov00_022D11F8: @ 0x022D11F8
	push {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x81c]
	bl ov00_022D0CF0
	mov r0, r4
	bl ov00_022D0FCC
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl ov00_022CFC20
	mov r0, r4
	bl ov00_022D102C
	mov r0, #5
	strb r0, [r4, #0x455]
	pop {r4, pc}
	arm_func_end ov00_022D11F8

	arm_func_start ov00_022D1234
ov00_022D1234: @ 0x022D1234
	push {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldrb r0, [r5, #0x454]
	mov r4, r1
	teq r0, r2
	mov r2, #4
	beq _022D1264
	ldr r1, _022D1308 @ =0x02318924
	add r0, r5, #0x3a4
	bl ov00_022D3104
	b _022D1270
_022D1264:
	ldr r1, _022D130C @ =0x0231892C
	add r0, r5, #0x3a4
	bl ov00_022D3104
_022D1270:
	mov r1, r5
	add r0, r5, #0x3a4
	mov r2, #0x30
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r5, #0x3a4
	mov r2, #0x30
	bl ov00_022D3104
	mov r1, r4
	add r0, r5, #0x3a4
	bl ov00_022D31BC
	add r0, r5, #0x3a4
	bl ov00_022D30BC
	add r0, r5, #0x3a4
	mov r1, r5
	mov r2, #0x30
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl FUN_0207C40C
	add r0, r5, #0x3a4
	add r1, sp, #0
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r5, #0x3a4
	mov r1, r4
	mov r2, #0x10
	bl ov00_022D3104
	add r0, r5, #0x3a4
	mov r1, r4
	bl ov00_022D31BC
	add sp, sp, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D1308: .4byte 0x02318924
_022D130C: .4byte 0x0231892C
	arm_func_end ov00_022D1234

	arm_func_start ov00_022D1310
ov00_022D1310: @ 0x022D1310
	push {r3, r4, r5, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldrb r0, [r5, #0x454]
	mov r4, r1
	teq r0, r2
	mov r2, #4
	beq _022D1340
	ldr r1, _022D13E4 @ =0x02318924
	add r0, r5, #0x2ec
	bl ov00_022D39D0
	b _022D134C
_022D1340:
	ldr r1, _022D13E8 @ =0x0231892C
	add r0, r5, #0x2ec
	bl ov00_022D39D0
_022D134C:
	mov r1, r5
	add r0, r5, #0x2ec
	mov r2, #0x30
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r5, #0x2ec
	mov r2, #0x28
	bl ov00_022D39D0
	mov r1, r4
	add r0, r5, #0x2ec
	bl ov00_022D3A88
	add r0, r5, #0x2ec
	bl ov00_022D397C
	add r0, r5, #0x2ec
	mov r1, r5
	mov r2, #0x30
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl FUN_0207C40C
	add r0, r5, #0x2ec
	add r1, sp, #0
	mov r2, #0x28
	bl ov00_022D39D0
	add r0, r5, #0x2ec
	mov r1, r4
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, r5, #0x2ec
	mov r1, r4
	bl ov00_022D3A88
	add sp, sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D13E4: .4byte 0x02318924
_022D13E8: .4byte 0x0231892C
	arm_func_end ov00_022D1310

	arm_func_start ov00_022D13EC
ov00_022D13EC: @ 0x022D13EC
	push {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r4, r1
	add r0, r5, #0x3a4
	add r1, r5, #0x3fc
	mov r2, #0x58
	bl FUN_0207C4C8
	add r1, sp, #0
	mov r0, r5
	mov r2, #1
	bl ov00_022D1234
	add r0, r5, #0x3fc
	add r1, r5, #0x3a4
	mov r2, #0x58
	bl FUN_0207C4C8
	add r1, sp, #0
	mov r0, r4
	mov r2, #0x10
	bl FUN_02087348
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x14
	strbne r0, [r5, #0x455]
	popne {r4, r5, pc}
	add r0, r5, #0x2ec
	add r1, r5, #0x348
	mov r2, #0x5c
	bl FUN_0207C4C8
	add r1, sp, #0
	mov r0, r5
	mov r2, #1
	bl ov00_022D1310
	add r0, r5, #0x348
	add r1, r5, #0x2ec
	mov r2, #0x5c
	bl FUN_0207C4C8
	add r1, sp, #0
	add r0, r4, #0x10
	mov r2, #0x14
	bl FUN_02087348
	cmp r0, #0
	movne r0, #9
	strbne r0, [r5, #0x455]
	moveq r0, #6
	strbeq r0, [r5, #0x455]
	add sp, sp, #0x14
	pop {r4, r5, pc}
	arm_func_end ov00_022D13EC

	arm_func_start ov00_022D14AC
ov00_022D14AC: @ 0x022D14AC
	mov r2, #8
_022D14B0:
	ldrb r1, [r0, #-1]!
	add r1, r1, #1
	ands r1, r1, #0xff
	strb r1, [r0]
	bxne lr
	subs r2, r2, #1
	bne _022D14B0
	bx lr
	arm_func_end ov00_022D14AC

	arm_func_start ov00_022D14D0
ov00_022D14D0: @ 0x022D14D0
	push {r4, lr}
	add r0, r0, #0x1e0
	mov r4, r2
	bl ov00_022D3B94
	mov r0, r4
	pop {r4, pc}
	arm_func_end ov00_022D14D0

	arm_func_start ov00_022D14E8
ov00_022D14E8: @ 0x022D14E8
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldrb r3, [r6, #3]
	ldrb r2, [r6, #4]
	mov r7, r0
	add r1, r6, #5
	add r2, r2, r3, lsl #8
	bl ov00_022D14D0
	ldrh r1, [r7, #0x32]
	mov r4, r0
	cmp r1, #4
	beq _022D1528
	cmp r1, #5
	beq _022D1608
	b _022D16E4
_022D1528:
	sub r4, r4, #0x10
	asr r0, r4, #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x3fc
	bl ov00_022D30BC
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, #0x10
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r7, #0x3fc
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r7, #0x3fc
	add r1, r7, #0x2e4
	mov r2, #8
	bl ov00_022D3104
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl ov00_022D3104
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r4, #2
	bl ov00_022D3104
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	bl ov00_022D31BC
	add r0, r7, #0x3fc
	bl ov00_022D30BC
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, #0x10
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl FUN_0207C40C
	add r0, r7, #0x3fc
	add r1, sp, #0
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	mov r2, #0x10
	bl ov00_022D3104
	add r0, r7, #0x3fc
	add r1, sp, #0x30
	bl ov00_022D31BC
	mov r5, #0x10
	b _022D16E4
_022D1608:
	sub r4, r4, #0x14
	asr r0, r4, #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x348
	bl ov00_022D397C
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r7, #0x348
	mov r2, #0x28
	bl ov00_022D39D0
	add r0, r7, #0x348
	add r1, r7, #0x2e4
	mov r2, #8
	bl ov00_022D39D0
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl ov00_022D39D0
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r4, #2
	bl ov00_022D39D0
	add r0, r7, #0x348
	add r1, sp, #0x30
	bl ov00_022D3A88
	add r0, r7, #0x348
	bl ov00_022D397C
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl FUN_0207C40C
	add r0, r7, #0x348
	add r1, sp, #0
	mov r2, #0x28
	bl ov00_022D39D0
	add r0, r7, #0x348
	add r1, sp, #0x30
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, r7, #0x348
	add r1, sp, #0x30
	bl ov00_022D3A88
	mov r5, #0x14
_022D16E4:
	add r0, r6, #5
	add r1, sp, #0x30
	mov r2, r5
	add r0, r0, r4
	bl FUN_02087348
	cmp r0, #0
	movne r0, #9
	strbne r0, [r7, #0x455]
	add r0, r7, #0x2ec
	bl ov00_022D14AC
	add r0, r4, #5
	add sp, sp, #0x44
	pop {r4, r5, r6, r7, pc}
	arm_func_end ov00_022D14E8

	arm_func_start ov00_022D1718
ov00_022D1718: @ 0x022D1718
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r4, r1
	mov r5, r0
	ldrh r0, [r5, #0x32]
	ldrb r2, [r4, #3]
	ldrb r1, [r4, #4]
	cmp r0, #4
	add r6, r4, #5
	add r7, r1, r2, lsl #8
	beq _022D1750
	cmp r0, #5
	beq _022D1820
	b _022D18EC
_022D1750:
	add r0, r5, #0x3fc
	bl ov00_022D30BC
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x3fc
	mov r2, #0x10
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x30
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r5, #0x3fc
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r5, #0x3fc
	add r1, r5, #0x1cc
	mov r2, #8
	bl ov00_022D3104
	add r0, r5, #0x3fc
	mov r1, r4
	mov r2, #1
	bl ov00_022D3104
	add r0, r5, #0x3fc
	add r1, r4, #3
	add r2, r7, #2
	bl ov00_022D3104
	add r0, r5, #0x3fc
	add r1, r6, r7
	bl ov00_022D31BC
	add r0, r5, #0x3fc
	bl ov00_022D30BC
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x3fc
	mov r2, #0x10
	bl ov00_022D3104
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x30
	bl FUN_0207C40C
	add r0, r5, #0x3fc
	add r1, sp, #0
	mov r2, #0x30
	bl ov00_022D3104
	add r0, r5, #0x3fc
	add r1, r6, r7
	mov r2, #0x10
	bl ov00_022D3104
	add r1, r6, r7
	add r0, r5, #0x3fc
	bl ov00_022D31BC
	add r7, r7, #0x10
	b _022D18EC
_022D1820:
	add r0, r5, #0x348
	bl ov00_022D397C
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x348
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x36
	mov r2, #0x28
	bl FUN_0207C40C
	add r1, sp, #0
	add r0, r5, #0x348
	mov r2, #0x28
	bl ov00_022D39D0
	add r0, r5, #0x348
	add r1, r5, #0x1cc
	mov r2, #8
	bl ov00_022D39D0
	add r0, r5, #0x348
	mov r1, r4
	mov r2, #1
	bl ov00_022D39D0
	add r0, r5, #0x348
	add r1, r4, #3
	add r2, r7, #2
	bl ov00_022D39D0
	add r0, r5, #0x348
	add r1, r6, r7
	bl ov00_022D3A88
	add r0, r5, #0x348
	bl ov00_022D397C
	ldr r1, [r5, #0xbc]
	add r0, r5, #0x348
	mov r2, #0x14
	bl ov00_022D39D0
	add r0, sp, #0
	mov r1, #0x5c
	mov r2, #0x28
	bl FUN_0207C40C
	add r0, r5, #0x348
	add r1, sp, #0
	mov r2, #0x28
	bl ov00_022D39D0
	add r0, r5, #0x348
	add r1, r6, r7
	mov r2, #0x14
	bl ov00_022D39D0
	add r1, r6, r7
	add r0, r5, #0x348
	bl ov00_022D3A88
	add r7, r7, #0x14
_022D18EC:
	asr r0, r7, #8
	strb r0, [r4, #3]
	mov r2, r7
	add r0, r5, #0xc8
	add r1, r4, #5
	strb r7, [r4, #4]
	bl ov00_022D3B94
	add r0, r5, #0x1d4
	bl ov00_022D14AC
	add r0, r7, #5
	add sp, sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D1718

	arm_func_start ov00_022D191C
ov00_022D191C: @ 0x022D191C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	add r4, sp, #0
_022D1930:
	mov r0, r4
	mov r1, r5
	bl ov00_022CB4D4
	ldr r1, [sp]
	cmp r1, #0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r1, r6
	strhi r6, [sp]
	ldr r2, [sp]
	mov r1, r7
	bl FUN_0207C4C8
	ldr r0, [sp]
	mov r1, r5
	bl ov00_022CB5B4
	ldr r0, [sp]
	sub r6, r6, r0
	cmp r6, #0
	add r7, r7, r0
	bgt _022D1930
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D191C

	arm_func_start ov00_022D1988
ov00_022D1988: @ 0x022D1988
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	add r0, r6, #0x2ec
	bl ov00_022D39D0
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3a4
	bl ov00_022D3104
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D1988

	arm_func_start ov00_022D19B4
ov00_022D19B4: @ 0x022D19B4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	ldrb r2, [sb, #0x455]
	mov r8, r1
	cmp r2, #9
	bne _022D19E0
	ldr r1, _022D1C30 @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D19E0:
	ldrb r3, [r8, #3]
	ldrb r1, [r8, #4]
	add r0, r2, #0xf9
	and r0, r0, #0xff
	add r1, r1, r3, lsl #8
	cmp r0, #1
	add r6, r1, #5
	ldrb r4, [r8]
	bhi _022D1A0C
	cmp r4, #0x15
	bne _022D1A1C
_022D1A0C:
	cmp r4, #0x15
	bne _022D1A4C
	cmp r6, #7
	bls _022D1A4C
_022D1A1C:
	mov r0, sb
	mov r1, r8
	bl ov00_022D14E8
	ldrb r2, [sb, #0x455]
	mov r6, r0
	cmp r2, #9
	bne _022D1A4C
	ldr r1, _022D1C30 @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D1A4C:
	sub r0, r4, #0x14
	cmp r0, #3
	add r5, r8, #5
	sub r6, r6, #5
	addls pc, pc, r0, lsl #2
	b _022D1C14
_022D1A64: @ jump table
	b _022D1A74 @ case 0
	b _022D1AA4 @ case 1
	b _022D1AB8 @ case 2
	b _022D1BF4 @ case 3
_022D1A74:
	ldr r0, [sb, #0x1d4]
	cmp r0, #0
	moveq r0, #9
	strbeq r0, [sb, #0x455]
	beq _022D1C1C
	add r0, sb, #0x2e4
	mov r1, #0
	mov r2, #8
	bl FUN_0207C40C
	mov r0, #7
	strb r0, [sb, #0x455]
	b _022D1C1C
_022D1AA4:
	ldrb r0, [r5]
	cmp r0, #2
	moveq r0, #9
	strbeq r0, [sb, #0x455]
	b _022D1C1C
_022D1AB8:
	mov fp, #4
	mov sl, #1
	mov r4, #0
_022D1AC4:
	ldrb r7, [r5, #2]
	ldrb r0, [r5, #1]
	ldrb r3, [r5]
	ldrb r1, [r5, #3]
	lsl r7, r7, #8
	add r0, r7, r0, lsl #16
	cmp r3, #0xb
	add r7, r1, r0
	add r5, r5, #4
	bgt _022D1B14
	cmp r3, #0xb
	bge _022D1B88
	cmp r3, #2
	bgt _022D1BBC
	cmp r3, #1
	blt _022D1BBC
	beq _022D1B44
	cmp r3, #2
	beq _022D1B78
	b _022D1BBC
_022D1B14:
	sub r0, r3, #0xd
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _022D1BBC
_022D1B24: @ jump table
	b _022D1B9C @ case 0
	b _022D1BA4 @ case 1
	b _022D1BBC @ case 2
	b _022D1B68 @ case 3
	b _022D1BBC @ case 4
	b _022D1BBC @ case 5
	b _022D1BBC @ case 6
	b _022D1BAC @ case 7
_022D1B44:
	ldrb r0, [sb, #0x454]
	cmp r0, #0
	beq _022D1BC4
	cmp r2, #0
	bne _022D1BC4
	mov r0, sb
	mov r1, r5
	bl ov00_022D0C54
	b _022D1BC4
_022D1B68:
	mov r0, sb
	mov r1, r5
	bl ov00_022D11F8
	b _022D1BC4
_022D1B78:
	mov r0, sb
	mov r1, r5
	bl ov00_022D0A1C
	b _022D1BC4
_022D1B88:
	mov r0, sb
	mov r1, r5
	bl ov00_022D07F8
	strb r4, [sb, #0x5ac]
	b _022D1BC4
_022D1B9C:
	strb sl, [sb, #0x5ac]
	b _022D1BC4
_022D1BA4:
	strb fp, [sb, #0x455]
	b _022D1BC4
_022D1BAC:
	mov r0, sb
	mov r1, r5
	bl ov00_022D13EC
	b _022D1BC4
_022D1BBC:
	mov r0, #9
	strb r0, [sb, #0x455]
_022D1BC4:
	mov r0, sb
	sub r1, r5, #4
	add r2, r7, #4
	bl ov00_022D1988
	add r0, r7, #4
	add r5, r5, r7
	subs r6, r6, r0
	beq _022D1C1C
	ldrb r2, [sb, #0x455]
	cmp r2, #9
	bne _022D1AC4
	b _022D1C1C
_022D1BF4:
	str r8, [sb, #0x824]
	mov r0, #5
	str r0, [sb, #0x82c]
	add r0, r6, #5
	str r0, [sb, #0x828]
	mov r0, #1
	strb r0, [sb, #0x456]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D1C14:
	mov r0, #9
	strb r0, [sb, #0x455]
_022D1C1C:
	ldr r1, _022D1C30 @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D1C30: .4byte 0x023250B8
	arm_func_end ov00_022D19B4

	arm_func_start ov00_022D1C34
ov00_022D1C34: @ 0x022D1C34
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	add r6, sp, #0
_022D1C48:
	mov r0, r6
	mov r1, r5
	bl ov00_022CB4D4
	ldr r1, [sp]
	cmp r1, #0
	moveq r0, #9
	addeq sp, sp, #4
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, pc}
	cmp r1, #5
	blo _022D1C48
	ldrb r1, [r0]
	cmp r1, #0x80
	bne _022D1D30
	ldrb r1, [r4, #0x454]
	cmp r1, #0
	beq _022D1D24
	ldrb r1, [r4, #0x455]
	cmp r1, #0
	bne _022D1D24
	ldrb r2, [r0, #1]
	mov r1, r5
	mov r0, #2
	str r2, [sp]
	bl ov00_022CB5B4
	ldr r1, _022D1DC8 @ =0x0232508C
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r2, r5
	bl ov00_022D191C
	cmp r0, #0
	ldrbeq r0, [r6]
	cmpeq r0, #1
	movne r0, #9
	strbne r0, [r4, #0x455]
	bne _022D1D00
	mov r0, r4
	add r1, r6, #1
	bl ov00_022D0B8C
_022D1D00:
	ldr r2, [sp]
	mov r0, r4
	mov r1, r6
	bl ov00_022D1988
	ldr r1, _022D1DCC @ =0x023250B8
	mov r0, r6
	ldr r1, [r1]
	blx r1
	b _022D1DBC
_022D1D24:
	mov r0, #9
	strb r0, [r4, #0x455]
	b _022D1DBC
_022D1D30:
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _022D1DD0 @ =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strbhi r0, [r4, #0x455]
	pophi {r3, r4, r5, r6, pc}
	ldr r1, _022D1DC8 @ =0x0232508C
	ldr r1, [r1]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r2, r5
	bl ov00_022D191C
	cmp r0, #0
	beq _022D1DB0
	ldr r1, _022D1DCC @ =0x023250B8
	mov r0, r6
	ldr r1, [r1]
	blx r1
	mov r0, #9
	add sp, sp, #4
	strb r0, [r4, #0x455]
	pop {r3, r4, r5, r6, pc}
_022D1DB0:
	mov r0, r4
	mov r1, r6
	bl ov00_022D19B4
_022D1DBC:
	ldrb r0, [r4, #0x455]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022D1DC8: .4byte 0x0232508C
_022D1DCC: .4byte 0x023250B8
_022D1DD0: .4byte 0x00004805
	arm_func_end ov00_022D1C34

	arm_func_start ov00_022D1DD4
ov00_022D1DD4: @ 0x022D1DD4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	ldr r2, _022D1EF4 @ =0x02326AC0
	mov sl, r0
	ldrb r0, [r2]
	mov sb, r1
	cmp r0, #0
	bne _022D1E38
	ldr r2, _022D1EF8 @ =0x023250E0
	add r0, sp, #0
	ldr r3, [r2]
	ldmib r2, {r1, r4}
	umull r6, r5, r4, r3
	mla r5, r4, r1, r5
	ldr r1, [r2, #0xc]
	ldr r4, [r2, #0x10]
	mla r5, r1, r3, r5
	ldr r1, [r2, #0x14]
	adds r4, r4, r6
	adc r3, r1, r5
	str r4, [r2]
	mov r1, #4
	str r3, [r2, #4]
	str r3, [sp]
	bl ov00_022D1F04
_022D1E38:
	cmp sb, #0
	mov r8, #0
	addle sp, sp, #0x74
	mov r1, #0x14
	pople {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, _022D1EFC @ =0x02326C38
	add r6, sp, #0x18
	mov fp, r1
	add r4, sp, #4
_022D1E5C:
	cmp r1, #0x14
	bne _022D1ED0
	mov r0, r6
	bl ov00_022D397C
	bl FUN_0207B7E4
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl ov00_022D39D0
	mov r0, r6
	mov r1, r4
	bl ov00_022D3AF0
	ldr lr, _022D1F00 @ =0x02326C4B
	mov r3, #1
	mov r2, #0x13
	add ip, sp, #0x17
_022D1EA0:
	ldrb r1, [lr]
	ldrb r0, [ip], #-1
	subs r2, r2, #1
	add r0, r1, r0
	add r0, r3, r0
	strb r0, [lr], #-1
	lsr r3, r0, #8
	bpl _022D1EA0
	str r0, [sp]
	mov r0, r7
	bl FUN_0207B7F8
	mov r1, #0
_022D1ED0:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r0, #0
	strbne r0, [sl, r8]
	addne r8, r8, #1
	cmp r8, sb
	blt _022D1E5C
	add sp, sp, #0x74
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D1EF4: .4byte 0x02326AC0
_022D1EF8: .4byte 0x023250E0
_022D1EFC: .4byte 0x02326C38
_022D1F00: .4byte 0x02326C4B
	arm_func_end ov00_022D1DD4

	arm_func_start ov00_022D1F04
ov00_022D1F04: @ 0x022D1F04
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x5c
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	bl ov00_022D397C
	bl FUN_0207B7E4
	mov r4, r0
	ldr r1, _022D1F6C @ =0x02326C38
	add r0, sp, #0
	mov r2, #0x14
	bl ov00_022D39D0
	mov r1, r6
	mov r2, r5
	add r0, sp, #0
	bl ov00_022D39D0
	ldr r1, _022D1F6C @ =0x02326C38
	add r0, sp, #0
	bl ov00_022D3A88
	mov r0, r4
	bl FUN_0207B7F8
	ldr r0, _022D1F70 @ =0x02326AC0
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #0x5c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022D1F6C: .4byte 0x02326C38
_022D1F70: .4byte 0x02326AC0
	arm_func_end ov00_022D1F04

	arm_func_start ov00_022D1F74
ov00_022D1F74: @ 0x022D1F74
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _022D20C4 @ =0x0232508C
	mov r6, r0
	ldr r1, [r1]
	mov r0, #0x83
	ldr r5, [r6, #0xc]
	blx r1
	movs r4, r0
	moveq r0, #9
	addeq sp, sp, #4
	strbeq r0, [r5, #0x455]
	popeq {r3, r4, r5, r6, pc}
	mov r0, #0x14
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	mov r3, #1
	strb r3, [r4, #4]
	add r0, r5, #0x1cc
	mov r2, #8
	strb r3, [r4, #5]
	bl FUN_0207C40C
	mov r0, #0x16
	strb r0, [r4, #6]
	mov r0, #3
	strb r0, [r4, #7]
	mov r1, #0
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	mov r0, #0x28
	strb r0, [r4, #0xa]
	mov r0, #0x14
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
	mov r3, #0x24
	add r0, r5, #0x3a4
	add r1, r5, #0x3fc
	mov r2, #0x58
	strb r3, [r4, #0xe]
	bl FUN_0207C4C8
	mov r0, r5
	add r1, r4, #0xf
	mov r2, #0
	bl ov00_022D1234
	add r0, r5, #0x3fc
	add r1, r5, #0x3a4
	mov r2, #0x58
	bl FUN_0207C4C8
	add r0, r5, #0x2ec
	add r1, r5, #0x348
	mov r2, #0x5c
	bl FUN_0207C4C8
	mov r0, r5
	add r1, r4, #0x1f
	mov r2, #0
	bl ov00_022D1310
	add r0, r5, #0x348
	add r1, r5, #0x2ec
	mov r2, #0x5c
	bl FUN_0207C4C8
	mov r0, r5
	add r1, r4, #0xb
	mov r2, #0x28
	bl ov00_022D1988
	mov r0, r5
	add r1, r4, #6
	bl ov00_022D1718
	mov r2, #0
	add r1, r0, #6
	mov r0, r4
	mov r3, r2
	str r6, [sp]
	bl ov00_022CB77C
	ldr r1, _022D20C8 @ =0x023250B8
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022D20C4: .4byte 0x0232508C
_022D20C8: .4byte 0x023250B8
	arm_func_end ov00_022D1F74

	arm_func_start ov00_022D20CC
ov00_022D20CC: @ 0x022D20CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022D2254 @ =0x0232508C
	mov r7, r0
	ldr r1, [r1]
	mov r0, #0x98
	ldr r4, [r7, #0xc]
	blx r1
	movs r5, r0
	moveq r0, #9
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, #3
	strb r0, [r5, #9]
	mov r0, #0
	strb r0, [r5, #0xa]
	bl ov00_022CFD74
	lsr r1, r0, #0x18
	strb r1, [r4, #0x34]
	lsr r1, r0, #0x10
	strb r1, [r4, #0x35]
	lsr r1, r0, #8
	strb r1, [r4, #0x36]
	strb r0, [r4, #0x37]
	add r0, r4, #0x38
	mov r1, #0x1c
	bl ov00_022D1DD4
	add r0, r4, #0x34
	add r1, r5, #0xb
	mov r2, #0x20
	bl FUN_0207C4C8
	ldrh r2, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	mov r0, r4
	bl ov00_022CFB80
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	moveq r0, #0
	strbeq r0, [r5, #0x2b]
	addeq r0, r5, #0x2c
	beq _022D2184
	mov r2, #0x20
	add r0, r4, #0x74
	add r1, r5, #0x2c
	strb r2, [r5, #0x2b]
	bl FUN_0207C4C8
	add r0, r5, #0x4c
_022D2184:
	mov r6, #0
	strb r6, [r0]
	mov r1, #4
	strb r1, [r0, #1]
	ldr r2, _022D2258 @ =0x023188CC
	add r0, r0, #2
_022D219C:
	lsl r3, r6, #1
	ldrh r1, [r2, r3]
	add r6, r6, #1
	cmp r6, #2
	asr r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r2, r3]
	strb r1, [r0, #1]
	add r0, r0, #2
	blo _022D219C
	mov r3, #1
	mov r2, #0
	strb r3, [r0]
	add r1, r0, #2
	sub r1, r1, r5
	sub r6, r1, #5
	strb r2, [r0, #1]
	sub r1, r6, #4
	mov r0, #0x16
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #1]
	strb r2, [r5, #2]
	asr r0, r6, #8
	strb r0, [r5, #3]
	strb r6, [r5, #4]
	strb r3, [r5, #5]
	asr r0, r1, #0x10
	strb r0, [r5, #6]
	asr r0, r1, #8
	strb r0, [r5, #7]
	strb r1, [r5, #8]
	mov r0, r5
	mov r3, r2
	add r1, r6, #5
	str r7, [sp]
	bl ov00_022CB77C
	mov r0, r4
	mov r2, r6
	add r1, r5, #5
	bl ov00_022D1988
	ldr r1, _022D225C @ =0x023250B8
	mov r0, r5
	ldr r1, [r1]
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022D2254: .4byte 0x0232508C
_022D2258: .4byte 0x023188CC
_022D225C: .4byte 0x023250B8
	arm_func_end ov00_022D20CC

	arm_func_start ov00_022D2260
ov00_022D2260: @ 0x022D2260
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r4, [sl, #0xc]
	ldrb r0, [r4, #0x5ac]
	cmp r0, #0
	beq _022D2294
	mov r2, #0
	ldr r0, _022D2514 @ =0x02318150
	mov r3, r2
	mov r1, #7
	str sl, [sp]
	bl ov00_022CB77C
_022D2294:
	mov r0, #3
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	add r0, r4, #2
	mov r1, #0x2e
	bl ov00_022D1DD4
	ldr sb, [r4, #0x594]
	ldr r0, _022D2518 @ =0x0232508C
	lsl r1, sb, #1
	ldr r2, [r0]
	add r1, r1, r1, lsr #31
	mov r0, sb
	asr r7, r1, #1
	blx r2
	movs r8, r0
	moveq r0, #9
	addeq sp, sp, #8
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	strb r0, [r8]
	mov r2, #2
	add r0, r8, #2
	sub r1, sb, #0x33
	strb r2, [r8, #1]
	bl ov00_022D1DD4
	add r1, r8, sb
	mov r0, r4
	sub r3, sb, #0x31
	mov r5, #0
	sub r1, r1, #0x30
	mov r2, #0x30
	strb r5, [r8, r3]
	bl FUN_0207C4C8
	ldr r1, _022D2518 @ =0x0232508C
	lsl r0, r7, #3
	ldr r1, [r1]
	blx r1
	movs r5, r0
	bne _022D2358
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D2358:
	add r0, r5, r7, lsl #1
	add fp, r0, r7, lsl #1
	mov r1, r8
	mov r2, sb
	mov r3, r7
	str r0, [sp, #4]
	add r6, fp, r7, lsl #1
	bl ov00_022D49AC
	add r0, r4, #0x198
	add r1, r0, #0x400
	ldr r2, [r4, #0x5a0]
	mov r0, fp
	mov r3, r7
	bl ov00_022D49AC
	add r1, r4, #0x94
	mov r0, r6
	add r1, r1, #0x400
	mov r2, sb
	mov r3, r7
	bl ov00_022D49AC
	bl ov00_022CFDCC
	str r6, [sp]
	mov r6, r0
	ldr r1, [sp, #4]
	mov r2, fp
	mov r3, r7
	mov r0, r5
	bl ov00_022D4398
	mov r0, r6
	bl ov00_022CFE18
	ldr r1, _022D2518 @ =0x0232508C
	add r0, sb, #0x49
	ldr r1, [r1]
	blx r1
	movs r6, r0
	bne _022D2418
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r5
	ldr r1, [r1]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D2418:
	mov r0, #0x16
	strb r0, [r6]
	mov r1, #3
	add r0, sb, #4
	strb r1, [r6, #1]
	mov r1, #0
	strb r1, [r6, #2]
	asr r1, r0, #8
	strb r1, [r6, #3]
	strb r0, [r6, #4]
	mov r0, #0x10
	strb r0, [r6, #5]
	asr r0, sb, #0x10
	strb r0, [r6, #6]
	asr r0, sb, #8
	strb r0, [r6, #7]
	strb sb, [r6, #8]
	tst sb, #1
	add r0, r6, #9
	beq _022D2480
	add r0, sb, sb, lsr #31
	asr r0, r0, #1
	lsl r0, r0, #1
	ldrh r1, [r5, r0]
	add r0, r6, #0xa
	strb r1, [r6, #9]
_022D2480:
	add r1, sb, sb, lsr #31
	asr r1, r1, #1
	subs r3, r1, #1
	bmi _022D24B4
_022D2490:
	lsl r2, r3, #1
	ldrh r1, [r5, r2]
	subs r3, r3, #1
	asr r1, r1, #8
	strb r1, [r0]
	ldrh r1, [r5, r2]
	strb r1, [r0, #1]
	add r0, r0, #2
	bpl _022D2490
_022D24B4:
	mov r2, #0
	mov r0, r6
	mov r3, r2
	add r1, sb, #9
	str sl, [sp]
	bl ov00_022CB77C
	mov r0, r4
	add r1, r6, #5
	add r2, sb, #4
	bl ov00_022D1988
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r6
	ldr r1, [r1]
	blx r1
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r1, _022D251C @ =0x023250B8
	mov r0, r8
	ldr r1, [r1]
	blx r1
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D2514: .4byte 0x02318150
_022D2518: .4byte 0x0232508C
_022D251C: .4byte 0x023250B8
	arm_func_end ov00_022D2260

	arm_func_start ov00_022D2520
ov00_022D2520: @ 0x022D2520
	push {r4, lr}
	mov r4, r0
	bl ov00_022D1C34
	cmp r0, #7
	movne r0, #1
	popne {r4, pc}
	mov r0, r4
	bl ov00_022D1C34
	cmp r0, #6
	movne r0, #1
	moveq r0, #0
	pop {r4, pc}
	arm_func_end ov00_022D2520

	arm_func_start ov00_022D2550
ov00_022D2550: @ 0x022D2550
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	bl ov00_022D20CC
_022D2560:
	mov r0, r5
	bl ov00_022D1C34
	cmp r0, #9
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #4
	beq _022D2588
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _022D2560
_022D2588:
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _022D25BC
	mov r0, r4
	bl ov00_022D102C
	mov r0, r5
	bl ov00_022D2520
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl ov00_022D1F74
	b _022D260C
_022D25BC:
	mov r0, r5
	bl ov00_022D2260
	mov r0, r4
	bl ov00_022D0FCC
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _022D25E8
	ldrh r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl ov00_022CFC20
_022D25E8:
	mov r0, r4
	bl ov00_022D102C
	mov r0, r5
	bl ov00_022D1F74
	mov r0, r5
	bl ov00_022D2520
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_022D260C:
	mov r0, #8
	strb r0, [r4, #0x455]
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D2550

	arm_func_start ov00_022D261C
ov00_022D261C: @ 0x022D261C
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	ldr r4, [r5, #0xc]
	cmp r1, #4
	beq _022D2644
	bl ov00_022CB278
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_022D2644:
	mov r1, #0
	strb r1, [r4, #0x455]
	str r1, [r4, #0x1d4]
	add r0, r4, #0x2ec
	strb r1, [r4, #0x454]
	bl ov00_022D397C
	add r0, r4, #0x3a4
	bl ov00_022D30BC
	mov r0, r5
	bl ov00_022D2550
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D261C

	arm_func_start ov00_022D2670
ov00_022D2670: @ 0x022D2670
	push {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xc]
	mov r6, r0
	ldr ip, [r4, #0x824]
	cmp ip, #0
	beq _022D26F4
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	bne _022D26F4
	ldr r3, [r4, #0x82c]
	ldr r1, [r4, #0x828]
	mov r2, r5
	add r0, ip, r3
	sub r1, r1, r3
	bl ov00_022D191C
	cmp r0, #0
	beq _022D26D8
	ldr r1, _022D2744 @ =0x023250B8
	ldr r0, [r4, #0x824]
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r4, #0x824]
	str r0, [r6]
	pop {r4, r5, r6, pc}
_022D26D8:
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl ov00_022D19B4
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
_022D26F4:
	ldr r0, [r4, #0x824]
	cmp r0, #0
	bne _022D2724
_022D2700:
	mov r0, r5
	bl ov00_022D1C34
	cmp r0, #9
	moveq r0, #0
	streq r0, [r6]
	popeq {r4, r5, r6, pc}
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _022D2700
_022D2724:
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	str r0, [r6]
	ldr r1, [r4, #0x824]
	ldr r0, [r4, #0x82c]
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D2744: .4byte 0x023250B8
	arm_func_end ov00_022D2670

	arm_func_start ov00_022D2748
ov00_022D2748: @ 0x022D2748
	push {r4, lr}
	ldr r4, [r1, #0xc]
	ldr r2, [r4, #0x828]
	ldr r1, [r4, #0x82c]
	sub r2, r2, r1
	cmp r0, r2
	blo _022D2788
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _022D277C
	ldr r1, _022D2794 @ =0x023250B8
	ldr r1, [r1]
	blx r1
_022D277C:
	mov r0, #0
	str r0, [r4, #0x824]
	pop {r4, pc}
_022D2788:
	add r0, r1, r0
	str r0, [r4, #0x82c]
	pop {r4, pc}
	.align 2, 0
_022D2794: .4byte 0x023250B8
	arm_func_end ov00_022D2748

	arm_func_start ov00_022D2798
ov00_022D2798: @ 0x022D2798
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldr r0, [r5, #0x44]
	bne _022D2838
	cmp r0, #5
	addlo sp, sp, #4
	poplo {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r5
	bl ov00_022CB4D4
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _022D28D4 @ =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strbhi r0, [r4, #0x455]
	pophi {r3, r4, r5, r6, pc}
	ldr r1, _022D28D8 @ =0x0232508C
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	str r0, [r4, #0x824]
	moveq r0, #9
	addeq sp, sp, #4
	strbeq r0, [r4, #0x455]
	popeq {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x828]
	str r0, [r4, #0x82c]
	strb r0, [r4, #0x456]
	b _022D2844
_022D2838:
	cmp r0, #0
	addeq sp, sp, #4
	popeq {r3, r4, r5, r6, pc}
_022D2844:
	add r0, sp, #0
	mov r1, r5
	bl ov00_022CB4D4
	ldr r3, [r4, #0x828]
	ldr r2, [r4, #0x82c]
	ldr r1, [sp]
	sub r2, r3, r2
	cmp r1, r2
	strhs r2, [sp]
	movhs r6, #1
	ldr r3, [r4, #0x824]
	ldr r1, [r4, #0x82c]
	ldr r2, [sp]
	add r1, r3, r1
	movlo r6, #0
	bl FUN_0207C4C8
	ldr r0, [sp]
	mov r1, r5
	bl ov00_022CB5B4
	cmp r6, #0
	beq _022D28BC
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl ov00_022D19B4
	ldrb r0, [r4, #0x456]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
	pop {r3, r4, r5, r6, pc}
_022D28BC:
	ldr r1, [r4, #0x82c]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #0x82c]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022D28D4: .4byte 0x00004805
_022D28D8: .4byte 0x0232508C
	arm_func_end ov00_022D2798

	arm_func_start ov00_022D28DC
ov00_022D28DC: @ 0x022D28DC
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldrbne r0, [r4, #0x456]
	cmpne r0, #0
	bne _022D2904
	mov r0, r5
	bl ov00_022D2798
_022D2904:
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrbne r0, [r4, #0x456]
	cmpne r0, #0
	beq _022D2928
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	pop {r3, r4, r5, pc}
_022D2928:
	cmp r1, #0
	bne _022D2950
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _022D2948
	ldrb r0, [r4, #0x455]
	cmp r0, #9
	bne _022D2950
_022D2948:
	mvn r0, #0
	pop {r3, r4, r5, pc}
_022D2950:
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D28DC

	arm_func_start ov00_022D2958
ov00_022D2958: @ 0x022D2958
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x30]
	mov sb, r1
	mov r1, r4
	ldr r1, [r1, #0xc]
	mov sl, r0
	mov r0, #0
	str r4, [sp, #0x30]
	str r1, [sp, #8]
	mov r8, r2
	add r5, sb, r3
	str r0, [sp, #4]
_022D298C:
	ldr r0, _022D2A80 @ =0x00000B4F
	ldr r1, _022D2A84 @ =0x0232508C
	cmp r5, r0
	movgt r6, r0
	movle r6, r5
	ldr r1, [r1]
	add r0, r6, #0x19
	blx r1
	movs r4, r0
	beq _022D2A74
	cmp sb, r6
	movhs r7, r6
	movlo r7, sb
	mov r0, sl
	add r1, r4, #5
	mov r2, r7
	sub fp, r6, r7
	bl FUN_0207C4C8
	add r1, r4, #5
	mov r0, r8
	add r1, r1, r7
	mov r2, fp
	add sl, sl, r7
	sub sb, sb, r7
	bl FUN_0207C4C8
	mov r0, #0x17
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	asr r0, r6, #8
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	mov r1, r4
	add r8, r8, fp
	strb r6, [r4, #4]
	bl ov00_022D1718
	ldr r1, [sp, #0x30]
	mov r7, r0
	mov r2, #0
	str r1, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	bl ov00_022CB77C
	cmp r0, r7
	ldr r1, _022D2A88 @ =0x023250B8
	mov r0, r4
	ldr r1, [r1]
	movlo r6, #0
	blx r1
	ldr r0, [sp, #4]
	subs r5, r5, r6
	add r0, r0, r6
	str r0, [sp, #4]
	cmpne r6, #0
	bne _022D298C
_022D2A74:
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D2A80: .4byte 0x00000B4F
_022D2A84: .4byte 0x0232508C
_022D2A88: .4byte 0x023250B8
	arm_func_end ov00_022D2958

	arm_func_start ov00_022D2A8C
ov00_022D2A8C: @ 0x022D2A8C
	push {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #0x455]
	cmp r0, #8
	bne _022D2AFC
	mov ip, #0
	mov r6, #0x15
	mov lr, #3
	mov r3, #2
	mov r2, #1
	add r1, sp, #4
	mov r0, r4
	strb r6, [sp, #4]
	strb lr, [sp, #5]
	strb ip, [sp, #6]
	strb ip, [sp, #7]
	strb r3, [sp, #8]
	strb r2, [sp, #9]
	strb ip, [sp, #0xa]
	bl ov00_022D1718
	mov r2, #0
	mov r1, r0
	add r0, sp, #4
	mov r3, r2
	str r5, [sp]
	bl ov00_022CB77C
_022D2AFC:
	mov r0, #0
	strb r0, [r4, #0x455]
	add sp, sp, #0x20
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D2A8C

	arm_func_start ov00_022D2B0C
ov00_022D2B0C: @ 0x022D2B0C
	push {r4, lr}
	ldr r4, [r0, #0xc]
	mov r0, #0
	strb r0, [r4, #0x455]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _022D2B34
	ldr r1, _022D2B40 @ =0x023250B8
	ldr r1, [r1]
	blx r1
_022D2B34:
	mov r0, #0
	str r0, [r4, #0x824]
	pop {r4, pc}
	.align 2, 0
_022D2B40: .4byte 0x023250B8
	arm_func_end ov00_022D2B0C

	arm_func_start ov00_022D2B44
ov00_022D2B44: @ 0x022D2B44
	push {r4, lr}
	mov r4, r0
	ldr r0, _022D2B6C @ =0x02000C1C
	bl FUN_02000B9C
	ldr r0, _022D2B70 @ =0x022B966C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	strbne r4, [r0, #9]
	pop {r4, pc}
	.align 2, 0
_022D2B6C: .4byte 0x02000C1C
_022D2B70: .4byte 0x022B966C
	arm_func_end ov00_022D2B44

	arm_func_start ov00_022D2B74
ov00_022D2B74: @ 0x022D2B74
	push {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_0207B7E4
	mov r4, #0
	ldr r6, _022D2C48 @ =0x02326AC8
	ldr r1, _022D2C4C @ =0x000003BD
	mov r2, r4
_022D2B90:
	ldrb r3, [r6, #0x5a]
	cmp r3, #0
	beq _022D2BAC
	ldr r3, [r6, #0x50]
	sub r3, r5, r3
	cmp r3, r1
	strbgt r2, [r6, #0x5a]
_022D2BAC:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #0x5c
	blt _022D2B90
	bl FUN_0207B7F8
	ldr r0, _022D2C50 @ =0x022B966C
	ldr r4, [r0, #8]
	cmp r4, #0
	popeq {r4, r5, r6, pc}
	mov r6, #0
_022D2BD4:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	ldrbne r0, [r1, #9]
	cmpne r0, #0
	beq _022D2C38
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _022D2C38
	ldr r0, [r1, #0xc]
	ldrb r0, [r0, #0x455]
	cmp r0, #8
	bhs _022D2C38
	ldr r0, [r1, #0x10]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _022D2C38
	ldr r0, [r1, #4]
	cmp r0, #2
	bne _022D2C38
	strb r6, [r1, #8]
	str r6, [r1, #4]
	ldr r0, [r1]
	bl FUN_02079940
_022D2C38:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _022D2BD4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D2C48: .4byte 0x02326AC8
_022D2C4C: .4byte 0x000003BD
_022D2C50: .4byte 0x022B966C
	arm_func_end ov00_022D2B74

	arm_func_start ov00_022D2C54
ov00_022D2C54: @ 0x022D2C54
	ldr ip, _022D2C68 @ =FUN_0207C40C
	ldr r0, _022D2C6C @ =0x02326AC8
	mov r1, #0
	mov r2, #0x170
	bx ip
	.align 2, 0
_022D2C68: .4byte FUN_0207C40C
_022D2C6C: .4byte 0x02326AC8
	arm_func_end ov00_022D2C54

	arm_func_start ov00_022D2C70
ov00_022D2C70: @ 0x022D2C70
	ldr ip, _022D2C84 @ =FUN_0207C4C8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_022D2C84: .4byte FUN_0207C4C8
	arm_func_end ov00_022D2C70

	arm_func_start ov00_022D2C88
ov00_022D2C88: @ 0x022D2C88
	ldr ip, _022D2C9C @ =FUN_0207C4C8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_022D2C9C: .4byte FUN_0207C4C8
	arm_func_end ov00_022D2C88

	arm_func_start ov00_022D2CA0
ov00_022D2CA0: @ 0x022D2CA0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	str r0, [sp]
	ldr r3, [sp]
	add r0, sp, #4
	mov r2, #0x40
	ldm r3, {r4, r5, r6, r7}
	bl ov00_022D2C88
	mov r3, #0
	ldr lr, _022D30B4 @ =0x02318934
	mov ip, r3
	add r2, sp, #4
_022D2CD0:
	ldr r1, _022D30B8 @ =0x023189B4
	ldrb r0, [lr]
	add sb, r1, r3, lsl #2
	eor r1, r6, r7
	and r8, r5, r1
	ldr r1, _022D30B8 @ =0x023189B4
	ldr r0, [r2, r0, lsl #2]
	ldr sl, [r1, r3, lsl #2]
	eor r1, r7, r8
	add r0, r1, r0
	add r0, sl, r0
	add r1, r4, r0
	lsr r0, r1, #0x19
	orr r0, r0, r1, lsl #7
	ldrb r1, [lr, #1]
	add r4, r5, r0
	eor r0, r5, r6
	and r0, r4, r0
	ldr sl, [r2, r1, lsl #2]
	eor r0, r6, r0
	add r0, r0, sl
	ldr r8, [sb, #4]
	ldrb sl, [lr, #2]
	add r0, r8, r0
	add r7, r7, r0
	lsr r0, r7, #0x14
	orr r0, r0, r7, lsl #12
	add r7, r4, r0
	eor r0, r4, r5
	and r0, r7, r0
	ldr r1, [sb, #8]
	ldrb fp, [lr, #3]
	ldr sl, [r2, sl, lsl #2]
	eor r0, r5, r0
	add r0, r0, sl
	add r0, r1, r0
	add r6, r6, r0
	lsr r1, r6, #0xf
	orr r1, r1, r6, lsl #17
	add ip, ip, #1
	eor r8, r7, r4
	add r6, r7, r1
	and r1, r6, r8
	ldr r0, [r2, fp, lsl #2]
	eor r1, r4, r1
	ldr sb, [sb, #0xc]
	add r0, r1, r0
	add r0, sb, r0
	add r1, r5, r0
	lsr r0, r1, #0xa
	orr r0, r0, r1, lsl #22
	add lr, lr, #4
	add r5, r6, r0
	add r3, r3, #4
	cmp ip, #4
	blt _022D2CD0
	ldr r0, _022D30B4 @ =0x02318934
	ldr lr, _022D30B8 @ =0x023189B4
	mov fp, #0
	add sl, r0, r3
	add sb, sp, #4
_022D2DC4:
	ldrb r0, [sl]
	add ip, lr, r3, lsl #2
	eor r1, r5, r6
	and r1, r7, r1
	ldr r8, [lr, r3, lsl #2]
	eor r1, r6, r1
	ldr r0, [sb, r0, lsl #2]
	ldr r2, [ip, #4]
	add r0, r1, r0
	add r0, r8, r0
	add r1, r4, r0
	lsr r0, r1, #0x1b
	orr r1, r0, r1, lsl #5
	ldrb r0, [sl, #1]
	add r4, r5, r1
	eor r1, r4, r5
	and r1, r6, r1
	eor r1, r5, r1
	ldr r0, [sb, r0, lsl #2]
	ldr r8, [ip, #8]
	add r0, r1, r0
	add r0, r2, r0
	add r2, r7, r0
	ldr r0, [ip, #0xc]
	lsr r1, r2, #0x17
	orr r1, r1, r2, lsl #9
	add r7, r4, r1
	eor r1, r7, r4
	and r1, r5, r1
	eor r2, r4, r1
	ldrb r1, [sl, #2]
	ldrb ip, [sl, #3]
	add sl, sl, #4
	ldr r1, [sb, r1, lsl #2]
	ldr ip, [sb, ip, lsl #2]
	add r1, r2, r1
	add r1, r8, r1
	add r2, r6, r1
	lsr r1, r2, #0x12
	orr r1, r1, r2, lsl #14
	add r6, r7, r1
	eor r1, r6, r7
	and r1, r4, r1
	eor r1, r7, r1
	add r1, r1, ip
	add r0, r0, r1
	add r1, r5, r0
	lsr r0, r1, #0xc
	orr r0, r0, r1, lsl #20
	add r5, r6, r0
	add r3, r3, #4
	add fp, fp, #1
	cmp fp, #4
	blt _022D2DC4
	ldr r0, _022D30B4 @ =0x02318934
	ldr r1, _022D30B8 @ =0x023189B4
	add r2, r0, r3
	mov r8, #0
	add r0, sp, #4
_022D2EB0:
	ldrb sb, [r2]
	add fp, r1, r3, lsl #2
	eor ip, r5, r6
	ldr sl, [r0, sb, lsl #2]
	eor ip, r7, ip
	ldr sb, [r1, r3, lsl #2]
	add sl, ip, sl
	add sb, sb, sl
	add sb, r4, sb
	lsr r4, sb, #0x1c
	ldrb sl, [r2, #1]
	orr r4, r4, sb, lsl #4
	add r4, r5, r4
	eor sb, r4, r5
	eor sb, r6, sb
	ldr ip, [r0, sl, lsl #2]
	ldr sl, [fp, #4]
	add sb, sb, ip
	add sb, sl, sb
	add sb, r7, sb
	lsr r7, sb, #0x15
	orr r7, r7, sb, lsl #11
	ldrb sb, [r2, #2]
	add r7, r4, r7
	ldr sl, [fp, #8]
	ldr ip, [r0, sb, lsl #2]
	ldr sb, [fp, #0xc]
	eor fp, r7, r4
	eor fp, r5, fp
	add fp, fp, ip
	add sl, sl, fp
	add sl, r6, sl
	lsr r6, sl, #0x10
	orr r6, r6, sl, lsl #16
	add r6, r7, r6
	eor sl, r6, r7
	eor fp, r4, sl
	ldrb sl, [r2, #3]
	add r2, r2, #4
	add r3, r3, #4
	ldr sl, [r0, sl, lsl #2]
	add r8, r8, #1
	add sl, fp, sl
	add sb, sb, sl
	add sb, r5, sb
	cmp r8, #4
	lsr r5, sb, #9
	orr r5, r5, sb, lsl #23
	add r5, r6, r5
	blt _022D2EB0
	ldr r0, _022D30B4 @ =0x02318934
	mov sb, #0
	add r8, r0, r3
	add r2, sp, #4
_022D2F88:
	ldr r1, _022D30B8 @ =0x023189B4
	ldrb r0, [r8]
	add fp, r1, r3, lsl #2
	mvn r1, r7
	orr sl, r5, r1
	ldr r1, _022D30B8 @ =0x023189B4
	ldr r0, [r2, r0, lsl #2]
	ldr ip, [r1, r3, lsl #2]
	eor r1, r6, sl
	add r0, r1, r0
	add r0, ip, r0
	add r1, r4, r0
	lsr r0, r1, #0x1a
	orr r0, r0, r1, lsl #6
	ldrb r1, [r8, #1]
	add r4, r5, r0
	mvn r0, r6
	orr r0, r4, r0
	ldr ip, [r2, r1, lsl #2]
	eor r0, r5, r0
	add r0, r0, ip
	ldr sl, [fp, #4]
	ldrb ip, [r8, #2]
	add r0, sl, r0
	add r7, r7, r0
	lsr r0, r7, #0x16
	orr r0, r0, r7, lsl #10
	add r7, r4, r0
	mvn r0, r5
	orr r0, r7, r0
	ldr r1, [fp, #8]
	ldrb lr, [r8, #3]
	ldr ip, [r2, ip, lsl #2]
	eor r0, r4, r0
	add r0, r0, ip
	add r0, r1, r0
	add r6, r6, r0
	lsr r1, r6, #0x11
	orr r1, r1, r6, lsl #15
	add sb, sb, #1
	mvn sl, r4
	add r6, r7, r1
	orr r1, r6, sl
	ldr r0, [r2, lr, lsl #2]
	eor r1, r7, r1
	ldr fp, [fp, #0xc]
	add r0, r1, r0
	add r0, fp, r0
	add r1, r5, r0
	lsr r0, r1, #0xb
	orr r0, r0, r1, lsl #21
	add r8, r8, #4
	add r5, r6, r0
	add r3, r3, #4
	cmp sb, #4
	blt _022D2F88
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, r4
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r0, r7
	ldr r0, [sp]
	str r1, [r0, #0xc]
	add sp, sp, #0x44
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D30B4: .4byte 0x02318934
_022D30B8: .4byte 0x023189B4
	arm_func_end ov00_022D2CA0

	arm_func_start ov00_022D30BC
ov00_022D30BC: @ 0x022D30BC
	push {r4, lr}
	mov r1, #0
	mov r2, #0x58
	mov r4, r0
	bl FUN_0207C40C
	ldr r1, _022D30F4 @ =0x67452301
	ldr r0, _022D30F8 @ =0xEFCDAB89
	str r1, [r4]
	ldr r1, _022D30FC @ =0x98BADCFE
	str r0, [r4, #4]
	ldr r0, _022D3100 @ =0x10325476
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_022D30F4: .4byte 0x67452301
_022D30F8: .4byte 0xEFCDAB89
_022D30FC: .4byte 0x98BADCFE
_022D3100: .4byte 0x10325476
	arm_func_end ov00_022D30BC

	arm_func_start ov00_022D3104
ov00_022D3104: @ 0x022D3104
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x10]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	lsr r2, r3, #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _022D31A0
	add r1, r8, #0x18
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl FUN_0207C4C8
	mov r0, r8
	add r1, r8, #0x18
	mov r4, #0
	bl ov00_022D2CA0
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _022D31A4
_022D3180:
	mov r0, r8
	add r1, r7, r5
	bl ov00_022D2CA0
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _022D3180
	b _022D31A4
_022D31A0:
	mov r5, #0
_022D31A4:
	add r1, r8, #0x18
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl FUN_0207C4C8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D3104

	arm_func_start ov00_022D31BC
ov00_022D31BC: @ 0x022D31BC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #8
	bl ov00_022D2C70
	ldr r0, [r5, #0x10]
	ldr r1, _022D3220 @ =0x02318974
	lsr r0, r0, #3
	and r0, r0, #0x3f
	cmp r0, #0x38
	rsblt r2, r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl ov00_022D3104
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl ov00_022D3104
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl ov00_022D2C70
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D3220: .4byte 0x02318974
	arm_func_end ov00_022D31BC

	arm_func_start ov00_022D3224
ov00_022D3224: @ 0x022D3224
	add r2, r0, #0xd
	add ip, r0, #2
	and r3, r2, #0xf
	eor r2, r0, #8
	and ip, ip, #0xf
	ldr r3, [r1, r3, lsl #2]
	ldr r2, [r1, r2, lsl #2]
	ldr ip, [r1, ip, lsl #2]
	eor r2, r3, r2
	ldr r3, [r1, r0, lsl #2]
	eor r2, ip, r2
	eor r3, r3, r2
	lsr r2, r3, #0x1f
	orr r2, r2, r3, lsl #1
	str r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
	arm_func_end ov00_022D3224

	arm_func_start ov00_022D3268
ov00_022D3268: @ 0x022D3268
	push {r3, lr}
	lsrs r2, r2, #2
	mov lr, #0
	popeq {r3, pc}
_022D3278:
	ldr ip, [r1], #4
	add lr, lr, #1
	lsr r3, ip, #0x18
	strb r3, [r0]
	lsr r3, ip, #0x10
	strb r3, [r0, #1]
	lsr r3, ip, #8
	strb r3, [r0, #2]
	strb ip, [r0, #3]
	cmp lr, r2
	add r0, r0, #4
	blo _022D3278
	pop {r3, pc}
	arm_func_end ov00_022D3268

	arm_func_start ov00_022D32AC
ov00_022D32AC: @ 0x022D32AC
	push {r3, r4, r5, lr}
	mov r5, #0
	cmp r2, #0
	popls {r3, r4, r5, pc}
_022D32BC:
	add r4, r1, r5
	ldrb r3, [r4, #1]
	ldrb ip, [r1, r5]
	ldrb lr, [r4, #2]
	lsl r3, r3, #0x10
	orr r3, r3, ip, lsl #24
	ldrb ip, [r4, #3]
	orr r3, r3, lr, lsl #8
	add r5, r5, #4
	orr r3, ip, r3
	cmp r5, r2
	str r3, [r0], #4
	blo _022D32BC
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D32AC

	arm_func_start ov00_022D32F4
ov00_022D32F4: @ 0x022D32F4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	str r0, [sp]
	ldr r3, [sp]
	add r0, sp, #0x10
	ldm r3, {r4, r5, r7, r8, sb}
	mov r2, #0x40
	bl ov00_022D32AC
	mov r0, #0
	ldr r3, _022D396C @ =0x5A827999
	mov r2, r0
	add r1, sp, #0x10
_022D3324:
	eor r6, r7, r8
	lsr sl, r4, #0x1b
	and r6, r5, r6
	orr fp, sl, r4, lsl #5
	eor r6, r8, r6
	lsr sl, r5, #2
	orr sl, sl, r5, lsl #30
	add r5, r1, r0, lsl #2
	add r6, fp, r6
	ldr ip, [r1, r0, lsl #2]
	ldr fp, [r5, #4]
	add r6, ip, r6
	add r6, r6, r3
	add sb, sb, r6
	lsr r6, sb, #0x1b
	orr r6, r6, sb, lsl #5
	eor ip, sl, r7
	and ip, r4, ip
	eor ip, r7, ip
	add r6, r6, ip
	add r6, fp, r6
	add r6, r6, r3
	add r8, r8, r6
	lsr r6, r4, #2
	orr r4, r6, r4, lsl #30
	ldr fp, [r5, #8]
	lsr r6, r8, #0x1b
	orr r6, r6, r8, lsl #5
	eor ip, r4, sl
	and ip, sb, ip
	eor ip, sl, ip
	add r6, r6, ip
	add r6, fp, r6
	add r6, r6, r3
	add r6, r7, r6
	lsr r7, sb, #2
	orr sb, r7, sb, lsl #30
	ldr r7, [r5, #0xc]
	ldr fp, [r5, #0x10]
	lsr r5, r6, #0x1b
	orr r5, r5, r6, lsl #5
	eor ip, sb, r4
	and ip, r8, ip
	eor ip, r4, ip
	add r5, r5, ip
	add r5, r7, r5
	add r5, r5, r3
	add r5, sl, r5
	lsr r7, r8, #2
	orr r8, r7, r8, lsl #30
	lsr r7, r5, #0x1b
	orr r7, r7, r5, lsl #5
	eor sl, r8, sb
	and sl, r6, sl
	eor sl, sb, sl
	add r7, r7, sl
	add r7, fp, r7
	add r7, r7, r3
	add r4, r4, r7
	lsr r7, r6, #2
	orr r7, r7, r6, lsl #30
	add r0, r0, #5
	add r2, r2, #1
	cmp r2, #3
	blt _022D3324
	eor r0, r7, r8
	lsr r2, r4, #0x1b
	and r0, r5, r0
	orr r3, r2, r4, lsl #5
	eor r0, r8, r0
	add r3, r3, r0
	ldr r6, [sp, #0x4c]
	ldr r0, _022D396C @ =0x5A827999
	add r3, r6, r3
	add r3, r3, r0
	lsr r2, r5, #2
	orr r6, r2, r5, lsl #30
	mov r0, #0
	add sb, sb, r3
	bl ov00_022D3224
	eor r1, r6, r7
	lsr r3, sb, #0x1b
	and r1, r4, r1
	lsr r2, r4, #2
	orr r3, r3, sb, lsl #5
	eor r1, r7, r1
	add r1, r3, r1
	add r3, r1, r0
	ldr r0, _022D396C @ =0x5A827999
	add r1, sp, #0x10
	add r3, r3, r0
	orr r5, r2, r4, lsl #30
	mov r0, #1
	add r8, r8, r3
	bl ov00_022D3224
	eor r1, r5, r6
	lsr r2, r8, #0x1b
	and r1, sb, r1
	orr r2, r2, r8, lsl #5
	eor r1, r6, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _022D396C @ =0x5A827999
	lsr r1, sb, #2
	add r0, r2, r0
	orr sb, r1, sb, lsl #30
	add r7, r7, r0
	add r1, sp, #0x10
	mov r0, #2
	bl ov00_022D3224
	lsr r1, r7, #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, sb, r5
	and r1, r8, r1
	eor r1, r5, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _022D396C @ =0x5A827999
	lsr r1, r8, #2
	add r0, r2, r0
	orr r8, r1, r8, lsl #30
	add r6, r6, r0
	mov r0, #3
	add r1, sp, #0x10
	bl ov00_022D3224
	lsr r1, r6, #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r8, sb
	and r1, r7, r1
	eor r1, sb, r1
	add r1, r2, r1
	add r2, r1, r0
	ldr r0, _022D396C @ =0x5A827999
	lsr r1, r7, #2
	add r0, r2, r0
	add r5, r5, r0
	mov r0, #0
	ldr r4, _022D3970 @ =0x6ED9EBA1
	orr r7, r1, r7, lsl #30
	mov sl, #4
	str r0, [sp, #4]
	add fp, sp, #0x10
_022D355C:
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	lsr r2, r5, #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	lsr r0, r6, #2
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov00_022D3224
	lsr r1, sb, #0x1b
	orr r2, r1, sb, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	lsr r0, r5, #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r8, #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, sb, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	lsr r0, sb, #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r7, #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, sb
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	lsr r0, r8, #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r6, #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, sb, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	lsr r1, r7, #2
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #3
	blt _022D355C
	mov r0, #0
	ldr r4, _022D3974 @ =0x8F1BBCDC
	str r0, [sp, #8]
	add fp, sp, #0x10
_022D3690:
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	orr r2, r7, r8
	lsr r1, r5, #0x1b
	orr r1, r1, r5, lsl #5
	and r3, r6, r2
	and r2, r7, r8
	orr r2, r3, r2
	add r1, r1, r2
	add r1, r1, r0
	lsr r0, r6, #2
	add r1, r1, r4
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov00_022D3224
	lsr r1, sb, #0x1b
	orr r1, r1, sb, lsl #5
	orr r2, r6, r7
	and r3, r5, r2
	and r2, r6, r7
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	lsr r0, r5, #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r8, #0x1b
	orr r1, r1, r8, lsl #5
	orr r2, r5, r6
	and r3, sb, r2
	and r2, r5, r6
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	lsr r0, sb, #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #3
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r7, #0x1b
	orr r1, r1, r7, lsl #5
	orr r2, sb, r5
	and r3, r8, r2
	and r2, sb, r5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	lsr r0, r8, #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r6, #0x1b
	orr r1, r1, r6, lsl #5
	orr r2, r8, sb
	and r3, r7, r2
	and r2, r8, sb
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	lsr r1, r7, #2
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #2
	blt _022D3690
	mov r0, #0
	ldr r4, _022D3978 @ =0xCA62C1D6
	str r0, [sp, #0xc]
	add fp, sp, #0x10
_022D37EC:
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	lsr r2, r5, #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	lsr r0, r6, #2
	add sb, sb, r1
	orr r6, r0, r6, lsl #30
	add r0, sl, #1
	mov r1, fp
	bl ov00_022D3224
	lsr r1, sb, #0x1b
	orr r2, r1, sb, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	lsr r0, r5, #2
	orr r5, r0, r5, lsl #30
	add r0, sl, #2
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r8, #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, sb, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	lsr r0, sb, #2
	orr sb, r0, sb, lsl #30
	add r0, sl, #3
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r7, #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, sb
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	lsr r0, r8, #2
	orr r8, r0, r8, lsl #30
	add r0, sl, #4
	and sl, r0, #0xf
	mov r0, sl
	mov r1, fp
	bl ov00_022D3224
	lsr r1, r6, #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, sb, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	lsr r1, r7, #2
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	orr r7, r1, r7, lsl #30
	add sl, sl, #1
	blt _022D37EC
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, r5
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, [r0, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	add r1, r0, r7
	ldr r0, [sp]
	str r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r0, r8
	ldr r0, [sp]
	str r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	add r1, r0, sb
	ldr r0, [sp]
	str r1, [r0, #0x10]
	add sp, sp, #0x50
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D396C: .4byte 0x5A827999
_022D3970: .4byte 0x6ED9EBA1
_022D3974: .4byte 0x8F1BBCDC
_022D3978: .4byte 0xCA62C1D6
	arm_func_end ov00_022D32F4

	arm_func_start ov00_022D397C
ov00_022D397C: @ 0x022D397C
	push {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl FUN_0207C40C
	ldr r0, _022D39BC @ =0x67452301
	ldr r1, _022D39C0 @ =0xEFCDAB89
	str r0, [r4]
	ldr r0, _022D39C4 @ =0x98BADCFE
	str r1, [r4, #4]
	ldr r1, _022D39C8 @ =0x10325476
	str r0, [r4, #8]
	ldr r0, _022D39CC @ =0xC3D2E1F0
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
_022D39BC: .4byte 0x67452301
_022D39C0: .4byte 0xEFCDAB89
_022D39C4: .4byte 0x98BADCFE
_022D39C8: .4byte 0x10325476
_022D39CC: .4byte 0xC3D2E1F0
	arm_func_end ov00_022D397C

	arm_func_start ov00_022D39D0
ov00_022D39D0: @ 0x022D39D0
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x18]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x18]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	lsr r2, r3, #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _022D3A6C
	add r1, r8, #0x1c
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl FUN_0207C4C8
	mov r0, r8
	add r1, r8, #0x1c
	mov r4, #0
	bl ov00_022D32F4
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _022D3A70
_022D3A4C:
	mov r0, r8
	add r1, r7, r5
	bl ov00_022D32F4
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _022D3A4C
	b _022D3A70
_022D3A6C:
	mov r5, #0
_022D3A70:
	add r1, r8, #0x1c
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl FUN_0207C4C8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D39D0

	arm_func_start ov00_022D3A88
ov00_022D3A88: @ 0x022D3A88
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #8
	bl ov00_022D3268
	ldr r0, [r5, #0x18]
	ldr r1, _022D3AEC @ =0x02318AB4
	lsr r0, r0, #3
	and r0, r0, #0x3f
	cmp r0, #0x38
	rsblt r2, r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl ov00_022D39D0
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl ov00_022D39D0
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl ov00_022D3268
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D3AEC: .4byte 0x02318AB4
	arm_func_end ov00_022D3A88

	arm_func_start ov00_022D3AF0
ov00_022D3AF0: @ 0x022D3AF0
	push {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _022D3B1C @ =0x02318AB5
	mov r5, r0
	mov r2, #0x2c
	bl ov00_022D39D0
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl ov00_022D3268
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D3B1C: .4byte 0x02318AB5
	arm_func_end ov00_022D3AF0

	arm_func_start ov00_022D3B20
ov00_022D3B20: @ 0x022D3B20
	push {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	add r4, r0, #2
_022D3B34:
	strb r3, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _022D3B34
	mov r6, #0
	mov r5, r6
	mov r7, r6
	mov r0, r6
_022D3B54:
	ldrb lr, [r4, r7]
	ldrb ip, [r1, r6]
	add r3, r6, #1
	and r6, r3, #0xff
	add r3, lr, ip
	add r3, r5, r3
	and r5, r3, #0xff
	ldrb r3, [r4, r5]
	cmp r6, r2
	movge r6, r0
	strb r3, [r4, r7]
	add r7, r7, #1
	strb lr, [r4, r5]
	cmp r7, #0x100
	blt _022D3B54
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D3B20

	arm_func_start ov00_022D3B94
ov00_022D3B94: @ 0x022D3B94
	push {r4, r5, r6, lr}
	cmp r2, #0
	add r4, r0, #2
	ldrb ip, [r0]
	ldrb lr, [r0, #1]
	mov r3, #0
	ble _022D3BF4
_022D3BB0:
	add r5, ip, #1
	and ip, r5, #0xff
	ldrb r6, [r4, ip]
	add r5, lr, r6
	and lr, r5, #0xff
	ldrb r5, [r4, lr]
	strb r5, [r4, ip]
	add r5, r6, r5
	strb r6, [r4, lr]
	and r5, r5, #0xff
	ldrb r6, [r1, r3]
	ldrb r5, [r4, r5]
	eor r5, r6, r5
	strb r5, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	blt _022D3BB0
_022D3BF4:
	strb ip, [r0]
	strb lr, [r0, #1]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D3B94

	arm_func_start ov00_022D3C08
ov00_022D3C08: @ 0x022D3C00
	b _022D3C08
_022D3C04:
	sub r1, r1, #1
	arm_func_end ov00_022D3C08
_022D3C08:
	cmp r1, #0
	beq _022D3C20
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #-2]
	cmp r2, #0
	beq _022D3C04
_022D3C20:
	mov r0, r1
	bx lr

	arm_func_start ov00_022D3C28
ov00_022D3C28: @ 0x022D3C28
	push {r3, lr}
	sub r2, r1, #1
	lsl r2, r2, #1
	ldrh r2, [r0, r2]
	tst r2, #0x8000
	mvnne r0, #0
	popne {r3, pc}
	bl ov00_022D3C08
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	arm_func_end ov00_022D3C28

	arm_func_start ov00_022D3C58
ov00_022D3C58: @ 0x022D3C58
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl ov00_022D3C08
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl ov00_022D3C08
	cmp r4, r0
	movlt r4, r0
	cmp r4, r5
	addne r4, r4, #1
	mov ip, #0
	mov r3, ip
	cmp r4, #0
	ble _022D3CD0
_022D3CA8:
	lsl r2, r3, #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	cmp r3, r4
	add r0, r1, r0
	add r0, ip, r0
	strh r0, [r8, r2]
	lsr ip, r0, #0x10
	blt _022D3CA8
_022D3CD0:
	cmp r8, r7
	cmpne r8, r6
	popeq {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	lsl r2, r1, #1
	mov r1, #0
	bl FUN_0207C40C
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D3C58

	arm_func_start ov00_022D3CF4
ov00_022D3CF4: @ 0x022D3CF4
	push {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _022D3D28
_022D3D04:
	lsl lr, r4, #1
	ldrh ip, [r1, lr]
	add r2, r2, ip
	strh r2, [r0, lr]
	lsrs r2, r2, #0x10
	beq _022D3D28
	add r4, r4, #1
	cmp r4, r3
	blt _022D3D04
_022D3D28:
	cmp r0, r1
	popeq {r4, pc}
	add r4, r4, #1
	cmp r4, r3
	popge {r4, pc}
_022D3D3C:
	lsl ip, r4, #1
	ldrh r2, [r1, ip]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, ip]
	blt _022D3D3C
	pop {r4, pc}
	arm_func_end ov00_022D3CF4

	arm_func_start ov00_022D3D58
ov00_022D3D58: @ 0x022D3D58
	push {r3, lr}
	mov r3, r1
	cmp r3, #0
	mov ip, #0
	ble _022D3D88
_022D3D6C:
	lsl r2, ip, #1
	ldrh r1, [r0, r2]
	add ip, ip, #1
	cmp ip, r3
	mvn r1, r1
	strh r1, [r0, r2]
	blt _022D3D6C
_022D3D88:
	mov r1, r0
	mov r2, #1
	bl ov00_022D3CF4
	pop {r3, pc}
	arm_func_end ov00_022D3D58

	arm_func_start ov00_022D3D98
ov00_022D3D98: @ 0x022D3D98
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl ov00_022D3C08
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl ov00_022D3C08
	cmp r4, r0
	movlt r4, r0
	mov ip, #0
	cmp r4, r5
	addne r4, r4, #1
	mov r3, ip
	b _022D3E04
_022D3DE4:
	lsl r2, r3, #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	sub r0, r1, r0
	add r0, ip, r0
	strh r0, [r8, r2]
	asr ip, r0, #0x10
_022D3E04:
	cmp r3, r4
	blt _022D3DE4
	cmp r3, r5
	bge _022D3E1C
	cmp ip, #0
	bne _022D3DE4
_022D3E1C:
	cmp r8, r7
	cmpne r8, r6
	popeq {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	lsl r2, r1, #1
	mov r1, #0
	bl FUN_0207C40C
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D3D98

	arm_func_start ov00_022D3E40
ov00_022D3E40: @ 0x022D3E40
	push {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _022D3E78
_022D3E50:
	lsl lr, r4, #1
	ldrh ip, [r1, lr]
	sub ip, ip, r2
	lsr r2, ip, #0x10
	strh ip, [r0, lr]
	ands r2, r2, #1
	beq _022D3E78
	add r4, r4, #1
	cmp r4, r3
	blt _022D3E50
_022D3E78:
	cmp r0, r1
	popeq {r4, pc}
	add r4, r4, #1
	cmp r4, r3
	popge {r4, pc}
_022D3E8C:
	lsl ip, r4, #1
	ldrh r2, [r1, ip]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, ip]
	blt _022D3E8C
	pop {r4, pc}
	arm_func_end ov00_022D3E40

	arm_func_start ov00_022D3EA8
ov00_022D3EA8: @ 0x022D3EA8
	subs ip, r2, #1
	bmi _022D3ED8
_022D3EB0:
	lsl r2, ip, #1
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	cmp r2, r3
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	subs ip, ip, #1
	bpl _022D3EB0
_022D3ED8:
	mov r0, #0
	bx lr
	arm_func_end ov00_022D3EA8

	arm_func_start ov00_022D3EE0
ov00_022D3EE0: @ 0x022D3EE0
	push {r3, lr}
	b _022D3F00
_022D3EE8:
	lsl lr, r2, #1
	ldrh ip, [r0, lr]
	add r2, r2, #1
	add r1, r1, ip
	strh r1, [r0, lr]
	lsr r1, r1, #0x10
_022D3F00:
	cmp r1, #0
	popeq {r3, pc}
	cmp r2, r3
	blt _022D3EE8
	pop {r3, pc}
	arm_func_end ov00_022D3EE0

	arm_func_start ov00_022D3F14
ov00_022D3F14: @ 0x022D3F14
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r8, r3
	mov sl, r1
	mov sb, r2
	lsl r2, r8, #1
	mov r1, #0
	str r0, [sp]
	bl FUN_0207C40C
	mov r0, sl
	mov r1, r8
	bl ov00_022D3C08
	mov fp, r0
	mov r0, sb
	mov r1, r8
	bl ov00_022D3C08
	str r0, [sp, #4]
	cmp r0, #0
	mov r5, #0
	addle sp, sp, #8
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D3F68:
	mov r6, #0
	sub r7, r8, r5
	lsl r4, r5, #1
	b _022D3F9C
_022D3F78:
	lsl r0, r6, #1
	ldrh r3, [sl, r0]
	ldrh r1, [sb, r4]
	ldr r0, [sp]
	add r2, r5, r6
	mul r1, r3, r1
	mov r3, r8
	bl ov00_022D3EE0
	add r6, r6, #1
_022D3F9C:
	cmp r6, fp
	cmplt r6, r7
	blt _022D3F78
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _022D3F68
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022D3F14

	arm_func_start ov00_022D3FC0
ov00_022D3FC0: @ 0x022D3FC0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r5, r2
	bl ov00_022D3C08
	mov r3, #0
	mov ip, r3
	cmp r0, #0
	ble _022D4010
_022D3FF0:
	lsl r2, ip, #1
	ldrh r1, [r6, r2]
	add ip, ip, #1
	cmp ip, r0
	mla r1, r5, r1, r3
	strh r1, [r7, r2]
	lsr r3, r1, #0x10
	blt _022D3FF0
_022D4010:
	cmp ip, r4
	lsllt r0, ip, #1
	addlt ip, ip, #1
	sub r1, r4, ip
	strhlt r3, [r7, r0]
	lsl r2, r1, #1
	add r0, r7, ip, lsl #1
	mov r1, #0
	bl FUN_0207C40C
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D3FC0

	arm_func_start ov00_022D4038
ov00_022D4038: @ 0x022D4038
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r2
	mov sl, r0
	mov r0, sb
	mov r1, r8
	bl ov00_022D3C08
	mov fp, r0
	cmp r8, fp, lsl #1
	lsl r0, fp, #1
	ble _022D4078
	sub r1, r8, r0
	add r0, sl, r0, lsl #1
	lsl r2, r1, #1
	mov r1, #0
	bl FUN_0207C40C
_022D4078:
	cmp fp, #0
	mov r4, #0
	ble _022D40CC
	mov r5, r4
	sub r2, r8, #1
_022D408C:
	cmp r5, r8
	bge _022D40CC
	lsl r0, r4, #1
	ldrh r3, [sb, r0]
	lsl r0, r5, #1
	cmp r5, r2
	mul r1, r3, r3
	strh r1, [sl, r0]
	beq _022D40CC
	add r4, r4, #1
	lsr r1, r1, #0x10
	add r0, sl, r0
	strh r1, [r0, #2]
	cmp r4, fp
	add r5, r5, #2
	blt _022D408C
_022D40CC:
	mov r6, #0
	cmp fp, #0
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022D40D8:
	lsl r0, r6, #1
	add r4, r6, #1
	str r0, [sp]
	b _022D4148
_022D40E8:
	lsl r0, r4, #1
	ldrh r1, [sb, r0]
	ldr r0, [sp]
	ldrh r0, [sb, r0]
	mul r7, r1, r0
	ldr r0, _022D4168 @ =0x7FFF8000
	cmp r7, r0
	mov r0, sl
	bhi _022D4120
	mov r2, r5
	mov r3, r8
	lsl r1, r7, #1
	bl ov00_022D3EE0
	b _022D4144
_022D4120:
	mov r1, r7
	mov r2, r5
	mov r3, r8
	bl ov00_022D3EE0
	mov r1, r7
	mov r2, r5
	mov r0, sl
	mov r3, r8
	bl ov00_022D3EE0
_022D4144:
	add r4, r4, #1
_022D4148:
	cmp r4, fp
	addlt r5, r6, r4
	cmplt r5, r8
	blt _022D40E8
	add r6, r6, #1
	cmp r6, fp
	blt _022D40D8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D4168: .4byte 0x7FFF8000
	arm_func_end ov00_022D4038

	arm_func_start ov00_022D416C
ov00_022D416C: @ 0x022D416C
	ldrh r1, [r0]
	mov r0, #0
	bx lr
	arm_func_end ov00_022D416C

	arm_func_start ov00_022D4178
ov00_022D4178: @ 0x022D4178
	ldrh r1, [r0]
	ldrh r0, [r0, #-2]
	lsl r0, r0, #0x10
	bx lr
	arm_func_end ov00_022D4178

	arm_func_start ov00_022D4188
ov00_022D4188: @ 0x022D4188
	ldrh r1, [r0]
	ldrh r2, [r0, #-2]
	ldrh r3, [r0, #-4]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end ov00_022D4188

	arm_func_start ov00_022D419C
ov00_022D419C: @ 0x022D419C
	ldrh r2, [r0]
	ldrh r3, [r0, #-2]
	orr r1, r3, r2, lsl #16
	ldrh r2, [r0, #-4]
	ldrh r3, [r0, #-6]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end ov00_022D419C

	arm_func_start ov00_022D41B8
ov00_022D41B8: @ 0x022D41B8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr sb, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	str r1, [sp, #4]
	add r6, r8, sb, lsl #1
	str r0, [sp]
	mov sl, r2
	mov r0, r6
	lsl r2, sb, #2
	mov r1, #0
	str r3, [sp, #8]
	add r7, r6, sb, lsl #1
	bl FUN_0207C40C
	ldr r0, [sp, #4]
	mov r1, sb
	bl ov00_022D3C08
	mov fp, r0
	mov r0, sl
	mov r1, sb
	bl ov00_022D3C08
	mov r5, r0
	cmp fp, #0
	cmpgt r5, #0
	ble _022D4350
	sub r0, sb, fp
	add r0, r5, r0
	sub r4, r0, #1
	cmp r4, sb
	blt _022D4244
	ldr r0, [sp, #4]
	mov r1, r7
	lsl r2, sb, #1
	bl FUN_0207C4C8
	b _022D4350
_022D4244:
	ldr r0, [sp, #4]
	add r1, r6, r4, lsl #1
	lsl r2, fp, #1
	bl FUN_0207C4C8
	cmp r5, #2
	ble _022D4278
	add r0, sl, r5, lsl #1
	sub r0, r0, #2
	lsl fp, r5, #1
	bl ov00_022D4188
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	b _022D42AC
_022D4278:
	add r0, sl, r5, lsl #1
	cmp r5, #1
	sub r0, r0, #2
	ble _022D429C
	lsl fp, r5, #1
	bl ov00_022D4178
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	b _022D42AC
_022D429C:
	lsl fp, r5, #1
	bl ov00_022D416C
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
_022D42AC:
	cmp r4, sb
	bge _022D4350
	lsl r0, sb, #1
	sub r0, r0, #1
	lsl r0, r0, #1
	str r0, [sp, #0x14]
_022D42C4:
	ldr r2, [sp, #0x14]
	mov r1, r6
	add r0, r6, #2
	bl FUN_020872BC
	add r0, r7, fp
	bl ov00_022D419C
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	bl FUN_0208FE3C
	mov r5, r0
	ldr r0, _022D4394 @ =0x0000FFFF
	cmp r5, r0
	movhi r5, r0
_022D42F8:
	lsl r2, r5, #0x10
	mov r0, r8
	mov r1, sl
	lsr r2, r2, #0x10
	mov r3, sb
	bl ov00_022D3FC0
	mov r0, r7
	mov r1, r8
	mov r2, sb
	bl ov00_022D3EA8
	cmp r0, #0
	sublt r5, r5, #1
	blt _022D42F8
	mov r0, r7
	mov r1, r7
	mov r2, r8
	mov r3, sb
	bl ov00_022D3D98
	strh r5, [r6]
	add r4, r4, #1
	cmp r4, sb
	blt _022D42C4
_022D4350:
	ldr r0, [sp]
	cmp r0, #0
	beq _022D436C
	ldr r1, [sp]
	mov r0, r6
	lsl r2, sb, #1
	bl FUN_0207C4C8
_022D436C:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #8]
	mov r0, r7
	lsl r2, sb, #1
	bl FUN_0207C4C8
	add sp, sp, #0x20
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D4394: .4byte 0x0000FFFF
	arm_func_end ov00_022D41B8

	arm_func_start ov00_022D4398
ov00_022D4398: @ 0x022D4398
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, _022D4524 @ =0x0232508C
	mov r8, r3
	ldr r3, [r4]
	mov sl, r0
	lsl r0, r8, #3
	ldr r7, [sp, #0x30]
	str r1, [sp, #8]
	mov sb, r2
	blx r3
	movs r4, r0
	addeq sp, sp, #0xc
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r1, r8, #1
	add r0, sl, #2
	lsl r2, r1, #1
	mov r1, #0
	add r5, r4, r8, lsl #1
	bl FUN_0207C40C
	mov r2, #1
	mov r0, sb
	mov r1, r8
	strh r2, [sl]
	bl ov00_022D3C08
	sub r0, r8, r0
	lsl r6, r0, #4
	cmp r6, r8, lsl #4
	bhs _022D444C
	mov r2, #0x8000
_022D4410:
	sub r0, r8, r6, asr #4
	add r0, sb, r0, lsl #1
	ldrh r0, [r0, #-2]
	and r1, r6, #0xf
	tst r0, r2, lsr r1
	beq _022D4440
	ldr r0, [sp, #8]
	mov r1, sl
	lsl r2, r8, #1
	bl FUN_0207C4C8
	add r6, r6, #1
	b _022D444C
_022D4440:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _022D4410
_022D444C:
	cmp r6, r8, lsl #4
	bhs _022D450C
	lsl fp, r8, #1
_022D4458:
	mov r0, r4
	mov r1, sl
	mov r2, r8
	bl ov00_022D4038
	mov r0, r4
	mov r1, sl
	mov r2, fp
	bl FUN_0207C4C8
	cmp r7, #0
	beq _022D449C
	str r8, [sp]
	mov r0, #0
	mov r1, sl
	mov r2, r7
	mov r3, sl
	str r5, [sp, #4]
	bl ov00_022D41B8
_022D449C:
	sub r0, r8, r6, asr #4
	add r0, sb, r0, lsl #1
	ldrh r1, [r0, #-2]
	and r2, r6, #0xf
	mov r0, #0x8000
	tst r1, r0, lsr r2
	beq _022D4500
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, sl
	mov r3, r8
	bl ov00_022D3F14
	mov r0, r4
	mov r1, sl
	mov r2, fp
	bl FUN_0207C4C8
	cmp r7, #0
	beq _022D4500
	str r8, [sp]
	mov r0, #0
	mov r1, sl
	mov r2, r7
	mov r3, sl
	str r5, [sp, #4]
	bl ov00_022D41B8
_022D4500:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _022D4458
_022D450C:
	ldr r1, _022D4528 @ =0x023250B8
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D4524: .4byte 0x0232508C
_022D4528: .4byte 0x023250B8
	arm_func_end ov00_022D4398

	arm_func_start ov00_022D452C
ov00_022D452C: @ 0x022D452C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr sb, [sp, #0x38]
	mov sl, r3
	add fp, sb, sl, lsl #1
	add r4, fp, sl, lsl #1
	add r5, r4, sl, lsl #1
	add r6, r5, sl, lsl #1
	add r7, r6, sl, lsl #1
	str r0, [sp, #8]
	mov r0, r1
	add r1, r7, sl, lsl #1
	str r1, [sp, #0x10]
	lsl r8, sl, #1
	str r2, [sp, #0xc]
	mov r1, sb
	mov r2, r8
	bl FUN_0207C4C8
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r8
	bl FUN_0207C4C8
	mov r0, #1
	strh r0, [r4, r8]
	mov r0, sb
	mov r1, sl
	bl ov00_022D3C28
	cmp r0, #0
	ble _022D463C
_022D45A0:
	ldr r3, [sp, #0x10]
	str sl, [sp]
	str r3, [sp, #4]
	mov r0, fp
	mov r1, r4
	mov r2, sb
	mov r3, r7
	bl ov00_022D41B8
	mov r0, sb
	mov r1, r4
	mov r2, r8
	bl FUN_0207C4C8
	mov r0, r7
	mov r1, sb
	mov r2, r8
	bl FUN_0207C4C8
	mov r0, r7
	mov r1, fp
	mov r2, r5
	mov r3, sl
	bl ov00_022D3F14
	mov r0, r7
	mov r1, r6
	mov r2, r7
	mov r3, sl
	bl ov00_022D3D98
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl FUN_0207C4C8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl FUN_0207C4C8
	mov r0, sb
	mov r1, sl
	bl ov00_022D3C28
	cmp r0, #0
	bgt _022D45A0
_022D463C:
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r6
	mov r3, sl
	bl ov00_022D3C58
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	str sl, [sp]
	mov r1, r6
	mov r0, #0
	str r4, [sp, #4]
	bl ov00_022D41B8
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022D452C

	arm_func_start ov00_022D4678
ov00_022D4678: @ 0x022D4678
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r3
	lsl r4, r6, #1
	mov r8, r2
	mov r2, r4
	mov r7, r0
	mov sb, r1
	ldr r5, [sp, #0x20]
	bl FUN_0207C4C8
	cmp r8, #1
	bne _022D46B8
	mov r0, r7
	mov r1, sb
	mov r2, r6
	bl ov00_022D4038
	b _022D46D4
_022D46B8:
	cmp r8, #0
	beq _022D46D4
	mov r0, r7
	mov r1, sb
	mov r2, r8
	mov r3, r6
	bl ov00_022D3F14
_022D46D4:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, r5
	bl ov00_022D3F14
	sub r1, r6, r5
	ldr r0, [sp, #0x2c]
	lsl r8, r1, #1
	mov r2, r8
	add r0, r0, r5, lsl #1
	mov r1, #0
	bl FUN_0207C40C
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl ov00_022D3F14
	mov r0, r7
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl ov00_022D3C58
	mov r2, r8
	mov r0, r7
	add r1, r7, r5, lsl #1
	bl FUN_020872BC
	add r0, r7, r6, lsl #1
	sub r0, r0, r5, lsl #1
	lsl r2, r5, #1
	mov r1, #0
	bl FUN_0207C40C
	mov r0, r7
	ldr r1, [sp, #0x24]
	mov r2, r6
	bl ov00_022D3EA8
	cmp r0, #0
	beq _022D4774
	cmp r0, #1
	beq _022D4788
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D4774:
	mov r0, r7
	mov r2, r4
	mov r1, #0
	bl FUN_0207C40C
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D4788:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r7
	mov r3, r6
	bl ov00_022D3D98
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022D4678

	arm_func_start ov00_022D47A0
ov00_022D47A0: @ 0x022D47A0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sl, r3
	mov r3, #0x16
	mul r4, sl, r3
	ldr r3, _022D49A4 @ =0x0232508C
	mov fp, r0
	ldr r3, [r3]
	mov r0, r4
	ldr sb, [sp, #0x50]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	blx r3
	str r0, [sp, #0x28]
	cmp r0, #0
	addeq sp, sp, #0x2c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, r4
	mov r1, #0
	bl FUN_0207C40C
	ldr r0, [sp, #0x28]
	mov r1, sl
	add r6, r0, sl, lsl #1
	add r0, r6, sl, lsl #1
	add r7, r0, sl, lsl #1
	add r8, r7, sl, lsl #1
	str r0, [sp, #0x24]
	add r0, r8, sl, lsl #1
	str r0, [sp, #0x20]
	add r5, r0, sl, lsl #1
	mov r0, sb
	bl ov00_022D3C08
	mov r4, r0
	ldr r0, [sp, #0x28]
	mov r2, #1
	lsl r1, r4, #1
	strh r2, [r0, r1]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	mov r0, r6
	mov r2, sb
	mov r3, sl
	bl ov00_022D452C
	ldr r1, [sp, #0x28]
	mov r0, r7
	mov r2, r6
	mov r3, sl
	bl ov00_022D3F14
	mov r0, r6
	mov r1, r7
	mov r2, #1
	mov r3, sl
	bl ov00_022D3E40
	str sl, [sp]
	mov r0, r6
	mov r1, r6
	mov r2, sb
	mov r3, #0
	str r5, [sp, #4]
	bl ov00_022D41B8
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r3, sl
	bl ov00_022D3F14
	ldr r1, [sp, #0x24]
	str sl, [sp]
	mov r0, #0
	mov r2, sb
	mov r3, r1
	str r5, [sp, #4]
	bl ov00_022D41B8
	str sl, [sp]
	ldr r1, [sp, #0x28]
	mov r0, #0
	mov r2, sb
	mov r3, fp
	str r5, [sp, #4]
	bl ov00_022D41B8
	lsls r0, r4, #4
	mov r5, #0
	str r0, [sp, #0x1c]
	beq _022D4968
_022D48F0:
	stm sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	mov r0, fp
	mov r2, #1
	mov r3, sl
	str r8, [sp, #0x10]
	bl ov00_022D4678
	ldr r1, [sp, #0x18]
	sub r2, r4, r5, asr #4
	add r1, r1, r2, lsl #1
	ldrh r2, [r1, #-2]
	and r0, r5, #0xf
	mov r1, #0x8000
	tst r2, r1, lsr r0
	beq _022D4958
	stm sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, fp
	mov r3, sl
	str r8, [sp, #0x10]
	bl ov00_022D4678
_022D4958:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blo _022D48F0
_022D4968:
	stm sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	mov r0, fp
	mov r3, sl
	mov r2, #0
	str r8, [sp, #0x10]
	bl ov00_022D4678
	ldr r1, _022D49A8 @ =0x023250B8
	ldr r0, [sp, #0x28]
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x2c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022D49A4: .4byte 0x0232508C
_022D49A8: .4byte 0x023250B8
	arm_func_end ov00_022D47A0

	arm_func_start ov00_022D49AC
ov00_022D49AC: @ 0x022D49AC
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	lsl r2, r3, #1
	mov r1, #0
	mov r4, r0
	bl FUN_0207C40C
	sub r0, r5, #1
	cmp r5, #1
	add r6, r6, r0
	ble _022D49F8
_022D49D8:
	ldrb r1, [r6]
	ldrb r0, [r6, #-1]
	sub r5, r5, #2
	cmp r5, #1
	add r0, r1, r0, lsl #8
	strh r0, [r4], #2
	sub r6, r6, #2
	bgt _022D49D8
_022D49F8:
	cmp r5, #0
	ldrbgt r0, [r6]
	strhgt r0, [r4]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D49AC

	arm_func_start ov00_022D4A08
ov00_022D4A08: @ 0x022D4A08
	sub r3, r2, #1
	cmp r2, #1
	add r0, r0, r3
	ble _022D4A3C
_022D4A18:
	ldrh r3, [r1]
	sub ip, r0, #1
	sub r2, r2, #2
	strb r3, [r0], #-2
	ldrh r3, [r1], #2
	cmp r2, #1
	asr r3, r3, #8
	strb r3, [ip]
	bgt _022D4A18
_022D4A3C:
	cmp r2, #0
	ldrhgt r1, [r1]
	strbgt r1, [r0]
	bx lr
	arm_func_end ov00_022D4A08

	arm_func_start ov00_020800FC
ov00_020800FC: @ 0x022D4A4C
	ldr ip, _022D4A54 @ =FUN_020800FC
	bx ip
	.align 2, 0
_022D4A54: .4byte FUN_020800FC
	arm_func_end ov00_020800FC

	arm_func_start ov00_0208013C
ov00_0208013C: @ 0x022D4A58
	ldr ip, _022D4A60 @ =FUN_0208013C
	bx ip
	.align 2, 0
_022D4A60: .4byte FUN_0208013C
	arm_func_end ov00_0208013C

	arm_func_start ov00_02080204
ov00_02080204: @ 0x022D4A64
	ldr ip, _022D4A6C @ =FUN_02080204
	bx ip
	.align 2, 0
_022D4A6C: .4byte FUN_02080204
	arm_func_end ov00_02080204

	arm_func_start ov00_022D4A70
ov00_022D4A70: @ 0x022D4A70
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0207B7E4
	ldr r2, _022D4B84 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _022D4AA0
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4AA0:
	cmp r6, #0
	bne _022D4AB4
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4AB4:
	tst r6, #0x1f
	beq _022D4AC8
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4AC8:
	cmp r5, #0x2300
	bhs _022D4ADC
	bl FUN_0207B7F8
	mov r0, #6
	pop {r4, r5, r6, pc}
_022D4ADC:
	str r6, [r2]
	add r0, r6, #0x2000
	mov r1, #1
	str r1, [r0, #0x260]
	ldr r1, [r2]
	mov r0, #0
	add r1, r1, #0x2200
	strh r0, [r1, #0x80]
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r0, [r1, #0x68]
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26a]
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26b]
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r0, [r1, #0x82]
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r0, [r1, #0xf8]
	bl ov00_022D59D4
	bl ov00_022D705C
	bl FUN_0207ADCC
	cmp r0, #0
	bne _022D4B50
	bl FUN_0207AD54
_022D4B50:
	bl FUN_0207B030
	cmp r0, #0
	bne _022D4B60
	bl FUN_0207AFF0
_022D4B60:
	ldr r0, _022D4B84 @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2cc
	add r0, r0, #0x2000
	bl FUN_0207B040
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D4B84: .4byte 0x02326C4C
	arm_func_end ov00_022D4A70

	arm_func_start ov00_022D4B88
ov00_022D4B88: @ 0x022D4B88
	push {r3, lr}
	bl FUN_0207B7E4
	ldr r2, _022D4BDC @ =0x02326C4C
	ldr r1, [r2]
	cmp r1, #0
	bne _022D4BAC
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, pc}
_022D4BAC:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _022D4BC8
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, pc}
_022D4BC8:
	mov r1, #0
	str r1, [r2]
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022D4BDC: .4byte 0x02326C4C
	arm_func_end ov00_022D4B88

	arm_func_start ov00_022D4BE0
ov00_022D4BE0: @ 0x022D4BE0
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0207B7E4
	ldr r1, _022D4DD8 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D4C10
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4C10:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _022D4C34
	cmp r1, #2
	beq _022D4C44
	cmp r1, #3
	beq _022D4C50
	b _022D4C5C
_022D4C34:
	mov r0, r6
	mov r1, r5
	bl ov00_022D571C
	b _022D4C68
_022D4C44:
	bl FUN_0207B7F8
	mov r0, #2
	pop {r4, r5, r6, pc}
_022D4C50:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022D4C5C:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4C68:
	ldr r0, _022D4DD8 @ =0x02326C4C
	ldr r0, [r0]
	add r1, r0, #0x2000
	ldr r1, [r1, #0x26c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov00_022BE964
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022D4CD4
_022D4C90: @ jump table
	b _022D4CEC @ case 0
	b _022D4CD4 @ case 1
	b _022D4CD4 @ case 2
	b _022D4CAC @ case 3
	b _022D4CC4 @ case 4
	b _022D4CD4 @ case 5
	b _022D4CD4 @ case 6
_022D4CAC:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022D4CC4:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #5
	pop {r4, r5, r6, pc}
_022D4CD4:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022D4CEC:
	bl ov00_022BF640
	cmp r0, #0
	bne _022D4D2C
	bl ov00_022BEB74
	cmp r0, #0
	beq _022D4D1C
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022D4D1C:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #5
	pop {r4, r5, r6, pc}
_022D4D2C:
	ldr r0, _022D4DDC @ =ov00_022D5CC8
	bl ov00_022BF2C4
	cmp r0, #0
	beq _022D4D54
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022D4D54:
	ldr r0, _022D4DE0 @ =0x022D5D40
	bl ov00_022BF9E0
	cmp r0, #2
	beq _022D4D78
	cmp r0, #3
	beq _022D4DB0
	cmp r0, #8
	beq _022D4D98
	b _022D4DB0
_022D4D78:
	mov r0, #2
	bl ov00_022D5B1C
	ldr r0, _022D4DD8 @ =0x02326C4C
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D4DC8
_022D4D98:
	mov r0, #0xc
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022D4DB0:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, r5, r6, pc}
_022D4DC8:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D4DD8: .4byte 0x02326C4C
_022D4DDC: .4byte ov00_022D5CC8
_022D4DE0: .4byte 0x022D5D40
	arm_func_end ov00_022D4BE0

	arm_func_start ov00_022D4DE4
ov00_022D4DE4: @ 0x022D4DE4
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022D4ECC @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D4E0C
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D4E0C:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _022D4E38
	cmp r1, #3
	beq _022D4E50
	cmp r1, #4
	bne _022D4E44
	bl FUN_0207B7F8
	mov r0, #2
	pop {r4, pc}
_022D4E38:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, pc}
_022D4E44:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D4E50:
	ldr r0, _022D4ED0 @ =0x022D5D40
	bl ov00_022BFAD4
	cmp r0, #2
	beq _022D4E74
	cmp r0, #3
	beq _022D4EA4
	cmp r0, #8
	beq _022D4E94
	b _022D4EA4
_022D4E74:
	mov r0, #4
	bl ov00_022D5B1C
	ldr r0, _022D4ECC @ =0x02326C4C
	mov r1, #2
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D4EBC
_022D4E94:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #4
	pop {r4, pc}
_022D4EA4:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, pc}
_022D4EBC:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
_022D4ECC: .4byte 0x02326C4C
_022D4ED0: .4byte 0x022D5D40
	arm_func_end ov00_022D4DE4

	arm_func_start ov00_022D4ED4
ov00_022D4ED4: @ 0x022D4ED4
	push {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	bne _022D4EEC
	bl ov00_022D506C
	pop {r3, pc}
_022D4EEC:
	bl ov00_022D4EF4
	pop {r3, pc}
	arm_func_end ov00_022D4ED4

	arm_func_start ov00_022D4EF4
ov00_022D4EF4: @ 0x022D4EF4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_0207B7E4
	ldr r1, _022D5064 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D4F28
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D4F28:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #3
	beq _022D4F98
	cmp r1, #5
	beq _022D4F4C
	cmp r1, #6
	beq _022D4F6C
	b _022D4F8C
_022D4F4C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022D583C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022D4F6C:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022D583C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022D4F8C:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D4F98:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022D583C
	ldr r0, _022D5064 @ =0x02326C4C
	ldr r0, [r0]
	add r1, r0, #0x2200
	add r0, r0, #0x2000
	ldrh r1, [r1, #0x8c]
	ldr r0, [r0, #0x288]
	bl FUN_0207A2A4
	ldr r2, _022D5064 @ =0x02326C4C
	ldr r0, _022D5068 @ =0x022D5FFC
	ldr r1, [r2]
	add r1, r1, #0x2000
	ldr r3, [r1, #0x284]
	add r3, r3, #1
	str r3, [r1, #0x284]
	ldr r1, [r2]
	add r1, r1, #0x288
	add r1, r1, #0x2000
	bl ov00_022BFED8
	cmp r0, #2
	beq _022D500C
	cmp r0, #3
	beq _022D503C
	cmp r0, #8
	beq _022D502C
	b _022D503C
_022D500C:
	mov r0, #5
	bl ov00_022D5B1C
	ldr r0, _022D5064 @ =0x02326C4C
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D5054
_022D502C:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_022D503C:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022D5054:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022D5064: .4byte 0x02326C4C
_022D5068: .4byte 0x022D5FFC
	arm_func_end ov00_022D4EF4

	arm_func_start ov00_022D506C
ov00_022D506C: @ 0x022D506C
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022D510C @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D5094
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D5094:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #3
	beq _022D50E4
	cmp r1, #6
	beq _022D50B8
	cmp r1, #7
	beq _022D50D8
	b _022D50F0
_022D50B8:
	mov r0, #7
	bl ov00_022D5B1C
	ldr r0, _022D510C @ =0x02326C4C
	mov r1, #4
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D50FC
_022D50D8:
	bl FUN_0207B7F8
	mov r0, #2
	pop {r4, pc}
_022D50E4:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, pc}
_022D50F0:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D50FC:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
_022D510C: .4byte 0x02326C4C
	arm_func_end ov00_022D506C

	arm_func_start ov00_022D5110
ov00_022D5110: @ 0x022D5110
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_0207B7E4
	ldr r2, _022D5308 @ =0x02326C4C
	mov r4, r0
	ldr ip, [r2]
	cmp ip, #0
	bne _022D5144
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D5144:
	add r1, ip, #0x2000
	ldr r3, [r1, #0x260]
	cmp r3, #3
	beq _022D5168
	cmp r3, #8
	beq _022D5258
	cmp r3, #9
	beq _022D5264
	b _022D5270
_022D5168:
	cmp r7, #0
	bne _022D517C
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D517C:
	ldrh r3, [r7, #0x3c]
	cmp r3, #0
	beq _022D5194
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D5194:
	cmp r6, #0
	beq _022D520C
	ldrb r3, [r6]
	cmp r3, #4
	ldrblo r0, [r6, #1]
	cmplo r0, #4
	blo _022D51C0
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D51C0:
	strb r3, [r1, #0x250]
	ldr r0, [r2]
	ldrb r1, [r6, #1]
	add r0, r0, #0x2000
	strb r1, [r0, #0x251]
	ldr r1, [r2]
	mov r2, #0x50
	add r0, r1, #0x2000
	ldrb r0, [r0, #0x250]
	cmp r0, #0
	bne _022D51FC
	add r0, r1, #0x2200
	mov r1, #0
	bl FUN_0207C40C
	b _022D521C
_022D51FC:
	add r0, r6, #2
	add r1, r1, #0x2200
	bl FUN_0207C4C8
	b _022D521C
_022D520C:
	add r0, ip, #0x2200
	mov r1, #0
	mov r2, #0x52
	bl FUN_0207C40C
_022D521C:
	ldr r1, _022D5308 @ =0x02326C4C
	mov r0, r7
	ldr r1, [r1]
	mov r2, #0xc0
	add r1, r1, #0x2140
	bl FUN_0207C4C8
	ldr r1, _022D5308 @ =0x02326C4C
	mov r0, r5
	ldr r1, [r1]
	add r1, r1, #0x2100
	ldrh r2, [r1, #0x6e]
	orr r2, r2, #3
	strh r2, [r1, #0x70]
	bl ov00_022D5670
	b _022D527C
_022D5258:
	bl FUN_0207B7F8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022D5264:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022D5270:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022D527C:
	ldr r1, _022D530C @ =0x0000FFFF
	ldr r0, _022D5310 @ =0x022D5D40
	mov r3, r1
	mov r2, #0x50
	str r1, [sp]
	bl ov00_022C15B0
	cmp r0, #2
	beq _022D52B0
	cmp r0, #3
	beq _022D52E0
	cmp r0, #8
	beq _022D52D0
	b _022D52E0
_022D52B0:
	mov r0, #8
	bl ov00_022D5B1C
	ldr r0, _022D5308 @ =0x02326C4C
	mov r1, #5
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D52F8
_022D52D0:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_022D52E0:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022D52F8:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022D5308: .4byte 0x02326C4C
_022D530C: .4byte 0x0000FFFF
_022D5310: .4byte 0x022D5D40
	arm_func_end ov00_022D5110

	arm_func_start ov00_022D5314
ov00_022D5314: @ 0x022D5314
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022D5428 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D533C
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D533C:
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #3
	beq _022D5368
	cmp r2, #9
	beq _022D5380
	cmp r2, #0xa
	bne _022D5374
	bl FUN_0207B7F8
	mov r0, #2
	pop {r4, pc}
_022D5368:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r4, pc}
_022D5374:
	bl FUN_0207B7F8
	mov r0, #1
	pop {r4, pc}
_022D5380:
	ldrb r0, [r1, #0x26b]
	cmp r0, #1
	bne _022D53AC
	mov r0, #0xa
	bl ov00_022D5B1C
	ldr r0, _022D5428 @ =0x02326C4C
	mov r1, #6
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D5418
_022D53AC:
	ldr r0, _022D542C @ =0x022D6794
	bl ov00_022C07A4
	cmp r0, #2
	beq _022D53D0
	cmp r0, #3
	beq _022D5400
	cmp r0, #8
	beq _022D53F0
	b _022D5400
_022D53D0:
	mov r0, #0xa
	bl ov00_022D5B1C
	ldr r0, _022D5428 @ =0x02326C4C
	mov r1, #6
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D5418
_022D53F0:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #4
	pop {r4, pc}
_022D5400:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r4, pc}
_022D5418:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
_022D5428: .4byte 0x02326C4C
_022D542C: .4byte 0x022D6794
	arm_func_end ov00_022D5314

	arm_func_start ov00_022D5430
ov00_022D5430: @ 0x022D5430
	push {r3, r4, r5, lr}
	bl FUN_0207B7E4
	ldr r1, _022D5634 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _022D5458
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022D5458:
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _022D54E8
_022D546C: @ jump table
	b _022D54E8 @ case 0
	b _022D54B0 @ case 1
	b _022D54E8 @ case 2
	b _022D54F8 @ case 3
	b _022D54E8 @ case 4
	b _022D54E8 @ case 5
	b _022D54BC @ case 6
	b _022D54E8 @ case 7
	b _022D54E8 @ case 8
	b _022D54F8 @ case 9
	b _022D54E8 @ case 10
	b _022D54E8 @ case 11
	b _022D54F8 @ case 12
	b _022D54A4 @ case 13
_022D54A4:
	bl FUN_0207B7F8
	mov r0, #2
	pop {r3, r4, r5, pc}
_022D54B0:
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D54BC:
	mov r0, #0xd
	bl ov00_022D5B1C
	ldr r1, _022D5634 @ =0x02326C4C
	mov r2, #9
	ldr r1, [r1]
	mov r0, r4
	add r1, r1, #0x2200
	strh r2, [r1, #0x80]
	bl FUN_0207B7F8
	mov r0, #3
	pop {r3, r4, r5, pc}
_022D54E8:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022D54F8:
	ldrb r0, [r1, #0x26b]
	cmp r0, #1
	bne _022D5524
	mov r0, #0xd
	bl ov00_022D5B1C
	ldr r0, _022D5634 @ =0x02326C4C
	mov r1, #9
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D5624
_022D5524:
	bl ov00_022BF240
	mov r5, r0
	mov r1, #2
	bl FUN_0207A2A4
	ldrh r0, [r5]
	cmp r0, #0
	beq _022D5554
	cmp r0, #1
	beq _022D558C
	cmp r0, #2
	beq _022D5598
	b _022D55A4
_022D5554:
	bl ov00_022BEB74
	cmp r0, #0
	bne _022D55C0
	mov r0, #1
	bl ov00_022D5B1C
	ldr r1, _022D5634 @ =0x02326C4C
	mov r2, #0
	ldr r1, [r1]
	mov r0, r4
	add r1, r1, #0x2200
	strh r2, [r1, #0x80]
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D558C:
	ldr r0, _022D5638 @ =0x022D5D40
	bl ov00_022BFA54
	b _022D55C0
_022D5598:
	ldr r0, _022D5638 @ =0x022D5D40
	bl ov00_022BFAD4
	b _022D55C0
_022D55A4:
	ldr r1, _022D5634 @ =0x02326C4C
	ldr r0, _022D563C @ =ov00_022D68B0
	ldr r1, [r1]
	mov r2, #1
	add r1, r1, #0x2000
	strb r2, [r1, #0x26b]
	bl ov00_022BFB9C
_022D55C0:
	cmp r0, #2
	beq _022D55DC
	cmp r0, #3
	beq _022D560C
	cmp r0, #8
	beq _022D55FC
	b _022D560C
_022D55DC:
	mov r0, #0xd
	bl ov00_022D5B1C
	ldr r0, _022D5634 @ =0x02326C4C
	mov r1, #9
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022D5624
_022D55FC:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #4
	pop {r3, r4, r5, pc}
_022D560C:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #7
	pop {r3, r4, r5, pc}
_022D5624:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D5634: .4byte 0x02326C4C
_022D5638: .4byte 0x022D5D40
_022D563C: .4byte ov00_022D68B0
	arm_func_end ov00_022D5430

	arm_func_start ov00_022D5640
ov00_022D5640: @ 0x022D5640
	push {r4, lr}
	bl FUN_0207B7E4
	ldr r1, _022D566C @ =0x02326C4C
	mov r4, #0
	ldr r1, [r1]
	cmp r1, #0
	addne r1, r1, #0x2000
	ldrne r4, [r1, #0x260]
	bl FUN_0207B7F8
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022D566C: .4byte 0x02326C4C
	arm_func_end ov00_022D5640

	arm_func_start ov00_022D5670
ov00_022D5670: @ 0x022D5670
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0207B7E4
	ldr r1, _022D5704 @ =0x02326C4C
	mov r2, #0
	ldr r3, [r1]
	add r1, r3, #0x2000
	cmp r3, #0
	ldr r4, [r1, #0x264]
	bne _022D56A4
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D56A4:
	tst r5, #0x8000
	beq _022D56C4
	ldr r1, _022D5708 @ =0x00003FFE
	orr r2, r2, #0xfe
	tst r5, r1
	orreq r5, r5, #0x82
	orr r2, r2, #0x3f00
	orreq r5, r5, #0xa000
_022D56C4:
	tst r5, #0x20000
	orrne r2, r2, #0x10000
	tst r5, #0x80000
	orrne r2, r2, #0x40000
	tst r5, #0x200000
	orrne r2, r2, #0x100000
	tst r5, #0x800000
	orrne r2, r2, #0x400000
	mvn r1, r2
	and r1, r4, r1
	orr r2, r5, r1
	add r1, r3, #0x2000
	str r2, [r1, #0x264]
	bl FUN_0207B7F8
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D5704: .4byte 0x02326C4C
_022D5708: .4byte 0x00003FFE
	arm_func_end ov00_022D5670

	arm_func_start ov00_022D570C
ov00_022D570C: @ 0x022D570C
	ldr r0, _022D5718 @ =0x02326C4C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022D5718: .4byte 0x02326C4C
	arm_func_end ov00_022D570C

	arm_func_start ov00_022D571C
ov00_022D571C: @ 0x022D571C
	push {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _022D576C
	ldr r1, _022D5838 @ =0x02326C4C
	mov r3, #3
	ldr r0, [r1]
	mov r2, #0
	add r0, r0, #0x2000
	str r3, [r0, #0x26c]
	ldr r0, [r1]
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r0, [r1]
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	ldr r0, [r1]
	add r0, r0, #0x2000
	str r2, [r0, #0x278]
	b _022D5824
_022D576C:
	ldr r1, _022D5838 @ =0x02326C4C
	ldr r2, [r5]
	ldr r0, [r1]
	and r2, r2, #3
	add r0, r0, #0x2000
	str r2, [r0, #0x26c]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	and r2, r3, #3
	rsb r2, r2, #4
	and r2, r2, #3
	add r2, r2, #0xc
	cmp r2, r0
	ldr r0, [r1]
	bls _022D57C4
	mov r2, #0
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r0, [r1]
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	b _022D5810
_022D57C4:
	add r2, r3, #3
	bic r2, r2, #3
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r2, [r5, #4]
	ldr r0, [r1]
	and r2, r2, #3
	rsb r2, r2, #4
	ldr r3, [r5, #8]
	and r2, r2, #3
	sub r2, r3, r2
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	ldr r0, [r1]
	mov r1, #0
	add r2, r0, #0x2000
	ldr r0, [r2, #0x270]
	ldr r2, [r2, #0x274]
	bl FUN_0207C40C
_022D5810:
	ldr r0, _022D5838 @ =0x02326C4C
	ldr r1, [r5, #0xc]
	ldr r0, [r0]
	add r0, r0, #0x2000
	str r1, [r0, #0x278]
_022D5824:
	ldr r0, _022D5838 @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2000
	str r4, [r0, #0x27c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D5838: .4byte 0x02326C4C
	arm_func_end ov00_022D571C

	arm_func_start ov00_022D583C
ov00_022D583C: @ 0x022D583C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r2
	mov r4, r1
	bl ov00_022D5670
	ldr r2, _022D59C8 @ =0x02326C4C
	mov r3, #0x400
	ldr r1, [r2]
	mov r0, #0
	add ip, r1, #0x1500
	add r1, r1, #0x2000
	str ip, [r1, #0x288]
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r3, [r1, #0x8c]
	bl ov00_022D59F4
	ldr r1, _022D59C8 @ =0x02326C4C
	mov r2, #1
	lsl r2, r2, r0
	ldr r0, [r1]
	asr r2, r2, #1
	add r0, r0, #0x2200
	strh r2, [r0, #0x8e]
	ldr r0, [r1]
	add r0, r0, #0x2200
	ldrh r0, [r0, #0x68]
	cmp r0, #0
	bne _022D58B0
	bl ov00_022BF780
_022D58B0:
	ldr r2, _022D59C8 @ =0x02326C4C
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r0, [r1, #0x90]
	ldr r1, [r2]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x264]
	and r0, r0, #0x300000
	cmp r0, #0x300000
	movne r2, #1
	moveq r2, #0
	add r0, r1, #0x2200
	strh r2, [r0, #0x98]
	cmp r5, #0
	mov r2, #6
	bne _022D590C
	ldr r1, _022D59C8 @ =0x02326C4C
	ldr r0, _022D59CC @ =0x02318158
	ldr r1, [r1]
	add r1, r1, #0x92
	add r1, r1, #0x2200
	bl FUN_0207C4C8
	b _022D5924
_022D590C:
	ldr r1, _022D59C8 @ =0x02326C4C
	mov r0, r5
	ldr r1, [r1]
	add r1, r1, #0x92
	add r1, r1, #0x2200
	bl FUN_0207C4C8
_022D5924:
	cmp r4, #0
	ldrne r0, _022D59D0 @ =0x02318160
	mov r2, #0x20
	cmpne r4, r0
	bne _022D5968
	ldr r1, _022D59C8 @ =0x02326C4C
	ldr r0, _022D59D0 @ =0x02318160
	ldr r1, [r1]
	add r1, r1, #0x29c
	add r1, r1, #0x2000
	bl FUN_0207C4C8
	ldr r0, _022D59C8 @ =0x02326C4C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x9a]
	b _022D59B0
_022D5968:
	ldr r1, _022D59C8 @ =0x02326C4C
	mov r0, r4
	ldr r1, [r1]
	add r1, r1, #0x29c
	add r1, r1, #0x2000
	bl FUN_0207C4C8
	mov r1, #0
_022D5984:
	ldrb r0, [r4]
	cmp r0, #0
	beq _022D59A0
	add r1, r1, #1
	cmp r1, #0x20
	add r4, r4, #1
	blt _022D5984
_022D59A0:
	ldr r0, _022D59C8 @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x9a]
_022D59B0:
	ldr r0, _022D59C8 @ =0x02326C4C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x2000
	str r1, [r0, #0x284]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D59C8: .4byte 0x02326C4C
_022D59CC: .4byte 0x02318158
_022D59D0: .4byte 0x02318160
	arm_func_end ov00_022D583C

	arm_func_start ov00_022D59D4
ov00_022D59D4: @ 0x022D59D4
	ldr r0, _022D59EC @ =0x02326C4C
	ldr r1, _022D59F0 @ =0x00AAA082
	ldr r0, [r0]
	add r0, r0, #0x2000
	str r1, [r0, #0x264]
	bx lr
	.align 2, 0
_022D59EC: .4byte 0x02326C4C
_022D59F0: .4byte 0x00AAA082
	arm_func_end ov00_022D59D4

	arm_func_start ov00_022D59F4
ov00_022D59F4: @ 0x022D59F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _022D5A7C @ =0x02326C4C
	ldr lr, _022D5A80 @ =0x4EC4EC4F
	ldr r2, [r2]
	mov r1, r0
	add r2, r2, #0x2000
	ldr r7, [r2, #0x264]
	mov r6, #0
	mov r5, #1
	mov ip, #0xd
_022D5A1C:
	lsr r2, r1, #0x1f
	smull r3, r4, lr, r1
	add r4, r2, r4, asr #2
	smull r2, r3, ip, r4
	sub r4, r1, r2
	add r2, r4, #1
	tst r7, r5, lsl r2
	bne _022D5A4C
	add r6, r6, #1
	cmp r6, #0xd
	add r1, r1, #1
	blt _022D5A1C
_022D5A4C:
	add r3, r0, r6
	ldr r2, _022D5A80 @ =0x4EC4EC4F
	lsr r0, r3, #0x1f
	smull r1, ip, r2, r3
	add ip, r0, ip, asr #2
	mov r2, #0xd
	smull r0, r1, r2, ip
	sub ip, r3, r0
	add r0, ip, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022D5A7C: .4byte 0x02326C4C
_022D5A80: .4byte 0x4EC4EC4F
	arm_func_end ov00_022D59F4

	arm_func_start ov00_022D5A84
ov00_022D5A84: @ 0x022D5A84
	push {r3, r4, r5, lr}
	ldr ip, _022D5AC4 @ =0x02326C4C
	mov r5, r0
	ldr r0, [ip]
	mov r4, r1
	add r1, r0, #0x2200
	ldrsh r0, [r1, #0x80]
	mov ip, #0
	mov lr, r2
	strh ip, [r1, #0x80]
	str r3, [sp]
	mov r1, r5
	mov r2, r4
	mov r3, lr
	bl ov00_022D5AC8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D5AC4: .4byte 0x02326C4C
	arm_func_end ov00_022D5A84

	arm_func_start ov00_022D5AC8
ov00_022D5AC8: @ 0x022D5AC8
	push {r3, lr}
	sub sp, sp, #0x10
	ldr ip, _022D5B18 @ =0x02326C4C
	ldr ip, [ip]
	add ip, ip, #0x2000
	ldr lr, [ip, #0x27c]
	cmp lr, #0
	addeq sp, sp, #0x10
	popeq {r3, pc}
	ldr lr, [sp, #0x18]
	strh r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str lr, [sp, #0xc]
	strh r1, [sp, #2]
	ldr r1, [ip, #0x27c]
	add r0, sp, #0
	blx r1
	add sp, sp, #0x10
	pop {r3, pc}
	.align 2, 0
_022D5B18: .4byte 0x02326C4C
	arm_func_end ov00_022D5AC8

	arm_func_start ov00_022D5B1C
ov00_022D5B1C: @ 0x022D5B1C
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0207B7E4
	ldr r1, _022D5BA8 @ =0x02326C4C
	mov r4, r0
	ldr r1, [r1]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _022D5B58
	cmp r5, #9
	beq _022D5B58
	add r0, r1, #0x2cc
	add r0, r0, #0x2000
	bl FUN_0207B1E8
_022D5B58:
	ldr r0, _022D5BA8 @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #0xb
	strne r5, [r0, #0x260]
	cmp r5, #9
	bne _022D5B9C
	mov r2, #0
	ldr r0, _022D5BA8 @ =0x02326C4C
	str r2, [sp]
	ldr r0, [r0]
	ldr r1, _022D5BAC @ =0x022F5341
	add r0, r0, #0x2cc
	ldr r3, _022D5BB0 @ =0x022D5C28
	add r0, r0, #0x2000
	bl FUN_0207B17C
_022D5B9C:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D5BA8: .4byte 0x02326C4C
_022D5BAC: .4byte 0x022F5341
_022D5BB0: .4byte 0x022D5C28
	arm_func_end ov00_022D5B1C

	arm_func_start ov00_022D5BB4
ov00_022D5BB4: @ 0x022D5BB4
	push {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_0207B7E4
	ldr r1, _022D5C1C @ =0x02326C4C
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x2cc
	add r0, r0, #0x2000
	bl FUN_0207B1E8
	ldr r0, _022D5C1C @ =0x02326C4C
	ldr r1, [r0]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _022D5C0C
	add r0, r1, #0x2cc
	mov r2, #0
	ldr r1, _022D5C20 @ =0x022F5341
	ldr r3, _022D5C24 @ =0x022D5C28
	add r0, r0, #0x2000
	str r2, [sp]
	bl FUN_0207B17C
_022D5C0C:
	mov r0, r4
	bl FUN_0207B7F8
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022D5C1C: .4byte 0x02326C4C
_022D5C20: .4byte 0x022F5341
_022D5C24: .4byte 0x022D5C28
	arm_func_end ov00_022D5BB4
_022D5C28:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0x27, 0x05, 0x00, 0xEB
	.byte 0xDF, 0xFF, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022D5C38
ov00_022D5C38: @ 0x022D5C38
	mov r1, r0
	mov r0, #0
	mov r3, #1
_022D5C44:
	clz r2, r1
	rsbs r2, r2, #0x1f
	blo _022D5C54
	b _022D5C58
_022D5C54:
	bx lr
_022D5C58:
	bic r1, r1, r3, lsl r2
	add r0, r0, #1
	b _022D5C44
	arm_func_end ov00_022D5C38

	arm_func_start ov00_022D5C64
ov00_022D5C64: @ 0x022D5C64
	clz r0, r0
	bx lr
	arm_func_end ov00_022D5C64

	arm_func_start ov00_022D5C6C
ov00_022D5C6C: @ 0x022D5C6C
	push {r3, lr}
	ldr r0, _022D5CC0 @ =0x02326C4C
	ldr r0, [r0]
	add r1, r0, #0x2000
	ldrb r0, [r1, #0x26b]
	cmp r0, #0
	popne {r3, pc}
	mov r2, #1
	ldr r0, _022D5CC4 @ =ov00_022D68B0
	strb r2, [r1, #0x26b]
	bl ov00_022BFB9C
	cmp r0, #2
	popeq {r3, pc}
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r1, #0
	mov r2, r1
	mov r0, #7
	mov r3, #0x610
	bl ov00_022D5A84
	pop {r3, pc}
	.align 2, 0
_022D5CC0: .4byte 0x02326C4C
_022D5CC4: .4byte ov00_022D68B0
	arm_func_end ov00_022D5C6C

	arm_func_start ov00_022D5CC8
ov00_022D5CC8: @ 0x022D5CC8
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #8
	ldrheq r1, [r0, #4]
	cmpeq r1, #0x16
	ldrheq r0, [r0, #6]
	cmpeq r0, #0x25
	popne {r3, pc}
	ldr r0, _022D5D3C @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_022D5D08: @ jump table
	b _022D5D1C @ case 0
	b _022D5D28 @ case 1
	b _022D5D30 @ case 2
	pop {r3, pc} @ case 3
	b _022D5D28 @ case 4
_022D5D1C:
	mov r0, #0xc
	bl ov00_022D5B1C
	pop {r3, pc}
_022D5D28:
	bl ov00_022D5C6C
	pop {r3, pc}
_022D5D30:
	mov r0, #0xc
	bl ov00_022D5B1C
	pop {r3, pc}
	.align 2, 0
_022D5D3C: .4byte 0x02326C4C
	arm_func_end ov00_022D5CC8
_022D5D40:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0xB2, 0x10, 0xD0, 0xE1, 0x14, 0x20, 0xA0, 0xE3, 0x04, 0x00, 0x51, 0xE3
	.byte 0x01, 0xF1, 0x8F, 0x90, 0x91, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x81, 0x00, 0x00, 0xEA
	.byte 0x8E, 0x00, 0x00, 0xEA, 0x8D, 0x00, 0x00, 0xEA, 0x8C, 0x00, 0x00, 0xEA, 0xB0, 0x00, 0xD0, 0xE1
	.byte 0x19, 0x00, 0x50, 0xE3, 0x0A, 0x00, 0x00, 0xCA, 0x3A, 0x00, 0x00, 0xAA, 0x06, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x55, 0x00, 0x00, 0xEA, 0x54, 0x00, 0x00, 0xEA, 0x53, 0x00, 0x00, 0xEA
	.byte 0x52, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0x0C, 0x00, 0x00, 0xEA, 0x20, 0x00, 0x00, 0xEA
	.byte 0x27, 0x00, 0x00, 0xEA, 0x1D, 0x00, 0x50, 0xE3, 0x01, 0x00, 0x00, 0xCA, 0x28, 0x00, 0x00, 0x0A
	.byte 0x4A, 0x00, 0x00, 0xEA, 0x27, 0x00, 0x50, 0xE3, 0x34, 0x00, 0x00, 0x0A, 0x47, 0x00, 0x00, 0xEA
	.byte 0x10, 0x02, 0x9F, 0xE5, 0x32, 0xA7, 0xFF, 0xEB, 0x00, 0x20, 0xA0, 0xE1, 0x43, 0x00, 0x00, 0xEA
	.byte 0x67, 0xA3, 0xFF, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x01, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x50, 0xE3
	.byte 0x07, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3, 0x4B, 0xFF, 0xFF, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0xE4, 0x31, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE1, 0x20, 0xFF, 0xFF, 0xEB
	.byte 0x08, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3, 0x43, 0xFF, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3
	.byte 0xC8, 0x31, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x07, 0x00, 0xA0, 0xE3, 0x18, 0xFF, 0xFF, 0xEB
	.byte 0x08, 0x80, 0xBD, 0xE8, 0x03, 0x00, 0xA0, 0xE3, 0x3B, 0xFF, 0xFF, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0xAC, 0x31, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE1, 0x10, 0xFF, 0xFF, 0xEB
	.byte 0x08, 0x80, 0xBD, 0xE8, 0x8C, 0x01, 0x9F, 0xE5, 0x01, 0xA7, 0xFF, 0xEB, 0x00, 0x20, 0xA0, 0xE1
	.byte 0x22, 0x00, 0x00, 0xEA, 0x7C, 0x01, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0xBF, 0xAD, 0xFF, 0xEB
	.byte 0x00, 0x20, 0xA0, 0xE1, 0x1D, 0x00, 0x00, 0xEA, 0x78, 0x11, 0x9F, 0xE5, 0x64, 0x01, 0x9F, 0xE5
	.byte 0x00, 0x30, 0x91, 0xE5, 0x02, 0x2A, 0x83, 0xE2, 0x50, 0x12, 0xD2, 0xE5, 0x51, 0x22, 0xD2, 0xE5
	.byte 0x22, 0x3C, 0x83, 0xE2, 0x68, 0xAD, 0xFF, 0xEB, 0x00, 0x20, 0xA0, 0xE1, 0x13, 0x00, 0x00, 0xEA
	.byte 0x50, 0x01, 0x9F, 0xE5, 0x00, 0x20, 0x90, 0xE5, 0x02, 0x0A, 0x82, 0xE2, 0x64, 0x12, 0x90, 0xE5
	.byte 0x03, 0x07, 0x01, 0xE2, 0x03, 0x07, 0x50, 0xE3, 0x01, 0x00, 0xA0, 0x03, 0x00, 0x00, 0xA0, 0x13
	.byte 0x00, 0x08, 0xA0, 0xE1, 0x20, 0xC8, 0xA0, 0xE1, 0x03, 0x18, 0x01, 0xE2, 0x03, 0x08, 0x51, 0xE3
	.byte 0x01, 0x30, 0xA0, 0x13, 0x85, 0x1D, 0x82, 0xE2, 0x1C, 0x01, 0x9F, 0xE5, 0x00, 0x30, 0xA0, 0x03
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x00, 0xC0, 0x8D, 0xE5, 0x62, 0xA8, 0xFF, 0xEB, 0x00, 0x20, 0xA0, 0xE1
	.byte 0x02, 0x00, 0x52, 0xE3, 0x08, 0x80, 0xBD, 0x08, 0x03, 0x00, 0x52, 0xE3, 0x0F, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x52, 0xE3, 0x0D, 0x00, 0x00, 0x1A, 0x0C, 0x00, 0xA0, 0xE3, 0x06, 0xFF, 0xFF, 0xEB
	.byte 0xE0, 0x00, 0x9F, 0xE5, 0x00, 0x20, 0xA0, 0xE3, 0x00, 0x10, 0x90, 0xE5, 0x22, 0x0C, 0x81, 0xE2
	.byte 0xF0, 0x08, 0xD0, 0xE1, 0x05, 0x00, 0x50, 0xE3, 0x85, 0x1D, 0x81, 0x02, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x10, 0xA0, 0x13, 0x6B, 0x3E, 0x60, 0xE2, 0xD5, 0xFE, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0xF8, 0xFE, 0xFF, 0xEB, 0xA8, 0x00, 0x9F, 0xE5, 0xAC, 0x30, 0x9F, 0xE5
	.byte 0x00, 0x10, 0x90, 0xE5, 0x00, 0x20, 0xA0, 0xE3, 0x22, 0x0C, 0x81, 0xE2, 0xF0, 0x08, 0xD0, 0xE1
	.byte 0x05, 0x00, 0x50, 0xE3, 0x85, 0x1D, 0x81, 0x02, 0x00, 0x10, 0xA0, 0x13, 0x07, 0x00, 0xA0, 0xE3
	.byte 0xC7, 0xFE, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x0C, 0x00, 0xA0, 0xE3, 0xEA, 0xFE, 0xFF, 0xEB
	.byte 0x70, 0x00, 0x9F, 0xE5, 0x78, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x22, 0x0C, 0x81, 0xE2, 0xF0, 0x08, 0xD0, 0xE1, 0x05, 0x00, 0x50, 0xE3, 0x85, 0x1D, 0x81, 0x02
	.byte 0x00, 0x10, 0xA0, 0x13, 0x01, 0x00, 0xA0, 0xE3, 0xB9, 0xFE, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0xDC, 0xFE, 0xFF, 0xEB, 0x38, 0x00, 0x9F, 0xE5, 0x44, 0x30, 0x9F, 0xE5
	.byte 0x00, 0x10, 0x90, 0xE5, 0x00, 0x20, 0xA0, 0xE3, 0x22, 0x0C, 0x81, 0xE2, 0xF0, 0x08, 0xD0, 0xE1
	.byte 0x05, 0x00, 0x50, 0xE3, 0x85, 0x1D, 0x81, 0x02, 0x00, 0x10, 0xA0, 0x13, 0x07, 0x00, 0xA0, 0xE3
	.byte 0xAB, 0xFE, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x40, 0x5D, 0x2D, 0x02, 0x63, 0x06, 0x00, 0x00
	.byte 0x6C, 0x06, 0x00, 0x00, 0x73, 0x06, 0x00, 0x00, 0x4C, 0x6C, 0x32, 0x02, 0x58, 0x63, 0x2D, 0x02
	.byte 0xB8, 0x06, 0x00, 0x00, 0xDE, 0x06, 0x00, 0x00, 0xE8, 0x06, 0x00, 0x00, 0xF8, 0x41, 0x2D, 0xE9
	.byte 0x04, 0xD0, 0x4D, 0xE2, 0x00, 0x50, 0xA0, 0xE1, 0xB2, 0x00, 0xD5, 0xE1, 0x14, 0x40, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x9D, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA
	.byte 0x98, 0x00, 0x00, 0xEA, 0x9A, 0x00, 0x00, 0xEA, 0x99, 0x00, 0x00, 0xEA, 0x98, 0x00, 0x00, 0xEA
	.byte 0x80, 0x02, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x02, 0x0A, 0x80, 0xE2, 0x60, 0x02, 0x90, 0xE5
	.byte 0x05, 0x00, 0x50, 0xE3, 0x06, 0x00, 0x00, 0x1A, 0x06, 0x00, 0xA0, 0xE3, 0xB2, 0xFE, 0xFF, 0xEB
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x60, 0x32, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE1
	.byte 0x87, 0xFE, 0xFF, 0xEB, 0x4C, 0x12, 0x9F, 0xE5, 0x00, 0x20, 0x91, 0xE5, 0x02, 0x0A, 0x82, 0xE2
	.byte 0x60, 0x02, 0x90, 0xE5, 0x06, 0x00, 0x50, 0xE3, 0x04, 0x00, 0x00, 0x0A, 0x07, 0x00, 0x50, 0xE3
	.byte 0x60, 0x00, 0x00, 0x0A, 0x0D, 0x00, 0x50, 0xE3, 0x62, 0x00, 0x00, 0x0A, 0x64, 0x00, 0x00, 0xEA
	.byte 0x22, 0x0C, 0x82, 0xE2, 0x07, 0x20, 0xA0, 0xE3, 0xB0, 0x28, 0xC0, 0xE1, 0xB8, 0x00, 0xD5, 0xE1
	.byte 0x05, 0x00, 0x50, 0xE3, 0x1C, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x91, 0xE5, 0x22, 0x1C, 0x80, 0xE2
	.byte 0x02, 0x0A, 0x80, 0xE2, 0xBC, 0x18, 0xD1, 0xE1, 0x88, 0x02, 0x90, 0xE5, 0x78, 0x90, 0xF6, 0xEB
	.byte 0xBE, 0x00, 0xD5, 0xE1, 0x00, 0x40, 0xA0, 0xE3, 0x00, 0x00, 0x50, 0xE3, 0x12, 0x00, 0x00, 0xDA
	.byte 0xE8, 0x81, 0x9F, 0xE5, 0x07, 0x70, 0xA0, 0xE3, 0x04, 0x60, 0xA0, 0xE1, 0x84, 0x00, 0x85, 0xE0
	.byte 0x04, 0x21, 0x85, 0xE0, 0xB0, 0x15, 0xD0, 0xE1, 0x10, 0x00, 0x92, 0xE5, 0x1A, 0x03, 0x00, 0xEB
	.byte 0x00, 0x80, 0x8D, 0xE5, 0x04, 0x01, 0x85, 0xE0, 0x10, 0x20, 0x90, 0xE5, 0x07, 0x00, 0xA0, 0xE1
	.byte 0x06, 0x10, 0xA0, 0xE1, 0x05, 0x30, 0xA0, 0xE1, 0x6E, 0xFE, 0xFF, 0xEB, 0xBE, 0x00, 0xD5, 0xE1
	.byte 0x01, 0x40, 0x84, 0xE2, 0x00, 0x00, 0x54, 0xE1, 0xEF, 0xFF, 0xFF, 0xBA, 0x94, 0x01, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x02, 0x0A, 0x80, 0xE2, 0x64, 0x12, 0x90, 0xE5, 0x03, 0x05, 0x01, 0xE2
	.byte 0x03, 0x05, 0x50, 0xE3, 0x13, 0x00, 0x00, 0x1A, 0x84, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x01, 0xE0
	.byte 0xBC, 0xFE, 0xFF, 0xEB, 0x00, 0x10, 0xB0, 0xE1, 0x0E, 0x00, 0x00, 0x0A, 0x64, 0x01, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x02, 0x0A, 0x80, 0xE2, 0x84, 0x62, 0x90, 0xE5, 0x06, 0x00, 0xA0, 0xE1
	.byte 0xD2, 0xE7, 0xF6, 0xEB, 0x00, 0x00, 0x51, 0xE3, 0x06, 0x00, 0x00, 0x1A, 0x54, 0x41, 0x9F, 0xE5
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x06, 0x20, 0xA0, 0xE1, 0x01, 0x30, 0xA0, 0xE1, 0x08, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x40, 0x8D, 0xE5, 0x4F, 0xFE, 0xFF, 0xEB, 0xBA, 0x00, 0xD5, 0xE1, 0xB4, 0xFE, 0xFF, 0xEB
	.byte 0x20, 0x00, 0x60, 0xE2, 0x00, 0x08, 0xA0, 0xE1, 0x20, 0x08, 0xA0, 0xE1, 0x14, 0xFE, 0xFF, 0xEB
	.byte 0x10, 0x11, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE3, 0x12, 0x20, 0xA0, 0xE1, 0x00, 0x00, 0x91, 0xE5
	.byte 0xC2, 0x20, 0xA0, 0xE1, 0x22, 0x0C, 0x80, 0xE2, 0xBE, 0x28, 0xC0, 0xE1, 0x00, 0x00, 0x91, 0xE5
	.byte 0x22, 0x1C, 0x80, 0xE2, 0x02, 0x0A, 0x80, 0xE2, 0xBC, 0x18, 0xD1, 0xE1, 0x88, 0x02, 0x90, 0xE5
	.byte 0x33, 0x90, 0xF6, 0xEB, 0xDC, 0x20, 0x9F, 0xE5, 0xEC, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x92, 0xE5
	.byte 0x02, 0x1A, 0x81, 0xE2, 0x84, 0x32, 0x91, 0xE5, 0x01, 0x30, 0x83, 0xE2, 0x84, 0x32, 0x81, 0xE5
	.byte 0x00, 0x10, 0x92, 0xE5, 0xA2, 0x1F, 0x81, 0xE2, 0x02, 0x1A, 0x81, 0xE2, 0x35, 0xA7, 0xFF, 0xEB
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x06, 0x00, 0x00, 0xEA, 0xC0, 0x00, 0x9F, 0xE5, 0x85, 0xA7, 0xFF, 0xEB
	.byte 0x00, 0x40, 0xA0, 0xE1, 0x02, 0x00, 0x00, 0xEA, 0x93, 0xFE, 0xFF, 0xEB, 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x02, 0x00, 0x54, 0xE3, 0x04, 0xD0, 0x8D, 0x02, 0xF8, 0x81, 0xBD, 0x08
	.byte 0x03, 0x00, 0x54, 0xE3, 0x0A, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x54, 0xE3, 0x08, 0x00, 0x00, 0x1A
	.byte 0x0C, 0x00, 0xA0, 0xE3, 0x34, 0xFE, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3, 0x80, 0x30, 0x9F, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE1, 0x01, 0x00, 0xA0, 0xE3, 0x09, 0xFE, 0xFF, 0xEB, 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3, 0x2B, 0xFE, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x60, 0x30, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x07, 0x00, 0xA0, 0xE3, 0x00, 0xFE, 0xFF, 0xEB
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x77, 0xFE, 0xFF, 0xEB, 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x81, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3, 0x1F, 0xFE, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x34, 0x30, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x07, 0x00, 0xA0, 0xE3, 0xF4, 0xFD, 0xFF, 0xEB
	.byte 0x04, 0xD0, 0x8D, 0xE2, 0xF8, 0x81, 0xBD, 0xE8, 0x4C, 0x6C, 0x32, 0x02, 0x04, 0x07, 0x00, 0x00
	.byte 0x1A, 0x07, 0x00, 0x00, 0xFE, 0x3F, 0x00, 0x00, 0x28, 0x07, 0x00, 0x00, 0xFC, 0x5F, 0x2D, 0x02
	.byte 0xE0, 0x62, 0x2D, 0x02, 0x53, 0x07, 0x00, 0x00, 0x5C, 0x07, 0x00, 0x00, 0x6D, 0x07, 0x00, 0x00
	.byte 0x08, 0x40, 0x2D, 0xE9, 0xB2, 0x00, 0xD0, 0xE1, 0x04, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90
	.byte 0x0E, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x0A, 0x00, 0x00, 0xEA, 0x0B, 0x00, 0x00, 0xEA
	.byte 0x0A, 0x00, 0x00, 0xEA, 0x09, 0x00, 0x00, 0xEA, 0x03, 0x00, 0xA0, 0xE3, 0x02, 0xFE, 0xFF, 0xEB
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x34, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x00, 0x20, 0xA0, 0xE1
	.byte 0xD7, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x4F, 0xFE, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0xF8, 0xFD, 0xFF, 0xEB, 0x00, 0x10, 0xA0, 0xE3, 0x10, 0x30, 0x9F, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE1, 0x07, 0x00, 0xA0, 0xE3, 0xCD, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x83, 0x07, 0x00, 0x00, 0x93, 0x07, 0x00, 0x00, 0x10, 0x40, 0x2D, 0xE9, 0x00, 0x40, 0xA0, 0xE1
	.byte 0xB2, 0x00, 0xD4, 0xE1, 0x0C, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x81, 0x00, 0x00, 0xEA
	.byte 0x0B, 0x00, 0x00, 0xEA, 0x76, 0x00, 0x00, 0xEA, 0x7E, 0x00, 0x00, 0xEA, 0x7D, 0x00, 0x00, 0xEA
	.byte 0x7C, 0x00, 0x00, 0xEA, 0x7B, 0x00, 0x00, 0xEA, 0x76, 0x00, 0x00, 0xEA, 0x79, 0x00, 0x00, 0xEA
	.byte 0x78, 0x00, 0x00, 0xEA, 0x77, 0x00, 0x00, 0xEA, 0x76, 0x00, 0x00, 0xEA, 0x71, 0x00, 0x00, 0xEA
	.byte 0x70, 0x00, 0x00, 0xEA, 0xB8, 0x00, 0xD4, 0xE1, 0x09, 0x00, 0x50, 0xE3, 0x0C, 0x00, 0x00, 0xCA
	.byte 0x00, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0xA0, 0x5B, 0x00, 0x00, 0xEA, 0x5A, 0x00, 0x00, 0xEA
	.byte 0x59, 0x00, 0x00, 0xEA, 0x58, 0x00, 0x00, 0xEA, 0x57, 0x00, 0x00, 0xEA, 0x56, 0x00, 0x00, 0xEA
	.byte 0x55, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8, 0x20, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA
	.byte 0x02, 0x00, 0x00, 0xEA, 0x1A, 0x00, 0x50, 0xE3, 0x10, 0x80, 0xBD, 0x08, 0x4E, 0x00, 0x00, 0xEA
	.byte 0xA8, 0x11, 0x9F, 0xE5, 0x00, 0x20, 0x91, 0xE5, 0x02, 0x0A, 0x82, 0xE2, 0x60, 0x02, 0x90, 0xE5
	.byte 0x08, 0x00, 0x40, 0xE2, 0x04, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x06, 0x00, 0x00, 0xEA, 0x08, 0x00, 0x00, 0xEA, 0x01, 0x00, 0x00, 0xEA, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x0C, 0x00, 0x00, 0xEA, 0x22, 0x0C, 0x82, 0xE2, 0x00, 0x10, 0xA0, 0xE3, 0xB2, 0x18, 0xC0, 0xE1
	.byte 0x0C, 0x00, 0xA0, 0xE3, 0xB8, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8, 0x22, 0x0C, 0x82, 0xE2
	.byte 0x00, 0x20, 0xA0, 0xE3, 0xB2, 0x28, 0xC0, 0xE1, 0x00, 0x00, 0x91, 0xE5, 0x06, 0x10, 0xA0, 0xE3
	.byte 0x22, 0x0C, 0x80, 0xE2, 0xB0, 0x18, 0xC0, 0xE1, 0x03, 0xFE, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x38, 0x11, 0x9F, 0xE5, 0x00, 0x30, 0x91, 0xE5, 0x02, 0x0A, 0x83, 0xE2, 0x60, 0x02, 0x90, 0xE5
	.byte 0x0C, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x1A, 0x08, 0x00, 0xA0, 0xE3, 0xA6, 0xFD, 0xFF, 0xEB
	.byte 0xF9, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8, 0xBA, 0x20, 0xD4, 0xE1, 0x01, 0x00, 0x52, 0xE3
	.byte 0x23, 0x00, 0x00, 0x3A, 0x08, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x52, 0xE1, 0x20, 0x00, 0x00, 0x8A
	.byte 0x22, 0x0C, 0x83, 0xE2, 0xB2, 0x28, 0xC0, 0xE1, 0x00, 0x10, 0x91, 0xE5, 0xF4, 0x00, 0x9F, 0xE5
	.byte 0x15, 0x1C, 0x81, 0xE2, 0x62, 0x2E, 0xA0, 0xE3, 0x5E, 0xA8, 0xFF, 0xEB, 0x02, 0x00, 0x50, 0xE3
	.byte 0x10, 0x80, 0xBD, 0x08, 0x03, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A, 0x08, 0x00, 0x50, 0xE3
	.byte 0x09, 0x00, 0x00, 0x1A, 0x0C, 0x00, 0xA0, 0xE3, 0x8F, 0xFD, 0xFF, 0xEB, 0xBC, 0x00, 0x9F, 0xE5
	.byte 0xC4, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x01, 0x00, 0xA0, 0xE3, 0x85, 0x1D, 0x81, 0xE2
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x62, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3
	.byte 0x85, 0xFD, 0xFF, 0xEB, 0x94, 0x00, 0x9F, 0xE5, 0xA0, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5
	.byte 0x07, 0x00, 0xA0, 0xE3, 0x85, 0x1D, 0x81, 0xE2, 0x00, 0x20, 0xA0, 0xE3, 0x58, 0xFD, 0xFF, 0xEB
	.byte 0x10, 0x80, 0xBD, 0xE8, 0xD0, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3
	.byte 0x79, 0xFD, 0xFF, 0xEB, 0x64, 0x00, 0x9F, 0xE5, 0xB8, 0x20, 0xD4, 0xE1, 0x00, 0x00, 0x90, 0xE5
	.byte 0x6C, 0x30, 0x9F, 0xE5, 0x85, 0x1D, 0x80, 0xE2, 0x07, 0x00, 0xA0, 0xE3, 0x4C, 0xFD, 0xFF, 0xEB
	.byte 0x10, 0x80, 0xBD, 0xE8, 0x44, 0x00, 0x9F, 0xE5, 0xBE, 0x10, 0xD4, 0xE1, 0x00, 0x00, 0x90, 0xE5
	.byte 0x22, 0x0C, 0x80, 0xE2, 0xB8, 0x1F, 0xC0, 0xE1, 0x08, 0x00, 0xA0, 0xE3, 0x6A, 0xFD, 0xFF, 0xEB
	.byte 0xBD, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3, 0x66, 0xFD, 0xFF, 0xEB
	.byte 0x18, 0x00, 0x9F, 0xE5, 0x2C, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x07, 0x00, 0xA0, 0xE3
	.byte 0x85, 0x1D, 0x81, 0xE2, 0x00, 0x20, 0xA0, 0xE3, 0x39, 0xFD, 0xFF, 0xEB, 0x10, 0x80, 0xBD, 0xE8
	.byte 0x4C, 0x6C, 0x32, 0x02, 0xD7, 0x07, 0x00, 0x00, 0x84, 0x66, 0x2D, 0x02, 0xED, 0x07, 0x00, 0x00
	.byte 0xF6, 0x07, 0x00, 0x00, 0x04, 0x08, 0x00, 0x00, 0x1B, 0x08, 0x00, 0x00, 0x08, 0x40, 0x2D, 0xE9
	.byte 0xB2, 0x00, 0xD0, 0xE1, 0x04, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x1F, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0x00, 0xEA, 0x19, 0x00, 0x00, 0xEA, 0x1C, 0x00, 0x00, 0xEA, 0x17, 0x00, 0x00, 0xEA
	.byte 0x1A, 0x00, 0x00, 0xEA, 0x8C, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x02, 0x0A, 0x81, 0xE2
	.byte 0x60, 0x02, 0x90, 0xE5, 0x0C, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x1A, 0x0A, 0x00, 0xA0, 0xE3
	.byte 0x45, 0xFD, 0xFF, 0xEB, 0x98, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x22, 0x1C, 0x81, 0xE2
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x03, 0x00, 0xA0, 0xE3, 0xB2, 0x28, 0xC1, 0xE1, 0x3E, 0xFD, 0xFF, 0xEB
	.byte 0x50, 0x10, 0x9F, 0xE5, 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x10, 0x91, 0xE5, 0x48, 0x30, 0x9F, 0xE5
	.byte 0x00, 0x20, 0xA0, 0xE1, 0x85, 0x1D, 0x81, 0xE2, 0x11, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0A, 0x00, 0xA0, 0xE3, 0x34, 0xFD, 0xFF, 0xEB, 0x87, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0x30, 0xFD, 0xFF, 0xEB, 0x18, 0x00, 0x9F, 0xE5, 0x1C, 0x30, 0x9F, 0xE5
	.byte 0x00, 0x10, 0x90, 0xE5, 0x07, 0x00, 0xA0, 0xE3, 0x85, 0x1D, 0x81, 0xE2, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x03, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x4C, 0x6C, 0x32, 0x02, 0x3D, 0x08, 0x00, 0x00
	.byte 0x4F, 0x08, 0x00, 0x00

	arm_func_start ov00_022D6684
ov00_022D6684: @ 0x022D6684
	push {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022D66A0
	cmp r0, #4
	b _022D675C
_022D66A0:
	ldrh r0, [r4, #4]
	cmp r0, #0xe
	beq _022D66B8
	cmp r0, #0xf
	beq _022D6708
	b _022D6734
_022D66B8:
	ldr r0, _022D6784 @ =0x02326C4C
	ldr r0, [r0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #0xc
	bne _022D66E0
	mov r0, #8
	bl ov00_022D5B1C
	bl ov00_022D5C6C
	pop {r4, pc}
_022D66E0:
	mov r0, #9
	bl ov00_022D5B1C
	ldr r1, _022D6784 @ =0x02326C4C
	mov r0, #0
	ldr r1, [r1]
	ldr r3, _022D6788 @ =0x00000872
	mov r2, r0
	add r1, r1, #0x2140
	bl ov00_022D5A84
	pop {r4, pc}
_022D6708:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	asr r0, r0, #8
	and r0, r0, #0xff
	bl ov00_022D758C
	ldr r0, [r4, #8]
	mov r1, #0x620
	bl FUN_0207A2A4
	ldr r0, [r4, #8]
	bl ov00_022D709C
	pop {r4, pc}
_022D6734:
	mov r0, #0xb
	bl ov00_022D5B1C
	ldr r0, _022D6784 @ =0x02326C4C
	ldrh r2, [r4, #4]
	ldr r0, [r0]
	ldr r3, _022D678C @ =0x00000881
	add r1, r0, #0x2140
	mov r0, #7
	bl ov00_022D5A84
	pop {r4, pc}
_022D675C:
	mov r0, #0xb
	bl ov00_022D5B1C
	ldr r0, _022D6784 @ =0x02326C4C
	ldr r3, _022D6790 @ =0x0000088C
	ldr r1, [r0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov00_022D5A84
	pop {r4, pc}
	.align 2, 0
_022D6784: .4byte 0x02326C4C
_022D6788: .4byte 0x00000872
_022D678C: .4byte 0x00000881
_022D6790: .4byte 0x0000088C
	arm_func_end ov00_022D6684
_022D6794:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0xB2, 0x00, 0xD0, 0xE1, 0x04, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x33, 0x00, 0x00, 0xEA, 0x03, 0x00, 0x00, 0xEA, 0x2D, 0x00, 0x00, 0xEA
	.byte 0x30, 0x00, 0x00, 0xEA, 0x2B, 0x00, 0x00, 0xEA, 0x2E, 0x00, 0x00, 0xEA, 0xDC, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x02, 0x0A, 0x80, 0xE2, 0x60, 0x02, 0x90, 0xE5, 0x0C, 0x00, 0x50, 0xE3
	.byte 0x03, 0x00, 0x00, 0x1A, 0x0A, 0x00, 0xA0, 0xE3, 0xCF, 0xFC, 0xFF, 0xEB, 0x22, 0xFD, 0xFF, 0xEB
	.byte 0x08, 0x80, 0xBD, 0xE8, 0xB8, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x50, 0xA6, 0xFF, 0xEB
	.byte 0x02, 0x00, 0x50, 0xE3, 0x08, 0x80, 0xBD, 0x08, 0x03, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x08, 0x00, 0x50, 0xE3, 0x0D, 0x00, 0x00, 0x1A, 0x0C, 0x00, 0xA0, 0xE3, 0xC2, 0xFC, 0xFF, 0xEB
	.byte 0x88, 0x00, 0x9F, 0xE5, 0x8C, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x85, 0x1D, 0x81, 0xE2, 0x00, 0x20, 0xA0, 0xE3, 0x95, 0xFC, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0A, 0x00, 0xA0, 0xE3, 0xB8, 0xFC, 0xFF, 0xEB, 0x0B, 0xFD, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x0B, 0x00, 0xA0, 0xE3, 0xB4, 0xFC, 0xFF, 0xEB, 0x50, 0x10, 0x9F, 0xE5, 0x07, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x10, 0x91, 0xE5, 0x00, 0x20, 0xA0, 0xE3, 0x85, 0x1D, 0x81, 0xE2, 0x23, 0x3D, 0xA0, 0xE3
	.byte 0x87, 0xFC, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x0A, 0x00, 0xA0, 0xE3, 0xAA, 0xFC, 0xFF, 0xEB
	.byte 0xFD, 0xFC, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8, 0x0B, 0x00, 0xA0, 0xE3, 0xA6, 0xFC, 0xFF, 0xEB
	.byte 0x18, 0x00, 0x9F, 0xE5, 0x20, 0x30, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x07, 0x00, 0xA0, 0xE3
	.byte 0x85, 0x1D, 0x81, 0xE2, 0x00, 0x20, 0xA0, 0xE3, 0x79, 0xFC, 0xFF, 0xEB, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x4C, 0x6C, 0x32, 0x02, 0xBC, 0x65, 0x2D, 0x02, 0xB4, 0x08, 0x00, 0x00, 0xD3, 0x08, 0x00, 0x00

	arm_func_start ov00_022D68B0
ov00_022D68B0: @ 0x022D68B0
	push {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022D6B88
	ldr r2, _022D6BAC @ =0x02326C4C
	mov r0, #0
	ldr r1, [r2]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26b]
	ldr r1, [r2]
	add r1, r1, #0x2200
	strh r0, [r1, #0x82]
	ldr r3, [r2]
	add r1, r3, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #0xd
	addls pc, pc, r1, lsl #2
	b _022D6B58
_022D68FC: @ jump table
	b _022D6B58 @ case 0
	b _022D6B58 @ case 1
	b _022D6B58 @ case 2
	b _022D6B58 @ case 3
	b _022D6B58 @ case 4
	b _022D6934 @ case 5
	b _022D6934 @ case 6
	b _022D6958 @ case 7
	b _022D697C @ case 8
	b _022D6A94 @ case 9
	b _022D6AC0 @ case 10
	b _022D6B58 @ case 11
	b _022D6A94 @ case 12
	b _022D6AEC @ case 13
_022D6934:
	mov r0, #3
	bl ov00_022D5B1C
	mov r1, #0
	ldr r3, _022D6BB0 @ =0x000008F5
	mov r2, r1
	mov r0, #1
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6958:
	mov r0, #3
	bl ov00_022D5B1C
	mov r0, #0
	ldr r3, _022D6BB4 @ =0x000008FB
	mov r1, r0
	mov r2, r0
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D697C:
	add r1, r3, #0x2200
	ldrh r4, [r1, #0xf8]
	strh r0, [r1, #0xf8]
	cmp r4, #0x12
	bne _022D6A68
	ldr r1, [r2]
	add r1, r1, #0x2100
	ldrh r3, [r1, #0x70]
	and ip, r3, #0x24
	cmp ip, #0x24
	beq _022D6A68
	orr r3, r3, #0x24
	strh r3, [r1, #0x70]
	ldr lr, [r2]
	add r1, lr, #0x2000
	ldr r2, [r1, #0x264]
	and r1, r2, #0xc0000
	cmp r1, #0xc0000
	moveq r0, #1
	and r1, r2, #0x30000
	cmp r1, #0x30000
	lsl r0, r0, #0x10
	lsr ip, r0, #0x10
	movne r3, #1
	ldr r0, _022D6BB8 @ =0x022D6358
	moveq r3, #0
	add r1, lr, #0x2140
	mov r2, #0
	str ip, [sp]
	bl ov00_022C0068
	cmp r0, #2
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	cmp r0, #3
	beq _022D6A3C
	cmp r0, #8
	bne _022D6A3C
	mov r0, #0xc
	bl ov00_022D5B1C
	ldr r0, _022D6BAC @ =0x02326C4C
	ldr r3, _022D6BBC @ =0x0000091C
	ldr r0, [r0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #1
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6A3C:
	mov r0, #0xb
	bl ov00_022D5B1C
	ldr r0, _022D6BAC @ =0x02326C4C
	ldr r3, _022D6BC0 @ =0x00000925
	ldr r0, [r0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #7
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6A68:
	mov r0, #3
	bl ov00_022D5B1C
	ldr r0, _022D6BAC @ =0x02326C4C
	ldr r3, _022D6BC4 @ =0x0000092D
	ldr r0, [r0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #1
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6A94:
	mov r0, #3
	bl ov00_022D5B1C
	ldr r0, _022D6BAC @ =0x02326C4C
	ldr r3, _022D6BC8 @ =0x00000935
	ldr r1, [r0]
	mov r0, #0
	add r1, r1, #0x2140
	mov r2, #1
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6AC0:
	mov r0, #3
	bl ov00_022D5B1C
	ldr r1, _022D6BAC @ =0x02326C4C
	mov r0, #0
	ldr r1, [r1]
	ldr r3, _022D6BCC @ =0x0000093C
	mov r2, r0
	add r1, r1, #0x2140
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6AEC:
	ldr r0, _022D6BD0 @ =0x022D5D40
	bl ov00_022BFAD4
	cmp r0, #2
	addeq sp, sp, #4
	popeq {r3, r4, pc}
	cmp r0, #3
	beq _022D6B34
	cmp r0, #8
	bne _022D6B34
	mov r0, #0xc
	bl ov00_022D5B1C
	mov r1, #0
	ldr r3, _022D6BD4 @ =0x0000094A
	mov r2, r1
	mov r0, #1
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6B34:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r1, #0
	ldr r3, _022D6BD8 @ =0x00000953
	mov r2, r1
	mov r0, #7
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6B58:
	mov r0, #0xb
	bl ov00_022D5B1C
	ldr r1, _022D6BAC @ =0x02326C4C
	mov r0, #7
	ldr r1, [r1]
	rsb r3, r0, #0x960
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	mov r1, #0
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
_022D6B88:
	mov r0, #0xb
	bl ov00_022D5B1C
	mov r1, #0
	mov r2, r1
	mov r0, #7
	mov r3, #0x960
	bl ov00_022D5A84
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022D6BAC: .4byte 0x02326C4C
_022D6BB0: .4byte 0x000008F5
_022D6BB4: .4byte 0x000008FB
_022D6BB8: .4byte 0x022D6358
_022D6BBC: .4byte 0x0000091C
_022D6BC0: .4byte 0x00000925
_022D6BC4: .4byte 0x0000092D
_022D6BC8: .4byte 0x00000935
_022D6BCC: .4byte 0x0000093C
_022D6BD0: .4byte 0x022D5D40
_022D6BD4: .4byte 0x0000094A
_022D6BD8: .4byte 0x00000953
	arm_func_end ov00_022D68B0

	arm_func_start ov00_022D6BDC
ov00_022D6BDC: @ 0x022D6BDC
	push {r4, lr}
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022D570C
	cmp r0, #0
	bne _022D6C00
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, pc}
_022D6C00:
	add r1, r0, #0x2000
	ldr r0, [r1, #0x270]
	cmp r0, #0
	beq _022D6C24
	ldr r2, [r1, #0x274]
	cmp r2, #0
	ble _022D6C24
	mov r1, #0
	bl FUN_0207C40C
_022D6C24:
	mov r0, r4
	bl FUN_0207B7F8
	pop {r4, pc}
	arm_func_end ov00_022D6BDC

	arm_func_start ov00_022D6C30
ov00_022D6C30: @ 0x022D6C30
	push {r3, r4, r5, lr}
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022D570C
	cmp r0, #0
	mov r5, #0
	bne _022D6C5C
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
_022D6C5C:
	add r0, r0, #0x2000
	ldr r1, [r0, #0x270]
	cmp r1, #0
	beq _022D6C78
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	ldrhi r5, [r1]
_022D6C78:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D6C30

	arm_func_start ov00_022D6C88
ov00_022D6C88: @ 0x022D6C88
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022D570C
	cmp r0, #0
	bne _022D6CB4
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D6CB4:
	add r1, r0, #0x2000
	cmp r5, #0
	ldrb r1, [r1, #0x26a]
	beq _022D6CDC
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	add r0, r0, #0x2000
	mov r1, #1
	b _022D6CF0
_022D6CDC:
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	add r0, r0, #0x2000
	mov r1, #0
_022D6CF0:
	strb r1, [r0, #0x26a]
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D6C88

	arm_func_start ov00_022D6D04
ov00_022D6D04: @ 0x022D6D04
	push {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_0207B7E4
	mov r5, r0
	bl ov00_022D570C
	cmp r0, #0
	bne _022D6D30
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D6D30:
	mov r0, r4
	bl ov00_022D6F50
	movs r4, r0
	mov r0, r5
	bne _022D6D50
	bl FUN_0207B7F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022D6D50:
	bl FUN_0207B7F8
	add r0, r4, #0x10
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D6D04

	arm_func_start ov00_022D6D5C
ov00_022D6D5C: @ 0x022D6D5C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022D570C
	movs r6, r0
	popeq {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x2000
	ldrb r0, [r0, #0x26a]
	cmp r0, #0
	ldrheq r0, [r5, #0x3c]
	cmpeq r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	add r0, r5, #4
	bl ov00_022D6EE4
	movs r7, r0
	bne _022D6DA4
	bl ov00_022D6DE8
	mov r7, r0
_022D6DA4:
	cmp r7, #0
	addeq r0, r6, #0x2000
	ldreq r0, [r0, #0x278]
	cmpeq r0, #1
	bne _022D6DC0
	bl ov00_022D6EB4
	mov r7, r0
_022D6DC0:
	cmp r7, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r7, #0x10
	mov r2, #0xc0
	strh r4, [r7, #2]
	bl FUN_0207C3B4
	mov r0, r7
	bl ov00_022D6FA0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D6D5C

	arm_func_start ov00_022D6DE8
ov00_022D6DE8: @ 0x022D6DE8
	push {r4, lr}
	bl ov00_022D570C
	add r2, r0, #0x2000
	ldr r1, [r2, #0x270]
	mov r0, #0
	cmp r1, #0
	popeq {r4, pc}
	ldr r3, [r2, #0x274]
	cmp r3, #0xc
	popls {r4, pc}
	ldr r2, _022D6EB0 @ =0x4EC4EC4F
	sub r3, r3, #0xc
	umull r2, ip, r3, r2
	lsrs ip, ip, #6
	popeq {r4, pc}
	ldr r2, [r1]
	cmp ip, r2
	popls {r4, pc}
	mov lr, r0
	cmp ip, #0
	bls _022D6E64
	add r4, r1, #0xc
	mov r2, #0xd0
_022D6E44:
	mul r0, lr, r2
	ldrb r3, [r4, r0]
	add r0, r4, r0
	cmp r3, #0
	beq _022D6E64
	add lr, lr, #1
	cmp lr, ip
	blo _022D6E44
_022D6E64:
	cmp lr, ip
	pophs {r4, pc}
	mov r2, #1
	strb r2, [r0]
	ldr r3, [r1]
	mov r2, #0
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r0, [r1, #8]
	ldr r2, [r0, #8]
	cmp r2, #0
	strne r0, [r2, #0xc]
	streq r0, [r1, #4]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	pop {r4, pc}
	.align 2, 0
_022D6EB0: .4byte 0x4EC4EC4F
	arm_func_end ov00_022D6DE8

	arm_func_start ov00_022D6EB4
ov00_022D6EB4: @ 0x022D6EB4
	push {r3, lr}
	bl ov00_022D570C
	add r0, r0, #0x2000
	ldr r1, [r0, #0x270]
	cmp r1, #0
	beq _022D6EDC
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	ldrhi r0, [r1, #4]
	pophi {r3, pc}
_022D6EDC:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022D6EB4

	arm_func_start ov00_022D6EE4
ov00_022D6EE4: @ 0x022D6EE4
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022D570C
	add r0, r0, #0x2000
	mov r4, #0
	cmp r5, #0
	ldr r1, [r0, #0x270]
	moveq r0, r4
	popeq {r3, r4, r5, pc}
	cmp r1, #0
	beq _022D6F48
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	bls _022D6F48
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _022D6F48
_022D6F28:
	mov r1, r5
	add r0, r4, #0x14
	bl ov00_022D7468
	cmp r0, #0
	bne _022D6F48
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _022D6F28
_022D6F48:
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D6EE4

	arm_func_start ov00_022D6F50
ov00_022D6F50: @ 0x022D6F50
	push {r4, lr}
	mov r4, r0
	bl ov00_022D570C
	add r1, r0, #0x2000
	ldr r2, [r1, #0x270]
	mov r0, #0
	cmp r2, #0
	popeq {r4, pc}
	ldr r1, [r1, #0x274]
	cmp r1, #0xc
	popls {r4, pc}
	ldr r0, [r2, #4]
	cmp r0, #0
	popeq {r4, pc}
_022D6F88:
	ldr r1, [r0, #4]
	cmp r1, r4
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	bne _022D6F88
	pop {r4, pc}
	arm_func_end ov00_022D6F50

	arm_func_start ov00_022D6FA0
ov00_022D6FA0: @ 0x022D6FA0
	push {r4, lr}
	mov r4, r0
	bl ov00_022D570C
	add r1, r0, #0x2000
	ldr r0, [r1, #0x270]
	cmp r4, #0
	cmpne r0, #0
	popeq {r4, pc}
	ldr r1, [r1, #0x274]
	cmp r1, #0xc
	popls {r4, pc}
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _022D7018
_022D6FD8:
	cmp r3, r4
	bne _022D700C
	ldr r2, [r3, #8]
	ldr r1, [r3, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0, #4]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r2, #0
	strne r1, [r2, #8]
	streq r1, [r0, #8]
	b _022D7018
_022D700C:
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _022D6FD8
_022D7018:
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	str r4, [r0, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	strne r4, [r1, #0xc]
	streq r4, [r0, #4]
	cmp r3, #0
	popne {r4, pc}
	ldr r1, [r0]
	str r1, [r4, #4]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	pop {r4, pc}
	arm_func_end ov00_022D6FA0

	arm_func_start ov00_022D705C
ov00_022D705C: @ 0x022D705C
	push {r3, lr}
	ldr r1, _022D7094 @ =0x02326C50
	ldrb r0, [r1]
	cmp r0, #0
	popne {r3, pc}
	mov r0, #1
	strb r0, [r1]
	mov r2, #0
	str r2, [r1, #0x24]
	str r2, [r1, #8]
	ldr r0, _022D7098 @ =0x02326C5C
	str r2, [r1, #4]
	bl FUN_0207A030
	pop {r3, pc}
	.align 2, 0
_022D7094: .4byte 0x02326C50
_022D7098: .4byte 0x02326C5C
	arm_func_end ov00_022D705C

	arm_func_start ov00_022D709C
ov00_022D709C: @ 0x022D709C
	push {r3, lr}
	ldr r1, _022D70CC @ =0x02326C50
	mov r2, r0
	ldr ip, [r1, #0x28]
	cmp ip, #0
	popeq {r3, pc}
	ldrh r3, [r2, #6]
	add r0, r2, #0x1e
	add r1, r2, #0x18
	add r2, r2, #0x2c
	blx ip
	pop {r3, pc}
	.align 2, 0
_022D70CC: .4byte 0x02326C50
	arm_func_end ov00_022D709C

	arm_func_start ov00_022D70D0
ov00_022D70D0: @ 0x022D70D0
	push {r4, lr}
	bl ov00_022D570C
	movs r4, r0
	popeq {r4, pc}
	add r0, r4, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #9
	popne {r4, pc}
	ldrb r0, [r0, #0x26b]
	cmp r0, #1
	popeq {r4, pc}
	ldr r0, _022D7138 @ =0x02326C5C
	bl ov00_022D73E0
	cmp r0, #0
	popeq {r4, pc}
	add r1, r4, #0x144
	ldr r0, _022D713C @ =0x022D73CC
	add r1, r1, #0x2000
	add r2, r4, #0xf00
	mov r3, #0
	bl ov00_022C06D8
	cmp r0, #2
	popeq {r4, pc}
	ldr r0, _022D7138 @ =0x02326C5C
	bl ov00_022D7430
	pop {r4, pc}
	.align 2, 0
_022D7138: .4byte 0x02326C5C
_022D713C: .4byte 0x022D73CC
	arm_func_end ov00_022D70D0

	arm_func_start ov00_022D7140
ov00_022D7140: @ 0x022D7140
	push {r3, r4, r5, lr}
	mov r5, #0
	bl ov00_022D570C
	mov r4, r0
	bl FUN_0207B7E4
	cmp r4, #0
	beq _022D7178
	add r1, r4, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #9
	ldrbeq r1, [r1, #0x26b]
	cmpeq r1, #0
	addeq r1, r4, #0x144
	addeq r5, r1, #0x2000
_022D7178:
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7140

	arm_func_start ov00_022D7184
ov00_022D7184: @ 0x022D7184
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r5, r0
	mov r4, r7
	bl ov00_022D570C
	mov r6, r0
	bl FUN_0207B7E4
	cmp r6, #0
	beq _022D71D0
	add r1, r6, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #9
	ldrbeq r1, [r1, #0x26b]
	cmpeq r1, #0
	bne _022D71D0
	add r1, r6, #0x2100
	ldrh r4, [r1, #0x4a]
	add r1, r6, #0x14c
	add r7, r1, #0x2000
_022D71D0:
	bl FUN_0207B7F8
	cmp r5, #0
	strhne r4, [r5]
	mov r0, r7
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D7184

	arm_func_start ov00_022D71E4
ov00_022D71E4: @ 0x022D71E4
	push {r4, lr}
	mov r4, r0
	bl FUN_0207B7E4
	ldr r1, _022D7200 @ =0x02326C50
	str r4, [r1, #0x28]
	bl FUN_0207B7F8
	pop {r4, pc}
	.align 2, 0
_022D7200: .4byte 0x02326C50
	arm_func_end ov00_022D71E4

	arm_func_start ov00_022D7204
ov00_022D7204: @ 0x022D7204
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r6, r3
	bl FUN_0207B7E4
	mov r5, r0
	bl ov00_022D570C
	cmp r0, #0
	bne _022D723C
	mov r0, r5
	bl FUN_0207B7F8
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D723C:
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A048
	bl ov00_022D570C
	movs r7, r0
	bne _022D7268
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A0CC
	mov r0, r5
	bl FUN_0207B7F8
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D7268:
	add r0, r7, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #9
	bne _022D7284
	ldrb r0, [r0, #0x26b]
	cmp r0, #1
	bne _022D729C
_022D7284:
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A0CC
	mov r0, r5
	bl FUN_0207B7F8
	mvn r0, #3
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D729C:
	mov r0, sb
	mov r2, r8
	add r1, r7, #0xf00
	bl FUN_0207C4C8
	ldr r2, [sp, #0x20]
	cmp r2, #0
	ble _022D72C8
	add r1, r7, #0xf00
	mov r0, r6
	add r1, r1, r8
	bl FUN_0207C4C8
_022D72C8:
	ldr r1, [sp, #0x20]
	ldr r0, _022D7380 @ =ov00_022D738C
	add r6, r8, r1
	lsl r3, r6, #0x10
	mov r1, r4
	add r2, r7, #0xf00
	lsr r3, r3, #0x10
	bl ov00_022C06D8
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _022D7318
_022D72F4: @ jump table
	b _022D7318 @ case 0
	b _022D7318 @ case 1
	b _022D7330 @ case 2
	b _022D7318 @ case 3
	b _022D7318 @ case 4
	b _022D7318 @ case 5
	b _022D7318 @ case 6
	b _022D7318 @ case 7
	b _022D7318 @ case 8
_022D7318:
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A0CC
	mov r0, r5
	bl FUN_0207B7F8
	mvn r0, #4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D7330:
	ldr r0, _022D7384 @ =0x02326C54
	bl FUN_02079888
	ldr r0, _022D7388 @ =0x02326C50
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _022D7364
	cmp r0, #1
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A0CC
	mov r0, r5
	bl FUN_0207B7F8
	mvn r0, #4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022D7364:
	ldr r0, _022D737C @ =0x02326C5C
	bl FUN_0207A0CC
	mov r0, r5
	bl FUN_0207B7F8
	mov r0, r6
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022D737C: .4byte 0x02326C5C
_022D7380: .4byte ov00_022D738C
_022D7384: .4byte 0x02326C54
_022D7388: .4byte 0x02326C50
	arm_func_end ov00_022D7204

	arm_func_start ov00_022D738C
ov00_022D738C: @ 0x022D738C
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0x12
	popne {r3, pc}
	ldrh r2, [r0, #2]
	ldr r1, _022D73C4 @ =0x02326C50
	str r2, [r1, #0x24]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022D73B8
	bl ov00_022D5BB4
_022D73B8:
	ldr r0, _022D73C8 @ =0x02326C54
	bl FUN_020798D8
	pop {r3, pc}
	.align 2, 0
_022D73C4: .4byte 0x02326C50
_022D73C8: .4byte 0x02326C54
	arm_func_end ov00_022D738C
_022D73CC:
	.byte 0x04, 0xC0, 0x9F, 0xE5
	.byte 0x04, 0x00, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x30, 0x74, 0x2D, 0x02, 0x5C, 0x6C, 0x32, 0x02

	arm_func_start ov00_022D73E0
ov00_022D73E0: @ 0x022D73E0
	ldr r2, [r0, #8]
	cmp r2, #0
	bne _022D7408
	ldr r1, _022D742C @ =0x01FF95E8
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
_022D7408:
	ldr r1, _022D742C @ =0x01FF95E8
	cmp r2, r1
	movne r0, #0
	bxne lr
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
	.align 2, 0
_022D742C: .4byte 0x01FF95E8
	arm_func_end ov00_022D73E0

	arm_func_start ov00_022D7430
ov00_022D7430: @ 0x022D7430
	push {r3, lr}
	ldr r2, [r0, #8]
	ldr r1, _022D7464 @ =0x01FF95E8
	cmp r2, r1
	popne {r3, pc}
	ldr r1, [r0, #0xc]
	subs r1, r1, #1
	str r1, [r0, #0xc]
	popne {r3, pc}
	mov r1, #0
	str r1, [r0, #8]
	bl FUN_020798D8
	pop {r3, pc}
	.align 2, 0
_022D7464: .4byte 0x01FF95E8
	arm_func_end ov00_022D7430

	arm_func_start ov00_022D7468
ov00_022D7468: @ 0x022D7468
	mov ip, #0
_022D746C:
	ldrb r3, [r0, ip]
	ldrb r2, [r1, ip]
	cmp r3, r2
	movne r0, #0
	bxne lr
	add ip, ip, #1
	cmp ip, #6
	blt _022D746C
	mov r0, #1
	bx lr
	arm_func_end ov00_022D7468

	arm_func_start ov00_022D7494
ov00_022D7494: @ 0x022D7494
	push {r3, r4, r5, lr}
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022D570C
	cmp r0, #0
	mov r5, #0
	beq _022D74C8
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _022D74C8
	bl ov00_022D7558
	mov r5, r0
_022D74C8:
	mov r0, r4
	bl FUN_0207B7F8
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7494

	arm_func_start ov00_022D74D8
ov00_022D74D8: @ 0x022D74D8
	push {r3, lr}
	ldr r1, _022D7550 @ =0x02326C7C
	mov r0, #0
	ldrb r1, [r1]
	cmp r1, #0x10
	bls _022D751C
	ldr r3, _022D7554 @ =0x02326C80
	mov r2, r0
_022D74F8:
	ldrb r1, [r3], #1
	add r2, r2, #1
	cmp r2, #0x10
	add r0, r0, r1
	blt _022D74F8
	asr r1, r0, #3
	add r0, r0, r1, lsr #28
	asr r0, r0, #4
	b _022D7548
_022D751C:
	cmp r1, #0
	beq _022D7548
	mov ip, r0
	ble _022D7544
	ldr r3, _022D7554 @ =0x02326C80
_022D7530:
	ldrb r2, [r3], #1
	add ip, ip, #1
	cmp ip, r1
	add r0, r0, r2
	blt _022D7530
_022D7544:
	bl FUN_0208FEA4
_022D7548:
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022D7550: .4byte 0x02326C7C
_022D7554: .4byte 0x02326C80
	arm_func_end ov00_022D74D8

	arm_func_start ov00_022D7558
ov00_022D7558: @ 0x022D7558
	push {r3, lr}
	bl ov00_022D74D8
	mov r1, #0
	cmp r0, #0x1c
	movhs r1, #3
	bhs _022D7584
	cmp r0, #0x16
	movhs r1, #2
	bhs _022D7584
	cmp r0, #0x10
	movhs r1, #1
_022D7584:
	mov r0, r1
	pop {r3, pc}
	arm_func_end ov00_022D7558

	arm_func_start ov00_022D758C
ov00_022D758C: @ 0x022D758C
	push {r3, lr}
	ldr r2, _022D75E4 @ =0x02326C7C
	tst r0, #2
	ldrb ip, [r2]
	asr r0, r0, #2
	addeq r0, r0, #0x19
	lsr r1, ip, #0x1f
	and lr, r0, #0xff
	rsb r0, r1, ip, lsl #28
	ldr r3, _022D75E8 @ =0x02326C80
	add r0, r1, r0, ror #28
	strb lr, [r3, r0]
	add r0, ip, #1
	cmp ip, #0x10
	strblo r0, [r2]
	poplo {r3, pc}
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	add r0, r0, #0x10
	strb r0, [r2]
	pop {r3, pc}
	.align 2, 0
_022D75E4: .4byte 0x02326C7C
_022D75E8: .4byte 0x02326C80
	arm_func_end ov00_022D758C

	arm_func_start ov00_022D75EC
ov00_022D75EC: @ 0x022D75EC
	push {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x24
	blx r2
	mov r1, r0
	ldr r3, _022D778C @ =0x02326C90
	mov r0, #0
	mov r2, #0x24
	str r1, [r3, #0xc]
	bl FUN_0207C314
	ldr r0, _022D778C @ =0x02326C90
	ldr r1, [r4]
	ldr r3, [r0, #0xc]
	mov r2, #1
	str r1, [r3]
	ldr r0, [r4, #4]
	ldr r1, _022D7790 @ =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl ov00_022D7ADC
	ldr r2, _022D778C @ =0x02326C90
	mov r1, #0x2300
	str r0, [r2, #0x10]
	mov r0, #2
	bl ov00_022D7ADC
	ldr r2, _022D778C @ =0x02326C90
	mov r1, #0x58
	str r0, [r2]
	mov r0, #4
	bl ov00_022D7ADC
	ldr r2, _022D778C @ =0x02326C90
	mov r1, #0xc
	str r0, [r2, #4]
	mov r0, #8
	bl ov00_022D7ADC
	ldr r1, _022D778C @ =0x02326C90
	ldr r2, _022D7790 @ =0x00000D18
	str r0, [r1, #8]
	ldr r1, [r1, #0x10]
	mov r0, #0
	bl FUN_0207C314
	mov r0, #0
	ldr r1, _022D778C @ =0x02326C90
	mov r2, #0x2300
	ldr r1, [r1]
	bl FUN_0207C314
	mov r0, #0
	ldr r1, _022D778C @ =0x02326C90
	mov r2, #0x58
	ldr r1, [r1, #4]
	bl FUN_0207C314
	mov r0, #0
	ldr r1, _022D778C @ =0x02326C90
	mov r2, #0xc
	ldr r1, [r1, #8]
	bl FUN_0207C314
	ldr r1, _022D778C @ =0x02326C90
	ldrb r2, [r4, #8]
	ldr r0, [r1, #0x10]
	strb r2, [r0, #0xd0a]
	ldrb r3, [r0, #0xd0b]
	ldrb r2, [r4, #9]
	bic r3, r3, #3
	and r2, r2, #3
	orr r2, r3, r2
	strb r2, [r0, #0xd0b]
	ldr r3, [r1, #8]
	ldr r2, [r4]
	mov r1, #0
	str r2, [r3]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	and r2, r2, #0xff
	bic r2, r2, #0x30
	lsl r1, r1, #0x1e
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl ov00_022ED43C
	ldr r0, _022D778C @ =0x02326C90
	mov r1, #0x2300
	ldr r0, [r0]
	bl ov00_022D4A70
	cmp r0, #1
	beq _022D7778
	cmp r0, #4
	ble _022D7784
_022D7778:
	bl ov00_022D7B80
	mov r0, #0
	pop {r4, pc}
_022D7784:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_022D778C: .4byte 0x02326C90
_022D7790: .4byte 0x00000D18
	arm_func_end ov00_022D75EC

	arm_func_start ov00_022D7794
ov00_022D7794: @ 0x022D7794
	push {r3, r4, r5, lr}
	bl ov00_022D7D5C
	mov r5, r0
	cmp r5, #1
	bne _022D77B4
	bl ov00_022D9A80
	mov r5, r0
	b _022D7828
_022D77B4:
	cmp r5, #7
	bhs _022D77DC
	bl FUN_0207B7E4
	mov r4, r0
	bl ov00_022D92B0
	mov r5, r0
	bl ov00_022D7CFC
	mov r0, r4
	bl FUN_0207B7F8
	b _022D7828
_022D77DC:
	cmp r5, #9
	bhs _022D77F0
	bl ov00_022D8548
	mov r5, r0
	b _022D7828
_022D77F0:
	cmp r5, #0xa
	bhs _022D7804
	bl ov00_022D91D4
	mov r5, r0
	b _022D7828
_022D7804:
	cmp r5, #0x10
	bhs _022D7818
	bl ov00_022D9B08
	mov r5, r0
	b _022D7828
_022D7818:
	cmp r5, #0x11
	bne _022D7828
	bl ov00_022D8BE0
	mov r5, r0
_022D7828:
	mov r0, r5
	bl ov00_022D7CFC
	cmp r5, #0x10
	bne _022D784C
	bl ov00_022D7EA0
	mov r4, r0
	bl ov00_022D7E68
	mov r0, r4
	pop {r3, r4, r5, pc}
_022D784C:
	cmp r5, #0x12
	movne r0, #0
	popne {r3, r4, r5, pc}
	bl ov00_022D7E68
	mvn r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7794

	arm_func_start ov00_022D7864
ov00_022D7864: @ 0x022D7864
	push {r3, lr}
	bl ov00_022D7D5C
	cmp r0, #1
	movls r0, #0
	popls {r3, pc}
	cmp r0, #7
	movlo r0, #1
	poplo {r3, pc}
	cmp r0, #9
	moveq r0, #4
	popeq {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	poplo {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	popeq {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	poplo {r3, pc}
	moveq r0, #5
	popeq {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	popeq {r3, pc}
	bl ov00_022D8C04
	pop {r3, pc}
	arm_func_end ov00_022D7864

	arm_func_start ov00_022D78D0
ov00_022D78D0: @ 0x022D78D0
	push {r4, lr}
	mov r4, #0xff
	bl ov00_022D7D5C
	cmp r0, #0xa
	blo _022D78F4
	cmp r0, #0x10
	ldrls r0, _022D78FC @ =0x02326C90
	ldrls r0, [r0, #0xc]
	ldrbls r4, [r0, #0x17]
_022D78F4:
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022D78FC: .4byte 0x02326C90
	arm_func_end ov00_022D78D0

	arm_func_start ov00_022D7900
ov00_022D7900: @ 0x022D7900
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov00_022D7D5C
	cmp r0, #0xa
	blo _022D794C
	cmp r0, #0x10
	bhi _022D794C
	ldr r0, _022D7954 @ =0x02326C90
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _022D794C
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl FUN_0207C4C8
	mov r4, #1
_022D794C:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D7954: .4byte 0x02326C90
	arm_func_end ov00_022D7900

	arm_func_start ov00_022D7958
ov00_022D7958: @ 0x022D7958
	push {r3, lr}
	bl ov00_022D7D5C
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _022D797C
	bl ov00_022D7B80
	mov r0, #1
	pop {r3, pc}
_022D797C:
	add r0, sp, #0
	bl ov00_022D8A80
	ldrb r0, [sp]
	bl ov00_022D7CFC
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022D7958

	arm_func_start ov00_022D7994
ov00_022D7994: @ 0x022D7994
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r3
	mov r0, #1
	mov r7, r1
	mov r6, r2
	bl ov00_022D7CA4
	mov r4, r0
	cmp r5, #0
	mov r2, #0xa
	beq _022D79D0
	mov r0, r5
	add r1, r4, #0x18
	bl FUN_0207C4C8
	b _022D79DC
_022D79D0:
	add r0, r4, #0x18
	mov r1, #0
	bl FUN_0207C40C
_022D79DC:
	ldr r3, [sp, #0x18]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	strb r3, [r4, #0x22]
	bl ov00_022D79F8
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D7994

	arm_func_start ov00_022D79F8
ov00_022D79F8: @ 0x022D79F8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mov r6, r1
	mov r5, r2
	bl ov00_022D7CA4
	mov r4, r0
	ldrb r3, [r4, #0xd0c]
	mov r1, #0
	mov r2, #0xf0
	bic r3, r3, #0xf
	orr r3, r3, #1
	strb r3, [r4, #0xd0c]
	bl FUN_0207C40C
	mov r2, #0
_022D7A34:
	ldrb r1, [r7, r2]
	cmp r1, #0
	beq _022D7A54
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x40]
	cmp r2, #0x20
	blt _022D7A34
_022D7A54:
	cmp r6, #0
	cmpne r5, #0
	bne _022D7A70
	ldrb r0, [r4, #0xe6]
	bic r0, r0, #3
	strb r0, [r4, #0xe6]
	pop {r3, r4, r5, r6, r7, pc}
_022D7A70:
	cmp r5, #1
	moveq r2, #5
	beq _022D7A88
	cmp r5, #2
	moveq r2, #0xd
	movne r2, #0x10
_022D7A88:
	mov r0, r6
	add r1, r4, #0x80
	bl FUN_0207C4C8
	ldrb r1, [r4, #0xe6]
	and r0, r5, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D79F8

	arm_func_start ov00_022D7AB0
ov00_022D7AB0: @ 0x022D7AB0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl ov00_022D7CA4
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl FUN_0207C330
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7AB0

	arm_func_start ov00_022D7ADC
ov00_022D7ADC: @ 0x022D7ADC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl ov00_022D7CA4
	ldrb r1, [r0, #8]
	tst r1, r5
	movne r0, #0
	popne {r3, r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	blx r2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7ADC

	arm_func_start ov00_022D7B1C
ov00_022D7B1C: @ 0x022D7B1C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl ov00_022D7CA4
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	ldrb r2, [r0, #8]
	tst r2, r6
	popeq {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	cmp r6, #1
	ldreq r0, _022D7B7C @ =0x02326C90
	moveq r1, #0
	streq r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D7B7C: .4byte 0x02326C90
	arm_func_end ov00_022D7B1C

	arm_func_start ov00_022D7B80
ov00_022D7B80: @ 0x022D7B80
	push {r4, lr}
	mov r0, #1
	bl ov00_022D7CA4
	movs r4, r0
	popeq {r4, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _022D7BC8
	mov r0, #0x10
	bl ov00_022D7CA4
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _022D7C9C @ =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
_022D7BC8:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _022D7BFC
	mov r0, #8
	bl ov00_022D7CA4
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_022D7BFC:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _022D7C30
	mov r0, #4
	bl ov00_022D7CA4
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_022D7C30:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _022D7C64
	mov r0, #2
	bl ov00_022D7CA4
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_022D7C64:
	ldrb r0, [r4, #8]
	tst r0, #1
	popeq {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x24
	blx r3
	ldr r0, _022D7CA0 @ =0x02326C90
	mov r1, #0
	str r1, [r0, #0xc]
	pop {r4, pc}
	.align 2, 0
_022D7C9C: .4byte 0x00000D18
_022D7CA0: .4byte 0x02326C90
	arm_func_end ov00_022D7B80

	arm_func_start ov00_022D7CA4
ov00_022D7CA4: @ 0x022D7CA4
	tst r0, #1
	ldrne r0, _022D7CF8 @ =0x02326C90
	ldrne r0, [r0, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, _022D7CF8 @ =0x02326C90
	ldrne r0, [r0]
	bxne lr
	tst r0, #4
	ldrne r0, _022D7CF8 @ =0x02326C90
	ldrne r0, [r0, #4]
	bxne lr
	tst r0, #8
	ldrne r0, _022D7CF8 @ =0x02326C90
	ldrne r0, [r0, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, _022D7CF8 @ =0x02326C90
	ldrne r0, [r0, #0x10]
	moveq r0, #0
	bx lr
	.align 2, 0
_022D7CF8: .4byte 0x02326C90
	arm_func_end ov00_022D7CA4

	arm_func_start ov00_022D7CFC
ov00_022D7CFC: @ 0x022D7CFC
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov00_022D7CA4
	mov r5, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	pophs {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strbhi r6, [r5, #0x16]
	cmphi r6, #7
	popls {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl ov00_022D7E58
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D7CFC

	arm_func_start ov00_022D7D5C
ov00_022D7D5C: @ 0x022D7D5C
	ldr r0, _022D7D74 @ =0x02326C90
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrbne r0, [r0, #9]
	moveq r0, #0
	bx lr
	.align 2, 0
_022D7D74: .4byte 0x02326C90
	arm_func_end ov00_022D7D5C

	arm_func_start ov00_022D7D78
ov00_022D7D78: @ 0x022D7D78
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl ov00_022D7CA4
	mov r4, r0
	str r5, [r4, #0xc]
	bl ov00_022D7D5C
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D7D78

	arm_func_start ov00_022D7D9C
ov00_022D7D9C: @ 0x022D7D9C
	ldr r0, _022D7DAC @ =0x02326C90
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_022D7DAC: .4byte 0x02326C90
	arm_func_end ov00_022D7D9C

	arm_func_start ov00_022D7DB0
ov00_022D7DB0: @ 0x022D7DB0
	push {r4, lr}
	ldr r1, _022D7E54 @ =0x02326C90
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _022D7DD0
	bl ov00_022D7E58
	mov r2, r0
_022D7DD0:
	ldr r1, _022D7E54 @ =0x02326C90
	mov r0, #0
	ldr r1, [r1, #0xc]
	strb r2, [r1, #0x17]
	bl ov00_022D7184
	movs r4, r0
	beq _022D7E08
	mov r1, #0x20
	bl FUN_0207A2A4
	ldr r1, _022D7E54 @ =0x02326C90
	mov r0, r4
	ldr r1, [r1, #0xc]
	add r1, r1, #0x18
	bl ov00_022DA024
_022D7E08:
	ldr r0, _022D7E54 @ =0x02326C90
	mov r1, #0
	ldr r3, [r0, #0xc]
	mov r2, r3
_022D7E18:
	ldrsb r0, [r2, #0x18]
	cmp r0, #0x20
	blt _022D7E2C
	cmp r0, #0x7e
	ble _022D7E40
_022D7E2C:
	add r0, r3, #0x18
	mov r1, #0
	mov r2, #0xa
	bl FUN_0207C40C
	pop {r4, pc}
_022D7E40:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #1
	blt _022D7E18
	pop {r4, pc}
	.align 2, 0
_022D7E54: .4byte 0x02326C90
	arm_func_end ov00_022D7DB0

	arm_func_start ov00_022D7E58
ov00_022D7E58: @ 0x022D7E58
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end ov00_022D7E58

	arm_func_start ov00_022D7E68
ov00_022D7E68: @ 0x022D7E68
	push {r3, lr}
	ldr r1, _022D7E98 @ =0x02326C90
	mov r0, #8
	ldr r1, [r1, #8]
	mov r2, #0xc
	bl ov00_022D7B1C
	ldr r0, _022D7E98 @ =0x02326C90
	ldr r2, _022D7E9C @ =0x00000D18
	ldr r1, [r0, #0x10]
	mov r0, #0x10
	bl ov00_022D7B1C
	pop {r3, pc}
	.align 2, 0
_022D7E98: .4byte 0x02326C90
_022D7E9C: .4byte 0x00000D18
	arm_func_end ov00_022D7E68

	arm_func_start ov00_022D7EA0
ov00_022D7EA0: @ 0x022D7EA0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _022D7F3C @ =0x02326C90
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	pophs {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb sb, [r8, #0xd12]
	mov r6, #0
	cmp sb, #0
	bls _022D7F34
	mov sl, r1
_022D7EE4:
	cmp r6, r7
	beq _022D7F24
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _022D7F24
	mul r1, r6, sl
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl FUN_02089940
	cmp r0, #0
	moveq r0, #2
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
_022D7F24:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, sb
	blo _022D7EE4
_022D7F34:
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022D7F3C: .4byte 0x02326C90
	arm_func_end ov00_022D7EA0

	arm_func_start ov00_022D7F40
ov00_022D7F40: @ 0x022D7F40
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r4, #0
	bl ov00_022D7CA4
	mov r6, r0
	mov r0, #1
	bl ov00_022D7CA4
	mov r1, #1
	strb r1, [r0, #0xb]
	bl ov00_022D7D5C
	cmp r0, #3
	beq _022D7F88
	cmp r0, #4
	beq _022D7FF0
	cmp r0, #5
	beq _022D803C
	pop {r3, r4, r5, r6, r7, pc}
_022D7F88:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r6, #0xd11]
	cmp r1, #0
	ldrbne r0, [r7, #0xc]
	cmpne r0, #0
	bne _022D7FAC
	ldrh r0, [r7, #0x36]
	bl ov00_022D9374
	b _022D8084
_022D7FAC:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _022D7FD8
	ldrh r0, [r7, #0x36]
	bl ov00_022D9374
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov00_022D8140
	mov r4, r0
	b _022D8084
_022D7FD8:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov00_022D8140
	mov r4, r0
	b _022D8084
_022D7FF0:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r5, r2, #0xff
	bl ov00_022D81BC
	movs r4, r0
	bmi _022D8084
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _022D8084
_022D803C:
	ldrb r1, [r6, #0xd0f]
	add r2, r6, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r6, #0xd11]
	bl ov00_022D8140
	movs r4, r0
	bmi _022D8084
	ldrb r1, [r6, #0xd0f]
	mov r0, #0x24
	add r2, r6, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_022D8084:
	cmp r4, #0
	poplt {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl ov00_022D824C
	mov r1, r6
	bl ov00_022D83CC
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D7F40

	arm_func_start ov00_022D80AC
ov00_022D80AC: @ 0x022D80AC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	lsl r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmpne r0, #4
	bne _022D80FC
	ldrh r0, [r5, #0x2c]
	asr r0, r0, #4
	and r0, r0, #1
	cmp r0, #1
	bne _022D80FC
	add r0, r5, #0xc
	bl ov00_022DA070
	cmp r0, #1
	moveq r0, #6
	popeq {r3, r4, r5, pc}
_022D80FC:
	ldrb r0, [r4, #0xd0c]
	lsl r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmpne r0, #5
	bne _022D8138
	ldrh r0, [r5, #0x2c]
	asr r0, r0, #4
	and r0, r0, #1
	cmp r0, #1
	bne _022D8138
	add r0, r5, #0xc
	bl ov00_022D9FC4
	cmp r0, #1
	moveq r0, #7
	popeq {r3, r4, r5, pc}
_022D8138:
	mvn r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D80AC

	arm_func_start ov00_022D8140
ov00_022D8140: @ 0x022D8140
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _022D8168
	bl ov00_022D80AC
	cmp r0, #0
	popgt {r3, r4, r5, r6, r7, r8, sb, pc}
_022D8168:
	cmp r5, #0
	mov r8, #0
	ble _022D81B4
	ldrh sb, [r6, #0xa]
	and r7, sb, #0xff
_022D817C:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _022D81A4
	mov r2, sb
	add r0, r6, #0xc
	add r1, r4, #4
	bl FUN_02089940
	cmp r0, #0
	ldrbeq r0, [r4, #1]
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
_022D81A4:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _022D817C
_022D81B4:
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022D8140

	arm_func_start ov00_022D81BC
ov00_022D81BC: @ 0x022D81BC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldrh r2, [sl, #0xa]
	mov sb, r1
	cmp r2, #0x20
	bne _022D81E0
	bl ov00_022D80AC
	cmp r0, #0
	popgt {r4, r5, r6, r7, r8, sb, sl, pc}
_022D81E0:
	ldrb r8, [sb, #0xd12]
	mov r4, #0
	cmp r8, #0
	ble _022D8244
	ldrh r7, [sl, #0xa]
	add r0, sb, #0x7c
	mov r5, sb
	add r6, r0, #0x400
_022D8200:
	add r0, r5, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r7, r0
	bne _022D8230
	mov r1, r6
	mov r2, r7
	add r0, sl, #0xc
	bl FUN_02089940
	cmp r0, #0
	addeq r0, sb, r4, lsl #2
	ldrbeq r0, [r0, #0x445]
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
_022D8230:
	add r4, r4, #1
	cmp r4, r8
	add r5, r5, #0xc0
	add r6, r6, #0xc0
	blt _022D8200
_022D8244:
	mvn r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov00_022D81BC

	arm_func_start ov00_022D824C
ov00_022D824C: @ 0x022D824C
	push {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r5, [r6, #0xd12]
	mvn r4, #0
	mov r3, #0
	cmp r5, #0
	ble _022D82D0
	ldrb lr, [r1, #4]
	add ip, r6, #0x74
	add ip, ip, #0x400
_022D8274:
	ldrb r7, [ip]
	cmp lr, r7
	ldrbeq r8, [r1, #5]
	ldrbeq r7, [ip, #1]
	cmpeq r8, r7
	ldrbeq r8, [r1, #6]
	ldrbeq r7, [ip, #2]
	cmpeq r8, r7
	ldrbeq r8, [r1, #7]
	ldrbeq r7, [ip, #3]
	cmpeq r8, r7
	ldrbeq r8, [r1, #8]
	ldrbeq r7, [ip, #4]
	cmpeq r8, r7
	ldrbeq r8, [r1, #9]
	ldrbeq r7, [ip, #5]
	cmpeq r8, r7
	moveq r4, r3
	beq _022D82D0
	add r3, r3, #1
	cmp r3, r5
	add ip, ip, #0xc0
	blt _022D8274
_022D82D0:
	mvn r3, #0
	cmp r4, r3
	bne _022D8300
	mov r3, r6
	and r0, r0, #0xff
	bl ov00_022D8314
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strblo r0, [r6, #0xd12]
	b _022D830C
_022D8300:
	mov r0, r4
	mov r3, r6
	bl ov00_022D8360
_022D830C:
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022D824C

	arm_func_start ov00_022D8314
ov00_022D8314: @ 0x022D8314
	push {r3, lr}
	add ip, r3, #0x6c
	strb r0, [ip, #0x401]
	ldrh r0, [r1, #2]
	and r2, r2, #0x7f
	tst r0, #2
	asr r0, r0, #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	strb r0, [ip, #0x402]
	ldrb lr, [ip, #0x403]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	add r1, r3, #0xbf0
	mov r2, #0xc0
	strb lr, [ip, #0x403]
	bl FUN_0207C330
	pop {r3, pc}
	arm_func_end ov00_022D8314

	arm_func_start ov00_022D8360
ov00_022D8360: @ 0x022D8360
	push {r3, r4, r5, lr}
	ldrh r4, [r1, #2]
	add ip, r3, #0x44
	mov lr, #0xc0
	add r5, ip, #0x400
	mul ip, r0, lr
	tst r4, #2
	add r0, r5, r0, lsl #2
	asr r4, r4, #2
	addeq r4, r4, #0x19
	and r4, r4, #0xff
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	add r3, r3, #0x470
	cmp r4, lr
	bls _022D83B8
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_022D83B8:
	mov r0, r1
	add r1, r3, ip
	mov r2, #0xc0
	bl FUN_0207C330
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D8360

	arm_func_start ov00_022D83CC
ov00_022D83CC: @ 0x022D83CC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov r4, r0
	add r0, r1, #0x44
	add r7, r0, #0x400
	add r8, r1, #0x470
	subs r6, r4, #1
	bmi _022D8494
	mov r0, #0xc0
	mla sl, r6, r0, r8
	add sb, r7, r6, lsl #2
	add fp, sp, #0
_022D83FC:
	add r0, r7, r4, lsl #2
	ldrb r1, [r0, #2]
	add r0, r7, r6, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _022D8494
	mov r0, sb
	mov r1, fp
	mov r2, #4
	bl FUN_0207C330
	add r5, r7, r4, lsl #2
	mov r0, r5
	mov r1, sb
	mov r2, #4
	bl FUN_0207C330
	mov r1, r5
	mov r0, fp
	mov r2, #4
	bl FUN_0207C330
	mov r0, sl
	add r1, sp, #4
	mov r2, #0xc0
	bl FUN_0207C330
	mov r0, #0xc0
	mul r5, r4, r0
	add r0, r8, r5
	mov r1, sl
	mov r2, #0xc0
	bl FUN_0207C330
	add r1, r8, r5
	add r0, sp, #4
	mov r2, #0xc0
	bl FUN_0207C330
	mov r4, r6
	sub sb, sb, #4
	sub sl, sl, #0xc0
	subs r6, r6, #1
	bpl _022D83FC
_022D8494:
	add r1, r7, #0x28
	mov r0, #0
	mov r2, #4
	bl FUN_0207C314
	add r1, r8, #0x780
	mov r0, #0
	mov r2, #0xc0
	bl FUN_0207C314
	add sp, sp, #0xc4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022D83CC

	arm_func_start ov00_022D84BC
ov00_022D84BC: @ 0x022D84BC
	push {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	ldrsh r1, [r4]
	cmp r1, #5
	bne _022D8534
	ldrsh r1, [r4, #2]
	cmp r1, #0
	popeq {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _022D8504
	cmp r1, #0xf
	beq _022D8510
	cmp r1, #0x11
	beq _022D851C
	b _022D8528
_022D8504:
	mov r1, #1
	strb r1, [r0, #0xd14]
	pop {r4, pc}
_022D8510:
	mov r1, #2
	strb r1, [r0, #0xd14]
	pop {r4, pc}
_022D851C:
	mov r1, #3
	strb r1, [r0, #0xd14]
	pop {r4, pc}
_022D8528:
	mov r1, #4
	strb r1, [r0, #0xd14]
	pop {r4, pc}
_022D8534:
	cmp r1, #7
	popne {r4, pc}
	ldr r0, [r4, #4]
	bl ov00_022D7F40
	pop {r4, pc}
	arm_func_end ov00_022D84BC

	arm_func_start ov00_022D8548
ov00_022D8548: @ 0x022D8548
	push {r4, lr}
	bl ov00_022D7D5C
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	cmp r4, #7
	beq _022D8570
	cmp r4, #8
	beq _022D857C
	b _022D8584
_022D8570:
	bl ov00_022D858C
	mov r4, r0
	b _022D8584
_022D857C:
	bl ov00_022D8684
	mov r4, r0
_022D8584:
	mov r0, r4
	pop {r4, pc}
	arm_func_end ov00_022D8548

	arm_func_start ov00_022D858C
ov00_022D858C: @ 0x022D858C
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl ov00_022D87C0
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl FUN_0207C40C
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl ov00_022D8994
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _022D8640
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	asr r0, r0, #4
	tst r0, #1
	bne _022D8614
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, pc}
_022D8614:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldrbeq r0, [r4, #0x15]
	cmpeq r0, #0
	bne _022D8670
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, pc}
_022D8640:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	asr r0, r0, #4
	and r0, r0, #1
	cmp r0, #1
	bne _022D8670
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, pc}
_022D8670:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D858C

	arm_func_start ov00_022D8684
ov00_022D8684: @ 0x022D8684
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl ov00_022D5640
	ldrb r2, [r7, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r5, r7, #0x470
	smulbb r4, r2, r1
	bne _022D8794
	mov r0, r7
	bl ov00_022D895C
	ldrb r1, [r7, #0xd15]
	mov r6, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r7, #0xd15]
	cmp r1, #3
	bls _022D86EC
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, r6, r7, pc}
_022D86EC:
	cmp r1, #1
	beq _022D8770
	ldrb r0, [r7, #0xd14]
	cmp r0, #1
	bne _022D8710
	ldrb r0, [r7, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r7, #0xd0b]
	b _022D8770
_022D8710:
	cmp r0, #2
	bne _022D8738
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, r6, r7, pc}
_022D8738:
	cmp r0, #3
	bne _022D8760
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r3, r4, r5, r6, r7, pc}
_022D8760:
	cmp r1, #3
	ldrbeq r0, [r7, #0xd0b]
	biceq r0, r0, #0xc
	strbeq r0, [r7, #0xd0b]
_022D8770:
	mov r0, r7
	bl ov00_022D8978
	mov r2, r0
	add r1, r7, #0xb8
	add r0, r5, r4
	add r1, r1, #0xc00
	orr r2, r6, r2
	bl ov00_022D5110
	b _022D87B8
_022D8794:
	cmp r0, #9
	bne _022D87B8
	mov r0, #0
	strb r0, [r7, #0xd15]
	bl FUN_0207AE44
	str r0, [r7, #0xcb0]
	str r1, [r7, #0xcb4]
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_022D87B8:
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022D8684

	arm_func_start ov00_022D87C0
ov00_022D87C0: @ 0x022D87C0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla r4, r2, r0, r3
	lsl r0, r1, #0x18
	lsrs r0, r0, #0x1e
	mov r0, #0
	str r0, [sp]
	bne _022D88DC
	ldrh r0, [r4, #0xa]
	ldr r6, [sp]
	cmp r0, #0x20
	bne _022D8820
	mov r0, r4
	bl ov00_022D80AC
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r6, r6, #1
	strle r0, [sp]
	b _022D8844
_022D8820:
	cmp r0, #8
	bne _022D8844
	mov r0, r4
	bl ov00_022D8E60
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r6, r6, #1
	streq r0, [sp]
_022D8844:
	ldrb r0, [sl, #0xd10]
	mov r5, #0
	cmp r0, #0
	ble _022D8950
	mov r7, sl
	add r8, sl, #0x304
	add sb, sl, #0x300
	add fp, sl, #0x10c
_022D8864:
	ldrh r2, [r4, #0xa]
	ldrb r0, [r7, #0x303]
	cmp r2, r0
	bne _022D88BC
	mov r1, r8
	add r0, r4, #0xc
	bl FUN_02089940
	cmp r0, #0
	bne _022D88BC
	cmp r6, #0
	ldrbeq r0, [r7, #0x301]
	streq r0, [sp]
	beq _022D88B8
	ldrb r0, [sb]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [sb]
	ldrb r0, [fp, #0xc00]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp, #0xc00]
_022D88B8:
	add r6, r6, #1
_022D88BC:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r7, r7, #0x24
	cmp r5, r0
	add r8, r8, #0x24
	add sb, sb, #0x24
	blt _022D8864
	b _022D8950
_022D88DC:
	ldrb r0, [sl, #0xd10]
	ldr r5, [sp]
	mov r4, r5
	cmp r0, #0
	ble _022D8940
	mov r3, sl
	add r2, sl, #0x300
_022D88F8:
	ldrb r0, [r2]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _022D8928
	cmp r4, #0
	bne _022D8924
	bic r0, r0, #0xf0
	strb r0, [r2]
	ldrb r0, [r3, #0x301]
	str r0, [sp]
_022D8924:
	add r4, r4, #1
_022D8928:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r2, r2, #0x24
	cmp r5, r0
	add r3, r3, #0x24
	blt _022D88F8
_022D8940:
	cmp r4, #1
	ldrbeq r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	strbeq r0, [sl, #0xd0c]
_022D8950:
	ldr r0, [sp]
	and r0, r0, #0xff
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022D87C0

	arm_func_start ov00_022D895C
ov00_022D895C: @ 0x022D895C
	ldrb r0, [r0, #0xd0b]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end ov00_022D895C

	arm_func_start ov00_022D8978
ov00_022D8978: @ 0x022D8978
	ldrb r0, [r0, #0xd0b]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end ov00_022D8978

	arm_func_start ov00_022D8994
ov00_022D8994: @ 0x022D8994
	push {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _022D8A6C
_022D89A8: @ jump table
	b _022D89D8 @ case 0
	b _022D89D4 @ case 1
	b _022D89D0 @ case 2
	b _022D8A04 @ case 3
	b _022D8A00 @ case 4
	b _022D89FC @ case 5
	b _022D8A20 @ case 6
	b _022D8A48 @ case 7
	b _022D8A6C @ case 8
	b _022D8A6C @ case 9
_022D89D0:
	add r0, r0, #0x100
_022D89D4:
	add r0, r0, #0x100
_022D89D8:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	lsl r2, r2, #0x1e
	lsr r3, r2, #0x1e
	mov r2, #0x10
	strb r3, [r4]
	bl FUN_0207C4C8
	b _022D8A6C
_022D89FC:
	add r0, r0, #0x100
_022D8A00:
	add r0, r0, #0x100
_022D8A04:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	strb r3, [r4]
	bl FUN_0207C4C8
	b _022D8A6C
_022D8A20:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov00_022DA094
	b _022D8A6C
_022D8A48:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov00_022D9FFC
_022D8A6C:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r4, pc}
	arm_func_end ov00_022D8994

	arm_func_start ov00_022D8A80
ov00_022D8A80: @ 0x022D8A80
	push {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _022D8ACC
	bl ov00_022D8B08
	cmp r0, #1
	bne _022D8AB0
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
_022D8AB0:
	mvn r1, #0
	cmp r0, r1
	bne _022D8B00
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
_022D8ACC:
	cmp r0, #0xe
	bne _022D8AE8
	bl ov00_022DE654
	bl ov00_022DE55C
	mov r0, #0xc
	strb r0, [r4]
	b _022D8B00
_022D8AE8:
	cmp r0, #0x12
	bhs _022D8B00
	bl ov00_022D8B98
	cmp r0, #1
	moveq r0, #0xa
	strbeq r0, [r4]
_022D8B00:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022D8A80

	arm_func_start ov00_022D8B08
ov00_022D8B08: @ 0x022D8B08
	push {r3, lr}
	bl ov00_022D5640
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _022D8B90
_022D8B1C: @ jump table
	b _022D8B50 @ case 0
	b _022D8B58 @ case 1
	b _022D8B90 @ case 2
	b _022D8B60 @ case 3
	b _022D8B90 @ case 4
	b _022D8B90 @ case 5
	b _022D8B68 @ case 6
	b _022D8B90 @ case 7
	b _022D8B90 @ case 8
	b _022D8B70 @ case 9
	b _022D8B90 @ case 10
	b _022D8B80 @ case 11
	b _022D8B78 @ case 12
_022D8B50:
	mov r0, #1
	pop {r3, pc}
_022D8B58:
	bl ov00_022D4B88
	b _022D8B90
_022D8B60:
	bl ov00_022D4DE4
	b _022D8B90
_022D8B68:
	bl ov00_022D506C
	b _022D8B90
_022D8B70:
	bl ov00_022D5314
	b _022D8B90
_022D8B78:
	bl ov00_022D5430
	b _022D8B90
_022D8B80:
	mov r0, #0
	bl ov00_022D7D78
	mvn r0, #0
	pop {r3, pc}
_022D8B90:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov00_022D8B08

	arm_func_start ov00_022D8B98
ov00_022D8B98: @ 0x022D8B98
	push {r3, lr}
	ldr r0, _022D8BDC @ =0x02318868
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	popeq {r3, pc}
	bl ov00_022CED64
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
	bl ov00_022CEC18
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	.align 2, 0
_022D8BDC: .4byte 0x02318868
	arm_func_end ov00_022D8B98

	arm_func_start ov00_022D8BE0
ov00_022D8BE0: @ 0x022D8BE0
	push {r3, lr}
	mov r0, #1
	bl ov00_022D7CA4
	add r0, r0, #0xa
	bl ov00_022D8A80
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	pop {r3, pc}
	arm_func_end ov00_022D8BE0

	arm_func_start ov00_022D8C04
ov00_022D8C04: @ 0x022D8C04
	push {r4, lr}
	mov r0, #1
	bl ov00_022D7CA4
	mov r4, r0
	bl ov00_022D7D9C
	cmp r0, #4
	bge _022D8C28
	bl ov00_022D8C54
	pop {r4, pc}
_022D8C28:
	cmp r0, #5
	bge _022D8C38
	bl ov00_022D8C98
	pop {r4, pc}
_022D8C38:
	cmp r0, #5
	mov r0, r4
	bne _022D8C4C
	bl ov00_022D8CA0
	pop {r4, pc}
_022D8C4C:
	bl ov00_022D8CBC
	pop {r4, pc}
	arm_func_end ov00_022D8C04

	arm_func_start ov00_022D8C54
ov00_022D8C54: @ 0x022D8C54
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022D8C90
_022D8C60: @ jump table
	b _022D8C78 @ case 0
	b _022D8C70 @ case 1
	b _022D8C80 @ case 2
	b _022D8C88 @ case 3
_022D8C70:
	mvn r0, #8
	bx lr
_022D8C78:
	mvn r0, #9
	bx lr
_022D8C80:
	mvn r0, #7
	bx lr
_022D8C88:
	mvn r0, #6
	bx lr
_022D8C90:
	mov r0, #0
	bx lr
	arm_func_end ov00_022D8C54

	arm_func_start ov00_022D8C98
ov00_022D8C98: @ 0x022D8C98
	mvn r0, #5
	bx lr
	arm_func_end ov00_022D8C98

	arm_func_start ov00_022D8CA0
ov00_022D8CA0: @ 0x022D8CA0
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _022D8CB4 @ =0xFFFF3C4D
	ldrne r0, _022D8CB8 @ =0xFFFF3865
	bx lr
	.align 2, 0
_022D8CB4: .4byte 0xFFFF3C4D
_022D8CB8: .4byte 0xFFFF3865
	arm_func_end ov00_022D8CA0

	arm_func_start ov00_022D8CBC
ov00_022D8CBC: @ 0x022D8CBC
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldrbeq r1, [r0, #0x15]
	cmp r2, #0xa
	bhs _022D8D08
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _022D8DA4 @ =0xFFFF3864
	subeq r0, r0, r1
	bxeq lr
	cmp r0, #4
	ldrne r0, _022D8DA8 @ =0xFFFF379C
	subne r0, r0, r1
	bxne lr
	mov r0, #0xc800
	rsb r0, r0, #0
	sub r0, r0, r1
	bx lr
_022D8D08:
	cmp r2, #0xd
	ldrlo r0, _022D8DAC @ =0xFFFF34E0
	sublo r0, r0, r1
	bxlo lr
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldreq r0, _022D8DB0 @ =0xFFFF3CB0
	subeq r0, r0, r1
	bxeq lr
	mvn r3, #0
	cmp r0, r3
	ldreq r0, _022D8DB4 @ =0xFFFF347C
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #1
	cmp r0, r2
	ldreq r0, _022D8DB8 @ =0xFFFF3418
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #2
	cmp r0, r2
	ldreq r0, _022D8DBC @ =0xFFFF33B4
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #3
	cmp r0, r2
	ldreq r0, _022D8DC0 @ =0xFFFF30F8
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #4
	cmp r0, r2
	ldreq r0, _022D8DC4 @ =0xFFFF3094
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #5
	cmp r0, r2
	ldreq r0, _022D8DC8 @ =0xFFFF3030
	subeq r0, r0, r1
	bx lr
	.align 2, 0
_022D8DA4: .4byte 0xFFFF3864
_022D8DA8: .4byte 0xFFFF379C
_022D8DAC: .4byte 0xFFFF34E0
_022D8DB0: .4byte 0xFFFF3CB0
_022D8DB4: .4byte 0xFFFF347C
_022D8DB8: .4byte 0xFFFF3418
_022D8DBC: .4byte 0xFFFF33B4
_022D8DC0: .4byte 0xFFFF30F8
_022D8DC4: .4byte 0xFFFF3094
_022D8DC8: .4byte 0xFFFF3030
	arm_func_end ov00_022D8CBC

	arm_func_start ov00_022D8DCC
ov00_022D8DCC: @ 0x022D8DCC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	cmp r5, #0
	beq _022D8DFC
	cmp r5, #1
	beq _022D8E1C
	cmp r5, #2
	beq _022D8E34
	b _022D8E58
_022D8DFC:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl FUN_0207C314
	mov r0, r4
	bl ov00_022D8EAC
	strb r0, [r4, #0xd10]
	b _022D8E58
_022D8E1C:
	bl ov00_022D9100
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl ov00_022D9190
	strb r0, [r4, #0xd0f]
	b _022D8E58
_022D8E34:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl FUN_0207C314
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl ov00_022D8F0C
	strb r0, [r4, #0xd10]
_022D8E58:
	ldrb r0, [r4, #0xd10]
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D8DCC

	arm_func_start ov00_022D8E60
ov00_022D8E60: @ 0x022D8E60
	push {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	ldrb r0, [r0, #0xd0c]
	lsl r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmpne r0, #6
	bne _022D8EA0
	ldr r1, _022D8EA8 @ =0x02318188
	add r0, r4, #0xc
	mov r2, #8
	bl FUN_02089940
	cmp r0, #0
	moveq r0, #8
	popeq {r4, pc}
_022D8EA0:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022D8EA8: .4byte 0x02318188
	arm_func_end ov00_022D8E60

	arm_func_start ov00_022D8EAC
ov00_022D8EAC: @ 0x022D8EAC
	push {r3, r4, r5, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl ov00_022D8FF8
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mla r4, r5, r0, r4
	lsl r1, r1, #0x1c
	lsrs r0, r1, #0x1c
	cmpne r0, #6
	bne _022D8F00
	ldr r0, _022D8F08 @ =0x02318188
	add r1, r4, #4
	mov r2, #8
	bl FUN_0207C4C8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
_022D8F00:
	mov r0, r5
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D8F08: .4byte 0x02318188
	arm_func_end ov00_022D8EAC

	arm_func_start ov00_022D8F0C
ov00_022D8F0C: @ 0x022D8F0C
	push {r4, r5, r6, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl ov00_022D8FF8
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	lsl r1, r1, #0x1c
	lsrs r0, r1, #0x1c
	cmpne r0, #4
	bne _022D8F68
	ldr r0, _022D8FEC @ =0x02318AF4
	add r1, r5, #4
	mov r2, #8
	bl FUN_0207C4C8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_022D8F68:
	ldrb r0, [r6, #0xd0c]
	lsl r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmpne r0, #7
	bne _022D8FA8
	ldr r0, _022D8FF0 @ =0x02318180
	add r1, r5, #4
	mov r2, #8
	bl FUN_0207C4C8
	mov r1, #8
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_022D8FA8:
	ldrb r0, [r6, #0xd0c]
	lsl r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmpne r0, #8
	bne _022D8FE4
	ldr r0, _022D8FF4 @ =0x02318190
	add r1, r5, #4
	mov r2, #0xb
	bl FUN_0207C4C8
	mov r1, #0xb
	add r0, r4, #1
	strb r1, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_022D8FE4:
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D8FEC: .4byte 0x02318AF4
_022D8FF0: .4byte 0x02318180
_022D8FF4: .4byte 0x02318190
	arm_func_end ov00_022D8F0C

	arm_func_start ov00_022D8FF8
ov00_022D8FF8: @ 0x022D8FF8
	push {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add ip, r0, #0x300
_022D900C:
	ldrb r4, [r0, #0xd0c]
	lsl r4, r4, #0x1c
	lsrs r5, r4, #0x1c
	addne r4, r1, #1
	cmpne r5, r4
	bne _022D90E8
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _022D90E8
	mov r6, #0
_022D9034:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _022D905C
	add r4, r6, #1
	add r5, ip, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _022D9034
_022D905C:
	cmp r6, #0
	moveq r4, #0
	beq _022D9074
	strb r6, [ip, #3]
	strb r1, [ip, #1]
	mov r4, #1
_022D9074:
	cmp r4, #0
	ldrb r4, [r3, #0xe7]
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
	cmp r4, #1
	bne _022D90E8
	mov r6, #0
_022D9094:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _022D90BC
	add lr, r6, #1
	add r4, ip, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _022D9094
_022D90BC:
	cmp r6, #0
	moveq r4, #0
	beq _022D90D8
	strb r6, [ip, #3]
	add lr, r1, #3
	strb lr, [ip, #1]
	mov r4, #1
_022D90D8:
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne ip, ip, #0x24
_022D90E8:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _022D900C
	mov r0, r2
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D8FF8

	arm_func_start ov00_022D9100
ov00_022D9100: @ 0x022D9100
	push {r3, r4, r5, lr}
	ldrb r3, [r0, #0xd12]
	mov r2, #0
	mov r1, r2
	cmp r3, #0
	ble _022D9188
	add r3, r0, #0x47
	mov ip, r0
	add r3, r3, #0x400
_022D9124:
	add r4, r0, r1, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _022D9164
	add lr, ip, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r3]
	sub r5, r4, #1
	lsl r4, lr, #0x19
	cmp r5, r4, lsr #25
	beq _022D9164
	bic lr, lr, #0x80
	add r2, r2, #1
	strb lr, [r3]
	and r2, r2, #0xff
	b _022D9170
_022D9164:
	ldrb lr, [r3]
	orr lr, lr, #0x80
	strb lr, [r3]
_022D9170:
	ldrb lr, [r0, #0xd12]
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, lr
	add ip, ip, #0xc0
	blt _022D9124
_022D9188:
	mov r0, r2
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D9100

	arm_func_start ov00_022D9190
ov00_022D9190: @ 0x022D9190
	ldrb ip, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp ip, #0
	bls _022D91CC
_022D91A4:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	lsl r1, r1, #0x18
	lsrs r1, r1, #0x1f
	moveq r3, r2
	beq _022D91CC
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, ip
	blo _022D91A4
_022D91CC:
	mov r0, r3
	bx lr
	arm_func_end ov00_022D9190

	arm_func_start ov00_022D91D4
ov00_022D91D4: @ 0x022D91D4
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	mov r5, #9
	bl ov00_022D5640
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _022D92A8
_022D91F8: @ jump table
	b _022D92A8 @ case 0
	b _022D92A8 @ case 1
	b _022D92A8 @ case 2
	b _022D922C @ case 3
	b _022D92A8 @ case 4
	b _022D92A8 @ case 5
	b _022D9278 @ case 6
	b _022D92A8 @ case 7
	b _022D92A8 @ case 8
	b _022D9280 @ case 9
	b _022D92A8 @ case 10
	b _022D929C @ case 11
	b _022D9288 @ case 12
_022D922C:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _022D925C
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _022D92A8
_022D925C:
	cmp r5, #3
	blo _022D92A8
	cmp r5, #5
	bhi _022D92A8
	mov r0, r5
	bl ov00_022D9410
	b _022D92A8
_022D9278:
	bl ov00_022D506C
	b _022D92A8
_022D9280:
	bl ov00_022D5314
	b _022D92A8
_022D9288:
	bl ov00_022D5430
	mov r0, #4
	bl ov00_022D7D78
	mov r5, #0x11
	b _022D92A8
_022D929C:
	mov r0, #0
	bl ov00_022D7D78
	mov r5, #0x11
_022D92A8:
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D91D4

	arm_func_start ov00_022D92B0
ov00_022D92B0: @ 0x022D92B0
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	bl ov00_022D7D5C
	mov r5, r0
	bl ov00_022D5640
	cmp r5, #2
	cmpeq r0, #3
	bne _022D92E8
	mov r0, r4
	bl ov00_022D94F0
	mov r5, r0
	b _022D936C
_022D92E8:
	cmp r5, #6
	bne _022D9304
	mov r0, r4
	mov r1, r5
	bl ov00_022D9938
	mov r5, r0
	b _022D936C
_022D9304:
	cmp r0, #3
	cmpne r0, #6
	bne _022D936C
	mov r0, r4
	mov r1, r5
	bl ov00_022D9938
	mov r5, r0
	cmp r5, #7
	beq _022D936C
	cmp r5, #3
	bne _022D9340
	mov r0, r4
	bl ov00_022D9540
	mov r5, r0
	b _022D936C
_022D9340:
	cmp r5, #4
	bne _022D9358
	mov r0, r4
	bl ov00_022D962C
	mov r5, r0
	b _022D936C
_022D9358:
	cmp r5, #5
	bne _022D936C
	mov r0, r4
	bl ov00_022D9754
	mov r5, r0
_022D936C:
	mov r0, r5
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D92B0

	arm_func_start ov00_022D9374
ov00_022D9374: @ 0x022D9374
	push {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	pop {r4, pc}
	arm_func_end ov00_022D9374

	arm_func_start ov00_022D93A8
ov00_022D93A8: @ 0x022D93A8
	push {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	add r0, r0, #0xd00
	ldrh ip, [r0, #0x16]
	cmp ip, #0
	mvneq r0, #0
	popeq {r4, pc}
	mov r2, #0
	mov r3, r2
	mov r1, #1
_022D93D8:
	tst ip, r1, lsl r2
	beq _022D93F8
	cmp r3, r4
	lsleq r0, r2, #0x18
	asreq r0, r0, #0x18
	popeq {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_022D93F8:
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, #0xd
	blo _022D93D8
	mvn r0, #0
	pop {r4, pc}
	arm_func_end ov00_022D93A8

	arm_func_start ov00_022D9410
ov00_022D9410: @ 0x022D9410
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r4, r0
	cmp r5, #3
	beq _022D9440
	cmp r5, #4
	beq _022D9468
	cmp r5, #5
	beq _022D94B4
	pop {r3, r4, r5, pc}
_022D9440:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _022D94E8 @ =0x02318158
	ldr r1, _022D94EC @ =0x02318160
	mov r3, #0x200000
	bl ov00_022D9A5C
	pop {r3, r4, r5, pc}
_022D9468:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov00_022D9A5C
	pop {r3, r4, r5, pc}
_022D94B4:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _022D94E8 @ =0x02318158
	mov r3, #0x300000
	bl ov00_022D9A5C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022D94E8: .4byte 0x02318158
_022D94EC: .4byte 0x02318160
	arm_func_end ov00_022D9410

	arm_func_start ov00_022D94F0
ov00_022D94F0: @ 0x022D94F0
	push {r4, lr}
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _022D9538 @ =0x02318158
	ldr r1, _022D953C @ =0x02318160
	mov r3, #0x200000
	bl ov00_022D9A5C
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
_022D9538: .4byte 0x02318158
_022D953C: .4byte 0x02318160
	arm_func_end ov00_022D94F0

	arm_func_start ov00_022D9540
ov00_022D9540: @ 0x022D9540
	push {r4, lr}
	mov r4, r0
	bl FUN_0207AE44
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022D95D8 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _022D95D0
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _022D95AC
	mov r0, r4
	mov r1, #3
	bl ov00_022D9874
	pop {r4, pc}
_022D95AC:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _022D95DC @ =0x02318158
	ldr r1, _022D95E0 @ =0x02318160
	mov r3, #0x200000
	bl ov00_022D9A5C
_022D95D0:
	mov r0, #3
	pop {r4, pc}
	.align 2, 0
_022D95D8: .4byte 0x000082EA
_022D95DC: .4byte 0x02318158
_022D95E0: .4byte 0x02318160
	arm_func_end ov00_022D9540

	arm_func_start ov00_022D95E4
ov00_022D95E4: @ 0x022D95E4
	push {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	lsl r1, r1, #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl ov00_022D8DCC
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	pop {r4, pc}
	arm_func_end ov00_022D95E4

	arm_func_start ov00_022D962C
ov00_022D962C: @ 0x022D962C
	push {r4, lr}
	mov r4, r0
	bl FUN_0207AE44
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022D9750 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _022D9688
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022D9748
_022D9688:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _022D96E0
_022D96B0:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	lsl r0, r0, #0x18
	lsrs r0, r0, #0x1f
	beq _022D96E0
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	and r1, r0, #0xff
	cmp r1, r2
	blo _022D96B0
_022D96E0:
	cmp r2, r1
	bhi _022D9700
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl ov00_022D9874
	pop {r4, pc}
_022D9700:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r3, r1, #0x400
	add r1, r0, #0x400
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl ov00_022D9A5C
_022D9748:
	mov r0, #4
	pop {r4, pc}
	.align 2, 0
_022D9750: .4byte 0x000082EA
	arm_func_end ov00_022D962C

	arm_func_start ov00_022D9754
ov00_022D9754: @ 0x022D9754
	push {r4, lr}
	mov r4, r0
	bl FUN_0207AE44
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022D986C @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _022D97B4
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _022D9864
_022D97B4:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	and r0, r0, #0xff
	cmp r1, r0
	bhi _022D980C
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl ov00_022D93A8
	strb r0, [r4, #0xd11]
_022D980C:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _022D9834
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl ov00_022D9874
	pop {r4, pc}
_022D9834:
	bl FUN_0207AE44
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _022D9870 @ =0x02318158
	mov r3, #0x300000
	bl ov00_022D9A5C
_022D9864:
	mov r0, #5
	pop {r4, pc}
	.align 2, 0
_022D986C: .4byte 0x000082EA
_022D9870: .4byte 0x02318158
	arm_func_end ov00_022D9754

	arm_func_start ov00_022D9874
ov00_022D9874: @ 0x022D9874
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _022D989C
	cmp r4, #4
	beq _022D98FC
	cmp r4, #5
	beq _022D9908
	b _022D9928
_022D989C:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	addeq r1, r5, #0xd00
	ldrheq r1, [r1, #0x16]
	cmpeq r1, #0
	beq _022D98D8
	mov r0, #1
	bl ov00_022D8DCC
	cmp r0, #0
	movne r4, #4
	bne _022D9928
	mov r0, r5
	bl ov00_022D99FC
	mov r4, r0
	b _022D9928
_022D98D8:
	ldrb r1, [r5, #0xd0b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _022D9928
	bl ov00_022D95E4
	mov r4, r0
	b _022D9928
_022D98FC:
	bl ov00_022D99FC
	mov r4, r0
	b _022D9928
_022D9908:
	ldrb r1, [r5, #0xd0b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _022D9928
	bl ov00_022D95E4
	mov r4, r0
_022D9928:
	mov r0, r4
	bl ov00_022D9410
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D9874

	arm_func_start ov00_022D9938
ov00_022D9938: @ 0x022D9938
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x11
	moveq r0, r4
	popeq {r3, r4, r5, pc}
	ldrb r2, [r5, #0xd12]
	mov r1, #0
	cmp r2, #0
	bls _022D9980
_022D9960:
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _022D9980
	add r0, r1, #1
	and r1, r0, #0xff
	cmp r1, r2
	blo _022D9960
_022D9980:
	cmp r4, #6
	bne _022D99B4
	cmp r2, r1
	bne _022D99E0
	cmp r1, #0
	bne _022D99A4
	mov r0, #5
	bl ov00_022D7D78
	b _022D99AC
_022D99A4:
	mov r0, #6
	bl ov00_022D7D78
_022D99AC:
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_022D99B4:
	cmp r2, #0
	moveq r0, r4
	popeq {r3, r4, r5, pc}
	cmp r2, r1
	moveq r0, r4
	popeq {r3, r4, r5, pc}
	add r0, r5, r1, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r4
	poplo {r3, r4, r5, pc}
_022D99E0:
	strb r1, [r5, #0xd13]
	bl ov00_022D506C
	cmp r0, #1
	strbne r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D9938

	arm_func_start ov00_022D99FC
ov00_022D99FC: @ 0x022D99FC
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _022D9A38
	mov r0, #2
	bl ov00_022D8DCC
	cmp r0, #0
	beq _022D9A38
	mov r0, #0
	bl ov00_022D93A8
	strb r0, [r4, #0xd11]
	mov r0, #5
	pop {r4, pc}
_022D9A38:
	ldrb r0, [r4, #0xd0b]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	movhs r0, #6
	pophs {r4, pc}
	mov r0, r4
	bl ov00_022D95E4
	pop {r4, pc}
	arm_func_end ov00_022D99FC

	arm_func_start ov00_022D9A5C
ov00_022D9A5C: @ 0x022D9A5C
	push {r3, lr}
	ldr ip, _022D9A7C @ =0x0231819C
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl ov00_022D4ED4
	pop {r3, pc}
	.align 2, 0
_022D9A7C: .4byte 0x0231819C
	arm_func_end ov00_022D9A5C

	arm_func_start ov00_022D9A80
ov00_022D9A80: @ 0x022D9A80
	push {r4, lr}
	sub sp, sp, #0x10
	bl ov00_022D5640
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	cmp r4, #1
	bne _022D9AEC
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov00_022D8DCC
	ldr r1, _022D9B04 @ =ov00_022D84BC
	add r0, sp, #0
	bl ov00_022D4BE0
	cmp r0, #1
	beq _022D9AD8
	cmp r0, #4
	blt _022D9AF8
_022D9AD8:
	mov r0, #1
	bl ov00_022D7D78
	add sp, sp, #0x10
	mov r0, #0x11
	pop {r4, pc}
_022D9AEC:
	add sp, sp, #0x10
	mov r0, #1
	pop {r4, pc}
_022D9AF8:
	mov r0, #2
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022D9B04: .4byte ov00_022D84BC
	arm_func_end ov00_022D9A80

	arm_func_start ov00_022D9B08
ov00_022D9B08: @ 0x022D9B08
	push {r3, r4, r5, lr}
	bl ov00_022D7D5C
	mov r4, r0
	mov r0, #0x10
	bl ov00_022D7CA4
	mov r5, r0
	bl ov00_022D5640
	cmp r0, #9
	bne _022D9BAC
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022D9BFC
_022D9B3C: @ jump table
	b _022D9B54 @ case 0
	b _022D9BA0 @ case 1
	b _022D9B64 @ case 2
	b _022D9B74 @ case 3
	b _022D9B80 @ case 4
	b _022D9B90 @ case 5
_022D9B54:
	mov r0, r5
	bl ov00_022D9C04
	mov r4, r0
	b _022D9BFC
_022D9B64:
	mov r0, r5
	bl ov00_022D9C68
	mov r4, r0
	b _022D9BFC
_022D9B74:
	bl ov00_022D9CF8
	mov r4, r0
	b _022D9BFC
_022D9B80:
	mov r0, r5
	bl ov00_022D9D24
	mov r4, r0
	b _022D9BFC
_022D9B90:
	mov r0, r5
	bl ov00_022D9D90
	mov r4, r0
	b _022D9BFC
_022D9BA0:
	bl ov00_022D9DA4
	mov r4, r0
	b _022D9BFC
_022D9BAC:
	cmp r4, #0xb
	beq _022D9BD4
	cmp r4, #0xe
	beq _022D9BE0
	cmp r4, #0xf
	bne _022D9BE8
	mov r0, r5
	bl ov00_022D9D90
	mov r4, r0
	b _022D9BFC
_022D9BD4:
	bl ov00_022D9DA4
	mov r4, r0
	b _022D9BFC
_022D9BE0:
	bl ov00_022DE654
	bl ov00_022DE55C
_022D9BE8:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_022D9BFC:
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022D9B08

	arm_func_start ov00_022D9C04
ov00_022D9C04: @ 0x022D9C04
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov00_022D7CA4
	mov r5, r0
	mov r0, #4
	bl ov00_022D7CA4
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl ov00_022D9DD4
	ldr r1, _022D9C64 @ =0x023268C0
	mov r2, #4
	mov r0, r4
	str r2, [r1]
	bl ov00_022CF674
	cmp r0, #0
	moveq r0, #0xc
	popeq {r4, r5, r6, pc}
	mov r0, #2
	bl ov00_022D7D78
	mov r0, #0x11
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D9C64: .4byte 0x023268C0
	arm_func_end ov00_022D9C04

	arm_func_start ov00_022D9C68
ov00_022D9C68: @ 0x022D9C68
	push {r4, lr}
	mov r4, r0
	bl ov00_022CF528
	cmp r0, #0
	beq _022D9CA0
	mov r0, r4
	bl ov00_022D9F3C
	ldrb r0, [r4, #0xd0c]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	pop {r4, pc}
_022D9CA0:
	bl FUN_0207AE44
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022D9CF4 @ =0x01FF6210
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	poplo {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r4, pc}
	.align 2, 0
_022D9CF4: .4byte 0x01FF6210
	arm_func_end ov00_022D9C68

	arm_func_start ov00_022D9CF8
ov00_022D9CF8: @ 0x022D9CF8
	push {r3, lr}
	mov r0, #8
	bl ov00_022D7CA4
	bl ov00_022DE47C
	cmp r0, #0
	moveq r0, #0xe
	popeq {r3, pc}
	mov r0, #3
	bl ov00_022D7D78
	mov r0, #0x11
	pop {r3, pc}
	arm_func_end ov00_022D9CF8

	arm_func_start ov00_022D9D24
ov00_022D9D24: @ 0x022D9D24
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov00_022D7CA4
	mov r4, r0
	bl ov00_022DE6BC
	movs r5, r0
	beq _022D9D88
	ldrb r0, [r6, #0xd0d]
	bl ov00_022D7E58
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _022D9D60
	bl ov00_022DE6FC
	str r0, [r4, #0x10]
_022D9D60:
	bl ov00_022DE55C
	cmp r5, #0xb
	moveq r0, #0xf
	popeq {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	pop {r4, r5, r6, pc}
_022D9D88:
	mov r0, #0xe
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022D9D24

	arm_func_start ov00_022D9D90
ov00_022D9D90: @ 0x022D9D90
	push {r3, lr}
	ldrb r0, [r0, #0xd0d]
	bl ov00_022D7DB0
	mov r0, #0x10
	pop {r3, pc}
	arm_func_end ov00_022D9D90

	arm_func_start ov00_022D9DA4
ov00_022D9DA4: @ 0x022D9DA4
	push {r3, lr}
	bl ov00_022CED64
	cmp r0, #0
	movne r0, #0xb
	popne {r3, pc}
	bl ov00_022CEC18
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #9
	movne r0, #0xb
	pop {r3, pc}
	arm_func_end ov00_022D9DA4

	arm_func_start ov00_022D9DD4
ov00_022D9DD4: @ 0x022D9DD4
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _022D9E90 @ =0x023181D0
	mov r1, r4
	mov r2, #0x58
	bl FUN_0207C4C8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	pophs {r4, r5, r6, pc}
	bl ov00_022D7E58
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _022D9E6C
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl ov00_022D9E94
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl ov00_022D9EE8
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl ov00_022D9E94
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl ov00_022D9E94
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl ov00_022D9E94
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_022D9E6C:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022D9E90: .4byte 0x023181D0
	arm_func_end ov00_022D9DD4

	arm_func_start ov00_022D9E94
ov00_022D9E94: @ 0x022D9E94
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	lsr r1, r3, #0x18
	lsr r0, r3, #8
	lsl r2, r3, #8
	lsl r3, r3, #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov00_022D9E94

	arm_func_start ov00_022D9EE8
ov00_022D9EE8: @ 0x022D9EE8
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _022D9F0C
_022D9EFC:
	add r0, r0, #1
	cmp r0, r1
	lsl r3, r3, #1
	blt _022D9EFC
_022D9F0C:
	lsr r1, r3, #0x18
	lsr r0, r3, #8
	lsl r2, r3, #8
	lsl r3, r3, #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ov00_022D9EE8

	arm_func_start ov00_022D9F3C
ov00_022D9F3C: @ 0x022D9F3C
	push {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	pophs {r4, pc}
	bl ov00_022D7E58
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	popne {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r4, pc}
	add r0, r4, #0xc8
	bl ov00_022D9E94
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl ov00_022D9E94
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl ov00_022CF560
	add sp, sp, #8
	pop {r4, pc}
	arm_func_end ov00_022D9F3C

	arm_func_start ov00_022D9FC4
ov00_022D9FC4: @ 0x022D9FC4
	push {r3, lr}
	sub sp, sp, #0x18
	add r1, sp, #0
	bl ov00_022DA0A4
	ldr r1, _022D9FF8 @ =0x02318B74
	add r0, sp, #0
	mov r2, #8
	bl FUN_02087348
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	pop {r3, pc}
	.align 2, 0
_022D9FF8: .4byte 0x02318B74
	arm_func_end ov00_022D9FC4

	arm_func_start ov00_022D9FFC
ov00_022D9FFC: @ 0x022D9FFC
	push {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov00_022DA0A4
	add r0, sp, #0
	mov r1, r4
	bl ov00_022DA1A8
	add sp, sp, #0x18
	pop {r4, pc}
	arm_func_end ov00_022D9FFC

	arm_func_start ov00_022DA024
ov00_022DA024: @ 0x022DA024
	push {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl ov00_022DA0A4
	ldr r1, _022DA06C @ =0x02318B74
	add r0, sp, #0
	mov r2, #8
	bl FUN_02087348
	cmp r0, #0
	addne sp, sp, #0x18
	popne {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl FUN_0207C4C8
	add sp, sp, #0x18
	pop {r4, pc}
	.align 2, 0
_022DA06C: .4byte 0x02318B74
	arm_func_end ov00_022DA024

	arm_func_start ov00_022DA070
ov00_022DA070: @ 0x022DA070
	push {r3, lr}
	ldr r1, _022DA090 @ =0x02318B80
	mov r2, #8
	bl FUN_02087348
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	.align 2, 0
_022DA090: .4byte 0x02318B80
	arm_func_end ov00_022DA070

	arm_func_start ov00_022DA094
ov00_022DA094: @ 0x022DA094
	ldr ip, _022DA0A0 @ =ov00_022DA1F4
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_022DA0A0: .4byte ov00_022DA1F4
	arm_func_end ov00_022DA094

	arm_func_start ov00_022DA0A4
ov00_022DA0A4: @ 0x022DA0A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr lr, _022DA1A0 @ =0x0231822B
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
_022DA0BC:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _022DA0BC
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl ov00_022DA410
	ldr r0, _022DA1A4 @ =0x02318B0C
	mov r3, #0
_022DA0F4:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _022DA0F4
	mov r7, #0
	add ip, sp, #0
	mov r1, #0xff
_022DA120:
	and lr, r7, #0xff
	ldrb r0, [ip, lr]
	mov r5, lr
	ldrb r6, [r4, r7]
	cmp r0, #0xff
	beq _022DA164
_022DA138:
	add r3, ip, r5
	ldrb r5, [ip, r5]
	ldrb r0, [ip, lr]
	ldrb r2, [r4, r5]
	mov lr, r5
	strb r6, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r5]
	mov r6, r2
	cmp r0, #0xff
	bne _022DA138
_022DA164:
	add r7, r7, #1
	cmp r7, #0x18
	blt _022DA120
	ldr r0, _022DA1A4 @ =0x02318B0C
	mov r3, #0
_022DA178:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _022DA178
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DA1A0: .4byte 0x0231822B
_022DA1A4: .4byte 0x02318B0C
	arm_func_end ov00_022DA0A4

	arm_func_start ov00_022DA1A8
ov00_022DA1A8: @ 0x022DA1A8
	push {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl FUN_020800FC
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl FUN_0208013C
	add r0, sp, #0
	add r1, sp, #0x14
	bl FUN_02080204
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl FUN_0207C4C8
	add sp, sp, #0x6c
	pop {r4, r5, pc}
	arm_func_end ov00_022DA1A8

	arm_func_start ov00_022DA1F4
ov00_022DA1F4: @ 0x022DA1F4
	push {r4, lr}
	sub sp, sp, #0x10
	ldr lr, _022DA390 @ =0x92492493
	mov r4, r1
	mov r1, #0
	mov ip, #7
_022DA20C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	lsr r2, r1, #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _022DA20C
	mov ip, #0
_022DA248:
	add r3, r4, ip
	add r1, r0, ip
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _022DA248
	ldr r0, _022DA394 @ =0x02318B0C
	mov r3, #0
_022DA274:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _022DA274
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl FUN_0207C4C8
	ldr r3, _022DA398 @ =0x02318244
	add r2, sp, #0
	mov ip, #0
_022DA2B0:
	ldrb r1, [r2], #1
	ldrb r0, [r3], #1
	add ip, ip, #1
	cmp ip, #0xd
	strb r1, [r4, r0]
	blt _022DA2B0
	ldr r0, _022DA394 @ =0x02318B0C
	mov r3, #0
_022DA2D0:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _022DA2D0
	ldr r2, _022DA39C @ =0x02318254
	mov ip, #0
_022DA2F8:
	ldrb r3, [r4, ip]
	asr r0, r3, #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _022DA2F8
	mov r1, #0
_022DA328:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _022DA328
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022DA390: .4byte 0x92492493
_022DA394: .4byte 0x02318B0C
_022DA398: .4byte 0x02318244
_022DA39C: .4byte 0x02318254
	arm_func_end ov00_022DA1F4

	arm_func_start ov00_022DA3A0
ov00_022DA3A0: @ 0x022DA3A0
	cmp r0, #0x41
	blo _022DA3B4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_022DA3B4:
	cmp r0, #0x61
	blo _022DA3CC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_022DA3CC:
	cmp r0, #0x30
	blo _022DA3E4
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_022DA3E4:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end ov00_022DA3A0

	arm_func_start ov00_022DA410
ov00_022DA410: @ 0x022DA410
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	add r4, r2, r2, lsl #1
	str r0, [sp]
	lsr r0, r4, #2
	str r1, [sp, #4]
	cmp r3, r4, lsr #2
	str r0, [sp, #8]
	blo _022DA444
	and fp, r2, #3
	sub r0, r2, fp
	str r0, [sp, #0xc]
	b _022DA450
_022DA444:
	add sp, sp, #0x18
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DA450:
	cmp r0, #0
	mov r7, #0
	ble _022DA4D8
	mov sb, r7
	add r5, sp, #0x14
	mov r4, #6
_022DA468:
	ldr r0, [sp]
	mov r6, #0
	mov r8, r6
	add sl, r0, r7
_022DA478:
	ldrb r0, [sl], #1
	bl ov00_022DA3A0
	rsb r1, r8, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r8, r8, #1
	cmp r8, #4
	blt _022DA478
	ldr r0, [sp, #4]
	add r1, sb, sb, lsl #1
	mov r2, #0
	str r6, [sp, #0x14]
	add r1, r0, r1
_022DA4AC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r1], #1
	blt _022DA4AC
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	cmp r7, r0
	add sb, sb, #1
	blt _022DA468
_022DA4D8:
	cmp fp, #0
	beq _022DA56C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0x10]
	ble _022DA52C
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	mov r8, r5
	add r4, r1, r0
	mov r7, #6
_022DA504:
	ldrb r0, [r4], #1
	bl ov00_022DA3A0
	rsb r1, r6, #3
	mul r2, r1, r7
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, fp
	orr r8, r8, r5
	blt _022DA504
	str r8, [sp, #0x10]
_022DA52C:
	cmp fp, #0
	mov r3, #0
	ble _022DA56C
	ldr r0, [sp, #0xc]
	add r1, r0, r0, lsl #1
	asr r0, r1, #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0x10
_022DA554:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	add r3, r3, #1
	cmp r3, fp
	strb r0, [r2], #1
	blt _022DA554
_022DA56C:
	ldr r0, [sp, #8]
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022DA410

	arm_func_start ov00_022DA578
ov00_022DA578: @ 0x022DA578
	tst r0, #2
	asr r0, r0, #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end ov00_022DA578

	arm_func_start ov00_022DA58C
ov00_022DA58C: @ 0x022DA58C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _022DA86C @ =0x02326CA4
	mov r6, r0
	ldr r0, [r1]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl FUN_0207A2A4
	ldrh r0, [r6, #2]
	cmp r0, #0
	ldrheq r0, [r6, #8]
	cmpeq r0, #5
	bne _022DA830
	ldrh r0, [r6, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _022DA830
_022DA5D0:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #0x40]
	cmp r1, #1
	ldreq r2, [r0, #0x44]
	ldreq r1, _022DA870 @ =0x00000857
	cmpeq r2, r1
	bne _022DA820
	ldr r1, _022DA86C @ =0x02326CA4
	mov r4, #0
	ldr ip, [r1]
	mov r3, r4
	add r2, ip, #0x1000
	ldr r1, [r2, #0xa88]
	cmp r1, #0
	bls _022DA63C
	ldrh r7, [r0, #0x48]
_022DA614:
	add r1, ip, r3, lsl #1
	add r1, r1, #0x1a00
	ldrh r1, [r1, #0x68]
	cmp r1, r7
	moveq r4, #1
	beq _022DA63C
	ldr r1, [r2, #0xa88]
	add r3, r3, #1
	cmp r3, r1
	blo _022DA614
_022DA63C:
	cmp r4, #1
	beq _022DA820
	ldr r1, _022DA86C @ =0x02326CA4
	mov r2, #0x70
	ldr r1, [r1]
	add r0, r0, #0x50
	add r3, r1, #0x1000
	add r1, r1, #0x348
	ldr r3, [r3, #0xa8c]
	add r1, r1, #0x1000
	mla r1, r3, r2, r1
	bl FUN_0207C4C8
	ldr r0, _022DA874 @ =0x02318264
	add r1, sp, #0
	mov r2, #4
	bl FUN_0207C4C8
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	add r1, sp, #4
	add r0, r0, #6
	mov r2, #4
	bl FUN_0207C4C8
	ldr r0, _022DA86C @ =0x02326CA4
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #8
	add r0, r0, #0x96
	add r0, r0, #0x1c00
	bl FUN_02075720
	ldr r0, _022DA86C @ =0x02326CA4
	mov r2, #0x70
	ldr r3, [r0]
	add r0, r3, #0x348
	add r4, r0, #0x1000
	add r0, r3, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r3, #0x96
	mul r3, r1, r2
	add r1, r4, r3
	add r0, r0, #0x1c00
	add r3, r4, r3
	bl FUN_020757B0
	ldr r0, _022DA86C @ =0x02326CA4
	mov r1, #0x70
	ldr ip, [r0]
	mov r3, #0x6e
	add r0, ip, #0x348
	add r4, r0, #0x1000
	add r0, ip, #0x1000
	ldr r2, [r0, #0xa8c]
	add r0, ip, #0x96
	mul r7, r2, r1
	add r1, ip, #0x294
	add r0, r0, #0x1a00
	add r1, r1, #0x1800
	add r2, r4, r7
	bl FUN_02085074
	ldr r0, _022DA86C @ =0x02326CA4
	add r1, r4, r7
	ldr r0, [r0]
	mov r2, #0x6e
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl FUN_02085158
	ldr r1, _022DA86C @ =0x02326CA4
	mov r2, #0x70
	ldr r4, [r1]
	add r1, r4, #0x1000
	ldr r1, [r1, #0xa8c]
	mul r3, r1, r2
	add r1, r4, r3
	add r1, r1, #0x1300
	ldrh r1, [r1, #0xb6]
	cmp r0, r1
	cmpne r1, #0
	beq _022DA784
	add r0, r4, #0x348
	add r0, r0, #0x1000
	add r0, r0, r3
	mov r1, #0
	bl FUN_0207C40C
	b _022DA820
_022DA784:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl ov00_022DA578
	add r1, r4, #0x1000
	ldr r1, [r1, #0xa8c]
	ldr r3, _022DA86C @ =0x02326CA4
	add r1, r4, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r2, [r3]
	add r1, r6, r5, lsl #2
	add r0, r2, #0x1000
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r3]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_022DA820:
	ldrh r0, [r6, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _022DA5D0
_022DA830:
	ldr r1, _022DA86C @ =0x02326CA4
	mov r2, #2
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	blx r1
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DA86C: .4byte 0x02326CA4
_022DA870: .4byte 0x00000857
_022DA874: .4byte 0x02318264
	arm_func_end ov00_022DA58C

	arm_func_start ov00_022DA878
ov00_022DA878: @ 0x022DA878
	ldr r0, _022DA880 @ =0x00001DA0
	bx lr
	.align 2, 0
_022DA880: .4byte 0x00001DA0
	arm_func_end ov00_022DA878

	arm_func_start ov00_022DA884
ov00_022DA884: @ 0x022DA884
	push {r4, r5, r6, lr}
	movs r6, r1
	mov r5, r2
	mov r4, r3
	mvneq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r1, _022DA914 @ =0x02326CA4
	str r0, [r1]
	bl ov00_022DA878
	ldr r1, _022DA914 @ =0x02326CA4
	mov r2, r0
	ldr r0, [r1]
	mov r1, #0
	bl FUN_0207C40C
	ldr r2, _022DA914 @ =0x02326CA4
	mov r3, #0
	ldr r0, [r2]
	ldr r1, _022DA918 @ =0x0000A001
	add r0, r0, #0x1000
	str r3, [r0, #0xa90]
	ldr r0, [r2]
	add r0, r0, #0x1a00
	strh r3, [r0, #0x94]
	ldr r0, [r2]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl FUN_02085030
	ldr r0, _022DA914 @ =0x02326CA4
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	bl ov00_022BFB24
	cmp r0, #2
	moveq r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DA914: .4byte 0x02326CA4
_022DA918: .4byte 0x0000A001
	arm_func_end ov00_022DA884

	arm_func_start ov00_022DA91C
ov00_022DA91C: @ 0x022DA91C
	push {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	popeq {r3, pc}
	ldr r2, _022DA958 @ =0x02326CA4
	mov ip, #3
	ldr r1, [r2]
	mov r3, #0
	add r1, r1, #0x1000
	str ip, [r1, #0xa90]
	str r3, [r2]
	bl ov00_022BFBD4
	cmp r0, #2
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022DA958: .4byte 0x02326CA4
	arm_func_end ov00_022DA91C

	arm_func_start ov00_022DA95C
ov00_022DA95C: @ 0x022DA95C
	push {r4, lr}
	movs r4, r0
	mvneq r0, #0
	popeq {r4, pc}
	ldr r1, _022DAA1C @ =0x02326CA4
	mov r2, #0x400
	ldr r0, [r1]
	add r3, r0, #0xf00
	add r0, r0, #0x1000
	str r3, [r0, #0x300]
	ldr r0, [r1]
	add r0, r0, #0x1300
	strh r2, [r0, #4]
	bl ov00_022BF640
	ldr r1, _022DAA1C @ =0x02326CA4
	ldr r1, [r1]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	bl ov00_022BF780
	ldr r3, _022DAA1C @ =0x02326CA4
	mov ip, #1
	ldr r2, [r3]
	mov r1, #0xff
	add r2, r2, #0x1300
	strh r0, [r2, #8]
	ldr r0, [r3]
	mov r2, #6
	add r0, r0, #0x1300
	strh ip, [r0, #0x10]
	ldr r0, [r3]
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl FUN_0207C40C
	ldr r2, _022DAA1C @ =0x02326CA4
	mov r3, #1
	ldr r1, [r2]
	ldr r0, _022DAA20 @ =ov00_022DA58C
	add r1, r1, #0x1000
	str r4, [r1, #0x344]
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	ldr r1, [r2]
	add r1, r1, #0x1300
	bl ov00_022BFED8
	cmp r0, #2
	moveq r0, #0
	pop {r4, pc}
	.align 2, 0
_022DAA1C: .4byte 0x02326CA4
_022DAA20: .4byte ov00_022DA58C
	arm_func_end ov00_022DA95C

	arm_func_start ov00_022DAA24
ov00_022DAA24: @ 0x022DAA24
	push {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	popeq {r3, pc}
	ldr r1, _022DAA58 @ =0x02326CA4
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	bl ov00_022C0028
	cmp r0, #2
	moveq r0, #0
	pop {r3, pc}
	.align 2, 0
_022DAA58: .4byte 0x02326CA4
	arm_func_end ov00_022DAA24

	arm_func_start ov00_022DAA5C
ov00_022DAA5C: @ 0x022DAA5C
	push {r3, r4, r5, lr}
	ldr r2, _022DAAF4 @ =0x02326CA4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	popne {r3, r4, r5, pc}
	cmp r5, #0
	blt _022DAA98
	ldr r0, [r0, #0xa88]
	cmp r5, r0
	blt _022DAAA0
_022DAA98:
	mvn r0, #0
	pop {r3, r4, r5, pc}
_022DAAA0:
	mov r0, r4
	mov r1, #0
	mov r2, #0x78
	bl FUN_0207C40C
	mov r0, #1
	ldr r3, _022DAAF4 @ =0x02326CA4
	str r0, [r4]
	ldr r0, [r3]
	mov r2, #0x70
	add r0, r0, r5, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r4, #6
	strh r0, [r4, #4]
	ldr r0, [r3]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r5, r2, r0
	bl FUN_0207C4C8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DAAF4: .4byte 0x02326CA4
	arm_func_end ov00_022DAA5C

	arm_func_start ov00_022DAAF8
ov00_022DAAF8: @ 0x022DAAF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022DAB98 @ =0x02326CA4
	mov r5, r0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x780
	bl FUN_0207C40C
	mov r0, #0
	mov r1, r5
	mov r4, r0
_022DAB34:
	add r0, r0, #1
	cmp r0, #0x10
	str r4, [r1], #0x78
	blt _022DAB34
	ldr r7, _022DAB98 @ =0x02326CA4
	ldr r0, [r7]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _022DAB90
	mvn r6, #0
_022DAB60:
	mov r0, r4
	mov r1, r5
	bl ov00_022DAA5C
	cmp r0, r6
	beq _022DAB90
	ldr r0, [r7]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	add r5, r5, #0x78
	cmp r4, r0
	blt _022DAB60
_022DAB90:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DAB98: .4byte 0x02326CA4
	arm_func_end ov00_022DAAF8

	arm_func_start ov00_022DAB9C
ov00_022DAB9C: @ 0x022DAB9C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022DA878
	mov r1, r0
	mov r0, #1
	bl ov00_022E03F0
	ldr r2, _022DAC04 @ =0x02326CA8
	ldr r1, _022DAC08 @ =0x00000794
	str r0, [r2, #4]
	mov r0, #1
	bl ov00_022E03F0
	ldr r2, _022DAC04 @ =0x02326CA8
	mov r1, #0
	str r0, [r2]
	ldr r2, _022DAC08 @ =0x00000794
	bl FUN_0207C40C
	ldr r1, _022DAC04 @ =0x02326CA8
	mov r2, #0
	ldr r3, [r1]
	mov r0, #1
	str r5, [r3]
	ldr r3, [r1]
	str r4, [r3, #0x790]
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DAC04: .4byte 0x02326CA8
_022DAC08: .4byte 0x00000794
	arm_func_end ov00_022DAB9C

	arm_func_start ov00_022DAC0C
ov00_022DAC0C: @ 0x022DAC0C
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _022DAF24 @ =0x02326CA8
	ldr r0, [r1, #4]
	cmp r0, #0
	ldrne r3, [r1]
	cmpne r3, #0
	moveq r0, #3
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r2, [r1, #8]
	mov r6, #1
	cmp r2, #0xb
	addls pc, pc, r2, lsl #2
	b _022DAF1C
_022DAC40: @ jump table
	b _022DAC70 @ case 0
	b _022DAF1C @ case 1
	b _022DAC9C @ case 2
	b _022DAF1C @ case 3
	b _022DACF4 @ case 4
	b _022DAD58 @ case 5
	b _022DAF1C @ case 6
	b _022DAD80 @ case 7
	b _022DAF1C @ case 8
	b _022DAE54 @ case 9
	b _022DAEF0 @ case 10
	b _022DAF18 @ case 11
_022DAC70:
	str r6, [r1, #8]
	ldr r3, [r3, #0x790]
	ldr r1, _022DAF28 @ =0x022DAFF0
	mov r2, #0
	bl ov00_022DA884
	cmp r0, #0
	beq _022DAF1C
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #0xb
	str r1, [r0, #8]
	b _022DAF1C
_022DAC9C:
	ldr r0, _022DAF2C @ =0x022DB004
	mov r2, #3
	str r2, [r1, #8]
	bl ov00_022DA95C
	cmp r0, #0
	bne _022DACE4
	ldr r0, _022DAF24 @ =0x02326CA8
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	cmp r0, #0
	cmpeq r1, #0
	bne _022DAF1C
	bl FUN_0207AE44
	ldr r2, _022DAF24 @ =0x02326CA8
	ldr r2, [r2]
	stmib r2, {r0, r1}
	b _022DAF1C
_022DACE4:
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #0xa
	str r1, [r0, #8]
	b _022DAF1C
_022DACF4:
	bl FUN_0207AE44
	ldr r3, _022DAF24 @ =0x02326CA8
	ldr r2, _022DAF30 @ =0x000082EA
	ldr r4, [r3]
	mov r3, #0
	ldr r5, [r4, #4]
	ldr r4, [r4, #8]
	subs r5, r0, r5
	sbc r0, r1, r4
	lsl r1, r0, #6
	orr r1, r1, r5, lsr #26
	lsl r0, r5, #6
	bl FUN_0208FE3C
	ldr r2, _022DAF34 @ =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	bhs _022DAD48
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #2
	str r1, [r0, #8]
	b _022DAF1C
_022DAD48:
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #5
	str r1, [r0, #8]
	b _022DAF1C
_022DAD58:
	ldr r0, _022DAF38 @ =0x022DB018
	mov r2, #6
	str r2, [r1, #8]
	bl ov00_022DAA24
	cmp r0, #0
	beq _022DAF1C
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #0xa
	str r1, [r0, #8]
	b _022DAF1C
_022DAD80:
	add r0, r3, #0xc
	bl ov00_022DAAF8
	cmp r0, #0
	mov r4, #0
	ldrne r0, _022DAF24 @ =0x02326CA8
	movne r1, #0xa
	strne r1, [r0, #8]
	ldr r8, _022DAF24 @ =0x02326CA8
	sub r1, r4, #1
	ldr r0, [r8]
	mov r5, r4
	mov r7, r4
	str r1, [r0, #0x78c]
_022DADB4:
	ldr r2, [r8]
	add r1, r2, r7
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _022DAE18
	ldrb r0, [r1, #0x78]
	tst r0, #2
	beq _022DAE18
	ldrb r0, [r1, #0x77]
	cmp r0, #3
	bhi _022DAE18
	add r0, r2, #0x32
	add r0, r0, r7
	bl ov00_022DAFBC
	cmp r0, #0
	beq _022DAE18
	ldr r1, [r8]
	add r0, r1, r7
	ldrh r0, [r0, #0x10]
	cmp r0, r5
	blo _022DAE18
	str r4, [r1, #0x78c]
	ldr r0, [r8]
	add r0, r0, r7
	ldrh r5, [r0, #0x10]
_022DAE18:
	add r4, r4, #1
	cmp r4, #0x10
	add r7, r7, #0x78
	blt _022DADB4
	ldr r1, _022DAF24 @ =0x02326CA8
	mov r2, #8
	ldr r0, _022DAF3C @ =0x022DB02C
	str r2, [r1, #8]
	bl ov00_022DA91C
	cmp r0, #0
	beq _022DAF1C
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #0xb
	str r1, [r0, #8]
	b _022DAF1C
_022DAE54:
	ldr r2, [r3, #0x78c]
	cmp r2, #0
	movlt r0, #0xb
	strlt r0, [r1, #8]
	blt _022DAF1C
	add r1, r3, #0x12
	mov r0, #0x78
	mla r0, r2, r0, r1
	ldr r1, [r3]
	mov r2, #0x20
	bl FUN_0207C4C8
	ldr r1, _022DAF24 @ =0x02326CA8
	mov r0, #0x78
	ldr r4, [r1]
	mov r2, #0x20
	ldr r1, [r4]
	ldr r3, [r4, #0x78c]
	add r4, r4, #0x56
	mla r0, r3, r0, r4
	add r1, r1, #0x20
	bl FUN_0207C4C8
	ldr r1, _022DAF24 @ =0x02326CA8
	mov r0, #0x78
	ldr r4, [r1]
	mov r2, #0xa
	ldr r5, [r4, #0x78c]
	ldr r3, [r4]
	mla r4, r5, r0, r4
	ldrb r4, [r4, #0x77]
	str r4, [r3, #0x40]
	ldr r4, [r1]
	ldr r1, [r4]
	ldr r3, [r4, #0x78c]
	add r4, r4, #0x32
	mla r0, r3, r0, r4
	add r1, r1, #0x44
	bl FUN_0207C4C8
	mov r6, #2
	b _022DAF1C
_022DAEF0:
	ldr r0, _022DAF40 @ =0x022DB040
	mov r2, #8
	str r2, [r1, #8]
	bl ov00_022DA91C
	cmp r0, #0
	beq _022DAF1C
	ldr r0, _022DAF24 @ =0x02326CA8
	mov r1, #0xb
	str r1, [r0, #8]
	b _022DAF1C
_022DAF18:
	mov r6, #3
_022DAF1C:
	mov r0, r6
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022DAF24: .4byte 0x02326CA8
_022DAF28: .4byte 0x022DAFF0
_022DAF2C: .4byte 0x022DB004
_022DAF30: .4byte 0x000082EA
_022DAF34: .4byte 0x00000BB8
_022DAF38: .4byte 0x022DB018
_022DAF3C: .4byte 0x022DB02C
_022DAF40: .4byte 0x022DB040
	arm_func_end ov00_022DAC0C

	arm_func_start ov00_022DAF44
ov00_022DAF44: @ 0x022DAF44
	ldr r0, _022DAF5C @ =0x02326CA8
	ldr r1, [r0, #8]
	cmp r1, #4
	moveq r1, #5
	streq r1, [r0, #8]
	bx lr
	.align 2, 0
_022DAF5C: .4byte 0x02326CA8
	arm_func_end ov00_022DAF44

	arm_func_start ov00_022DAF60
ov00_022DAF60: @ 0x022DAF60
	push {r3, lr}
	ldr r0, _022DAFB8 @ =0x02326CA8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022DAF8C
	mov r0, #1
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022DAFB8 @ =0x02326CA8
	mov r1, #0
	str r1, [r0, #4]
_022DAF8C:
	ldr r0, _022DAFB8 @ =0x02326CA8
	ldr r1, [r0]
	cmp r1, #0
	popeq {r3, pc}
	mov r0, #1
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022DAFB8 @ =0x02326CA8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DAFB8: .4byte 0x02326CA8
	arm_func_end ov00_022DAF60

	arm_func_start ov00_022DAFBC
ov00_022DAFBC: @ 0x022DAFBC
	mov r2, #0
_022DAFC0:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _022DAFD4
	cmp r1, #0x7e
	bls _022DAFDC
_022DAFD4:
	mov r0, #0
	bx lr
_022DAFDC:
	add r2, r2, #1
	cmp r2, #0xa
	blt _022DAFC0
	mov r0, #1
	bx lr
	arm_func_end ov00_022DAFBC
_022DAFF0:
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x02, 0x10, 0xA0, 0xE3, 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xA8, 0x6C, 0x32, 0x02, 0x08, 0x00, 0x9F, 0xE5, 0x04, 0x10, 0xA0, 0xE3, 0x08, 0x10, 0x80, 0xE5
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0xA8, 0x6C, 0x32, 0x02, 0x08, 0x00, 0x9F, 0xE5, 0x07, 0x10, 0xA0, 0xE3
	.byte 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xA8, 0x6C, 0x32, 0x02, 0x08, 0x00, 0x9F, 0xE5
	.byte 0x09, 0x10, 0xA0, 0xE3, 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1, 0xA8, 0x6C, 0x32, 0x02
	.byte 0x08, 0x00, 0x9F, 0xE5, 0x0B, 0x10, 0xA0, 0xE3, 0x08, 0x10, 0x80, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xA8, 0x6C, 0x32, 0x02

	arm_func_start ov00_022DB054
ov00_022DB054: @ 0x022DB054
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _022DB0CC @ =0x02000C34
	mov r5, #0
	bl FUN_02000B9C
	mov r0, r6
	bl ov00_022EE018
	mov r4, r0
	bl ov00_022EEAB4
	cmp r0, #0
	beq _022DB08C
	mov r0, r6
	bl ov00_022EE82C
	mov r5, #1
_022DB08C:
	cmp r4, #0
	bge _022DB0A4
	cmp r5, #0
	movne r4, #2
	moveq r4, #3
	b _022DB0B0
_022DB0A4:
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
_022DB0B0:
	ldr r0, _022DB0D0 @ =0x022E04F0
	ldr r1, _022DB0D4 @ =ov00_022E0520
	ldr r2, _022DB0D8 @ =0x022E0504
	ldr r3, _022DB0DC @ =0x022E0538
	bl ov00_022F5AC8
	mov r0, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DB0CC: .4byte 0x02000C34
_022DB0D0: .4byte 0x022E04F0
_022DB0D4: .4byte ov00_022E0520
_022DB0D8: .4byte 0x022E0504
_022DB0DC: .4byte 0x022E0538
	arm_func_end ov00_022DB054

	arm_func_start ov00_022DB0E0
ov00_022DB0E0: @ 0x022DB0E0
	mvn ip, r3
	tst r1, ip
	movne r0, #0
	bxne lr
	mvn r3, r3, lsl r2
	ldr ip, [r0]
	and r3, ip, r3
	orr r1, r3, r1, lsl r2
	str r1, [r0]
	mov r0, #1
	bx lr
	arm_func_end ov00_022DB0E0

	arm_func_start ov00_022DB10C
ov00_022DB10C: @ 0x022DB10C
	ldr r2, [r0]
	ldr r1, _022DB128 @ =0x000007FF
	ldr r0, [r0, #4]
	and r1, r2, r1
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	.align 2, 0
_022DB128: .4byte 0x000007FF
	arm_func_end ov00_022DB10C

	arm_func_start ov00_022DB12C
ov00_022DB12C: @ 0x022DB12C
	ldr r0, [r0, #8]
	bx lr
	arm_func_end ov00_022DB12C

	arm_func_start ov00_022DB134
ov00_022DB134: @ 0x022DB134
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	arm_func_end ov00_022DB134

	arm_func_start ov00_022DB148
ov00_022DB148: @ 0x022DB148
	ldr r0, [r0, #4]
	bx lr
	arm_func_end ov00_022DB148

	arm_func_start ov00_022DB150
ov00_022DB150: @ 0x022DB150
	push {r3, r4, r5, lr}
	ldr r3, _022DB174 @ =0x000007FF
	mov r4, r1
	mov r1, r2
	mov r2, #0
	mov r5, r0
	bl ov00_022DB0E0
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DB174: .4byte 0x000007FF
	arm_func_end ov00_022DB150

	arm_func_start ov00_022DB178
ov00_022DB178: @ 0x022DB178
	str r1, [r0, #8]
	bx lr
	arm_func_end ov00_022DB178

	arm_func_start ov00_022DB180
ov00_022DB180: @ 0x022DB180
	stmib r0, {r1, r2}
	bx lr
	arm_func_end ov00_022DB180

	arm_func_start ov00_022DB188
ov00_022DB188: @ 0x022DB188
	str r1, [r0, #4]
	bx lr
	arm_func_end ov00_022DB188

	arm_func_start ov00_022DB190
ov00_022DB190: @ 0x022DB190
	ldr r1, [r0]
	ldr r0, _022DB1A0 @ =0x001FFFFF
	and r0, r0, r1, lsr #11
	bx lr
	.align 2, 0
_022DB1A0: .4byte 0x001FFFFF
	arm_func_end ov00_022DB190

	arm_func_start ov00_022DB1A4
ov00_022DB1A4: @ 0x022DB1A4
	push {r3, lr}
	bl ov00_022DB190
	and r0, r0, #3
	pop {r3, pc}
	arm_func_end ov00_022DB1A4

	arm_func_start ov00_022DB1B4
ov00_022DB1B4: @ 0x022DB1B4
	push {r4, lr}
	mov r4, r0
	bl ov00_022DB1E4
	cmp r0, #0
	beq _022DB1DC
	mov r0, r4
	bl ov00_022DB21C
	cmp r0, #0
	movne r0, #1
	popne {r4, pc}
_022DB1DC:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022DB1B4

	arm_func_start ov00_022DB1E4
ov00_022DB1E4: @ 0x022DB1E4
	push {r4, lr}
	mov r4, r0
	bl ov00_022DB1A4
	cmp r0, #3
	bne _022DB214
	mov r0, r4
	bl ov00_022DB190
	and r0, r0, #4
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	pop {r4, pc}
_022DB214:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022DB1E4

	arm_func_start ov00_022DB21C
ov00_022DB21C: @ 0x022DB21C
	push {r3, lr}
	bl ov00_022DB190
	and r0, r0, #8
	cmp r0, #8
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	arm_func_end ov00_022DB21C

	arm_func_start ov00_022DB238
ov00_022DB238: @ 0x022DB238
	push {r3, lr}
	bl ov00_022DB190
	and r0, r0, #0x20
	cmp r0, #0x20
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	arm_func_end ov00_022DB238

	arm_func_start ov00_022DB1A4
ov00_022DB1A4: @ 0x022DB254
	ldr ip, _022DB25C @ =ov00_022DB1A4
	bx ip
	.align 2, 0
_022DB25C: .4byte ov00_022DB1A4
	arm_func_end ov00_022DB1A4

	arm_func_start ov00_022DB260
ov00_022DB260: @ 0x022DB260
	ldr ip, _022DB270 @ =ov00_022DB0E0
	ldr r3, _022DB274 @ =0x001FFFFF
	mov r2, #0xb
	bx ip
	.align 2, 0
_022DB270: .4byte ov00_022DB0E0
_022DB274: .4byte 0x001FFFFF
	arm_func_end ov00_022DB260

	arm_func_start ov00_022DB278
ov00_022DB278: @ 0x022DB278
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022DB190
	bic r1, r0, #3
	mov r0, r5
	orr r1, r1, r4
	bl ov00_022DB260
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022DB278

	arm_func_start ov00_022DB29C
ov00_022DB29C: @ 0x022DB29C
	push {r4, lr}
	mov r4, r0
	bl ov00_022DB1A4
	cmp r0, #3
	popne {r4, pc}
	mov r0, r4
	bl ov00_022DB190
	orr r1, r0, #4
	mov r0, r4
	bl ov00_022DB260
	pop {r4, pc}
	arm_func_end ov00_022DB29C

	arm_func_start ov00_022DB2C8
ov00_022DB2C8: @ 0x022DB2C8
	push {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _022DB2E4
	bl ov00_022DB190
	orr r1, r0, #8
	b _022DB2EC
_022DB2E4:
	bl ov00_022DB190
	bic r1, r0, #8
_022DB2EC:
	mov r0, r4
	bl ov00_022DB260
	pop {r4, pc}
	arm_func_end ov00_022DB2C8

	arm_func_start ov00_022DB2F8
ov00_022DB2F8: @ 0x022DB2F8
	push {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _022DB314
	bl ov00_022DB190
	orr r1, r0, #0x10
	b _022DB31C
_022DB314:
	bl ov00_022DB190
	bic r1, r0, #0x10
_022DB31C:
	mov r0, r4
	bl ov00_022DB260
	pop {r4, pc}
	arm_func_end ov00_022DB2F8

	arm_func_start ov00_022DB328
ov00_022DB328: @ 0x022DB328
	push {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _022DB344
	bl ov00_022DB190
	orr r1, r0, #0x20
	b _022DB34C
_022DB344:
	bl ov00_022DB190
	bic r1, r0, #0x20
_022DB34C:
	mov r0, r4
	bl ov00_022DB260
	pop {r4, pc}
	arm_func_end ov00_022DB328

	arm_func_start ov00_022DB358
ov00_022DB358: @ 0x022DB358
	push {r4, lr}
	sub sp, sp, #0x170
	mov r4, r0
	str r4, [sp]
	str r1, [sp, #4]
	cmp r2, #0
	beq _022DB37C
	cmp r2, #1
	b _022DB3A0
_022DB37C:
	add r0, sp, #0x70
	mov r1, #7
	bl FUN_02084FB8
	add r0, sp, #0x70
	add r1, sp, #0
	mov r2, #8
	bl FUN_02085130
	and r0, r0, #0x7f
	b _022DB3D0
_022DB3A0:
	add r0, sp, #0x18
	bl FUN_020800FC
	add r0, sp, #0x18
	add r1, sp, #0
	mov r2, #8
	bl FUN_0208013C
	add r0, sp, #8
	add r1, sp, #0x18
	bl FUN_02080204
	ldrb r0, [sp, #8]
	asr r0, r0, #1
	and r0, r0, #0x7f
_022DB3D0:
	orr r1, r0, #0
	orr r0, r4, #0
	add sp, sp, #0x170
	pop {r4, pc}
	arm_func_end ov00_022DB358

	arm_func_start ov00_022DB3E0
ov00_022DB3E0: @ 0x022DB3E0
	ldr ip, _022DB3FC @ =ov00_022DB400
	mov r3, r0
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x24]
	mov r3, #0
	bx ip
	.align 2, 0
_022DB3FC: .4byte ov00_022DB400
	arm_func_end ov00_022DB3E0

	arm_func_start ov00_022DB400
ov00_022DB400: @ 0x022DB400
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	sub ip, r0, #1
	and ip, r5, ip
	mov r4, r1
	cmp ip, #0
	pople {r3, r4, r5, pc}
	mov r1, r2
	mov r0, ip
	mov r2, r3
	bl ov00_022DB358
	cmp r4, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022DB400

	arm_func_start ov00_022DB444
ov00_022DB444: @ 0x022DB444
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #0
_022DB458:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov00_022DB400
	cmp r0, #0
	beq _022DB484
	mov r0, #0
	sub r0, r0, #1
	and r0, r7, r0
	pop {r3, r4, r5, r6, r7, pc}
_022DB484:
	add r4, r4, #1
	cmp r4, #2
	blt _022DB458
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022DB444

	arm_func_start ov00_022DB498
ov00_022DB498: @ 0x022DB498
	push {r3, lr}
	str r2, [sp]
	mov r3, r1
	ldr r2, _022DB4B4 @ =0x02318B8C
	mov r1, #0xd
	bl FUN_0207911C
	pop {r3, pc}
	.align 2, 0
_022DB4B4: .4byte 0x02318B8C
	arm_func_end ov00_022DB498

	arm_func_start ov00_022DB4B8
ov00_022DB4B8: @ 0x022DB4B8
	push {r3, r4, r5, r6, r7, lr}
	ldr lr, _022DB520 @ =0x66666667
	add r4, r2, #4
	smull ip, r2, lr, r4
	lsr ip, r4, #0x1f
	add r2, ip, r2, asr #1
	cmp r2, #0
	ldr r7, _022DB524 @ =0x02318B94
	mov r6, #0
	ble _022DB514
	add r4, r3, r2
	sub r4, r4, #1
	mov ip, #0x1f
_022DB4EC:
	and r5, r0, ip
	ldrsb r5, [r7, r5]
	lsr r0, r0, #5
	lsr lr, r1, #5
	strb r5, [r4, -r6]
	add r6, r6, #1
	orr r0, r0, r1, lsl #27
	mov r1, lr
	cmp r6, r2
	blt _022DB4EC
_022DB514:
	mov r0, #0
	strb r0, [r3, r2]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DB520: .4byte 0x66666667
_022DB524: .4byte 0x02318B94
	arm_func_end ov00_022DB4B8

	arm_func_start ov00_022DB528
ov00_022DB528: @ 0x022DB528
	push {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl ov00_022DB10C
	add r3, sp, #0x29
	mov r2, #0x2b
	bl ov00_022DB4B8
	mov r0, r6
	bl ov00_022DB12C
	mov r1, #0
	mov r2, #0x20
	add r3, sp, #0x14
	bl ov00_022DB4B8
	lsr r1, r4, #0x18
	and r1, r1, #0xff
	str r1, [sp]
	lsr r1, r4, #0x10
	and r1, r1, #0xff
	str r1, [sp, #4]
	lsr r1, r4, #8
	and r1, r1, #0xff
	str r1, [sp, #8]
	and r1, r4, #0xff
	str r1, [sp, #0xc]
	add r2, sp, #0x14
	str r2, [sp, #0x10]
	ldr r2, _022DB5B4 @ =0x02318BB8
	mov r0, r5
	mov r1, #0x15
	add r3, sp, #0x29
	bl FUN_0207911C
	add sp, sp, #0x40
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DB5B4: .4byte 0x02318BB8
	arm_func_end ov00_022DB528

	arm_func_start ov00_022DB5B8
ov00_022DB5B8: @ 0x022DB5B8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r4, r1
	mov r1, #0
	mov r2, #0x40
	mov r5, r0
	bl FUN_0207C40C
	mov r0, #0x40
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #0x1c]
	add r0, r5, #4
	str r4, [r5, #0x24]
	bl ov00_022DB634
	add r0, r5, #0x10
	mov r1, #0
	bl ov00_022DB278
	ldr r1, _022DB630 @ =0xEDB88320
	add r0, sp, #0
	bl FUN_020850B4
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x3c
	bl FUN_02085180
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x20]
	orr r0, r0, #1
	str r0, [r5, #0x20]
	add sp, sp, #0x400
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DB630: .4byte 0xEDB88320
	arm_func_end ov00_022DB5B8

	arm_func_start ov00_022DB634
ov00_022DB634: @ 0x022DB634
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r6, r0
	add r0, sp, #0
	bl FUN_0207BB50
	mov r3, #1
	add r2, sp, #0
_022DB650:
	add r0, r2, r3, lsl #2
	ldr r1, [r2, r3, lsl #2]
	ldr r0, [r0, #-4]
	eor r0, r1, r0
	str r0, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #8
	blo _022DB650
	add r0, sp, #0x20
	ldr r5, [sp, #0x1c]
	mov r4, #0
	bl ov00_022EEA60
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022DB6A0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, r6
	bl ov00_022DB150
	b _022DB6B0
_022DB6A0:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r6
	bl ov00_022DB150
_022DB6B0:
	ldr r0, _022DB6EC @ =0x6C078965
	ldr r1, _022DB6F0 @ =0x5D588B65
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	ldr r1, _022DB6F4 @ =0x00269EC3
	mla r2, r4, r0, r2
	adds r0, r3, r1
	mov r0, r6
	adc r1, r2, #0
	bl ov00_022DB178
	mov r0, r6
	mov r1, #1
	bl ov00_022DB278
	add sp, sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022DB6EC: .4byte 0x6C078965
_022DB6F0: .4byte 0x5D588B65
_022DB6F4: .4byte 0x00269EC3
	arm_func_end ov00_022DB634

	arm_func_start ov00_022DB6F8
ov00_022DB6F8: @ 0x022DB6F8
	push {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl ov00_022EEA60
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r4
	beq _022DB740
	bl ov00_022DB10C
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	add sp, sp, #0x14
	movne r0, #0
	pop {r3, r4, pc}
_022DB740:
	bl ov00_022DB10C
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	pop {r3, r4, pc}
	arm_func_end ov00_022DB6F8

	arm_func_start ov00_022DB764
ov00_022DB764: @ 0x022DB764
	push {r3, lr}
	bl ov00_022DB1A4
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	arm_func_end ov00_022DB764

	arm_func_start ov00_022DB77C
ov00_022DB77C: @ 0x022DB77C
	ldr ip, _022DB788 @ =ov00_022DB764
	add r0, r0, #0x10
	bx ip
	.align 2, 0
_022DB788: .4byte ov00_022DB764
	arm_func_end ov00_022DB77C

	arm_func_start ov00_022DB78C
ov00_022DB78C: @ 0x022DB78C
	push {r3, lr}
	bl ov00_022DB1A4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
	arm_func_end ov00_022DB78C

	arm_func_start ov00_022DB78C
ov00_022DB78C: @ 0x022DB7A4
	ldr ip, _022DB7AC @ =ov00_022DB78C
	bx ip
	.align 2, 0
_022DB7AC: .4byte ov00_022DB78C
	arm_func_end ov00_022DB78C

	arm_func_start ov00_022DB5B8
ov00_022DB5B8: @ 0x022DB7B0
	ldr ip, _022DB7B8 @ =ov00_022DB5B8
	bx ip
	.align 2, 0
_022DB7B8: .4byte ov00_022DB5B8
	arm_func_end ov00_022DB5B8

	arm_func_start ov00_022DB7BC
ov00_022DB7BC: @ 0x022DB7BC
	push {r4, lr}
	sub sp, sp, #0x400
	ldr r1, _022DB7FC @ =0xEDB88320
	mov r4, r0
	add r0, sp, #0
	bl FUN_020850B4
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl FUN_02085180
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x400
	pop {r4, pc}
	.align 2, 0
_022DB7FC: .4byte 0xEDB88320
	arm_func_end ov00_022DB7BC

	arm_func_start ov00_022DB800
ov00_022DB800: @ 0x022DB800
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	bl ov00_022DB764
	cmp r0, #0
	beq _022DB828
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #1
	popgt {r4, pc}
_022DB828:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022DB800

	arm_func_start ov00_022DB830
ov00_022DB830: @ 0x022DB830
	push {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x10
	bl ov00_022DB1A4
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	popeq {r3, r4, pc}
	add r0, sp, #0
	bl ov00_022EEA60
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	popeq {r3, r4, pc}
	add r0, r4, #0x10
	bl ov00_022DB10C
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	pop {r3, r4, pc}
	arm_func_end ov00_022DB830

	arm_func_start ov00_022DB898
ov00_022DB898: @ 0x022DB898
	push {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	add r3, r4, #0x10
	mov ip, r2
	ldm r1, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	ldr r1, _022DB8EC @ =0xEDB88320
	add r0, sp, #0
	str ip, [r4, #0x1c]
	bl FUN_020850B4
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl FUN_02085180
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x20]
	orr r0, r0, #1
	str r0, [r4, #0x20]
	add sp, sp, #0x400
	pop {r4, pc}
	.align 2, 0
_022DB8EC: .4byte 0xEDB88320
	arm_func_end ov00_022DB898

	arm_func_start ov00_022DB8F0
ov00_022DB8F0: @ 0x022DB8F0
	ldr ip, _022DB8F8 @ =FUN_022DB8FC
	bx ip
	.align 2, 0
_022DB8F8: .4byte FUN_022DB8FC
	arm_func_end ov00_022DB8F0

	arm_func_start FUN_022DB8FC
FUN_022DB8FC: @ 0x022DB8FC
	ldr r0, [r0, #0x20]
	and r0, r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_022DB8FC

	arm_func_start FUN_022DB914
FUN_022DB914: @ 0x022DB914
	ldr ip, _022DB91C @ =FUN_022DB920
	bx ip
	.align 2, 0
_022DB91C: .4byte FUN_022DB920
	arm_func_end FUN_022DB914

	arm_func_start FUN_022DB920
FUN_022DB920: @ 0x022DB920
	push {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x20]
	add r0, sp, #0
	bic r2, r1, #1
	ldr r1, _022DB960 @ =0xEDB88320
	str r2, [r4, #0x20]
	bl FUN_020850B4
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl FUN_02085180
	str r0, [r4, #0x3c]
	add sp, sp, #0x400
	pop {r4, pc}
	.align 2, 0
_022DB960: .4byte 0xEDB88320
	arm_func_end FUN_022DB920

	arm_func_start ov00_022DB964
ov00_022DB964: @ 0x022DB964
	push {r4, lr}
	mov r4, r0
	bl ov00_022DB1A4
	cmp r0, #2
	movne r0, #0
	movne r1, r0
	popne {r4, pc}
	mov r0, r4
	bl ov00_022DB134
	pop {r4, pc}
	arm_func_end ov00_022DB964

	arm_func_start ov00_022DB98C
ov00_022DB98C: @ 0x022DB98C
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov00_022DB1A4
	cmp r0, #1
	beq _022DB9DC
	cmp r0, #2
	beq _022DB9BC
	cmp r0, #3
	beq _022DB9D0
	b _022DB9E4
_022DB9BC:
	mov r0, r4
	bl ov00_022DB134
	ldr r2, [r5, #0x24]
	bl ov00_022DB444
	pop {r3, r4, r5, pc}
_022DB9D0:
	mov r0, r4
	bl ov00_022DB148
	pop {r3, r4, r5, pc}
_022DB9DC:
	mvn r0, #0
	pop {r3, r4, r5, pc}
_022DB9E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022DB98C

	arm_func_start ov00_022DB9EC
ov00_022DB9EC: @ 0x022DB9EC
	push {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x1c]
	mov r2, #0
	mov r1, r2
	cmp r0, #0
	beq _022DBA14
	ldr r1, [r3, #0x24]
	bl ov00_022DB358
	mov r2, r0
_022DBA14:
	mov r0, r2
	pop {r3, pc}
	arm_func_end ov00_022DB9EC

	arm_func_start ov00_022DBA1C
ov00_022DBA1C: @ 0x022DBA1C
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0xc
	bl FUN_0207C40C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022DB180
	mov r0, r6
	mov r1, #2
	bl ov00_022DB278
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022DBA1C

	arm_func_start ov00_022DBA58
ov00_022DBA58: @ 0x022DBA58
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl FUN_0207C40C
	mov r0, r5
	bl ov00_022DB77C
	cmp r0, #0
	addeq r0, r5, #4
	ldmeq r0, {r0, r1, r2}
	stmeq r4, {r0, r1, r2}
	popeq {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl ov00_022DB188
	mov r0, r4
	mov r1, #3
	bl ov00_022DB278
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022DBA58

	arm_func_start ov00_022DBAAC
ov00_022DBAAC: @ 0x022DBAAC
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r2, #0xc
	bl FUN_0207C40C
	mov r0, r5
	mov r1, r4
	bl ov00_022DB188
	mov r0, r5
	mov r1, #3
	bl ov00_022DB278
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022DBAAC

	arm_func_start ov00_022DBAE0
ov00_022DBAE0: @ 0x022DBAE0
	ldr ip, _022DBAF4 @ =ov00_022DB528
	mov r3, r0
	mov r0, r1
	ldr r1, [r3, #0x24]
	bx ip
	.align 2, 0
_022DBAF4: .4byte ov00_022DB528
	arm_func_end ov00_022DBAE0

	arm_func_start ov00_022DBAF8
ov00_022DBAF8: @ 0x022DBAF8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl ov00_022DB1A4
	mov r5, r0
	mov r0, r4
	bl ov00_022DB1A4
	cmp r5, r0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	cmp r5, #3
	bne _022DBB4C
	mov r0, r7
	bl ov00_022DB148
	mov r5, r0
	mov r0, r4
	bl ov00_022DB148
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022DBB4C:
	cmp r5, #1
	bne _022DBBA0
	mov r0, r7
	bl ov00_022DB10C
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl ov00_022DB10C
	cmp r6, r1
	cmpeq r5, r0
	bne _022DBB98
	mov r0, r7
	bl ov00_022DB12C
	mov r5, r0
	mov r0, r4
	bl ov00_022DB12C
	cmp r5, r0
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, pc}
_022DBB98:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022DBBA0:
	cmp r5, #2
	bne _022DBBD4
	mov r0, r7
	bl ov00_022DB134
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl ov00_022DB134
	cmp r6, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022DBBD4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022DBAF8

	arm_func_start ov00_022DBBDC
ov00_022DBBDC: @ 0x022DBBDC
	push {r4, r5, lr}
	sub sp, sp, #0x24
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov00_022DB1A4
	cmp r0, #3
	mov r0, r4
	bne _022DBC0C
	bl ov00_022DB1B4
	add sp, sp, #0x24
	pop {r4, r5, pc}
_022DBC0C:
	bl ov00_022DB1A4
	cmp r0, #2
	mov r0, r4
	bne _022DBC3C
	bl ov00_022DB134
	mov r3, r0
	mov r2, r1
	add r0, sp, #0x15
	mov r1, r3
	bl ov00_022DB498
	add sp, sp, #0x24
	pop {r4, r5, pc}
_022DBC3C:
	bl ov00_022DB1A4
	cmp r0, #1
	addne sp, sp, #0x24
	popne {r4, r5, pc}
	ldr r1, [r5, #0x24]
	add r2, sp, #0
	mov r0, r4
	bl ov00_022DB528
	add sp, sp, #0x24
	pop {r4, r5, pc}
	arm_func_end ov00_022DBBDC

	arm_func_start ov00_022DBC64
ov00_022DBC64: @ 0x022DBC64
	push {r4, lr}
	mov r4, r0
	add r1, r4, #4
	bl ov00_022DBBDC
	mov r0, r4
	add r1, r4, #0x10
	bl ov00_022DBBDC
	pop {r4, pc}
	arm_func_end ov00_022DBC64

	arm_func_start ov00_022DBC84
ov00_022DBC84: @ 0x022DBC84
	ldr r1, _022DBC90 @ =0x02318BC8
	str r0, [r1]
	bx lr
	.align 2, 0
_022DBC90: .4byte 0x02318BC8
	arm_func_end ov00_022DBC84
_022DBC94:
	.byte 0x04, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x1E, 0xFF, 0x2F, 0xE1
	.byte 0xC8, 0x8B, 0x31, 0x02

	arm_func_start ov00_022DBCA4
ov00_022DBCA4: @ 0x022DBCA4
	push {r3, r4, r5, lr}
	ldr r2, _022DBDB8 @ =0x02326CB4
	mov r5, r0
	ldr r0, [r2, #8]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldr r0, _022DBDBC @ =0x02318C0C
	ldr r1, _022DBDC0 @ =0x000013F4
	blx r2
	ldr r1, _022DBDB8 @ =0x02326CB4
	cmp r0, #0
	str r0, [r1, #8]
	moveq r0, #2
	popeq {r3, r4, r5, pc}
	ldr r2, _022DBDC0 @ =0x000013F4
	mov r1, #0
	bl FUN_0207C40C
	ldr r3, _022DBDB8 @ =0x02326CB4
	mov r1, #0
	ldr r0, [r3, #8]
	mov r2, #0x1c4
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r1, [r3]
	ldr r0, [r3, #8]
	add r0, r0, #8
	add r0, r0, #0x1000
	bl FUN_0207C40C
	ldr r1, _022DBDB8 @ =0x02326CB4
	ldr r2, _022DBDC4 @ =0x00004E84
	ldr r0, [r1, #8]
	mov r4, #4
	add r0, r0, #0x1000
	str r2, [r0, #8]
	ldr lr, [r1, #8]
	add r0, lr, #0x1cc
	add ip, r0, #0x1000
_022DBD44:
	ldm r5!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _022DBD44
	ldm r5, {r0, r1}
	stm ip, {r0, r1}
	add r0, lr, #0x1100
	mov r2, #0
	strh r2, [r0, #0xfe]
	ldr r1, _022DBDB8 @ =0x02326CB4
	mov r0, #1
	ldr r1, [r1, #8]
	add r1, r1, #0x1000
	strb r2, [r1, #0x20b]
	bl ov00_022DC06C
	ldr r2, _022DBDB8 @ =0x02326CB4
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r2, #4]
	bl ov00_022DBDC8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DBDB8: .4byte 0x02326CB4
_022DBDBC: .4byte 0x02318C0C
_022DBDC0: .4byte 0x000013F4
_022DBDC4: .4byte 0x00004E84
	arm_func_end ov00_022DBCA4

	arm_func_start ov00_022DBDC8
ov00_022DBDC8: @ 0x022DBDC8
	push {r3, lr}
	sub sp, sp, #8
	ldr r0, _022DBE70 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A030
	ldr r1, _022DBE70 @ =0x02326CB4
	mov r2, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r1, [r1, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _022DBE24
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl FUN_02079830
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, pc}
_022DBE24:
	ldr r0, _022DBE70 @ =0x02326CB4
	mov r3, #0x1000
	ldr lr, [r0, #8]
	ldr r1, _022DBE74 @ =ov00_022DC17C
	add r0, lr, #0x318
	ldr r2, _022DBE78 @ =0x02326CBC
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, lr, #0x1000
	str ip, [sp, #4]
	bl FUN_02079560
	ldr r0, _022DBE70 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl FUN_02079940
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022DBE70: .4byte 0x02326CB4
_022DBE74: .4byte ov00_022DC17C
_022DBE78: .4byte 0x02326CBC
	arm_func_end ov00_022DBDC8

	arm_func_start ov00_022DBE7C
ov00_022DBE7C: @ 0x022DBE7C
	push {r3, lr}
	ldr r0, _022DBF04 @ =0x02326CB4
	ldr r0, [r0, #8]
	cmp r0, #0
	popeq {r3, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r1, _022DBF04 @ =0x02326CB4
	mov r2, #1
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	ldr r0, _022DBF04 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _022DBEDC
	bl ov00_022DD34C
_022DBEDC:
	ldr r0, _022DBF04 @ =0x02326CB4
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	popeq {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl FUN_02079800
	pop {r3, pc}
	.align 2, 0
_022DBF04: .4byte 0x02326CB4
	arm_func_end ov00_022DBE7C

	arm_func_start ov00_022DBF08
ov00_022DBF08: @ 0x022DBF08
	push {r4, lr}
	ldr r0, _022DBF58 @ =0x02326CB4
	ldr r0, [r0, #8]
	cmp r0, #0
	popeq {r4, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r4, [r1, #0x210]
	cmp r0, #0
	beq _022DBF34
	bl ov00_022DD890
_022DBF34:
	ldr r1, _022DBF58 @ =0x02326CB4
	ldr r0, _022DBF5C @ =0x02318C1C
	ldr r1, [r1, #8]
	mov r2, #0
	blx r4
	ldr r0, _022DBF58 @ =0x02326CB4
	mov r1, #0
	str r1, [r0, #8]
	pop {r4, pc}
	.align 2, 0
_022DBF58: .4byte 0x02326CB4
_022DBF5C: .4byte 0x02318C1C
	arm_func_end ov00_022DBF08

	arm_func_start ov00_022DBF60
ov00_022DBF60: @ 0x022DBF60
	push {r3, lr}
	ldr r0, _022DBF8C @ =0x02326CB4
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	popeq {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl FUN_02079800
	pop {r3, pc}
	.align 2, 0
_022DBF8C: .4byte 0x02326CB4
	arm_func_end ov00_022DBF60

	arm_func_start ov00_022DBF90
ov00_022DBF90: @ 0x022DBF90
	push {r4, lr}
	ldr r0, _022DBFD8 @ =0x02326CB4
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0x16
	popeq {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r0, _022DBFD8 @ =0x02326CB4
	ldr r1, [r0, #8]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl FUN_0207A0CC
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022DBFD8: .4byte 0x02326CB4
	arm_func_end ov00_022DBF90

	arm_func_start ov00_022DBFDC
ov00_022DBFDC: @ 0x022DBFDC
	push {r4, lr}
	ldr r1, _022DC058 @ =0x02326CB4
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _022DC000
	mov r1, #0
	mov r2, #0x1c4
	bl FUN_0207C40C
_022DC000:
	ldr r0, _022DC058 @ =0x02326CB4
	mov r1, r4
	ldr r0, [r0, #8]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl FUN_0207C4C8
	ldr r1, [r4]
	ldr r0, _022DC05C @ =0x00004E20
	cmp r1, r0
	blt _022DC038
	ldr r0, _022DC060 @ =0x00007530
	cmp r1, r0
	blt _022DC040
_022DC038:
	ldr r0, _022DC064 @ =0x00005206
	str r0, [r4]
_022DC040:
	ldr r1, [r4]
	ldr r0, _022DC068 @ =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	pop {r4, pc}
	.align 2, 0
_022DC058: .4byte 0x02326CB4
_022DC05C: .4byte 0x00004E20
_022DC060: .4byte 0x00007530
_022DC064: .4byte 0x00005206
_022DC068: .4byte 0x00004E84
	arm_func_end ov00_022DBFDC

	arm_func_start ov00_022DC06C
ov00_022DC06C: @ 0x022DC06C
	push {r4, lr}
	ldr r1, _022DC164 @ =0x02318BC8
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _022DC168 @ =0x02318C2C
	bl FUN_0208982C
	cmp r0, #0
	ldrne r0, _022DC164 @ =0x02318BC8
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _022DC16C @ =0x02326CB4
	ldr r2, _022DC164 @ =0x02318BC8
	ldr r0, [r0, #8]
	ldr r1, _022DC170 @ =0x02318BC8
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl ov00_022DD0DC
	cmp r0, #0
	movne r0, #4
	popne {r4, pc}
	cmp r4, #1
	bne _022DC0DC
	ldr r0, _022DC174 @ =0x02326CC0
	bl ov00_022ED468
_022DC0DC:
	ldr r0, _022DC16C @ =0x02326CB4
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl ov00_022DC8D0
	ldr r2, _022DC16C @ =0x02326CB4
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	popne {r4, pc}
	ldr r0, [r0, #0x314]
	bl ov00_022DD1F8
	cmp r0, #0
	movne r0, #4
	popne {r4, pc}
	ldr r0, _022DC178 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	ldr r1, _022DC16C @ =0x02326CB4
	ldr r2, [r1, #8]
	sub r1, r0, #1
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	bl ov00_022DD290
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022DC164: .4byte 0x02318BC8
_022DC168: .4byte 0x02318C2C
_022DC16C: .4byte 0x02326CB4
_022DC170: .4byte 0x02318BC8
_022DC174: .4byte 0x02326CC0
_022DC178: .4byte 0x022B966C
	arm_func_end ov00_022DC06C

	arm_func_start ov00_022DC17C
ov00_022DC17C: @ 0x022DC17C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
_022DC184:
	ldr r0, _022DC420 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DC1B0
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
_022DC1B0:
	ldr r2, _022DC420 @ =0x02326CB4
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _022DC24C
	ldr r1, _022DC424 @ =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _022DC200
	mov r0, #0x14
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC200:
	cmp r8, #2
	ble _022DC23C
	cmp r0, #2
	bne _022DC21C
	mov r0, #9
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC21C:
	cmp r0, #3
	bne _022DC230
	mov r0, #0xb
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC230:
	mov r0, #0xd
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC23C:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
	b _022DC2BC
_022DC24C:
	bl ov00_022DC430
	cmp r0, #0x10
	beq _022DC274
	cmp r0, #0x11
	beq _022DC298
	cmp r0, #0x15
	bne _022DC2A0
	mov r0, #0x15
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC274:
	cmp r8, #2
	ble _022DC288
	mov r0, #0x10
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC288:
	mov r0, #0
	add r8, r8, #1
	str r0, [sp]
	b _022DC2BC
_022DC298:
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC2A0:
	cmp r8, #2
	blt _022DC2B0
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC2B0:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
_022DC2BC:
	bl FUN_0207AE44
	mov sb, r0
	mov sl, r1
	bl FUN_0207AE44
	subs r2, r0, sb
	sbc r0, r1, sl
	lsl r1, r0, #6
	orr r1, r1, r2, lsr #26
	lsl r0, r2, #6
	ldr r2, _022DC428 @ =0x000082EA
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	ldr r7, _022DC42C @ =0x00001388
	cmpeq r0, r7
	bhs _022DC39C
	mov fp, #0
	ldr r6, _022DC428 @ =0x000082EA
	ldr r5, _022DC420 @ =0x02326CB4
	mov r4, fp
_022DC30C:
	ldr r0, [r5, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _022DC358
	ldr r2, _022DC424 @ =0x00004E84
	ldr r1, _022DC420 @ =0x02326CB4
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	mov r0, #0x14
	bl ov00_022DCA74
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC358:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	mov r0, r7
	bl FUN_02079B14
	bl FUN_0207AE44
	subs r2, r0, sb
	sbc r0, r1, sl
	lsl r1, r0, #6
	orr r1, r1, r2, lsr #26
	lsl r0, r2, #6
	mov r2, r6
	mov r3, fp
	bl FUN_0208FE3C
	cmp r1, r4
	cmpeq r0, r7
	blo _022DC30C
_022DC39C:
	ldr r0, _022DC420 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl ov00_022DD890
	ldr r0, _022DC420 @ =0x02326CB4
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r0, [sp]
	bl ov00_022DC06C
	ldr r2, _022DC420 @ =0x02326CB4
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r3, [r2, #8]
	add r0, r3, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022DC40C
	ldr r1, _022DC424 @ =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DC40C:
	add r0, r3, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	b _022DC184
_022DC41C:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_022DC420: .4byte 0x02326CB4
_022DC424: .4byte 0x00004E84
_022DC428: .4byte 0x000082EA
_022DC42C: .4byte 0x00001388
	arm_func_end ov00_022DC17C

	arm_func_start ov00_022DC430
ov00_022DC430: @ 0x022DC430
	push {r3, r4, r5, lr}
	ldr r0, _022DC5E8 @ =0x02326CB4
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r4, [r2, #0x20c]
	ldr r5, [r2, #0x210]
	bl ov00_022DE068
	cmp r0, #1
	beq _022DC478
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC5EC @ =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC478:
	bl ov00_022DC608
	cmp r0, #0
	movne r0, #0xe
	popne {r3, r4, r5, pc}
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r1, _022DC5EC @ =0x00004E84
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r2, [r0, #8]
	cmp r2, r1
	bge _022DC538
	sub r0, r1, #0x62
	cmp r2, r0
	bne _022DC530
	ldr r0, _022DC5F0 @ =0x02318C4C
	ldr r1, _022DC5F4 @ =0x0000071F
	blx r4
	movs r4, r0
	bne _022DC4E0
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC5EC @ =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #2
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC4E0:
	add r1, r4, #0x1f
	ldr r0, _022DC5F8 @ =0x02326CC0
	bic r1, r1, #0x1f
	bl ov00_022EE870
	cmp r0, #1
	mov r2, #0
	beq _022DC524
	ldr r0, _022DC5FC @ =0x02318C5C
	mov r1, r4
	blx r5
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC5EC @ =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC524:
	ldr r0, _022DC5FC @ =0x02318C5C
	mov r1, r4
	blx r5
_022DC530:
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_022DC538:
	add r0, r1, #4
	cmp r2, r0
	beq _022DC554
	add r0, r1, #8
	cmp r2, r0
	beq _022DC578
	b _022DC5E0
_022DC554:
	ldr r0, _022DC5F8 @ =0x02326CC0
	bl ov00_022EE8C0
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC600 @ =0x00004E88
	ldr r1, [r0, #8]
	mov r0, #0x10
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC578:
	ldr r0, _022DC5F0 @ =0x02318C4C
	mov r1, #0x700
	blx r4
	movs r4, r0
	bne _022DC5A8
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC604 @ =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC5A8:
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	bl ov00_022EE82C
	ldr r0, _022DC5FC @ =0x02318C5C
	mov r1, r4
	mov r2, #0
	blx r5
	ldr r0, _022DC5E8 @ =0x02326CB4
	ldr r2, _022DC604 @ =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC5E0:
	mov r0, #0x12
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DC5E8: .4byte 0x02326CB4
_022DC5EC: .4byte 0x00004E84
_022DC5F0: .4byte 0x02318C4C
_022DC5F4: .4byte 0x0000071F
_022DC5F8: .4byte 0x02326CC0
_022DC5FC: .4byte 0x02318C5C
_022DC600: .4byte 0x00004E88
_022DC604: .4byte 0x00004E8C
	arm_func_end ov00_022DC430

	arm_func_start ov00_022DC608
ov00_022DC608: @ 0x022DC608
	push {r3, r4, r5, lr}
	ldr r0, _022DC8A0 @ =0x02326CB4
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _022DC8A4 @ =0x02318C68
	bl ov00_022DE308
	str r0, [sp]
	cmp r0, #0
	beq _022DC63C
	bl ov00_022DF6F4
_022DC63C:
	ldr r0, _022DC8A0 @ =0x02326CB4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _022DC8A8 @ =0x022BCA70
	str r2, [sp]
	str r2, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _022DC8AC @ =0x02318C70
	bl ov00_022DE308
	bl FUN_0208B360
	ldr r1, _022DC8A8 @ =0x022BCA70
	ldr r1, [r1]
	cmp r1, #0x22
	bne _022DC694
	ldr r0, _022DC8A0 @ =0x02326CB4
	ldr r2, _022DC8B0 @ =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xc
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC694:
	cmp r0, #0xc8
	beq _022DC6BC
	ldr r1, _022DC8A0 @ =0x02326CB4
	add r0, r0, #0x1d8
	ldr r1, [r1, #8]
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_022DC6BC:
	ldr r0, _022DC8A0 @ =0x02326CB4
	ldr r1, _022DC8B4 @ =0x02318C7C
	ldr r2, [r0, #8]
	mov r3, #4
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov00_022DE360
	cmp r0, #0
	bgt _022DC704
	ldr r0, _022DC8A0 @ =0x02326CB4
	ldr r2, _022DC8B0 @ =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	pop {r3, r4, r5, pc}
_022DC704:
	ldr r0, _022DC8A0 @ =0x02326CB4
	add r1, sp, #0
	ldr r0, [r0, #8]
	mov r2, #0xa
	add r0, r0, #0xc
	add r0, r0, #0x1000
	bl FUN_0208B298
	ldr r1, _022DC8A0 @ =0x02326CB4
	mov r4, r0
	ldr r5, [r1, #8]
	add r0, r5, #0xc
	add r0, r0, #0x1000
	bl FUN_02089678
	add r1, r5, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	beq _022DC764
	ldr r1, _022DC8B0 @ =0x00004E85
	add r0, r5, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_022DC764:
	add r0, r4, #0xe20
	add r1, r0, #0x4000
	add r0, r5, #0x1000
	str r1, [r0, #8]
	cmp r4, #0x64
	bge _022DC898
	ldr r5, _022DC8A0 @ =0x02326CB4
	mov r0, #0
	ldr r2, [r5, #8]
	ldr r1, _022DC8B8 @ =0x02318C88
	add r2, r2, #0x1000
	strb r0, [r2, #0x52]
	ldr r2, [r5, #8]
	ldr r3, _022DC8BC @ =0x0000012D
	add r2, r2, #0x1000
	strb r0, [r2, #0x1f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x17f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x10]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x188]
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl ov00_022DE360
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _022DC8C0 @ =0x02318C90
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	mov r3, #0x33
	add r2, r2, #0x1000
	bl ov00_022DE360
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _022DC8C4 @ =0x02318C98
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	mov r3, #9
	add r2, r2, #0x1100
	bl ov00_022DE360
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _022DC8C8 @ =0x02318CA4
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	mov r3, #0xf
	add r2, r2, #0x1000
	bl ov00_022DE360
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _022DC8CC @ =0x02318CB0
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	mov r3, #0x41
	add r2, r2, #0x1000
	bl ov00_022DE3B4
	mov r1, r5
	ldr r0, [r1, #8]
	mov r2, #0
	add r0, r0, #0x1000
	cmp r4, #0x28
	strb r2, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r1]
	moveq r0, #2
	streq r0, [r1]
_022DC898:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DC8A0: .4byte 0x02326CB4
_022DC8A4: .4byte 0x02318C68
_022DC8A8: .4byte 0x022BCA70
_022DC8AC: .4byte 0x02318C70
_022DC8B0: .4byte 0x00004E85
_022DC8B4: .4byte 0x02318C7C
_022DC8B8: .4byte 0x02318C88
_022DC8BC: .4byte 0x0000012D
_022DC8C0: .4byte 0x02318C90
_022DC8C4: .4byte 0x02318C98
_022DC8C8: .4byte 0x02318CA4
_022DC8CC: .4byte 0x02318CB0
	arm_func_end ov00_022DC608

	arm_func_start ov00_022DC8D0
ov00_022DC8D0: @ 0x022DC8D0
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x94
	ldr r3, _022DCA4C @ =0x02326CB4
	mov r4, r0
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #0xc]
	cmp r0, #0
	mov r6, r1
	mov r5, r2
	cmpeq r3, #0
	bne _022DC92C
	ldr r0, _022DCA50 @ =0x02318CBC
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DCA54 @ =0x02318CC8
	ldr r2, _022DCA50 @ =0x02318CBC
	mov r0, r4
	bl ov00_022DDAE0
	cmp r0, #0
	beq _022DC984
	add sp, sp, #0x94
	mov r0, #8
	pop {r3, r4, r5, r6, pc}
_022DC92C:
	ldr r0, _022DCA58 @ =0x02318CD0
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DCA54 @ =0x02318CC8
	ldr r2, _022DCA58 @ =0x02318CD0
	mov r0, r4
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	popne {r3, r4, r5, r6, pc}
	mov r0, r6
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DCA5C @ =0x02318CD8
	mov r0, r4
	mov r2, r6
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	popne {r3, r4, r5, r6, pc}
_022DC984:
	ldr r1, _022DCA60 @ =0x02326CC0
	add r0, sp, #0
	bl ov00_022DCAE0
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	popeq {r3, r4, r5, r6, pc}
	ldr r0, _022DCA64 @ =0x02326CDC
	add r1, sp, #0
	ldr r2, [r0]
	mov r0, r4
	bl ov00_022DCD90
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	popeq {r3, r4, r5, r6, pc}
	ldr r0, _022DCA4C @ =0x02326CB4
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _022DCA00
	ldr r0, _022DCA68 @ =0x02318CE0
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DCA6C @ =0x02318CE4
	ldr r2, _022DCA68 @ =0x02318CE0
	mov r0, r4
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	popne {r3, r4, r5, r6, pc}
_022DCA00:
	mov r0, r5
	bl FUN_0208B3E8
	cmp r0, #0
	beq _022DCA40
	mov r0, r5
	bl FUN_0208B3E8
	mov r3, r0
	ldr r1, _022DCA70 @ =0x02318CEC
	mov r0, r4
	mov r2, r5
	lsl r3, r3, #1
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	popne {r3, r4, r5, r6, pc}
_022DCA40:
	mov r0, #0
	add sp, sp, #0x94
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022DCA4C: .4byte 0x02326CB4
_022DCA50: .4byte 0x02318CBC
_022DCA54: .4byte 0x02318CC8
_022DCA58: .4byte 0x02318CD0
_022DCA5C: .4byte 0x02318CD8
_022DCA60: .4byte 0x02326CC0
_022DCA64: .4byte 0x02326CDC
_022DCA68: .4byte 0x02318CE0
_022DCA6C: .4byte 0x02318CE4
_022DCA70: .4byte 0x02318CEC
	arm_func_end ov00_022DC8D0

	arm_func_start ov00_022DCA74
ov00_022DCA74: @ 0x022DCA74
	push {r4, lr}
	ldr r1, _022DCAB4 @ =0x02326CB4
	mov r4, r0
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r1, _022DCAB4 @ =0x02326CB4
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r4, [r0, #4]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	pop {r4, pc}
	.align 2, 0
_022DCAB4: .4byte 0x02326CB4
	arm_func_end ov00_022DCA74

	arm_func_start ov00_022DCAB8
ov00_022DCAB8: @ 0x022DCAB8
	push {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl ov00_022ED468
	add r1, sp, #0
	mov r0, r4
	bl ov00_022DCAE0
	add sp, sp, #0x14
	pop {r3, r4, pc}
	arm_func_end ov00_022DCAB8

	arm_func_start ov00_022DCAE0
ov00_022DCAE0: @ 0x022DCAE0
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x8c
	mov r6, r1
	mov r1, #0
	mov r2, #0x94
	mov r4, r0
	bl FUN_0207C40C
	ldm r6, {r3, r5}
	cmp r5, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _022DCB24
	ldr r2, _022DCD70 @ =0x02318CF8
	mov r0, r4
	str r5, [sp]
	bl FUN_0207911C
	b _022DCB3C
_022DCB24:
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	ldr r2, _022DCD70 @ =0x02318CF8
	mov r0, r4
	str r5, [sp]
	bl FUN_0207911C
_022DCB3C:
	ldrh r3, [r6, #0x10]
	ldr r2, _022DCD74 @ =0x02318D00
	add r0, r4, #0xe
	mov r1, #7
	bl FUN_0207911C
	ldr r0, _022DCD78 @ =0x027FFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022DCB64
	bl FUN_0207BC20
_022DCB64:
	ldr r0, _022DCD78 @ =0x027FFE0C
	add r1, r4, #0x15
	mov r2, #4
	bl FUN_0207C4C8
	ldr r0, _022DCD7C @ =0x027FFE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _022DCB88
	bl FUN_0207BC20
_022DCB88:
	ldr r0, _022DCD7C @ =0x027FFE10
	add r1, r4, #0x1a
	mov r2, #2
	bl FUN_0207C4C8
	mov r1, #0x30
	add r0, sp, #0x16
	strb r1, [r4, #0x1d]
	bl FUN_0207B9EC
	ldr r5, _022DCD80 @ =0x02318D08
	add r7, sp, #0x16
	add r8, r4, #0x1f
	mov r6, #0
_022DCBB8:
	ldrb r2, [r7], #1
	mov r0, r8
	mov r1, r5
	bl FUN_020790DC
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _022DCBB8
	add r0, sp, #0x38
	bl FUN_0207BA08
	ldrb r0, [sp, #0x38]
	ldr r2, _022DCD80 @ =0x02318D08
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strbhs r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	add r0, r4, #0x2c
	bl FUN_0207911C
	add r0, sp, #0x3c
	add r1, r4, #0x7e
	mov r2, #0x14
	bl FUN_0207C4C8
	ldrb r1, [sp, #0x3b]
	ldr r2, _022DCD84 @ =0x02318D10
	add r0, r4, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl FUN_0207911C
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl FUN_020828A8
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _022DCD88 @ =0x02318D1C
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r4, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl FUN_0207911C
	bl FUN_0207B7E4
	mov r6, r0
	bl ov00_022D7140
	mov r7, r0
	mov r1, #6
	bl FUN_0207A2A4
	cmp r7, #0
	bne _022DCCBC
	mov r0, r6
	bl FUN_0207B7F8
	add sp, sp, #0x8c
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, pc}
_022DCCBC:
	ldr r5, _022DCD80 @ =0x02318D08
	add r8, r4, #0x41
	mov sb, #0
_022DCCC8:
	ldrb r2, [r7, sb]
	mov r0, r8
	mov r1, r5
	bl FUN_020790DC
	add sb, sb, #1
	cmp sb, #6
	add r8, r8, #2
	blt _022DCCC8
	bl ov00_022D78D0
	mov r3, r0
	cmp r3, #0xff
	beq _022DCD00
	cmp r3, #0x63
	bls _022DCD04
_022DCD00:
	mov r3, #0x63
_022DCD04:
	ldr r2, _022DCD8C @ =0x02318D38
	add r0, r4, #0x6f
	mov r1, #0xe
	bl FUN_0207911C
	add r0, sp, #0x14
	bl ov00_022D7184
	mov r5, r0
	mov r1, #0x20
	bl FUN_0207A2A4
	cmp r5, #0
	bne _022DCD44
	mov r0, r6
	bl FUN_0207B7F8
	add sp, sp, #0x8c
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, pc}
_022DCD44:
	mov r0, r5
	add r1, r4, #0x4e
	mov r2, #0x20
	bl FUN_0207C4C8
	add r0, r4, #0x72
	bl ov00_022D7900
	mov r0, r6
	bl FUN_0207B7F8
	mov r0, #1
	add sp, sp, #0x8c
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022DCD70: .4byte 0x02318CF8
_022DCD74: .4byte 0x02318D00
_022DCD78: .4byte 0x027FFE0C
_022DCD7C: .4byte 0x027FFE10
_022DCD80: .4byte 0x02318D08
_022DCD84: .4byte 0x02318D10
_022DCD88: .4byte 0x02318D1C
_022DCD8C: .4byte 0x02318D38
	arm_func_end ov00_022DCAE0

	arm_func_start ov00_022DCD90
ov00_022DCD90: @ 0x022DCD90
	push {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov ip, #1
	ldr r2, _022DD094 @ =0x02318D48
	add r0, sp, #4
	mov r1, #0x21
	mov r3, #3
	str ip, [sp]
	bl FUN_0207911C
	add r0, sp, #4
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD098 @ =0x02318D54
	mov r0, r6
	add r2, sp, #4
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD09C @ =0x02318D5C
	mov r0, r6
	mov r2, r5
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0xe
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0A0 @ =0x02318D64
	mov r0, r6
	add r2, r5, #0xe
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x41
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0A4 @ =0x02318D6C
	mov r0, r6
	add r2, r5, #0x41
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x6f
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0A8 @ =0x02318D74
	mov r0, r6
	add r2, r5, #0x6f
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x15
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0AC @ =0x02318D7C
	mov r0, r6
	add r2, r5, #0x15
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x1a
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0B0 @ =0x02318D84
	mov r0, r6
	add r2, r5, #0x1a
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x1d
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0B4 @ =0x02318D8C
	mov r0, r6
	add r2, r5, #0x1d
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x1f
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0B8 @ =0x02318D94
	mov r0, r6
	add r2, r5, #0x1f
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x2c
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0BC @ =0x02318D9C
	mov r0, r6
	add r2, r5, #0x2c
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x2f
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0C0 @ =0x02318DA4
	mov r0, r6
	add r2, r5, #0x2f
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x34
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0C4 @ =0x02318DAC
	mov r0, r6
	add r2, r5, #0x34
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	add r0, r5, #0x7e
	bl FUN_0208B3E8
	mov r3, r0
	ldr r1, _022DD0C8 @ =0x02318DB4
	mov r0, r6
	add r2, r5, #0x7e
	lsl r3, r3, #1
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	cmp r4, #1
	bne _022DD034
	add r0, r5, #0x4e
	bl FUN_02089678
	mov r3, r0
	ldr r1, _022DD0CC @ =0x02318DBC
	mov r0, r6
	add r2, r5, #0x4e
	bl ov00_022DDAE0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
_022DD034:
	ldr r2, _022DD0D0 @ =0x02318DC4
	mov ip, #1
	add r0, sp, #4
	mov r1, #0x21
	mov r3, #3
	str ip, [sp]
	bl FUN_0207911C
	ldr r1, _022DD0D4 @ =0x02318DDC
	add r2, sp, #4
	mov r0, r6
	bl ov00_022DDA04
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r1, _022DD0D8 @ =0x02318DE8
	mov r0, r6
	add r2, r5, #0x15
	bl ov00_022DDA04
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DD094: .4byte 0x02318D48
_022DD098: .4byte 0x02318D54
_022DD09C: .4byte 0x02318D5C
_022DD0A0: .4byte 0x02318D64
_022DD0A4: .4byte 0x02318D6C
_022DD0A8: .4byte 0x02318D74
_022DD0AC: .4byte 0x02318D7C
_022DD0B0: .4byte 0x02318D84
_022DD0B4: .4byte 0x02318D8C
_022DD0B8: .4byte 0x02318D94
_022DD0BC: .4byte 0x02318D9C
_022DD0C0: .4byte 0x02318DA4
_022DD0C4: .4byte 0x02318DAC
_022DD0C8: .4byte 0x02318DB4
_022DD0CC: .4byte 0x02318DBC
_022DD0D0: .4byte 0x02318DC4
_022DD0D4: .4byte 0x02318DDC
_022DD0D8: .4byte 0x02318DE8
	arm_func_end ov00_022DCD90

	arm_func_start ov00_022DD0DC
ov00_022DD0DC: @ 0x022DD0DC
	push {r4, r5, r6, lr}
	mov r5, r1
	ldr r2, _022DD1E4 @ =0x00001C14
	mov r6, r0
	ldr r4, [r5, #0xc]
	mov r1, #0
	bl FUN_0207C40C
	add r1, r6, #4
	add r0, r6, #0x1000
	mvn r2, #0
	str r2, [r0, #0xa30]
	mov lr, r5
	str r2, [r0, #0xa34]
	add ip, r1, #0x1000
	ldm lr!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	ldm lr, {r0, r1, r2}
	stm ip, {r0, r1, r2}
	ldr r0, _022DD1E8 @ =0x02318E28
	ldr r1, _022DD1EC @ =0x00000B68
	blx r4
	add r1, r6, #0x1000
	str r0, [r1, #0x9cc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r1, #0x20]
	popeq {r4, r5, r6, pc}
	ldr r0, _022DD1F0 @ =0x02318E40
	ldr r1, _022DD1F4 @ =0x000005EA
	blx r4
	add r2, r6, #0x1000
	str r0, [r2, #0x9d0]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	popeq {r4, r5, r6, pc}
	add r1, r6, #0x208
	ldr r2, [r2, #0xc]
	mov r0, r6
	add r1, r1, #0x1800
	bl ov00_022DDC80
	cmp r0, #0
	bne _022DD198
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	pop {r4, r5, r6, pc}
_022DD198:
	ldr r1, [r5]
	mov r0, r6
	bl ov00_022DDDC0
	cmp r0, #0
	bne _022DD1BC
	add r1, r6, #0x1000
	mov r0, #1
	str r0, [r1, #0x20]
	pop {r4, r5, r6, pc}
_022DD1BC:
	mov r0, r6
	bl ov00_022DD944
	add r1, r6, #0x1000
	str r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	strbeq r0, [r1]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x20]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DD1E4: .4byte 0x00001C14
_022DD1E8: .4byte 0x02318E28
_022DD1EC: .4byte 0x00000B68
_022DD1F0: .4byte 0x02318E40
_022DD1F4: .4byte 0x000005EA
	arm_func_end ov00_022DD0DC

	arm_func_start ov00_022DD1F8
ov00_022DD1F8: @ 0x022DD1F8
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _022DD27C @ =0x02318E58
	ldr r2, _022DD280 @ =0x02318E64
	mov r4, r0
	bl ov00_022DDA04
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9f8]
	ldr r1, _022DD284 @ =0x02318E6C
	bl FUN_02089A70
	add r0, r0, #4
	bl FUN_02089678
	movs r3, r0
	beq _022DD270
	ldr r2, _022DD288 @ =0x02318E74
	add r0, sp, #0
	mov r1, #7
	bl FUN_0207911C
	ldr r1, _022DD28C @ =0x02318E78
	add r2, sp, #0
	mov r0, r4
	bl ov00_022DDA04
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	popne {r4, pc}
_022DD270:
	mov r0, #0
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022DD27C: .4byte 0x02318E58
_022DD280: .4byte 0x02318E64
_022DD284: .4byte 0x02318E6C
_022DD288: .4byte 0x02318E74
_022DD28C: .4byte 0x02318E78
	arm_func_end ov00_022DD1F8

	arm_func_start ov00_022DD290
ov00_022DD290: @ 0x022DD290
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x3f8
	add r2, r5, #0x1000
	mov r3, #0
	add r0, r0, #0x1800
	mov r4, r1
	str r3, [r2, #0xc10]
	bl FUN_0207A030
	add r0, r5, #0x218
	add r0, r0, #0x1800
	bl FUN_0207A030
	add r0, r5, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _022DD344 @ =0x02326CD4
	moveq r1, #1
	ldrne r0, _022DD344 @ =0x02326CD4
	movne r1, #0
	str r1, [r0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DD30C
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl FUN_02079830
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, pc}
_022DD30C:
	add r0, r5, #0x338
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _022DD348 @ =ov00_022DD574
	mov r2, r5
	add r0, r0, #0x1800
	add r3, r5, #0x1000
	str r4, [sp, #4]
	bl FUN_02079560
	add r0, r5, #0x338
	add r0, r0, #0x1800
	bl FUN_02079940
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DD344: .4byte 0x02326CD4
_022DD348: .4byte ov00_022DD574
	arm_func_end ov00_022DD290

	arm_func_start ov00_022DD34C
ov00_022DD34C: @ 0x022DD34C
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	popne {r4, pc}
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl FUN_0207A048
	add r0, r4, #0x3f8
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r0, #0x1800
	str r2, [r1, #0xc10]
	bl FUN_0207A0CC
	add r0, r4, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	popeq {r4, pc}
	add r0, r4, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
	pop {r4, pc}
	arm_func_end ov00_022DD34C

	arm_func_start ov00_022DD3A8
ov00_022DD3A8: @ 0x022DD3A8
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _022DD3DC
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	bl FUN_0207BB50
	add r0, r4, #0x1d4
	add r0, r0, #0x1800
	mov r1, #0x20
	bl ov00_022D1F04
_022DD3DC:
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bl FUN_0207A048
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc10]
	cmp r0, #1
	add r0, r4, #0x3f8
	add r0, r0, #0x1800
	bne _022DD40C
	bl FUN_0207A0CC
	mov r0, #0
	pop {r4, pc}
_022DD40C:
	bl FUN_0207A0CC
	mov r0, #0xa
	bl FUN_02079B14
	mov r0, #1
	pop {r4, pc}
	arm_func_end ov00_022DD3A8

	arm_func_start ov00_022DD420
ov00_022DD420: @ 0x022DD420
	push {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x64
	bl FUN_0207C40C
	ldr r0, _022DD470 @ =0x00000B68
	add r1, r4, #0x1000
	str r0, [r1, #0x174]
	ldr r3, [r1, #0x9cc]
	add r0, r4, #0x138
	ldr r2, _022DD474 @ =0x000005EA
	str r3, [r1, #0x178]
	str r2, [r1, #0x180]
	ldr r2, [r1, #0x9d0]
	add r0, r0, #0x1000
	str r2, [r1, #0x184]
	bl ov00_022CB138
	pop {r4, pc}
	.align 2, 0
_022DD470: .4byte 0x00000B68
_022DD474: .4byte 0x000005EA
	arm_func_end ov00_022DD420

	arm_func_start ov00_022DD478
ov00_022DD478: @ 0x022DD478
	ldr ip, _022DD488 @ =ov00_022CCC58
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	bx ip
	.align 2, 0
_022DD488: .4byte ov00_022CCC58
	arm_func_end ov00_022DD478

	arm_func_start ov00_022DD48C
ov00_022DD48C: @ 0x022DD48C
	push {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r6, [r0, #0xa08]
	add r2, r5, #0x208
	ldr r1, _022DD568 @ =0x02318E6C
	mov r0, r6
	add r4, r2, #0x1800
	bl FUN_02089A70
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r1, _022DD568 @ =0x02318E6C
	mov r0, r6
	bl FUN_02089A70
	add r1, r5, #0x218
	add r6, r0, #4
	add r0, r1, #0x1800
	bl FUN_0207A048
	ldr r0, [r4, #4]
	add r1, r5, #0x218
	sub r2, r0, r6
	add r0, r5, #0x1000
	str r2, [r0, #0xa34]
	add r0, r1, #0x1800
	bl FUN_0207A0CC
	ldr r0, [r4]
	ldr r1, _022DD56C @ =0x02318E88
	bl FUN_02089A70
	movs r8, r0
	moveq r0, #1
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, _022DD56C @ =0x02318E88
	bl FUN_02089678
	mov r7, r0
	ldr r1, _022DD570 @ =0x02318E9C
	add r0, r8, r7
	bl FUN_02089A70
	mov r6, r0
	add r0, r5, #0x218
	ldrsb r4, [r6]
	mov r1, #0
	add r0, r0, #0x1800
	strb r1, [r6]
	bl FUN_0207A048
	add r0, r8, r7
	bl FUN_0208B360
	add r1, r5, #0x1000
	add r2, r5, #0x218
	str r0, [r1, #0xa30]
	add r0, r2, #0x1800
	bl FUN_0207A0CC
	strb r4, [r6]
	mov r0, #1
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022DD568: .4byte 0x02318E6C
_022DD56C: .4byte 0x02318E88
_022DD570: .4byte 0x02318E9C
	arm_func_end ov00_022DD48C

	arm_func_start ov00_022DD574
ov00_022DD574: @ 0x022DD574
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	add r0, sl, #0x1000
	ldr r8, [r0, #0x1c]
	add r0, sl, #0x138
	add r1, sl, #0x19c
	add r2, sl, #0x208
	add r4, r0, #0x1000
	cmp r8, #0
	mov r0, sl
	add r5, r1, #0x1000
	add r7, r2, #0x1800
	mov fp, #0
	ldrle r8, _022DD87C @ =0x0000EA60
	bl ov00_022DD420
	mov r0, sl
	bl ov00_022DD478
	movs r6, r0
	add r0, sl, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0x14
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [r0, #0x12c]
	bl ov00_022CB1F0
	add r0, sl, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _022DD628
	mov r0, r5
	mov r1, #0
	mov r2, #0x830
	bl FUN_0207C40C
	ldr r1, _022DD880 @ =0x022DDC74
	add r0, sl, #0x1000
	str r1, [r5, #0x810]
	ldr r1, [r0, #0x124]
	ldr r0, _022DD884 @ =0x02318DF8
	str r1, [r5, #0x800]
	mov r1, #0xc
	str r5, [r4, #0xc]
	bl ov00_022CFE3C
	mov r0, #1
	bl ov00_022D2B44
_022DD628:
	add r0, sl, #0x1100
	ldrh r1, [r0, #0x34]
	mov r2, r6
	mov r0, #0
	bl ov00_022CB190
	bl ov00_022CB32C
	cmp r0, #0
	add r0, sl, #0x1000
	beq _022DD664
	mov r1, #3
	str r1, [r0, #0x20]
	bl ov00_022CB224
	bl ov00_022CB14C
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DD664:
	ldr r4, [r0, #0x9f8]
	mov r0, r4
	bl FUN_02089678
	mov r1, r0
	mov r0, r4
	bl ov00_022CBA58
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _022DD698
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _022DD864
_022DD698:
	bl ov00_022CBB60
	mov r0, sl
	bl ov00_022DD3A8
	cmp r0, #0
	bne _022DD6BC
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _022DD864
_022DD6BC:
	ldr r0, [r7]
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	bl FUN_0207AE44
	str r0, [sp, #8]
	add r0, sl, #0x234
	str r1, [sp, #4]
	add r5, sl, #0x218
	add r6, r0, #0x1800
	add r4, sl, #0x1000
_022DD6F0:
	ldr r0, _022DD888 @ =0x023250C8
	ldr r0, [r0]
	cmp r0, #0
	bne _022DD710
	add r0, sl, #0x1000
	mov r1, #5
	str r1, [r0, #0x20]
	b _022DD864
_022DD710:
	bl ov00_022CBAF0
	str r0, [sp, #0x10]
	cmp r0, #0
	blt _022DD840
	ble _022DD7C4
	bl FUN_0207AE44
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #4]
	bl ov00_022CB550
	cmp r0, #0
	beq _022DD840
	ldmib r7, {r1, r2}
	sub r2, r2, #1
	ldr sb, [sp, #0x10]
	sub r2, r2, r1
	cmp sb, r2
	movge sb, r2
	mov r2, sb
	bl FUN_0207C4C8
	ldr r0, [r7, #4]
	cmp fp, #1
	add r1, r0, sb
	str r1, [r7, #4]
	mov r0, #0
	strb r0, [r1]
	bne _022DD79C
	add r0, r5, #0x1800
	bl FUN_0207A048
	ldr r1, [r6]
	add r0, r5, #0x1800
	add r1, r1, sb
	str r1, [r6]
	bl FUN_0207A0CC
	b _022DD7A8
_022DD79C:
	mov r0, sl
	bl ov00_022DD48C
	mov fp, r0
_022DD7A8:
	ldr r0, [sp, #0x10]
	cmp r0, sb
	bls _022DD7BC
	bl ov00_022CB644
	b _022DD840
_022DD7BC:
	mov r0, sb
	bl ov00_022CB644
_022DD7C4:
	ldr r1, [r4, #0xa30]
	cmp r1, #0
	ldrge r0, [r4, #0xa34]
	cmpge r0, r1
	bge _022DD840
	bl FUN_0207AE44
	ldr r2, [sp, #8]
	mov r3, #0
	subs r2, r0, r2
	ldr r0, [sp, #4]
	sbc r0, r1, r0
	lsl r1, r0, #6
	orr r1, r1, r2, lsr #26
	lsl r0, r2, #6
	ldr r2, _022DD88C @ =0x000082EA
	bl FUN_0208FE3C
	cmp r1, r8, asr #31
	cmpeq r0, r8
	bls _022DD820
	add r0, sl, #0x1000
	mov r1, #6
	str r1, [r0, #0x20]
	b _022DD864
_022DD820:
	mov r0, sl
	bl ov00_022DD3A8
	cmp r0, #0
	bne _022DD6F0
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _022DD864
_022DD840:
	bl ov00_022CB3BC
	bl ov00_022CB3F8
	bl ov00_022CB224
	bl ov00_022CB14C
	add r0, sl, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DD864:
	bl ov00_022CB3BC
	bl ov00_022CB3F8
	bl ov00_022CB224
	bl ov00_022CB14C
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DD87C: .4byte 0x0000EA60
_022DD880: .4byte 0x022DDC74
_022DD884: .4byte 0x02318DF8
_022DD888: .4byte 0x023250C8
_022DD88C: .4byte 0x000082EA
	arm_func_end ov00_022DD574

	arm_func_start ov00_022DD890
ov00_022DD890: @ 0x022DD890
	push {r3, r4, r5, lr}
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	popeq {r3, r4, r5, pc}
	add r1, r5, #0x238
	add r1, r1, #0x1800
	mov r2, #0x20
	bl ov00_022DE3F4
	add r1, r5, #0x208
	mov r0, r5
	add r1, r1, #0x1800
	bl ov00_022DDCD8
	add r1, r5, #0x1f8
	mov r0, r5
	add r1, r1, #0x1800
	bl ov00_022DDCD8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9cc]
	cmp r1, #0
	beq _022DD8FC
	ldr r0, _022DD938 @ =0x02318EA0
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9cc]
_022DD8FC:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9d0]
	cmp r1, #0
	beq _022DD924
	ldr r0, _022DD93C @ =0x02318EB8
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9d0]
_022DD924:
	ldr r2, _022DD940 @ =0x00001C14
	mov r0, r5
	mov r1, #0
	bl FUN_0207C40C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DD938: .4byte 0x02318EA0
_022DD93C: .4byte 0x02318EB8
_022DD940: .4byte 0x00001C14
	arm_func_end ov00_022DD890

	arm_func_start ov00_022DD944
ov00_022DD944: @ 0x022DD944
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	add r0, r7, #0x1f8
	cmp r1, #0
	ldreq r6, _022DD9FC @ =0x02318ED0
	add r5, r0, #0x1800
	add r0, r7, #0x1000
	ldrne r6, _022DDA00 @ =0x02318F24
	ldr r0, [r0, #0x124]
	bl FUN_02089678
	mov r4, r0
	mov r0, r6
	bl FUN_02089678
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl FUN_02089678
	sub r1, r8, #4
	add r0, r1, r0
	add r2, r4, r0
	add r0, r7, #0x1f8
	add r1, r0, #0x1800
	add r2, r2, #0x400
	mov r0, r7
	bl ov00_022DDC80
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl FUN_0207911C
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022DD9FC: .4byte 0x02318ED0
_022DDA00: .4byte 0x02318F24
	arm_func_end ov00_022DD944

	arm_func_start ov00_022DDA04
ov00_022DDA04: @ 0x022DDA04
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r6, r2
	add r2, r8, #0x1f8
	mov r0, r6
	mov r7, r1
	add r5, r2, #0x1800
	bl FUN_02089678
	mov r4, r0
	ldr r0, _022DDAD8 @ =0x02318F44
	bl FUN_02089678
	mov sb, r0
	mov r0, r7
	bl FUN_02089678
	sub r1, sb, #4
	add r0, r1, r0
	add r4, r4, r0
	ldmib r5, {r1, r2}
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _022DDA7C
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl ov00_022DDD18
	cmp r0, #0
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
_022DDA7C:
	ldr r0, [r5]
	ldr r1, _022DDADC @ =0x02318E6C
	bl FUN_02089A70
	add sb, r0, #2
	ldrsb r8, [r0, #2]
	mov r0, sb
	bl FUN_02089678
	add r2, r0, #1
	add r0, sb, r4
	mov r1, sb
	bl FUN_020872BC
	ldr r2, _022DDAD8 @ =0x02318F44
	str r6, [sp]
	mov r3, r7
	mov r0, sb
	add r1, r4, #1
	bl FUN_0207911C
	strb r8, [sb, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022DDAD8: .4byte 0x02318F44
_022DDADC: .4byte 0x02318E6C
	arm_func_end ov00_022DDA04

	arm_func_start ov00_022DDAE0
ov00_022DDAE0: @ 0x022DDAE0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	add r0, sl, #0x1000
	ldr r4, [r0, #0x9f4]
	add r0, sl, #0x1f8
	cmp r4, #0
	ldreq r7, _022DDBE4 @ =0x02318F50
	mov r8, r2
	add r4, sl, #0x1000
	add r6, r0, #0x1800
	ldr r0, [r4, #0x9f4]
	mov fp, r3
	add r5, r0, #1
	mov r2, #0
	mov sb, r1
	ldrne r7, _022DDBE8 @ =0x02318F54
	mov r0, r8
	mov r1, fp
	mov r3, r2
	str r5, [r4, #0x9f4]
	bl ov00_022DFF4C
	mov r5, r0
	mov r0, r7
	bl FUN_02089678
	mov r4, r0
	mov r0, sb
	bl FUN_02089678
	sub r1, r4, #2
	add r2, r1, r0
	ldmib r6, {r0, r1}
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _022DDB90
	sub r2, r2, r1
	mov r0, sl
	mov r1, r6
	add r2, r2, #1
	bl ov00_022DDD18
	cmp r0, #0
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldmib r6, {r0, r1}
	sub r1, r1, r0
_022DDB90:
	mov r2, r7
	mov r3, sb
	bl FUN_0207911C
	ldr r2, [r6, #4]
	mov r1, fp
	add r2, r2, r0
	str r2, [r6, #4]
	ldr r0, [r6, #8]
	sub r3, r0, r2
	mov r0, r8
	sub r3, r3, #1
	bl ov00_022DFF4C
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r6, #4]
	mov r0, #0
	add r1, r1, r5
	str r1, [r6, #4]
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DDBE4: .4byte 0x02318F50
_022DDBE8: .4byte 0x02318F54
	arm_func_end ov00_022DDAE0

	arm_func_start ov00_022DDBEC
ov00_022DDBEC: @ 0x022DDBEC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x1f8
	mov r0, r6
	add r5, r1, #0x1800
	bl FUN_02089678
	mov r4, r0
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	cmp r4, r1
	ble _022DDC44
	sub r2, r4, r1
	mov r0, r7
	mov r1, r5
	add r2, r2, #1
	bl ov00_022DDD18
	cmp r0, #0
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, pc}
	ldmib r5, {r0, r1}
	sub r1, r1, r0
_022DDC44:
	ldr r2, _022DDC70 @ =0x02318F5C
	mov r3, r6
	bl FUN_0207911C
	cmp r0, r4
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DDC70: .4byte 0x02318F5C
	arm_func_end ov00_022DDBEC
_022DDC74:
	.byte 0x02, 0x09, 0x10, 0xE3, 0x02, 0x09, 0xC0, 0x13, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov00_022DDC80
ov00_022DDC80: @ 0x022DDC80
	push {r3, r4, r5, lr}
	movs r4, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r5, r1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022DDCD4 @ =0x02318F60
	mov r1, r4
	blx r2
	str r0, [r5]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	str r0, [r5, #4]
	str r4, [r5, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DDCD4: .4byte 0x02318F60
	arm_func_end ov00_022DDC80

	arm_func_start ov00_022DDCD8
ov00_022DDCD8: @ 0x022DDCD8
	push {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _022DDD00
	ldr r0, _022DDD14 @ =0x02318F74
	mov r2, #0
	blx r3
_022DDD00:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl FUN_0207C40C
	pop {r4, pc}
	.align 2, 0
_022DDD14: .4byte 0x02318F74
	arm_func_end ov00_022DDCD8

	arm_func_start ov00_022DDD18
ov00_022DDD18: @ 0x022DDD18
	push {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0x1000
	ldr r7, [r0, #0x14]
	mov r5, r2
	mov r6, r1
	cmp r5, #0
	ldr r2, [r0, #0x10]
	movle r0, #0
	pople {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	ldr r0, _022DDDB8 @ =0x02318F88
	add r1, r1, r5
	blx r2
	movs r4, r0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl FUN_0207C4C8
	ldr r1, [r6]
	ldr r0, _022DDDBC @ =0x02318F74
	mov r2, #0
	blx r7
	cmp r4, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldm r6, {r0, r1}
	sub r0, r4, r0
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r1, [r6, #0xc]
	mov r0, #1
	add r1, r1, r5
	str r1, [r6, #0xc]
	str r4, [r6]
	ldr r1, [r6, #0xc]
	add r1, r4, r1
	str r1, [r6, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DDDB8: .4byte 0x02318F88
_022DDDBC: .4byte 0x02318F74
	arm_func_end ov00_022DDD18

	arm_func_start ov00_022DDDC0
ov00_022DDDC0: @ 0x022DDDC0
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl FUN_02089678
	cmp r0, #0x100
	movhs r0, r4
	pophs {r4, r5, r6, pc}
	add r0, r5, #0x24
	mov r1, r6
	add r0, r0, #0x1000
	mov r2, #0x100
	bl FUN_0208975C
	mov r0, r6
	bl FUN_02089678
	add r1, r5, #0x24
	mov r6, r0
	add r0, r1, #0x1000
	bl FUN_02089678
	cmp r6, r0
	movne r0, r4
	popne {r4, r5, r6, pc}
	add r0, r5, #0x24
	ldr r1, _022DDF04 @ =0x02318F98
	add r0, r0, #0x1000
	bl FUN_02089A70
	cmp r0, #0
	beq _022DDE5C
	add r0, r5, #0x2b
	add r1, r0, #0x1000
	add r0, r5, #0x1000
	str r1, [r0, #0x124]
	mov r1, r4
	str r1, [r0, #0x130]
	add r0, r5, #0x1100
	mov r1, #0x50
	strh r1, [r0, #0x34]
	b _022DDE98
_022DDE5C:
	add r0, r5, #0x24
	ldr r1, _022DDF08 @ =0x02318FA0
	add r0, r0, #0x1000
	bl FUN_02089A70
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, pc}
	add r2, r0, #8
	add r0, r5, #0x1000
	mov r1, #1
	str r2, [r0, #0x124]
	str r1, [r0, #0x130]
	rsb r1, r1, #0x1bc
	add r0, r5, #0x1100
	strh r1, [r0, #0x34]
_022DDE98:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _022DDF0C @ =0x02318FAC
	bl FUN_02089A70
	cmp r0, #0
	movne r1, #0
	strbne r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _022DDF10 @ =0x02318FB0
	bl FUN_02089A70
	cmp r0, #0
	mov r1, #0
	addeq r0, r5, #0x1000
	strbne r1, [r0]
	addne r1, r0, #1
	addne r0, r5, #0x1000
	str r1, [r0, #0x128]
	cmp r4, #0
	beq _022DDEFC
	mov r0, r4
	bl FUN_0208B360
	add r1, r5, #0x1100
	strh r0, [r1, #0x34]
_022DDEFC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DDF04: .4byte 0x02318F98
_022DDF08: .4byte 0x02318FA0
_022DDF0C: .4byte 0x02318FAC
_022DDF10: .4byte 0x02318FB0
	arm_func_end ov00_022DDDC0

	arm_func_start ov00_022DDF14
ov00_022DDF14: @ 0x022DDF14
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	add r0, r0, #0x1000
	ldmib r8, {r1, r4}
	cmp r4, r1
	ldr r4, [r0, #0x10]
	ldr r5, [r0, #0x14]
	mov r7, r2
	mov r6, r3
	movgt r0, #0
	popgt {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_02089678
	mov r1, r0
	ldr r0, _022DE058 @ =0x02318FB4
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	str r0, [r2, r1, lsl #3]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	ldr r0, [r2, r1, lsl #3]
	cmp r0, #0
	beq _022DDFF0
	mov r0, r6
	bl FUN_02089678
	mov r1, r0
	ldr r0, _022DE05C @ =0x02318FD4
	add r1, r1, #1
	blx r4
	ldr r2, [r8]
	ldr r1, [r8, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r8, #8]
	ldr r2, [r8]
	add r0, r2, r1, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022DDFF0
	ldr r0, [r2, r1, lsl #3]
	mov r1, r7
	bl FUN_02089694
	ldr r2, [r8]
	ldr r0, [r8, #8]
	mov r1, r6
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl FUN_02089694
	ldr r1, [r8, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r8, #8]
	pop {r4, r5, r6, r7, r8, pc}
_022DDFF0:
	ldr r1, [r2, r1, lsl #3]
	cmp r1, #0
	beq _022DE018
	ldr r0, _022DE060 @ =0x02318FF4
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	str r2, [r1, r0, lsl #3]
_022DE018:
	ldr r1, [r8]
	ldr r0, [r8, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022DE050
	ldr r0, _022DE064 @ =0x02319010
	mov r2, #0
	blx r5
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	add r0, r1, r0, lsl #3
	str r2, [r0, #4]
_022DE050:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022DE058: .4byte 0x02318FB4
_022DE05C: .4byte 0x02318FD4
_022DE060: .4byte 0x02318FF4
_022DE064: .4byte 0x02319010
	arm_func_end ov00_022DDF14

	arm_func_start ov00_022DE068
ov00_022DE068: @ 0x022DE068
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r0, r4, #0x238
	mov r6, r1
	add r0, r0, #0x1800
	mov r3, #0x20
	mov r1, #0
	mov r2, #0x100
	str r0, [sp, #4]
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	bl FUN_0207C40C
	add r0, r4, #0x1000
	ldr r5, [r0, #0xa08]
	ldr r1, _022DE2E8 @ =0x02318E6C
	mov r0, r5
	bl FUN_02089A70
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r0, #4
	bl FUN_02089678
	ldr r1, [sp]
	add r1, r1, #4
	add fp, r1, r0
	ldr r1, _022DE2EC @ =0x0231902C
	mov r0, r5
	bl FUN_02089A70
	movs r7, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb sb, [r7, #4]
	ldr r2, _022DE2F0 @ =0x02319030
	mov r5, #0
	add r1, sp, #4
	mov r0, r4
	add r3, r7, #1
	strb r5, [r7, #4]
	bl ov00_022DDF14
	cmp r0, #1
	addne sp, sp, #0x10
	strb sb, [r7, #4]
	movne r0, r5
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #1
	beq _022DE148
	ldr r1, _022DE2F4 @ =0x0231903C
	add r0, r7, #1
	mov r2, #3
	bl FUN_02089940
	cmp r0, #0
	beq _022DE154
_022DE148:
	add sp, sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DE154:
	ldr r1, _022DE2F8 @ =0x02318E9C
	add r0, r7, #5
	bl FUN_02089A70
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r5
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, r0, #2
	b _022DE208
_022DE178:
	ldr r1, _022DE2FC @ =0x02319040
	mov r0, sb
	bl FUN_02089A70
	movs r6, r0
	beq _022DE21C
	ldrsb r7, [r6]
	mov r1, #0
	add sl, r6, #2
	strb r1, [r6]
	ldr r1, _022DE2F8 @ =0x02318E9C
	mov r0, sl
	bl FUN_02089A70
	movs r5, r0
	strbeq r7, [r6]
	beq _022DE21C
	ldrsb r8, [r5]
	mov r1, #0
	mov r2, sb
	strb r1, [r5]
	mov r0, r4
	add r1, sp, #4
	mov r3, sl
	bl ov00_022DDF14
	cmp r0, #1
	beq _022DE1F0
	strb r7, [r6]
	add sp, sp, #0x10
	strb r8, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DE1F0:
	mov r0, sl
	bl FUN_02089678
	strb r7, [r6]
	add r0, sl, r0
	strb r8, [r5]
	add sb, r0, #2
_022DE208:
	ldrsb r0, [sb]
	cmp r0, #0xd
	ldrsbne r0, [sb, #1]
	cmpne r0, #0xa
	bne _022DE178
_022DE21C:
	ldr r0, [sp]
	add r7, r0, #4
	cmp r7, fp
	bhs _022DE2DC
_022DE22C:
	ldr r1, _022DE300 @ =0x02319044
	mov r0, r7
	bl FUN_02089A70
	movs r5, r0
	beq _022DE2DC
	ldrsb sb, [r5]
	mov r1, #0
	add r6, r5, #1
	strb r1, [r5]
	ldr r1, _022DE304 @ =0x02319048
	mov r0, r6
	bl FUN_02089A70
	movs sl, r0
	bne _022DE274
	ldr r1, _022DE2F8 @ =0x02318E9C
	mov r0, r6
	bl FUN_02089A70
	mov sl, r0
_022DE274:
	cmp sl, #0
	ldrsbne r8, [sl]
	movne r0, #0
	mov r2, r7
	strbne r0, [sl]
	mov r0, r4
	add r1, sp, #4
	mov r3, r6
	bl ov00_022DDF14
	cmp r0, #1
	beq _022DE2B8
	strb sb, [r5]
	cmp sl, #0
	add sp, sp, #0x10
	strbne r8, [sl]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022DE2B8:
	mov r0, r6
	bl FUN_02089678
	add r0, r6, r0
	strb sb, [r5]
	cmp sl, #0
	add r7, r0, #1
	strbne r8, [sl]
	cmp r7, fp
	blo _022DE22C
_022DE2DC:
	mov r0, #1
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DE2E8: .4byte 0x02318E6C
_022DE2EC: .4byte 0x0231902C
_022DE2F0: .4byte 0x02319030
_022DE2F4: .4byte 0x0231903C
_022DE2F8: .4byte 0x02318E9C
_022DE2FC: .4byte 0x02319040
_022DE300: .4byte 0x02319044
_022DE304: .4byte 0x02319048
	arm_func_end ov00_022DE068

	arm_func_start ov00_022DE308
ov00_022DE308: @ 0x022DE308
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_022DE318:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa38]
	cmp r1, #0
	beq _022DE358
	mov r0, r5
	bl FUN_0208982C
	cmp r0, #0
	bne _022DE34C
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa3c]
	pop {r4, r5, r6, pc}
_022DE34C:
	add r4, r4, #1
	cmp r4, #0x20
	blt _022DE318
_022DE358:
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022DE308

	arm_func_start ov00_022DE360
ov00_022DE360: @ 0x022DE360
	push {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov00_022DE308
	movs r4, r0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl FUN_02089678
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl ov00_022E00D4
	mvn r1, #0
	cmp r0, r1
	popeq {r4, r5, r6, pc}
	cmp r0, r5
	pophs {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022DE360

	arm_func_start ov00_022DE3B4
ov00_022DE3B4: @ 0x022DE3B4
	push {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl ov00_022DE308
	movs r4, r0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl FUN_02089678
	cmp r0, r5
	movge r0, #0
	popge {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_02089694
	mov r0, #1
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022DE3B4

	arm_func_start ov00_022DE3F4
ov00_022DE3F4: @ 0x022DE3F4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add r0, r0, #0x1000
	ldr r6, [r0, #0x14]
	mov sb, r2
	mov sl, r1
	mov r8, #0
	cmp sb, #0
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr fp, _022DE474 @ =0x0231904C
	ldr r7, _022DE478 @ =0x02319068
	mov r5, r8
	mov r4, r8
_022DE424:
	ldr r1, [sl, r8, lsl #3]
	cmp r1, #0
	beq _022DE440
	mov r0, fp
	mov r2, #0
	blx r6
	str r5, [sl, r8, lsl #3]
_022DE440:
	add r0, sl, r8, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _022DE464
	mov r0, r7
	mov r2, #0
	blx r6
	add r0, sl, r8, lsl #3
	str r4, [r0, #4]
_022DE464:
	add r8, r8, #1
	cmp r8, sb
	blt _022DE424
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DE474: .4byte 0x0231904C
_022DE478: .4byte 0x02319068
	arm_func_end ov00_022DE3F4

	arm_func_start ov00_022DE47C
ov00_022DE47C: @ 0x022DE47C
	push {r3, r4, r5, lr}
	ldr r1, _022DE544 @ =0x02326CD8
	mov r5, r0
	ldr r0, [r1]
	ldr r4, [r5]
	cmp r0, #0
	movne r0, #4
	popne {r3, r4, r5, pc}
	ldr r0, _022DE548 @ =0x023190AC
	ldr r1, _022DE54C @ =0x000011F4
	blx r4
	ldr r1, _022DE544 @ =0x02326CD8
	cmp r0, #0
	str r0, [r1]
	moveq r0, #4
	popeq {r3, r4, r5, pc}
	ldr r2, _022DE54C @ =0x000011F4
	mov r1, #0
	bl FUN_0207C40C
	ldr ip, _022DE544 @ =0x02326CD8
	ldr r1, _022DE550 @ =0xFFFE7961
	ldr r0, [ip]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [ip]
	ldm r5, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stm r3, {r0, r1, r2}
	ldr r0, [ip, #0x14]
	cmp r0, #0
	movne r0, #4
	popne {r3, r4, r5, pc}
	ldr r0, _022DE554 @ =0x023190C0
	ldr r1, _022DE558 @ =0x00001C14
	blx r4
	ldr r1, _022DE544 @ =0x02326CD8
	cmp r0, #0
	str r0, [r1, #0x14]
	moveq r0, #4
	popeq {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl FUN_0207A030
	bl ov00_022DE714
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DE544: .4byte 0x02326CD8
_022DE548: .4byte 0x023190AC
_022DE54C: .4byte 0x000011F4
_022DE550: .4byte 0xFFFE7961
_022DE554: .4byte 0x023190C0
_022DE558: .4byte 0x00001C14
	arm_func_end ov00_022DE47C

	arm_func_start ov00_022DE55C
ov00_022DE55C: @ 0x022DE55C
	push {r4, lr}
	ldr r0, _022DE640 @ =0x02326CD8
	ldr r1, [r0]
	ldr r0, [r0, #0x14]
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _022DE5A0
	bl ov00_022DD890
	ldr r1, _022DE640 @ =0x02326CD8
	ldr r0, _022DE644 @ =0x023190D0
	ldr r1, [r1, #0x14]
	mov r2, #0
	blx r4
	ldr r0, _022DE640 @ =0x02326CD8
	mov r1, #0
	str r1, [r0, #0x14]
_022DE5A0:
	bl ov00_022DBF08
	ldr r0, _022DE640 @ =0x02326CD8
	ldr r0, [r0]
	cmp r0, #0
	popeq {r4, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _022DE5E4
	ldr r0, _022DE648 @ =0x023190E0
	mov r2, #0
	blx r4
	ldr r0, _022DE640 @ =0x02326CD8
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x114]
_022DE5E4:
	ldr r0, _022DE640 @ =0x02326CD8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _022DE61C
	ldr r0, _022DE64C @ =0x023190FC
	mov r2, #0
	blx r4
	ldr r0, _022DE640 @ =0x02326CD8
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x118]
_022DE61C:
	ldr r1, _022DE640 @ =0x02326CD8
	ldr r0, _022DE650 @ =0x0231911C
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _022DE640 @ =0x02326CD8
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_022DE640: .4byte 0x02326CD8
_022DE644: .4byte 0x023190D0
_022DE648: .4byte 0x023190E0
_022DE64C: .4byte 0x023190FC
_022DE650: .4byte 0x0231911C
	arm_func_end ov00_022DE55C

	arm_func_start ov00_022DE654
ov00_022DE654: @ 0x022DE654
	push {r3, lr}
	ldr r0, _022DE6B8 @ =0x02326CD8
	ldr r1, [r0]
	cmp r1, #0
	popeq {r3, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022DE678
	bl ov00_022DD34C
_022DE678:
	bl ov00_022DBE7C
	ldr r0, _022DE6B8 @ =0x02326CD8
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _022DE6A0
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl FUN_02079800
_022DE6A0:
	ldr r0, _022DE6B8 @ =0x02326CD8
	mvn r1, #6
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_022DE6B8: .4byte 0x02326CD8
	arm_func_end ov00_022DE654

	arm_func_start ov00_022DE6BC
ov00_022DE6BC: @ 0x022DE6BC
	push {r4, lr}
	ldr r0, _022DE6F8 @ =0x02326CD8
	ldr r0, [r0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r0, _022DE6F8 @ =0x02326CD8
	ldr r1, [r0]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1]
	bl FUN_0207A0CC
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022DE6F8: .4byte 0x02326CD8
	arm_func_end ov00_022DE6BC

	arm_func_start ov00_022DE6FC
ov00_022DE6FC: @ 0x022DE6FC
	ldr r0, _022DE710 @ =0x02326CD8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_022DE710: .4byte 0x02326CD8
	arm_func_end ov00_022DE6FC

	arm_func_start ov00_022DE714
ov00_022DE714: @ 0x022DE714
	push {r3, lr}
	sub sp, sp, #8
	ldr r0, _022DE794 @ =0x02326CD8
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _022DE74C
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl FUN_02079830
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, pc}
_022DE74C:
	ldr r0, _022DE794 @ =0x02326CD8
	mov r3, #0x1000
	ldr r2, [r0]
	ldr r1, _022DE798 @ =ov00_022DE79C
	add r0, r2, #0x11c
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	str ip, [sp, #4]
	bl FUN_02079560
	ldr r0, _022DE794 @ =0x02326CD8
	ldr r0, [r0]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl FUN_02079940
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022DE794: .4byte 0x02326CD8
_022DE798: .4byte ov00_022DE79C
	arm_func_end ov00_022DE714

	arm_func_start ov00_022DE79C
ov00_022DE79C: @ 0x022DE79C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x29c
	ldr r5, _022DF628 @ =0x02326CD8
	mov sb, #0
	ldr r0, [r5]
	mov fp, sb
	add r0, r0, #0x1000
	ldr r7, [r0, #0x108]
	ldr r8, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov sl, sb
	sub r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _022DF62C @ =0x00009C40
	mov r4, sb
	lsr r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_022DE7FC:
	ldr r0, _022DF630 @ =0x02319084
	ldr r1, _022DF634 @ =0x02326CF0
	ldr r0, [r0]
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, [sp, #0x18]
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r5, #0x14]
	bl ov00_022DD0DC
	cmp r0, #0
	beq _022DE864
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DE864:
	ldr r0, [r5, #0x14]
	bl ov00_022DD1F8
	cmp r0, #0
	beq _022DE88C
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DE88C:
	ldr r0, _022DF638 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov00_022DD290
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DE8C4
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
_022DE8C4:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _022DE8E4
	cmp r1, #8
	beq _022DE910
	b _022DE8F8
_022DE8E4:
	ldr r0, _022DF628 @ =0x02326CD8
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_022DE8F8:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #3
	bl ov00_022DF6B0
	b _022DF5D4
_022DE910:
	mov r1, #0
	bl ov00_022DE068
	cmp r0, #1
	beq _022DE938
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DE938:
	ldr r0, [r5, #0x14]
	ldr r1, _022DF63C @ =0x02319198
	bl ov00_022DE308
	bl FUN_0208B360
	mov r6, r0
	ldr r0, _022DF640 @ =0x022BCA70
	ldr r0, [r0]
	cmp r0, #0x22
	bne _022DE968
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DE968:
	cmp r6, #0xc8
	beq _022DE980
	ldr r0, _022DF644 @ =0x0000012E
	cmp r6, r0
	beq _022DE994
	b _022DEC7C
_022DE980:
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r5, #8]
	b _022DEC94
_022DE994:
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _022DEBE4
	ldr r1, _022DF628 @ =0x02326CD8
	mvn r2, #5
	str r2, [r0, #4]
	ldr r0, [r1, #0x14]
	bl ov00_022DD890
	ldr r0, _022DF648 @ =0x02318BC8
	ldr r2, _022DF628 @ =0x02326CD8
	ldr r0, [r0]
	mov r1, #0
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r1, #0x200
	str r1, [r2, #0x20]
	str r7, [r2, #0x24]
	ldr r3, _022DF64C @ =0x00004E20
	str r8, [r2, #0x28]
	ldr r1, _022DF650 @ =0x023191A4
	str r3, [r2, #0x30]
	bl FUN_0208982C
	cmp r0, #0
	ldrne r0, _022DF628 @ =0x02326CD8
	movne r1, #1
	strne r1, [r0, #0x2c]
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r1, _022DF634 @ =0x02326CF0
	ldr r0, [r0, #0x14]
	bl ov00_022DD0DC
	cmp r0, #0
	beq _022DEA3C
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DEA3C:
	add r0, sp, #0x44
	bl ov00_022DCAB8
	cmp r0, #0
	beq _022DEA68
	ldr r0, _022DF628 @ =0x02326CD8
	add r1, sp, #0x44
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl ov00_022DCD90
	cmp r0, #0
	bne _022DEA80
_022DEA68:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #8
	bl ov00_022DF6B0
	b _022DF5D4
_022DEA80:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r1, _022DF654 @ =0x023191C4
	ldr r0, [r0, #0x14]
	ldr r2, _022DF658 @ =0x023191CC
	mov r3, #7
	bl ov00_022DDAE0
	cmp r0, #0
	bne _022DEAD8
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl FUN_02089678
	ldr r1, _022DF628 @ =0x02326CD8
	mov r3, r0
	ldr r0, [r1, #0x14]
	ldr r1, _022DF65C @ =0x023191D4
	mov r2, r4
	bl ov00_022DDAE0
	cmp r0, #0
	beq _022DEAF0
_022DEAD8:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #8
	bl ov00_022DF6B0
	b _022DF5D4
_022DEAF0:
	ldr r1, _022DF628 @ =0x02326CD8
	ldr r0, _022DF660 @ =0x023190FC
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x118]
	blx r8
	ldr r1, _022DF628 @ =0x02326CD8
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x118]
	ldr r0, [r1, #0x14]
	bl ov00_022DD1F8
	cmp r0, #0
	beq _022DEB48
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DEB48:
	ldr r0, _022DF638 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	ldr r2, _022DF628 @ =0x02326CD8
	sub r1, r0, #1
	ldr r0, [r2, #0x14]
	bl ov00_022DD290
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r1, [r0, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DEB88
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
_022DEB88:
	ldr r2, _022DF628 @ =0x02326CD8
	ldr r0, [r2, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _022DEBAC
	cmp r1, #8
	beq _022DEBD4
	b _022DEBBC
_022DEBAC:
	ldr r0, [r2]
	mvn r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #4]
_022DEBBC:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #3
	bl ov00_022DF6B0
	b _022DF5D4
_022DEBD4:
	bl ov00_022DD890
	mov r0, #7
	bl ov00_022DF6B0
	b _022DF5D4
_022DEBE4:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0xa08]
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _022DEC0C
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DEC0C:
	mov r0, r1
	bl FUN_02089678
	add r1, r0, #1
	ldr r0, _022DF664 @ =0x02319130
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _022DEC5C
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #4
	bl ov00_022DF6B0
	b _022DF5D4
_022DEC5C:
	ldr r0, [sp, #0x14]
	bl FUN_02089678
	mov r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r2, r2, #1
	bl FUN_0208975C
	b _022DEC94
_022DEC7C:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #0xa
	bl ov00_022DF6B0
	b _022DF5D4
_022DEC94:
	ldr r0, [r5, #0x14]
	bl ov00_022DD890
	add r0, sp, #0x30
	bl ov00_022ED468
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r4
	bne _022DEDCC
	ldr r1, [r5]
	ldr r0, _022DF668 @ =0x02326D0C
	add r2, r1, #0x1000
	ldr r1, [sp, #0x20]
	str r1, [r2, #4]
	mov r2, #0
	mov r1, r0
	strh r2, [r1]
	strb r2, [r1, #0x34]
	ldr r1, [r5]
	add r2, r1, #0x1000
	ldr r3, [r2, #0x108]
	mov r1, r0
	str r3, [r1, #0x40]
	ldr r2, [r2, #0x10c]
	str r2, [r1, #0x44]
	ldr r1, [r5, #0x14]
	bl ov00_022DBCA4
	cmp r0, #0
	beq _022DED18
	mov r0, #5
	bl ov00_022DF6B0
	b _022DF5D4
_022DED18:
	bl ov00_022DBF60
	bl ov00_022DBF90
	cmp r0, #0x15
	beq _022DEDC8
	bl ov00_022DBF90
	cmp r0, #9
	bne _022DED4C
	ldr r0, _022DF628 @ =0x02326CD8
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	b _022DEDB8
_022DED4C:
	add r0, sp, #0xd8
	bl ov00_022DBFDC
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _022DEDA4
	ldr r1, [sp, #0xd8]
	ldr r0, _022DF66C @ =0xFFFFA4FA
	cmp r1, r0
	beq _022DED80
	bl ov00_022DBF90
	cmp r0, #0xb
	bne _022DEDA4
_022DED80:
	ldr r0, _022DF628 @ =0x02326CD8
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	bl ov00_022DBF08
	mov r0, #0xb
	bl ov00_022DF6B0
	b _022DF5D4
_022DEDA4:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r1, [sp, #0xd8]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_022DEDB8:
	bl ov00_022DBF08
	mov r0, #6
	bl ov00_022DF6B0
	b _022DF5D4
_022DEDC8:
	bl ov00_022DBF08
_022DEDCC:
	cmp r6, #0xc8
	bne _022DEDF4
	ldr r0, _022DF628 @ =0x02326CD8
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov00_022DF6B0
	b _022DF5D4
_022DEDF4:
	ldr r0, [r5]
	ldr r1, _022DF650 @ =0x023191A4
	add r2, r0, #0x1000
	ldr r0, [sp, #0x24]
	str r0, [r2, #4]
	ldr r0, _022DF648 @ =0x02318BC8
	mov r2, #0
	ldr r0, [r0]
	str r0, [r5, #0x18]
	str r2, [r5, #0x1c]
	mov r2, #0x1000
	str r2, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r2, _022DF62C @ =0x00009C40
	str r8, [r5, #0x28]
	str r2, [r5, #0x30]
	bl FUN_0208982C
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	ldr r1, _022DF634 @ =0x02326CF0
	bl ov00_022DD0DC
	cmp r0, #0
	beq _022DEE70
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DEE70:
	add r0, sp, #0x44
	bl ov00_022DCAB8
	cmp r0, #0
	beq _022DEE98
	ldr r0, [r5, #0x14]
	add r1, sp, #0x44
	mov r2, #1
	bl ov00_022DCD90
	cmp r0, #0
	bne _022DEEB0
_022DEE98:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #8
	bl ov00_022DF6B0
	b _022DF5D4
_022DEEB0:
	ldr r0, [r5, #0x14]
	ldr r1, _022DF654 @ =0x023191C4
	ldr r2, _022DF670 @ =0x023191E4
	mov r3, #5
	bl ov00_022DDAE0
	cmp r0, #0
	bne _022DEEFC
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x114]
	mov r0, r6
	bl FUN_02089678
	mov r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, _022DF674 @ =0x023191EC
	mov r2, r6
	bl ov00_022DDAE0
	cmp r0, #0
	beq _022DEF14
_022DEEFC:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #8
	bl ov00_022DF6B0
	b _022DF5D4
_022DEF14:
	ldr r1, [r5]
	ldr r0, _022DF678 @ =0x023190E0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, #0
	blx r8
	ldr r0, [r5]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r5, #0x14]
	bl ov00_022DD1F8
	cmp r0, #0
	beq _022DEF64
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DEF64:
	ldr r0, _022DF638 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov00_022DD290
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DEF9C
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
_022DEF9C:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _022DF000
	cmp r1, #3
	beq _022DEFC4
	cmp r1, #8
	beq _022DF02C
	b _022DF014
_022DEFC4:
	bl ov00_022DD890
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _022DEFF4
	ldr r0, [r0]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov00_022DF6B0
	b _022DF5D4
_022DEFF4:
	mov r0, #3
	bl ov00_022DF6B0
	b _022DF5D4
_022DF000:
	ldr r0, _022DF628 @ =0x02326CD8
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_022DF014:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #3
	bl ov00_022DF6B0
	b _022DF5D4
_022DF02C:
	mov r1, #0
	bl ov00_022DE068
	cmp r0, #1
	beq _022DF054
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DF054:
	ldr r0, [r5, #0x14]
	ldr r1, _022DF63C @ =0x02319198
	bl ov00_022DE308
	bl FUN_0208B360
	mov r6, r0
	ldr r0, _022DF640 @ =0x022BCA70
	ldr r0, [r0]
	cmp r0, #0x22
	bne _022DF090
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DF090:
	cmp r6, #0xc8
	beq _022DF0E4
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	ldr r1, _022DF628 @ =0x02326CD8
	ldr r0, [r1, #0xc]
	cmp r0, #1
	ldreq r0, _022DF644 @ =0x0000012E
	cmpeq r6, r0
	bne _022DF0D8
	ldr r0, [r1]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov00_022DF6B0
	b _022DF5D4
_022DF0D8:
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DF0E4:
	ldr r0, [r5, #0x14]
	ldr r1, _022DF67C @ =0x023191F4
	add r2, sp, #0x2c
	mov r3, #4
	bl ov00_022DE360
	cmp r0, #0
	bgt _022DF118
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF118:
	add r0, sp, #0x2c
	bl FUN_0208B360
	ldr r1, _022DF640 @ =0x022BCA70
	ldr r1, [r1]
	cmp r1, #0x22
	bne _022DF148
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF148:
	ldr r1, [r5, #0xc]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _022DF178
	ldr r0, _022DF628 @ =0x02326CD8
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov00_022DF6B0
	b _022DF5D4
_022DF178:
	cmp r0, #0x64
	blt _022DF198
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #6
	bl ov00_022DF6B0
	b _022DF5D4
_022DF198:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _022DF680 @ =0x02319200
	mov r3, r2
	bl ov00_022DE360
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _022DF1D0
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF1D0:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _022DF684 @ =0x02319204
	mov r3, r2
	bl ov00_022DE360
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _022DF208
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF208:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _022DF688 @ =0x0231920C
	mov r3, r2
	bl ov00_022DE360
	ldr r1, [sp, #0x10]
	mov r6, r0
	ldr r0, _022DF68C @ =0x0231914C
	add r1, r1, #1
	blx r7
	movs sb, r0
	bne _022DF250
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #4
	bl ov00_022DF6B0
	b _022DF5D4
_022DF250:
	ldr r1, [sp, #0xc]
	ldr r0, _022DF690 @ =0x02319158
	add r1, r1, #1
	blx r7
	movs fp, r0
	bne _022DF280
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #4
	bl ov00_022DF6B0
	b _022DF5D4
_022DF280:
	cmp r6, #0
	ble _022DF2B4
	ldr r0, _022DF694 @ =0x02319168
	add r1, r6, #1
	blx r7
	movs sl, r0
	bne _022DF2B4
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #4
	bl ov00_022DF6B0
	b _022DF5D4
_022DF2B4:
	ldr r0, [sp, #0x10]
	ldr r1, _022DF680 @ =0x02319200
	add r3, r0, #1
	ldr r0, [r5, #0x14]
	mov r2, sb
	bl ov00_022DE360
	cmp r0, #0
	bge _022DF2EC
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF2EC:
	ldr r1, [sp, #0xc]
	mov r2, fp
	add r3, r1, #1
	mov r1, #0
	strb r1, [sb, r0]
	ldr r0, [r5, #0x14]
	ldr r1, _022DF684 @ =0x02319204
	bl ov00_022DE360
	cmp r0, #0
	bge _022DF32C
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF32C:
	mov r1, #0
	strb r1, [fp, r0]
	mov r0, r1
	cmp r6, #0
	str r0, [sp, #8]
	ble _022DF3C8
	ldr r0, [r5, #0x14]
	ldr r1, _022DF688 @ =0x0231920C
	add r3, r6, #1
	mov r2, sl
	bl ov00_022DE360
	cmp r0, #0
	bge _022DF378
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF378:
	mov r1, #0
	strb r1, [sl, r0]
	mov r0, sl
	bl FUN_0208B360
	ldr r1, _022DF640 @ =0x022BCA70
	ldr r1, [r1]
	cmp r1, #0x22
	bne _022DF3B0
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #9
	bl ov00_022DF6B0
	b _022DF5D4
_022DF3B0:
	mov r1, #0x3e8
	mul r1, r0, r1
	ldr r0, _022DF698 @ =0x0002BF20
	str r1, [sp, #8]
	cmp r1, r0
	strgt r0, [sp, #8]
_022DF3C8:
	ldr r0, [r5, #0x14]
	bl ov00_022DD890
	ldr r0, [r5]
	ldr r1, _022DF634 @ =0x02326CF0
	add r2, r0, #0x1000
	ldr r0, [sp, #0x28]
	str r0, [r2, #4]
	str sb, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, _022DF69C @ =0x0001D4C0
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	bl ov00_022DD0DC
	cmp r0, #0
	beq _022DF430
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DF430:
	ldr r0, [r5, #0x14]
	mov r1, fp
	bl ov00_022DDBEC
	cmp r0, #0
	beq _022DF45C
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #8
	bl ov00_022DF6B0
	b _022DF5D4
_022DF45C:
	ldr r0, [r5, #0x14]
	bl ov00_022DD1F8
	cmp r0, #0
	beq _022DF484
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #1
	bl ov00_022DF6B0
	b _022DF5D4
_022DF484:
	ldr r0, _022DF638 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl ov00_022DD290
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _022DF4BC
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl FUN_02079800
_022DF4BC:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _022DF4DC
	cmp r1, #8
	beq _022DF508
	b _022DF4F0
_022DF4DC:
	ldr r0, _022DF628 @ =0x02326CD8
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_022DF4F0:
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #3
	bl ov00_022DF6B0
	b _022DF5D4
_022DF508:
	mov r1, #1
	bl ov00_022DE068
	cmp r0, #1
	beq _022DF530
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DF530:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r6, [r1, #0xa08]
	cmp r6, #0
	bne _022DF554
	bl ov00_022DD890
	mov r0, #2
	bl ov00_022DF6B0
	b _022DF5D4
_022DF554:
	mov r0, r6
	bl FUN_02089678
	add r1, r0, #1
	ldr r0, _022DF6A0 @ =0x02319178
	blx r7
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _022DF5A4
	ldr r0, _022DF628 @ =0x02326CD8
	ldr r0, [r0, #0x14]
	bl ov00_022DD890
	mov r0, #4
	bl ov00_022DF6B0
	b _022DF5D4
_022DF5A4:
	mov r0, r6
	bl FUN_02089678
	mov r2, r0
	ldr r0, [sp]
	mov r1, r6
	add r2, r2, #1
	bl FUN_0208975C
	ldr r0, [r5, #0x14]
	bl ov00_022DD890
	ldr r0, [sp, #8]
	bl FUN_02079B14
	b _022DE7FC
_022DF5D4:
	cmp sb, #0
	beq _022DF5EC
	ldr r0, _022DF6A4 @ =0x02319214
	mov r1, sb
	mov r2, #0
	blx r8
_022DF5EC:
	cmp fp, #0
	beq _022DF604
	ldr r0, _022DF6A8 @ =0x02319220
	mov r1, fp
	mov r2, #0
	blx r8
_022DF604:
	cmp sl, #0
	addeq sp, sp, #0x29c
	popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022DF6AC @ =0x0231922C
	mov r1, sl
	mov r2, #0
	blx r8
	add sp, sp, #0x29c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DF628: .4byte 0x02326CD8
_022DF62C: .4byte 0x00009C40
_022DF630: .4byte 0x02319084
_022DF634: .4byte 0x02326CF0
_022DF638: .4byte 0x022B966C
_022DF63C: .4byte 0x02319198
_022DF640: .4byte 0x022BCA70
_022DF644: .4byte 0x0000012E
_022DF648: .4byte 0x02318BC8
_022DF64C: .4byte 0x00004E20
_022DF650: .4byte 0x023191A4
_022DF654: .4byte 0x023191C4
_022DF658: .4byte 0x023191CC
_022DF65C: .4byte 0x023191D4
_022DF660: .4byte 0x023190FC
_022DF664: .4byte 0x02319130
_022DF668: .4byte 0x02326D0C
_022DF66C: .4byte 0xFFFFA4FA
_022DF670: .4byte 0x023191E4
_022DF674: .4byte 0x023191EC
_022DF678: .4byte 0x023190E0
_022DF67C: .4byte 0x023191F4
_022DF680: .4byte 0x02319200
_022DF684: .4byte 0x02319204
_022DF688: .4byte 0x0231920C
_022DF68C: .4byte 0x0231914C
_022DF690: .4byte 0x02319158
_022DF694: .4byte 0x02319168
_022DF698: .4byte 0x0002BF20
_022DF69C: .4byte 0x0001D4C0
_022DF6A0: .4byte 0x02319178
_022DF6A4: .4byte 0x02319214
_022DF6A8: .4byte 0x02319220
_022DF6AC: .4byte 0x0231922C
	arm_func_end ov00_022DE79C

	arm_func_start ov00_022DF6B0
ov00_022DF6B0: @ 0x022DF6B0
	push {r4, lr}
	ldr r1, _022DF6F0 @ =0x02326CD8
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl FUN_0207A048
	ldr r1, _022DF6F0 @ =0x02326CD8
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r4, [r0]
	ldr r0, [r1]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl FUN_0207A0CC
	pop {r4, pc}
	.align 2, 0
_022DF6F0: .4byte 0x02326CD8
	arm_func_end ov00_022DF6B0

	arm_func_start ov00_022DF6F4
ov00_022DF6F4: @ 0x022DF6F4
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r6, r0
	bl FUN_02089678
	mov r4, r0
	ldr r0, _022DF900 @ =0x02319298
	bl FUN_02089678
	cmp r4, r0
	ldrsbeq r0, [r6, #7]
	cmpeq r0, #0x20
	ldrsbeq r0, [r6, #0xb]
	cmpeq r0, #0x20
	ldrsbeq r0, [r6, #0x10]
	cmpeq r0, #0x20
	ldrsbeq r0, [r6, #0x13]
	cmpeq r0, #0x3a
	ldrsbeq r0, [r6, #0x16]
	cmpeq r0, #0x3a
	ldrsbeq r0, [r6, #0x19]
	cmpeq r0, #0x20
	bne _022DF8F4
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl FUN_020828A8
	cmp r0, #0
	bne _022DF8F4
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl FUN_02082FDC
	mov r4, r0
	mov r5, r1
	mvn r0, #0
	cmp r5, r0
	cmpeq r4, r0
	beq _022DF8F4
	add r0, sp, #0
	mov r1, r6
	bl FUN_02089694
	mov r2, #0
	ldr r1, _022DF904 @ =0x022BCA70
	add r0, sp, #0xc
	strb r2, [sp, #7]
	strb r2, [sp, #0xb]
	strb r2, [sp, #0x10]
	strb r2, [sp, #0x13]
	strb r2, [sp, #0x16]
	strb r2, [sp, #0x19]
	str r2, [r1]
	bl FUN_0208B360
	ldr r1, _022DF904 @ =0x022BCA70
	str r0, [sp, #0x2c]
	ldr r1, [r1]
	cmp r1, #0x22
	beq _022DF8F4
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r7, _022DF908 @ =0x02319268
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r6, sp, #8
_022DF7E8:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	bl FUN_0208982C
	cmp r0, #0
	addeq r0, r8, #1
	streq r0, [sp, #0x30]
	beq _022DF810
	add r8, r8, #1
	cmp r8, #0xc
	blt _022DF7E8
_022DF810:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _022DF8F4
	ldr r1, _022DF904 @ =0x022BCA70
	mov r2, #0
	add r0, sp, #5
	str r2, [r1]
	bl FUN_0208B360
	ldr r1, _022DF904 @ =0x022BCA70
	str r0, [sp, #0x34]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _022DF8F4
	mov r2, #0
	add r0, sp, #0x11
	str r2, [r1]
	bl FUN_0208B360
	ldr r1, _022DF904 @ =0x022BCA70
	str r0, [sp, #0x20]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _022DF8F4
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1]
	bl FUN_0208B360
	ldr r1, _022DF904 @ =0x022BCA70
	str r0, [sp, #0x24]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _022DF8F4
	mov r2, #0
	add r0, sp, #0x17
	str r2, [r1]
	bl FUN_0208B360
	ldr r1, _022DF904 @ =0x022BCA70
	str r0, [sp, #0x28]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _022DF8F4
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl FUN_02082FDC
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	beq _022DF8F4
	ldr r2, _022DF90C @ =0x02326D54
	subs r0, r4, r0
	str r0, [r2, #0xc]
	sbc r0, r5, r1
	str r0, [r2, #0x10]
	stmib r2, {r4, r5}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	pop {r3, r4, r5, r6, r7, r8, pc}
_022DF8F4:
	mov r0, #0
	add sp, sp, #0x3c
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022DF900: .4byte 0x02319298
_022DF904: .4byte 0x022BCA70
_022DF908: .4byte 0x02319268
_022DF90C: .4byte 0x02326D54
	arm_func_end ov00_022DF6F4

	arm_func_start ov00_022DF910
ov00_022DF910: @ 0x022DF910
	push {r3, r4, r5, lr}
	ldr r2, _022DF998 @ =0x02326D68
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _022DF940
	ldr r1, _022DF99C @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DF940:
	ldr r0, _022DF9A0 @ =0x023192B8
	ldr r1, _022DF9A4 @ =0x00001C20
	blx r5
	ldr r1, _022DF998 @ =0x02326D68
	cmp r0, #0
	str r0, [r1]
	bne _022DF970
	ldr r1, _022DF99C @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DF970:
	ldr r2, _022DF9A4 @ =0x00001C20
	mov r1, #0
	bl FUN_0207C40C
	ldr r1, _022DF998 @ =0x02326D68
	mov r0, #1
	ldr r2, [r1]
	str r5, [r2]
	ldr r1, [r1]
	str r4, [r1, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DF998: .4byte 0x02326D68
_022DF99C: .4byte 0xFFFFA1DC
_022DF9A0: .4byte 0x023192B8
_022DF9A4: .4byte 0x00001C20
	arm_func_end ov00_022DF910

	arm_func_start ov00_022DF9A8
ov00_022DF9A8: @ 0x022DF9A8
	push {r3, lr}
	ldr r0, _022DF9EC @ =0x02326D68
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	add r0, r0, #8
	bl ov00_022DD890
	ldr r1, _022DF9EC @ =0x02326D68
	ldr r0, _022DF9F0 @ =0x023192C8
	ldr r1, [r1]
	mov r2, #0
	ldr r3, [r1, #4]
	blx r3
	ldr r0, _022DF9EC @ =0x02326D68
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DF9EC: .4byte 0x02326D68
_022DF9F0: .4byte 0x023192C8
	arm_func_end ov00_022DF9A8

	arm_func_start ov00_022DF9F4
ov00_022DF9F4: @ 0x022DF9F4
	push {r3, r4, r5, lr}
	sub sp, sp, #0xb0
	ldr r2, _022DFC38 @ =0x02326D68
	mov r5, r0
	ldr r2, [r2]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc1c]
	mov r1, #0
	mov r2, #0x174
	bl FUN_0207C40C
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	beq _022DFA4C
	add r0, r1, #0x1b40
	bl FUN_02079830
	cmp r0, #0
	bne _022DFA4C
	bl FUN_0207BC20
_022DFA4C:
	ldr r0, _022DFC3C @ =0x02318BC8
	ldr r1, _022DFC38 @ =0x02326D68
	ldr r0, [r0]
	mov r3, #0
	ldr r4, [r1]
	mov r2, #0x1000
	str r0, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r4]
	ldr r1, _022DFC40 @ =0x023192D8
	str r2, [sp, #0xc]
	ldr r2, [r4, #4]
	str r2, [sp, #0x10]
	bl FUN_0208982C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	moveq r0, #0
	ldr r2, _022DFC44 @ =0x00004E20
	streq r0, [sp, #0x14]
	add r1, sp, #0
	add r0, r4, #8
	str r2, [sp, #0x18]
	bl ov00_022DD0DC
	cmp r0, #0
	beq _022DFAD0
	ldr r1, _022DFC48 @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xb0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DFAD0:
	add r0, sp, #0x1c
	bl ov00_022DCAB8
	cmp r0, #0
	beq _022DFB00
	ldr r0, _022DFC38 @ =0x02326D68
	add r1, sp, #0x1c
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #8
	bl ov00_022DCD90
	cmp r0, #0
	bne _022DFB28
_022DFB00:
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD890
	ldr r1, _022DFC48 @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xb0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DFB28:
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r1, _022DFC4C @ =0x023192F8
	ldr r0, [r0]
	ldr r2, _022DFC50 @ =0x02319300
	add r0, r0, #8
	mov r3, #6
	bl ov00_022DDAE0
	cmp r0, #0
	bne _022DFB70
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r1, _022DFC54 @ =0x02319308
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #8
	mov r3, #4
	bl ov00_022DDAE0
	cmp r0, #0
	beq _022DFB98
_022DFB70:
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD890
	ldr r1, _022DFC48 @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xb0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DFB98:
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD1F8
	cmp r0, #0
	beq _022DFBD8
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD890
	ldr r1, _022DFC48 @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xb0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022DFBD8:
	ldr r0, _022DFC58 @ =0x022B966C
	ldr r0, [r0, #4]
	bl FUN_02079B0C
	ldr r1, _022DFC38 @ =0x02326D68
	ldr r2, [r1]
	sub r1, r0, #1
	add r0, r2, #8
	bl ov00_022DD290
	ldr r0, _022DFC38 @ =0x02326D68
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	popne {r3, r4, r5, pc}
	add r0, r1, #8
	bl ov00_022DD890
	ldr r1, _022DFC48 @ =0xFFFFA1DC
	mov r0, #9
	bl ov00_022E0394
	mov r0, #0
	add sp, sp, #0xb0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DFC38: .4byte 0x02326D68
_022DFC3C: .4byte 0x02318BC8
_022DFC40: .4byte 0x023192D8
_022DFC44: .4byte 0x00004E20
_022DFC48: .4byte 0xFFFFA1DC
_022DFC4C: .4byte 0x023192F8
_022DFC50: .4byte 0x02319300
_022DFC54: .4byte 0x02319308
_022DFC58: .4byte 0x022B966C
	arm_func_end ov00_022DF9F4

	arm_func_start ov00_022DFC5C
ov00_022DFC5C: @ 0x022DFC5C
	push {r3, lr}
	ldr r0, _022DFD28 @ =0x02326D68
	ldr r1, [r0]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbac]
	cmp r0, #0
	moveq r0, #1
	popeq {r3, pc}
	add r0, r1, #0x1b40
	bl FUN_02079830
	cmp r0, #1
	bne _022DFD20
	ldr r0, _022DFD28 @ =0x02326D68
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _022DFCF4
	cmp r0, #8
	bne _022DFD04
	bl ov00_022DFD30
	cmp r0, #0
	bne _022DFCDC
	ldr r0, _022DFD28 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD890
	mov r0, #4
	pop {r3, pc}
_022DFCDC:
	ldr r0, _022DFD28 @ =0x02326D68
	ldr r0, [r0]
	add r0, r0, #8
	bl ov00_022DD890
	mov r0, #3
	pop {r3, pc}
_022DFCF4:
	add r0, r1, #8
	bl ov00_022DD890
	mov r0, #5
	pop {r3, pc}
_022DFD04:
	add r0, r1, #8
	bl ov00_022DD890
	ldr r1, _022DFD2C @ =0xFFFFA1DB
	mov r0, #0x11
	bl ov00_022E0394
	mov r0, #4
	pop {r3, pc}
_022DFD20:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
_022DFD28: .4byte 0x02326D68
_022DFD2C: .4byte 0xFFFFA1DB
	arm_func_end ov00_022DFC5C

	arm_func_start ov00_022DFD30
ov00_022DFD30: @ 0x022DFD30
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _022DFF20 @ =0x02326D68
	mov r1, #0
	ldr r4, [r0]
	add r0, r4, #8
	bl ov00_022DE068
	cmp r0, #0
	bne _022DFD6C
	ldr r1, _022DFF24 @ =0xFFFF9DF3
	mov r0, #0x10
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFD6C:
	ldr r1, _022DFF28 @ =0x0231930C
	add r0, r4, #8
	bl ov00_022DE308
	cmp r0, #0
	beq _022DFD84
	bl ov00_022DF6F4
_022DFD84:
	ldr r1, _022DFF2C @ =0x02319314
	add r0, r4, #8
	bl ov00_022DE308
	cmp r0, #0
	bne _022DFDB0
	ldr r1, _022DFF24 @ =0xFFFF9DF3
	mov r0, #0x10
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFDB0:
	bl FUN_0208B360
	ldr r1, _022DFF30 @ =0x022BCA70
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _022DFDE0
	ldr r1, _022DFF24 @ =0xFFFF9DF3
	mov r0, #0x10
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFDE0:
	cmp r2, #0xc8
	beq _022DFE04
	ldr r1, _022DFF34 @ =0xFFFF9E58
	mov r0, #0x10
	sub r1, r1, r2
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFE04:
	ldr r1, _022DFF38 @ =0x02319320
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #4
	bl ov00_022DE360
	cmp r0, #0
	bgt _022DFE38
	ldr r1, _022DFF24 @ =0xFFFF9DF3
	mov r0, #0x10
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFE38:
	add r0, sp, #0
	bl FUN_0208B360
	ldr r1, _022DFF30 @ =0x022BCA70
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _022DFE6C
	ldr r1, _022DFF24 @ =0xFFFF9DF3
	mov r0, #0x10
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFE6C:
	cmp r2, #0x64
	blt _022DFE90
	ldr r1, _022DFF3C @ =0xFFFFA240
	mov r0, #0x10
	sub r1, r1, r2
	bl ov00_022E0394
	add sp, sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_022DFE90:
	ldr r0, _022DFF20 @ =0x02326D68
	ldr r1, _022DFF40 @ =0x0231932C
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x40
	add r2, r2, #4
	bl ov00_022DE360
	ldr r0, _022DFF20 @ =0x02326D68
	ldr r1, _022DFF44 @ =0x02319334
	ldr r2, [r0]
	add r0, r4, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc1c]
	mov r3, #0x12c
	add r2, r2, #0x45
	bl ov00_022DE360
	ldr r1, _022DFF48 @ =0x02319344
	add r2, sp, #0
	add r0, r4, #8
	mov r3, #1
	bl ov00_022DE360
	ldrsb r0, [sp]
	cmp r0, #0x59
	ldreq r0, _022DFF20 @ =0x02326D68
	moveq r1, #1
	ldrne r0, _022DFF20 @ =0x02326D68
	movne r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xc1c]
	str r1, [r0]
	mov r0, #1
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022DFF20: .4byte 0x02326D68
_022DFF24: .4byte 0xFFFF9DF3
_022DFF28: .4byte 0x0231930C
_022DFF2C: .4byte 0x02319314
_022DFF30: .4byte 0x022BCA70
_022DFF34: .4byte 0xFFFF9E58
_022DFF38: .4byte 0x02319320
_022DFF3C: .4byte 0xFFFFA240
_022DFF40: .4byte 0x0231932C
_022DFF44: .4byte 0x02319334
_022DFF48: .4byte 0x02319344
	arm_func_end ov00_022DFD30

	arm_func_start ov00_022DFF4C
ov00_022DFF4C: @ 0x022DFF4C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _022E00CC @ =0xAAAAAAAB
	str r2, [sp]
	umull r4, r5, r1, r4
	mov r6, #3
	lsr r5, r5, #1
	umull r4, r5, r6, r5
	mov sl, r0
	subs r5, r1, r4
	movne r5, #4
	ldr r2, _022E00CC @ =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r4, r1, r2
	lsr r4, r4, #1
	addeq sp, sp, #8
	add r0, r5, r4, lsl #2
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	poplo {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r8, [sp]
	cmp sl, r7
	beq _022E00BC
	sub fp, r2, #0x80000000
	ldr r5, _022E00D0 @ =0x02319350
	mov r4, fp
_022DFFC8:
	sub sb, r7, sl
	lsl r0, sb, #3
	smull r1, r2, r4, r0
	add r2, r2, r0, lsr #31
	mov r1, #6
	smull r2, r3, r1, r2
	subs r2, r0, r2
	smull r1, r2, fp, r0
	movne r3, #1
	moveq r3, #0
	add r2, r2, r0, lsr #31
	cmp sb, #3
	add r6, r2, r3
	movge sb, #3
	add r0, sp, #4
	mov r1, #0
	mov r2, #3
	bl FUN_0207C40C
	mov r0, sl
	add r1, sp, #4
	mov r2, sb
	bl FUN_0207C4C8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	asr r0, r0, #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlt r0, #0x2a
	blt _022E005C
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	lsl r2, r2, #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_022E005C:
	strb r0, [r8, #1]
	cmp r6, #3
	movlt r0, #0x2a
	blt _022E0088
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	lsl r2, r2, #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_022E0088:
	strb r0, [r8, #2]
	cmp r6, #4
	movlt r0, #0x2a
	blt _022E00A8
	ldrb r0, [sp, #6]
	ldr r1, [r5]
	and r0, r0, #0x3f
	ldrsb r0, [r1, r0]
_022E00A8:
	add sl, sl, sb
	strb r0, [r8, #3]
	cmp sl, r7
	add r8, r8, #4
	bne _022DFFC8
_022E00BC:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E00CC: .4byte 0xAAAAAAAB
_022E00D0: .4byte 0x02319350
	arm_func_end ov00_022DFF4C

	arm_func_start ov00_022E00D4
ov00_022E00D4: @ 0x022E00D4
	push {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov ip, r5
	cmp r1, #0
	bls _022E010C
_022E00F4:
	ldrsb r4, [r0, ip]
	add ip, ip, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp ip, r1
	blo _022E00F4
_022E010C:
	asr ip, r5, #2
	add ip, r5, ip, lsr #29
	asr ip, ip, #3
	cmp r2, #0
	moveq r0, ip
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r3, ip
	mvnlo r0, #0
	poplo {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_022E0140:
	mov r7, #0
	add r6, sp, #0
	mov r3, r7
	mov r4, #0x3f
	mov lr, #0x3e
_022E0154:
	ldrsb r5, [r0, r7]
	cmp r5, #0x41
	blt _022E0170
	cmp r5, #0x5a
	suble r5, r5, #0x41
	strble r5, [r6]
	ble _022E01B8
_022E0170:
	cmp r5, #0x61
	blt _022E0188
	cmp r5, #0x7a
	suble r5, r5, #0x47
	strble r5, [r6]
	ble _022E01B8
_022E0188:
	cmp r5, #0x30
	blt _022E01A0
	cmp r5, #0x39
	addle r5, r5, #4
	strble r5, [r6]
	ble _022E01B8
_022E01A0:
	cmp r5, #0x2e
	strbeq lr, [r6]
	beq _022E01B8
	cmp r5, #0x2d
	strbeq r4, [r6]
	strbne r3, [r6]
_022E01B8:
	add r7, r7, #1
	cmp r7, #4
	add r6, r6, #1
	blt _022E0154
	ldrsb r4, [sp, #1]
	ldrsb lr, [sp]
	add r3, r1, #1
	asr r4, r4, #4
	orr r4, r4, lr, lsl #2
	sub r3, r3, r2
	strb r4, [r1]
	cmp r3, ip
	add r0, r0, #4
	bge _022E0234
	ldrsb lr, [sp, #2]
	ldrsb r4, [sp, #1]
	add r3, r1, #2
	asr lr, lr, #2
	orr r4, lr, r4, lsl #4
	sub r3, r3, r2
	strb r4, [r1, #1]
	cmp r3, ip
	bge _022E0234
	ldrsb lr, [sp, #2]
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r3, r1, r2
	cmp r3, ip
	blt _022E0140
_022E0234:
	mov r0, r3
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022E00D4

	arm_func_start ov00_022E023C
ov00_022E023C: @ 0x022E023C
	cmp r0, #0
	ldrne r1, _022E0258 @ =0x02326D6C
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _022E0258 @ =0x02326D6C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022E0258: .4byte 0x02326D6C
	arm_func_end ov00_022E023C

	arm_func_start ov00_022E025C
ov00_022E025C: @ 0x022E025C
	cmp r0, #0
	ldrne r2, _022E0354 @ =0x02326D6C
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _022E0348
	ldr r0, _022E0354 @ =0x02326D6C
	ldr r0, [r0]
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _022E0340
_022E0288: @ jump table
	b _022E0340 @ case 0
	b _022E0310 @ case 1
	b _022E02E0 @ case 2
	b _022E02E0 @ case 3
	b _022E02E0 @ case 4
	b _022E02E0 @ case 5
	b _022E02EC @ case 6
	b _022E02F8 @ case 7
	b _022E02E0 @ case 8
	b _022E0310 @ case 9
	b _022E0304 @ case 10
	b _022E0304 @ case 11
	b _022E0304 @ case 12
	b _022E0304 @ case 13
	b _022E031C @ case 14
	b _022E0328 @ case 15
	b _022E0334 @ case 16
	b _022E0328 @ case 17
	b _022E0334 @ case 18
	b _022E0328 @ case 19
	b _022E0334 @ case 20
	b _022E0334 @ case 21
_022E02E0:
	mov r0, #6
	str r0, [r1]
	b _022E0348
_022E02EC:
	mov r0, #3
	str r0, [r1]
	b _022E0348
_022E02F8:
	mov r0, #4
	str r0, [r1]
	b _022E0348
_022E0304:
	mov r0, #1
	str r0, [r1]
	b _022E0348
_022E0310:
	mov r0, #7
	str r0, [r1]
	b _022E0348
_022E031C:
	mov r0, #5
	str r0, [r1]
	b _022E0348
_022E0328:
	mov r0, #6
	str r0, [r1]
	b _022E0348
_022E0334:
	mov r0, #2
	str r0, [r1]
	b _022E0348
_022E0340:
	mov r0, #0
	str r0, [r1]
_022E0348:
	ldr r0, _022E0354 @ =0x02326D6C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022E0354: .4byte 0x02326D6C
	arm_func_end ov00_022E025C

	arm_func_start ov00_022E0358
ov00_022E0358: @ 0x022E0358
	ldr r0, _022E0374 @ =0x02326D6C
	ldr r1, [r0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
	.align 2, 0
_022E0374: .4byte 0x02326D6C
	arm_func_end ov00_022E0358

	arm_func_start ov00_022E0378
ov00_022E0378: @ 0x022E0378
	ldr r0, _022E0390 @ =0x02326D6C
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_022E0390: .4byte 0x02326D6C
	arm_func_end ov00_022E0378

	arm_func_start ov00_022E0394
ov00_022E0394: @ 0x022E0394
	ldr r2, _022E03A8 @ =0x02326D6C
	ldr r3, [r2]
	cmp r3, #9
	stmne r2, {r0, r1}
	bx lr
	.align 2, 0
_022E03A8: .4byte 0x02326D6C
	arm_func_end ov00_022E0394

	arm_func_start ov00_022E03AC
ov00_022E03AC: @ 0x022E03AC
	sub r0, r0, #0x20
	bx lr
	arm_func_end ov00_022E03AC

	arm_func_start ov00_022E03B4
ov00_022E03B4: @ 0x022E03B4
	ldr r2, _022E03C8 @ =0x4457434D
	str r2, [r0]
	str r1, [r0, #4]
	add r0, r0, #0x20
	bx lr
	.align 2, 0
_022E03C8: .4byte 0x4457434D
	arm_func_end ov00_022E03B4

	arm_func_start ov00_022E03CC
ov00_022E03CC: @ 0x022E03CC
	push {r3, lr}
	bl ov00_022E03AC
	ldr r0, [r0, #4]
	pop {r3, pc}
	arm_func_end ov00_022E03CC

	arm_func_start ov00_022E03DC
ov00_022E03DC: @ 0x022E03DC
	ldr r2, _022E03EC @ =0x02326D74
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
	.align 2, 0
_022E03EC: .4byte 0x02326D74
	arm_func_end ov00_022E03DC

	arm_func_start ov00_022E03F0
ov00_022E03F0: @ 0x022E03F0
	ldr ip, _022E03FC @ =ov00_022E0400
	mov r2, #0x20
	bx ip
	.align 2, 0
_022E03FC: .4byte ov00_022E0400
	arm_func_end ov00_022E03F0

	arm_func_start ov00_022E0400
ov00_022E0400: @ 0x022E0400
	push {r4, lr}
	ldr r3, _022E0430 @ =0x02326D74
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	mov r1, r4
	bl ov00_022E03B4
	pop {r4, pc}
	.align 2, 0
_022E0430: .4byte 0x02326D74
	arm_func_end ov00_022E0400

	arm_func_start ov00_022E0434
ov00_022E0434: @ 0x022E0434
	push {r4, lr}
	mov r4, r0
	cmp r1, #0
	popeq {r4, pc}
	mov r0, r1
	bl ov00_022E03AC
	mov r1, r0
	ldr r0, _022E046C @ =0x02326D74
	ldr r2, [r1, #4]
	ldr r3, [r0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	pop {r4, pc}
	.align 2, 0
_022E046C: .4byte 0x02326D74
	arm_func_end ov00_022E0434
_022E0470:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0x20, 0xC0, 0xA0, 0xE3, 0x00, 0xC0, 0x8D, 0xE5, 0x00, 0x00, 0x00, 0xEB
	.byte 0x08, 0x80, 0xBD, 0xE8

	arm_func_start ov00_022E0484
ov00_022E0484: @ 0x022E0484
	push {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r7, r1
	ldr r2, [sp, #0x18]
	mov r1, r5
	mov r8, r0
	bl ov00_022E0400
	movs r4, r0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	beq _022E04E8
	mov r0, r7
	bl ov00_022E03CC
	mov r6, r0
	cmp r6, r5
	movls r5, r6
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_0207C4C8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl ov00_022E0434
_022E04E8:
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov00_022E0484
_022E04F0:
	.byte 0x08, 0xC0, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE1, 0x05, 0x00, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0xF0, 0x03, 0x2E, 0x02, 0x10, 0xC0, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE1
	.byte 0x02, 0x30, 0xA0, 0xE1, 0x05, 0x00, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1, 0x70, 0x04, 0x2E, 0x02

	arm_func_start ov00_022E0520
ov00_022E0520: @ 0x022E0520
	ldr ip, _022E0534 @ =ov00_022E0434
	mov r1, r0
	mov r0, #5
	mov r2, #0
	bx ip
	.align 2, 0
_022E0534: .4byte ov00_022E0434
	arm_func_end ov00_022E0520
_022E0538:
	.byte 0x08, 0xC0, 0x9F, 0xE5, 0x00, 0x20, 0xA0, 0xE1
	.byte 0x05, 0x00, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1, 0x00, 0x04, 0x2E, 0x02

	arm_func_start ov00_022E054C
ov00_022E054C: @ 0x022E054C
	push {r4, r5, r6, lr}
	ldr r2, _022E05AC @ =0x02326D7C
	mov r4, r0
	ldr r2, [r2, #4]
	mov r6, r1
	mov r5, r3
	cmp r2, #0
	popne {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x64
	bl FUN_0207C40C
	strh r6, [r4, #8]
	mov r0, #1
	strh r0, [r4, #0xa]
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	strb r0, [r4, #0xc]
	ldr r1, _022E05AC @ =0x02326D7C
	str r0, [r4, #0x10]
	mov r0, r5
	str r4, [r1, #4]
	bl ov00_022CFDBC
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E05AC: .4byte 0x02326D7C
	arm_func_end ov00_022E054C

	arm_func_start ov00_022E05B0
ov00_022E05B0: @ 0x022E05B0
	ldr ip, _022E05C4 @ =ov00_022E054C
	mov r1, #3
	mov r2, #1
	mov r3, #0x14
	bx ip
	.align 2, 0
_022E05C4: .4byte ov00_022E054C
	arm_func_end ov00_022E05B0

	arm_func_start ov00_022E05C8
ov00_022E05C8: @ 0x022E05C8
	push {r3, lr}
	cmp r0, #0
	beq _022E05E8
	cmp r0, #1
	beq _022E05F4
	cmp r0, #2
	beq _022E0600
	pop {r3, pc}
_022E05E8:
	ldr r0, _022E060C @ =0x0231A0E0
	bl ov00_022DBC84
	pop {r3, pc}
_022E05F4:
	ldr r0, _022E0610 @ =0x0231A108
	bl ov00_022DBC84
	pop {r3, pc}
_022E0600:
	ldr r0, _022E0614 @ =0x0231A12C
	bl ov00_022DBC84
	pop {r3, pc}
	.align 2, 0
_022E060C: .4byte 0x0231A0E0
_022E0610: .4byte 0x0231A108
_022E0614: .4byte 0x0231A12C
	arm_func_end ov00_022E05C8

	arm_func_start ov00_022E0618
ov00_022E0618: @ 0x022E0618
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _022E06BC @ =0x02326D7C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022E06A8
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0xc
	ldmne sp!, {pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xc
	bl FUN_0207C40C
	ldr r0, _022E06BC @ =0x02326D7C
	ldr r3, _022E06C0 @ =ov00_022E03F0
	ldr lr, [r0, #4]
	ldr r2, _022E06C4 @ =ov00_022E0434
	ldrh ip, [lr, #8]
	add r0, sp, #0
	mov r1, #2
	strb ip, [sp, #8]
	ldrh ip, [lr, #0xa]
	strb ip, [sp, #9]
	str r3, [sp]
	str r2, [sp, #4]
	strh r1, [lr, #4]
	bl ov00_022D75EC
	cmp r0, #0
	addne sp, sp, #0xc
	ldmne sp!, {pc}
	ldr r1, _022E06C8 @ =0xFFFF3BE9
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xc
	ldm sp!, {pc}
_022E06A8:
	ldr r1, _022E06C8 @ =0xFFFF3BE9
	mov r0, #9
	bl ov00_022E0394
	add sp, sp, #0xc
	ldm sp!, {pc}
	.align 2, 0
_022E06BC: .4byte 0x02326D7C
_022E06C0: .4byte ov00_022E03F0
_022E06C4: .4byte ov00_022E0434
_022E06C8: .4byte 0xFFFF3BE9
	arm_func_end ov00_022E0618

	arm_func_start ov00_022E06CC
ov00_022E06CC: @ 0x022E06CC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022E0618
	ldr r0, _022E0724 @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strbne r0, [r1, #0xc]
	bl ov00_022E089C
	cmp r0, #2
	popne {r3, r4, r5, r6, r7, pc}
	ldr ip, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl ov00_022D7994
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E0724: .4byte 0x02326D7C
	arm_func_end ov00_022E06CC

	arm_func_start ov00_022E0728
ov00_022E0728: @ 0x022E0728
	push {r3, lr}
	ldr r0, _022E077C @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r0, [r1]
	cmp r0, #0
	beq _022E0774
	mov r0, #3
	strh r0, [r1, #4]
	bl ov00_022E089C
	ldr r0, _022E077C @ =0x02326D7C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	pop {r3, pc}
_022E0774:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022E077C: .4byte 0x02326D7C
	arm_func_end ov00_022E0728

	arm_func_start ov00_022E0780
ov00_022E0780: @ 0x022E0780
	push {r3, lr}
	ldr r0, _022E0898 @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	popeq {r3, pc}
	ldr r0, [r1, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022E0838
_022E07A4: @ jump table
	b _022E0838 @ case 0
	b _022E07BC @ case 1
	b _022E07D8 @ case 2
	b _022E0814 @ case 3
	b _022E0834 @ case 4
	b _022E0834 @ case 5
_022E07BC:
	mov r0, #0
	str r0, [r1]
	bl ov00_022DAC0C
	ldr r1, _022E0898 @ =0x02326D7C
	ldr r1, [r1, #4]
	str r0, [r1, #0x10]
	pop {r3, pc}
_022E07D8:
	bl ov00_022DAF60
	ldr r0, _022E0898 @ =0x02326D7C
	mov r1, #8
	ldr r3, [r0, #4]
	str r1, [sp]
	ldr r2, [r3, #0x54]
	add r0, r3, #0x14
	add r1, r3, #0x34
	add r3, r3, #0x58
	bl ov00_022E06CC
	ldr r0, _022E0898 @ =0x02326D7C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	pop {r3, pc}
_022E0814:
	bl ov00_022DAF60
	ldr r0, _022E0898 @ =0x02326D7C
	mvn r3, #0
	ldr r2, [r0, #4]
	mov r1, #1
	str r3, [r2]
	ldr r0, [r0, #4]
	strb r1, [r0, #0xc]
_022E0834:
	pop {r3, pc}
_022E0838:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _022E0858
	bl ov00_022D7794
	ldr r1, _022E0898 @ =0x02326D7C
	ldr r1, [r1, #4]
	str r0, [r1]
	pop {r3, pc}
_022E0858:
	cmp r0, #4
	popne {r3, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	popeq {r3, pc}
	bl ov00_022D5640
	cmp r0, #9
	popeq {r3, pc}
	ldr r0, _022E0898 @ =0x02326D7C
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_022E0898: .4byte 0x02326D7C
	arm_func_end ov00_022E0780

	arm_func_start ov00_022E089C
ov00_022E089C: @ 0x022E089C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022E0A68 @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, [r1, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022E0930
_022E08C4: @ jump table
	b _022E0930 @ case 0
	b _022E08DC @ case 1
	b _022E08E4 @ case 2
	b _022E08EC @ case 3
	b _022E0920 @ case 4
	b _022E0928 @ case 5
_022E08DC:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022E08E4:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022E08EC:
	bl ov00_022E0780
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r0, #5
	ldr r1, [r1]
	bl ov00_022E0394
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r0, #7
	ldr r3, [r1, #4]
	mov r2, #4
	strh r0, [r3, #4]
	ldr r1, [r1, #4]
	str r2, [r1, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022E0920:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022E0928:
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022E0930:
	ldrh r0, [r1, #4]
	cmp r0, #1
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022D7864
	mov r4, r0
	cmp r4, #5
	bne _022E0974
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r0, #4
	ldr r2, [r1, #4]
	mov r3, #1
	strh r0, [r2, #4]
	ldr r2, [r1, #4]
	strh r3, [r2, #6]
	ldr r1, [r1, #4]
	strb r3, [r1, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022E0974:
	cmp r4, #0
	bge _022E0A60
	mvn r0, #9
	cmp r4, r0
	blt _022E09B8
	ldr r0, _022E0A68 @ =0x02326D7C
	ldr r1, _022E0A6C @ =0xFFFF3BE9
	ldr r2, [r0, #4]
	mov r3, #1
	mov r0, #9
	strb r3, [r2, #0xc]
	bl ov00_022E0394
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r0, #8
	ldr r1, [r1, #4]
	strh r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022E09B8:
	ldr r0, _022E0A68 @ =0x02326D7C
	ldr r5, [r0, #4]
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _022E0A34
	ldrh r7, [r5, #8]
	bl ov00_022CFDAC
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r6, r0
	str r4, [r1]
	bl ov00_022E0A70
	lsl r2, r6, #0x10
	lsr r3, r2, #0x10
	mov r0, r5
	mov r1, r7
	mov r2, #1
	bl ov00_022E054C
	ldr r0, _022E0A68 @ =0x02326D7C
	mov r1, #1
	ldr r0, [r0, #4]
	add r0, r0, #0x14
	bl ov00_022DAB9C
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r3, #1
	ldr r2, [r1, #4]
	mov r0, #2
	str r3, [r2, #0x10]
	ldr r1, [r1, #4]
	mov r2, #0
	str r2, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_022E0A34:
	ldr r0, [r0]
	cmp r0, r4
	movlt r4, r0
	mov r1, r4
	mov r0, #5
	bl ov00_022E0394
	ldr r1, _022E0A68 @ =0x02326D7C
	mov r0, #7
	ldr r1, [r1, #4]
	strh r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022E0A60:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E0A68: .4byte 0x02326D7C
_022E0A6C: .4byte 0xFFFF3BE9
	arm_func_end ov00_022E089C

	arm_func_start ov00_022E0A70
ov00_022E0A70: @ 0x022E0A70
	push {r4, lr}
	ldr r0, _022E0AF8 @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	popeq {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _022E0AC4
	ldr r0, [r1, #0x10]
	cmp r0, #1
	bne _022E0AB4
	bl ov00_022DAF44
_022E0AA0:
	bl ov00_022DAC0C
	sub r0, r0, #2
	cmp r0, #2
	bhi _022E0AA0
	bl ov00_022DAF60
_022E0AB4:
	ldr r0, _022E0AF8 @ =0x02326D7C
	mov r1, #0
	str r1, [r0, #4]
	pop {r4, pc}
_022E0AC4:
	bl ov00_022D7958
	cmp r0, #0
	bne _022E0AE8
	mov r4, #0xa
_022E0AD4:
	mov r0, r4
	bl FUN_02079B14
	bl ov00_022D7958
	cmp r0, #0
	beq _022E0AD4
_022E0AE8:
	ldr r0, _022E0AF8 @ =0x02326D7C
	mov r1, #0
	str r1, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_022E0AF8: .4byte 0x02326D7C
	arm_func_end ov00_022E0A70

	arm_func_start ov00_022E0AFC
ov00_022E0AFC: @ 0x022E0AFC
	push {r3, lr}
	ldr r0, _022E0BBC @ =0x02326D7C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #1
	popeq {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #8
	moveq r0, #0
	popeq {r3, pc}
	cmp r0, #1
	bne _022E0B90
	ldr r0, [r1, #0x10]
	cmp r0, #1
	bne _022E0B54
	bl ov00_022DAF44
	ldr r0, _022E0BBC @ =0x02326D7C
	mov r2, #5
	ldr r1, [r0, #4]
	mov r0, #0
	str r2, [r1, #0x10]
	pop {r3, pc}
_022E0B54:
	cmp r0, #5
	bne _022E0B7C
	bl ov00_022DAC0C
	cmp r0, #1
	moveq r0, #0
	popeq {r3, pc}
	sub r0, r0, #2
	cmp r0, #2
	bhi _022E0B7C
	bl ov00_022DAF60
_022E0B7C:
	ldr r0, _022E0BBC @ =0x02326D7C
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	pop {r3, pc}
_022E0B90:
	mov r0, #5
	strh r0, [r1, #4]
	bl ov00_022D7958
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r0, _022E0BBC @ =0x02326D7C
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E0BBC: .4byte 0x02326D7C
	arm_func_end ov00_022E0AFC

	arm_func_start ov00_022E0BC0
ov00_022E0BC0: @ 0x022E0BC0
	ldr r0, _022E0BE8 @ =0x02326D7C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022E0BE0
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_022E0BE0:
	mov r0, #0
	bx lr
	.align 2, 0
_022E0BE8: .4byte 0x02326D7C
	arm_func_end ov00_022E0BC0
_022E0BEC:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x94, 0x74, 0x2D, 0x02

	arm_func_start ov00_022E0BF8
ov00_022E0BF8: @ 0x022E0BF8
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r1, #0
	mov r2, #0x3c
	mov r4, r0
	bl FUN_0207C40C
	mov r0, #0xff
	str r0, [r4, #4]
	bl ov00_022E089C
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, #0
	popne {r3, r4, r5, r6, pc}
	bl ov00_022D78D0
	str r0, [r4]
	cmp r0, #0xff
	beq _022E0C44
	cmp r0, #0x63
	ble _022E0C58
_022E0C44:
	mov r0, #0x63
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022E0C58:
	bl FUN_0207B7E4
	mov r6, r0
	bl ov00_022D7140
	mov r5, r0
	mov r1, #6
	bl FUN_0207A2A4
	cmp r5, #0
	bne _022E0C8C
	mov r0, r6
	bl FUN_0207B7F8
	add sp, sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022E0C8C:
	mov r0, r5
	add r1, r4, #0x33
	mov r2, #6
	bl FUN_0207C4C8
	ldr r0, [r4]
	cmp r0, #0
	blt _022E0CF0
	cmp r0, #3
	bge _022E0CF0
	add r0, sp, #0
	bl ov00_022D7184
	mov r5, r0
	mov r1, #0x20
	bl FUN_0207A2A4
	cmp r5, #0
	bne _022E0CE0
	mov r0, r6
	bl FUN_0207B7F8
	add sp, sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_022E0CE0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x12
	bl FUN_0207C4C8
_022E0CF0:
	mov r0, r6
	bl FUN_0207B7F8
	add r0, sp, #2
	bl ov00_022D7900
	cmp r0, #0
	beq _022E0D44
	ldrb r1, [sp, #2]
	mov r0, #0
	cmp r1, #0x30
	blo _022E0D20
	cmp r1, #0x39
	movls r0, #1
_022E0D20:
	cmp r0, #0
	subne r3, r1, #0x30
	moveq r3, #0xff
	add r0, sp, #3
	add r1, r4, #8
	mov r2, #9
	str r3, [r4, #4]
	bl FUN_0207C4C8
	b _022E0D4C
_022E0D44:
	mov r0, #0xff
	str r0, [r4, #4]
_022E0D4C:
	mov r0, #1
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022E0BF8

	arm_func_start ov00_022E0D58
ov00_022E0D58: @ 0x022E0D58
	push {r3, lr}
	bl ov00_022E0780
	bl ov00_022E0BC0
	cmp r0, #0
	beq _022E0DA0
	bl ov00_022D78D0
	mov r2, r0
	cmp r2, #0xff
	beq _022E0D84
	cmp r2, #0x63
	bls _022E0D88
_022E0D84:
	mov r2, #0x63
_022E0D88:
	ldr r1, _022E0DA8 @ =0xFFFF2D10
	mov r0, #8
	sub r1, r1, r2
	bl ov00_022E0394
	mov r0, #1
	pop {r3, pc}
_022E0DA0:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022E0DA8: .4byte 0xFFFF2D10
	arm_func_end ov00_022E0D58

	arm_func_start ov00_022E0DAC
ov00_022E0DAC: @ 0x022E0DAC
	ldr r0, _022E0DB8 @ =0x02326CB4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022E0DB8: .4byte 0x02326CB4
	arm_func_end ov00_022E0DAC

	arm_func_start ov00_022E0DBC
ov00_022E0DBC: @ 0x022E0DBC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _022E0E24 @ =ov00_022E03F0
	ldr r1, _022E0E28 @ =ov00_022E0434
	bl ov00_022DF910
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_02089678
	cmp r0, #0
	bne _022E0E00
	ldr r0, _022E0E2C @ =0x0231A14C
	mov r1, r4
	bl ov00_022DF9F4
	b _022E0E0C
_022E0E00:
	mov r0, r5
	mov r1, r4
	bl ov00_022DF9F4
_022E0E0C:
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	bl ov00_022DF9A8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E0E24: .4byte ov00_022E03F0
_022E0E28: .4byte ov00_022E0434
_022E0E2C: .4byte 0x0231A14C
	arm_func_end ov00_022E0DBC

	arm_func_start ov00_022E0E30
ov00_022E0E30: @ 0x022E0E30
	push {r4, lr}
	bl ov00_022DFC5C
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _022E0E4C
	bl ov00_022DF9A8
_022E0E4C:
	mov r0, r4
	pop {r4, pc}
	arm_func_end ov00_022E0E30

	arm_func_start ov00_022E0E54
ov00_022E0E54: @ 0x022E0E54
	ldr ip, _022E0E68 @ =ov00_022E0400
	mov r2, r1
	mov r1, r0
	mov r0, #6
	bx ip
	.align 2, 0
_022E0E68: .4byte ov00_022E0400
	arm_func_end ov00_022E0E54

	arm_func_start ov00_022E0E6C
ov00_022E0E6C: @ 0x022E0E6C
	ldr ip, _022E0E80 @ =ov00_022E0434
	mov r1, r0
	mov r0, #6
	mov r2, #0
	bx ip
	.align 2, 0
_022E0E80: .4byte ov00_022E0434
	arm_func_end ov00_022E0E6C

	arm_func_start ov00_022E0E84
ov00_022E0E84: @ 0x022E0E84
	push {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	bne _022E0EAC
	ldr r3, _022E0F64 @ =0x02326D84
	ldr r3, [r3]
	ldr r3, [r3]
	blx r3
	pop {r4, r5, r6, pc}
_022E0EAC:
	cmp r5, #8
	addls pc, pc, r5, lsl #2
	b _022E0F40
_022E0EB8: @ jump table
	b _022E0F40 @ case 0
	b _022E0EDC @ case 1
	b _022E0EEC @ case 2
	b _022E0EF4 @ case 3
	b _022E0F04 @ case 4
	b _022E0F14 @ case 5
	b _022E0F44 @ case 6
	b _022E0F28 @ case 7
	b _022E0F30 @ case 8
_022E0EDC:
	ldr r1, _022E0F68 @ =0xFFFF86E7
	mov r0, #9
	bl ov00_022E0394
	b _022E0F44
_022E0EEC:
	bl FUN_0207BC20
	b _022E0F44
_022E0EF4:
	ldr r1, _022E0F6C @ =0xFFFF86D4
	mov r0, #0xf
	bl ov00_022E0394
	b _022E0F44
_022E0F04:
	ldr r1, _022E0F70 @ =0xFFFF86CA
	mov r0, #0xe
	bl ov00_022E0394
	b _022E0F44
_022E0F14:
	ldr r1, _022E0F74 @ =0xFFFF86E8
	mov r0, #0xe
	sub r1, r1, r4
	bl ov00_022E0394
	b _022E0F44
_022E0F28:
	bl FUN_0207BC20
	b _022E0F44
_022E0F30:
	ldr r1, _022E0F78 @ =0xFFFF86DF
	mov r0, #9
	bl ov00_022E0394
	b _022E0F44
_022E0F40:
	bl FUN_0207BC20
_022E0F44:
	ldr r1, _022E0F64 @ =0x02326D84
	mov r0, r6
	ldr r2, [r1]
	mov r1, r5
	ldr r3, [r2]
	mov r2, r4
	blx r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E0F64: .4byte 0x02326D84
_022E0F68: .4byte 0xFFFF86E7
_022E0F6C: .4byte 0xFFFF86D4
_022E0F70: .4byte 0xFFFF86CA
_022E0F74: .4byte 0xFFFF86E8
_022E0F78: .4byte 0xFFFF86DF
	arm_func_end ov00_022E0E84

	arm_func_start ov00_022E0F7C
ov00_022E0F7C: @ 0x022E0F7C
	push {r4, lr}
	ldr r0, _022E0FBC @ =0x02326D84
	ldr r0, [r0]
	add r0, r0, #0x9c0
	bl FUN_02079800
	ldr r0, _022E0FBC @ =0x02326D84
	ldr r0, [r0]
	ldr r4, [r0, #4]
	bl ov00_022E0E6C
	ldr r0, _022E0FBC @ =0x02326D84
	mov r1, #0
	str r1, [r0]
	cmp r4, #0
	popeq {r4, pc}
	blx r4
	pop {r4, pc}
	.align 2, 0
_022E0FBC: .4byte 0x02326D84
	arm_func_end ov00_022E0F7C

	arm_func_start ov00_022E0FC0
ov00_022E0FC0: @ 0x022E0FC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a0
	mov r7, #0
	mov r6, #6
	mvn r5, #0
	mov r4, #0x64
_022E0FD8:
	bl ov00_022E0E30
	cmp r0, #3
	bne _022E10F4
	ldr r0, _022E1160 @ =0x02326D84
	ldr r5, [r0]
	add r0, r5, #0x50
	bl FUN_02089678
	mov r4, r0
	ldr r0, _022E1164 @ =0x0231A154
	bl FUN_02089678
	add r0, r4, r0
	cmp r0, #0xff
	bls _022E1024
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl ov00_022E0E84
	add sp, sp, #0x2a0
	pop {r3, r4, r5, r6, r7, pc}
_022E1024:
	ldr r2, _022E1168 @ =0x0231A168
	add r0, sp, #0x1a0
	add r3, r5, #0x50
	mov r1, #0x100
	bl FUN_0207911C
	ldr r0, _022E1160 @ =0x02326D84
	ldr r4, [r0]
	add r0, r4, #0x91
	bl FUN_02089678
	mov r1, r0
	add r2, sp, #0x10
	add r0, r4, #0x91
	mov r3, #0x190
	bl ov00_022DFF4C
	cmp r0, #0
	bge _022E107C
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl ov00_022E0E84
	add sp, sp, #0x2a0
	pop {r3, r4, r5, r6, r7, pc}
_022E107C:
	ldr r0, _022E1160 @ =0x02326D84
	ldr r4, _022E116C @ =ov00_022E0E84
	ldr r2, [r0]
	ldr r0, _022E1170 @ =ov00_022E0E54
	add r1, r2, #8
	str r1, [sp]
	add r1, r2, #0x28
	str r1, [sp, #4]
	ldr r1, _022E1174 @ =ov00_022E0E6C
	add r2, sp, #0x1a0
	add r3, sp, #0x10
	str r4, [sp, #8]
	bl ov00_022EFC88
	cmp r0, #0
	mov r0, #0
	bne _022E10D0
	mov r1, #8
	sub r2, r1, #9
	bl ov00_022E0E84
	add sp, sp, #0x2a0
	pop {r3, r4, r5, r6, r7, pc}
_022E10D0:
	ldr r1, _022E1160 @ =0x02326D84
	mov r4, #1
	ldr r3, [r1]
	mov r1, r0
	sub r2, r0, #1
	str r4, [r3, #0x48]
	bl ov00_022E0E84
	add sp, sp, #0x2a0
	pop {r3, r4, r5, r6, r7, pc}
_022E10F4:
	cmp r0, #4
	bne _022E1134
	add r0, sp, #0xc
	bl ov00_022E023C
	ldr r1, [sp, #0xc]
	mov r0, #0xe
	bl ov00_022E0394
	ldr r0, _022E1160 @ =0x02326D84
	mov r1, #3
	ldr r0, [r0]
	sub r2, r1, #4
	ldr r3, [r0]
	mov r0, #0
	blx r3
	add sp, sp, #0x2a0
	pop {r3, r4, r5, r6, r7, pc}
_022E1134:
	cmp r0, #5
	bne _022E114C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov00_022E0E84
_022E114C:
	mov r0, r4
	bl FUN_02079B14
	b _022E0FD8
_022E1158:
	.byte 0x2A, 0xDE, 0x8D, 0xE2, 0xF8, 0x80, 0xBD, 0xE8
_022E1160: .4byte 0x02326D84
_022E1164: .4byte 0x0231A154
_022E1168: .4byte 0x0231A168
_022E116C: .4byte ov00_022E0E84
_022E1170: .4byte ov00_022E0E54
_022E1174: .4byte ov00_022E0E6C
	arm_func_end ov00_022E0FC0

	arm_func_start ov00_022E1178
ov00_022E1178: @ 0x022E1178
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022E0378
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, #0xa80
	mov r1, #0x20
	bl ov00_022E0E54
	ldr r2, _022E1284 @ =0x02326D84
	mov r1, #0
	str r0, [r2]
	str r1, [r0, #0x48]
	ldr r0, [r2]
	mov r2, #0xa80
	bl FUN_0207C40C
	ldr r0, _022E1284 @ =0x02326D84
	mov r1, r5
	ldr r3, [r0]
	mov r2, #0x1f
	str r6, [r3]
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_0208975C
	ldr r0, _022E1284 @ =0x02326D84
	mov r1, r4
	ldr r0, [r0]
	mov r2, #0x1f
	add r0, r0, #0x28
	bl FUN_0208975C
	ldr r1, _022E1284 @ =0x02326D84
	ldr r0, _022E1288 @ =0x0231A17C
	ldr r1, [r1]
	add r1, r1, #0x4c
	bl ov00_022E0DBC
	cmp r0, #0
	bne _022E123C
	ldr r0, _022E1284 @ =0x02326D84
	ldr r0, [r0]
	bl ov00_022E0E6C
	ldr r1, _022E1284 @ =0x02326D84
	mov r0, #0
	str r0, [r1]
	add sp, sp, #8
	pop {r4, r5, r6, pc}
_022E123C:
	ldr r0, _022E1284 @ =0x02326D84
	mov r2, #0x800
	ldr r3, [r0]
	ldr r1, _022E128C @ =ov00_022E0FC0
	str r2, [sp]
	mov ip, #0x10
	add r0, r3, #0x9c0
	add r3, r3, #0x9c0
	mov r2, #0
	str ip, [sp, #4]
	bl FUN_02079560
	ldr r0, _022E1284 @ =0x02326D84
	ldr r0, [r0]
	add r0, r0, #0x9c0
	bl FUN_02079940
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E1284: .4byte 0x02326D84
_022E1288: .4byte 0x0231A17C
_022E128C: .4byte ov00_022E0FC0
	arm_func_end ov00_022E1178

	arm_func_start ov00_022E1290
ov00_022E1290: @ 0x022E1290
	push {r3, lr}
	ldr r1, _022E12D4 @ =0x02326D84
	ldr r2, [r1]
	cmp r2, #0
	moveq r0, #0
	popeq {r3, pc}
	str r0, [r2, #4]
	ldr r0, [r1]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _022E12C4
	bl ov00_022E0F7C
	b _022E12CC
_022E12C4:
	ldr r0, _022E12D8 @ =ov00_022E0F7C
	bl ov00_022EFE74
_022E12CC:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E12D4: .4byte 0x02326D84
_022E12D8: .4byte ov00_022E0F7C
	arm_func_end ov00_022E1290

	arm_func_start ov00_022E12DC
ov00_022E12DC: @ 0x022E12DC
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022E0378
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022EF8E4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E12DC

	arm_func_start ov00_022E1310
ov00_022E1310: @ 0x022E1310
	push {r4, lr}
	mov r4, r0
	bl ov00_022E0378
	cmp r0, #0
	movne r0, #0
	popne {r4, pc}
	mov r0, r4
	bl ov00_022F07EC
	pop {r4, pc}
	arm_func_end ov00_022E1310

	arm_func_start ov00_022E1334
ov00_022E1334: @ 0x022E1334
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022E0378
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, #0xb0
	mul r2, r4, r0
	mov r0, r6
	mov r1, #0
	bl FUN_0207C40C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov00_022F0868
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E1334

	arm_func_start ov00_022E137C
ov00_022E137C: @ 0x022E137C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022E0378
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl ov00_022F0B2C
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E137C

	arm_func_start ov00_022E13B4
ov00_022E13B4: @ 0x022E13B4
	push {r3, lr}
	bl ov00_022E0378
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
	bl ov00_022EFE9C
	pop {r3, pc}
	arm_func_end ov00_022E13B4

	arm_func_start ov00_022E13D0
ov00_022E13D0: @ 0x022E13D0
	push {r3, r4, lr}
	sub sp, sp, #0xc
	stm sp, {r0, r3}
	mov r4, r2
	str r1, [sp, #8]
	ldr r2, _022E1404 @ =0x0231A184
	mov r0, r4
	mov r1, #0x1000
	bl FUN_0207911C
	mov r0, r4
	bl FUN_02089678
	add sp, sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_022E1404: .4byte 0x0231A184
	arm_func_end ov00_022E13D0

	arm_func_start ov00_022E1408
ov00_022E1408: @ 0x022E1408
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	mov r0, r5
	mov r1, #0
	bl FUN_02089974
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	bl ov00_022E13D0
	mov r0, r5
	bl FUN_02089678
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022E1408

	arm_func_start ov00_022E1448
ov00_022E1448: @ 0x022E1448
	push {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mov r6, r3
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r2
	mov r1, r6
	bl FUN_02089974
	movs r5, r0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
_022E1478:
	mov r0, r7
	bl FUN_02089678
	mov r2, r0
	mov r1, r7
	add r0, r5, #1
	bl FUN_02089940
	cmp r0, #0
	bne _022E14B0
	mov r0, r7
	bl FUN_02089678
	add r0, r0, r5
	ldrsb r0, [r0, #1]
	cmp r6, r0
	beq _022E14E4
_022E14B0:
	mov r1, r6
	add r0, r5, #1
	bl FUN_02089974
	cmp r0, #0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r0, #1
	bl FUN_02089974
	movs r5, r0
	bne _022E1478
	mvn r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022E14E4:
	mov r1, r6
	add r0, r5, #1
	bl FUN_02089974
	movs r5, r0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r5, #1
	bl FUN_02089974
	cmp r0, #0
	addne r1, r5, #1
	subne r6, r0, r1
	bne _022E1524
	add r0, r5, #1
	bl FUN_02089678
	mov r6, r0
_022E1524:
	mov r0, r4
	mov r2, r6
	add r1, r5, #1
	bl FUN_0208975C
	mov r1, #0
	mov r0, r6
	strb r1, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov00_022E1448

	arm_func_start ov00_022E1544
ov00_022E1544: @ 0x022E1544
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _022E1650 @ =0x02326D88
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r2, [r1]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _022E1608
	ldr r2, [r1, #0xc]
	ldr r3, [r1, #8]
	cmp r2, r0
	cmpeq r3, r0
	bne _022E1608
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x10]
	cmp r2, r0
	cmpeq r1, r0
	bne _022E1608
	add r0, sp, #0
	bl FUN_0207B9EC
	bl FUN_0207AE44
	lsl r2, r1, #0x18
	ldr ip, [sp]
	ldr r3, [sp, #4]
	lsr lr, ip, #0x18
	orr lr, lr, r3, lsl #8
	mvn r1, #0xff000000
	and r1, lr, r1
	orr lr, r1, r0, lsl #24
	mov ip, #0
	orr r2, r2, r0, lsr #8
	and r1, ip, r3, lsr #24
	orr r2, r1, r2
	ldr r0, _022E1654 @ =0x02326D88
	add r1, sp, #0
	str lr, [sp]
	str r2, [sp, #4]
	ldm r1, {r2, r3}
	stm r0, {r2, r3}
	ldr r1, _022E1658 @ =0x6C078965
	ldr r0, _022E1650 @ =0x02326D88
	ldr r2, _022E165C @ =0x5D588B65
	str r1, [r0, #8]
	ldr r1, _022E1660 @ =0x00269EC3
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str ip, [r0, #0x14]
_022E1608:
	ldr r1, _022E1650 @ =0x02326D88
	ldr r2, [r1]
	ldmib r1, {r0, r3}
	umull lr, ip, r3, r2
	mla ip, r3, r0, ip
	ldr r0, [r1, #0xc]
	ldr r3, [r1, #0x10]
	mla ip, r0, r2, ip
	ldr r0, [r1, #0x14]
	adds r2, r3, lr
	adc r0, r0, ip
	str r2, [r1]
	str r0, [r1, #4]
	cmp r4, #0
	umullne r2, r1, r0, r4
	movne r0, r1
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022E1650: .4byte 0x02326D88
_022E1654: .4byte 0x02326D88
_022E1658: .4byte 0x6C078965
_022E165C: .4byte 0x5D588B65
_022E1660: .4byte 0x00269EC3
	arm_func_end ov00_022E1544

	arm_func_start ov00_022E1664
ov00_022E1664: @ 0x022E1664
	ldrh r1, [r0]
	mov r2, #0
	cmp r1, #0
	beq _022E1688
_022E1674:
	add r2, r2, #1
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _022E1674
_022E1688:
	mov r0, r2
	bx lr
	arm_func_end ov00_022E1664

	arm_func_start ov00_022E1690
ov00_022E1690: @ 0x022E1690
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr ip, _022E18F4 @ =0x02326DA0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str r0, [ip]
	bl ov00_022E0358
	ldr r0, _022E18F4 @ =0x02326DA0
	mov r2, #0
	ldr r1, [r0]
	ldr r3, _022E18F8 @ =ov00_022E6248
	str r2, [r1]
	ldr r1, [r0]
	ldr r2, _022E18FC @ =0x022E26E8
	str r3, [r1, #4]
	ldr r1, [r0]
	ldr ip, [sp, #0x24]
	str r2, [r1, #8]
	cmp ip, #0
	ldr r2, [r0]
	ldr r3, _022E1900 @ =ov00_022E26F4
	ldr r1, _022E1904 @ =0x022E2A5C
	str r3, [r2, #0xc]
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	str r1, [r0, #0x10]
	ldr r0, _022E18F4 @ =0x02326DA0
	moveq ip, #0x2000
	ldr r0, [r0]
	cmp r3, #0
	str ip, [r0, #0x14]
	moveq r3, #0x2000
	ldr r1, _022E18F4 @ =0x02326DA0
	mov r0, #0
	ldr r2, [r1]
	ldr ip, _022E1908 @ =0x02328A18
	str r3, [r2, #0x18]
	ldr r2, [r1]
	ldr r3, _022E190C @ =0x02328B18
	str r0, [r2, #0x1c]
	ldr r2, [r1]
	str r6, [r2, #0x20]
	ldr r2, [r1]
	str r0, [r2, #0x24]
	ldr r2, [r1]
	str r0, [r2, #0x28]
	ldr r2, [r1]
	strb r0, [r2, #0x2c]
	ldr r2, [r1]
	strb r0, [r2, #0x2d]
	ldr r2, [r1]
	str r0, [r2, #0x64]
	ldr r2, [r1]
	str ip, [r2, #0x68]
	ldr r2, [r1]
	str r3, [r2, #0x6c]
	ldr r2, [r1]
	str r0, [r2, #0x70]
	ldr r2, [r1]
	str r0, [r2, #0x74]
	ldr r2, [r1]
	str r0, [r2, #0x78]
	ldr r2, [r1]
	str r0, [r2, #0x7c]
	ldr r2, [r1]
	str r0, [r2, #0x80]
	ldr r2, [r1]
	str r0, [r2, #0x84]
	ldr r2, [r1]
	str r0, [r2, #0x88]
	ldr r2, [r1]
	str r0, [r2, #0x8c]
	ldr r2, [r1]
	str r0, [r2, #0x90]
	ldr r1, [r1]
	str r0, [r1, #0x94]
	bl ov00_022E2154
	ldr r0, _022E18F4 @ =0x02326DA0
	ldr r1, [r6, #0x24]
	ldr r2, [r0]
	ldr r0, _022E1910 @ =ov00_022E24B0
	str r1, [sp]
	add r1, r2, #0x2e
	str r1, [sp, #4]
	mov r1, r6
	mov r3, r5
	str r0, [sp, #8]
	mov r5, #0
	add r0, r2, #0x98
	add r2, r2, #0x1c
	str r5, [sp, #0xc]
	bl ov00_022E2AA4
	ldr r0, _022E18F4 @ =0x02326DA0
	ldr r2, [sp, #0x30]
	ldr r5, [r0]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0x318
	add r1, r5, #0x1c
	str r2, [sp]
	add r2, r5, #0x2e
	bl ov00_022E3740
	ldr r0, _022E18F4 @ =0x02326DA0
	ldr r1, _022E1908 @ =0x02328A18
	ldr r2, [r0]
	ldr r0, _022E190C @ =0x02328B18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0x378
	add r1, r2, #0x1c
	add r3, r2, #4
	bl ov00_022E50A8
	ldr r0, _022E18F4 @ =0x02326DA0
	ldr r0, [r0]
	add r0, r0, #0x3fc
	add r0, r0, #0x400
	bl ov00_022EC69C
	mov r0, r4
	bl FUN_02089678
	cmp r0, #0x100
	movhs r5, #0xff
	bhs _022E1894
	mov r0, r4
	bl FUN_02089678
	mov r5, r0
_022E1894:
	ldr r1, _022E1908 @ =0x02328A18
	mov r0, r4
	mov r2, r5
	bl FUN_0207C4C8
	ldr r0, [sp, #0x20]
	ldr r1, _022E1908 @ =0x02328A18
	mov r2, #0
	strb r2, [r1, r5]
	bl FUN_02089678
	cmp r0, #0x100
	movhs r4, #0xff
	bhs _022E18D0
	ldr r0, [sp, #0x20]
	bl FUN_02089678
	mov r4, r0
_022E18D0:
	ldr r0, [sp, #0x20]
	ldr r1, _022E190C @ =0x02328B18
	mov r2, r4
	bl FUN_0207C4C8
	ldr r0, _022E190C @ =0x02328B18
	mov r1, #0
	strb r1, [r0, r4]
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E18F4: .4byte 0x02326DA0
_022E18F8: .4byte ov00_022E6248
_022E18FC: .4byte 0x022E26E8
_022E1900: .4byte ov00_022E26F4
_022E1904: .4byte 0x022E2A5C
_022E1908: .4byte 0x02328A18
_022E190C: .4byte 0x02328B18
_022E1910: .4byte ov00_022E24B0
	arm_func_end ov00_022E1690

	arm_func_start ov00_022E1914
ov00_022E1914: @ 0x022E1914
	push {r3, lr}
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, [r0, #0x388]
	cmp r0, #0
	beq _022E1948
	bl ov00_02312C50
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x388]
_022E1948:
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x390]
	ldr r0, [r0]
	ldr r0, [r0, #0x45c]
	cmp r0, #0
	beq _022E197C
	bl ov00_02315AD8
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x45c]
_022E197C:
	bl ov00_022E5080
	bl ov00_022E4E70
	bl ov00_0230C29C
	bl ov00_022E4E84
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr ip, [r0]
	ldr r0, [ip, #0x1c]
	cmp r0, #0
	beq _022E1A38
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, ip, #0x1c
	bl ov00_022FEFA8
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #3
	bl ov00_022FEFA8
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #1
	bl ov00_022FEFA8
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r2, #0
	ldr r0, [r0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, r2
	bl ov00_022FEFA8
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr r0, [r0]
	add r0, r0, #0x1c
	bl ov00_022FEF74
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr r0, [r0]
	add r0, r0, #0x1c
	bl ov00_022FEF58
	mov r1, #0
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr r0, [r0]
	str r1, [r0, #0x1c]
_022E1A38:
	bl ov00_022E2CC4
	bl ov00_022E3F90
	bl ov00_022E6DD8
	bl ov00_022EC97C
	ldr r0, _022E1A80 @ =0x02326DA0
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _022E1A70
	bl ov00_0230E098
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
_022E1A70:
	ldr r0, _022E1A80 @ =0x02326DA0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E1A80: .4byte 0x02326DA0
	arm_func_end ov00_022E1914

	arm_func_start ov00_022E1A84
ov00_022E1A84: @ 0x022E1A84
	push {r3, lr}
	bl ov00_022E0D58
	cmp r0, #0
	beq _022E1A98
	bl ov00_022E226C
_022E1A98:
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	cmpne r0, #0
	popeq {r3, pc}
	bl ov00_022E0378
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022E1C9C
_022E1AD4: @ jump table
	b _022E1C9C @ case 0
	b _022E1AF0 @ case 1
	b _022E1C30 @ case 2
	b _022E1C38 @ case 3
	b _022E1C38 @ case 4
	b _022E1C48 @ case 5
	b _022E1C58 @ case 6
_022E1AF0:
	bl ov00_022F5DA8
	cmp r0, #1
	beq _022E1B10
	cmp r0, #2
	beq _022E1C10
	cmp r0, #3
	beq _022E1C20
	b _022E1C9C
_022E1B10:
	ldr r0, _022E1CE4 @ =0x02326DA0
	mov r2, #0x10
	ldr r0, [r0]
	mov r3, #0xb
	ldr r1, [r0, #0xa0]
	add r0, r0, #0x1c
	bl ov00_022FEF28
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	ldr r2, _022E1CE8 @ =ov00_022E2558
	mov r3, r1
	add r0, r0, #0x1c
	bl ov00_022FEFA8
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r2, _022E1CEC @ =ov00_022E2590
	ldr r0, [r0]
	mov r1, #3
	add r0, r0, #0x1c
	mov r3, #0
	bl ov00_022FEFA8
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r2, _022E1CF0 @ =ov00_022E3CBC
	ldr r0, [r0]
	mov r1, #7
	add r0, r0, #0x1c
	mov r3, #0
	bl ov00_022FEFA8
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r2, _022E1CF4 @ =ov00_022E3C70
	ldr r0, [r0]
	mov r1, #1
	add r0, r0, #0x1c
	mov r3, #0
	bl ov00_022FEFA8
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r2, _022E1CF8 @ =ov00_022E3CEC
	ldr r0, [r0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, #0
	bl ov00_022FEFA8
	bl ov00_022E22F0
	cmp r0, #0
	popne {r3, pc}
	mov r0, #2
	bl ov00_022E2270
	bl ov00_022E2B28
	b _022E1C9C
_022E1C10:
	ldr r1, _022E1CFC @ =0xFFFFB172
	mov r0, #3
	bl ov00_022E2C74
	pop {r3, pc}
_022E1C20:
	ldr r1, _022E1D00 @ =0xFFFFB17B
	mov r0, #4
	bl ov00_022E2C74
	pop {r3, pc}
_022E1C30:
	bl ov00_022E2B60
	b _022E1C9C
_022E1C38:
	bl ov00_022E385C
	mov r0, #0
	bl ov00_022E5470
	b _022E1C9C
_022E1C48:
	mov r0, #1
	bl ov00_022E5470
	bl ov00_022E385C
	b _022E1C9C
_022E1C58:
	bl ov00_022EC758
	bl ov00_022E385C
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	ldrbne r0, [r1, #0x38d]
	cmpne r0, #3
	bne _022E1C88
	mov r0, #1
	bl ov00_022E5470
	b _022E1C9C
_022E1C88:
	ldr r0, [r1]
	cmp r0, #0
	beq _022E1C9C
	mov r0, #0
	bl ov00_022E5470
_022E1C9C:
	ldr r0, _022E1CE4 @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x390]
	cmp r0, #1
	popne {r3, pc}
	ldr r0, [r1, #0x388]
	cmp r0, #0
	beq _022E1CD0
	bl ov00_02312C50
	ldr r0, _022E1CE4 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x388]
_022E1CD0:
	ldr r0, _022E1CE4 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x390]
	pop {r3, pc}
	.align 2, 0
_022E1CE4: .4byte 0x02326DA0
_022E1CE8: .4byte ov00_022E2558
_022E1CEC: .4byte ov00_022E2590
_022E1CF0: .4byte ov00_022E3CBC
_022E1CF4: .4byte ov00_022E3C70
_022E1CF8: .4byte ov00_022E3CEC
_022E1CFC: .4byte 0xFFFFB172
_022E1D00: .4byte 0xFFFFB17B
	arm_func_end ov00_022E1A84

	arm_func_start ov00_022E1D04
ov00_022E1D04: @ 0x022E1D04
	push {r4, r5, r6, lr}
	movs r4, r0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl ov00_022E0378
	cmp r0, #0
	bne _022E1D3C
	ldr r0, _022E1E04 @ =0x02326DA0
	ldr r2, [r0]
	ldr r1, [r2, #0x24]
	cmp r1, #0
	beq _022E1D44
_022E1D3C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_022E1D44:
	str r6, [r2, #0x70]
	ldr r1, [r0]
	cmp r4, #0
	str r5, [r1, #0x74]
	ldrhne r1, [r4]
	cmpne r1, #0
	moveq r5, #0
	beq _022E1DB0
	ldr r1, [r0]
	mov r0, #0
	add r1, r1, #0x2e
	mov r2, #0x34
	bl FUN_0207C2B8
	mov r0, r4
	bl ov00_022E1664
	cmp r0, #0x19
	movhi r5, #0x19
	bhi _022E1D98
	mov r0, r4
	bl ov00_022E1664
	mov r5, r0
_022E1D98:
	ldr r1, _022E1E04 @ =0x02326DA0
	mov r0, r4
	ldr r1, [r1]
	lsl r2, r5, #1
	add r1, r1, #0x2e
	bl FUN_0207C2E0
_022E1DB0:
	ldr r0, _022E1E04 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r5, lsl #1
	strh r1, [r0, #0x2e]
	bl ov00_022E089C
	cmp r0, #4
	beq _022E1DE4
	ldr r1, _022E1E08 @ =0xFFFF1596
	mov r0, #2
	bl ov00_022E2C74
	mov r0, #1
	pop {r4, r5, r6, pc}
_022E1DE4:
	mov r0, #1
	bl ov00_022E2270
	ldr r0, _022E1E04 @ =0x02326DA0
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	bl ov00_022F5BF8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E1E04: .4byte 0x02326DA0
_022E1E08: .4byte 0xFFFF1596
	arm_func_end ov00_022E1D04

	arm_func_start ov00_022E1E0C
ov00_022E1E0C: @ 0x022E1E0C
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022E0378
	cmp r0, #0
	bne _022E1E48
	ldr r0, _022E1EAC @ =0x02326DA0
	ldr r2, [r0]
	ldr r1, [r2, #0x24]
	cmp r1, #3
	blt _022E1E48
	cmp r1, #4
	bne _022E1E54
_022E1E48:
	add sp, sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_022E1E54:
	str r6, [r2, #0x78]
	ldr r1, [r0]
	mov r0, #4
	str r5, [r1, #0x7c]
	bl ov00_022E2270
	ldr r0, _022E1EAC @ =0x02326DA0
	ldr r1, [sp, #0x20]
	ldr r3, [r0]
	ldr r0, [sp, #0x24]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r4, [sp, #0x28]
	str r0, [sp, #8]
	ldr r2, _022E1EB0 @ =ov00_022E2510
	add r0, r3, #0xe0
	add r1, r3, #0x1e0
	mov r3, #0
	str r4, [sp, #0xc]
	bl ov00_022E3B3C
	mov r0, #1
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E1EAC: .4byte 0x02326DA0
_022E1EB0: .4byte ov00_022E2510
	arm_func_end ov00_022E1E0C

	arm_func_start ov00_022E1EB4
ov00_022E1EB4: @ 0x022E1EB4
	push {r4, lr}
	ldr r1, _022E1F18 @ =0x02326DA0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _022E1EF0
	bl ov00_022E0378
	cmp r0, #0
	bne _022E1EF0
	ldr r0, _022E1F18 @ =0x02326DA0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #5
	cmpne r0, #6
	beq _022E1EF8
_022E1EF0:
	mvn r0, #0
	pop {r4, pc}
_022E1EF8:
	mov r0, r4
	bl ov00_022E20A4
	cmp r0, #0
	mvneq r0, #1
	popeq {r4, pc}
	bl ov00_0230E384
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022E1F18: .4byte 0x02326DA0
	arm_func_end ov00_022E1EB4

	arm_func_start ov00_022E1F1C
ov00_022E1F1C: @ 0x022E1F1C
	ldr r0, _022E1F34 @ =0x02326DA0
	ldr r0, [r0]
	cmp r0, #0
	ldrbne r0, [r0, #0x2c]
	moveq r0, #0
	bx lr
	.align 2, 0
_022E1F34: .4byte 0x02326DA0
	arm_func_end ov00_022E1F1C

	arm_func_start ov00_022E1F38
ov00_022E1F38: @ 0x022E1F38
	push {r3, lr}
	ldr r2, _022E1F84 @ =0x02326DA0
	ldr r1, [r2]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	add r1, r1, #0x248
	add r1, r1, #0x400
	str r1, [r0]
	ldr r2, [r2]
	ldrb r1, [r2, #0x38d]
	cmp r1, #2
	ldrbne r1, [r2, #0x38d]
	cmpne r1, #3
	bne _022E1F7C
	bl ov00_022E6C64
	pop {r3, pc}
_022E1F7C:
	bl ov00_022E6C30
	pop {r3, pc}
	.align 2, 0
_022E1F84: .4byte 0x02326DA0
	arm_func_end ov00_022E1F38

	arm_func_start ov00_022E1F88
ov00_022E1F88: @ 0x022E1F88
	push {r3, lr}
	ldr r1, _022E1FBC @ =0x02326DA0
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r2, [r1, #0x668]
	mov r1, #1
	tst r2, r1, lsl r0
	moveq r0, #0
	popeq {r3, pc}
	bl ov00_022E220C
	pop {r3, pc}
	.align 2, 0
_022E1FBC: .4byte 0x02326DA0
	arm_func_end ov00_022E1F88

	arm_func_start ov00_022E1FC0
ov00_022E1FC0: @ 0x022E1FC0
	ldr r0, _022E1FD8 @ =0x02326DA0
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	bx lr
	.align 2, 0
_022E1FD8: .4byte 0x02326DA0
	arm_func_end ov00_022E1FC0

	arm_func_start ov00_022E1FDC
ov00_022E1FDC: @ 0x022E1FDC
	push {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _022E2094 @ =0x02326DA0
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	popne {r3, r4, pc}
	mov r0, #0x4000
	bl ov00_022E1544
	add r0, r0, #0xc000
	lsl r1, r0, #0x10
	ldr r3, _022E2094 @ =0x02326DA0
	mov r0, #0
	mov r2, r0
	lsr r1, r1, #0x10
	ldr r4, [r3]
	bl ov00_02310BF4
	ldr r1, _022E2098 @ =ov00_022E2A68
	ldr r2, _022E2094 @ =0x02326DA0
	str r1, [sp]
	mov r1, r0
	ldr r0, [r2]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov00_0230E074
	mov r4, r0
	bl ov00_022E240C
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r4
	popne {r3, r4, pc}
	ldr r0, _022E2094 @ =0x02326DA0
	ldr r1, _022E209C @ =ov00_022E6000
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov00_023105EC
	ldr r0, _022E2094 @ =0x02326DA0
	ldr r1, _022E20A0 @ =ov00_022E5F0C
	ldr r0, [r0]
	ldr r0, [r0]
	bl ov00_0230E450
	mov r0, r4
	add sp, sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022E2094: .4byte 0x02326DA0
_022E2098: .4byte ov00_022E2A68
_022E209C: .4byte ov00_022E6000
_022E20A0: .4byte ov00_022E5F0C
	arm_func_end ov00_022E1FDC

	arm_func_start ov00_022E20A4
ov00_022E20A4: @ 0x022E20A4
	push {r4, r5, r6, lr}
	ldr r1, _022E2100 @ =0x02326DA0
	mov r6, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r4, _022E2104 @ =0x02326DA8
	mov r5, #0
_022E20C8:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _022E20EC
	bl ov00_0230E460
	ldrb r0, [r0, #1]
	cmp r6, r0
	ldreq r0, _022E2104 @ =0x02326DA8
	ldreq r0, [r0, r5, lsl #2]
	popeq {r4, r5, r6, pc}
_022E20EC:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022E20C8
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E2100: .4byte 0x02326DA0
_022E2104: .4byte 0x02326DA8
	arm_func_end ov00_022E20A4

	arm_func_start ov00_022E2108
ov00_022E2108: @ 0x022E2108
	push {r3, lr}
	bl ov00_0230E460
	ldrb r0, [r0, #1]
	pop {r3, pc}
	arm_func_end ov00_022E2108

	arm_func_start ov00_022E2118
ov00_022E2118: @ 0x022E2118
	push {r3, lr}
	bl ov00_0230E460
	ldrb r0, [r0]
	pop {r3, pc}
	arm_func_end ov00_022E2118

	arm_func_start ov00_022E2128
ov00_022E2128: @ 0x022E2128
	ldr r2, _022E2150 @ =0x02326DA8
	mov r0, #0
_022E2130:
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bxeq lr
	add r0, r0, #1
	cmp r0, #0x20
	blt _022E2130
	mvn r0, #0
	bx lr
	.align 2, 0
_022E2150: .4byte 0x02326DA8
	arm_func_end ov00_022E2128

	arm_func_start ov00_022E2154
ov00_022E2154: @ 0x022E2154
	push {r3, lr}
	ldr r1, _022E217C @ =0x02326DA8
	mov r0, #0
	mov r2, #0x80
	bl FUN_0207C314
	ldr r1, _022E2180 @ =0x02326E28
	mov r0, #0
	mov r2, #0x100
	bl FUN_0207C314
	pop {r3, pc}
	.align 2, 0
_022E217C: .4byte 0x02326DA8
_022E2180: .4byte 0x02326E28
	arm_func_end ov00_022E2154

	arm_func_start ov00_022E2184
ov00_022E2184: @ 0x022E2184
	ldr r1, _022E2190 @ =0x02326DA8
	add r0, r1, r0, lsl #2
	bx lr
	.align 2, 0
_022E2190: .4byte 0x02326DA8
	arm_func_end ov00_022E2184

	arm_func_start ov00_022E2194
ov00_022E2194: @ 0x022E2194
	push {r3, lr}
	cmp r1, #0
	mov r3, #0
	ble _022E21CC
	ldr r2, _022E21F8 @ =0x02326DA0
	ldr ip, [r2]
_022E21AC:
	add r2, ip, r3, lsl #2
	ldr r2, [r2, #0x46c]
	cmp r0, r2
	beq _022E21CC
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, r1
	blt _022E21AC
_022E21CC:
	cmp r3, r1
	movge r0, #0
	popge {r3, pc}
	ldr r0, _022E21F8 @ =0x02326DA0
	ldr r0, [r0]
	add r0, r0, r3
	ldrb r0, [r0, #0x648]
	bl ov00_022E20A4
	bl ov00_022E2118
	bl ov00_022E2184
	pop {r3, pc}
	.align 2, 0
_022E21F8: .4byte 0x02326DA0
	arm_func_end ov00_022E2194

	arm_func_start ov00_022E21FC
ov00_022E21FC: @ 0x022E21FC
	ldr r1, _022E2208 @ =0x02326E28
	add r0, r1, r0, lsl #3
	bx lr
	.align 2, 0
_022E2208: .4byte 0x02326E28
	arm_func_end ov00_022E21FC

	arm_func_start ov00_022E220C
ov00_022E220C: @ 0x022E220C
	push {r4, r5, r6, lr}
	ldr r4, _022E2250 @ =0x02326DA8
	mov r6, r0
	mov r5, #0
_022E221C:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _022E223C
	bl ov00_0230E460
	ldrb r0, [r0, #1]
	cmp r6, r0
	moveq r0, #1
	popeq {r4, r5, r6, pc}
_022E223C:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022E221C
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E2250: .4byte 0x02326DA8
	arm_func_end ov00_022E220C

	arm_func_start ov00_022E2254
ov00_022E2254: @ 0x022E2254
	ldr r0, _022E2268 @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x2c]
	bx lr
	.align 2, 0
_022E2268: .4byte 0x02326DA0
	arm_func_end ov00_022E2254

	arm_func_start ov00_022E226C
ov00_022E226C: @ 0x022E226C
	bx lr
	arm_func_end ov00_022E226C

	arm_func_start ov00_022E2270
ov00_022E2270: @ 0x022E2270
	ldr r1, _022E228C @ =0x02326DA0
	ldr r3, [r1]
	ldr r2, [r3, #0x24]
	str r2, [r3, #0x28]
	ldr r1, [r1]
	str r0, [r1, #0x24]
	bx lr
	.align 2, 0
_022E228C: .4byte 0x02326DA0
	arm_func_end ov00_022E2270

	arm_func_start ov00_022E2290
ov00_022E2290: @ 0x022E2290
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	bl ov00_022E6C30
	mov r1, r0
	cmp r1, #0
	mov r0, #0
	ble _022E22D4
	ldr r3, [sp]
_022E22B8:
	ldrb r2, [r3]
	cmp r4, r2
	beq _022E22D4
	add r0, r0, #1
	cmp r0, r1
	add r3, r3, #1
	blt _022E22B8
_022E22D4:
	cmp r0, r1
	addeq sp, sp, #4
	moveq r0, #0
	popeq {r3, r4, pc}
	bl ov00_022E6A24
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov00_022E2290

	arm_func_start ov00_022E22F0
ov00_022E22F0: @ 0x022E22F0
	push {r4, r5, r6, lr}
	movs r6, r0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _022E234C
_022E230C: @ jump table
	b _022E234C @ case 0
	b _022E2320 @ case 1
	b _022E232C @ case 2
	b _022E2338 @ case 3
	b _022E2344 @ case 4
_022E2320:
	mov r5, #9
	sub r4, r5, #0xa
	b _022E234C
_022E232C:
	mov r5, #9
	sub r4, r5, #0xb
	b _022E234C
_022E2338:
	mov r5, #6
	sub r4, r5, #0x10
	b _022E234C
_022E2344:
	mov r5, #6
	sub r4, r5, #0x1a
_022E234C:
	ldr r0, _022E23F8 @ =0x02326DA0
	ldr r1, [r0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022E23DC
_022E2364: @ jump table
	b _022E23DC @ case 0
	b _022E237C @ case 1
	b _022E2394 @ case 2
	b _022E23DC @ case 3
	b _022E23D0 @ case 4
	b _022E23B8 @ case 5
_022E237C:
	ldr r1, _022E23FC @ =0xFFFF11B8
	mov r0, r5
	add r4, r4, r1
	mov r1, r4
	bl ov00_022E2C74
	b _022E23E4
_022E2394:
	ldr r1, [r1, #0x9c]
	ldr r0, _022E23FC @ =0xFFFF11B8
	cmp r1, #1
	add r4, r4, r0
	bge _022E23E4
	mov r0, r5
	mov r1, r4
	bl ov00_022E2C74
	b _022E23E4
_022E23B8:
	ldr r1, _022E2400 @ =0xFFFEC398
	mov r0, r5
	add r4, r4, r1
	mov r1, r4
	bl ov00_022E6570
	b _022E23E4
_022E23D0:
	ldr r0, _022E2404 @ =0xFFFEEAA8
	add r4, r4, r0
	b _022E23E4
_022E23DC:
	ldr r0, _022E2408 @ =0xFFFE9C88
	add r4, r4, r0
_022E23E4:
	mov r0, r5
	mov r1, r4
	bl ov00_022E3BE8
	mov r0, r6
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E23F8: .4byte 0x02326DA0
_022E23FC: .4byte 0xFFFF11B8
_022E2400: .4byte 0xFFFEC398
_022E2404: .4byte 0xFFFEEAA8
_022E2408: .4byte 0xFFFE9C88
	arm_func_end ov00_022E22F0

	arm_func_start ov00_022E240C
ov00_022E240C: @ 0x022E240C
	push {r4, lr}
	movs r4, r0
	moveq r0, #0
	popeq {r4, pc}
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _022E2490
_022E2428: @ jump table
	b _022E2490 @ case 0
	b _022E2448 @ case 1
	b _022E2454 @ case 2
	b _022E2464 @ case 3
	b _022E2470 @ case 4
	b _022E2454 @ case 5
	b _022E247C @ case 6
	b _022E2488 @ case 7
_022E2448:
	mov r0, #9
	sub r2, r0, #0xa
	b _022E2490
_022E2454:
	mov r0, #0
	mov r2, r0
	mov r4, r0
	b _022E2490
_022E2464:
	mov r0, #6
	sub r2, r0, #0x10
	b _022E2490
_022E2470:
	mov r0, #6
	sub r2, r0, #0x24
	b _022E2490
_022E247C:
	mov r0, #6
	sub r2, r0, #0x4c
	b _022E2490
_022E2488:
	mov r0, #6
	sub r2, r0, #0x56
_022E2490:
	cmp r0, #0
	beq _022E24A4
	ldr r1, _022E24AC @ =0xFFFEFA48
	add r1, r2, r1
	bl ov00_022E2C74
_022E24A4:
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022E24AC: .4byte 0xFFFEFA48
	arm_func_end ov00_022E240C

	arm_func_start ov00_022E24B0
ov00_022E24B0: @ 0x022E24B0
	push {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _022E24DC
	ldr r1, _022E250C @ =0x02326DA0
	mov r0, #3
	ldr r1, [r1]
	str r4, [r1, #0x64]
	bl ov00_022E2270
	bl ov00_022E3E1C
	b _022E24E4
_022E24DC:
	mov r0, #0
	bl ov00_022E2270
_022E24E4:
	ldr r0, _022E250C @ =0x02326DA0
	ldr r0, [r0]
	ldr r3, [r0, #0x70]
	cmp r3, #0
	popeq {r3, r4, r5, pc}
	ldr r2, [r0, #0x74]
	mov r0, r5
	mov r1, r4
	blx r3
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E250C: .4byte 0x02326DA0
	arm_func_end ov00_022E24B0

	arm_func_start ov00_022E2510
ov00_022E2510: @ 0x022E2510
	push {r3, r4, r5, lr}
	ldr r2, _022E2554 @ =0x02326DA0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r0, [r0, #0x28]
	cmp r0, #4
	beq _022E2534
	bl ov00_022E2270
_022E2534:
	ldr r1, _022E2554 @ =0x02326DA0
	mov r0, r5
	ldr r3, [r1]
	mov r1, r4
	ldr r2, [r3, #0x7c]
	ldr r3, [r3, #0x78]
	blx r3
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E2554: .4byte 0x02326DA0
	arm_func_end ov00_022E2510

	arm_func_start ov00_022E2558
ov00_022E2558: @ 0x022E2558
	push {r3, lr}
	ldr r1, [r1, #4]
	ldr r0, _022E2588 @ =0x00000603
	cmp r1, r0
	ldrne r0, _022E258C @ =0x00000901
	cmpne r1, r0
	addne r0, r0, #0x200
	cmpne r1, r0
	popeq {r3, pc}
	mov r0, #3
	bl ov00_022E22F0
	pop {r3, pc}
	.align 2, 0
_022E2588: .4byte 0x00000603
_022E258C: .4byte 0x00000901
	arm_func_end ov00_022E2558

	arm_func_start ov00_022E2590
ov00_022E2590: @ 0x022E2590
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	add r3, sp, #0
	mov r2, #0
	mov r6, r0
	mov r5, r1
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	strb r2, [r3, #8]
	strb r2, [r3, #9]
	strb r2, [r3, #0xa]
	strb r2, [r3, #0xb]
	ldr r0, _022E26DC @ =0x0231A194
	ldr r4, [r5, #8]
	bl FUN_02089678
	mov r2, r0
	ldr r1, _022E26DC @ =0x0231A194
	mov r0, r4
	bl FUN_02087348
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	ldr r0, _022E26DC @ =0x0231A194
	bl FUN_02089678
	add r4, r4, r0
	mov r0, r4
	mov r1, #0x76
	bl FUN_02089974
	sub r7, r0, r4
	add r0, sp, #0
	mov r1, r4
	mov r2, r7
	bl FUN_0208975C
	cmp r7, #0xa
	addhi sp, sp, #0xc
	pophi {r4, r5, r6, r7, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	cmp r0, #3
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	ldr r0, _022E26E0 @ =0x0231A19C
	add r1, r7, #1
	add r4, r4, r1
	bl FUN_02089678
	mov r2, r0
	ldr r1, _022E26E0 @ =0x0231A19C
	mov r0, r4
	bl FUN_02087348
	cmp r0, #0
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	ldr r0, _022E26E4 @ =0x02326DA0
	ldr r1, [r0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	beq _022E26B8
	cmp r0, #6
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	ldrbne r0, [r1, #0x38d]
	cmpne r0, #3
	addne sp, sp, #0xc
	popne {r4, r5, r6, r7, pc}
_022E26B8:
	ldr r0, _022E26E0 @ =0x0231A19C
	bl FUN_02089678
	mov r2, r0
	ldr r1, [r5]
	mov r0, r6
	add r2, r4, r2
	bl ov00_022E64CC
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022E26DC: .4byte 0x0231A194
_022E26E0: .4byte 0x0231A19C
_022E26E4: .4byte 0x02326DA0
	arm_func_end ov00_022E2590
_022E26E8:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0xDC, 0xC6, 0x2E, 0x02

	arm_func_start ov00_022E26F4
ov00_022E26F4: @ 0x022E26F4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, #0
	mov fp, r0
	mov sb, r1
	mov sl, r5
	bl ov00_022E6E50
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #4
	addls pc, pc, sb, lsl #2
	b _022E2758
_022E2728: @ jump table
	b _022E273C @ case 0
	b _022E273C @ case 1
	b _022E2744 @ case 2
	b _022E2744 @ case 3
	b _022E2750 @ case 4
_022E273C:
	mov r8, r5
	b _022E2758
_022E2744:
	mov r8, #6
	ldr r6, _022E2A44 @ =0xFFFFE250
	b _022E2758
_022E2750:
	ldr r6, _022E2A48 @ =0xFFFFE24F
	mov r8, #9
_022E2758:
	cmp r8, #0
	bne _022E2814
	mov r0, fp
	bl ov00_0230E460
	movs r5, r0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022E2A4C @ =0x02326DA0
	ldrb r4, [r5, #1]
	ldr r0, [r0]
	mov r7, #1
	ldr r0, [r0, #0x668]
	tst r0, r7, lsl r4
	mov r0, r4
	moveq r7, #0
	bl ov00_022EC8F0
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	cmpeq sb, #0
	beq _022E27C0
	ldrb r0, [r1, #0x38d]
	cmp r0, #3
	cmpeq r4, #0
	bne _022E27C4
_022E27C0:
	mov sl, #1
_022E27C4:
	mov r0, r4
	bl ov00_022E2290
	ldr r1, _022E2A4C @ =0x02326DA0
	ldrb r5, [r5]
	ldr r3, _022E2A50 @ =0x02326DA8
	mov fp, #0
	str fp, [r3, r5, lsl #2]
	ldr r2, [r1]
	mov r5, r0
	ldrb r1, [r2, #0x385]
	cmp r1, #0
	subne r0, r1, #1
	strbne r0, [r2, #0x385]
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x38c]
	cmp r0, #0
	ldrbne r0, [r1, #0x38c]
	subne r0, r0, #1
	strbne r0, [r1, #0x38c]
_022E2814:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	ldreq r0, [r1, #0x24]
	cmpeq r0, #6
	cmpeq r7, #0
	bne _022E285C
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	cmpeq r8, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022E6D08
	mov r0, r5
	bl ov00_022E699C
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E285C:
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov00_022E6820
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	beq _022E2898
	ldr r1, _022E2A54 @ =0xFFFEC780
	mov r0, r8
	add r1, r6, r1
	bl ov00_022E0394
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E2898:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _022E2908
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	ldrbne r0, [r1, #0x38d]
	cmpne r0, #3
	bne _022E2908
	ldr r2, _022E2A4C @ =0x02326DA0
	ldr r1, [r2]
	ldrb r0, [r1, #0x385]
	add r6, r0, #2
	add r3, r1, r6, lsl #2
	ldr r3, [r3, #0x46c]
	cmp r3, #0
	beq _022E2908
	add r3, r1, r6
	ldrb r3, [r3, #0x648]
	add r0, r0, #1
	add r0, r1, r0
	strb r3, [r0, #0x648]
	ldr r0, [r2]
	ldrb r1, [r0, #0x385]
	add r0, r1, #1
	add r1, r1, #3
	bl ov00_022E6A24
_022E2908:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x38d]
	cmp r0, #2
	bne _022E2950
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _022E2930
	bl ov00_022E6D08
	b _022E296C
_022E2930:
	ldrb r0, [r1, #0x385]
	cmp r0, #0
	bne _022E296C
	ldr r1, _022E2A58 @ =0x0231A190
	mov r0, #1
	mov r2, #0
	bl ov00_022E3E54
	b _022E296C
_022E2950:
	ldrb r0, [r1, #0x385]
	cmp r0, #0
	bne _022E296C
	ldr r1, _022E2A58 @ =0x0231A190
	mov r0, #1
	mov r2, #0
	bl ov00_022E3E54
_022E296C:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x38d]
	cmp r0, #0
	ldrbne r0, [r1, #0x38d]
	cmpne r0, #1
	bne _022E29A4
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r2, [r0]
	ldrb r1, [r2, #0x38c]
	strb r1, [r2, #0x38e]
	ldr r0, [r0]
	ldr r0, [r0, #0x388]
	bl ov00_02312BF4
_022E29A4:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r6, [r0]
	ldr r0, [r6, #0x90]
	cmp r0, #0
	cmpne r7, #0
	beq _022E29FC
	cmp sb, #0
	moveq r7, #1
	mov r0, r5
	movne r7, #0
	bl ov00_022E3DB8
	str r0, [sp]
	ldr r1, [r6, #0x94]
	ldr r0, _022E2A4C @ =0x02326DA0
	str r1, [sp, #4]
	ldr r1, [r0]
	mov r0, r8
	ldr r5, [r1, #0x90]
	mov r1, r7
	mov r2, sl
	mov r3, r4
	blx r5
_022E29FC:
	ldr r0, _022E2A4C @ =0x02326DA0
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	ldrbeq r0, [r1, #0x38d]
	cmpeq r0, #2
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r1, #0x385]
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022E5080
	bl ov00_022E662C
	mov r0, #3
	bl ov00_022E2270
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E2A44: .4byte 0xFFFFE250
_022E2A48: .4byte 0xFFFFE24F
_022E2A4C: .4byte 0x02326DA0
_022E2A50: .4byte 0x02326DA8
_022E2A54: .4byte 0xFFFEC780
_022E2A58: .4byte 0x0231A190
	arm_func_end ov00_022E26F4
_022E2A5C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x18, 0xC7, 0x2E, 0x02

	arm_func_start ov00_022E2A68
ov00_022E2A68: @ 0x022E2A68
	push {r3, lr}
	bl ov00_0230E448
	bl ov00_022F5194
	ldr r2, _022E2A9C @ =0x02326DA0
	arm_func_end ov00_022E2A68

	arm_func_start ov00_022E2A78
ov00_022E2A78: @ 0x022E2A78
	ldr r1, _022E2AA0 @ =0xFFFE8515
	str r0, [r2, #4]
	mov r0, #9
	bl ov00_022E0394
	ldr r0, _022E2A9C @ =0x02326DA0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E2A9C: .4byte 0x02326DA0
_022E2AA0: .4byte 0xFFFE8515
	arm_func_end ov00_022E2A78

	arm_func_start ov00_022E2AA4
ov00_022E2AA4: @ 0x022E2AA4
	push {r4, r5, r6, lr}
	ldr ip, _022E2B24 @ =0x02326F28
	mov r6, r1
	mov r5, r2
	mov r1, #0
	mov r2, #0x280
	mov r4, r3
	str r0, [ip, #4]
	bl FUN_0207C40C
	ldr r0, _022E2B24 @ =0x02326F28
	mov r2, #0
	ldr r1, [r0, #4]
	ldr ip, [sp, #0x10]
	str r5, [r1]
	ldr r1, [r0, #4]
	ldr r5, [sp, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #4]
	ldr r3, [sp, #0x18]
	str r4, [r1, #8]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0x1c]
	str ip, [r1, #0xc]
	ldr r1, [r0, #4]
	str r5, [r1, #0x10]
	ldr r1, [r0, #4]
	str r3, [r1, #0x14]
	ldr r1, [r0, #4]
	str r2, [r1, #0x18]
	ldr r0, [r0, #4]
	str r6, [r0, #0x1c]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E2B24: .4byte 0x02326F28
	arm_func_end ov00_022E2AA4

	arm_func_start ov00_022E2B28
ov00_022E2B28: @ 0x022E2B28
	push {r3, lr}
	ldr r0, _022E2B58 @ =0x022E2EF4
	mov r1, #0
	bl ov00_022E2FA8
	ldr r0, _022E2B5C @ =0x02326F28
	mov r3, #1
	ldr r2, [r0, #4]
	mov r1, #0
	str r3, [r2, #4]
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	pop {r3, pc}
	.align 2, 0
_022E2B58: .4byte 0x022E2EF4
_022E2B5C: .4byte 0x02326F28
	arm_func_end ov00_022E2B28

	arm_func_start ov00_022E2B60
ov00_022E2B60: @ 0x022E2B60
	push {r3, lr}
	ldr r0, _022E2C48 @ =0x02326F28
	ldr r0, [r0, #4]
	cmp r0, #0
	popeq {r3, pc}
	bl ov00_022E0378
	cmp r0, #0
	popne {r3, pc}
	ldr r0, _022E2C48 @ =0x02326F28
	ldr r1, [r0, #4]
	ldr r0, [r1, #4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	pop {r3, pc}
_022E2B98: @ jump table
	pop {r3, pc} @ case 0
	b _022E2BB0 @ case 1
	b _022E2BB8 @ case 2
	b _022E2BB8 @ case 3
	b _022E2BB8 @ case 4
	pop {r3, pc} @ case 5
_022E2BB0:
	bl ov00_022E3174
	pop {r3, pc}
_022E2BB8:
	ldr r0, [r1]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _022E2BD0
	bl ov00_022FEF74
_022E2BD0:
	ldr r0, _022E2C48 @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_0207AE44
	ldr r3, _022E2C48 @ =0x02326F28
	ldr r2, _022E2C4C @ =0x000082EA
	ldr ip, [r3, #4]
	mov r3, #0
	ldr lr, [ip, #0x34]
	ldr ip, [ip, #0x38]
	subs lr, r0, lr
	sbc r0, r1, ip
	lsl r1, r0, #6
	orr r1, r1, lr, lsr #26
	lsl r0, lr, #6
	bl FUN_0208FE3C
	ldr r2, _022E2C50 @ =0x0000EA60
	cmp r1, #0
	cmpeq r0, r2
	popls {r3, pc}
	ldr r1, _022E2C54 @ =0xFFFF1172
	mov r0, #6
	bl ov00_022E2C74
	ldr r0, _022E2C48 @ =0x02326F28
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	pop {r3, pc}
	.align 2, 0
_022E2C48: .4byte 0x02326F28
_022E2C4C: .4byte 0x000082EA
_022E2C50: .4byte 0x0000EA60
_022E2C54: .4byte 0xFFFF1172
	arm_func_end ov00_022E2B60

	arm_func_start ov00_022E2C58
ov00_022E2C58: @ 0x022E2C58
	ldr r0, _022E2C70 @ =0x02326F28
	ldr r0, [r0, #4]
	cmp r0, #0
	ldrne r0, [r0, #0x1c]
	moveq r0, #0
	bx lr
	.align 2, 0
_022E2C70: .4byte 0x02326F28
	arm_func_end ov00_022E2C58

	arm_func_start ov00_022E2C74
ov00_022E2C74: @ 0x022E2C74
	push {r4, lr}
	ldr r2, _022E2CC0 @ =0x02326F28
	mov r4, r0
	ldr r2, [r2, #4]
	cmp r2, #0
	cmpne r4, #0
	popeq {r4, pc}
	bl ov00_022E0394
	ldr r0, _022E2CC0 @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _022E2CB8
	ldr r2, [r0, #0x18]
	mov r0, r4
	mov r1, #0
	blx r3
_022E2CB8:
	bl ov00_022E2D20
	pop {r4, pc}
	.align 2, 0
_022E2CC0: .4byte 0x02326F28
	arm_func_end ov00_022E2C74

	arm_func_start ov00_022E2CC4
ov00_022E2CC4: @ 0x022E2CC4
	push {r3, lr}
	ldr r0, _022E2D1C @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _022E2D0C
	bl ov00_022DBE7C
	bl ov00_022DBF08
	ldr r1, _022E2D1C @ =0x02326F28
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov00_022E0434
	ldr r0, _022E2D1C @ =0x02326F28
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x24]
_022E2D0C:
	ldr r0, _022E2D1C @ =0x02326F28
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_022E2D1C: .4byte 0x02326F28
	arm_func_end ov00_022E2CC4

	arm_func_start ov00_022E2D20
ov00_022E2D20: @ 0x022E2D20
	ldr r0, _022E2D44 @ =0x02326F28
	ldr r2, [r0, #4]
	cmp r2, #0
	bxeq lr
	mov r1, #0
	str r1, [r2, #4]
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
_022E2D44: .4byte 0x02326F28
	arm_func_end ov00_022E2D20

	arm_func_start ov00_022E2D48
ov00_022E2D48: @ 0x022E2D48
	push {r4, lr}
	movs r4, r0
	moveq r0, #0
	popeq {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _022E2DA4
_022E2D64: @ jump table
	b _022E2DA4 @ case 0
	b _022E2D78 @ case 1
	b _022E2D84 @ case 2
	b _022E2D90 @ case 3
	b _022E2D9C @ case 4
_022E2D78:
	mov r0, #9
	sub r2, r0, #0xa
	b _022E2DA4
_022E2D84:
	mov r0, #9
	sub r2, r0, #0xb
	b _022E2DA4
_022E2D90:
	mov r0, #6
	sub r2, r0, #0x10
	b _022E2DA4
_022E2D9C:
	mov r0, #6
	sub r2, r0, #0x1a
_022E2DA4:
	ldr r1, _022E2DB8 @ =0xFFFF11B8
	add r1, r2, r1
	bl ov00_022E2C74
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022E2DB8: .4byte 0xFFFF11B8
	arm_func_end ov00_022E2D48

	arm_func_start ov00_022E2DBC
ov00_022E2DBC: @ 0x022E2DBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _022E2EE4 @ =0x02326F28
	mov lr, #0
	ldr r3, [r2, #4]
	mov r4, r1
	str lr, [r3, #0x30]
	mov r7, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _022E2ED8
	ldr ip, [r2, #4]
	mov r6, r4
	add r5, ip, #0x260
	ldm r6!, {r0, r1, r2, r3}
	stm r5!, {r0, r1, r2, r3}
	ldm r6, {r0, r1, r2, r3}
	stm r5, {r0, r1, r2, r3}
	ldr r0, [ip, #4]
	cmp r0, #2
	bne _022E2EA0
	ldr r1, [ip, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r1, #0x1c]
	cmp r1, r0
	bne _022E2E8C
	ldr r1, _022E2EE8 @ =0x0231A1A0
	mov r3, #5
	mov r2, lr
	mov r0, #1
	str r3, [ip, #4]
	bl ov00_022E3E54
	bl ov00_022E2D48
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _022E2EE4 @ =0x02326F28
	ldr r1, [r4, #4]
	ldr r3, [r0, #4]
	mov r0, #0
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #0x14]
	blx r3
	bl ov00_022E1FDC
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	bl ov00_022E5224
	add sp, sp, #8
	cmp r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022E2E8C:
	ldr r1, _022E2EEC @ =0xFFFF15A0
	mov r0, #6
	bl ov00_022E2C74
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E2EA0:
	cmp r0, #3
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, _022E2EF0 @ =ov00_022E337C
	mov r0, r7
	stm sp, {r1, lr}
	ldr r1, [r4, #4]
	mov r2, lr
	mov r3, lr
	bl ov00_022FF1F8
	bl ov00_022E2D48
	add sp, sp, #8
	cmp r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022E2ED8:
	bl ov00_022E2D48
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E2EE4: .4byte 0x02326F28
_022E2EE8: .4byte 0x0231A1A0
_022E2EEC: .4byte 0xFFFF15A0
_022E2EF0: .4byte ov00_022E337C
	arm_func_end ov00_022E2DBC
_022E2EF4:
	.byte 0x08, 0xC0, 0x9F, 0xE5, 0x08, 0x20, 0x9F, 0xE5, 0x02, 0x30, 0xA0, 0xE3
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x0C, 0x2F, 0x2E, 0x02, 0xBC, 0x2D, 0x2E, 0x02

	arm_func_start ov00_022E2F0C
ov00_022E2F0C: @ 0x022E2F0C
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r4, _022E2FA4 @ =0x02326F28
	mov r6, r1
	ldr r4, [r4, #4]
	mov r1, r0
	add r0, r4, #0x48
	mov r5, r2
	mov r4, r3
	bl FUN_02089694
	ldr r0, _022E2FA4 @ =0x02326F28
	mov r1, r6
	ldr r0, [r0, #4]
	add r0, r0, #0x148
	bl FUN_02089694
	ldr r0, _022E2FA4 @ =0x02326F28
	ldr r6, [r0, #4]
	bl FUN_0207AE44
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r3, #1
	ldr r0, _022E2FA4 @ =0x02326F28
	str r3, [r6, #0x30]
	ldr r2, [r0, #4]
	mov r1, #0
	stm sp, {r1, r5}
	str r1, [sp, #8]
	ldr r0, [r2]
	add r1, r2, #0x48
	add r2, r2, #0x148
	bl ov00_022FEFF8
	bl ov00_022E2D48
	cmp r0, #0
	ldreq r0, _022E2FA4 @ =0x02326F28
	ldreq r0, [r0, #4]
	streq r4, [r0, #4]
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022E2FA4: .4byte 0x02326F28
	arm_func_end ov00_022E2F0C

	arm_func_start ov00_022E2FA8
ov00_022E2FA8: @ 0x022E2FA8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x48
	bl FUN_0207C40C
	ldr r0, _022E3158 @ =0x02326F28
	str r5, [r0, #8]
	str r4, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov00_022DB77C
	cmp r0, #0
	beq _022E3008
	ldr r0, _022E3158 @ =0x02326F28
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r2, r1, #0x248
	ldr r1, [r0, #0x24]
	add r0, r0, #0x10
	bl ov00_022DB528
	b _022E30BC
_022E3008:
	ldr r0, _022E3158 @ =0x02326F28
	ldr r0, [r0, #4]
	add r0, r0, #0x3c
	bl ov00_022DB764
	cmp r0, #0
	bne _022E3070
	ldr r0, _022E3158 @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	add r0, r0, #4
	bl ov00_022DB6F8
	cmp r0, #0
	beq _022E305C
	ldr r0, _022E3158 @ =0x02326F28
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r3, r1, #0x3c
	add r0, r0, #4
	ldm r0, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	b _022E30A4
_022E305C:
	ldr r0, _022E3158 @ =0x02326F28
	ldr r0, [r0, #4]
	add r0, r0, #0x3c
	bl ov00_022DB634
	b _022E30A4
_022E3070:
	bl FUN_0207AE44
	ldr r2, _022E315C @ =0x6C078965
	ldr r3, _022E3160 @ =0x5D588B65
	umull ip, r4, r0, r2
	mla r4, r0, r3, r4
	ldr r3, _022E3158 @ =0x02326F28
	ldr r0, _022E3164 @ =0x00269EC3
	mla r4, r1, r2, r4
	adds r0, ip, r0
	ldr r3, [r3, #4]
	adc r1, r4, #0
	add r0, r3, #0x3c
	bl ov00_022DB178
_022E30A4:
	ldr r0, _022E3158 @ =0x02326F28
	ldr r2, [r0, #4]
	ldr r1, [r2, #0xc]
	add r0, r2, #0x3c
	add r2, r2, #0x248
	bl ov00_022DB528
_022E30BC:
	ldr r0, _022E3158 @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov00_022E1664
	ldr r1, _022E3158 @ =0x02326F28
	lsl r2, r0, #1
	ldr r1, [r1, #4]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0
	bl FUN_0207C4C8
	ldr r1, _022E3158 @ =0x02326F28
	add r0, sp, #0x34
	ldr r1, [r1, #4]
	add r1, r1, #0x51
	add r1, r1, #0x200
	bl FUN_02089694
	ldr r4, _022E3168 @ =ov00_022E03F0
	ldr r3, _022E316C @ =ov00_022E0434
	ldr r1, _022E3170 @ =0x00001C14
	mov r0, #0
	mov r2, #4
	str r4, [sp, #0x40]
	str r3, [sp, #0x44]
	bl ov00_022E0400
	ldr r1, _022E3158 @ =0x02326F28
	mov r4, r0
	ldr r0, [r1, #4]
	str r4, [r0, #0x24]
	bl FUN_0207AE44
	ldr r2, _022E3158 @ =0x02326F28
	ldr r2, [r2, #4]
	str r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	mov r1, r4
	add r0, sp, #0
	bl ov00_022DBCA4
	add sp, sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3158: .4byte 0x02326F28
_022E315C: .4byte 0x6C078965
_022E3160: .4byte 0x5D588B65
_022E3164: .4byte 0x00269EC3
_022E3168: .4byte ov00_022E03F0
_022E316C: .4byte ov00_022E0434
_022E3170: .4byte 0x00001C14
	arm_func_end ov00_022E2FA8

	arm_func_start ov00_022E3174
ov00_022E3174: @ 0x022E3174
	push {r3, lr}
	sub sp, sp, #0x3d0
	bl ov00_022DBF90
	cmp r0, #0x15
	bne _022E3244
	add r0, sp, #0x20c
	bl ov00_022DBFDC
	ldr r0, _022E3364 @ =0x02326F28
	add r1, sp, #0x200
	ldr r0, [r0, #4]
	add r1, r1, #0x56
	add r0, r0, #0x48
	bl FUN_02089694
	ldr r0, _022E3364 @ =0x02326F28
	add r1, sp, #0x300
	ldr r0, [r0, #4]
	add r1, r1, #0x83
	add r0, r0, #0x148
	bl FUN_02089694
	bl ov00_022DBF08
	ldr r1, _022E3364 @ =0x02326F28
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov00_022E0434
	ldr r0, _022E3364 @ =0x02326F28
	mov r2, #0
	ldr r1, [r0, #4]
	str r2, [r1, #0x24]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl ov00_022DB77C
	cmp r0, #0
	beq _022E3220
	ldr r0, _022E3364 @ =0x02326F28
	ldr r2, [r0]
	ldmib r0, {r1, r3}
	add r0, r1, #0x48
	add r1, r1, #0x148
	blx r3
	add sp, sp, #0x3d0
	pop {r3, pc}
_022E3220:
	ldr r0, _022E3364 @ =0x02326F28
	ldr r2, _022E3368 @ =ov00_022E2DBC
	ldr r1, [r0, #4]
	mov r3, #3
	add r0, r1, #0x48
	add r1, r1, #0x148
	bl ov00_022E2F0C
	add sp, sp, #0x3d0
	pop {r3, pc}
_022E3244:
	bl ov00_022DBF90
	cmp r0, #0
	addeq sp, sp, #0x3d0
	popeq {r3, pc}
	bl FUN_0207AE44
	ldr r3, _022E3364 @ =0x02326F28
	ldr r2, _022E336C @ =0x000082EA
	ldr ip, [r3, #4]
	mov r3, #0
	ldr lr, [ip, #0x28]
	ldr ip, [ip, #0x2c]
	subs lr, r0, lr
	sbc r0, r1, ip
	lsl r1, r0, #6
	orr r1, r1, lr, lsr #26
	lsl r0, lr, #6
	bl FUN_0208FE3C
	ldr r2, _022E3370 @ =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _022E32E0
	add r0, sp, #0x48
	bl ov00_022DBFDC
	bl ov00_022DBF08
	ldr r1, _022E3364 @ =0x02326F28
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov00_022E0434
	ldr r0, _022E3364 @ =0x02326F28
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #2
	str r2, [r1, #0x24]
	ldr r1, [sp, #0x48]
	bl ov00_022E2C74
	add sp, sp, #0x3d0
	pop {r3, pc}
_022E32E0:
	bl ov00_022DBF08
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x48
	bl FUN_0207C40C
	ldr r0, _022E3364 @ =0x02326F28
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov00_022E1664
	ldr r1, _022E3364 @ =0x02326F28
	lsl r2, r0, #1
	ldr r1, [r1, #4]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0
	bl FUN_0207C4C8
	ldr r1, _022E3364 @ =0x02326F28
	add r0, sp, #0x34
	ldr r1, [r1, #4]
	add r1, r1, #0x51
	add r1, r1, #0x200
	bl FUN_02089694
	ldr r2, _022E3374 @ =ov00_022E03F0
	ldr r0, _022E3364 @ =0x02326F28
	str r2, [sp, #0x40]
	ldr r2, _022E3378 @ =ov00_022E0434
	ldr r1, [r0, #4]
	str r2, [sp, #0x44]
	ldr r1, [r1, #0x24]
	add r0, sp, #0
	bl ov00_022DBCA4
	add sp, sp, #0x3d0
	pop {r3, pc}
	.align 2, 0
_022E3364: .4byte 0x02326F28
_022E3368: .4byte ov00_022E2DBC
_022E336C: .4byte 0x000082EA
_022E3370: .4byte 0x00002710
_022E3374: .4byte ov00_022E03F0
_022E3378: .4byte ov00_022E0434
	arm_func_end ov00_022E3174

	arm_func_start ov00_022E337C
ov00_022E337C: @ 0x022E337C
	push {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r1
	ldr r1, [r4]
	mov r5, r0
	cmp r1, #0
	addne sp, sp, #0x48
	popne {r3, r4, r5, pc}
	ldr r1, _022E3510 @ =0x02326F28
	ldr r2, [r1, #4]
	ldr r1, [r2, #4]
	cmp r1, #3
	bne _022E3454
	ldrsb r1, [r4, #0x8e]
	cmp r1, #0
	bne _022E342C
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #0x32
	add r0, r0, #4
	bl ov00_022DB528
	ldr r1, _022E3514 @ =0x00000705
	add r2, sp, #0x32
	mov r0, r5
	bl ov00_022FF2D4
	bl ov00_022E2D48
	cmp r0, #0
	addne sp, sp, #0x48
	popne {r3, r4, r5, pc}
	ldr r0, _022E3510 @ =0x02326F28
	mov r3, #4
	ldr r1, [r0, #4]
	ldr r0, _022E3518 @ =ov00_022E337C
	mov r2, #0
	str r3, [r1, #4]
	stm sp, {r0, r2}
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl ov00_022FF1F8
	bl ov00_022E2D48
	add sp, sp, #0x48
	cmp r0, #0
	pop {r3, r4, r5, pc}
_022E342C:
	bl ov00_022FF0FC
	ldr r0, _022E351C @ =0x022E2EF4
	mov r1, #0
	bl ov00_022E2FA8
	ldr r0, _022E3510 @ =0x02326F28
	mov r1, #1
	ldr r0, [r0, #4]
	add sp, sp, #0x48
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
_022E3454:
	cmp r1, #4
	addne sp, sp, #0x48
	popne {r3, r4, r5, pc}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #0x1d
	add r0, r0, #4
	bl ov00_022DB528
	add r1, sp, #0x1d
	add r0, r4, #0x8e
	bl FUN_0208982C
	cmp r0, #0
	bne _022E34E4
	ldr r0, _022E3510 @ =0x02326F28
	add r2, sp, #8
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xc]
	add r0, r0, #0x3c
	bl ov00_022DB528
	ldr r0, _022E3510 @ =0x02326F28
	ldr r2, [r4, #4]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r1, r1, #0x3c
	bl ov00_022DB898
	ldr r1, _022E3510 @ =0x02326F28
	mov r3, #2
	ldr r2, [r1, #4]
	mov r0, r5
	str r3, [r2, #4]
	ldr r1, [r1, #4]
	mov r2, #0
	add r1, r1, #0x260
	bl ov00_022E2DBC
	add sp, sp, #0x48
	pop {r3, r4, r5, pc}
_022E34E4:
	ldr r0, _022E3518 @ =ov00_022E337C
	mov r2, #0
	stm sp, {r0, r2}
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl ov00_022FF1F8
	bl ov00_022E2D48
	cmp r0, #0
	add sp, sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3510: .4byte 0x02326F28
_022E3514: .4byte 0x00000705
_022E3518: .4byte ov00_022E337C
_022E351C: .4byte 0x022E2EF4
	arm_func_end ov00_022E337C

	arm_func_start ov00_022E3520
ov00_022E3520: @ 0x022E3520
	ldr r0, _022E3548 @ =0x02326F28
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022E3540
	ldr r0, [r0, #4]
	cmp r0, #5
	moveq r0, #1
	bxeq lr
_022E3540:
	mov r0, #0
	bx lr
	.align 2, 0
_022E3548: .4byte 0x02326F28
	arm_func_end ov00_022E3520

	arm_func_start ov00_022E354C
ov00_022E354C: @ 0x022E354C
	ldr ip, _022E3560 @ =FUN_022E3564
	mov r3, r1
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
_022E3560: .4byte FUN_022E3564
	arm_func_end ov00_022E354C

	arm_func_start FUN_022E3564
FUN_022E3564: @ 0x022E3564
	push {r4, r5, r6, lr}
	sub sp, sp, #0x218
	mov r6, r1
	add r1, sp, #4
	mov r4, r2
	mov r5, r3
	bl ov00_022E4604
	cmp r0, #0
	beq _022E3654
	ldr r0, [sp, #8]
	cmp r0, #6
	bne _022E3618
	cmp r6, #0
	beq _022E35D4
	ldr r0, _022E3678 @ =0x0231A1A4
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl ov00_022E1448
	cmp r0, #0
	movle r0, #0
	strble r0, [r6]
	ble _022E35D4
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	strb r0, [r6]
_022E35D4:
	cmp r4, #0
	beq _022E3630
	ldr r0, _022E367C @ =0x0231A1A8
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl ov00_022E1448
	cmp r0, #0
	movle r0, #0
	strble r0, [r4]
	ble _022E3630
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	strb r0, [r4]
	b _022E3630
_022E3618:
	cmp r6, #0
	movne r0, #0
	strbne r0, [r6]
	cmp r4, #0
	movne r0, #0
	strbne r0, [r4]
_022E3630:
	cmp r5, #0
	beq _022E3644
	add r1, sp, #0x10c
	mov r0, r5
	bl FUN_02089694
_022E3644:
	ldr r0, [sp, #8]
	add sp, sp, #0x218
	and r0, r0, #0xff
	pop {r4, r5, r6, pc}
_022E3654:
	cmp r6, #0
	movne r0, #0
	strbne r0, [r6]
	cmp r4, #0
	movne r0, #0
	strbne r0, [r4]
	mov r0, #0
	add sp, sp, #0x218
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E3678: .4byte 0x0231A1A4
_022E367C: .4byte 0x0231A1A8
	arm_func_end FUN_022E3564

	arm_func_start ov00_022E3680
ov00_022E3680: @ 0x022E3680
	push {r3, r4, r5, lr}
	ldr r1, _022E3710 @ =0x02326F34
	mov r4, r0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _022E36FC
	bl ov00_022E3520
	cmp r0, #0
	beq _022E36FC
	bl ov00_022E2C58
	cmp r0, #0
	beq _022E36FC
	bl ov00_022E2C58
	mov r1, r4
	bl ov00_022DB98C
	movs r5, r0
	mvnne r0, #0
	cmpne r5, r0
	beq _022E36FC
	ldr r0, _022E3710 @ =0x02326F34
	mov r1, r5
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl ov00_022FF808
	cmp r0, #0
	beq _022E36FC
	ldr r0, _022E3710 @ =0x02326F34
	mov r1, r5
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl ov00_022FF880
_022E36FC:
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl FUN_0207C40C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3710: .4byte 0x02326F34
	arm_func_end ov00_022E3680

	arm_func_start ov00_022E3714
ov00_022E3714: @ 0x022E3714
	ldr r2, _022E373C @ =0x02326F34
	ldr r3, [r2, #0xc]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	str r0, [r3, #0x44]
	ldr r2, [r2, #0xc]
	mov r0, #1
	str r1, [r2, #0x48]
	bx lr
	.align 2, 0
_022E373C: .4byte 0x02326F34
	arm_func_end ov00_022E3714

	arm_func_start ov00_022E3740
ov00_022E3740: @ 0x022E3740
	push {r4, r5, r6, r7, r8, lr}
	ldr r6, _022E3858 @ =0x02326F34
	ldr r5, [sp, #0x18]
	str r0, [r6, #0xc]
	mov r4, #0
	str r4, [r0]
	ldr r0, [r6, #0xc]
	cmp r5, #0
	str r1, [r0, #4]
	ldr r0, [r6, #0xc]
	str r4, [r0, #8]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r5, [r0, #0x14]
	ldr r0, [r6, #0xc]
	str r3, [r0, #0x18]
	ldr r0, [r6, #0xc]
	strb r4, [r0, #0x1c]
	ldr r0, [r6, #0xc]
	strb r4, [r0, #0x1d]
	ldr r0, [r6, #0xc]
	strb r4, [r0, #0x1e]
	ldr r0, [r6, #0xc]
	strb r4, [r0, #0x1f]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x20]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x24]
	ldr r0, [r6, #0xc]
	str r2, [r0, #0x28]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x2c]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x30]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x34]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x38]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x3c]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x40]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x44]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x48]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x4c]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x50]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x54]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x58]
	ldr r0, [r6, #0xc]
	str r4, [r0, #0x5c]
	pople {r4, r5, r6, r7, r8, pc}
	mov r8, r4
	mov r7, r4
_022E3830:
	ldr r0, [r6, #0xc]
	mov r1, r7
	ldr r0, [r0, #0x18]
	add r0, r0, r8
	bl ov00_022DB328
	add r4, r4, #1
	cmp r4, r5
	add r8, r8, #0xc
	blt _022E3830
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E3858: .4byte 0x02326F34
	arm_func_end ov00_022E3740

	arm_func_start ov00_022E385C
ov00_022E385C: @ 0x022E385C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r0, [r0, #0xc]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, pc}
	bl ov00_022E0378
	cmp r0, #0
	addne sp, sp, #8
	popne {r4, r5, r6, r7, r8, pc}
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _022E38C0
	ldr r0, [r1, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, pc}
	bl ov00_022E3FA4
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_022E38C0:
	bl ov00_022E4E5C
	cmp r0, #0
	bne _022E38D8
	bl ov00_0230C30C
	cmp r0, #0
	beq _022E3910
_022E38D8:
	ldr r0, _022E3B30 @ =0x02326F34
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0]
	bl ov00_0230C32C
	ldr r0, _022E3B30 @ =0x02326F34
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0]
	cmp r1, #1
	bne _022E3910
	str r2, [r0]
	bl ov00_0230C29C
_022E3910:
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	beq _022E39B4
	bl ov00_022E3FA4
	cmp r0, #0
	addne sp, sp, #8
	popne {r4, r5, r6, r7, r8, pc}
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r3, [r0, #0xc]
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, [r3, #0x18]
	cmp r0, #0
	ldrbne r2, [r3, #0x1e]
	cmpne r2, #3
	beq _022E39B4
	ldr r1, [r3, #8]
	cmp r1, #7
	bls _022E39B4
	cmp r2, #1
	bhi _022E3984
	ldr r1, [r3, #0x14]
	bl ov00_022E4060
_022E3984:
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r3, [r0, #0xc]
	ldrb r2, [r3, #0x1c]
	ldr r1, [r3, #0x14]
	cmp r2, r1
	blt _022E39B4
	mov r1, #3
	strb r1, [r3, #0x1e]
	ldr r1, [r0, #0xc]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
_022E39B4:
	ldr r6, _022E3B30 @ =0x02326F34
	ldr r1, [r6, #0xc]
	ldrb r0, [r1, #0x1f]
	cmp r0, #2
	addlo sp, sp, #8
	poplo {r4, r5, r6, r7, r8, pc}
	ldr r0, [r1, #4]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #0
	beq _022E3B18
	ldr r0, [r1, #0x14]
	mov r4, #0
	mov r5, r4
	mov r7, r4
	cmp r0, #0
	ble _022E3A28
	mov r8, r4
_022E39FC:
	ldr r0, [r1, #0x18]
	add r0, r0, r8
	bl ov00_022DB1A4
	cmp r0, #3
	ldr r1, [r6, #0xc]
	add r7, r7, #1
	ldr r0, [r1, #0x14]
	addeq r5, r5, #1
	add r8, r8, #0xc
	cmp r7, r0
	blt _022E39FC
_022E3A28:
	cmp r5, #0
	bne _022E3A44
	mov r0, #0
	strb r0, [r1, #0x1f]
	bl ov00_022E4330
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_022E3A44:
	lsl r1, r5, #2
	mov r0, #4
	bl ov00_022E03F0
	ldr r8, _022E3B30 @ =0x02326F34
	ldr r1, [r8, #0xc]
	str r0, [r1, #0x5c]
	ldr r1, [r8, #0xc]
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	bne _022E3A80
	ldr r1, _022E3B34 @ =0xFFFEEE8F
	mov r0, #9
	bl ov00_022E3BE8
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
_022E3A80:
	ldr r0, [r1, #0x14]
	mov r7, #0
	cmp r0, #0
	ble _022E3AE4
	mov r6, r7
_022E3A94:
	ldr r0, [r1, #0x18]
	add r0, r0, r6
	bl ov00_022DB1A4
	cmp r0, #3
	bne _022E3ACC
	bl ov00_022E2C58
	ldr r1, [r8, #0xc]
	ldr r1, [r1, #0x18]
	add r1, r1, r6
	bl ov00_022DB98C
	ldr r1, [r8, #0xc]
	ldr r1, [r1, #0x5c]
	str r0, [r1, r4, lsl #2]
	add r4, r4, #1
_022E3ACC:
	ldr r1, [r8, #0xc]
	add r7, r7, #1
	ldr r0, [r1, #0x14]
	add r6, r6, #0xc
	cmp r7, r0
	blt _022E3A94
_022E3AE4:
	ldr r0, _022E3B30 @ =0x02326F34
	ldr r1, _022E3B38 @ =ov00_022E4E98
	ldr r2, [r0, #0xc]
	mov r3, #0
	stm sp, {r1, r3}
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x5c]
	mov r2, r5
	bl ov00_022FFBA8
	bl ov00_022E46C0
	cmp r0, #0
	addne sp, sp, #8
	popne {r4, r5, r6, r7, r8, pc}
_022E3B18:
	ldr r0, _022E3B30 @ =0x02326F34
	mov r1, #0
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1f]
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E3B30: .4byte 0x02326F34
_022E3B34: .4byte 0xFFFEEE8F
_022E3B38: .4byte ov00_022E4E98
	arm_func_end ov00_022E385C

	arm_func_start ov00_022E3B3C
ov00_022E3B3C: @ 0x022E3B3C
	push {r3, r4, r5, lr}
	ldr r0, _022E3BE4 @ =0x02326F34
	ldr r5, [sp, #0x10]
	ldr r1, [r0, #0xc]
	ldr r4, [sp, #0x14]
	str r2, [r1, #0x2c]
	ldr r1, [r0, #0xc]
	ldr lr, [sp, #0x18]
	str r3, [r1, #0x30]
	ldr r1, [r0, #0xc]
	ldr ip, [sp, #0x1c]
	str r5, [r1, #0x34]
	ldr r1, [r0, #0xc]
	mov r3, #0
	str r4, [r1, #0x38]
	ldr r1, [r0, #0xc]
	mov r2, #1
	str lr, [r1, #0x3c]
	ldr r1, [r0, #0xc]
	str ip, [r1, #0x40]
	ldr r1, [r0, #0xc]
	strb r3, [r1, #0x1d]
	ldr r1, [r0, #0xc]
	strb r3, [r1, #0x1e]
	ldr r1, [r0, #0xc]
	strb r3, [r1, #0x1f]
	ldr r1, [r0, #0xc]
	strb r3, [r1, #0x1c]
	ldr r1, [r0, #0xc]
	str r2, [r1]
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	ldrbeq r0, [r1, #0x1f]
	addeq r0, r0, #1
	strbeq r0, [r1, #0x1f]
	ldr r0, _022E3BE4 @ =0x02326F34
	ldr r1, [r0, #0xc]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3BE4: .4byte 0x02326F34
	arm_func_end ov00_022E3B3C

	arm_func_start ov00_022E3BE8
ov00_022E3BE8: @ 0x022E3BE8
	push {r4, lr}
	ldr r2, _022E3C6C @ =0x02326F34
	mov r4, r0
	ldr r2, [r2, #0xc]
	cmp r2, #0
	cmpne r4, #0
	popeq {r4, pc}
	bl ov00_022E0394
	ldr r0, _022E3C6C @ =0x02326F34
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #0
	cmpne r0, #2
	beq _022E3C64
	ldr r1, [r1, #0x5c]
	cmp r1, #0
	beq _022E3C48
	mov r0, #4
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022E3C6C @ =0x02326F34
	mov r1, #0
	ldr r0, [r0, #0xc]
	str r1, [r0, #0x5c]
_022E3C48:
	ldr r1, _022E3C6C @ =0x02326F34
	mov r0, r4
	ldr r3, [r1, #0xc]
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	blx r3
_022E3C64:
	bl ov00_022E4030
	pop {r4, pc}
	.align 2, 0
_022E3C6C: .4byte 0x02326F34
	arm_func_end ov00_022E3BE8

	arm_func_start ov00_022E3C70
ov00_022E3C70: @ 0x022E3C70
	push {r3, lr}
	sub sp, sp, #8
	ldr r2, _022E3CB4 @ =0x02326F34
	ldr r2, [r2, #0xc]
	ldr r2, [r2, #0x18]
	cmp r2, #0
	addeq sp, sp, #8
	popeq {r3, pc}
	ldr r3, _022E3CB8 @ =ov00_022E49D8
	mov r2, #0
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1]
	mov r3, r2
	bl ov00_022FF1F8
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022E3CB4: .4byte 0x02326F34
_022E3CB8: .4byte ov00_022E49D8
	arm_func_end ov00_022E3C70

	arm_func_start ov00_022E3CBC
ov00_022E3CBC: @ 0x022E3CBC
	push {r3, lr}
	sub sp, sp, #8
	ldr r3, _022E3CE8 @ =ov00_022E4C08
	mov r2, #0
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1]
	mov r3, r2
	bl ov00_022FF1F8
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022E3CE8: .4byte ov00_022E4C08
	arm_func_end ov00_022E3CBC

	arm_func_start ov00_022E3CEC
ov00_022E3CEC: @ 0x022E3CEC
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x214
	ldr r2, _022E3D6C @ =0x02326F34
	mov r6, r0
	ldr r0, [r2, #0xc]
	mov r5, r1
	ldr r0, [r0, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x214
	popeq {r3, r4, r5, r6, pc}
	ldr r0, [r5]
	bl ov00_022E3DB8
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x214
	popeq {r3, r4, r5, r6, pc}
	ldr r1, [r5, #8]
	add r2, sp, #0
	mov r0, r6
	bl ov00_022FF5D8
	ldr r0, _022E3D6C @ =0x02326F34
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	and r1, r1, #0xff
	blx ip
	add sp, sp, #0x214
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022E3D6C: .4byte 0x02326F34
	arm_func_end ov00_022E3CEC

	arm_func_start ov00_022E3D70
ov00_022E3D70: @ 0x022E3D70
	push {r3, r4, r5, lr}
	ldr r1, _022E3DB4 @ =0x02326F34
	mov r5, r0
	ldr r0, [r1, #0xc]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	bl ov00_022E2C58
	mov r1, #0xc
	mla r1, r5, r1, r4
	bl ov00_022DB98C
	cmp r0, #0
	mvnne r1, #0
	cmpne r0, r1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3DB4: .4byte 0x02326F34
	arm_func_end ov00_022E3D70

	arm_func_start ov00_022E3DB8
ov00_022E3DB8: @ 0x022E3DB8
	push {r4, r5, r6, lr}
	ldr r4, _022E3E18 @ =0x02326F34
	mov r6, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	cmpne r6, #0
	mvneq r0, #0
	popeq {r4, r5, r6, pc}
	ldr r0, [r0, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _022E3E10
_022E3DE8:
	mov r0, r5
	bl ov00_022E3D70
	cmp r6, r0
	moveq r0, r5
	popeq {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	ldr r0, [r0, #0x14]
	cmp r5, r0
	blt _022E3DE8
_022E3E10:
	mvn r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E3E18: .4byte 0x02326F34
	arm_func_end ov00_022E3DB8

	arm_func_start ov00_022E3E1C
ov00_022E3E1C: @ 0x022E3E1C
	push {r3, lr}
	ldr r0, _022E3E50 @ =0x02326F34
	ldr r1, [r0, #0xc]
	cmp r1, #0
	popeq {r3, pc}
	mov r0, #0
	str r0, [r1, #8]
	bl FUN_0207AE44
	ldr r2, _022E3E50 @ =0x02326F34
	ldr r2, [r2, #0xc]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	pop {r3, pc}
	.align 2, 0
_022E3E50: .4byte 0x02326F34
	arm_func_end ov00_022E3E1C

	arm_func_start ov00_022E3E54
ov00_022E3E54: @ 0x022E3E54
	push {r4, r5, r6, lr}
	ldr r3, _022E3F04 @ =0x02326F34
	mov r6, r0
	ldr r0, [r3, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _022E3E80
	bl ov00_022E3520
	cmp r0, #0
	bne _022E3E88
_022E3E80:
	mov r0, #0
	pop {r4, r5, r6, pc}
_022E3E88:
	mvn r0, #0
	cmp r6, r0
	bne _022E3EA8
	ldr r0, _022E3F04 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	ldr r6, [r0, #0x23c]
_022E3EA8:
	cmp r5, #0
	bne _022E3EC4
	ldr r0, _022E3F04 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	add r5, r0, #0x3b8
_022E3EC4:
	cmp r4, #0
	bne _022E3EE4
	ldr r0, _022E3F04 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	add r0, r0, #0xb8
	add r4, r0, #0x400
_022E3EE4:
	ldr r0, _022E3F04 @ =0x02326F34
	mov r1, r6
	ldr r0, [r0, #0xc]
	mov r2, r5
	ldr r0, [r0, #4]
	mov r3, r4
	bl ov00_022FF8DC
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E3F04: .4byte 0x02326F34
	arm_func_end ov00_022E3E54

	arm_func_start ov00_022E3F08
ov00_022E3F08: @ 0x022E3F08
	push {r3, r4, lr}
	sub sp, sp, #0x214
	ldr r1, _022E3F8C @ =0x02326F34
	mov r4, r0
	ldr r3, [r1, #0xc]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	ldrne r1, [r3]
	cmpne r1, #1
	beq _022E3F38
	ldr r1, [r3, #0x48]
	blx r2
_022E3F38:
	ldr r0, _022E3F8C @ =0x02326F34
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x214
	popeq {r3, r4, pc}
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r4, r0, r1
	add r1, sp, #0x108
	bl ov00_022E354C
	ldr r2, _022E3F8C @ =0x02326F34
	mov r1, r0
	ldr r0, [r2, #0xc]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	blx ip
	add sp, sp, #0x214
	pop {r3, r4, pc}
	.align 2, 0
_022E3F8C: .4byte 0x02326F34
	arm_func_end ov00_022E3F08

	arm_func_start ov00_022E3F90
ov00_022E3F90: @ 0x022E3F90
	ldr r0, _022E3FA0 @ =0x02326F34
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_022E3FA0: .4byte 0x02326F34
	arm_func_end ov00_022E3F90

	arm_func_start ov00_022E3FA4
ov00_022E3FA4: @ 0x022E3FA4
	push {r3, r4, r5, lr}
	ldr r0, _022E4028 @ =0x02326F34
	mov r4, #0
	ldr r5, [r0, #0xc]
	bl FUN_0207AE44
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #0x10]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022E402C @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, r4
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _022E4020
	ldr r1, [r5, #8]
	ldr r0, _022E4028 @ =0x02326F34
	add r1, r1, #1
	str r1, [r5, #8]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl ov00_022FEF74
	mov r4, r0
	bl FUN_0207AE44
	ldr r2, _022E4028 @ =0x02326F34
	ldr r2, [r2, #0xc]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_022E4020:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E4028: .4byte 0x02326F34
_022E402C: .4byte 0x000082EA
	arm_func_end ov00_022E3FA4

	arm_func_start ov00_022E4030
ov00_022E4030: @ 0x022E4030
	ldr r0, _022E405C @ =0x02326F34
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bxeq lr
	mov r2, #0
	str r2, [r1]
	ldr r1, [r0, #0xc]
	strb r2, [r1, #0x1e]
	ldr r0, [r0, #0xc]
	strb r2, [r0, #0x1f]
	bx lr
	.align 2, 0
_022E405C: .4byte 0x02326F34
	arm_func_end ov00_022E4030

	arm_func_start ov00_022E4060
ov00_022E4060: @ 0x022E4060
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24c
	ldr r2, _022E4328 @ =0x02326F34
	mov sl, r0
	ldr r2, [r2, #0xc]
	mov sb, r1
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _022E41C4
	ldr r0, [r2, #4]
	add r1, sp, #0x1c
	bl ov00_022FF5A8
	bl ov00_022E46C0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r1, [sp, #0x18]
	cmp r0, #0
	ble _022E41B4
_022E40A8:
	ldr r0, _022E4328 @ =0x02326F34
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0xc]
	add r2, sp, #0x38
	ldr r0, [r0, #4]
	bl ov00_022FF5D8
	bl ov00_022E46C0
	cmp sb, #0
	mov r4, #0
	ble _022E4164
_022E40D0:
	mov r0, r4
	bl ov00_022E3D70
	ldr r1, [sp, #0x38]
	cmp r1, r0
	bne _022E4158
	mov r0, #0xc
	mul r5, r4, r0
	add r0, sl, r5
	bl ov00_022DB1E4
	cmp r0, #0
	bne _022E4164
	ldr r1, [sp, #0x38]
	add r0, sl, r5
	bl ov00_022DBAAC
	add r0, sl, r5
	bl ov00_022DB29C
	ldr r0, _022E4328 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r5
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4144
	ldr r0, _022E4328 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r5
	bl ov00_022DB2F8
_022E4144:
	ldr r0, _022E4328 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1d]
	b _022E4164
_022E4158:
	add r4, r4, #1
	cmp r4, sb
	blt _022E40D0
_022E4164:
	cmp r4, sb
	bne _022E419C
	ldr r0, _022E4328 @ =0x02326F34
	ldr r1, [sp, #0x38]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl ov00_022FF880
	bl ov00_022E46C0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	sub r1, r1, #1
	sub r0, r0, #1
	str r1, [sp, #0x1c]
	str r0, [sp, #0x18]
_022E419C:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _022E40A8
_022E41B4:
	ldr r0, _022E4328 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1e]
_022E41C4:
	ldr r7, _022E4328 @ =0x02326F34
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #0x1c]
	cmp r1, sb
	addge sp, sp, #0x24c
	popge {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0xc
	mvn r5, #0
	mov r4, fp
	mov r6, fp
_022E41EC:
	mla r0, r1, r6, sl
	bl ov00_022DB238
	cmp r0, #0
	bne _022E4300
	ldr r0, [r7, #0xc]
	ldrb r0, [r0, #0x1c]
	bl ov00_022E3D70
	movs r8, r0
	beq _022E4270
	ldr r1, [r7, #0xc]
	mov r0, sl
	ldrb r1, [r1, #0x1c]
	mov r2, r8
	bl ov00_022E43C0
	cmp r0, #0
	bne _022E4300
	ldr r0, [r7, #0xc]
	mov r1, r8
	ldr r0, [r0, #4]
	add r2, sp, #0x18
	bl ov00_022FF768
	bl ov00_022E46C0
	ldr r0, [sp, #0x18]
	cmp r0, r5
	bne _022E4300
	mov r0, r8
	bl ov00_022E45D0
	ldr r0, [r7, #0xc]
	mov r1, #1
	ldrb r2, [r0, #0x1c]
	mla r0, r2, r4, sl
	bl ov00_022DB328
	b _022E4300
_022E4270:
	bl ov00_022E2C58
	ldr r1, [r7, #0xc]
	ldrb r2, [r1, #0x1c]
	mla r1, r2, fp, sl
	bl ov00_022DB98C
	cmp r0, r5
	bne _022E4300
	bl ov00_022E2C58
	ldr r2, _022E4328 @ =0x02326F34
	mov r1, #0xc
	ldr r3, [r2, #0xc]
	add r2, sp, #0x20
	ldrb r3, [r3, #0x1c]
	mla r1, r3, r1, sl
	bl ov00_022DBAE0
	ldr r0, _022E4328 @ =0x02326F34
	mov r1, #0
	ldr r4, [r0, #0xc]
	add r2, sp, #0x20
	stm sp, {r1, r2}
	str r1, [sp, #8]
	ldr r0, _022E432C @ =ov00_022E4734
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x1c]
	mov r2, r1
	mov r3, r1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov00_022FF130
	ldr r0, _022E4328 @ =0x02326F34
	mov r1, #2
	ldr r0, [r0, #0xc]
	add sp, sp, #0x24c
	strb r1, [r0, #0x1e]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E4300:
	ldr r1, [r7, #0xc]
	ldrb r0, [r1, #0x1c]
	add r0, r0, #1
	strb r0, [r1, #0x1c]
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #0x1c]
	cmp r1, sb
	blt _022E41EC
	add sp, sp, #0x24c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E4328: .4byte 0x02326F34
_022E432C: .4byte ov00_022E4734
	arm_func_end ov00_022E4060

	arm_func_start ov00_022E4330
ov00_022E4330: @ 0x022E4330
	push {r3, lr}
	ldr r1, _022E4364 @ =0x02326F34
	mov r0, #0
	ldr r3, [r1, #0xc]
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	blx r3
	ldr r0, _022E4364 @ =0x02326F34
	mov r1, #2
	ldr r0, [r0, #0xc]
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E4364: .4byte 0x02326F34
	arm_func_end ov00_022E4330

	arm_func_start ov00_022E4368
ov00_022E4368: @ 0x022E4368
	push {r3, r4, r5, lr}
	ldr r3, _022E43BC @ =0x02326F34
	mov r5, r1
	ldr r1, [r3, #0xc]
	mov r4, r2
	cmp r1, #0
	popeq {r3, r4, r5, pc}
	mov r2, #0xc
	mla r0, r5, r2, r0
	mov r1, #0
	bl FUN_0207C40C
	ldr r0, _022E43BC @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r3, [r0, #0x3c]
	cmp r3, #0
	popeq {r3, r4, r5, pc}
	ldr r2, [r0, #0x40]
	mov r0, r5
	mov r1, r4
	blx r3
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E43BC: .4byte 0x02326F34
	arm_func_end ov00_022E4368

	arm_func_start ov00_022E43C0
ov00_022E43C0: @ 0x022E43C0
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r1, #0xc
	mul r4, r7, r1
	mov r8, r0
	add r0, r8, r4
	mov r6, r2
	bl ov00_022DB1A4
	cmp r0, #1
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	mov r5, #0
	ble _022E4478
_022E43F8:
	mov r0, r5
	bl ov00_022E3D70
	cmp r0, #0
	beq _022E446C
	cmp r0, r6
	bne _022E446C
	add r0, r8, r4
	bl ov00_022DB1E4
	cmp r0, #0
	beq _022E4448
	mov r0, #0xc
	mla r0, r5, r0, r8
	bl ov00_022DB1E4
	cmp r0, #0
	bne _022E4448
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl ov00_022E4368
	b _022E4458
_022E4448:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov00_022E4368
_022E4458:
	ldr r1, _022E4480 @ =0x02326F34
	mov r0, #1
	ldr r1, [r1, #0xc]
	strb r0, [r1, #0x1d]
	pop {r4, r5, r6, r7, r8, pc}
_022E446C:
	add r5, r5, #1
	cmp r5, r7
	blt _022E43F8
_022E4478:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E4480: .4byte 0x02326F34
	arm_func_end ov00_022E43C0

	arm_func_start ov00_022E4484
ov00_022E4484: @ 0x022E4484
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov fp, r1
	str r0, [sp]
	mvn r0, #0
	str r2, [sp, #4]
	cmp fp, #0
	str r0, [sp, #0xc]
	mov r6, #0
	ble _022E45C0
	ldr r0, [sp]
	mov sb, r6
	str r0, [sp, #8]
	mov r8, r0
_022E44BC:
	mov r0, r6
	bl ov00_022E3D70
	movs r5, r0
	beq _022E45A0
	ldr r0, [sp, #4]
	add r7, r6, #1
	cmp r5, r0
	streq r6, [sp, #0xc]
	cmp r7, fp
	bge _022E45A0
	ldr r0, [sp]
	mov r1, #0xc
	mla sl, r7, r1, r0
	ldr r4, _022E45CC @ =0x02326F34
_022E44F4:
	mov r0, r7
	bl ov00_022E3D70
	cmp r5, r0
	bne _022E4590
	ldr r0, [sp, #8]
	bl ov00_022DB1A4
	cmp r0, #2
	bne _022E4530
	mov r0, sl
	bl ov00_022DB1A4
	cmp r0, #3
	bne _022E4530
	mov r0, r8
	mov r1, r5
	bl ov00_022DBAAC
_022E4530:
	mov r0, sl
	bl ov00_022DB1E4
	cmp r0, #0
	beq _022E4574
	mov r0, r8
	bl ov00_022DB29C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4574
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB2F8
_022E4574:
	ldr r0, [sp]
	mov r1, r7
	mov r2, r6
	bl ov00_022E4368
	ldr r1, [r4, #0xc]
	mov r0, #1
	strb r0, [r1, #0x1d]
_022E4590:
	add sl, sl, #0xc
	add r7, r7, #1
	cmp r7, fp
	blt _022E44F4
_022E45A0:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #0xc
	cmp r6, fp
	str r0, [sp, #8]
	add r8, r8, #0xc
	add sb, sb, #0xc
	blt _022E44BC
_022E45C0:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E45CC: .4byte 0x02326F34
	arm_func_end ov00_022E4484

	arm_func_start ov00_022E45D0
ov00_022E45D0: @ 0x022E45D0
	push {r4, lr}
	ldr r2, _022E45FC @ =0x02326F34
	mov r1, r0
	ldr r0, [r2, #0xc]
	ldr r2, _022E4600 @ =0x0231A1AC
	ldr r0, [r0, #4]
	bl ov00_022FF324
	mov r4, r0
	bl ov00_022E46C0
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022E45FC: .4byte 0x02326F34
_022E4600: .4byte 0x0231A1AC
	arm_func_end ov00_022E45D0

	arm_func_start ov00_022E4604
ov00_022E4604: @ 0x022E4604
	push {r3, r4, r5, lr}
	ldr r2, _022E46BC @ =0x02326F34
	mov r3, #0
	ldr r2, [r2, #0xc]
	mov r5, r0
	mov r4, r1
	str r3, [sp]
	cmp r2, #0
	beq _022E4634
	bl ov00_022E3520
	cmp r0, #0
	bne _022E463C
_022E4634:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E463C:
	bl ov00_022E2C58
	mov r1, r5
	bl ov00_022DB98C
	mov r5, r0
	cmp r5, #0
	ble _022E4678
	ldr r0, _022E46BC @ =0x02326F34
	add r2, sp, #0
	ldr r0, [r0, #0xc]
	mov r1, r5
	ldr r0, [r0, #4]
	bl ov00_022FF768
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
_022E4678:
	cmp r5, #0
	ble _022E4690
	ldr r1, [sp]
	mvn r0, #0
	cmp r1, r0
	bne _022E4698
_022E4690:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E4698:
	ldr r0, _022E46BC @ =0x02326F34
	mov r2, r4
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl ov00_022FF5D8
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E46BC: .4byte 0x02326F34
	arm_func_end ov00_022E4604

	arm_func_start ov00_022E46C0
ov00_022E46C0: @ 0x022E46C0
	push {r4, lr}
	movs r4, r0
	moveq r0, #0
	popeq {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _022E471C
_022E46DC: @ jump table
	b _022E471C @ case 0
	b _022E46F0 @ case 1
	b _022E46FC @ case 2
	b _022E4708 @ case 3
	b _022E4714 @ case 4
_022E46F0:
	mov r0, #9
	sub r2, r0, #0xa
	b _022E471C
_022E46FC:
	mov r0, #9
	sub r2, r0, #0xb
	b _022E471C
_022E4708:
	mov r0, #6
	sub r2, r0, #0x10
	b _022E471C
_022E4714:
	mov r0, #6
	sub r2, r0, #0x1a
_022E471C:
	ldr r1, _022E4730 @ =0xFFFEEAA8
	add r1, r2, r1
	bl ov00_022E3BE8
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_022E4730: .4byte 0xFFFEEAA8
	arm_func_end ov00_022E46C0

	arm_func_start ov00_022E4734
ov00_022E4734: @ 0x022E4734
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	mov r8, r2
	cmp r1, #0
	bne _022E496C
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _022E496C
	mov r0, #0xc
	ldr r1, _022E49D4 @ =0x02326F34
	mul r6, r8, r0
	ldr r0, [r1, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB1A4
	cmp r0, #0
	beq _022E496C
	ldr r7, _022E49D4 @ =0x02326F34
	ldr r0, [r7, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sb, #4]
	mov r4, #0
	cmp r0, #0
	ble _022E4808
	mov r5, r4
_022E47A8:
	ldr r0, [r7, #0xc]
	ldr r1, [sb, #0xc]
	ldr r0, [r0, #0x18]
	ldr r2, [r1, r5]
	mov r1, r8
	bl ov00_022E43C0
	cmp r0, #0
	beq _022E47F4
	ldr r0, _022E49D4 @ =0x02326F34
	mov r2, #1
	ldr r4, [r0, #0xc]
	add r1, r2, #0x600
	ldrb r3, [r4, #0x1c]
	add r3, r3, #1
	strb r3, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	strb r2, [r0, #0x1e]
	str r1, [sb, #8]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E47F4:
	ldr r0, [sb, #4]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0xac
	blt _022E47A8
_022E4808:
	cmp r0, #0
	mov r7, #0
	ble _022E493C
	ldr fp, _022E49D4 @ =0x02326F34
	mov r5, r7
	mvn r4, #0
_022E4820:
	ldr r1, [sb, #0xc]
	mov r0, sl
	ldr r1, [r1, r5]
	add r2, sp, #0
	bl ov00_022FF768
	bl ov00_022E46C0
	ldr r0, [sp]
	cmp r0, r4
	bne _022E4868
	ldr r0, [sb, #0xc]
	ldr r0, [r0, r5]
	bl ov00_022E45D0
	ldr r0, [fp, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB328
	b _022E4928
_022E4868:
	mov r0, #0xc
	ldr r1, _022E49D4 @ =0x02326F34
	mul r4, r8, r0
	ldr r1, [r1, #0xc]
	ldr r0, [sb, #0xc]
	ldr r2, [r1, #0x18]
	ldr r1, [r0]
	add r0, r2, r4
	bl ov00_022DBAAC
	ldr r0, _022E49D4 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r4
	bl ov00_022DB29C
	ldr r0, _022E49D4 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r4
	bl ov00_022DB2C8
	ldr r0, _022E49D4 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r4
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E48EC
	ldr r0, _022E49D4 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB2F8
_022E48EC:
	mov r0, r8
	bl ov00_022E3F08
	ldr r0, _022E49D4 @ =0x02326F34
	mov r3, #1
	ldr r4, [r0, #0xc]
	add r1, r3, #0x600
	ldrb r2, [r4, #0x1c]
	add r2, r2, #1
	strb r2, [r4, #0x1c]
	ldr r2, [r0, #0xc]
	strb r3, [r2, #0x1e]
	str r1, [sb, #8]
	ldr r0, [r0, #0xc]
	strb r3, [r0, #0x1d]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E4928:
	ldr r0, [sb, #4]
	add r7, r7, #1
	cmp r7, r0
	add r5, r5, #0xac
	blt _022E4820
_022E493C:
	ldr r0, [sb, #8]
	cmp r0, #0x600
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022E49D4 @ =0x02326F34
	mov r1, #1
	ldr r3, [r0, #0xc]
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1e]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E496C:
	ldr r0, [sb]
	cmp r0, #0
	beq _022E4984
	bl ov00_022E46C0
	cmp r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E4984:
	ldr r0, _022E49D4 @ =0x02326F34
	ldr r1, [r0, #0xc]
	ldr r0, [r1]
	cmp r0, #1
	beq _022E49B0
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r8, r0, r1
	bl ov00_022DB1A4
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E49B0:
	ldr r0, _022E49D4 @ =0x02326F34
	mov r1, #1
	ldr r3, [r0, #0xc]
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1e]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E49D4: .4byte 0x02326F34
	arm_func_end ov00_022E4734

	arm_func_start ov00_022E49D8
ov00_022E49D8: @ 0x022E49D8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	cmp r1, #0
	mov r6, #0
	addne sp, sp, #0x28
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022E4C00 @ =0x02326F34
	mov r5, r6
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ble _022E4BD4
	mov r7, r6
	add fp, sp, #0x11
_022E4A1C:
	ldr r0, [r1, #0x18]
	add r0, r0, r7
	bl ov00_022DB1A4
	cmp r0, #1
	bne _022E4AC4
	bl ov00_022E2C58
	ldr r1, [r4, #0xc]
	mov r2, fp
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl ov00_022DBAE0
	mov r0, fp
	add r1, sb, #0x8e
	bl FUN_0208982C
	cmp r0, #0
	bne _022E4BBC
	ldr r1, [sb, #4]
	mov r0, sl
	bl ov00_022FF498
	ldr r0, [r4, #0xc]
	ldr r1, [sb, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DBAAC
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB2C8
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4ABC
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB2F8
_022E4ABC:
	mov r6, #1
	b _022E4BBC
_022E4AC4:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB1A4
	cmp r0, #3
	beq _022E4AF4
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB1A4
	cmp r0, #2
	bne _022E4BBC
_022E4AF4:
	bl ov00_022E2C58
	ldr r1, [r0, #0x24]
	add r0, sp, #0xc
	lsr r2, r1, #0x10
	and r2, r2, #0xff
	str r2, [sp]
	lsr r2, r1, #8
	and r2, r2, #0xff
	str r2, [sp, #4]
	and r2, r1, #0xff
	str r2, [sp, #8]
	lsr r1, r1, #0x18
	and r3, r1, #0xff
	ldr r2, _022E4C04 @ =0x0231A1B0
	mov r1, #5
	bl FUN_0207911C
	ldr r8, [sb, #4]
	bl ov00_022E2C58
	ldr r1, [r4, #0xc]
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl ov00_022DB98C
	cmp r8, r0
	bne _022E4BBC
	add r0, sp, #0xc
	add r1, sb, #0x97
	mov r2, #4
	bl FUN_02087348
	cmp r0, #0
	bne _022E4BBC
	mov r1, r8
	mov r0, sl
	bl ov00_022FF498
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB2C8
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4BB8
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl ov00_022DB2F8
_022E4BB8:
	mov r6, #1
_022E4BBC:
	add r7, r7, #0xc
	add r5, r5, #1
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #0x14]
	cmp r5, r0
	blt _022E4A1C
_022E4BD4:
	cmp r6, #0
	beq _022E4BEC
	ldr r0, [sb, #4]
	bl ov00_022E45D0
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E4BEC:
	ldr r1, [sb, #4]
	mov r0, sl
	bl ov00_022FF4E8
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E4C00: .4byte 0x02326F34
_022E4C04: .4byte 0x0231A1B0
	arm_func_end ov00_022E49D8

	arm_func_start ov00_022E4C08
ov00_022E4C08: @ 0x022E4C08
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r1
	ldr r0, [sl]
	mov r7, #0
	cmp r0, #0
	mov r8, r7
	addne sp, sp, #0x18
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022E4E58 @ =0x02326F34
	mov r6, r7
	ldr r0, [r4, #0xc]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ble _022E4DC0
	mov sb, r7
	mov fp, #1
	add r5, sp, #0
_022E4C50:
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1A4
	cmp r0, #1
	bne _022E4CE8
	bl ov00_022E2C58
	ldr r1, [r4, #0xc]
	mov r2, r5
	ldr r1, [r1, #0x18]
	add r1, r1, sb
	bl ov00_022DBAE0
	mov r0, r5
	add r1, sl, #0x8e
	bl FUN_0208982C
	cmp r0, #0
	bne _022E4DA8
	ldr r0, [r4, #0xc]
	ldr r1, [sl, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DBAAC
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB29C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4CE0
	ldr r0, [r4, #0xc]
	mov r1, fp
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB2F8
_022E4CE0:
	mov r7, #1
	b _022E4DA8
_022E4CE8:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1A4
	cmp r0, #3
	beq _022E4D18
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1A4
	cmp r0, #2
	bne _022E4DA8
_022E4D18:
	bl ov00_022E2C58
	ldr r1, [r4, #0xc]
	ldr r1, [r1, #0x18]
	add r1, r1, sb
	bl ov00_022DB98C
	ldr r1, [sl, #4]
	cmp r1, r0
	bne _022E4DA8
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1E4
	cmp r0, #1
	moveq r8, #1
	beq _022E4DA8
	ldr r0, [r4, #0xc]
	ldr r1, [sl, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DBAAC
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB29C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4DA4
	ldr r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, sb
	bl ov00_022DB2F8
_022E4DA4:
	mov r7, #1
_022E4DA8:
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	add sb, sb, #0xc
	ldr r1, [r0, #0x14]
	cmp r6, r1
	blt _022E4C50
_022E4DC0:
	cmp r7, #0
	addeq sp, sp, #0x18
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x18]
	ldr r2, [sl, #4]
	bl ov00_022E4484
	mov r4, r0
	cmp r8, #0
	bne _022E4E40
	mov r0, #0xc
	ldr r1, _022E4E58 @ =0x02326F34
	mul r5, r4, r0
	ldr r0, [r1, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x18]
	add r0, r0, r5
	bl ov00_022DB2C8
	ldr r0, _022E4E58 @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r5
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4E38
	ldr r0, _022E4E58 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r5
	bl ov00_022DB2F8
_022E4E38:
	mov r0, r4
	bl ov00_022E3F08
_022E4E40:
	ldr r0, _022E4E58 @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	strb r1, [r0, #0x1d]
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E4E58: .4byte 0x02326F34
	arm_func_end ov00_022E4C08

	arm_func_start ov00_022E4E5C
ov00_022E4E5C: @ 0x022E4E5C
	ldr r0, _022E4E6C @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
_022E4E6C: .4byte 0x02326F34
	arm_func_end ov00_022E4E5C

	arm_func_start ov00_022E4E70
ov00_022E4E70: @ 0x022E4E70
	ldr r0, _022E4E80 @ =0x02326F34
	mov r1, #1
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_022E4E80: .4byte 0x02326F34
	arm_func_end ov00_022E4E70

	arm_func_start ov00_022E4E84
ov00_022E4E84: @ 0x022E4E84
	ldr r0, _022E4E94 @ =0x02326F34
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_022E4E94: .4byte 0x02326F34
	arm_func_end ov00_022E4E84

	arm_func_start ov00_022E4E98
ov00_022E4E98: @ 0x022E4E98
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _022E507C @ =0x02326F34
	mov r8, r1
	ldr r0, [r0, #0xc]
	ldr r1, [r0, #0x5c]
	cmp r1, #0
	beq _022E4ED0
	mov r0, #4
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022E507C @ =0x02326F34
	mov r1, #0
	ldr r0, [r0, #0xc]
	str r1, [r0, #0x5c]
_022E4ED0:
	ldr r0, [r8]
	cmp r0, #0
	beq _022E4EE4
	bl ov00_022E4330
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022E4EE4:
	ldr r0, _022E507C @ =0x02326F34
	mov r4, #0
	ldr r1, [r0, #0xc]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ble _022E5074
	mov r6, r4
_022E4F00:
	ldr r0, [r1, #0x18]
	add r0, r0, r6
	bl ov00_022DB1A4
	cmp r0, #3
	bne _022E5058
	ldr r0, [r8, #4]
	mov r5, #0
	cmp r0, #0
	ble _022E4FD8
	ldr sb, _022E507C @ =0x02326F34
	mov r7, r5
_022E4F2C:
	bl ov00_022E2C58
	ldr r1, [sb, #0xc]
	ldr r1, [r1, #0x18]
	add r1, r1, r6
	bl ov00_022DB98C
	ldr r1, [r8, #8]
	ldr r1, [r1, r7]
	cmp r1, r0
	bne _022E4FC4
	ldr r0, _022E507C @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB21C
	cmp r0, #0
	bne _022E4FD8
	ldr r0, _022E507C @ =0x02326F34
	mov r1, #1
	ldr r2, [r0, #0xc]
	strb r1, [r2, #0x1d]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB2C8
	ldr r0, _022E507C @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E4FD8
	ldr r0, _022E507C @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB2F8
	b _022E4FD8
_022E4FC4:
	ldr r0, [r8, #4]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, #0x1c
	blt _022E4F2C
_022E4FD8:
	ldr r0, [r8, #4]
	cmp r5, r0
	bne _022E5024
	ldr r0, _022E507C @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB21C
	cmp r0, #1
	bne _022E5024
	ldr r0, _022E507C @ =0x02326F34
	mov r3, #1
	ldr r2, [r0, #0xc]
	mov r1, #0
	strb r3, [r2, #0x1d]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB2C8
_022E5024:
	ldr r0, _022E507C @ =0x02326F34
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB1B4
	cmp r0, #0
	beq _022E5058
	ldr r0, _022E507C @ =0x02326F34
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl ov00_022DB2F8
_022E5058:
	ldr r0, _022E507C @ =0x02326F34
	add r4, r4, #1
	ldr r1, [r0, #0xc]
	add r6, r6, #0xc
	ldr r0, [r1, #0x14]
	cmp r4, r0
	blt _022E4F00
_022E5074:
	bl ov00_022E4330
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E507C: .4byte 0x02326F34
	arm_func_end ov00_022E4E98

	arm_func_start ov00_022E5080
ov00_022E5080: @ 0x022E5080
	push {r3, lr}
	ldr r0, _022E50A4 @ =0x02326F48
	ldr r1, [r0, #0x10]
	cmp r1, #0
	movne r1, #1
	strne r1, [r0, #0xc]
	popne {r3, pc}
	bl ov00_023115E0
	pop {r3, pc}
	.align 2, 0
_022E50A4: .4byte 0x02326F48
	arm_func_end ov00_022E5080

	arm_func_start ov00_022E50A8
ov00_022E50A8: @ 0x022E50A8
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov00_022EC1B0
	bl ov00_022EC1C0
	str r6, [r0]
	bl ov00_022EC1C0
	str r5, [r0, #4]
	bl ov00_022EC1C0
	str r4, [r0, #8]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x10]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c]
	bl ov00_022EC1C0
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe4]
	mov r0, r1
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xf]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x19]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1af]
	bl ov00_022EC1C0
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb6]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1dc]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x200]
	bl ov00_022EC1C0
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x2f4]
	bl ov00_022EC1C0
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x2f8]
	bl ov00_022EC1C0
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x2fc]
	bl ov00_022EC1C0
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x300]
	bl ov00_022EC1C0
	add r0, r0, #0x304
	mov r1, #0
	mov r2, #0x40
	bl FUN_0207C40C
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x344]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x464]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x468]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x474]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x478]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x47c]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x480]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x174]
	str r1, [r0, #0x178]
	bl ov00_022EAF5C
	ldr r1, _022E5220 @ =0x02326F48
	mov r0, #0
	strb r0, [r1, #0x1c]
	strb r0, [r1, #0x1d]
	strh r0, [r1, #0x1e]
	bl ov00_022E6E68
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E5220: .4byte 0x02326F48
	arm_func_end ov00_022E50A8

	arm_func_start ov00_022E5224
ov00_022E5224: @ 0x022E5224
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r4, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022EC1C0
	str r4, [r0, #0x200]
	ldr r4, _022E539C @ =ov00_022EB970
	ldr fp, _022E53A0 @ =0x022EBAB8
	mov sl, #0
	mov r5, #1
_022E5260:
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E448
	mov r8, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E428
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldr r3, [r0, #0x2f8]
	mov r1, r8
	stm sp, {r3, r5}
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, _022E53A4 @ =0x022EBABC
	str fp, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, _022E53A8 @ =ov00_022EBAC0
	mov r2, r7
	str r3, [sp, #0x18]
	ldr r3, _022E53AC @ =0x022EBB64
	add r0, sb, #0x10
	str r3, [sp, #0x1c]
	ldr r3, _022E53B0 @ =0x022EBB6C
	str r3, [sp, #0x20]
	mov r3, #0
	str r3, [sp, #0x24]
	ldr r3, [r6, #0x2f4]
	bl ov00_023127EC
	movs r6, r0
	beq _022E533C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312C50
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x10]
	cmp r6, #3
	bne _022E531C
	cmp sl, #4
	bne _022E5330
_022E531C:
	mov r0, r6
	bl ov00_022EB728
	add sp, sp, #0x28
	mov r0, r6
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E5330:
	add sl, sl, #1
	cmp sl, #5
	blt _022E5260
_022E533C:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c]
	bl ov00_022EC1C0
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	ldr r1, _022E53B4 @ =0x022EBB78
	bl ov00_023129E0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	ldr r1, _022E53B8 @ =ov00_022EBB98
	bl ov00_023129B0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	ldr r1, _022E53BC @ =ov00_022EBC4C
	bl ov00_023129C8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	mov r0, r6
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E539C: .4byte ov00_022EB970
_022E53A0: .4byte 0x022EBAB8
_022E53A4: .4byte 0x022EBABC
_022E53A8: .4byte ov00_022EBAC0
_022E53AC: .4byte 0x022EBB64
_022E53B0: .4byte 0x022EBB6C
_022E53B4: .4byte 0x022EBB78
_022E53B8: .4byte ov00_022EBB98
_022E53BC: .4byte ov00_022EBC4C
	arm_func_end ov00_022E5224

	arm_func_start ov00_022E53C0
ov00_022E53C0: @ 0x022E53C0
	push {r4, lr}
	movs r4, r0
	popeq {r4, pc}
	bl ov00_023129F8
	ldr r0, [r4, #0xb4]
	cmp r0, #0
	popne {r4, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	cmpne r0, #1
	beq _022E53FC
	cmp r0, #2
	beq _022E5450
	pop {r4, pc}
_022E53FC:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	pop {r4, pc}
_022E5410: @ jump table
	pop {r4, pc} @ case 0
	b _022E5440 @ case 1
	b _022E5440 @ case 2
	b _022E5440 @ case 3
	b _022E5440 @ case 4
	pop {r4, pc} @ case 5
	b _022E5440 @ case 6
	pop {r4, pc} @ case 7
	pop {r4, pc} @ case 8
	pop {r4, pc} @ case 9
	pop {r4, pc} @ case 10
	b _022E5440 @ case 11
_022E5440:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	pop {r4, pc}
_022E5450:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	popne {r4, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	pop {r4, pc}
	arm_func_end ov00_022E53C0

	arm_func_start ov00_022E5470
ov00_022E5470: @ 0x022E5470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	bl ov00_022EC1C0
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022E0378
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _022E54EC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022E54C0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_023129F8
_022E54C0:
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E0B0
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E54EC:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _022E5C18
_022E5514: @ jump table
	b _022E5C18 @ case 0
	b _022E5B20 @ case 1
	b _022E56C8 @ case 2
	b _022E56C8 @ case 3
	b _022E554C @ case 4
	b _022E56C8 @ case 5
	b _022E5C18 @ case 6
	b _022E5788 @ case 7
	b _022E5C18 @ case 8
	b _022E5C18 @ case 9
	b _022E5C18 @ case 10
	b _022E590C @ case 11
	b _022E5C18 @ case 12
	b _022E5A00 @ case 13
_022E554C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c8]
	cmp r0, #0
	beq _022E5638
	bl FUN_0207AE44
	mov r6, r0
	mov r7, r1
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	ldr r1, [r5, #0x1cc]
	ldr r0, [r5, #0x1d0]
	subs r2, r6, r1
	sbc r0, r7, r0
	lsl r1, r0, #6
	orr r1, r1, r2, lsr #26
	lsl r0, r2, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	ldr r1, [r4, #0x1c8]
	cmpeq r0, r1
	bls _022E5638
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E5624
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1aa]
	add r1, r1, #1
	strb r1, [r0, #0x1aa]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1aa]
	cmp r0, #5
	bls _022E5600
	ldr r1, _022E5EE4 @ =0xFFFEC5D2
	mov r0, #6
	bl ov00_022E6570
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5600:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl ov00_022E9134
	bl ov00_022E9108
	cmp r0, #0
	beq _022E5638
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5624:
	mov r0, #0
	bl ov00_022E95B8
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
_022E5638:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1bc]
	cmp r0, #0
	beq _022E5C18
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	ldr r0, _022E5EE8 @ =0x00000BB8
	mul r0, r1, r0
	add r0, r0, #0x3b8
	add r5, r0, #0x800
	bl FUN_0207AE44
	mov r4, r0
	mov r6, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x1c0]
	ldr r0, [r0, #0x1c4]
	subs r2, r4, r1
	sbc r0, r6, r0
	lsl r1, r0, #6
	orr r1, r1, r2, lsr #26
	lsl r0, r2, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, r5
	blo _022E5C18
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl ov00_022E9134
	bl ov00_022E9108
	cmp r0, #0
	beq _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E56C8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	ble _022E5C18
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	bne _022E5704
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	ldr r0, _022E5EE8 @ =0x00000BB8
	mul r0, r1, r0
	add r0, r0, #0x3b8
	add r5, r0, #0x800
	b _022E5718
_022E5704:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe8]
	cmp r0, #1
	moveq r5, #0x3e8
	ldrne r5, _022E5EE8 @ =0x00000BB8
_022E5718:
	bl FUN_0207AE44
	mov r4, r0
	mov r6, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0xec]
	ldr r0, [r0, #0xf0]
	subs r3, r4, r1
	sbc r0, r6, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	cmp r1, #0
	cmpeq r0, r5
	bls _022E5C18
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	bl ov00_022E72A0
	bl ov00_022EB694
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe8]
	b _022E5C18
_022E5788:
	bl ov00_022EC1C0
	ldr r1, [r0, #0x190]
	ldr r0, [r0, #0x18c]
	cmp r1, #0
	cmpeq r0, #0
	beq _022E5814
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x18c]
	ldr r0, [r0, #0x190]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EEC @ =0x000061A8
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5C18
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	bl ov00_022E9900
	cmp r0, #0
	bne _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5814:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x3cc]
	cmp r0, #6
	bne _022E5C18
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EF0 @ =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5C18
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x3cd]
	cmp r0, #5
	bls _022E58AC
	bl ov00_022E6550
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	bl ov00_022E9900
	cmp r0, #0
	bne _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E58AC:
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #6
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E590C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x3cc]
	cmp r0, #2
	bne _022E5C18
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E5974
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EF0 @ =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bhi _022E59CC
_022E5974:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E5C18
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EF4 @ =0x00004A38
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5C18
_022E59CC:
	bl ov00_022E6550
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov00_022E96E4
	cmp r0, #0
	bne _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5A00:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x3cc]
	cmp r0, #8
	bne _022E5C18
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EF8 @ =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5C18
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x3cd]
	cmp r0, #0
	beq _022E5AC0
	bl ov00_022E6550
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022E5AB8
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov00_022E96E4
	cmp r0, #0
	bne _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5AB8:
	bl ov00_022EA488
	b _022E5C18
_022E5AC0:
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #8
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5B20:
	bl ov00_022E1FC0
	cmp r0, #5
	bne _022E5C18
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x1f8]
	ldr r0, [r0, #0x1fc]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EF8 @ =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5C18
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _022E5BA0
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	bl ov00_022E9900
	cmp r0, #0
	bne _022E5C18
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022E5BA0:
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4, #0x24]
	mov r0, #0x40
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	ldr r2, _022E5EFC @ =0xFF403B3A
	mvn r3, #0
	adds r0, r0, r2
	str r0, [r4, #0x1f8]
	adc r0, r1, r3
	str r0, [r4, #0x1fc]
_022E5C18:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _022E5C38
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	bne _022E5CB0
_022E5C38:
	bl ov00_022EC1C0
	ldr r1, [r0, #0x188]
	ldr r0, [r0, #0x184]
	cmp r1, #0
	cmpeq r0, #0
	beq _022E5CB0
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x184]
	ldr r0, [r0, #0x188]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5F00 @ =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5CB0
	bl ov00_022EC1C0
	mov r1, #0
	add r3, r0, #0x194
	mov r2, r1
	mov r0, #1
	bl ov00_022EBD5C
_022E5CB0:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _022E5D70
	ldr r0, _022E5F04 @ =0x02326F48
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x14]
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315D00
	ldr r0, _022E5F04 @ =0x02326F48
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022E5D04
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315AD8
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe4]
_022E5D04:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _022E5D70
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315D4C
	cmp r0, #0
	beq _022E5D70
	bl ov00_022EC1C0
	ldr r1, [r0, #0x178]
	ldr r0, [r0, #0x174]
	cmp r1, #0
	cmpeq r0, #0
	beq _022E5D70
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x178]
	ldr r0, [r0, #0x174]
	cmp r5, r1
	cmpeq r4, r0
	bls _022E5D70
	ldr r1, _022E5F08 @ =0xFFFEB3EE
	mov r0, #6
	bl ov00_022E6570
_022E5D70:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_022E53C0
	ldr r0, _022E5F04 @ =0x02326F48
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0x10]
	bl ov00_023122B8
	ldr r0, _022E5F04 @ =0x02326F48
	mov r2, #0
	str r2, [r0, #0x10]
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _022E5DB4
	str r2, [r0, #0xc]
	bl ov00_023115E0
_022E5DB4:
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022E5DD4
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E0B0
_022E5DD4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _022E5E3C
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x1f0]
	ldr r0, [r0, #0x1f4]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022E5EE0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _022E5EE8 @ =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	bls _022E5E3C
	bl ov00_022EA4BC
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
_022E5E3C:
	bl ov00_022EA848
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EAD5C
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EB1F4
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1ae]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl ov00_022E6D08
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x47c]
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x480]
	ldr r1, [r4, #0x47c]
	blx r1
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E5EE0: .4byte 0x000082EA
_022E5EE4: .4byte 0xFFFEC5D2
_022E5EE8: .4byte 0x00000BB8
_022E5EEC: .4byte 0x000061A8
_022E5EF0: .4byte 0x00001770
_022E5EF4: .4byte 0x00004A38
_022E5EF8: .4byte 0x00007530
_022E5EFC: .4byte 0xFF403B3A
_022E5F00: .4byte 0x00002710
_022E5F04: .4byte 0x02326F48
_022E5F08: .4byte 0xFFFEB3EE
	arm_func_end ov00_022E5470

	arm_func_start ov00_022E5F0C
ov00_022E5F0C: @ 0x022E5F0C
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, [sp, #0x18]
	mov r4, r3
	cmp r0, #0
	cmpne r4, #0
	mov r5, r1
	mov r6, r2
	addeq sp, sp, #8
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	add r1, sp, #0
	mov r0, #0
	mov r2, #8
	bl FUN_0207C314
	asr r1, r6, #8
	lsl r0, r6, #8
	mov r2, #2
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strb r2, [sp, #1]
	strh r0, [sp, #2]
	str r5, [sp, #4]
	ldrb r5, [r4]
	cmp r5, #0xfe
	ldrbeq r0, [r4, #1]
	cmpeq r0, #0xfd
	beq _022E5F88
	cmp r5, #0x5c
	bne _022E5FB4
_022E5F88:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022E5FF0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x18]
	add r3, sp, #0
	mov r1, r4
	bl ov00_02313D58
	b _022E5FF0
_022E5FB4:
	ldr r1, _022E5FFC @ =0x0231BF24
	mov r0, r4
	mov r2, #6
	bl FUN_02087348
	cmp r0, #0
	bne _022E5FE0
	ldr r1, [sp, #0x18]
	add r2, sp, #0
	mov r0, r4
	bl ov00_0231268C
	b _022E5FF0
_022E5FE0:
	add sp, sp, #8
	cmp r5, #0xfe
	mov r0, #0
	pop {r4, r5, r6, pc}
_022E5FF0:
	mov r0, #1
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E5FFC: .4byte 0x0231BF24
	arm_func_end ov00_022E5F0C

	arm_func_start ov00_022E6000
ov00_022E6000: @ 0x022E6000
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov00_022EC1C0
	cmp r0, #0
	beq _022E603C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	bne _022E603C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	beq _022E6050
_022E603C:
	ldr r1, _022E6230 @ =0x0231A1D0
	mov r0, r8
	mvn r2, #0
	bl ov00_0230DCBC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022E6050:
	bl ov00_022E2128
	mov r5, r0
	mvn r2, #0
	cmp r5, r2
	bne _022E6080
	ldr r1, _022E6234 @ =0x0231A1DC
	mov r0, r8
	bl ov00_0230DCBC
	ldr r1, _022E6238 @ =0xFFFEABC4
	mov r0, #6
	bl ov00_022E6570
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022E6080:
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x210]
	cmp r7, r0
	bne _022E60C4
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0x90]
	cmp r6, r0
	beq _022E6150
_022E60C4:
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	cmp r1, #0
	beq _022E613C
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	mov r4, r0
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	bne _022E613C
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	str r7, [r0, #0x210]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	strh r6, [r0, #0x90]
	b _022E6150
_022E613C:
	ldr r1, _022E623C @ =0x0231A1E8
	mov r0, r8
	mvn r2, #0
	bl ov00_0230DCBC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022E6150:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov00_022EC1C0
	ldr r1, [r0, #8]
	mov r0, r8
	bl ov00_0230DC60
	cmp r0, #0
	bne _022E6188
	ldr r1, _022E6240 @ =0xFFFEC5E6
	mov r0, #6
	bl ov00_022E6570
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022E6188:
	bl ov00_022E6550
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _022E61BC
	ldr r1, [sp, #0x20]
	ldr r0, _022E6244 @ =0x0000FFFF
	asr r4, r1, #1
	cmp r0, r1, asr #1
	movle r4, r0
	bl ov00_022EC1C0
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_022E61BC:
	mov r0, r5
	bl ov00_022E2184
	mov r4, r0
	mov r0, r5
	bl ov00_022E21FC
	str r8, [r4]
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	add r1, r1, #1
	strb r1, [r0, #0xd]
	strb r5, [r4]
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	mov r0, r8
	mov r2, #0
	sub r1, r1, #1
	add r1, r5, r1
	ldrb r3, [r1, #0x2d0]
	mov r1, r4
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	str r2, [r4, #4]
	bl ov00_0230E458
	mov r0, #2
	bl ov00_022E9AA4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E6230: .4byte 0x0231A1D0
_022E6234: .4byte 0x0231A1DC
_022E6238: .4byte 0xFFFEABC4
_022E623C: .4byte 0x0231A1E8
_022E6240: .4byte 0xFFFEC5E6
_022E6244: .4byte 0x0000FFFF
	arm_func_end ov00_022E6000

	arm_func_start ov00_022E6248
ov00_022E6248: @ 0x022E6248
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r4, r1
	bl ov00_022EC1C0
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	beq _022E628C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	addne sp, sp, #0x1c
	popne {r4, r5, r6, r7, pc}
_022E628C:
	cmp r4, #0
	beq _022E6408
	cmp r4, #5
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, pc}
	cmp r4, #6
	bne _022E63DC
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xc]
	add r1, r1, #1
	strb r1, [r0, #0xc]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bls _022E62F8
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xc]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov00_022E96E4
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022E62F8:
	bl ov00_022EC1C0
	ldr r3, [r0, #0x200]
	ldr r2, _022E64C0 @ =0x0231A1C0
	add r0, sp, #0x10
	mov r1, #0xc
	bl FUN_0207911C
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r2, [r6, #0x14]
	ldrb r1, [r0, #0x14]
	add r0, r7, r2, lsl #2
	add r1, r5, r1, lsl #1
	add r1, r1, #0x200
	ldrh r1, [r1, #0x90]
	ldr r0, [r0, #0x210]
	mov r2, #0
	bl ov00_02310BF4
	mov r5, r0
	bl ov00_022EC1C0
	mvn r1, #0
	str r1, [sp]
	ldr r3, _022E64C4 @ =0x00001388
	mov r1, #0
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r5
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0]
	bl ov00_0230E104
	cmp r0, #1
	bne _022E63A8
	bl ov00_022EB8CC
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022E63A8:
	cmp r0, #0
	addeq sp, sp, #0x1c
	popeq {r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov00_022E96E4
	add sp, sp, #0x1c
	cmp r0, #0
	pop {r4, r5, r6, r7, pc}
_022E63DC:
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl ov00_022E96E4
	add sp, sp, #0x1c
	cmp r0, #0
	pop {r4, r5, r6, r7, pc}
_022E6408:
	bl ov00_022E2128
	mov r5, r0
	mvn r1, #0
	cmp r5, r1
	bne _022E6430
	ldr r1, _022E64C8 @ =0xFFFEABC4
	mov r0, #6
	bl ov00_022E6570
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022E6430:
	bl ov00_022E2184
	mov r4, r0
	mov r0, r5
	bl ov00_022E21FC
	str r6, [r4]
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r2, [r0, #0xd]
	mov r1, #0
	add r2, r2, #1
	strb r2, [r0, #0xd]
	strb r5, [r4]
	strh r1, [r4, #2]
	str r1, [r4, #4]
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r2, [r0, #0xd]
	mov r0, r6
	mov r1, r4
	add r2, r5, r2
	ldrb r2, [r2, #0x2d0]
	strb r2, [r4, #1]
	bl ov00_0230E458
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _022E64B0
	mov r0, #0
	bl ov00_022E9AA4
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022E64B0:
	mov r0, #1
	bl ov00_022E9AA4
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022E64C0: .4byte 0x0231A1C0
_022E64C4: .4byte 0x00001388
_022E64C8: .4byte 0xFFFEABC4
	arm_func_end ov00_022E6248

	arm_func_start ov00_022E64CC
ov00_022E64CC: @ 0x022E64CC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x218
	mov sb, #0
	mov fp, r1
	mov sl, r2
	add r8, sp, #8
	mov r7, sb
	mov r6, #0xa
	add r5, sp, #0x18
	mvn r4, #0
_022E64F4:
	mov r0, r8
	mov r2, sb
	add r1, sl, #1
	bl ov00_022E7C4C
	cmp r0, r4
	beq _022E652C
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_0208B200
	str r0, [r5, sb, lsl #2]
	add sb, sb, #1
	cmp sb, #0x80
	blt _022E64F4
_022E652C:
	add r0, sp, #0x18
	stm sp, {r0, sb}
	mov r2, #0
	ldrb r0, [sl]
	mov r1, fp
	mov r3, r2
	bl ov00_022E7CE8
	add sp, sp, #0x218
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022E64CC

	arm_func_start ov00_022E6550
ov00_022E6550: @ 0x022E6550
	push {r3, lr}
	bl ov00_022EC1C0
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x3cd]
	pop {r3, pc}
	arm_func_end ov00_022E6550

	arm_func_start ov00_022E6570
ov00_022E6570: @ 0x022E6570
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	cmp r0, #0
	cmpne r4, #0
	addeq sp, sp, #8
	popeq {r4, r5, r6, r7, r8, pc}
	bl ov00_022EA5EC
	mov r0, r4
	mov r1, r5
	bl ov00_022E0394
	ldr r1, _022E6628 @ =0x0231A1BC
	mov r0, #1
	mov r2, #0
	bl ov00_022E3E54
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r7, #1
	movne r7, #0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	bl ov00_022E3DB8
	mov r5, r0
	bl ov00_022EC1C0
	str r5, [sp]
	ldr r1, [r0, #0x468]
	mov r0, r4
	str r1, [sp, #4]
	ldr r4, [r6, #0x464]
	mov r2, r8
	mov r3, r7
	mov r1, #0
	blx r4
	bl ov00_022E7204
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E6628: .4byte 0x0231A1BC
	arm_func_end ov00_022E6570

	arm_func_start ov00_022E662C
ov00_022E662C: @ 0x022E662C
	push {r3, lr}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	popeq {r3, pc}
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x14]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x16]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	pop {r3, pc}
	arm_func_end ov00_022E662C

	arm_func_start ov00_022E6668
ov00_022E6668: @ 0x022E6668
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #2
	beq _022E6690
	cmp r1, #3
	beq _022E673C
	cmp r1, #4
	beq _022E6804
	pop {r4, r5, r6, pc}
_022E6690:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E672C
	ldrb r0, [r4]
	cmp r0, #1
	bne _022E66B8
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20c]
_022E66B8:
	ldrb r6, [r4, #1]
	bl ov00_022EC1C0
	ldrb r1, [r4, #2]
	add r0, r0, r6
	strb r1, [r0, #0x2d0]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r0, #0x200]
	add r0, r4, r6, lsl #2
	str r1, [r0, #0xf4]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E6704
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E6718
_022E6704:
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
_022E6718:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ad]
	mov r0, #9
	bl ov00_022EC1D0
_022E672C:
	mov r0, r5
	mov r1, #3
	bl ov00_022EA758
	pop {r4, r5, r6, pc}
_022E673C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	bne _022E67F4
	bl ov00_022EC1C0
	ldr r2, [r0, #0x1d4]
	mov r1, #1
	orr r1, r2, r1, lsl r5
	str r1, [r0, #0x1d4]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	orr r4, r1, r0, lsl #8
	bl ov00_022EC1C0
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r4, r0
	ble _022E678C
	bl ov00_022EC1C0
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_022E678C:
	mov r0, #0
	bl ov00_022EB0F8
	mov r4, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1d4]
	cmp r4, r0
	popne {r4, r5, r6, pc}
	mov r5, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E67E8
	mov r4, #4
_022E67C0:
	bl ov00_022EC1C0
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	mov r1, r4
	bl ov00_022EA758
	add r5, r5, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _022E67C0
_022E67E8:
	mov r0, #0x11
	bl ov00_022EC1D0
	pop {r4, r5, r6, pc}
_022E67F4:
	mov r0, r5
	mov r1, #4
	bl ov00_022EA758
	pop {r4, r5, r6, pc}
_022E6804:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	popne {r4, r5, r6, pc}
	mov r0, #4
	bl ov00_022E9AA4
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E6668

	arm_func_start ov00_022E6820
ov00_022E6820: @ 0x022E6820
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov00_022E1FC0
	cmp r0, #5
	movne r0, #0
	popne {r3, r4, r5, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r5, #0
	beq _022E6870
	ldr r1, _022E6994 @ =0xFFFEC780
	mov r0, r5
	add r1, r4, r1
	bl ov00_022E6570
	mov r0, #1
	pop {r3, r4, r5, pc}
_022E6870:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x2d0]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a9]
	cmp r0, #1
	beq _022E68AC
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a8]
	cmp r0, #1
	beq _022E68AC
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	bne _022E68B4
_022E68AC:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022E68B4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _022E68DC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	bl ov00_02311FB0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x19c]
_022E68DC:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E691C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a8]
	cmp r0, #0
	bne _022E698C
	bl ov00_022EC1C0
	mov r1, #3
	strb r1, [r0, #0x1a8]
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E3A4
	b _022E698C
_022E691C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E693C
	ldr r1, _022E6998 @ =0xFFFEC5D2
	mov r0, #6
	bl ov00_022E6570
	b _022E698C
_022E693C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _022E6954
	bl ov00_022EA4BC
	b _022E698C
_022E6954:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E6984
	mov r0, #0x12
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1f0]
	str r1, [r4, #0x1f4]
	b _022E698C
_022E6984:
	mov r0, #1
	bl ov00_022EA388
_022E698C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E6994: .4byte 0xFFFEC780
_022E6998: .4byte 0xFFFEC5D2
	arm_func_end ov00_022E6820

	arm_func_start ov00_022E699C
ov00_022E699C: @ 0x022E699C
	push {r4, lr}
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	popeq {r4, pc}
	mov r0, r4
	bl ov00_022E96E4
	pop {r4, pc}
	arm_func_end ov00_022E699C

	arm_func_start ov00_022E69C0
ov00_022E69C0: @ 0x022E69C0
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov00_022EC1C0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	cmp r5, #0
	mov r4, #0
	ble _022E6A1C
_022E69E8:
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r6, r0
	bne _022E6A10
	mov r0, r4
	mov r1, r5
	bl ov00_022E6A24
	mov r0, #1
	pop {r4, r5, r6, pc}
_022E6A10:
	add r4, r4, #1
	cmp r4, r5
	blt _022E69E8
_022E6A1C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E69C0

	arm_func_start ov00_022E6A24
ov00_022E6A24: @ 0x022E6A24
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r0
	mov r8, r1
	bl ov00_022EC1C0
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov00_022EC1C0
	add r0, r0, sb, lsl #2
	ldr fp, [r0, #0xf4]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	add r0, r0, sb
	ldrb r0, [r0, #0x2d0]
	mov r1, #1
	ldr r2, [r4, #0x2f0]
	mvn r0, r1, lsl r0
	and r0, r2, r0
	str r0, [r4, #0x2f0]
	bl ov00_022E6BDC
	sub r0, r8, #1
	cmp sb, r0
	bge _022E6B64
	sub r0, r8, sb
	sub r5, r0, #1
	cmp r5, #0
	mov r4, #0
	ble _022E6B64
_022E6A98:
	add r7, sb, r4
	add r6, r7, #1
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x24]
	add r0, sl, r7, lsl #2
	str r1, [r0, #0x24]
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	add r0, r0, r6, lsl #1
	ldrh r1, [r0, #0xa4]
	add r0, sl, r7, lsl #1
	strh r1, [r0, #0xa4]
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	add r1, sl, r7, lsl #2
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r1, #0xf4]
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	add r1, sl, r7, lsl #2
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x210]
	str r0, [r1, #0x210]
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	add r1, sl, r7, lsl #1
	add r0, r0, r6, lsl #1
	add r0, r0, #0x200
	ldrh r2, [r0, #0x90]
	add r0, r1, #0x200
	strh r2, [r0, #0x90]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	add r0, sb, r0
	add r0, r4, r0
	ldrb r1, [r0, #0x2d1]
	add r0, sb, r6
	add r0, r4, r0
	strb r1, [r0, #0x2d0]
	add r4, r4, #1
	cmp r4, r5
	blt _022E6A98
_022E6B64:
	cmp r8, #0
	ble _022E6BD4
	sub r4, r8, #1
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x24]
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #1
	mov r1, #0
	strh r1, [r0, #0xa4]
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xf4]
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x210]
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #1
	add r0, r0, #0x200
	mov r1, #0
	strh r1, [r0, #0x90]
	bl ov00_022EC1C0
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0, #0x2d0]
_022E6BD4:
	mov r0, fp
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov00_022E6A24

	arm_func_start ov00_022E6BDC
ov00_022E6BDC: @ 0x022E6BDC
	push {r4, r5, r6, lr}
	mvn r5, #0
	mov r6, #0
	mov r4, #1
_022E6BEC:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x2f0]
	tst r0, r4, lsl r6
	add r6, r6, #1
	addne r5, r5, #1
	cmp r6, #0x20
	blt _022E6BEC
	mvn r0, #0
	cmp r5, r0
	bne _022E6C24
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xe]
	pop {r4, r5, r6, pc}
_022E6C24:
	bl ov00_022EC1C0
	strb r5, [r0, #0xe]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E6BDC

	arm_func_start ov00_022E6C30
ov00_022E6C30: @ 0x022E6C30
	push {r4, lr}
	mov r4, r0
	bl ov00_022EC1C0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	bl ov00_022EC1C0
	add r0, r0, #0x2d0
	str r0, [r4]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	pop {r4, pc}
	arm_func_end ov00_022E6C30

	arm_func_start ov00_022E6C64
ov00_022E6C64: @ 0x022E6C64
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl ov00_022EC1C0
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, _022E6D04 @ =0x02326F68
	mov r1, #0
	mov r2, #0x20
	bl FUN_0207C40C
	mov r5, #0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	blt _022E6CEC
	ldr r6, _022E6D04 @ =0x02326F68
	mov r4, #1
_022E6CA8:
	bl ov00_022EC1C0
	mov r8, r0
	bl ov00_022EC1C0
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r8, #0x2f0]
	tst r1, r4, lsl r0
	beq _022E6CEC
	bl ov00_022EC1C0
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	add r5, r5, #1
	strb r0, [r6], #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xe]
	cmp r5, r0
	ble _022E6CA8
_022E6CEC:
	ldr r0, _022E6D04 @ =0x02326F68
	str r0, [r7]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xe]
	add r0, r0, #1
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E6D04: .4byte 0x02326F68
	arm_func_end ov00_022E6C64

	arm_func_start ov00_022E6D08
ov00_022E6D08: @ 0x022E6D08
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addne sp, sp, #0x2c
	movne r0, #0
	ldmne sp!, {pc}
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x16]
	ldr r2, _022E6DC8 @ =0x0231A1C0
	add r0, sp, #0x20
	add r3, r1, #1
	mov r1, #0xc
	bl FUN_0207911C
	ldr r0, _022E6DCC @ =0x0231A200
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov00_022E13D0
	bl ov00_022EC1C0
	ldrb r2, [r0, #0xd]
	add r0, sp, #0x20
	mov r1, #0xc
	add r3, r2, #1
	ldr r2, _022E6DC8 @ =0x0231A1C0
	bl FUN_0207911C
	ldr r0, _022E6DD0 @ =0x0231A204
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov00_022E1408
	ldr r2, _022E6DC8 @ =0x0231A1C0
	add r0, sp, #0x20
	mov r1, #0xc
	mov r3, #3
	bl FUN_0207911C
	ldr r0, _022E6DD4 @ =0x0231A1CC
	add r1, sp, #0x20
	add r2, sp, #0
	mov r3, #0x2f
	bl ov00_022E1408
	mov r0, #6
	add r1, sp, #0
	mov r2, #0
	bl ov00_022E3E54
	add sp, sp, #0x2c
	ldm sp!, {pc}
	.align 2, 0
_022E6DC8: .4byte 0x0231A1C0
_022E6DCC: .4byte 0x0231A200
_022E6DD0: .4byte 0x0231A204
_022E6DD4: .4byte 0x0231A1CC
	arm_func_end ov00_022E6D08

	arm_func_start ov00_022E6DD8
ov00_022E6DD8: @ 0x022E6DD8
	push {r3, lr}
	mov r0, #0
	bl ov00_022EC1B0
	ldr r0, _022E6E4C @ =0x02326F48
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _022E6E0C
	mov r0, #4
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022E6E4C @ =0x02326F48
	mov r1, #0
	str r1, [r0, #8]
_022E6E0C:
	bl ov00_022EAF5C
	ldr r0, _022E6E4C @ =0x02326F48
	ldr r1, [r0]
	cmp r1, #0
	beq _022E6E38
	mov r0, #4
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022E6E4C @ =0x02326F48
	mov r1, #0
	str r1, [r0]
_022E6E38:
	ldr r0, _022E6E4C @ =0x02326F48
	mov r1, #0
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	pop {r3, pc}
	.align 2, 0
_022E6E4C: .4byte 0x02326F48
	arm_func_end ov00_022E6DD8

	arm_func_start ov00_022E6E50
ov00_022E6E50: @ 0x022E6E50
	push {r3, lr}
	bl ov00_022EC1C0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	arm_func_end ov00_022E6E50

	arm_func_start ov00_022E6E68
ov00_022E6E68: @ 0x022E6E68
	push {r3, r4, r5, lr}
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xc]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, #0x10000
	bl ov00_022E1544
	add r1, r5, #0x100
	strh r0, [r1, #0x7e]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x180]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a9]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1aa]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ac]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl ov00_022EC1C0
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb2]
	bl ov00_022EC1C0
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb4]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1b8]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1e0]
	str r1, [r0, #0x1e4]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1f0]
	str r1, [r0, #0x1f4]
	bl ov00_022EC1C0
	add r1, r0, #0x3cc
	mov r0, #0
	mov r2, #0x98
	bl FUN_0207C314
	cmp r4, #2
	bne _022E6FD4
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x14]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E6FB8
	mov r0, #1
	bl ov00_022EC1D0
	pop {r3, r4, r5, pc}
_022E6FB8:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	popne {r3, r4, r5, pc}
	mov r0, #0xa
	bl ov00_022EC1D0
	pop {r3, r4, r5, pc}
_022E6FD4:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xd]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0xe]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x14]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe8]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a5]
	bl ov00_022EC1C0
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb0]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c0]
	str r1, [r0, #0x1c4]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1cc]
	str r1, [r0, #0x1d0]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1d4]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x2f0]
	bl ov00_022E2254
	bl ov00_022EC1C0
	add r1, r0, #0x24
	mov r0, #0
	mov r2, #0x80
	bl FUN_0207C314
	bl ov00_022EC1C0
	add r1, r0, #0xa4
	mov r0, #0
	mov r2, #0x40
	bl FUN_0207C2B8
	bl ov00_022EC1C0
	add r1, r0, #0xf4
	mov r0, #0
	mov r2, #0x80
	bl FUN_0207C314
	bl ov00_022EC1C0
	add r1, r0, #0x194
	mov r0, #0
	mov r2, #0xc
	bl FUN_0207C314
	bl ov00_022EC1C0
	add r1, r0, #0x210
	mov r0, #0
	mov r2, #0x80
	bl FUN_0207C314
	bl ov00_022EC1C0
	add r1, r0, #0x290
	mov r0, #0
	mov r2, #0x40
	bl FUN_0207C2B8
	bl ov00_022EC1C0
	add r0, r0, #0x2d0
	mov r1, #0
	mov r2, #0x20
	bl FUN_0207C40C
	bl ov00_022EC1C0
	add r1, r0, #0x348
	mov r0, #0
	mov r2, #0x84
	bl FUN_0207C314
	cmp r4, #1
	bne _022E7184
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E7168
	mov r0, #3
	bl ov00_022EC1D0
	pop {r3, r4, r5, pc}
_022E7168:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	popne {r3, r4, r5, pc}
	mov r0, #4
	bl ov00_022EC1D0
	pop {r3, r4, r5, pc}
_022E7184:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x15]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x16]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x18]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20c]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a6]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ad]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1f8]
	str r1, [r0, #0x1fc]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x46c]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x470]
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022E6E68

	arm_func_start ov00_022E7204
ov00_022E7204: @ 0x022E7204
	push {r3, lr}
	bl ov00_022EC1C0
	cmp r0, #0
	popeq {r3, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _022E7254
	ldr r0, _022E729C @ =0x02326F48
	ldr r1, [r0, #0x18]
	cmp r1, #0
	movne r1, #1
	strne r1, [r0, #0x14]
	bne _022E7254
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315AD8
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe4]
_022E7254:
	bl ov00_022E5080
	mov r0, #0
	bl ov00_022EC1D0
	ldr r0, _022E729C @ =0x02326F48
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _022E7288
	mov r0, #4
	mov r2, #0
	bl ov00_022E0434
	ldr r0, _022E729C @ =0x02326F48
	mov r1, #0
	str r1, [r0, #8]
_022E7288:
	bl ov00_022EAF5C
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x18]
	pop {r3, pc}
	.align 2, 0
_022E729C: .4byte 0x02326F48
	arm_func_end ov00_022E7204

	arm_func_start ov00_022E72A0
ov00_022E72A0: @ 0x022E72A0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1b0
	mov r7, #8
	mov r6, #0xa
	mov r5, #0x32
	mov r4, #0x33
	mov r3, #0x34
	mov r2, #0x35
	mov r1, #0x36
	strb r7, [sp, #0xc]
	strb r6, [sp, #0xd]
	strb r5, [sp, #0xe]
	strb r4, [sp, #0xf]
	strb r3, [sp, #0x10]
	strb r2, [sp, #0x11]
	strb r1, [sp, #0x12]
	mov r4, r0
	mov r8, #7
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E7308
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E7334
_022E7308:
	ldr r2, _022E7484 @ =0x02326F88
	add r3, sp, #0x13
	mov r1, #0
_022E7314:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #0xc
	cmp r0, #0
	strbne r0, [r3], #1
	addne r8, r8, #1
	cmp r1, #0x9a
	blt _022E7314
_022E7334:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022E73EC
_022E7348: @ jump table
	b _022E73EC @ case 0
	b _022E73EC @ case 1
	b _022E73CC @ case 2
	b _022E7360 @ case 3
	b _022E73CC @ case 4
	b _022E73CC @ case 5
_022E7360:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _022E73C4
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r5, #0x200]
	ldrb r2, [r4, #0x16]
	ldrb r3, [r0, #0x15]
	add r0, sp, #0xad
	bl ov00_022E749C
	mov r1, r0
	ldr r0, _022E7488 @ =0x02326F48
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _022E73EC
	add r0, sp, #0xad
	add r0, r0, r1
	ldr r2, _022E748C @ =0x0231A234
	rsb r1, r1, #0x100
	bl FUN_0207911C
	b _022E73EC
_022E73C4:
	bl ov00_022EC1C0
	ldr r4, [r0, #0x208]
_022E73CC:
	ldr r2, _022E7490 @ =0x0231A240
	ldr r3, _022E7494 @ =0x0231A208
	add r0, sp, #0xad
	mov r1, #0x100
	str r4, [sp]
	bl FUN_0207911C
	bl ov00_022EC1C0
	str r4, [r0, #0x204]
_022E73EC:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315D34
	mov sl, #0
	add r7, sp, #0xad
	mov r6, #6
	mov r5, #1
	mov r4, sl
	add fp, sp, #0xc
_022E7410:
	bl ov00_022EC1C0
	str r8, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r0, #0xe4]
	mov r1, r5
	mov r2, r4
	mov r3, fp
	bl ov00_02315C2C
	movs sb, r0
	beq _022E7450
	cmp sb, #2
	bne _022E7450
	add sl, sl, #1
	cmp sl, #5
	blt _022E7410
_022E7450:
	cmp sb, #0
	bne _022E7478
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	ldr r2, _022E7498 @ =0x00EFB5F7
	adds r0, r0, r2
	str r0, [r4, #0x174]
	adc r0, r1, #0
	str r0, [r4, #0x178]
_022E7478:
	mov r0, sb
	add sp, sp, #0x1b0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E7484: .4byte 0x02326F88
_022E7488: .4byte 0x02326F48
_022E748C: .4byte 0x0231A234
_022E7490: .4byte 0x0231A240
_022E7494: .4byte 0x0231A208
_022E7498: .4byte 0x00EFB5F7
	arm_func_end ov00_022E72A0

	arm_func_start ov00_022E749C
ov00_022E749C: @ 0x022E749C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov lr, #3
	ldr ip, _022E74F0 @ =0x0231A208
	str lr, [sp]
	str ip, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, _022E74F4 @ =0x0231A210
	ldr r1, _022E74F8 @ =0x0231A21C
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r2, _022E74FC @ =0x0231A248
	ldr r3, _022E7500 @ =0x0231A228
	mov r1, #0x100
	str ip, [sp, #0x20]
	bl FUN_0207911C
	add sp, sp, #0x24
	ldm sp!, {pc}
	.align 2, 0
_022E74F0: .4byte 0x0231A208
_022E74F4: .4byte 0x0231A210
_022E74F8: .4byte 0x0231A21C
_022E74FC: .4byte 0x0231A248
_022E7500: .4byte 0x0231A228
	arm_func_end ov00_022E749C

	arm_func_start ov00_022E7504
ov00_022E7504: @ 0x022E7504
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r8, r1
	mov r7, r2
	bl ov00_022EC1C0
	cmp r4, #0
	ldrb r4, [r0, #0x14]
	mov r6, #0
	bne _022E7748
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	add r0, r0, #0x100
	ldrh r2, [r0, #0x7e]
	ldr r1, [r5, #0x200]
	mov r0, r7
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	orr r8, r2, r1, lsr #16
	bl ov00_02315340
	cmp r0, #0
	beq _022E75C0
	mov r0, r7
	bl ov00_0231530C
	mov r5, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315D90
	cmp r5, r0
	movne r5, #1
	bne _022E7648
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, r7
	bl ov00_02315358
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x210]
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, r7
	bl ov00_02315360
	add r1, r5, r4, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, r6
	b _022E7648
_022E75C0:
	bl ov00_022CF528
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsl r0, r2, #0x10
	ldr r1, _022E77EC @ =0x0000A8C0
	lsr r0, r0, #0x10
	cmp r0, r1
	beq _022E7608
	and r1, r2, #0xff
	cmp r1, #0xac
	bne _022E7600
	and r0, r2, #0xff00
	cmp r0, #0x1000
	blo _022E7600
	cmp r0, #0x1f00
	bls _022E7608
_022E7600:
	cmp r1, #0xa
	bne _022E7610
_022E7608:
	mov r5, #1
	b _022E7648
_022E7610:
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, r7
	bl ov00_0231530C
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x210]
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, r7
	bl ov00_02315314
	add r1, r5, r4, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, #0
_022E7648:
	cmp r5, #0
	beq _022E7674
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, #0x10000
	bl ov00_022E1544
	add r1, r4, #0x100
	strh r0, [r1, #0x7e]
	bl ov00_022EC1C0
	str r8, [r0, #0x19c]
	b _022E7700
_022E7674:
	bl ov00_022CF528
	str r0, [sp, #8]
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E428
	str r0, [sp, #0xc]
	bl ov00_022EC1C0
	mov sb, r0
	mov r0, r7
	bl ov00_0231530C
	mov r8, r0
	mov r0, r7
	bl ov00_02315314
	add r1, sb, r4, lsl #2
	add r4, sp, #8
	mov r3, r0
	mov r0, #2
	str r4, [sp]
	str r0, [sp, #4]
	ldr r1, [r1, #0xf4]
	mov r2, r8
	mov r0, #6
	bl ov00_022E78AC
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	cmp r4, #0
	strb r1, [r0, #0x3cd]
	addne sp, sp, #0x10
	movne r0, #2
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x19c]
_022E7700:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x194]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x195]
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, r7
	bl ov00_02315314
	add r1, r4, #0x100
	strh r0, [r1, #0x96]
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, r7
	bl ov00_0231530C
	str r0, [r4, #0x198]
	b _022E7788
_022E7748:
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x194]
	bl ov00_022EC1C0
	mov r1, r6
	strb r1, [r0, #0x195]
	bl ov00_022EC1C0
	add r0, r0, #0x100
	mov r1, r6
	strh r1, [r0, #0x96]
	bl ov00_022EC1C0
	mov r1, r6
	str r1, [r0, #0x198]
	bl ov00_022EC1C0
	str r8, [r0, #0x19c]
	mov r5, #1
_022E7788:
	cmp r5, #0
	beq _022E77A4
	bl ov00_022EC1C0
	add r0, r0, #0x194
	bl ov00_022E77F0
	mov r6, r0
	b _022E77E0
_022E77A4:
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E448
	mov r4, r0
	bl ov00_022EC1C0
	add r3, r0, #0x194
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov00_022EBD5C
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
_022E77E0:
	mov r0, r6
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E77EC: .4byte 0x0000A8C0
	arm_func_end ov00_022E7504

	arm_func_start ov00_022E77F0
ov00_022E77F0: @ 0x022E77F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _022E7848
	bl ov00_022EC1C0
	mov r4, r0
	mov r1, #0
	ldr r0, [r7, #4]
	mov r2, r1
	bl ov00_02310BF4
	mov r1, r0
	ldrh r2, [r7, #2]
	ldr r0, [r4, #0xe4]
	ldr r3, [r7, #8]
	bl ov00_02315CB8
	bl ov00_022EB694
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	popne {r3, r4, r5, r6, r7, pc}
_022E7848:
	ldr r5, _022E78A4 @ =ov00_022EBD5C
	ldr r4, _022E78A8 @ =0x022EBD58
	mov r6, #0
_022E7854:
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E448
	stm sp, {r5, r7}
	ldrb r2, [r7]
	ldr r1, [r7, #8]
	mov r3, r4
	bl ov00_02311EE0
	cmp r0, #0
	addeq sp, sp, #8
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _022E7854
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E78A4: .4byte ov00_022EBD5C
_022E78A8: .4byte 0x022EBD58
	arm_func_end ov00_022E77F0

	arm_func_start ov00_022E78AC
ov00_022E78AC: @ 0x022E78AC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x220
	str r3, [sp, #0xc]
	mov sl, r0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr sb, [sp, #0x248]
	ldr r8, [sp, #0x24c]
	mov r6, #0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E7908
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _022E7900
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _022E7928
_022E7900:
	cmp sl, #6
	bne _022E7928
_022E7908:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r0, sl
	mov r3, sb
	str r8, [sp]
	bl ov00_022E7A70
	mov r4, r0
	b _022E79D0
_022E7928:
	cmp sb, #0
	cmpne r8, #0
	beq _022E79A8
	ldr r3, [sb]
	ldr r2, _022E7A68 @ =0x0231A1C0
	add r0, sp, #0x20
	mov r1, #0x200
	bl FUN_0207911C
	mov r6, r0
	cmp r8, #1
	mov r7, #1
	ble _022E79A8
	add r5, sp, #0x10
	add fp, sp, #0x20
_022E7960:
	ldr r3, [sb, r7, lsl #2]
	ldr r2, _022E7A6C @ =0x0231A2A0
	mov r0, r5
	mov r1, #0x10
	bl FUN_0207911C
	mov r4, r0
	add r0, r6, r4
	add r0, r0, #1
	cmp r0, #0x200
	bhi _022E79A8
	mov r0, r5
	add r1, fp, r6
	mov r2, r4
	bl FUN_0207C4C8
	add r7, r7, #1
	add r6, r6, r4
	cmp r7, r8
	blt _022E7960
_022E79A8:
	add r0, sp, #0x20
	mov r1, #0
	strb r1, [r0, r6]
	bl ov00_022EC1C0
	ldr r0, [r0]
	ldr r2, [sp, #4]
	add r3, sp, #0x20
	mov r1, sl
	bl ov00_022E7B88
	mov r4, r0
_022E79D0:
	cmp sl, #2
	cmpne sl, #6
	beq _022E79EC
	add r0, sl, #0xf8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022E7A5C
_022E79EC:
	bl ov00_022EC1C0
	strb sl, [r0, #0x3cc]
	bl ov00_022EC1C0
	add r1, r0, #0x300
	ldr r0, [sp, #0xc]
	strh r0, [r1, #0xce]
	bl ov00_022EC1C0
	ldr r1, [sp, #8]
	str r1, [r0, #0x3d0]
	bl ov00_022EC1C0
	ldr r1, [sp, #4]
	str r1, [r0, #0x454]
	bl ov00_022EC1C0
	str r8, [r0, #0x458]
	bl ov00_022EC1C0
	mov r5, r0
	bl FUN_0207AE44
	str r0, [r5, #0x45c]
	cmp sb, #0
	str r1, [r5, #0x460]
	cmpne r8, #0
	beq _022E7A5C
	bl ov00_022EC1C0
	mov r1, r0
	mov r0, sb
	add r1, r1, #0x3d4
	lsl r2, r8, #2
	bl FUN_0207C330
_022E7A5C:
	mov r0, r4
	add sp, sp, #0x220
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E7A68: .4byte 0x0231A1C0
_022E7A6C: .4byte 0x0231A2A0
	arm_func_end ov00_022E78AC

	arm_func_start ov00_022E7A70
ov00_022E7A70: @ 0x022E7A70
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x98
	ldr r5, [sp, #0xb8]
	mov r4, r0
	cmp r5, #0x20
	movhi r5, #0x20
	cmp r3, #0
	cmpne r5, #0
	mov r8, r1
	mov r7, r2
	moveq r5, #0
	beq _022E7AB0
	add r1, sp, #0x18
	mov r0, r3
	lsl r2, r5, #2
	bl FUN_0207C330
_022E7AB0:
	ldr r2, _022E7B84 @ =0x0231A2A4
	lsl r0, r5, #2
	ldrb r1, [r2, #4]
	ldrb r6, [r2]
	add sb, sp, #4
	ldrb r5, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r1, [sb, #4]
	mov r1, #3
	strb r6, [sb]
	strb r5, [sb, #1]
	strb r3, [sb, #2]
	strb r2, [sb, #3]
	str r1, [sp, #8]
	strb r4, [sp, #0xc]
	strb r0, [sp, #0xd]
	bl ov00_022EC1C0
	ldrh r0, [r0, #0x1a]
	strh r0, [sp, #0xe]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x10]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x200]
	mov r6, #0
	str r0, [sp, #0x14]
	mov r4, r6
_022E7B20:
	bl ov00_022EC1C0
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r4
	bl ov00_02310BF4
	mov r1, r0
	ldrb r0, [sp, #0xd]
	mov r2, r7
	mov r3, sb
	add r0, r0, #0x14
	str r0, [sp]
	ldr r0, [r5, #0xe4]
	bl ov00_02315C60
	cmp r0, #0
	addeq sp, sp, #0x98
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r0, #2
	addne sp, sp, #0x98
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _022E7B20
	add sp, sp, #0x98
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E7B84: .4byte 0x0231A2A4
	arm_func_end ov00_022E7A70

	arm_func_start ov00_022E7B88
ov00_022E7B88: @ 0x022E7B88
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x208
	mov sb, r0
	mov r8, r2
	mov r7, r3
	mov r0, #3
	mov r5, r1
	str r0, [sp]
	ldr r4, _022E7C3C @ =0x0231A2BC
	ldr r2, _022E7C40 @ =0x0231A2AC
	ldr r3, _022E7C44 @ =0x0231A2B4
	add r0, sp, #8
	mov r1, #0x200
	str r4, [sp, #4]
	bl FUN_0207911C
	mov r4, r0
	add r2, sp, #8
	add r1, sp, #9
	strb r5, [r2, r4]
	mov r0, #0
	strb r0, [r1, r4]
	cmp r7, #0
	add r6, r1, r4
	beq _022E7C24
	mov r0, r7
	bl FUN_02089678
	mov r5, r0
	add r0, r4, #2
	add r0, r0, r5
	cmp r0, #0x200
	ldrhi r0, _022E7C48 @ =0x000001FF
	addhi r1, r4, #1
	subhi r5, r0, r1
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_0207C4C8
	mov r0, #0
	strb r0, [r6, r5]
_022E7C24:
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl ov00_022FFB10
	add sp, sp, #0x208
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E7C3C: .4byte 0x0231A2BC
_022E7C40: .4byte 0x0231A2AC
_022E7C44: .4byte 0x0231A2B4
_022E7C48: .4byte 0x000001FF
	arm_func_end ov00_022E7B88

	arm_func_start ov00_022E7C4C
ov00_022E7C4C: @ 0x022E7C4C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r1
	mov r4, r0
	mov r8, r2
	mov r0, sb
	mov r1, #0
	bl FUN_02089974
	mov r6, r0
	cmp r8, #0
	mov r7, #0
	ble _022E7CA4
	mov r5, #0x2f
_022E7C7C:
	mov r0, sb
	mov r1, r5
	bl FUN_02089974
	cmp r0, #0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	cmp r7, r8
	add sb, r0, #1
	blt _022E7C7C
_022E7CA4:
	mov r0, sb
	mov r1, #0x2f
	bl FUN_02089974
	cmp r0, #0
	moveq r0, r6
	cmp sb, r0
	mvneq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	sub r5, r0, sb
	mov r0, sb
	mov r1, r4
	mov r2, r5
	bl FUN_0207C4C8
	mov r1, #0
	mov r0, r5
	strb r1, [r4, r5]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022E7C4C

	arm_func_start ov00_022E7CE8
ov00_022E7CE8: @ 0x022E7CE8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x118
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov sl, r3
	ldr r6, [sp, #0x138]
	ldr r5, [sp, #0x13c]
	mov r4, #0
	bl ov00_022EC1C0
	cmp r0, #0
	beq _022E7D28
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	bne _022E7D34
_022E7D28:
	add sp, sp, #0x118
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E7D34:
	bl ov00_022E1FC0
	cmp r0, #5
	bne _022E7D64
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E7D64
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E7D64
	bl ov00_022EB15C
_022E7D64:
	cmp sb, #0x40
	bgt _022E7E00
	bge _022E8B44
	cmp sb, #0x20
	addls pc, pc, sb, lsl #2
	b _022E8BB8
_022E7D7C: @ jump table
	b _022E8BB8 @ case 0
	b _022E7E08 @ case 1
	b _022E7FD8 @ case 2
	b _022E81AC @ case 3
	b _022E820C @ case 4
	b _022E832C @ case 5
	b _022E83A8 @ case 6
	b _022E84B8 @ case 7
	b _022E85D0 @ case 8
	b _022E8750 @ case 9
	b _022E87A4 @ case 10
	b _022E7E08 @ case 11
	b _022E884C @ case 12
	b _022E88C0 @ case 13
	b _022E88C0 @ case 14
	b _022E88C0 @ case 15
	b _022E88E4 @ case 16
	b _022E8934 @ case 17
	b _022E89D4 @ case 18
	b _022E8A30 @ case 19
	b _022E8BB8 @ case 20
	b _022E8BB8 @ case 21
	b _022E8BB8 @ case 22
	b _022E8BB8 @ case 23
	b _022E8BB8 @ case 24
	b _022E8BB8 @ case 25
	b _022E8BB8 @ case 26
	b _022E8BB8 @ case 27
	b _022E8BB8 @ case 28
	b _022E8BB8 @ case 29
	b _022E8BB8 @ case 30
	b _022E8BB8 @ case 31
	b _022E8A48 @ case 32
_022E7E00:
	cmp sb, #0x41
	b _022E8BB8
_022E7E08:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E7E28
	ldr r0, [r6, #8]
	ldr r7, [r6, #4]
	lsl r0, r0, #0x10
	lsr sl, r0, #0x10
_022E7E28:
	cmp sb, #0xb
	moveq r0, #1
	movne r0, #0
	str r0, [sp]
	ldr r3, [r6]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl ov00_022E8BCC
	mov r5, r0
	cmp r5, #2
	bne _022E7F4C
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1dc]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl ov00_022E8EF8
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022E7ED0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _022E7ED0
	bl ov00_022EC1C0
	mov r6, r0
	mov r0, r8
	bl ov00_022E3DB8
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r0, #0x470]
	ldr r2, [r6, #0x46c]
	mov r0, r4
	blx r2
_022E7ED0:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	mov r4, #1
	str r0, [sp, #0x14]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _022E7F18
	add r6, sp, #0x14
_022E7EF4:
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	ble _022E7EF4
_022E7F18:
	bl ov00_022EC1C0
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x14
	str r1, [r0, r4, lsl #2]
	bl ov00_022EC1C0
	ldrh r2, [r0, #0x1a]
	add r3, r4, #1
	add r1, sp, #0x14
	mov r0, #0xb
	str r2, [r1, r3, lsl #2]
	add r4, r4, #2
	bl ov00_022EC1D0
	b _022E7F98
_022E7F4C:
	cmp r5, #3
	bne _022E7F98
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _022E7F98
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r1, [r6, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _022E7F98
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r0, #0x10
	streq r0, [sp, #0x14]
	moveq r4, #1
_022E7F98:
	cmp r5, #0xff
	beq _022E8BB8
	add r1, sp, #0x14
	str r1, [sp]
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, sl
	str r4, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E7FD8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _022E8BB8
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x24]
	bl ov00_022EC1C0
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xa4]
	bl ov00_022EC1C0
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x1b8]
	bl ov00_022EC1C0
	ldr r1, [r6]
	add r0, r0, #0x100
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xb4]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E8100
	ldr r1, [r6]
	add r0, r6, #4
	bl ov00_022EA16C
	cmp r0, #0
	beq _022E80C0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E8100
	mov r0, r8
	mov r1, r6
	bl ov00_022E90B8
	b _022E8100
_022E80C0:
	mov r0, r8
	bl ov00_022E9690
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x118
	mov r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r0
	mov r2, r8
	bl ov00_022E92F0
	bl ov00_022E9108
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8100:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E8184
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E8144
	mov r0, r8
	mov r1, r6
	bl ov00_022E90B8
	bl ov00_022E99C0
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8144:
	mov r0, #6
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl ov00_02315D80
	mov r2, r0
	mov r0, #0
	mov r1, r0
	bl ov00_022E7504
	bl ov00_022EB810
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8184:
	mov r0, #5
	bl ov00_022EC1D0
	mov r0, r8
	bl ov00_022E72A0
	bl ov00_022EB694
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E81AC:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _022E8BB8
	cmp r5, #0
	ble _022E81F8
	ldr r0, [r6]
	cmp r0, #0x10
	bne _022E81F8
	mov r0, #0xd
	mov r1, #0
	bl ov00_022E6570
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E81F8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	bl ov00_022E95B8
	add sp, sp, #0x118
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E820C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _022E8BB8
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _022E8260
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a7]
	cmp r0, #0x10
	blo _022E8270
_022E8260:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E82B4
_022E8270:
	bl ov00_022EC1C0
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _022E8BB8
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1a7]
	add r1, r1, #1
	strb r1, [r0, #0x1a7]
	b _022E8BB8
_022E82B4:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E8308
	mov r0, #3
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r1, #1
	str r1, [r0, #0xe8]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _022E8BB8
_022E8308:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E8BB8
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov00_022E92F0
	b _022E8BB8
_022E832C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _022E8BB8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022E838C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _022E838C
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf8]
	cmp r8, r0
	bne _022E838C
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E3A4
_022E838C:
	mov r0, r8
	bl ov00_022E96E4
	cmp r0, #0
	bne _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E83A8:
	ldr r0, [r6, #4]
	ldr r5, [r6]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E83D4
	mov r0, #6
	bl ov00_022EC1D0
	b _022E8404
_022E83D4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _022E83F4
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	bne _022E8BB8
_022E83F4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _022E8BB8
_022E8404:
	bl ov00_022EC1C0
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	beq _022E8450
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r8, [r0, #0xf4]
_022E8450:
	asr r1, r4, #8
	lsl r0, r4, #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	str r5, [sp, #0xc]
	strh r0, [sp, #0xa]
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x194]
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E448
	mov r4, r0
	bl ov00_022EC1C0
	add r3, r0, #0x194
	mov r1, r4
	mov r0, #0
	add r2, sp, #8
	bl ov00_022EBD5C
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	b _022E8BB8
_022E84B8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E8BB8
	ldr r0, [r6]
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	and r4, r0, #0xff
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E854C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _022E854C
	ldr r0, [sp, #0x10]
	bl ov00_022EB024
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	str r0, [sp]
	mov r5, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x20
	str r5, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
_022E854C:
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xf4]
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	bl ov00_022EC1C0
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _022E8BB8
	bl ov00_022EC1C0
	mov r5, r0
	ldr r0, [sp, #0x10]
	bl ov00_022E3DB8
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r0, #0x470]
	ldr r2, [r5, #0x46c]
	mov r0, r4
	blx r2
	b _022E8BB8
_022E85D0:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _022E8BB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E8BB8
	ldr r0, [r6]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _022E8638
	ldr r5, [r6, #4]
	ldr r4, [r6, #8]
	bl ov00_022EC1C0
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r2, [r0, #0x200]
	add r1, r4, r5, lsl #2
	mov r0, #3
	str r2, [r1, #0xf4]
	bl ov00_022E9AA4
	b _022E8BB8
_022E8638:
	ldr r0, [r6, #8]
	ldr r5, [r6, #4]
	and r4, r0, #0xff
	bl ov00_022EC1C0
	add r0, r0, r5, lsl #2
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _022E86B8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	sub r0, r0, #1
	cmp r5, r0
	bne _022E86B8
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	add r1, sp, #0x10
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r8
	mov r0, #9
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E86B8:
	bl ov00_022EC1C0
	ldr r1, [sp, #0x10]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0xf4]
	bl ov00_022EC1C0
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl ov00_022EC1C0
	ldr r1, [r6, #0xc]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0x24]
	bl ov00_022EC1C0
	ldr r1, [r6, #0x10]
	add r0, r0, r5, lsl #1
	strh r1, [r0, #0xa4]
	bl ov00_022EC1C0
	ldr r1, [r6, #0xc]
	str r1, [r0, #0x1b8]
	bl ov00_022EC1C0
	add r1, r0, #0x100
	ldr r2, [r6, #0x10]
	mov r0, #5
	strh r2, [r1, #0xb4]
	bl ov00_022EC1D0
	ldr r0, [sp, #0x10]
	bl ov00_022E72A0
	bl ov00_022EB694
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	b _022E8BB8
_022E8750:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	bne _022E8BB8
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	ldr r1, [r6]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _022E8BB8
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1a4]
	add r1, r1, #1
	strb r1, [r0, #0x1a4]
	mov r0, #0
	bl ov00_022E9AA4
	b _022E8BB8
_022E87A4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	beq _022E87C4
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _022E8BB8
_022E87C4:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E87E8
	ldr r1, [r6]
	add r0, r6, #4
	bl ov00_022EA16C
	cmp r0, #0
	beq _022E8804
_022E87E8:
	bl ov00_022EC1C0
	ldr r1, [r6, #4]
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a7]
	b _022E8810
_022E8804:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
_022E8810:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E8834
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E3A4
	b _022E8BB8
_022E8834:
	bl ov00_022EA4BC
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E884C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E8BB8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E887C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E8898
_022E887C:
	mov r0, r8
	bl ov00_022E9900
	cmp r0, #0
	bne _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8898:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E8BB8
	bl ov00_022EC1C0
	str r8, [r0, #0x20c]
	bl ov00_022EA5EC
	mov r0, #0
	bl ov00_022EA388
	b _022E8BB8
_022E88C0:
	ldr r2, [r6]
	mov r0, r8
	mov r1, sb
	bl ov00_022EAB38
	cmp r0, #0
	bne _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E88E4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	addne sp, sp, #0x118
	movne r0, #1
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r5, #0
	mov r7, #0
	ble _022E8BB8
	mov r4, r7
_022E890C:
	ldr r0, [r6, r7, lsl #2]
	mov r1, r4
	bl ov00_022EB094
	cmp r0, #0xff
	beq _022E8924
	bl ov00_022E1EB4
_022E8924:
	add r7, r7, #1
	cmp r7, r5
	blt _022E890C
	b _022E8BB8
_022E8934:
	ldr r0, _022E8BC4 @ =0x02326F48
	ldr r4, [r0]
	cmp r4, #0
	ldrbne r0, [r4]
	cmpne r0, #0
	beq _022E8990
	bl FUN_0207AE44
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	subs r3, r0, r3
	sbc r0, r1, r2
	lsl r1, r0, #6
	ldr r2, _022E8BC8 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2
	movhs r0, #1
	strhs r0, [sp, #0x14]
	bhs _022E8998
_022E8990:
	mov r0, #0
	str r0, [sp, #0x14]
_022E8998:
	add r0, sp, #0x14
	str r0, [sp]
	mov r4, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x12
	str r4, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E89D4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	bne _022E8BB8
	mov r0, r8
	mov r1, #0
	bl ov00_022EB094
	cmp r0, #0xff
	beq _022E8BB8
	ldr r1, _022E8BC4 @ =0x02326F48
	mov r4, #1
	ldr r3, [r1]
	ldr r2, [r3, #8]
	orr r2, r2, r4, lsl r0
	str r2, [r3, #8]
	ldr r2, [r6]
	cmp r2, #0
	beq _022E8BB8
	ldr r2, [r1]
	ldr r1, [r2, #0xc]
	orr r0, r1, r4, lsl r0
	str r0, [r2, #0xc]
	b _022E8BB8
_022E8A30:
	mov r0, #0xc
	mov r1, #0
	bl ov00_022E6570
	add sp, sp, #0x118
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8A48:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E8BB8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _022E8BB8
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E8BB8
_022E8A7C:
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E8B2C
	ldr r0, [r6]
	cmp r0, #0
	bne _022E8B04
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _022E8ABC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _022E8AD4
_022E8ABC:
	bl ov00_022EA2B4
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8AD4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _022E8AFC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	bl ov00_02311FB0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x19c]
_022E8AFC:
	bl ov00_022EA488
	b _022E8BB8
_022E8B04:
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl ov00_022EB094
	ldr r2, [r4, #0x1dc]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r4, #0x1dc]
	b _022E8BB8
_022E8B2C:
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _022E8A7C
	b _022E8BB8
_022E8B44:
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E8BB8
_022E8B58:
	bl ov00_022EC1C0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _022E8BA4
	mov r4, #0
	str r4, [sp]
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x41
	str r4, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022E8BB8
	add sp, sp, #0x118
	mov r0, r4
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E8BA4:
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _022E8B58
_022E8BB8:
	mov r0, #1
	add sp, sp, #0x118
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022E8BC4: .4byte 0x02326F48
_022E8BC8: .4byte 0x000082EA
	arm_func_end ov00_022E7CE8

	arm_func_start ov00_022E8BCC
ov00_022E8BCC: @ 0x022E8BCC
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E8C4C
	cmp r0, #1
	beq _022E8C04
	cmp r0, #2
	beq _022E8E28
	b _022E8EEC
_022E8C04:
	bl ov00_022EC1C0
	ldr r0, [r0]
	mov r1, r8
	bl ov00_022FF808
	cmp r0, #0
	beq _022E8C30
	mov r0, r8
	bl ov00_022E3DB8
	mvn r1, #0
	cmp r0, r1
	bne _022E8C38
_022E8C30:
	mov r4, #0xff
	b _022E8EEC
_022E8C38:
	mov r0, r8
	bl ov00_022EB024
	cmp r0, #0
	moveq r4, #3
	beq _022E8EEC
_022E8C4C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r5, r0
	bne _022E8CB4
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	bne _022E8CB4
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	beq _022E8CB4
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022E8D18
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _022E8D18
_022E8CB4:
	mov r4, #3
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E8EEC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	bne _022E8EEC
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022E8EEC
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _022E8EEC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	b _022E8EEC
_022E8D18:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	beq _022E8D38
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _022E8D64
_022E8D38:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _022E8D58
	bl ov00_022EC1C0
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _022E8D64
_022E8D58:
	cmp r7, #0
	cmpeq r6, #0
	bne _022E8D6C
_022E8D64:
	mov r4, #4
	b _022E8EEC
_022E8D6C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _022E8E20
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _022E8DC8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022E8DB8
	bl ov00_022EC1C0
	ldr r0, [r0, #0x200]
	cmp r0, r8
	bge _022E8DC0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r8, r0
	beq _022E8DC0
_022E8DB8:
	mov r4, #2
	b _022E8EEC
_022E8DC0:
	mov r4, #0xff
	b _022E8EEC
_022E8DC8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022E8DF4
	bl ov00_022EC1C0
	ldr r0, [r0, #0x200]
	cmp r0, r8
	bge _022E8E18
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _022E8E18
_022E8DF4:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x204]
	bl ov00_022E9690
	bl ov00_022E9108
	cmp r0, #0
	movne r0, #0xff
	popne {r4, r5, r6, r7, r8, pc}
	mov r4, #2
	b _022E8EEC
_022E8E18:
	mov r4, #3
	b _022E8EEC
_022E8E20:
	mov r4, #2
	b _022E8EEC
_022E8E28:
	bl ov00_022EC1C0
	ldr r0, [r0]
	mov r1, r8
	bl ov00_022FF808
	cmp r0, #0
	beq _022E8E54
	mov r0, r8
	bl ov00_022E3DB8
	mvn r1, #0
	cmp r0, r1
	bne _022E8E5C
_022E8E54:
	mov r4, #0xff
	b _022E8EEC
_022E8E5C:
	cmp r5, #3
	bne _022E8E80
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _022E8E88
_022E8E80:
	mov r4, #3
	b _022E8EEC
_022E8E88:
	ldr r0, _022E8EF4 @ =0x02326F48
	ldrb r1, [r0, #0x1c]
	cmp r1, #1
	ldrbeq r0, [r0, #0x1d]
	cmpeq r0, #1
	moveq r4, #0x13
	beq _022E8EEC
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	bne _022E8EE0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _022E8ED4
	bl ov00_022EC1C0
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _022E8EE0
_022E8ED4:
	cmp r7, #0
	cmpeq r6, #0
	bne _022E8EE8
_022E8EE0:
	mov r4, #4
	b _022E8EEC
_022E8EE8:
	mov r4, #2
_022E8EEC:
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E8EF4: .4byte 0x02326F48
	arm_func_end ov00_022E8BCC

	arm_func_start ov00_022E8EF8
ov00_022E8EF8: @ 0x022E8EF8
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022E8F34
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20]
	cmp r6, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
_022E8F34:
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	str r6, [r0, #0x20]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r6, [r0, #0xf4]
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r5, [r0, #0x24]
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #1
	strh r4, [r0, #0xa4]
	bl ov00_022EC1C0
	str r5, [r0, #0x1b8]
	bl ov00_022EC1C0
	add r0, r0, #0x100
	strh r4, [r0, #0xb4]
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EAFB4
	ldrb r1, [r4, #0x14]
	add r1, r1, #1
	add r1, r5, r1
	strb r0, [r1, #0x2d0]
	str r6, [sp, #8]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	mov r7, #1
	add r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0xc]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _022E90A4
	add r6, sp, #8
	mov r5, #2
	mov r4, #7
_022E9048:
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	mov r8, r0
	bl ov00_022EC1C0
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r0, r7, lsl #1
	add r1, sb, r7, lsl #2
	add r2, r8, r7, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r4
	bl ov00_022E78AC
	cmp r0, #0
	addne sp, sp, #0x10
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x14]
	cmp r7, r0
	ble _022E9048
_022E90A4:
	mov r0, #1
	bl ov00_022EB184
	mov r0, #0
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022E8EF8

	arm_func_start ov00_022E90B8
ov00_022E90B8: @ 0x022E90B8
	push {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	add r4, r1, #2
	cmp r4, #2
	bls _022E90F0
	bl ov00_022EC1C0
	mov r1, r0
	sub r2, r4, #2
	add r0, r5, #4
	add r1, r1, #0x350
	lsl r2, r2, #2
	bl FUN_0207C330
_022E90F0:
	bl ov00_022EC1C0
	sub r1, r4, #1
	str r1, [r0, #0x348]
	bl ov00_022EC1C0
	str r6, [r0, #0x34c]
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E90B8

	arm_func_start ov00_022E9108
ov00_022E9108: @ 0x022E9108
	push {r4, lr}
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	mov r0, r4
	bne _022E912C
	bl ov00_022EB694
	pop {r4, pc}
_022E912C:
	bl ov00_022EB620
	pop {r4, pc}
	arm_func_end ov00_022E9108

	arm_func_start ov00_022E9134
ov00_022E9134: @ 0x022E9134
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	cmp r1, #0
	bne _022E9168
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _022E91A8
	bl ov00_022EC1C0
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	bne _022E91A8
_022E9168:
	bl ov00_022EC1C0
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl ov00_022EC1C0
	str r5, [r0, #0xf4]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	add sp, sp, #0x14
	mov r0, r1
	pop {r4, r5, r6, r7, pc}
_022E91A8:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E922C
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl ov00_02315D80
	mov r6, r0
	bl ov00_022EC1C0
	mov r4, r0
	ldr r1, _022E92E8 @ =0x0231A208
	mov r0, r6
	mov r2, #0
	bl ov00_02315264
	str r0, [r4, #0xf4]
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, r6
	bl ov00_0231530C
	str r0, [r4, #0x24]
	bl ov00_022EC1C0
	mov r4, r0
	mov r0, r6
	bl ov00_02315314
	strh r0, [r4, #0xa4]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	mov r4, #1
	str r0, [r6, #0x204]
	b _022E9268
_022E922C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9244
	bl ov00_022EC1C0
	str r5, [r0, #0xf4]
_022E9244:
	bl ov00_022EC1C0
	str r5, [r0, #0x204]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0xc]
	bl ov00_022EC1C0
	ldrh r0, [r0, #0x1a]
	mov r4, #3
	str r0, [sp, #0x10]
_022E9268:
	bl ov00_022EC1C0
	ldr r1, _022E92EC @ =0x00001770
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	mov r6, r0
	bl FUN_0207AE44
	str r0, [r6, #0x1cc]
	str r1, [r6, #0x1d0]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	movne r7, #0xb
	moveq r7, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	str r0, [sp, #8]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	add r2, sp, #8
	stm sp, {r2, r4}
	mov r3, r0
	ldrh r3, [r3, #0xa4]
	ldr r2, [r6, #0x24]
	mov r1, r5
	mov r0, r7
	bl ov00_022E78AC
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022E92E8: .4byte 0x0231A208
_022E92EC: .4byte 0x00001770
	arm_func_end ov00_022E9134

	arm_func_start ov00_022E92F0
ov00_022E92F0: @ 0x022E92F0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	movs r4, r1
	mov r8, r0
	mov fp, r2
	beq _022E9314
	bl ov00_022EC1C0
	ldrb r6, [r0, #0x1a5]
	b _022E9344
_022E9314:
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x344]
	ldrb r1, [r5, #0x1a5]
	sub r0, r0, #1
	cmp r1, r0
	movge r6, #0
	bge _022E9344
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a5]
	add r6, r0, #1
_022E9344:
	cmp r4, #0
	mov r5, #0
	moveq r7, #1
	movne r7, r5
_022E9354:
	cmp r7, #0
	cmpeq r5, #0
	beq _022E9398
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1a5]
	add r1, r1, #1
	strb r1, [r0, #0x1a5]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r1, [r4, #0x1a5]
	ldr r0, [r0, #0x344]
	cmp r1, r0
	blt _022E9398
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a5]
_022E9398:
	cmp r5, #0
	beq _022E93E8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a5]
	cmp r6, r0
	bne _022E93E8
	bl ov00_022EC1C0
	ldr r1, _022E95A8 @ =0x00000BB8
	str r1, [r0, #0x1c8]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1bc]
	add sp, sp, #0x22c
	mov r0, r1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022E93E8:
	mov r5, #1
	bl ov00_022E2C58
	mov sl, r0
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, r0
	ldrb r2, [r1, #0x1a5]
	ldr r3, [sb, #0x2fc]
	mov r1, #0xc
	add r2, r4, r2
	ldrb r2, [r2, #0x304]
	mov r0, sl
	mla r1, r2, r1, r3
	bl ov00_022DB98C
	movs r4, r0
	mvnne r0, #0
	cmpne r4, r0
	beq _022E9354
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1a5]
	ldr r2, [sl, #0x2fc]
	mov r0, #0xc
	add r1, sb, r1
	ldrb r1, [r1, #0x304]
	mla r0, r1, r0, r2
	bl ov00_022DB78C
	cmp r0, #0
	beq _022E9354
	mov sb, r5
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E94B0
_022E9488:
	bl ov00_022EC1C0
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	beq _022E94B0
	add sb, sb, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _022E9488
_022E94B0:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _022E9354
	bl ov00_022EC1C0
	ldr r0, [r0]
	add r2, sp, #4
	mov r1, r4
	bl ov00_022FF768
	mov sb, r0
	bl ov00_022EC1C0
	ldr r0, [r0]
	ldr r1, [sp, #4]
	add r2, sp, #0x18
	bl ov00_022FF5D8
	orrs r0, sb, r0
	ldreq r0, [sp, #0x1c]
	cmpeq r0, #4
	bne _022E9354
	ldr r0, _022E95AC @ =0x0231A1CC
	add r1, sp, #0xc
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov00_022E1448
	mov sl, r0
	ldr r0, _022E95B0 @ =0x0231A1C4
	add r1, sp, #8
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov00_022E1448
	mov sb, r0
	ldr r0, _022E95B4 @ =0x0231A1C8
	add r1, sp, #0
	add r2, sp, #0x20
	mov r3, #0x2f
	bl ov00_022E1448
	cmp sl, #0
	cmpgt sb, #0
	cmpgt r0, #0
	ble _022E9354
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	cmp r0, #3
	bne _022E9354
	add r0, sp, #8
	mov r1, #0
	mov r2, #0xa
	bl FUN_0208B200
	mov sb, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x16]
	cmp sb, r0
	bne _022E9354
	cmp r4, fp
	moveq r8, #1
	mov r0, r4
	mov r1, r8
	bl ov00_022E9134
	add sp, sp, #0x22c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E95A8: .4byte 0x00000BB8
_022E95AC: .4byte 0x0231A1CC
_022E95B0: .4byte 0x0231A1C4
_022E95B4: .4byte 0x0231A1C8
	arm_func_end ov00_022E92F0

	arm_func_start ov00_022E95B8
ov00_022E95B8: @ 0x022E95B8
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E962C
	mov r0, #3
	bl ov00_022EC1D0
	mov r0, #0
	bl ov00_022E72A0
	bl ov00_022EB694
	cmp r0, #0
	beq _022E9684
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E962C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9660
	mov r0, #0
	mov r1, r0
	mov r2, r5
	bl ov00_022E92F0
	bl ov00_022E9108
	cmp r0, #0
	beq _022E9684
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E9660:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E9684
	ldr r1, _022E968C @ =0xFFFEC5E6
	mov r0, #6
	bl ov00_022E6570
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E9684:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E968C: .4byte 0xFFFEC5E6
	arm_func_end ov00_022E95B8

	arm_func_start ov00_022E9690
ov00_022E9690: @ 0x022E9690
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r5
	mov r0, #5
	bl ov00_022E78AC
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022E9690

	arm_func_start ov00_022E96E4
ov00_022E96E4: @ 0x022E96E4
	push {r4, r5, r6, lr}
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022E971C
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	moveq r4, #0
	beq _022E9720
_022E971C:
	mov r4, #1
_022E9720:
	cmp r4, #0
	beq _022E974C
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
_022E974C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1f
	bhs _022E977C
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	mov r1, #0
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r1, [r0, #0xf4]
_022E977C:
	bl ov00_022EC1C0
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _022E97B0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	bl ov00_02311FB0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x19c]
_022E97B0:
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	strb r0, [r6, #0x14]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x204]
	cmp r4, #0
	bne _022E97F0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _022E98F8
	bl ov00_022EA488
	b _022E98F8
_022E97F0:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E982C
	mov r0, #3
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _022E98F8
_022E982C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9858
	mov r0, #4
	bl ov00_022EC1D0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov00_022E92F0
	b _022E98F8
_022E9858:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022E98F8
	mov r0, #0xe
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1d8]
	bl ov00_022EC1C0
	add r1, r0, #0x100
	mov r2, #0
	mov r0, r5
	strh r2, [r1, #0xb2]
	bl ov00_022EA57C
	mov r5, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E98E0
	mov r4, #0xd
_022E98AC:
	bl ov00_022EC1C0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r4
	bl ov00_022EAAB8
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	add r5, r5, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _022E98AC
_022E98E0:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _022E98F8
	mov r0, #2
	bl ov00_022EA388
_022E98F8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022E96E4

	arm_func_start ov00_022E9900
ov00_022E9900: @ 0x022E9900
	push {r3, r4, r5, lr}
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E9940
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E992C
	bl ov00_022EA5EC
_022E992C:
	ldr r1, _022E99BC @ =0xFFFEC5D2
	mov r0, #6
	bl ov00_022E6570
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E9940:
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	strb r0, [r5, #0x14]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x208]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _022E9988
	bl ov00_022EC1C0
	ldr r0, [r0, #0x19c]
	bl ov00_02311FB0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x19c]
_022E9988:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022E99A0
	bl ov00_022EA488
	b _022E99B4
_022E99A0:
	mov r0, #4
	bl ov00_022EC1D0
	mov r0, #0
	bl ov00_022E95B8
	mov r4, r0
_022E99B4:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E99BC: .4byte 0xFFFEC5D2
	arm_func_end ov00_022E9900

	arm_func_start ov00_022E99C0
ov00_022E99C0: @ 0x022E99C0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E9A58
	mov r5, #0xa
_022E99E0:
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	mov r8, r0
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	add r1, r6, #0x348
	str r1, [sp]
	ldr ip, [r0, #0x348]
	add r3, r7, r4, lsl #1
	add ip, ip, #1
	str ip, [sp, #4]
	add r1, sb, r4, lsl #2
	add r2, r8, r4, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r5
	bl ov00_022E78AC
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _022E99E0
_022E9A58:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x1a8]
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E3A4
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, r1
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov00_022E99C0

	arm_func_start ov00_022E9AA4
ov00_022E9AA4: @ 0x022E9AA4
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	cmp r0, #4
	mov r4, #3
	mov r5, #0
	addls pc, pc, r0, lsl #2
	b _022EA12C
_022E9AC0: @ jump table
	b _022E9AD4 @ case 0
	b _022E9E74 @ case 1
	b _022E9EB8 @ case 2
	b _022E9F7C @ case 3
	b _022E9F9C @ case 4
_022E9AD4:
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	ldrb r1, [r6, #0x1a4]
	sub r0, r0, #1
	cmp r1, r0
	bge _022E9B94
	mov r0, #0xd
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [sp, #8]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	str r0, [sp, #0xc]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x14]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a4]
	mov r4, #5
	add r0, r0, #1
	add r0, r6, r0, lsl #1
	ldrh r0, [r0, #0xa4]
	str r0, [sp, #0x18]
	b _022E9DE0
_022E9B94:
	bl ov00_022EC1C0
	mov r1, r5
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, r5
	str r1, [r0, #0x20]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x10]
	bl ov00_02312BF4
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E9BD4
	mov r0, r4
	bl ov00_022EC1D0
	b _022E9BF8
_022E9BD4:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9BF0
	mov r0, #4
	bl ov00_022EC1D0
	b _022E9BF8
_022E9BF0:
	mov r0, #0xa
	bl ov00_022EC1D0
_022E9BF8:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _022E9C30
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r1, [r6, #0xd]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _022E9CE0
_022E9C30:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022E9C68
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r7, #0x20c]
	b _022E9C88
_022E9C68:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20c]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x200]
	str r0, [r6, #0xf4]
_022E9C88:
	mov r0, #0x10
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x1d4]
	mov r7, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022E9DD0
	mov r6, #2
_022E9CB4:
	bl ov00_022EC1C0
	add r0, r0, r7
	ldrb r0, [r0, #0x2d0]
	mov r1, r6
	bl ov00_022EA758
	add r7, r7, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _022E9CB4
	b _022E9DD0
_022E9CE0:
	mov r0, #0
	str r0, [sp, #8]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	str r0, [sp, #0xc]
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022E9D44
	bl ov00_022EC1C0
	mov r1, #2
	str r1, [r0, #0xe8]
	bl ov00_022EC1C0
	mov r6, r0
	bl FUN_0207AE44
	str r0, [r6, #0xec]
	str r1, [r6, #0xf0]
	b _022E9DD0
_022E9D44:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9DD0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov00_022E92F0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _022E9DD0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	blo _022E9DD0
	bl ov00_022EC1C0
	mov r8, r0
	mov r0, #0
	bl ov00_022EB0F8
	mov r6, r0
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	mov r1, #1
	ldr r2, [r8, #0x1dc]
	add r0, r7, r0
	ldrb r0, [r0, #0x2d0]
	mvn r0, r1, lsl r0
	and r0, r6, r0
	cmp r2, r0
	beq _022E9DD0
	bl ov00_022EA488
	b _022EA12C
_022E9DD0:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	movne r5, #1
_022E9DE0:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _022EA12C
	bl ov00_022EC1C0
	mov sl, r0
	bl ov00_022EC1C0
	mov sb, r0
	bl ov00_022EC1C0
	mov r8, r0
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	add r1, sp, #8
	stm sp, {r1, r4}
	mov ip, r0
	ldrb r3, [sb, #0xd]
	ldrb r2, [r7, #0xd]
	ldrb r1, [ip, #0xd]
	add r4, sl, r3, lsl #2
	add r2, r8, r2, lsl #2
	add r3, r6, r1, lsl #1
	ldrh r3, [r3, #0xa4]
	ldr r1, [r4, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, #8
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x3cd]
	b _022EA12C
_022E9E74:
	mov r0, #1
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022E9EB0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, #0x20c]
_022E9EB0:
	mov r5, #1
	b _022EA12C
_022E9EB8:
	mov r0, #1
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022E9EE0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022E9F00
_022E9EE0:
	bl ov00_022EC1C0
	mov r1, #1
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x200]
	str r0, [r4, #0x20]
_022E9F00:
	bl ov00_022EB15C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bls _022EA12C
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	mov r8, r0
	bl ov00_022EC1C0
	add r3, r8, #0xf4
	ldrb r2, [r0, #0xd]
	mov r1, #1
	mov r0, #9
	sub r2, r2, #1
	add r2, r3, r2, lsl #2
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r7, #0xf4]
	ldr r2, [r6, #0x24]
	ldrh r3, [r4, #0xa4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	beq _022EA12C
	add sp, sp, #0x1c
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_022E9F7C:
	mov r0, #1
	bl ov00_022EC1D0
	bl ov00_022EB15C
	bl ov00_022EC1C0
	mov r1, r5
	str r1, [r0, #0x20c]
	mov r5, #1
	b _022EA12C
_022E9F9C:
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	ble _022EA000
_022E9FB0:
	bl ov00_022EC1C0
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	cmp r0, #0
	beq _022E9FD8
	bl ov00_022EC1C0
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	cmp r0, #0x20
	blo _022E9FEC
_022E9FD8:
	ldr r1, _022EA160 @ =0xFFFEA2A0
	mov r0, #0x15
	bl ov00_022E6570
	add sp, sp, #0x1c
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_022E9FEC:
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	blt _022E9FB0
_022EA000:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _022EA020
	ldr r1, _022EA164 @ =0x0231A1BC
	mov r0, #2
	mov r2, #0
	bl ov00_022E3E54
_022EA020:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	bl ov00_022E3DB8
	mov r4, r0
	bl ov00_022EC1C0
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr r4, [r6, #0x464]
	mov r2, r7
	mov r1, r0
	mov r3, r0
	blx r4
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022EA094
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022EA09C
_022EA094:
	bl ov00_022E7204
	b _022EA120
_022EA09C:
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _022EA0C4
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315AD8
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0xe4]
_022EA0C4:
	bl ov00_022E5080
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _022EA10C
	bl ov00_022E6D08
	bl ov00_022EB620
	cmp r0, #0
	addne sp, sp, #0x1c
	popne {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _022EA168 @ =0x02326F48
	ldrb r1, [r0, #0x1c]
	cmp r1, #1
	moveq r1, #1
	strbeq r1, [r0, #0x1d]
	mov r0, #0xa
	bl ov00_022EC1D0
	b _022EA114
_022EA10C:
	mov r0, #1
	bl ov00_022EC1D0
_022EA114:
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20c]
_022EA120:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a9]
_022EA12C:
	cmp r5, #0
	addeq sp, sp, #0x1c
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #0x1c
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov00_022EC1C0
	ldr r0, [r0, #0xe4]
	bl ov00_02315D34
	add sp, sp, #0x1c
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022EA160: .4byte 0xFFFEA2A0
_022EA164: .4byte 0x0231A1BC
_022EA168: .4byte 0x02326F48
	arm_func_end ov00_022E9AA4

	arm_func_start ov00_022EA16C
ov00_022EA16C: @ 0x022EA16C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _022EA19C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	moveq r0, #1
	popeq {r4, r5, r6, pc}
_022EA19C:
	cmp r5, #0
	mov r4, #0
	bls _022EA1EC
_022EA1A8:
	ldr r0, [r6, r4, lsl #2]
	bl ov00_022EB024
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _022EA1E0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	moveq r0, #1
	popeq {r4, r5, r6, pc}
_022EA1E0:
	add r4, r4, #1
	cmp r4, r5
	blo _022EA1A8
_022EA1EC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022EA16C

	arm_func_start ov00_022EA1F4
ov00_022EA1F4: @ 0x022EA1F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _022EA2B0 @ =0x0231A1BC
	mov r0, #1
	mov r2, #0
	bl ov00_022E3E54
	bl ov00_022EB620
	cmp r0, #0
	addne sp, sp, #8
	popne {r3, r4, r5, r6, r7, pc}
	bl ov00_022E7204
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	movne r6, #1
	bne _022EA248
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r6, #1
	movne r6, #0
_022EA248:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	bl ov00_022E3DB8
	mov r4, r0
	bl ov00_022EC1C0
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r2, r7
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r3, r6
	mov r0, #0
	mov r1, #1
	blx ip
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a9]
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EA2B0: .4byte 0x0231A1BC
	arm_func_end ov00_022EA1F4

	arm_func_start ov00_022EA2B4
ov00_022EA2B4: @ 0x022EA2B4
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, #0
	str r4, [sp, #8]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _022EA37C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _022EA37C
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	beq _022EA37C
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	mov r4, r0
	bl ov00_022EC1C0
	add r2, sp, #8
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	ldrb r3, [r0, #0xd]
	ldrb r2, [r6, #0xd]
	ldr r1, [r7, #0x20]
	add r3, r3, #1
	add r2, r2, #1
	add r3, r4, r3, lsl #1
	add r2, r5, r2, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r2, [r2, #0x24]
	mov r0, #0xc
	bl ov00_022E78AC
	mov r4, r0
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20]
_022EA37C:
	mov r0, r4
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	arm_func_end ov00_022EA2B4

	arm_func_start ov00_022EA388
ov00_022EA388: @ 0x022EA388
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r4, r0
	bne _022EA3A4
	bl ov00_022EA1F4
	add sp, sp, #8
	pop {r4, r5, r6, pc}
_022EA3A4:
	bl ov00_022E6E68
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _022EA3C8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _022EA424
_022EA3C8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r6, #1
	movne r6, #0
	bl ov00_022EC1C0
	mov r5, r0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	bl ov00_022E3DB8
	mov r4, r0
	bl ov00_022EC1C0
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r2, r6
	mov r1, #1
	mov r3, r0
	blx ip
	add sp, sp, #8
	pop {r4, r5, r6, pc}
_022EA424:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022EA458
	cmp r4, #1
	addne sp, sp, #8
	popne {r4, r5, r6, pc}
	mov r0, #0
	bl ov00_022E72A0
	bl ov00_022EB694
	add sp, sp, #8
	cmp r0, #0
	pop {r4, r5, r6, pc}
_022EA458:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	cmpeq r4, #1
	addne sp, sp, #8
	popne {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl ov00_022E92F0
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	arm_func_end ov00_022EA388

	arm_func_start ov00_022EA488
ov00_022EA488: @ 0x022EA488
	push {r3, lr}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	popeq {r3, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	popeq {r3, pc}
	bl ov00_022EA5EC
	mov r0, #1
	bl ov00_022EA388
	pop {r3, pc}
	arm_func_end ov00_022EA488

	arm_func_start ov00_022EA4BC
ov00_022EA4BC: @ 0x022EA4BC
	push {r4, lr}
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x17]
	bl ov00_022EC1C0
	mov r1, #0
	str r1, [r0, #0x20]
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _022EA56C
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _022EA52C
	mov r0, #3
	bl ov00_022EC1D0
	mov r0, #0
	bl ov00_022E72A0
	mov r4, r0
	bl ov00_022EB694
	cmp r0, #0
	beq _022EA574
	mov r0, r4
	pop {r4, pc}
_022EA52C:
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022EA574
	mov r0, #4
	bl ov00_022EC1D0
	bl ov00_022EC1C0
	ldr r0, [r0, #0x208]
	mov r1, #0
	bl ov00_022E9134
	mov r4, r0
	bl ov00_022E9108
	cmp r0, #0
	beq _022EA574
	mov r0, r4
	pop {r4, pc}
_022EA56C:
	mov r0, #1
	bl ov00_022EA388
_022EA574:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov00_022EA4BC

	arm_func_start ov00_022EA57C
ov00_022EA57C: @ 0x022EA57C
	push {r3, r4, r5, lr}
	mov r5, r0
	bl ov00_022EC1C0
	str r5, [r0, #0x20c]
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl ov00_022E2194
	movs r4, r0
	beq _022EA5D0
	bl ov00_022EC1C0
	mov r1, #2
	strb r1, [r0, #0x1a8]
	ldr r0, [r4]
	bl ov00_0230E384
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, #1
	pop {r3, r4, r5, pc}
_022EA5D0:
	bl ov00_022EC1C0
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl ov00_022E69C0
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov00_022EA57C

	arm_func_start ov00_022EA5EC
ov00_022EA5EC: @ 0x022EA5EC
	push {r3, lr}
	bl ov00_022EC1C0
	mov r1, #2
	strb r1, [r0, #0x1a8]
	bl ov00_022EC1C0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl ov00_0230E3A4
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	pop {r3, pc}
	arm_func_end ov00_022EA5EC

	arm_func_start ov00_022EA61C
ov00_022EA61C: @ 0x022EA61C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x108
	mov r7, #0
	mov sl, r0
	arm_func_end ov00_022EA61C

	arm_func_start ov00_022EA62C
ov00_022EA62C: @ 0x022EA62C
	mov r8, r7
	mov sb, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022EA6A4
	add r4, sp, #0x88
	add r5, sp, #8
	mov r6, sb
_022EA650:
	bl ov00_022EC1C0
	add r0, r0, sb
	ldrb r0, [r0, #0x2d0]
	tst sl, r6, lsl r0
	beq _022EA67C
	bl ov00_022EC1C0
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	b _022EA690
_022EA67C:
	bl ov00_022EC1C0
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
_022EA690:
	add sb, sb, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp sb, r0
	ble _022EA650
_022EA6A4:
	cmp r8, #0
	mov sl, #0
	ble _022EA6FC
	add sb, sp, #0x88
	mov r6, #0x10
	add r5, sp, #8
	mov r4, sl
_022EA6C0:
	ldr r1, [r5, sl, lsl #2]
	str sb, [sp]
	mov r0, r6
	mov r2, r4
	mov r3, r4
	str r7, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0x108
	movne r0, #0
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	add sl, sl, #1
	cmp sl, r8
	blt _022EA6C0
_022EA6FC:
	bl ov00_022EC1C0
	mov r1, #2
	strb r1, [r0, #0x1a8]
	cmp r7, #0
	mov r6, #0
	ble _022EA740
	add r5, sp, #0x88
	mov r4, r6
_022EA71C:
	ldr r0, [r5, r6, lsl #2]
	mov r1, r4
	bl ov00_022EB094
	cmp r0, #0xff
	beq _022EA734
	bl ov00_022E1EB4
_022EA734:
	add r6, r6, #1
	cmp r6, r7
	blt _022EA71C
_022EA740:
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, #1
	add sp, sp, #0x108
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov00_022EA62C

	arm_func_start ov00_022EA758
ov00_022EA758: @ 0x022EA758
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	beq _022EA77C
	cmp r4, #3
	beq _022EA7F4
	b _022EA818
_022EA77C:
	bl ov00_022EC1C0
	mov r6, r0
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	mov r6, #1
	cmp r5, r0
	moveq r0, #1
	strbeq r0, [sp]
	movne r0, #0
	strbne r0, [sp]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blo _022EA818
_022EA7BC:
	bl ov00_022EC1C0
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	cmp r5, r0
	strbeq r6, [sp, #1]
	strbeq r5, [sp, #2]
	beq _022EA818
	add r0, r6, #1
	and r6, r0, #0xff
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	bls _022EA7BC
	b _022EA818
_022EA7F4:
	bl ov00_022EC1C0
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	strb r0, [sp]
	bl ov00_022EC1C0
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	asr r0, r0, #8
	strb r0, [sp, #1]
_022EA818:
	add r2, sp, #0
	mov r0, r4
	mov r1, r5
	mov r3, #4
	bl ov00_022EC4F0
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022EA758

	arm_func_start ov00_022EA848
ov00_022EA848: @ 0x022EA848
	push {r3, r4, r5, r6, r7, lr}
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _022EA87C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _022EA87C
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x11
	bne _022EA8C0
_022EA87C:
	bl FUN_0207AE44
	mov r4, r0
	mov r5, r1
	bl ov00_022EC1C0
	ldr r1, [r0, #0x1e0]
	ldr r0, [r0, #0x1e4]
	subs r3, r4, r1
	sbc r0, r5, r0
	lsl r1, r0, #6
	ldr r2, _022EAAB0 @ =0x000082EA
	orr r1, r1, r3, lsr #26
	lsl r0, r3, #6
	mov r3, #0
	bl FUN_0208FE3C
	mov r4, r0
	mov r5, r1
	b _022EA8C8
_022EA8C0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022EA8C8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _022EA8EC
	cmp r0, #0x10
	beq _022EA958
	cmp r0, #0x11
	beq _022EAA88
	b _022EAAA8
_022EA8EC:
	ldr r0, _022EAAB4 @ =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _022EAAA8
	bl ov00_022E1FC0
	cmp r0, #5
	bne _022EA934
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _022EA934
	bl ov00_022EC1C0
	ldr r0, [r0, #0xf4]
	bl ov00_022E9900
	cmp r0, #0
	bne _022EAAA8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022EA934:
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x2d0]
	mov r1, #3
	bl ov00_022EA758
	b _022EAAA8
_022EA958:
	ldr r0, _022EAAB4 @ =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _022EAAA8
	bl ov00_022EC1C0
	ldrb r1, [r0, #0x1ab]
	add r1, r1, #1
	strb r1, [r0, #0x1ab]
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x1ab]
	cmp r0, #5
	bls _022EAA20
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022EA9A8
	bl ov00_022EC1C0
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _022EA9B8
_022EA9A8:
	bl ov00_022EA5EC
	mov r0, #1
	bl ov00_022EA388
	b _022EAAA8
_022EA9B8:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x1d4]
	bl ov00_022EA61C
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _022EAA04
	bl ov00_022EC1C0
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	b _022EAAA8
_022EAA04:
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	bl ov00_022E96E4
	cmp r0, #0
	bne _022EAAA8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022EAA20:
	mov r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _022EAAA8
	mov r5, #2
	mov r6, r4
_022EAA3C:
	bl ov00_022EC1C0
	mov r7, r0
	bl ov00_022EC1C0
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r7, #0x1d4]
	tst r1, r6, lsl r0
	bne _022EAA70
	bl ov00_022EC1C0
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	mov r1, r5
	bl ov00_022EA758
_022EAA70:
	add r4, r4, #1
	bl ov00_022EC1C0
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _022EAA3C
	b _022EAAA8
_022EAA88:
	bl ov00_022EC1C0
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r5, r0, asr #31
	cmpeq r4, r0
	bls _022EAAA8
	mov r0, #4
	bl ov00_022E9AA4
_022EAAA8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EAAB0: .4byte 0x000082EA
_022EAAB4: .4byte 0x00001770
	arm_func_end ov00_022EA848

	arm_func_start ov00_022EAAB8
ov00_022EAAB8: @ 0x022EAAB8
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	cmp r5, #0xd
	mov r6, r0
	movne r4, #0
	bne _022EAAE4
	bl ov00_022EC1C0
	ldr r0, [r0, #0x20c]
	mov r4, #1
	str r0, [sp, #8]
_022EAAE4:
	add r0, sp, #8
	str r0, [sp]
	mov r2, #0
	mov r0, r5
	mov r1, r6
	mov r3, r2
	str r4, [sp, #4]
	bl ov00_022E78AC
	bl ov00_022E9108
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #0
	popne {r3, r4, r5, r6, pc}
	bl ov00_022EC1C0
	mov r4, r0
	bl FUN_0207AE44
	str r0, [r4, #0x1e8]
	str r1, [r4, #0x1ec]
	mov r0, #1
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov00_022EAAB8

	arm_func_start ov00_022EAB38
ov00_022EAB38: @ 0x022EAB38
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov00_022E1FC0
	cmp r0, #6
	movne r0, #1
	popne {r4, r5, r6, pc}
	cmp r5, #0xd
	beq _022EAB74
	cmp r5, #0xe
	beq _022EABB0
	cmp r5, #0xf
	beq _022EAD38
	b _022EAD50
_022EAB74:
