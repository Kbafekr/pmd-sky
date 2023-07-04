	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"

	.text

	arm_func_start ov31_02382820
ov31_02382820: @ 0x02382820
	push {r3, lr}
	ldr r0, _0238285C @ =0x02389DB4
	bl FUN_020348E4
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0x10
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02382860 @ =0x0238A260
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #4]
	mov r0, #0xa
	str r0, [r1, #4]
	pop {r3, pc}
	.align 2, 0
_0238285C: .4byte 0x02389DB4
_02382860: .4byte 0x0238A260
	arm_func_end ov31_02382820

	arm_func_start ov31_02382864
ov31_02382864: @ 0x02382864
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x254
	mov sl, r0
	bl FUN_022E9580
	arm_func_end ov31_02382864

	arm_func_start ov31_02382874
ov31_02382874: @ 0x02382874
	ldr r4, [r0, #0xb4]
	sub r2, sp, #4
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	str r0, [sp, #0x228]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x4c]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	str r0, [sp, #0x22c]
	ldr r0, _02382AA0 @ =0x000008B2
	bl FUN_020258C4
	add r1, sp, #0x204
	mov r2, r0
	str r1, [sp]
	add r0, sp, #0x104
	mov r1, #0x100
	mov r3, #0
	bl FUN_020223F0
	mov r0, sl
	mov r1, #0x73
	mov r2, #0
	add r3, sp, #0x104
	bl FUN_02026214
	bl FUN_0200ECFC
	str r0, [sp, #0x228]
	ldr r0, _02382AA4 @ =0x000008B5
	bl FUN_020258C4
	add r1, sp, #0x204
	mov r2, r0
	str r1, [sp]
	add r0, sp, #0x104
	mov r1, #0x100
	mov r3, #0
	bl FUN_020223F0
	mov r0, sl
	mov r1, #0x73
	mov r2, #0xc
	add r3, sp, #0x104
	bl FUN_02026214
	mov r0, #0
	bl FUN_02334D08
	str r0, [sp, #0x204]
	ldr r0, _02382AA8 @ =0x000008B6
	bl FUN_020258C4
	add r1, sp, #0x204
	mov r2, r0
	str r1, [sp]
	add r0, sp, #0x104
	mov r1, #0x100
	mov r3, #0
	bl FUN_020223F0
	add r3, sp, #0x104
	mov r0, sl
	mov r1, #0x73
	mov r2, #0x18
	bl FUN_02026214
	bl FUN_0204F9E0
	str r0, [sp, #0x228]
	ldr r0, _02382AAC @ =0x000008B7
	bl FUN_020258C4
	arm_func_end ov31_02382874

	arm_func_start ov31_0238298C
ov31_0238298C: @ 0x0238298C
	add r1, sp, #0x204
	mov r2, r0
	str r1, [sp]
	ldr r3, _02382AB0 @ =0x0000C402
	add r0, sp, #0x104
	arm_func_end ov31_0238298C

	arm_func_start ov31_023829A0
ov31_023829A0: @ 0x023829A0
	mov r1, #0x100
	bl FUN_020223F0
	mov r0, sl
	mov r1, #0x73
	mov r2, #0x24
	add r3, sp, #0x104
	bl FUN_02026214
	mov r7, #0
	mov r8, r7
	add r6, sp, #4
	ldr r5, _02382AB4 @ =0x000003E7
	arm_func_end ov31_023829A0

	arm_func_start ov31_023829CC
ov31_023829CC: @ 0x023829CC
	add r4, sp, #0x204
	ldr fp, _02382AB8 @ =0x02353538
	b _02382A88
_023829D8:
	ldr r0, [fp]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r1, [r0, #0xb28]
	cmp r1, #0
	moveq r0, #0
	beq _02382A08
	ldr r0, [r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_02382A08:
	cmp r0, #0
	beq _02382A84
	ldr sb, [r1, #0xb4]
	mov r0, r6
	mov r2, #0
	bl FUN_022E2A78
	str r6, [sp, #0x23c]
	ldrsh r0, [sb, #0x10]
	str r0, [sp, #0x228]
	ldrsh r1, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	arm_func_end ov31_023829CC

	arm_func_start ov31_02382A34
ov31_02382A34: @ 0x02382A34
	add r0, r1, r0
	cmp r0, r5
	movgt r0, r5
	str r0, [sp, #0x22c]
	ldr r0, _02382ABC @ =0x000008B8
	bl FUN_020258C4
	mov r2, r0
	add r0, sp, #0x104
	mov r1, #0x100
	mov r3, #0
	str r4, [sp]
	bl FUN_020223F0
	mov r0, sl
	mov r1, #4
	mov r2, r7
	add r3, sp, #0x104
	bl FUN_02026214
	add r7, r7, #0xc
	cmp r7, #0x30
	bge _02382A90
_02382A84:
	add r8, r8, #1
_02382A88:
	cmp r8, #4
	blt _023829D8
_02382A90:
	mov r0, sl
	bl FUN_02027AF0
	add sp, sp, #0x254
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02382AA0: .4byte 0x000008B2
_02382AA4: .4byte 0x000008B5
_02382AA8: .4byte 0x000008B6
_02382AAC: .4byte 0x000008B7
_02382AB0: .4byte 0x0000C402
_02382AB4: .4byte 0x000003E7
_02382AB8: .4byte 0x02353538
_02382ABC: .4byte 0x000008B8
	arm_func_end ov31_02382A34

	arm_func_start ov31_02382AC0
ov31_02382AC0: @ 0x02382AC0
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x54
	ldr r1, _02382B4C @ =0x02353538
	mov r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, #0x748]
	orr r0, r0, #0x40000
	str r0, [sp, #0x14]
	ldrb r0, [r1, #0x749]
	str r0, [sp, #0x28]
	bl FUN_02025888
	add r5, sp, #4
	ldr r2, _02382B50 @ =0x02389E14
	mov r1, #0x400
	mov r3, #0
	mov r6, r0
	str r5, [sp]
	bl FUN_020223F0
	mov r0, r4
	bl FUN_020275F8
	mov r5, r0
	mov r0, r6
	bl FUN_020265A8
	ldrb r1, [r5, #6]
	mov r3, r6
	mov r2, #2
	rsb r0, r0, r1, lsl #3
	add r0, r0, r0, lsr #31
	asr r1, r0, #1
	mov r0, r4
	bl FUN_02026214
	mov r0, r4
	bl FUN_02027AF0
	add sp, sp, #0x54
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02382B4C: .4byte 0x02353538
_02382B50: .4byte 0x02389E14
	arm_func_end ov31_02382AC0
_02382B54:
	.byte 0x00, 0x40, 0x2D, 0xE9, 0x9C, 0xD0, 0x4D, 0xE2, 0x28, 0x02, 0x9F, 0xE5
	.byte 0x00, 0x20, 0x90, 0xE5, 0x04, 0x10, 0x92, 0xE5, 0x03, 0x00, 0x51, 0xE3, 0x01, 0xF1, 0x8F, 0x90
	.byte 0x82, 0x00, 0x00, 0xEA, 0x02, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA, 0x3A, 0x00, 0x00, 0xEA
	.byte 0x74, 0x00, 0x00, 0xEA, 0x01, 0x00, 0x81, 0xE2, 0x04, 0x00, 0x82, 0xE5, 0x7B, 0x00, 0x00, 0xEA
	.byte 0x00, 0x30, 0xA0, 0xE3, 0x03, 0x20, 0xA0, 0xE1, 0x00, 0x10, 0x90, 0xE5, 0x03, 0x10, 0x81, 0xE0
	.byte 0x01, 0x30, 0x83, 0xE2, 0x08, 0x20, 0xC1, 0xE5, 0x07, 0x00, 0x53, 0xE3, 0xF9, 0xFF, 0xFF, 0xBA
	.byte 0x72, 0x9A, 0xFD, 0xEB, 0x01, 0x10, 0xA0, 0xE3, 0xBA, 0xFA, 0xFD, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x09, 0x00, 0x00, 0x0A, 0xC0, 0x01, 0x9F, 0xE5, 0x03, 0x20, 0xA0, 0xE3, 0x00, 0x10, 0x90, 0xE5
	.byte 0x08, 0x20, 0xC1, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x09, 0x20, 0xC1, 0xE5, 0x00, 0x10, 0x90, 0xE5
	.byte 0x0A, 0x20, 0xC1, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x0C, 0x20, 0xC0, 0xE5, 0x98, 0x11, 0x9F, 0xE5
	.byte 0x05, 0x00, 0xA0, 0xE3, 0x00, 0x10, 0x91, 0xE5, 0x08, 0x10, 0x81, 0xE2, 0x64, 0x10, 0x8D, 0xE5
	.byte 0xB0, 0x9C, 0xF2, 0xEB, 0x04, 0x00, 0x8D, 0xE5, 0x80, 0x01, 0x9F, 0xE5, 0x80, 0x11, 0x9F, 0xE5
	.byte 0x80, 0x31, 0x9F, 0xE5, 0x04, 0x20, 0x8D, 0xE2, 0x6B, 0x9E, 0xF2, 0xEB, 0x68, 0x21, 0x9F, 0xE5
	.byte 0x74, 0x11, 0x9F, 0xE5, 0x00, 0x20, 0x92, 0xE5, 0x00, 0x00, 0xC2, 0xE5, 0x6C, 0x01, 0x9F, 0xE5

	arm_func_start ov31_02382C30
ov31_02382C30: @ 0x02382C30
	bl FUN_0202F8C4
	ldr r2, _02382D8C @ =0x0238A260
	ldr r1, _02382DA4 @ =ov31_02382AC0
	ldr r2, [r2]
	strb r0, [r2, #2]
	ldr r0, _02382DA8 @ =0x02389DA4
	bl FUN_0202F8C4
	ldr r1, _02382D8C @ =0x0238A260
	ldr r2, [r1]
	strb r0, [r2, #1]
	ldr r1, [r1]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	arm_func_end ov31_02382C30

	arm_func_start ov31_02382D80
ov31_02382D80: @ 0x02382C68
	b _02382D80
	arm_func_end ov31_02382D80
_02382C6C:
	.byte 0xD0, 0x00, 0xD2, 0xE1
	.byte 0xB2, 0x9F, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x28, 0x00, 0x00, 0x0A, 0x08, 0x01, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0xD0, 0x00, 0xD0, 0xE1, 0xBC, 0x9F, 0xF2, 0xEB, 0xFF, 0x10, 0x00, 0xE2
	.byte 0x05, 0x00, 0xA0, 0xE3, 0x8F, 0x9C, 0xF2, 0xEB, 0x00, 0x10, 0x8D, 0xE2, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x6D, 0x0D, 0xF2, 0xEB, 0xB0, 0x00, 0xDD, 0xE1, 0x01, 0x0B, 0x10, 0xE3, 0x33, 0x00, 0x00, 0x0A
	.byte 0x32, 0x9A, 0xFD, 0xEB, 0x01, 0x10, 0xA0, 0xE3, 0x7A, 0xFA, 0xFD, 0xEB, 0x00, 0x00, 0x50, 0xE3
	.byte 0x2E, 0x00, 0x00, 0x1A, 0xC0, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0xAE, 0x9F, 0xF2, 0xEB, 0xAC, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0xD1, 0xA0, 0xF2, 0xEB, 0x9C, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD1, 0x00, 0xD0, 0xE1, 0x16, 0xB3, 0xF2, 0xEB, 0x8C, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD2, 0x00, 0xD0, 0xE1, 0x12, 0xB3, 0xF2, 0xEB, 0x7C, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5
	.byte 0x04, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x04, 0x00, 0x81, 0xE5, 0x17, 0x00, 0x00, 0xEA
	.byte 0x64, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0xD1, 0x00, 0xD0, 0xE1, 0x08, 0xB3, 0xF2, 0xEB
	.byte 0x54, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0xD2, 0x00, 0xD0, 0xE1, 0x04, 0xB3, 0xF2, 0xEB
	.byte 0x44, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x04, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2
	.byte 0x04, 0x00, 0x81, 0xE5, 0x09, 0x00, 0x00, 0xEA, 0xD0, 0x00, 0xD2, 0xE1, 0x93, 0x9F, 0xF2, 0xEB
	.byte 0x24, 0x10, 0x9F, 0xE5, 0x04, 0x00, 0x81, 0xE5, 0x00, 0x20, 0x91, 0xE5, 0x04, 0x00, 0xA0, 0xE3
	.byte 0x04, 0x10, 0x92, 0xE5, 0x01, 0x10, 0x81, 0xE2, 0x04, 0x10, 0x82, 0xE5, 0x00, 0x00, 0x00, 0xEA
_02382D80:
	mov r0, #1
	add sp, sp, #0x9c
	ldm sp!, {pc}
	.align 2, 0
_02382D8C: .4byte 0x0238A260
_02382D90:
	.byte 0x94, 0x9D, 0x38, 0x02, 0x33, 0x02, 0x00, 0x00, 0xD4, 0x9D, 0x38, 0x02, 0x64, 0x28, 0x38, 0x02
	.byte 0xC4, 0x9D, 0x38, 0x02
_02382DA4: .4byte ov31_02382AC0
_02382DA8: .4byte 0x02389DA4

	arm_func_start ov31_02382DAC
ov31_02382DAC: @ 0x02382DAC
	push {r3, lr}
	ldr r0, _02382E04 @ =0x0238A260
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	ldrsb r0, [r0, #1]
	bl FUN_0202F8FC
	ldr r0, _02382E04 @ =0x0238A260
	ldr r0, [r0]
	ldrsb r0, [r0, #2]
	bl FUN_0202F8FC
	ldr r0, _02382E04 @ =0x0238A260
	ldr r0, [r0]
	ldrsb r0, [r0]
	bl FUN_0202AABC
	ldr r0, _02382E04 @ =0x0238A260
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02382E04 @ =0x0238A260
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02382E04: .4byte 0x0238A260
	arm_func_end ov31_02382DAC

	arm_func_start ov31_02382E08
ov31_02382E08: @ 0x02382E08
	ldr r0, _02382E14 @ =0x0238A260
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_02382E14: .4byte 0x0238A260
	arm_func_end ov31_02382E08

	arm_func_start ov31_02382E18
ov31_02382E18: @ 0x02382E18
	push {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	mov r8, r1
	mov r0, #6
	mov r1, #0
	bl FUN_022EA428
	mov r0, #0x62
	bl FUN_022E9FE0
	mov r0, #0x62
	bl FUN_022E9FE0
	mov r0, r4
	bl ov31_02382ED4
	mov r5, #0
	mov r6, #1
	mov r7, #0x62
	ldr r4, _02382ED0 @ =0x0238A2A0
	b _02382E64
_02382E5C:
	mov r0, r7
	bl FUN_022E9FE0
_02382E64:
	ldr r0, [r4, #4]
	cmp r0, #0
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	bne _02382E5C
	mov r0, #0x62
	bl FUN_022E9FE0
	bl FUN_022F0B9C
	cmp r0, #0
	beq _02382EA0
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	b _02382EC4
_02382EA0:
	cmp r8, #0
	beq _02382EB8
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	b _02382EC4
_02382EB8:
	mov r0, #0
	mov r1, r0
	bl FUN_022EA428
_02382EC4:
	mov r0, #1
	bl FUN_022E0C2C
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02382ED0: .4byte 0x0238A2A0
	arm_func_end ov31_02382E18

	arm_func_start ov31_02382ED4
ov31_02382ED4: @ 0x02382ED4
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02382F60 @ =0x02389E30
	bl FUN_020348E4
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0x18
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02382F64 @ =0x0238A2A0
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r0, #4]
	ldr r0, [r1, #4]
	str r5, [r0, #8]
	ldr r0, [r1, #4]
	str r2, [r0, #0xc]
	ldr r0, [r1, #4]
	str r2, [r0, #0x10]
	bl FUN_022E03B0
	mov r4, #0
	cmp r0, #2
	moveq r4, #2
	beq _02382F50
	cmp r0, #1
	moveq r4, #1
	beq _02382F50
	add r0, r5, #4
	bl FUN_02338708
	cmp r0, #0
	movne r4, #3
_02382F50:
	ldr r0, _02382F64 @ =0x0238A2A0
	ldr r0, [r0, #4]
	str r4, [r0, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02382F60: .4byte 0x02389E30
_02382F64: .4byte 0x0238A2A0
	arm_func_end ov31_02382ED4

	arm_func_start ov31_02382F68
ov31_02382F68: @ 0x02382F68
	push {r4, lr}
	ldr r1, _02382FB4 @ =0x0238A2A0
	ldr r2, _02382FB8 @ =0x02389E22
	ldr r1, [r1, #4]
	mov r4, r0
	ldr r0, [r1, #0x14]
	lsl r0, r0, #2
	ldrh r0, [r2, r0]
	bl FUN_020258C4
	mov r3, r0
	ldr ip, _02382FB4 @ =0x0238A2A0
	mov r0, r4
	mov r1, #0x10
	mov r2, #0x12
	str r3, [ip]
	bl FUN_02026214
	mov r0, r4
	bl FUN_02027AF0
	pop {r4, pc}
	.align 2, 0
_02382FB4: .4byte 0x0238A2A0
_02382FB8: .4byte 0x02389E22
	arm_func_end ov31_02382F68
_02382FBC:
	.byte 0x10, 0x40, 0x2D, 0xE9
	.byte 0x4E, 0xDF, 0x4D, 0xE2, 0x4C, 0x02, 0x9F, 0xE5, 0x04, 0x10, 0x90, 0xE5, 0x0C, 0x00, 0x91, 0xE5
	.byte 0x05, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x8B, 0x00, 0x00, 0xEA, 0x04, 0x00, 0x00, 0xEA
	.byte 0x29, 0x00, 0x00, 0xEA, 0x88, 0x00, 0x00, 0xEA, 0x60, 0x00, 0x00, 0xEA, 0x7A, 0x00, 0x00, 0xEA
	.byte 0x85, 0x00, 0x00, 0xEA, 0x14, 0x20, 0x91, 0xE5, 0x1C, 0x32, 0x9F, 0xE5, 0x1C, 0x02, 0x9F, 0xE5
	.byte 0x82, 0x32, 0x83, 0xE0, 0x18, 0x12, 0x9F, 0xE5, 0x00, 0x20, 0xA0, 0xE3, 0x6E, 0x9D, 0xF2, 0xEB
	.byte 0x00, 0x12, 0x9F, 0xE5, 0x0C, 0x32, 0x9F, 0xE5, 0x04, 0x40, 0x91, 0xE5, 0x10, 0x20, 0xA0, 0xE3
	.byte 0x01, 0x00, 0xC4, 0xE5, 0x04, 0x00, 0x91, 0xE5, 0x00, 0x40, 0xA0, 0xE3, 0x14, 0x10, 0x90, 0xE5
	.byte 0xF4, 0x01, 0x9F, 0xE5, 0x01, 0x11, 0xA0, 0xE1, 0xB1, 0x30, 0x93, 0xE1, 0xAC, 0x20, 0x8D, 0xE5
	.byte 0xE8, 0x11, 0x9F, 0xE5, 0xB8, 0x3A, 0xCD, 0xE1, 0x00, 0x40, 0x8D, 0xE5, 0xE0, 0x31, 0x9F, 0xE5
	.byte 0xA0, 0x20, 0x8D, 0xE2, 0x04, 0x40, 0x8D, 0xE5, 0x55, 0xB5, 0xF2, 0xEB, 0xB4, 0x21, 0x9F, 0xE5
	.byte 0x04, 0x10, 0xA0, 0xE1, 0x04, 0x30, 0x92, 0xE5, 0x00, 0x00, 0xC3, 0xE5, 0x04, 0x00, 0x92, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0xCA, 0xB5, 0xF2, 0xEB, 0x98, 0x01, 0x9F, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x04, 0x00, 0x90, 0xE5, 0x0C, 0x10, 0x80, 0xE5, 0x5F, 0x00, 0x00, 0xEA, 0xD1, 0x00, 0xD1, 0xE1
	.byte 0xAA, 0x9E, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x5B, 0x00, 0x00, 0x1A, 0x74, 0x01, 0x9F, 0xE5
	.byte 0x04, 0x00, 0x90, 0xE5, 0xD1, 0x00, 0xD0, 0xE1, 0xC0, 0x9E, 0xF2, 0xEB, 0x64, 0x11, 0x9F, 0xE5
	.byte 0x04, 0x10, 0x91, 0xE5, 0x04, 0x00, 0x81, 0xE5, 0x73, 0x00, 0x00, 0xEB, 0x54, 0x01, 0x9F, 0xE5
	.byte 0x04, 0x10, 0x90, 0xE5, 0x04, 0x00, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x06, 0x00, 0x50, 0xE3
	.byte 0x00, 0xF1, 0x8F, 0x90, 0x4C, 0x00, 0x00, 0xEA, 0x22, 0x00, 0x00, 0xEA, 0x4A, 0x00, 0x00, 0xEA
	.byte 0x03, 0x00, 0x00, 0xEA, 0x02, 0x00, 0x00, 0xEA, 0x01, 0x00, 0x00, 0xEA, 0x00, 0x00, 0x00, 0xEA
	.byte 0x13, 0x00, 0x00, 0xEA, 0x08, 0x10, 0x91, 0xE5, 0x38, 0x01, 0x9F, 0xE5, 0xB4, 0x40, 0x91, 0xE5
	.byte 0xB0, 0x10, 0xD0, 0xE1, 0x4A, 0x00, 0x84, 0xE2, 0xBE, 0xA0, 0xFD, 0xEB, 0x00, 0x00, 0xA0, 0xE3
	.byte 0x4E, 0x00, 0xC4, 0xE5, 0xB0, 0x05, 0xC4, 0xE1, 0xB2, 0x05, 0xC4, 0xE1, 0x54, 0x00, 0xC4, 0xE5
	.byte 0xB6, 0x05, 0xC4, 0xE1, 0xB8, 0x05, 0xC4, 0xE1, 0x14, 0x99, 0xFD, 0xEB, 0xB4, 0x00, 0x90, 0xE5
	.byte 0x26, 0x10, 0xA0, 0xE3, 0x4A, 0x00, 0x80, 0xE2, 0xB2, 0xA0, 0xFD, 0xEB, 0x04, 0x00, 0xA0, 0xE3
	.byte 0x32, 0x00, 0x00, 0xEA, 0x50, 0x00, 0x00, 0xEB, 0xC8, 0x00, 0x9F, 0xE5, 0x02, 0x30, 0xA0, 0xE3
	.byte 0x04, 0x20, 0x90, 0xE5, 0x03, 0x10, 0xA0, 0xE3, 0x10, 0x30, 0x82, 0xE5, 0x04, 0x00, 0x90, 0xE5
	.byte 0x0C, 0x10, 0x80, 0xE5, 0x28, 0x00, 0x00, 0xEA, 0x04, 0x00, 0xA0, 0xE3, 0x27, 0x00, 0x00, 0xEA
	.byte 0x10, 0x00, 0x91, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x01, 0x00, 0x40, 0x12, 0x10, 0x00, 0x81, 0x15
	.byte 0x21, 0x00, 0x00, 0x1A, 0x10, 0x00, 0xA0, 0xE3, 0x14, 0x00, 0x8D, 0xE5, 0x14, 0x10, 0x91, 0xE5
	.byte 0x90, 0x00, 0x9F, 0xE5, 0x01, 0x11, 0xA0, 0xE1, 0xB1, 0x10, 0x90, 0xE1, 0x01, 0xC0, 0xA0, 0xE3
	.byte 0x94, 0x00, 0x9F, 0xE5, 0xB0, 0x11, 0xCD, 0xE1, 0x00, 0xC0, 0x8D, 0xE5, 0x8C, 0x10, 0x9F, 0xE5
	.byte 0x8C, 0x30, 0x9F, 0xE5, 0x08, 0x20, 0x8D, 0xE2, 0x04, 0xC0, 0x8D, 0xE5, 0xFC, 0xB4, 0xF2, 0xEB
	.byte 0x50, 0x10, 0x9F, 0xE5, 0x04, 0x20, 0xA0, 0xE3, 0x04, 0x30, 0x91, 0xE5, 0x02, 0x00, 0xC3, 0xE5
	.byte 0x04, 0x00, 0x91, 0xE5, 0x0C, 0x20, 0x80, 0xE5, 0x0B, 0x00, 0x00, 0xEA, 0xD2, 0x00, 0xD1, 0xE1
	.byte 0xB7, 0xB5, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x07, 0x00, 0x00, 0x1A, 0x24, 0x00, 0x9F, 0xE5
	.byte 0x04, 0x00, 0x90, 0xE5, 0xD2, 0x00, 0xD0, 0xE1, 0xA8, 0xB5, 0xF2, 0xEB, 0x14, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x10, 0xA0, 0xE3, 0x04, 0x00, 0x90, 0xE5, 0x0C, 0x10, 0x80, 0xE5, 0x01, 0x00, 0xA0, 0xE3
	.byte 0x4E, 0xDF, 0x8D, 0xE2, 0x10, 0x80, 0xBD, 0xE8, 0xA0, 0xA2, 0x38, 0x02, 0x70, 0x9E, 0x38, 0x02
	.byte 0x60, 0x9E, 0x38, 0x02, 0x13, 0x00, 0x40, 0x00, 0x22, 0x9E, 0x38, 0x02, 0x50, 0x9E, 0x38, 0x02
	.byte 0x13, 0x08, 0x00, 0x80, 0x68, 0x2F, 0x38, 0x02, 0x1C, 0xC9, 0x37, 0x02, 0x40, 0x9E, 0x38, 0x02
	.byte 0x12, 0x18, 0x00, 0x00, 0x48, 0x32, 0x38, 0x02, 0x10, 0x40, 0x2D, 0xE9, 0x30, 0x10, 0x9F, 0xE5
	.byte 0x30, 0x20, 0x9F, 0xE5, 0x04, 0x10, 0x91, 0xE5, 0x00, 0x40, 0xA0, 0xE1, 0x14, 0x00, 0x91, 0xE5
	.byte 0x00, 0x01, 0xA0, 0xE1, 0xB0, 0x00, 0x92, 0xE1, 0x95, 0x89, 0xF2, 0xEB, 0x00, 0x30, 0xA0, 0xE1
	.byte 0x04, 0x00, 0xA0, 0xE1, 0x04, 0x10, 0xA0, 0xE3, 0x14, 0x20, 0xA0, 0xE3, 0xE4, 0x8B, 0xF2, 0xEB
	.byte 0x10, 0x80, 0xBD, 0xE8, 0xA0, 0xA2, 0x38, 0x02, 0x20, 0x9E, 0x38, 0x02, 0x08, 0x40, 0x2D, 0xE9
	.byte 0x54, 0x00, 0x9F, 0xE5, 0x01, 0x10, 0xE0, 0xE3, 0x04, 0x00, 0x90, 0xE5, 0xD0, 0x00, 0xD0, 0xE1
	.byte 0x01, 0x00, 0x50, 0xE1, 0x04, 0x00, 0x00, 0x0A, 0x7C, 0xB5, 0xF2, 0xEB, 0x38, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x10, 0xE0, 0xE3, 0x04, 0x00, 0x90, 0xE5, 0x00, 0x10, 0xC0, 0xE5, 0x28, 0x00, 0x9F, 0xE5
	.byte 0x01, 0x10, 0xE0, 0xE3, 0x04, 0x00, 0x90, 0xE5, 0xD1, 0x00, 0xD0, 0xE1, 0x01, 0x00, 0x50, 0xE1
	.byte 0x08, 0x80, 0xBD, 0x08, 0xF8, 0x9D, 0xF2, 0xEB, 0x0C, 0x00, 0x9F, 0xE5, 0x01, 0x10, 0xE0, 0xE3
	.byte 0x04, 0x00, 0x90, 0xE5, 0x01, 0x10, 0xC0, 0xE5, 0x08, 0x80, 0xBD, 0xE8, 0xA0, 0xA2, 0x38, 0x02
	.byte 0x08, 0x40, 0x2D, 0xE9, 0x28, 0x00, 0x9F, 0xE5, 0x04, 0x00, 0x90, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x08, 0x80, 0xBD, 0x08, 0xE0, 0xFF, 0xFF, 0xEB, 0x14, 0x00, 0x9F, 0xE5, 0x04, 0x00, 0x90, 0xE5
	.byte 0x9C, 0xF7, 0xF1, 0xEB, 0x08, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x04, 0x10, 0x80, 0xE5
	.byte 0x08, 0x80, 0xBD, 0xE8, 0xA0, 0xA2, 0x38, 0x02

	arm_func_start ov31_02383328
ov31_02383328: @ 0x02383328
	push {r3, lr}
	bl FUN_0204AEA0
	ldr r1, _02383354 @ =0x0238A2A8
	ldrb r1, [r1]
	cmp r1, r0
	popeq {r3, pc}
	bl FUN_022E8708
	ldr r0, _02383358 @ =0x0238A268
	mov r1, #1
	strb r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02383354: .4byte 0x0238A2A8
_02383358: .4byte 0x0238A268
	arm_func_end ov31_02383328

	arm_func_start ov31_0238335C
ov31_0238335C: @ 0x0238335C
	push {r4, lr}
	ldr r1, _023833B0 @ =0x0238A268
	mov r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _02383390
	bl FUN_022E87DC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, _023833B0 @ =0x0238A268
	mov r1, #0
	strb r1, [r0]
_02383390:
	cmp r4, #0
	beq _0238339C
	blx r4
_0238339C:
	ldr r0, _023833B0 @ =0x0238A268
	mov r1, #0
	strb r1, [r0, #1]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_023833B0: .4byte 0x0238A268
	arm_func_end ov31_0238335C
_023833B4:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0x00, 0x00, 0x50, 0xE3, 0x00, 0x00, 0x00, 0x0A
	.byte 0x30, 0xFF, 0x2F, 0xE1, 0x08, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0xA0, 0xE3, 0x01, 0x10, 0xC0, 0xE5
	.byte 0x08, 0x80, 0xBD, 0xE8, 0x68, 0xA2, 0x38, 0x02

	arm_func_start ov31_023833D8
ov31_023833D8: @ 0x023833D8
	push {r3, lr}
	sub sp, sp, #0x98
	ldr lr, _02383424 @ =ov31_02383328
	ldr r3, _02383428 @ =0x0238A268
	mov ip, #1
	str r0, [sp, #0x88]
	strb ip, [r3, #1]
	ldr r2, _0238342C @ =ov31_0238335C
	add r1, sp, #0
	str lr, [sp, #0x84]
	mov ip, #0
	mov r0, #0x100
	strb ip, [r3]
	bl FUN_020355DC
	bl FUN_0204AEA0
	ldr r1, _02383430 @ =0x0238A2A8
	strb r0, [r1]
	add sp, sp, #0x98
	pop {r3, pc}
	.align 2, 0
_02383424: .4byte ov31_02383328
_02383428: .4byte 0x0238A268
_0238342C: .4byte ov31_0238335C
_02383430: .4byte 0x0238A2A8
	arm_func_end ov31_023833D8

	arm_func_start ov31_02383434
ov31_02383434: @ 0x02383434
	push {r3, lr}
	sub sp, sp, #0x98
	ldr ip, _02383470 @ =0x023833B4
	ldr r3, _02383474 @ =0x0238A268
	mov r1, #1
	str r0, [sp, #0x88]
	strb r1, [r3, #1]
	add r2, sp, #0
	str ip, [sp, #0x84]
	mov r0, #0
	mov r1, #0x100
	strb r0, [r3]
	bl FUN_02035CE4
	add sp, sp, #0x98
	pop {r3, pc}
	.align 2, 0
_02383470: .4byte 0x023833B4
_02383474: .4byte 0x0238A268
	arm_func_end ov31_02383434

	arm_func_start ov31_02383478
ov31_02383478: @ 0x02383478
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r4, #1
	bmi _023834AC
	ldr r0, _02383644 @ =0x0238A26C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x1000
	strb r1, [r0, #0x1f8]
_023834AC:
	ldr r0, _02383644 @ =0x0238A26C
	ldr r3, [r0]
	add r0, r3, #0x1000
	ldr r2, [r0, #0x1b4]
	cmp r2, #0
	beq _02383508
	cmp r7, #0
	blt _02383508
	ldr r1, _02383648 @ =0x020AF6B8
	mov r0, #6
	ldr r1, [r1]
	ldr r1, [r1, #0x384]
	mla r0, r7, r0, r1
	cmp r0, r2
	beq _023834F4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _02383508
_023834F4:
	add r0, r3, r7
	add r0, r0, #0x1000
	mov r1, #3
	strb r1, [r0, #0x1f8]
	mov r4, #0
_02383508:
	ldr r0, _02383644 @ =0x0238A26C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x1b2]
	cmp r0, #0
	bne _02383528
	cmp r7, #0
	bge _023835B4
_02383528:
	add r0, r1, #0x1000
	ldr r1, [r0, #0x19c]
	ldrsh r0, [r1, #4]
	ldrsh r1, [r1, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	bl FUN_022E1610
	mov r1, r0
	ldrb r0, [r1]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02383590
	ldr r2, _0238364C @ =0x02389EF0
	mov r5, #1
	mov r0, r8
	mov r3, r4
	str r5, [sp]
	bl FUN_0200D310
	ldr r0, _02383644 @ =0x0238A26C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x277]
	b _02383638
_02383590:
	ldr r1, _02383650 @ =0x02389F5C
	mov r0, r8
	bl FUN_02089694
	ldr r0, _02383644 @ =0x0238A26C
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x277]
	b _02383638
_023835B4:
	mov r0, #6
	ldr r1, _02383648 @ =0x020AF6B8
	mul r5, r7, r0
	ldr r0, [r1]
	ldr r1, [r0, #0x384]
	ldrb r0, [r1, r5]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, r1, r5
	ldrbne r1, [r0, #1]
	cmpne r1, #0
	beq _02383624
	ldr r0, _02383654 @ =0x02353538
	sub r1, r1, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl ov31_02383658
	cmp r0, #0
	bne _02383624
	ldr r0, _02383648 @ =0x020AF6B8
	ldr r0, [r0]
	ldr r0, [r0, #0x384]
	add r0, r0, r5
	bl FUN_0200D894
_02383624:
	mov r0, r8
	mov r1, r7
	mov r2, r4
	mov r3, r6
	bl FUN_022BD394
_02383638:
	mov r0, r8
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02383644: .4byte 0x0238A26C
_02383648: .4byte 0x020AF6B8
_0238364C: .4byte 0x02389EF0
_02383650: .4byte 0x02389F5C
_02383654: .4byte 0x02353538
	arm_func_end ov31_02383478

	arm_func_start ov31_02383658
ov31_02383658: @ 0x02383658
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov31_02383658

	arm_func_start ov31_0238367C
ov31_0238367C: @ 0x0238367C
	push {r4, r5, lr}
	sub sp, sp, #0x5c
	bl FUN_022E9580
	mov r1, #0
	mov r2, #0xb
	bl FUN_022EB54C
	ldrsh r1, [r0, #4]
	mov r2, #0
	add lr, sp, #0xc
	str r1, [sp, #0x1c]
	ldrh r4, [r0, #2]
	ldr r1, _02383720 @ =0x00001013
	ldr r3, _02383724 @ =0x000008E4
	str r4, [sp, #0x30]
	ldrh r4, [r0, #2]
	add r4, r4, #0xbc
	str r4, [sp, #0x24]
	str r2, [sp, #0x38]
	str lr, [sp]
	ldrsh r4, [r0, #4]
	ldr r0, _02383728 @ =0x02389EFC
	add ip, r4, #0xd1
	add r4, ip, #0x2900
	lsl ip, r4, #0x10
	lsr r4, ip, #0x10
	stmib sp, {r4, lr}
	bl FUN_0202E3CC
	mov r5, r0
	mov r4, #0x16
_023836F0:
	mov r0, r4
	bl FUN_022E9FE0
	mov r0, r5
	bl FUN_0202E6E4
	cmp r0, #0
	bne _023836F0
	mov r0, r5
	bl FUN_0202E6C8
	mov r0, #0x16
	bl FUN_022E9FE0
	add sp, sp, #0x5c
	pop {r4, r5, pc}
	.align 2, 0
_02383720: .4byte 0x00001013
_02383724: .4byte 0x000008E4
_02383728: .4byte 0x02389EFC
	arm_func_end ov31_0238367C

	arm_func_start ov31_0238372C
ov31_0238372C: @ 0x0238372C
	push {r3, lr}
	ldr r1, _02383764 @ =0x0238A26C
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x1b1]
	cmp r1, #0
	beq _0238375C
	add r0, r0, #4
	bl FUN_02337B2C
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
_0238375C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02383764: .4byte 0x0238A26C
	arm_func_end ov31_0238372C

	arm_func_start ov31_02383768
ov31_02383768: @ 0x02383768
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb r0, [r7]
	mvn r1, #1
	cmp r0, r1
	popeq {r3, r4, r5, r6, r7, pc}
	bl FUN_022BCD10
	cmp r0, #0
	beq _023837B4
	mvn r4, #3
	sub r5, r4, #1
	mov r6, #0x62
_02383798:
	mov r0, r6
	bl FUN_022E9FE0
	ldrsb r0, [r7]
	bl FUN_020282F4
	cmp r0, r5
	cmpne r0, r4
	bne _02383798
_023837B4:
	ldrsb r0, [r7]
	bl FUN_022BCCF4
	mvn r0, #1
	strb r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov31_02383768

	arm_func_start ov31_023837C8
ov31_023837C8: @ 0x023837C8
	push {r3, lr}
	ldr r0, _02383850 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x92
	add r0, r0, #0x1100
	bl FUN_0234E988
	ldr r0, _02383850 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x94]
	cmp r0, r1
	beq _02383800
	bl FUN_0202F918
_02383800:
	ldr r0, _02383850 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x95]
	cmp r0, r1
	beq _02383820
	bl FUN_0202F918
_02383820:
	ldr r0, _02383850 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x93
	add r0, r0, #0x1100
	bl ov31_02383768
	ldr r0, _02383850 @ =0x0238A26C
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02383850 @ =0x0238A26C
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02383850: .4byte 0x0238A26C
	arm_func_end ov31_023837C8

	arm_func_start ov31_02383854
ov31_02383854: @ 0x02383854
	push {r4, lr}
	mov r4, r0
	ldr r0, _0238387C @ =0x000008E6
	bl FUN_020258C4
	mov r1, #2
	mov r3, r0
	mov r0, r4
	mov r2, r1
	bl FUN_02026214
	pop {r4, pc}
	.align 2, 0
_0238387C: .4byte 0x000008E6
	arm_func_end ov31_02383854

	arm_func_start ov31_02383880
ov31_02383880: @ 0x02383880
	push {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r7, r0
	add r0, r5, #1
	ldr r8, _023838E0 @ =0x02353538
	strb r5, [r7]
	and r6, r0, #0xff
	mov r4, r5
_023838A0:
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl ov31_02383658
	cmp r0, #0
	addeq r0, r7, r5
	strbeq r4, [r0, #1]
	addne r0, r7, r5
	addne r1, r6, #1
	strbne r6, [r0, #1]
	add r5, r5, #1
	andne r6, r1, #0xff
	cmp r5, #4
	blt _023838A0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023838E0: .4byte 0x02353538
	arm_func_end ov31_02383880

	arm_func_start ov31_023838E4
ov31_023838E4: @ 0x023838E4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x234
	sub sp, sp, #0x400
	mov r2, #0
	mov r5, r2
	str r2, [sp, #0x30]
	mov sl, r0
	mov sb, r1
	mov r6, r5
	ldr r7, [sl, #0xb4]
	bl FUN_022EBB4C
	mov r0, #0x1280
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02384898 @ =0x0238A26C
	mvn r4, #1
	str r0, [r1]
	add r0, r0, #0x1000
	str sl, [r0, #0x19c]
	ldr r0, [r1]
	add r3, r4, #1
	add r0, r0, #0x1000
	strb r4, [r0, #0x193]
	ldr r0, [r1]
	mov r2, #0
	add r0, r0, #0x1000
	strb r4, [r0, #0x192]
	ldr r8, [r1]
	mov r0, #1
	add r8, r8, #0x1000
	strb r4, [r8, #0x194]
	ldr r8, [r1]
	add r8, r8, #0x1000
	strb r4, [r8, #0x195]
	ldr r4, [r1]
	add r4, r4, #0x1000
	str r3, [r4, #0x198]
	ldr r3, [r1]
	add r3, r3, #0x1000
	str r2, [r3, #0x1ac]
	ldr r3, [r1]
	add r3, r3, #0x1000
	strb r0, [r3, #0x1b1]
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r2, [r0, #0x1b2]
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x1b4]
	ldr r0, [r1]
	add r0, r0, #0x278
	add r0, r0, #0x1000
	bl ov31_02383880
	cmp sb, #0
	beq _02383A1C
	ldrb r0, [sb]
	cmp r0, #0
	beq _023839E4
	ldr r0, _02384898 @ =0x0238A26C
	ldr r1, [sb, #4]
	ldr r0, [r0]
	mov r6, #1
	add r0, r0, #0x1000
	str r1, [r0, #0x1b4]
_023839E4:
	ldrb r0, [sb, #1]
	cmp r0, #0
	ldreq r0, _02384898 @ =0x0238A26C
	moveq r1, #0
	ldreq r0, [r0]
	addeq r0, r0, #0x1000
	strbeq r1, [r0, #0x1b1]
	ldrb r0, [sb, #2]
	cmp r0, #0
	ldrne r0, _02384898 @ =0x0238A26C
	movne r1, #1
	ldrne r0, [r0]
	addne r0, r0, #0x1000
	strbne r1, [r0, #0x1b2]
_02383A1C:
	mov r0, #3
	bl FUN_02029EC8
	mov r1, r0
	ldr r0, _0238489C @ =0x02389F64
	bl FUN_0200C1FC
	bl FUN_0200EDFC
	ldr r2, _02384898 @ =0x0238A26C
	cmp r6, #0
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #0x1a8]
	ldrne r0, [r2]
	movne r1, #0
	addne r0, r0, #0x1000
	strbne r1, [r0, #0x1b3]
	bne _02383A74
	mov r0, sl
	bl ov31_0238372C
	ldr r1, _02384898 @ =0x0238A26C
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x1b3]
_02383A74:
	ldr r0, _02384898 @ =0x0238A26C
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldrb r1, [r0, #0x1b2]
	cmp r1, #0
	ldreq r1, [r0, #0x1a8]
	cmpeq r1, #0
	ldrbeq r0, [r0, #0x1b3]
	cmpeq r0, #0
	bne _02383AC4
	ldr r1, _023848A0 @ =0x000008E5
	mov r0, #0
	mov r2, #1
	bl FUN_0234D258
	bl ov31_023837C8
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #1
	b _0238511C
_02383AC4:
	add r0, r2, #0x1000
	ldr r0, [r0, #0x1a8]
	cmp r0, #0
	bne _02383B08
	mov r0, sl
	bl ov31_0238372C
	ldr r2, _02384898 @ =0x0238A26C
	mov r3, #1
	ldr r1, [r2]
	add r1, r1, #0x1000
	strb r0, [r1, #0x1b3]
	ldr r0, [r2]
	add r0, r0, #0x1000
	strb r3, [r0, #0x1b2]
	ldr r0, [r2]
	add r0, r0, #0x1000
	strb r3, [r0, #0x1b1]
_02383B08:
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	cmp r0, r1
	beq _02383B48
	bl FUN_022BCD68
	cmp r0, #0
	bne _02383D78
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCC7C
	b _02383D78
_02383B48:
	bl FUN_0200EDFC
	ldr r4, _02384898 @ =0x0238A26C
	ldr r1, [r4]
	add r1, r1, #0x1000
	str r0, [r1, #0x1a8]
	ldr r0, [r4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x1a8]
	cmp r0, #0
	beq _02383C44
	ldr fp, _023848A4 @ =0x020AF6B8
	mov r8, #0
_02383B78:
	mov r0, #6
	mul r1, r8, r0
	ldr r0, [fp]
	ldr r2, [r0, #0x384]
	ldrb r0, [r2, r1]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02383BD8
	ldrb r0, [r2, r1]
	tst r0, #4
	beq _02383BD8
	bic r0, r0, #4
	strb r0, [r2, r1]
	ldr r1, [r4]
	mov r0, #3
	add r1, r1, #0x1000
	str r8, [r1, #0x1ac]
	ldr r1, [r4]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x1ac]
	and r1, r1, #0xff
	bl FUN_02029ED8
_02383BD8:
	add r8, r8, #1
	cmp r8, #0x32
	blt _02383B78
	ldr fp, _023848A8 @ =0x02353538
	mov r4, #0
_02383BEC:
	ldr r0, [fp]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl ov31_02383658
	cmp r0, #0
	beq _02383C38
	ldr r1, [r8, #0xb4]
	ldrb r0, [r1, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02383C38
	ldrb r0, [r1, #0x62]
	tst r0, #4
	bicne r0, r0, #4
	strbne r0, [r1, #0x62]
_02383C38:
	add r4, r4, #1
	cmp r4, #4
	blt _02383BEC
_02383C44:
	ldr r0, _02384898 @ =0x0238A26C
	ldr r4, [r0]
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x1b2]
	cmp r1, #0
	bne _02383D1C
	ldr r0, [r0, #0x1a8]
	cmp r0, #0
	beq _02383D1C
	mov r0, #3
	bl FUN_02029EC8
	ldr r2, _023848AC @ =ov31_02383478
	add r1, r4, #0x278
	str r2, [sp]
	add r1, r1, #0x1000
	str r1, [sp, #4]
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x1b3]
	ldr r1, _02384898 @ =0x0238A26C
	add r3, r4, #0x1f8
	str r2, [sp, #8]
	ldr r1, [r1]
	mov r2, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0x1a8]
	mov r1, r6
	add r3, r3, #0x1000
	bl FUN_022BD474
	ldr r1, _02384898 @ =0x0238A26C
	cmp r6, #0
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x193]
	beq _02383CEC
	ldr r0, _023848B0 @ =0x02389F1C
	ldr r1, _023848B4 @ =ov31_02383854
	bl FUN_0202F8C4
	ldr r1, _02384898 @ =0x0238A26C
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x194]
	b _02383D78
_02383CEC:
	ldr r0, _023848B8 @ =0x02389F2C
	mov r1, #0
	bl FUN_0202F8C4
	ldr r2, _02384898 @ =0x0238A26C
	mvn r3, #0
	ldr r1, [r2]
	add r1, r1, #0x1000
	strb r0, [r1, #0x195]
	ldr r0, [r2]
	add r0, r0, #0x1000
	str r3, [r0, #0x198]
	b _02383D78
_02383D1C:
	ldr r3, _023848BC @ =0x000008E3
	add r0, sp, #0x540
	add r1, r4, #0x278
	strh r3, [r0, #0x64]
	mov r2, #0x10
	str r2, [sp, #0x5a8]
	add r0, r1, #0x1000
	str r0, [sp]
	mov r4, #1
	str r4, [sp, #4]
	add r2, sp, #0x500
	str r4, [sp, #8]
	mov r4, #0
	ldr r0, _023848C0 @ =0x02389F3C
	ldr r1, _023848C4 @ =0x00400813
	ldr r3, _023848AC @ =ov31_02383478
	add r2, r2, #0x9c
	str r4, [sp, #0xc]
	bl FUN_022BCA80
	ldr r1, _02384898 @ =0x0238A26C
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x193]
_02383D78:
	mvn r0, #0
	str r0, [sp, #0x38]
	sub r0, r0, #1
	ldr r4, _02384898 @ =0x0238A26C
	str r0, [sp, #0x3c]
_02383D8C:
	mov r0, #0x14
	bl FUN_022E9FE0
	mov r0, #0
	add r1, sp, #0x42
	bl FUN_0200625C
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x1b2]
	cmp r0, #0
	bne _023843D0
	add r0, r1, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCE44
	mov fp, r0
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCE58
	str r0, [sp, #0x2c]
	ldr r0, [r4]
	add r1, r0, #0x1100
	ldrsb r8, [r1, #0x95]
	ldr r0, [sp, #0x3c]
	cmp r8, r0
	beq _02384054
	ldrsb r0, [r1, #0x93]
	bl FUN_022BCE44
	cmp r0, #0
	ldr r0, [r4]
	bne _02383F7C
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDA8
	str r0, [sp, #0x34]
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r2, [r1, #0x198]
	ldr r0, [sp, #0x34]
	cmp r2, r0
	beq _02384054
	str r0, [r1, #0x198]
	ldr r1, [r4]
	mov r0, r8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x19c]
	str r1, [sp, #0x28]
	bl FUN_02027B1C
	ldr r1, [sp, #0x34]
	mov r0, #6
	mul r2, r1, r0
	ldr r0, _023848A4 @ =0x020AF6B8
	ldr r0, [r0]
	ldr r0, [r0, #0x384]
	add r1, r0, r2
	ldrb r0, [r0, r2]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02383F28
	ldrb r0, [r1, #1]
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _02383F00
	ldr r1, _023848A8 @ =0x02353538
	add r0, sp, #0x400
	ldr r3, [r1]
	ldr r1, [sp, #0x10]
	add r0, r0, #0x4c
	add r1, r3, r1, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb24]
	mov r2, #0
	bl FUN_022E2A78
	add r0, sp, #0x400
	add r0, r0, #0x4c
	str r0, [sp, #0x584]
	add r0, sp, #0x500
	add r0, r0, #0x4c
	str r0, [sp]
	ldr r2, _023848C8 @ =0x000008E7
	add r0, sp, #0x4c
	mov r1, #0x400
	mov r3, #0
	bl FUN_020235B8
	ldr r0, _023848A8 @ =0x02353538
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, r1, r0, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb24]
	str r0, [sp, #0x28]
	b _02383F34
_02383F00:
	ldrsh r0, [r1, #4]
	add r0, r0, #0x49
	add r0, r0, #0x2f00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020258C4
	mov r1, r0
	add r0, sp, #0x4c
	bl FUN_02089694
	b _02383F34
_02383F28:
	ldr r1, _023848CC @ =0x02389F5C
	add r0, sp, #0x4c
	bl FUN_02089694
_02383F34:
	mov r1, #2
	mov r0, r8
	mov r2, r1
	add r3, sp, #0x4c
	bl FUN_02026214
	mov r0, r8
	bl FUN_02027AF0
	ldr r0, [sp, #0x28]
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	ldr r0, [sp, #0x28]
	mov r2, #1
	add r0, r0, #4
	mov r1, #0
	mov r3, r2
	bl FUN_02337428
	b _02384054
_02383F7C:
	add r0, r0, #0x1000
	ldr r1, [r0, #0x198]
	cmp r1, #0x7f
	beq _02384054
	ldr r1, [r0, #0x19c]
	ldrsh r0, [r1, #4]
	ldrsh r1, [r1, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	bl FUN_022E1610
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _02383FE4
	ldrsh r0, [r0, #4]
	add r0, r0, #0x49
	add r0, r0, #0x2f00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020258C4
	mov r1, r0
	add r0, sp, #0x4c
	bl FUN_02089694
	b _02383FF0
_02383FE4:
	ldr r1, _023848CC @ =0x02389F5C
	add r0, sp, #0x4c
	bl FUN_02089694
_02383FF0:
	mov r0, r8
	bl FUN_02027B1C
	mov r1, #2
	mov r0, r8
	mov r2, r1
	add r3, sp, #0x4c
	bl FUN_02026214
	mov r0, r8
	bl FUN_02027AF0
	ldr r0, [r4]
	mov r1, #0
	add r2, r0, #0x1000
	mov r0, #0x7f
	str r0, [r2, #0x198]
	ldr r0, [r4]
	mov r2, #1
	add r0, r0, #0x1000
	ldr r8, [r0, #0x19c]
	mov r0, r8
	bl FUN_022F98B4
	mov r2, #1
	add r0, r8, #4
	mov r1, #0
	mov r3, r2
	bl FUN_02337428
_02384054:
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCD68
	cmp r0, #0
	beq _02384088
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDA8
	and r1, r0, #0xff
	mov r0, #3
	bl FUN_02029ED8
_02384088:
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCD68
	cmp r0, #0
	bne _023841A4
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDBC
	movs r4, r0
	bmi _0238419C
	ldr r0, _02384898 @ =0x0238A26C
	and r1, r4, #0xff
	ldr r2, [r0]
	mov r0, #3
	add r2, r2, #0x1000
	str r4, [r2, #0x1ac]
	bl FUN_02029ED8
	cmp fp, #0
	bne _02384138
	ldr r1, _02384898 @ =0x0238A26C
	mov r0, #6
	ldr r1, [r1]
	mul r8, r4, r0
	add r0, r1, #0x1000
	ldrb r3, [r0, #0x1b2]
	ldr r2, _023848A4 @ =0x020AF6B8
	add r1, sl, #4
	str r3, [sp]
	ldr r2, [r2]
	ldr r0, [r0, #0x1ac]
	ldr r2, [r2, #0x384]
	mov r3, #0
	add r2, r2, r8
	ldrb r2, [r2, #1]
	bl FUN_022EBAB0
	ldr r0, _023848A4 @ =0x020AF6B8
	ldr r0, [r0]
	ldr r0, [r0, #0x384]
	add r0, r0, r8
	str r0, [sb, #4]
	b _02384194
_02384138:
	ldr r0, _02384898 @ =0x0238A26C
	add r1, sl, #4
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x1b2]
	mov r3, #1
	str r4, [sp]
	ldr r0, [r0, #0x1ac]
	bl FUN_022EBAB0
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	bl FUN_022E1610
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	strne r0, [sb, #4]
	moveq r0, #0
	streq r0, [sb, #4]
_02384194:
	mov r4, #1
	b _02384438
_0238419C:
	mov r4, #2
	b _02384438
_023841A4:
	ldrh r0, [sp, #0x42]
	tst r0, #8
	beq _023842DC
	ldr r0, _023848D0 @ =0x00003F04
	bl FUN_02017C80
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDF4
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDBC
	ldr r2, _02384898 @ =0x0238A26C
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #0x1ac]
	ldr r1, [r2]
	mov r0, #3
	add r1, r1, #0x1000
	ldr r1, [r1, #0x1ac]
	and r1, r1, #0xff
	bl FUN_02029ED8
	cmp fp, #0
	bne _02384278
	ldr r0, _02384898 @ =0x0238A26C
	ldr r3, _023848A4 @ =0x020AF6B8
	ldr r0, [r0]
	mov r2, #6
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x1b2]
	ldr r0, [r0, #0x1ac]
	add r1, sl, #4
	str r4, [sp]
	ldr r4, [r3]
	mov r3, #0
	ldr r4, [r4, #0x384]
	mla r2, r0, r2, r4
	ldrb r2, [r2, #1]
	bl FUN_022EBAB0
	ldr r0, _02384898 @ =0x0238A26C
	ldr r1, _023848A4 @ =0x020AF6B8
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, r0, #0x1000
	ldr r2, [r1, #0x384]
	ldr r1, [r0, #0x1ac]
	mov r0, #6
	mla r0, r1, r0, r2
	str r0, [sb, #4]
	b _023842D4
_02384278:
	ldr r0, _02384898 @ =0x0238A26C
	add r1, sl, #4
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x1b2]
	mov r3, #1
	str r4, [sp]
	ldr r0, [r0, #0x1ac]
	bl FUN_022EBAB0
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	bl FUN_022E1610
	ldrb r1, [r0]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	strne r0, [sb, #4]
	moveq r0, #0
	streq r0, [sb, #4]
_023842D4:
	mov r4, #3
	b _02384438
_023842DC:
	tst r0, #4
	bne _023842F4
	tst r0, #0x800
	ldreq r0, [sp, #0x2c]
	cmpeq r0, #0
	beq _02383D8C
_023842F4:
	cmp r6, #0
	cmpeq fp, #0
	bne _02383D8C
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02384314
	mov r0, #5
	bl FUN_02017CCC
_02384314:
	bl FUN_02346E5C
	bl FUN_0200FC24
	mov r8, #0
_02384320:
	ldr r0, _023848A8 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr fp, [r0, #0xb28]
	mov r0, fp
	bl ov31_02383658
	cmp r0, #0
	beq _02384374
	ldr r1, [fp, #0xb4]
	ldrb r0, [r1, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02384374
	ldrsh r0, [r1, #0x66]
	cmp r0, #0xb7
	bne _02384374
	add r0, r1, #0x62
	bl FUN_0200D81C
_02384374:
	add r8, r8, #1
	cmp r8, #4
	blt _02384320
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r0, [sp, #0x38]
	str r0, [r1, #0x198]
	bl FUN_0200EDFC
	movs r1, r0
	beq _023843C0
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCC60
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCCB0
	b _02383D8C
_023843C0:
	mov r0, #1
	str r0, [sp, #0x30]
	mov r4, #2
	b _02384438
_023843D0:
	add r0, r1, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCDF4
	ldr r0, _02384898 @ =0x0238A26C
	add r1, sl, #4
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x1b2]
	mov r3, #1
	str r4, [sp]
	ldr r0, [r0, #0x1ac]
	bl FUN_022EBAB0
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	bl FUN_022E1610
	ldrb r1, [r0]
	mov r4, #1
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	moveq r0, #0
	str r0, [sb, #4]
_02384438:
	mov r0, #0x14
	bl FUN_022E9FE0
	ldr r0, _02384898 @ =0x0238A26C
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x1b2]
	cmp r0, #0
	bne _02384490
	add r0, r1, #0x1100
	ldrsb r0, [r0, #0x93]
	bl FUN_022BCE44
	cmp r0, #0
	bne _02384490
	ldr r0, _023848A4 @ =0x020AF6B8
	ldr r0, [r0]
	ldr r0, [r0, #0x384]
	ldrb r0, [r0]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	moveq r4, #2
_02384490:
	cmp r4, #2
	bne _023844AC
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r5, #1
	b _023850D8
_023844AC:
	cmp r4, #0
	beq _023850D8
	cmp r4, #3
	bne _023844D8
	add r0, r7, #0x4a
	bl FUN_022EBBE8
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r5, #0
	b _023850D8
_023844D8:
	cmp r6, #0
	beq _023844FC
	add r0, r7, #0x54
	bl FUN_022EBB68
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r5, #0
	b _023850D8
_023844FC:
	bl FUN_022EBB8C
	mov r1, r0
	mov r0, sl
	mov r2, #0xa
	bl FUN_022EB44C
	mov r8, r0
	ldr r0, [sl, #0xb4]
	str r0, [sp, #0x14]
	bl FUN_022EBA70
	bl FUN_022EBB98
	cmp r0, #0x90
	bhs _023849F4
	bl FUN_022EBB98
	cmp r0, #0x80
	bne _02384598
	ldrsh r1, [r8, #4]
	mov r0, #9
	bl FUN_022EB81C
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #6
	beq _02384598
	ldr r0, _023848A8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75b]
	cmp r0, #0
	beq _02384570
	bl FUN_0200EDC0
	b _02384588
_02384570:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_02384588:
	cmp r0, #0
	beq _02384598
	mov r0, #9
	bl FUN_022EB8F4
_02384598:
	bl FUN_022EBB98
	cmp r0, #0x80
	bne _023845C4
	ldr r0, _023848A8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75b]
	cmp r0, #0
	beq _023845C4
	ldrsh r1, [r8, #4]
	mov r0, #0xa
	bl FUN_022EB81C
_023845C4:
	mov r0, r8
	bl FUN_022EB5D8
	movs r4, r0
	beq _02384654
	ldrsh r1, [r8, #4]
	bl FUN_022EB81C
	ldrb r0, [r8]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _023845FC
	mov r0, r4
	bl FUN_022EB8F4
_023845FC:
	mov r0, r8
	bl FUN_023468FC
	cmp r0, #0
	bne _02384614
	mov r0, r4
	bl FUN_022EB8F4
_02384614:
	mov r0, sl
	bl FUN_023186CC
	cmp r0, #0
	bne _02384634
	mov r0, r8
	bl FUN_02348D00
	cmp r0, #0
	beq _0238463C
_02384634:
	mov r0, r4
	bl FUN_022EB8F4
_0238463C:
	mov r0, r8
	bl FUN_0200CDF8
	cmp r0, #0
	bne _02384654
	mov r0, r4
	bl FUN_022EB8F4
_02384654:
	bl FUN_022EBB98
	cmp r0, #0x33
	bhs _02384728
	ldrb r0, [r8, #1]
	cmp r0, #0
	bne _02384728
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #0
	beq _0238468C
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _02384728
_0238468C:
	ldrb r0, [r8]
	ldrsh r1, [r8, #4]
	tst r0, #0x10
	beq _023846A8
	mov r0, #0x3d
	bl FUN_022EB81C
	b _023846B0
_023846A8:
	mov r0, #0x3c
	bl FUN_022EB81C
_023846B0:
	ldr r0, _023848A4 @ =0x020AF6B8
	mov r3, #0
	ldr r4, [r0]
	mov lr, #1
	mov r0, #6
	b _02384720
_023846C8:
	mul r1, r3, r0
	ldr r2, [r4, #0x384]
	ldrb fp, [r2, r1]
	tst fp, #1
	movne ip, lr
	moveq ip, #0
	tst ip, #0xff
	beq _0238471C
	ldrb r1, [r2, r1]
	tst r1, #0x10
	beq _0238471C
	tst fp, #8
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0238471C
	mov r0, #0x3c
	bl FUN_022EB8F4
	mov r0, #0x3d
	bl FUN_022EB8F4
	b _02384728
_0238471C:
	add r3, r3, #1
_02384720:
	cmp r3, #0x32
	blt _023846C8
_02384728:
	bl FUN_022EBB98
	cmp r0, #0x81
	beq _02384804
	bl FUN_022EBB98
	cmp r0, #0x80
	beq _02384860
	ldrsh r1, [r8, #4]
	mov r2, #0
	mov r0, #0x36
	str r2, [sp, #0x18]
	bl FUN_022EB81C
	mov r4, #0
_02384758:
	ldr r0, _023848A8 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	str r0, [sp, #0x1c]
	bl ov31_02383658
	cmp r0, #0
	beq _023847A0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	ldr fp, [r0, #0xb4]
	strb r1, [fp, #0x161]
	bl FUN_02300BF8
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x18]
	strbeq r0, [fp, #0x161]
_023847A0:
	add r4, r4, #1
	cmp r4, #4
	blt _02384758
	add r0, sp, #0x40
	bl FUN_0204F10C
	cmp r0, #0
	beq _023847EC
	bl FUN_0200ED84
	cmp r0, #2
	bge _023847EC
	ldrsh r0, [sp, #0x40]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	movls r0, #0
	strls r0, [sp, #0x18]
_023847EC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02384860
	mov r0, #0x36
	bl FUN_022EB8F4
	b _02384860
_02384804:
	ldr r0, _023848A8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75b]
	cmp r0, #0
	beq _02384860
	ldrsh r1, [r8, #4]
	mov r0, #0x37
	bl FUN_022EB81C
	mov r0, r8
	bl FUN_0200EFCC
	cmp r0, #0
	beq _02384840
	ldrsh r1, [r8, #4]
	mov r0, #0x3e
	bl FUN_022EB81C
_02384840:
	mov r0, sl
	bl FUN_02300B40
	cmp r0, #0
	beq _02384860
	mov r0, #0x37
	bl FUN_022EB8F4
	mov r0, #0x3e
	bl FUN_022EB8F4
_02384860:
	bl FUN_022EBB98
	cmp r0, #0x33
	bhs _02384908
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl FUN_023360FC
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _023848D4
	ldrsh r1, [r8, #4]
	mov r0, #8
	bl FUN_022EB81C
	b _02384908
	.align 2, 0
_02384898: .4byte 0x0238A26C
_0238489C: .4byte 0x02389F64
_023848A0: .4byte 0x000008E5
_023848A4: .4byte 0x020AF6B8
_023848A8: .4byte 0x02353538
_023848AC: .4byte ov31_02383478
_023848B0: .4byte 0x02389F1C
_023848B4: .4byte ov31_02383854
_023848B8: .4byte 0x02389F2C
_023848BC: .4byte 0x000008E3
_023848C0: .4byte 0x02389F3C
_023848C4: .4byte 0x00400813
_023848C8: .4byte 0x000008E7
_023848CC: .4byte 0x02389F5C
_023848D0: .4byte 0x00003F04
_023848D4:
	ldr r0, [r0]
	cmp r0, #3
	bne _02384908
	ldrsh r1, [r8, #4]
	mov r0, #0x3a
	bl FUN_022EB81C
	ldr r0, [r4, #0x10]
	bl FUN_022E1620
	bl FUN_02348D00
	cmp r0, #0
	beq _02384908
	mov r0, #0x3a
	bl FUN_022EB8F4
_02384908:
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #0
	bne _02384928
	ldrsh r1, [r8, #4]
	mov r0, #0x27
	bl FUN_022EB81C
	b _02384950
_02384928:
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #1
	ldrsh r1, [r8, #4]
	bne _02384948
	mov r0, #0x41
	bl FUN_022EB81C
	b _02384950
_02384948:
	mov r0, #0xb
	bl FUN_022EB81C
_02384950:
	ldr r0, [sp, #0x14]
	bl FUN_02302368
	cmp r0, #0
	bne _02384978
	mov r0, #0x27
	bl FUN_022EB8F4
	mov r0, #0x41
	bl FUN_022EB8F4
	mov r0, #0xb
	bl FUN_022EB8F4
_02384978:
	mov r0, sl
	bl FUN_023186CC
	cmp r0, #0
	beq _023849A0
	mov r0, #0x27
	bl FUN_022EB8F4
	mov r0, #0x41
	bl FUN_022EB8F4
	mov r0, #0xb
	bl FUN_022EB8F4
_023849A0:
	mov r0, r8
	bl FUN_02348D00
	cmp r0, #0
	beq _023849D8
	mov r0, #0x27
	bl FUN_022EB8F4
	mov r0, #0x41
	bl FUN_022EB8F4
	mov r0, #0xb
	bl FUN_022EB8F4
	mov r0, #0xa
	bl FUN_022EB8F4
	mov r0, #9
	bl FUN_022EB8F4
_023849D8:
	mov r0, r8
	bl FUN_0200CDF8
	cmp r0, #0
	bne _02384C48
	mov r0, #0xb
	bl FUN_022EB8F4
	b _02384C48
_023849F4:
	bl FUN_022EBB98
	ldr r1, _023848A8 @ =0x02353538
	sub r2, r0, #0x90
	ldr r0, [r1]
	add r0, r0, r2, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	str r0, [sp, #0x20]
	bl ov31_02383658
	cmp r0, #0
	beq _02384C48
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x24]
	mov r1, r0
	ldr fp, [r1, #0xb4]
	bl FUN_02300B40
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x24]
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #5
	ldrsh r0, [r8, #4]
	moveq r4, #1
	bl FUN_0200CAF0
	cmp r0, #9
	ldr r0, _023848A8 @ =0x02353538
	moveq r4, #1
	ldr r0, [r0]
	ldrb r0, [r0, #0x75b]
	cmp r0, #0
	beq _02384AC0
	ldrsh r1, [r8, #4]
	mov r0, #0x37
	bl FUN_022EB81C
	mov r0, r8
	bl FUN_0200EFCC
	cmp r0, #0
	beq _02384AA4
	ldrsh r1, [r8, #4]
	mov r0, #0x3e
	bl FUN_022EB81C
_02384AA4:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02384AC0
	mov r0, #0x37
	bl FUN_022EB8F4
	mov r0, #0x3e
	bl FUN_022EB8F4
_02384AC0:
	ldrb r0, [fp, #7]
	cmp r0, #0
	beq _02384BEC
	mov r0, r8
	bl FUN_022EB5D8
	movs r4, r0
	beq _02384B5C
	ldrsh r1, [r8, #4]
	bl FUN_022EB81C
	ldrb r0, [r8]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02384B04
	mov r0, r4
	bl FUN_022EB8F4
_02384B04:
	mov r0, r8
	bl FUN_023468FC
	cmp r0, #0
	bne _02384B1C
	mov r0, r4
	bl FUN_022EB8F4
_02384B1C:
	ldr r0, [sp, #0x20]
	bl FUN_023186CC
	cmp r0, #0
	bne _02384B3C
	mov r0, r8
	bl FUN_02348D00
	cmp r0, #0
	beq _02384B44
_02384B3C:
	mov r0, r4
	bl FUN_022EB8F4
_02384B44:
	mov r0, r8
	bl FUN_0200CDF8
	cmp r0, #0
	bne _02384B5C
	mov r0, r4
	bl FUN_022EB8F4
_02384B5C:
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #0
	bne _02384B7C
	ldrsh r1, [r8, #4]
	mov r0, #0x27
	bl FUN_022EB81C
	b _02384B98
_02384B7C:
	ldrsh r0, [r8, #4]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _02384B98
	ldrsh r1, [r8, #4]
	mov r0, #0x41
	bl FUN_022EB81C
_02384B98:
	ldr r0, [sp, #0x14]
	bl FUN_02302368
	cmp r0, #0
	bne _02384BB8
	mov r0, #0x27
	bl FUN_022EB8F4
	mov r0, #0x41
	bl FUN_022EB8F4
_02384BB8:
	mov r0, sl
	bl FUN_023186CC
	cmp r0, #0
	bne _02384BD8
	mov r0, sl
	bl FUN_023186CC
	cmp r0, #0
	beq _02384C48
_02384BD8:
	mov r0, #0x27
	bl FUN_022EB8F4
	mov r0, #0x41
	bl FUN_022EB8F4
	b _02384C48
_02384BEC:
	ldrsh r1, [r8, #4]
	mov r0, #0x38
	bl FUN_022EB81C
	cmp r4, #0
	beq _02384C08
	mov r0, #0x38
	bl FUN_022EB8F4
_02384C08:
	ldr r0, [sp, #0x20]
	bl FUN_023186CC
	cmp r0, #0
	bne _02384C28
	mov r0, r8
	bl FUN_02348D00
	cmp r0, #0
	beq _02384C30
_02384C28:
	mov r0, #0x38
	bl FUN_022EB8F4
_02384C30:
	mov r0, r8
	bl FUN_0200CDF8
	cmp r0, #0
	bne _02384C48
	mov r0, #0x38
	bl FUN_022EB8F4
_02384C48:
	ldrsh r1, [r8, #4]
	mov r0, #0xc
	bl FUN_022EB81C
	bl FUN_022EB9A0
	bl FUN_022EBA84
	mov r2, #0
	ldr r1, _02385128 @ =0x0237C91C
	ldr r4, _02384898 @ =0x0238A26C
	b _02384C9C
_02384C6C:
	add r8, r1, r2, lsl #3
	ldr r3, [r4]
	ldrh r8, [r8, #6]
	add r3, r3, r2, lsl #3
	add r3, r3, #0x1100
	strh r8, [r3, #0x38]
	lsl r8, r2, #3
	ldr r3, [r4]
	add r2, r2, #1
	add r3, r3, r8
	add r3, r3, #0x1000
	str r2, [r3, #0x13c]
_02384C9C:
	cmp r2, r0
	blt _02384C6C
	ldr r3, _02384898 @ =0x0238A26C
	ldr r4, _0238512C @ =0x000008E8
	ldr r1, [r3]
	mvn r0, #0
	add r1, r1, r2, lsl #3
	add r1, r1, #0x1100
	strh r4, [r1, #0x38]
	ldr r1, [r3]
	mov r4, #0
	add r1, r1, r2, lsl #3
	add r1, r1, #0x1000
	str r0, [r1, #0x13c]
	ldr r1, [r3]
	add r1, r1, r2, lsl #3
	add r1, r1, #0x1100
	strh r4, [r1, #0x40]
	ldr r1, [r3]
	add r1, r1, r2, lsl #3
	add r1, r1, #0x1000
	str r0, [r1, #0x144]
	ldr r0, [r3]
	add r0, r0, #0x92
	add r0, r0, #0x1100
	bl FUN_0234E988
	ldr r0, _02384898 @ =0x0238A26C
	mov r2, r4
	ldr r1, [r0]
	add r0, r1, #0x138
	add r1, r1, #0x188
	add r0, r0, #0x1000
	add r1, r1, #0x1000
	bl ov31_0238513C
	ldr r0, _02384898 @ =0x0238A26C
	add r2, sp, #0x500
	ldr r1, [r0]
	add r2, r2, #0x9c
	add r0, r1, #0x188
	add r0, r0, #0x1000
	str r0, [sp, #0x5fc]
	add r0, r1, #0x1000
	add r3, r1, #0x138
	ldrb r0, [r0, #0x1b2]
	ldr r1, _02385130 @ =0x00000213
	add r3, r3, #0x1000
	cmp r0, #0
	ldrne r0, _02385134 @ =0x02389F4C
	ldreq r0, _02385138 @ =0x02389F0C
	bl FUN_0202A5CC
	ldr r4, _02384898 @ =0x0238A26C
	mov r8, #0x14
	ldr r1, [r4]
	add r1, r1, #0x1000
	strb r0, [r1, #0x192]
_02384D78:
	ldr r0, [r4]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x92]
	bl FUN_0202AB40
	cmp r0, #0
	bne _02384E24
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x92]
	bl FUN_0202ABB0
	cmp r0, #0
	blt _02384E04
	ldr r1, _02384898 @ =0x0238A26C
	sub r2, r0, #1
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x1a4]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x1a4]
	bl FUN_022EB804
	cmp r0, #0
	mov r4, #0
	beq _02384E30
	ldr r0, _02384898 @ =0x0238A26C
	ldr r2, _02385128 @ =0x0237C91C
	ldr r1, [r0]
	add r0, r7, #0x4a
	add r1, r1, #0x1000
	ldr r1, [r1, #0x1a4]
	lsl r1, r1, #3
	ldrh r1, [r2, r1]
	bl FUN_022EBBA8
	b _02384E30
_02384E04:
	ldr r0, _02384898 @ =0x0238A26C
	mov r4, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x1b2]
	cmp r0, #0
	movne r4, #2
	b _02384E30
_02384E24:
	mov r0, r8
	bl FUN_022E9FE0
	b _02384D78
_02384E30:
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x92
	add r0, r0, #0x1100
	bl FUN_0234E988
	ldr r0, _023848A8 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	cmp r4, #1
	add r0, r0, #0x1a000
	strb r1, [r0, #0x247]
	ldreq r0, _02384898 @ =0x0238A26C
	ldreq r0, [r0]
	addeq r0, r0, #0x1000
	ldrbeq r0, [r0, #0x1b2]
	cmpeq r0, #0
	beq _02383B08
	cmp r4, #2
	bne _02384E90
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r5, #1
	b _023850D8
_02384E90:
	ldrh r0, [r7, #0x4a]
	cmp r0, #0x38
	cmpne r0, #0x37
	cmpne r0, #0x3e
	bne _02384EC4
	bl FUN_022EBB98
	sub r2, r0, #0x90
	mov r0, #0xb
	mov r1, #0
	strb r2, [r7, #0x4e]
	bl FUN_022EA428
	mov r5, #0
	b _023850D8
_02384EC4:
	cmp r0, #0x36
	bne _02384FA0
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x94]
	cmp r0, r1
	beq _02384F00
	bl FUN_0202F918
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x194]
_02384F00:
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x95]
	cmp r0, r1
	beq _02384F34
	bl FUN_0202F918
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x195]
_02384F34:
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x93
	add r0, r0, #0x1100
	bl ov31_02383768
	mov r0, #0x62
	bl FUN_022E9FE0
	add r0, sp, #0x48
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl ov31_023877EC
	cmp r0, #0
	beq _02384F88
	ldr r2, [sp, #0x48]
	mov r0, #0
	mov r1, r0
	strb r2, [r7, #0x54]
	bl FUN_022EA428
	mov r5, #0
	b _023850D8
_02384F88:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #1
	bl FUN_022EB398
	b _02383B08
_02384FA0:
	cmp r0, #0x12
	beq _02384FC0
	add r0, r0, #0xf3
	add r0, r0, #0xff00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _023850C8
_02384FC0:
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x94]
	cmp r0, r1
	beq _02384FF4
	bl FUN_0202F918
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x194]
_02384FF4:
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1100
	ldrsb r0, [r0, #0x95]
	cmp r0, r1
	beq _02385028
	bl FUN_0202F918
	ldr r0, _02384898 @ =0x0238A26C
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x195]
_02385028:
	ldr r0, _02384898 @ =0x0238A26C
	ldr r0, [r0]
	add r0, r0, #0x93
	add r0, r0, #0x1100
	bl ov31_02383768
	mov r0, #0x62
	bl FUN_022E9FE0
	mov r0, #0x62
	bl FUN_022E9FE0
	mov r2, #1
	add r0, sp, #0x44
	mov r1, #3
	mov r3, r2
	bl ov31_023877EC
	cmp r0, #0
	beq _023850B0
	ldr r1, [sp, #0x44]
	ldr r0, _023848A8 @ =0x02353538
	strb r1, [r7, #0x54]
	ldr r2, [r0]
	ldr r0, [sp, #0x44]
	mov r1, #0
	add r0, r2, r0, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	mov r2, #1
	bl FUN_022F98B4
	mov r0, #0
	mov r2, #1
	mov r1, r0
	strb r2, [r7, #0x23c]
	bl FUN_022EA428
	mov r5, #0
	b _023850D8
_023850B0:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #1
	bl FUN_022EB398
	b _02383B08
_023850C8:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r5, #0
_023850D8:
	ldr r0, _023848A8 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x247]
	bl FUN_0233779C
	bl ov31_023837C8
	mov r0, #0x14
	bl FUN_022E9FE0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02385118
	ldr r1, _023848A0 @ =0x000008E5
	mov r0, #0
	mov r2, #1
	bl FUN_0234D258
_02385118:
	mov r0, r5
_0238511C:
	add sp, sp, #0x234
	add sp, sp, #0x400
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02385128: .4byte 0x0237C91C
_0238512C: .4byte 0x000008E8
_02385130: .4byte 0x00000213
_02385134: .4byte 0x02389F4C
_02385138: .4byte 0x02389F0C
	arm_func_end ov31_023838E4

	arm_func_start ov31_0238513C
ov31_0238513C: @ 0x0238513C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_022EBA84
	mov r4, #0
	mov r5, r0
	mov sb, #3
	mov sl, r4
	b _02385190
_02385164:
	mov r0, r4
	mov r1, r6
	bl FUN_022EB2C8
	lsl r1, r4, #3
	strh r0, [r8, r1]
	mov r0, r4
	bl FUN_022EB804
	cmp r0, #0
	strbne sl, [r7, r4]
	strbeq sb, [r7, r4]
	add r4, r4, #1
_02385190:
	cmp r4, r5
	blt _02385164
	ldr r2, _023851BC @ =0x000008E8
	lsl r1, r4, #3
	add r0, r4, #1
	strh r2, [r8, r1]
	mov r1, #0
	strb r1, [r7, r4]
	lsl r0, r0, #3
	strh r1, [r8, r0]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023851BC: .4byte 0x000008E8
	arm_func_end ov31_0238513C

	arm_func_start ov31_023851C0
ov31_023851C0: @ 0x023851C0
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	ldr r1, _023853B8 @ =0x02353538
	ldrb r4, [r0, #4]
	ldr r0, [r1]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb28]
	str r5, [sp, #8]
_023851E4:
	mov r6, #0
	ldr sb, _023853B8 @ =0x02353538
	mov r7, r6
	mov r8, r6
_023851F4:
	ldr r0, [sb]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl FUN_02302388
	cmp r0, #0
	beq _0238521C
	cmp r8, r4
	moveq r6, r7
	add r7, r7, #1
_0238521C:
	add r8, r8, #1
	cmp r8, #4
	blt _023851F4
	ldr r0, [sp, #8]
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	ldr r0, [sp, #8]
	mov r2, #1
	mov r3, r2
	add r0, r0, #4
	mov r1, #0
	bl FUN_02337428
	mov r0, #1
	bl FUN_022EB398
	str r7, [sp]
	mov r1, #0
	mov r3, r6
	add r0, sp, #8
	mov r2, #1
	str r1, [sp, #4]
	bl ov31_02385404
	cmp r0, #0
	bne _023853B0
	bl FUN_022F0B9C
	cmp r0, #0x1d
	bne _0238529C
	bl FUN_022F0B8C
	bl ov31_02385FE0
	mov r0, #1
	bl FUN_022EB398
	b _02385380
_0238529C:
	bl FUN_022F0B9C
	cmp r0, #0x1e
	bne _023852CC
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl FUN_022F0B8C
	mov r1, #0
	bl ov31_023860A4
	mov r0, #1
	bl FUN_022EB398
	b _02385380
_023852CC:
	bl FUN_022F0B9C
	cmp r0, #0x33
	bne _023852FC
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl FUN_022F0B8C
	mov r1, #0
	bl ov31_023860A4
	mov r0, #1
	bl FUN_022EB398
	b _02385380
_023852FC:
	bl FUN_022F0B9C
	cmp r0, #0x1f
	bne _02385328
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl FUN_022F0B8C
	bl ov31_0238619C
	mov r0, #1
	bl FUN_022EB398
	b _02385380
_02385328:
	bl FUN_022F0B9C
	cmp r0, #0x20
	bne _02385354
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl FUN_022F0B8C
	bl ov31_02386204
	mov r0, #1
	bl FUN_022EB398
	b _02385380
_02385354:
	bl FUN_022F0B9C
	cmp r0, #0x21
	bne _02385380
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl FUN_022F0B8C
	mov r1, #1
	bl ov31_02386308
	mov r0, #1
	bl FUN_022EB398
_02385380:
	bl FUN_022F0B9C
	cmp r0, #0
	beq _023851E4
	mov r0, r5
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	mov r2, #1
	mov r3, r2
	add r0, r5, #4
	mov r1, #0
	bl FUN_02337428
_023853B0:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_023853B8: .4byte 0x02353538
	arm_func_end ov31_023851C0

	arm_func_start ov31_023853BC
ov31_023853BC: @ 0x023853BC
	push {r3, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x10]
	mov ip, #0
	str lr, [sp]
	str ip, [sp, #4]
	bl ov31_02385404
	add sp, sp, #8
	pop {r3, pc}
	arm_func_end ov31_023853BC

	arm_func_start ov31_023853E0
ov31_023853E0: @ 0x023853E0
	push {r3, lr}
	sub sp, sp, #8
	ldr lr, [sp, #0x10]
	mov ip, #1
	str lr, [sp]
	str ip, [sp, #4]
	bl ov31_02385404
	add sp, sp, #8
	pop {r3, pc}
	arm_func_end ov31_023853E0

	arm_func_start ov31_02385404
ov31_02385404: @ 0x02385404
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x12c
	str r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x14
	mov r1, #8
	str r2, [sp, #8]
	bl FUN_02001170
	ldr r1, _02385F70 @ =0x0238A270
	mov r2, #0
	str r0, [r1, #8]
	str r2, [r0, #0x10]
	mov r0, #0x62
	bl FUN_022E9FE0
	ldr r0, [sp, #0x154]
	cmp r0, #1
	bne _0238547C
	ldr r0, _02385F74 @ =0x02389F88
	bl FUN_0202F0B0
	mov r1, #0
	str r0, [sp, #0x14]
	bl FUN_0202F474
	ldr r0, _02385F78 @ =0x00003FCD
	bl FUN_020258C4
	mov r2, r0
	ldr r0, [sp, #0x14]
	ldr r1, _02385F7C @ =0x00000404
	mov r3, #0
	bl FUN_0202F23C
	b _023854AC
_0238547C:
	ldr r0, _02385F80 @ =0x02389FA8
	bl FUN_0202F0B0
	mov r1, #0
	str r0, [sp, #0x14]
	bl FUN_0202F474
	ldr r0, _02385F84 @ =0x00003FCC
	bl FUN_020258C4
	mov r2, r0
	ldr r0, [sp, #0x14]
	ldr r1, _02385F7C @ =0x00000404
	mov r3, #0
	bl FUN_0202F23C
_023854AC:
	ldr r0, [sp]
	ldr r6, [r0]
	ldr sl, [r6, #0xb4]
	bl FUN_022E9580
	ldr r7, [r0, #0xb4]
	mov r0, r6
	bl FUN_0203F9CC
	mov r8, #0
	ldr sb, _02385F88 @ =0x02353538
	mov r4, r8
	add fp, sp, #0x2c
_023854D8:
	ldr r0, [sb]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl FUN_02302388
	cmp r0, #0
	beq _02385514
	ldr r0, [sb]
	str r4, [fp, r8, lsl #2]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	cmp r6, r0
	streq r8, [sp, #0x10]
	add r8, r8, #1
_02385514:
	add r4, r4, #1
	cmp r4, #4
	blt _023854D8
	ldr r0, [sp, #0x154]
	ldr r2, [sp, #0x10]
	mov r1, r8
	bl FUN_0204018C
	str r0, [sp, #0x18]
	bl FUN_02041094
	ldr r1, _02385F70 @ =0x0238A270
	str r0, [r1]
	mov r0, #0x1e
	bl FUN_022E9FE0
_02385548:
	mov r4, #0
	str r4, [sp, #0xc]
	mov sb, r4
	bl FUN_022EA62C
	ldr fp, _02385F70 @ =0x0238A270
_0238555C:
	bl FUN_020407EC
	mov r8, r0
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _02385680
_02385570: @ jump table
	b _02385680 @ case 0
	b _0238562C @ case 1
	b _02385678 @ case 2
	b _023855A0 @ case 3
	b _023855A0 @ case 4
	b _023855A8 @ case 5
	b _02385634 @ case 6
	b _0238566C @ case 7
	b _02385650 @ case 8
	b _02385598 @ case 9
_02385598:
	mov sb, #1
	b _02385680
_023855A0:
	mov sb, #1
	b _02385680
_023855A8:
	ldr r0, [sp, #0x18]
	bl FUN_02030A18
	mov r1, #0
	str r1, [fp]
	add r1, sp, #0x2c
	str r0, [sp, #0x10]
	ldr sb, [r1, r0, lsl #2]
	ldr r0, _02385F88 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	ldr r0, [sp]
	ldr sl, [r6, #0xb4]
	str r6, [r0]
	bl FUN_022E9618
	strb sb, [r0, #0x4e]
	mov r0, r6
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	mov r2, #1
	add r0, r6, #4
	mov r1, #0
	mov r3, r2
	bl FUN_02337428
	mov r0, #0
	bl FUN_022EB398
	mov r0, r6
	bl FUN_0203F9CC
	bl FUN_02041178
	mov sb, #1
	b _02385680
_0238562C:
	mov r4, #1
	b _02385680
_02385634:
	ldrb r1, [r6, #0x24]
	mov r0, #2
	str r0, [sp, #0xc]
	strb r1, [r7, #0x4e]
	ldr r0, [fp]
	strb r0, [r7, #0x54]
	b _02385680
_02385650:
	ldrb r1, [r6, #0x24]
	mov r0, #3
	str r0, [sp, #0xc]
	strb r1, [r7, #0x4e]
	ldr r0, [fp]
	strb r0, [r7, #0x54]
	b _02385680
_0238566C:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02385680
_02385678:
	bl FUN_02041094
	str r0, [fp]
_02385680:
	cmp r8, #9
	addls pc, pc, r8, lsl #2
	b _023856D0
_0238568C: @ jump table
	b _023856D0 @ case 0
	b _023856D0 @ case 1
	b _023856D0 @ case 2
	b _023856B4 @ case 3
	b _023856B4 @ case 4
	b _023856C4 @ case 5
	b _023856D0 @ case 6
	b _023856D0 @ case 7
	b _023856D0 @ case 8
	b _023856B4 @ case 9
_023856B4:
	mov r0, r6
	bl FUN_0203FD44
	str r0, [fp]
	b _023856D0
_023856C4:
	mov r0, r6
	bl FUN_0203F9CC
	bl FUN_02041178
_023856D0:
	mov r0, #0x1e
	bl FUN_022E9FE0
	cmp r8, #0
	beq _0238555C
	cmp r4, #0
	bne _02385EFC
	cmp sb, #0
	bne _02385548
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02385738
	ldr r0, _02385F70 @ =0x0238A270
	ldrb r1, [r6, #0x24]
	ldr r2, [r0]
	add r0, r7, #0x4a
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl FUN_022EBC2C
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #8
	mov r1, #0x1b
	bl FUN_022EA370
	mov r4, #0
	b _02385EFC
_02385738:
	ldr r8, [r6, #0xb4]
	ldr r0, _02385F70 @ =0x0238A270
	add sb, r8, #0x124
	ldr fp, [r0]
	bl FUN_022EBA70
	ldrb r0, [r8, #7]
	cmp r0, #0
	beq _023857B0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02385770
	mov r0, #0x14
	mov r1, #0
	bl FUN_022EB81C
_02385770:
	ldrb r0, [sb, fp, lsl #3]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _023857BC
	ldrb r0, [sb, fp, lsl #3]
	mov r1, #0
	tst r0, #8
	beq _023857A4
	mov r0, #0x33
	bl FUN_022EB81C
	b _023857BC
_023857A4:
	mov r0, #0x1e
	bl FUN_022EB81C
	b _023857BC
_023857B0:
	mov r0, #0x1f
	mov r1, #0
	bl FUN_022EB81C
_023857BC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _023857E0
	mov r0, #0x20
	mov r1, #0
	bl FUN_022EB81C
	mov r0, #0x21
	mov r1, #0
	bl FUN_022EB81C
_023857E0:
	mov r0, #0x1d
	mov r1, #0
	bl FUN_022EB81C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02385804
	mov r0, #0x20
	bl FUN_022EB8F4
	b _0238595C
_02385804:
	ldr r0, _02385F70 @ =0x0238A270
	ldr fp, [r0]
	add r0, r8, fp, lsl #3
	add r0, r0, #0x100
	ldrh r0, [r0, #0x28]
	mov sb, fp
	bl FUN_02014E38
	cmp r0, #0
	moveq r0, #0
	beq _0238592C
	add sb, sb, #1
	b _02385920
_02385834:
	add r0, r8, sb, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02385928
	add r0, r8, sb, lsl #3
	add r0, r0, #0x100
	ldrh r0, [r0, #0x28]
	bl FUN_02014E38
	cmp r0, #0
	beq _02385928
	add r0, r8, sb, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	bne _0238591C
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	b _023858A4
_02385888:
	add r0, r8, r3, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _023858AC
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
_023858A4:
	cmp r3, #4
	blt _02385888
_023858AC:
	lsl r0, fp, #0x10
	asr r2, r0, #0x10
	b _0238590C
_023858B8:
	add r0, r2, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, r8, r2, lsl #3
	add sb, r0, #0x100
	b _023858F8
_023858D0:
	add fp, r8, r1, lsl #3
	add fp, fp, #0x100
	ldrh r0, [sb, #0x28]
	ldrh fp, [fp, #0x28]
	cmp r0, fp
	moveq r0, #0
	beq _0238592C
	add r0, r1, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_023858F8:
	cmp r1, r3
	blt _023858D0
	add r0, r2, #1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
_0238590C:
	cmp r2, r3
	blt _023858B8
	mov r0, #1
	b _0238592C
_0238591C:
	add sb, sb, #1
_02385920:
	cmp sb, #4
	blt _02385834
_02385928:
	mov r0, #0
_0238592C:
	cmp r0, #0
	bne _0238593C
	mov r0, #0x20
	bl FUN_022EB8F4
_0238593C:
	ldr r1, _02385F70 @ =0x0238A270
	mov r0, r8
	ldr r1, [r1]
	bl ov31_023863F8
	cmp r0, #0
	bne _0238595C
	mov r0, #0x21
	bl FUN_022EB8F4
_0238595C:
	ldr r1, _02385F70 @ =0x0238A270
	mov r0, r8
	ldr r1, [r1]
	bl ov31_023863F8
	cmp r0, #0
	bne _0238597C
	mov r0, #0x21
	bl FUN_022EB8F4
_0238597C:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _023859C0
	ldr r0, _02385F70 @ =0x0238A270
	mov r8, #0
	ldr r1, [r0]
	cmp r1, #4
	bge _023859B0
	mov r0, r6
	mov r2, #1
	bl FUN_02324A74
	cmp r0, #0
	movne r8, #1
_023859B0:
	cmp r8, #0
	bne _023859C0
	mov r0, #0x14
	bl FUN_022EB8F4
_023859C0:
	bl FUN_022EB9A0
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _02385A40
	mov r0, #0x20
	bl FUN_022EB8B0
	mov r5, r0
	bl FUN_022EB804
	cmp r0, #0
	beq _02385A08
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	mov r4, #0
	b _02385EFC
_02385A08:
	mov r0, #0x21
	bl FUN_022EB8B0
	mov r5, r0
	bl FUN_022EB804
	cmp r0, #0
	beq _02385EFC
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	mov r4, #0
	b _02385EFC
_02385A40:
	cmp r0, #2
	bne _02385AF8
	ldrb r0, [sl, #7]
	cmp r0, #0
	beq _02385AC0
	mov r0, #0x1e
	bl FUN_022EB8B0
	mov r5, r0
	bl FUN_022EB804
	cmp r0, #0
	beq _02385A88
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	mov r4, #0
_02385A88:
	mov r0, #0x33
	bl FUN_022EB8B0
	mov r5, r0
	bl FUN_022EB804
	cmp r0, #0
	beq _02385EFC
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	mov r4, #0
	b _02385EFC
_02385AC0:
	mov r0, #0x1f
	bl FUN_022EB8B0
	mov r5, r0
	bl FUN_022EB804
	cmp r0, #0
	beq _02385EFC
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	mov r4, #0
	b _02385EFC
_02385AF8:
	mov r0, #0x62
	bl FUN_022E9FE0
	add r1, sp, #0x20
	add r0, sp, #0xd4
	mov r2, #0
	str r1, [sp, #0x9c]
	bl ov31_0238513C
	bl FUN_022EBA84
	mov r1, #0
	add r3, sp, #0xd4
	b _02385B30
_02385B24:
	add r2, r3, r1, lsl #3
	str r1, [r2, #4]
	add r1, r1, #1
_02385B30:
	cmp r1, r0
	blt _02385B24
	ldr r2, _02385F8C @ =0x000008DC
	add sl, sp, #0xd4
	lsl fp, r1, #3
	mvn r0, #0
	strh r2, [sl, fp]
	add sb, sl, r1, lsl #3
	str r0, [sb, #4]
	mov r8, #0
	add r2, r0, #0xa40
	strh r8, [sb, #8]
	sub r0, r8, #2
	str r0, [sb, #0xc]
	ldrh r0, [sb, #8]
	add r3, sp, #0x20
	mov ip, #0x14
	strh r0, [sb, #0x18]
	ldr r4, [sb, #0xc]
	add r0, r3, r1
	str r4, [sb, #0x1c]
	ldrh r4, [sl, fp]
	ldrb sl, [r0, #1]
	ldr fp, _02385F70 @ =0x0238A270
	strh r4, [sb, #0x10]
	strb sl, [r0, #3]
	ldrb r4, [r3, r1]
	ldr sl, [sb, #4]
	ldr r3, [fp]
	str sl, [sb, #0x14]
	ldrh sl, [sb, #-8]
	strb r4, [r0, #2]
	ldrb r4, [r0, #-1]
	strh sl, [sb, #8]
	cmp r3, #0
	strb r4, [r0, #1]
	ldr r4, [sb, #-4]
	strb r8, [r0, #-1]
	str r4, [sb, #0xc]
	strh r2, [sb, #-8]
	movle r2, #3
	str ip, [sb, #-4]
	add r8, sp, #0xd4
	strble r2, [r0, #-1]
	lsl sb, r1, #3
	add r2, r8, r1, lsl #3
	add r1, r3, #1
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	mov r1, #0xa40
	strh r1, [r8, sb]
	mov r1, #0x15
	mov r3, #0
	str r1, [r2, #4]
	strb r3, [r0]
	ldr sl, [r6, #0xb4]
	mov r1, r3
	mov r2, #1
	b _02385C58
_02385C1C:
	add r8, sl, r4, lsl #3
	ldrb r8, [r8, #0x124]
	tst r8, #1
	movne r8, r2
	moveq r8, r1
	tst r8, #0xff
	beq _02385C4C
	add r8, sl, r4, lsl #3
	ldrb r8, [r8, #0x124]
	tst r8, #2
	moveq r3, #1
	beq _02385C60
_02385C4C:
	add r4, r4, #1
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
_02385C58:
	cmp r4, #4
	blt _02385C1C
_02385C60:
	cmp r3, #0
	moveq r1, #3
	strbeq r1, [r0]
	ldr r0, _02385F90 @ =0x02389F98
	ldr r1, _02385F94 @ =0x80000213
	add r2, sp, #0x3c
	add r3, sp, #0xd4
	bl FUN_0202A5CC
	strb r0, [sp, #0x1c]
	mov r0, #0x1b
	bl FUN_022E9FE0
	add r8, sp, #0xd4
	mov sb, #0x1b
	mov fp, #0
	ldr r4, _02385F98 @ =0x0000099B
	b _02385D0C
_02385CA0:
	mov r0, sb
	bl FUN_022E9FE0
	mov r0, fp
	add r1, sp, #0x1e
	bl FUN_0200625C
	ldrh r0, [sp, #0x1e]
	tst r0, #0x400
	beq _02385D0C
	mov r5, #0
	b _02385CEC
_02385CC8:
	lsl r1, r5, #3
	add r0, r8, r5, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _02385CF4
	ldrh r0, [r8, r1]
	cmp r0, r4
	beq _02385CF4
	add r5, r5, #1
_02385CEC:
	cmp r5, #0xa
	blt _02385CC8
_02385CF4:
	add r0, r8, r5, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _02385D0C
	cmp r5, #0xa
	blt _02385D1C
_02385D0C:
	ldrsb r0, [sp, #0x1c]
	bl FUN_0202AB40
	cmp r0, #0
	bne _02385CA0
_02385D1C:
	ldrh r0, [sp, #0x1e]
	tst r0, #0x400
	bne _02385D34
	ldrsb r0, [sp, #0x1c]
	bl FUN_0202ABB0
	mov r5, r0
_02385D34:
	ldrsb r0, [sp, #0x1c]
	bl FUN_0202AB80
	cmp r0, #0
	ble _02385D78
	mvn r0, #0
	cmp r5, r0
	bne _02385D78
	ldrsb r0, [sp, #0x1c]
	bl FUN_0202AB80
	add r1, sp, #0xd4
	lsl r0, r0, #3
	ldrh r1, [r1, r0]
	ldr r0, _02385F8C @ =0x000008DC
	cmp r1, r0
	bne _02385D78
	mov r0, #0
	bl FUN_02017CCC
_02385D78:
	add r0, sp, #0x1c
	bl FUN_0234E988
	mov r0, #0x1b
	bl FUN_022E9FE0
	cmp r5, #0
	blt _02385ED8
	add r0, sp, #0xd4
	lsl r1, r5, #3
	ldrh r1, [r0, r1]
	ldr r0, _02385F9C @ =0x000009A8
	cmp r1, r0
	bgt _02385DC8
	sub r0, r0, #3
	subs r0, r1, r0
	addpl pc, pc, r0, lsl #2
	b _02385DE4
_02385DB8: @ jump table
	b _02385DD4 @ case 0
	b _02385DD4 @ case 1
	b _02385DD4 @ case 2
	b _02385DD4 @ case 3
_02385DC8:
	ldr r0, _02385FA0 @ =0x000009BA
	cmp r1, r0
	bne _02385DE4
_02385DD4:
	ldr r0, _02385FA4 @ =0x00003F07
	mov r1, #0x100
	bl FUN_02017C74
	b _02385DEC
_02385DE4:
	mov r0, #0
	bl FUN_02017CCC
_02385DEC:
	cmp r5, #0x14
	bne _02385E4C
	mov r0, r6
	bl FUN_0203F9CC
	ldr r0, _02385F70 @ =0x0238A270
	ldr r0, [r0]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020416BC
	ldr r2, _02385F70 @ =0x0238A270
	lsl r1, r0, #0x10
	str r0, [r2]
	asr r0, r1, #0x10
	bl FUN_020410A4
	mov r0, r6
	bl FUN_0203FD44
	ldr r1, _02385F70 @ =0x0238A270
	str r0, [r1]
	ldr r0, [sp, #0x18]
	bl FUN_020307EC
	bl FUN_02041178
	mov r0, #0x1b
	bl FUN_022E9FE0
	b _02385548
_02385E4C:
	cmp r5, #0x15
	bne _02385EAC
	mov r0, r6
	bl FUN_0203F9CC
	ldr r0, _02385F70 @ =0x0238A270
	ldr r0, [r0]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020416DC
	ldr r2, _02385F70 @ =0x0238A270
	lsl r1, r0, #0x10
	str r0, [r2]
	asr r0, r1, #0x10
	bl FUN_020410A4
	mov r0, r6
	bl FUN_0203FD44
	ldr r1, _02385F70 @ =0x0238A270
	str r0, [r1]
	ldr r0, [sp, #0x18]
	bl FUN_020307EC
	bl FUN_02041178
	mov r0, #0x1b
	bl FUN_022E9FE0
	b _02385548
_02385EAC:
	mov r0, r5
	bl FUN_022EB804
	cmp r0, #0
	beq _02385EF0
	mov r0, r6
	bl FUN_022E2A38
	mov r2, r0
	mov r1, r5
	add r0, r7, #0x4a
	bl ov31_02385FA8
	b _02385EF0
_02385ED8:
	ldr r0, [sp, #0x18]
	bl FUN_020307EC
	bl FUN_02041178
	mov r0, #0x1b
	bl FUN_022E9FE0
	b _02385548
_02385EF0:
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r4, #0
_02385EFC:
	ldr r0, [sp, #0x18]
	bl FUN_02030850
	ldr r0, [sp, #0x14]
	bl FUN_0202F334
	ldr r0, [sp, #0x14]
	bl FUN_0202F148
	mov r0, #8
	mov r1, #0x1e
	bl FUN_022EA370
	bl FUN_0233779C
	mov r0, #0x1b
	bl FUN_022E9FE0
	bl FUN_020407C0
	ldr r0, _02385F70 @ =0x0238A270
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02385F50
	bl FUN_02001188
	ldr r0, _02385F70 @ =0x0238A270
	mov r1, #0
	str r1, [r0, #8]
_02385F50:
	bl FUN_022E9618
	ldr r1, [sp, #0x10]
	add r2, sp, #0x2c
	ldr r1, [r2, r1, lsl #2]
	strb r1, [r0, #0x4e]
	mov r0, r4
	add sp, sp, #0x12c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02385F70: .4byte 0x0238A270
_02385F74: .4byte 0x02389F88
_02385F78: .4byte 0x00003FCD
_02385F7C: .4byte 0x00000404
_02385F80: .4byte 0x02389FA8
_02385F84: .4byte 0x00003FCC
_02385F88: .4byte 0x02353538
_02385F8C: .4byte 0x000008DC
_02385F90: .4byte 0x02389F98
_02385F94: .4byte 0x80000213
_02385F98: .4byte 0x0000099B
_02385F9C: .4byte 0x000009A8
_02385FA0: .4byte 0x000009BA
_02385FA4: .4byte 0x00003F07
	arm_func_end ov31_02385404

	arm_func_start ov31_02385FA8
ov31_02385FA8: @ 0x02385FA8
	push {r3, r4, r5, lr}
	ldr r3, _02385FD8 @ =0x0237C91C
	lsl r1, r1, #3
	ldrh r1, [r3, r1]
	mov r5, r0
	mov r4, r2
	bl FUN_022EB408
	ldr r0, _02385FDC @ =0x0238A270
	strb r4, [r5, #4]
	ldr r0, [r0]
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02385FD8: .4byte 0x0237C91C
_02385FDC: .4byte 0x0238A270
	arm_func_end ov31_02385FA8

	arm_func_start ov31_02385FE0
ov31_02385FE0: @ 0x02385FE0
	push {r3, lr}
	ldr r1, _0238604C @ =0x02353538
	ldrb r3, [r0, #4]
	ldr r1, [r1]
	ldrb r2, [r0, #0xa]
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	lsl r2, r2, #3
	ldr ip, [r1, #0xb4]
	add r1, ip, #0x26
	add r3, r1, #0x100
	ldrh r1, [r3, r2]
	orr r1, r1, #2
	strh r1, [r3, r2]
	ldrb r1, [r0, #0xa]
	cmp r1, #4
	bhs _02386038
	add r0, ip, #0x124
	mov r2, #4
	bl ov31_02386050
	pop {r3, pc}
_02386038:
	add r0, ip, #0x144
	mov r1, #0
	mov r2, #1
	bl ov31_02386050
	pop {r3, pc}
	.align 2, 0
_0238604C: .4byte 0x02353538
	arm_func_end ov31_02385FE0

	arm_func_start ov31_02386050
ov31_02386050: @ 0x02386050
	push {r3, r4, r5, lr}
	mov r3, r1
	mov r1, r2
	mov r2, r3
	mov r3, #0
	bl FUN_020417A8
	mov r5, r0
	mov r4, #0x62
_02386070:
	bl FUN_02041A18
	cmp r0, #0
	beq _0238608C
	bl FUN_02041A00
	mov r0, r5
	bl FUN_0202E6C8
	b _02386098
_0238608C:
	mov r0, r4
	bl FUN_022E9FE0
	b _02386070
_02386098:
	mov r0, #0x62
	bl FUN_022E9FE0
	pop {r3, r4, r5, pc}
	arm_func_end ov31_02386050

	arm_func_start ov31_023860A4
ov31_023860A4: @ 0x023860A4
	push {r4, r5, r6, r7, r8, lr}
	ldr r2, _02386190 @ =0x02353538
	ldrb r3, [r0, #4]
	ldr r4, [r2]
	ldrb r2, [r0, #0xa]
	add r0, r4, r3, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb28]
	mov r8, r1
	ldr r7, [r4, #0xb4]
	mov r6, #0
	add r1, r7, #0x124
	ldrb r0, [r1, r2, lsl #3]
	mov ip, #0
	add r5, r1, r2, lsl #3
	tst r0, #8
	movne r6, #1
	mov r2, ip
	mov r3, #1
_023860F0:
	add r0, r7, ip, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r3
	moveq r0, r2
	tst r0, #0xff
	addne r1, r7, ip, lsl #3
	ldrbne r0, [r1, #0x124]
	add ip, ip, #1
	bicne r0, r0, #8
	strbne r0, [r1, #0x124]
	cmp ip, #4
	blt _023860F0
	bl FUN_0234B034
	ldrh r1, [r5, #4]
	cmp r6, #0
	str r1, [r0, #0x10]
	ldrbeq r0, [r5]
	orreq r0, r0, #8
	strbeq r0, [r5]
	add r0, r7, #0x124
	bl FUN_020141E0
	ldrh r0, [r5, #2]
	cmp r8, #0
	orr r0, r0, #2
	strh r0, [r5, #2]
	popeq {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	bne _02386174
	ldr r1, _02386194 @ =0x000008D8
	mov r0, r4
	bl FUN_0234B2A4
	b _02386180
_02386174:
	ldr r1, _02386198 @ =0x000008D9
	mov r0, r4
	bl FUN_0234B2A4
_02386180:
	mov r0, #0x78
	mov r1, #0x1f
	bl FUN_022EA370
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02386190: .4byte 0x02353538
_02386194: .4byte 0x000008D8
_02386198: .4byte 0x000008D9
	arm_func_end ov31_023860A4

	arm_func_start ov31_0238619C
ov31_0238619C: @ 0x0238619C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02386200 @ =0x02353538
	ldrb r2, [r0, #4]
	ldr r1, [r1]
	ldrb r4, [r0, #0xa]
	add r0, r1, r2, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r7, [r0, #0xb4]
	add r5, r7, #0x124
	add r6, r5, r4, lsl #3
	bl FUN_0234B034
	mov r1, #0
	mov r2, r6
	mov r3, r1
	bl FUN_02013780
	ldrb r1, [r5, r4, lsl #3]
	mov r0, r5
	eor r1, r1, #4
	strb r1, [r5, r4, lsl #3]
	bl FUN_020141E0
	ldrh r0, [r6, #2]
	orr r0, r0, #2
	strh r0, [r6, #2]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02386200: .4byte 0x02353538
	arm_func_end ov31_0238619C

	arm_func_start ov31_02386204
ov31_02386204: @ 0x02386204
	push {r3, r4, r5, lr}
	sub sp, sp, #0xa0
	ldr r1, _02386304 @ =0x02353538
	ldrb r2, [r0, #4]
	ldr r1, [r1]
	ldrb r5, [r0, #0xa]
	add r0, r1, r2, lsl #2
	add r0, r0, #0x12000
	ldr r1, [r0, #0xb28]
	add r0, sp, #0
	ldr r4, [r1, #0xb4]
	mov r2, #0
	add r1, r4, #0x124
	add r1, r1, r5, lsl #3
	bl FUN_02013478
	add r0, r4, #0x26
	add r2, r0, #0x100
	lsl r1, r5, #3
	ldrh r0, [r2, r1]
	mov r3, #0
	orr r0, r0, #2
	strh r0, [r2, r1]
	mov r1, r3
	mov r2, #1
	b _023862A4
_02386268:
	add r5, r5, #1
	cmp r5, #4
	bge _023862AC
	add r0, r4, r5, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _023862AC
	add r0, r4, r5, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _023862AC
	add r3, r3, #1
_023862A4:
	cmp r3, #4
	blt _02386268
_023862AC:
	add r0, r4, r5, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	moveq r5, #4
	cmp r5, #4
	bge _023862F4
	add ip, r4, #0x124
	ldrb r2, [ip, r5, lsl #3]
	add r0, sp, #0x50
	add r1, ip, r5, lsl #3
	orr r2, r2, #2
	bic r3, r2, #4
	mov r2, #0
	strb r3, [ip, r5, lsl #3]
	bl FUN_02013478
_023862F4:
	add r0, r4, #0x124
	bl FUN_020141E0
	add sp, sp, #0xa0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02386304: .4byte 0x02353538
	arm_func_end ov31_02386204

	arm_func_start ov31_02386308
ov31_02386308: @ 0x02386308
	push {r4, r5, r6, r7, r8, lr}
	ldr r2, _023863EC @ =0x02353538
	ldrb r3, [r0, #4]
	ldr r2, [r2]
	ldrb r7, [r0, #0xa]
	add r0, r2, r3, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb28]
	mov r8, r1
	ldr r6, [r4, #0xb4]
	mov r5, #0
	bl FUN_0234B034
	add r1, r6, r7, lsl #3
	add r1, r1, #0x100
	ldrh r2, [r1, #0x28]
	lsl r3, r7, #3
	add r1, r6, #0x26
	str r2, [r0, #0x10]
	add r2, r1, #0x100
	ldrh r1, [r2, r3]
	add r7, r7, #1
	mov r0, r5
	orr r1, r1, #2
	strh r1, [r2, r3]
	add ip, r6, #0x124
	mov r1, #1
	b _023863A0
_02386374:
	cmp r7, #4
	bge _023863A8
	ldrb r2, [ip, r7, lsl #3]
	lsl r3, r7, #3
	tst r2, #2
	beq _023863A8
	bic r2, r2, #2
	mov r5, r1
	strb r2, [ip, r3]
	add r7, r7, #1
	add r0, r0, #1
_023863A0:
	cmp r0, #4
	blt _02386374
_023863A8:
	add r0, r6, #0x124
	bl FUN_020141E0
	cmp r8, #0
	popeq {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _023863D0
	ldr r1, _023863F0 @ =0x000008DA
	mov r0, r4
	bl FUN_0234B2A4
	b _023863DC
_023863D0:
	ldr r1, _023863F4 @ =0x000008DB
	mov r0, r4
	bl FUN_0234B2A4
_023863DC:
	mov r0, #0x78
	mov r1, #0x1f
	bl FUN_022EA370
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023863EC: .4byte 0x02353538
_023863F0: .4byte 0x000008DA
_023863F4: .4byte 0x000008DB
	arm_func_end ov31_02386308

	arm_func_start ov31_023863F8
ov31_023863F8: @ 0x023863F8
	push {r3, lr}
	mov lr, #0
	mov ip, lr
	add r1, r1, #1
	mov r2, #1
	b _02386434
_02386410:
	cmp r1, #4
	bge _0238643C
	add r3, r0, r1, lsl #3
	ldrb r3, [r3, #0x124]
	tst r3, #2
	beq _0238643C
	mov lr, r2
	add r1, r1, #1
	add ip, ip, #1
_02386434:
	cmp ip, #4
	blt _02386410
_0238643C:
	cmp lr, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov31_023863F8

	arm_func_start ov31_02386450
ov31_02386450: @ 0x02386450
	push {r3, lr}
	ldr r0, _02386478 @ =0x0238A270
	ldr r0, [r0, #4]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _02386478 @ =0x0238A270
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_02386478: .4byte 0x0238A270
	arm_func_end ov31_02386450

	arm_func_start ov31_0238647C
ov31_0238647C: @ 0x0238647C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x114
	mov r6, r0
	mov r5, r1
	str r2, [sp, #4]
	mov r0, #0x284
	mov r1, #8
	str r3, [sp, #8]
	mvn r4, #1
	bl FUN_02001170
	ldr r1, _02386B0C @ =0x0238A270
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r1]
_023864B4:
	mov r0, #6
	mov r1, #0
	bl FUN_022EA428
	ldr r0, _02386B10 @ =0x0235352C
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl FUN_0200B3D4
	mvn sb, #1
	ldr r7, _02386B0C @ =0x0238A270
	add r8, sb, #1
	add fp, sp, #0xbc
_023864E0:
	cmp r4, sb
	bne _02386578
	ldr r3, [r6, #0xb4]
	add r0, sp, #0x14
	ldrsh r2, [r3, #2]
	ldrb r3, [r3, #0x48]
	mov r1, #2
	bl FUN_02053CA0
	mov r0, r6
	bl FUN_0203F9CC
	mov r1, #0
	b _0238652C
_02386510:
	add r0, r5, r1, lsl #3
	ldrh r0, [r0, #2]
	tst r0, #4
	bne _02386534
	add r0, r1, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_0238652C:
	cmp r1, #8
	blt _02386510
_02386534:
	add r0, r5, r1, lsl #3
	ldrh r0, [r0, #4]
	bl FUN_0203FD14
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	add r3, sp, #0x14
	beq _02386568
	mov r0, #2
	mov r2, r1
	bl FUN_0204019C
	mov r4, r0
	b _02386578
_02386568:
	mov r0, #3
	mov r2, r1
	bl FUN_0204019C
	mov r4, r0
_02386578:
	mov r0, #0x1e
	bl FUN_022E9FE0
	bl FUN_020407EC
	mov sl, r0
	bl FUN_02041094
	cmp sl, #2
	str r0, [r7]
	moveq sl, #0
	beq _023865B4
	cmp sl, #1
	moveq sl, #1
	beq _023865B4
	cmp sl, #7
	bne _02386578
	mov sl, #2
_023865B4:
	mov r0, #0x1e
	bl FUN_022E9FE0
	cmp sl, #1
	ldreq r0, _02386B0C @ =0x0238A270
	mvneq r1, #0
	streq r1, [r0]
	beq _02386924
	cmp sl, #2
	bne _02386694
	mov r0, r4
	bl FUN_0203088C
	mov r0, #0x1e
	bl FUN_022E9FE0
	mov r0, r4
	bl FUN_020308A0
	mov r0, #0x1b
	mov r4, sb
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	ldr r0, [r7]
	cmp r0, #4
	bge _02386664
	ldr r1, [r7]
	mov r0, r5
	mov r2, #4
	bl ov31_02386050
	b _02386674
_02386664:
	add r0, r5, #0x20
	mov r1, #0
	mov r2, #1
	bl ov31_02386050
_02386674:
	bl FUN_020407C0
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #2
	mov r1, #0x1b
	bl FUN_022EA370
	b _023864E0
_02386694:
	bl FUN_022EBA70
	mov r0, #0x22
	mov r1, #0
	bl FUN_022EB81C
	mov r0, #0x21
	mov r1, #0
	bl FUN_022EB81C
	ldr r0, [r7]
	mov r3, #0
	add r1, r0, #1
	mov r2, r3
	b _023866E4
_023866C4:
	cmp r1, #8
	bge _023866EC
	ldrb r0, [r5, r1, lsl #3]
	tst r0, #2
	beq _023866EC
	mov r3, #1
	add r1, r1, #1
	add r2, r2, #1
_023866E4:
	cmp r2, #8
	blt _023866C4
_023866EC:
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _02386708
	mov r0, #0x21
	bl FUN_022EB8F4
_02386708:
	mov r0, #0x1d
	mov r1, #0
	bl FUN_022EB81C
	add r0, sp, #0x18
	str r0, [sp, #0x84]
	mov r0, fp
	add r1, sp, #0x18
	mov r2, #0
	bl ov31_0238513C
	bl FUN_022EBA84
	mov r2, #0
	b _0238674C
_02386738:
	add r1, fp, r2, lsl #3
	str r2, [r1, #4]
	add r1, r2, #1
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
_0238674C:
	cmp r2, r0
	blt _02386738
	ldr r0, _02386B14 @ =0x000008DC
	lsl r1, r2, #3
	strh r0, [fp, r1]
	add r0, fp, r2, lsl #3
	str r8, [r0, #4]
	add r0, r2, #1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	lsl r1, r2, #3
	mov r0, #0
	strh r0, [fp, r1]
	add r0, fp, r2, lsl #3
	str r8, [r0, #4]
	ldr r0, _02386B18 @ =0x02389F98
	ldr r1, _02386B1C @ =0x00000213
	add r2, sp, #0x24
	mov r3, fp
	bl FUN_0202A5CC
	str r0, [sp, #0x10]
_023867A0:
	mov r0, #0x1b
	bl FUN_022E9FE0
	ldr r0, [sp, #0x10]
	bl FUN_0202AB40
	cmp r0, #0
	bne _023867A0
	ldr r0, [sp, #0x10]
	bl FUN_0202ABB0
	movs sl, r0
	movmi r0, #1
	strmi r0, [sp, #0xc]
	movpl r0, #0
	strpl r0, [sp, #0xc]
	mov r0, #0x1b
	bl FUN_022E9FE0
	ldr r0, [sp, #0x10]
	bl FUN_0202AABC
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _023867F8
	bl FUN_020416FC
	b _023864E0
_023867F8:
	mov r0, #6
	mov r1, #0
	bl FUN_022EA428
	mov r0, r4
	bl FUN_0203088C
_0238680C:
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, r4
	bl FUN_020308C4
	cmp r0, #0
	bne _0238680C
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, r4
	bl FUN_020308A0
	mov r4, sb
	bl FUN_020407C0
	cmp sl, #1
	bne _023868E8
	ldr r0, [r7]
	mov r1, #0
	add r2, r0, #1
	b _023868C0
_0238689C:
	cmp r2, #8
	bge _023868C8
	ldrb r0, [r5, r2, lsl #3]
	tst r0, #2
	beq _023868C8
	bic r0, r0, #2
	strb r0, [r5, r2, lsl #3]
	add r2, r2, #1
	add r1, r1, #1
_023868C0:
	cmp r1, #8
	blt _0238689C
_023868C8:
	mov r0, r5
	bl FUN_02014208
	ldr r0, [r6, #0xb4]
	mov r1, r5
	add r0, r0, #0x124
	mov r2, #0x22
	bl FUN_0208729C
	b _023864E0
_023868E8:
	cmp sl, #2
	bne _02386924
	ldr r0, [r7]
	cmp r0, #4
	bge _02386910
	ldr r1, [r7]
	mov r0, r5
	mov r2, #4
	bl ov31_02386050
	b _023864E0
_02386910:
	add r0, r5, #0x20
	mov r1, #0
	mov r2, #1
	bl ov31_02386050
	b _023864E0
_02386924:
	mvn r0, #1
	cmp r4, r0
	beq _02386950
	mov r0, r4
	bl FUN_0203088C
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, r4
	bl FUN_020308A0
	mvn r4, #1
	bl FUN_020407C0
_02386950:
	ldr r0, _02386B0C @ =0x0238A270
	ldr r1, [r0]
	cmp r1, #0
	blt _02386AE8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02386A04
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	bl FUN_02041154
	mov r1, r0
	mov r0, #0
	bl FUN_0234B084
	ldr r0, _02386B0C @ =0x0238A270
	ldr r0, [r0]
	cmp r0, #4
	bge _023869D8
	bl FUN_02041364
	cmp r0, #0
	mov r0, #0
	mov r2, #1
	beq _023869C0
	ldr r1, _02386B20 @ =0x000008D6
	mov r3, r0
	str r2, [sp]
	bl FUN_0234D518
	mov r7, r0
	b _023869F4
_023869C0:
	ldr r1, _02386B24 @ =0x000008D7
	mov r3, r0
	str r2, [sp]
	bl FUN_0234D518
	mov r7, r0
	b _023869F4
_023869D8:
	mov r0, #0
	mov r2, #1
	ldr r1, _02386B24 @ =0x000008D7
	mov r3, r0
	str r2, [sp]
	bl FUN_0234D518
	mov r7, r0
_023869F4:
	mov r0, #1
	mov r1, #0
	bl FUN_0233A0E8
	b _02386A08
_02386A04:
	mov r7, #1
_02386A08:
	cmp r7, #1
	bne _023864B4
	ldr r0, _02386B0C @ =0x0238A270
	ldr r0, [r0]
	cmp r0, #4
	movge r1, #0
	strbge r1, [r5, r0, lsl #3]
	bge _02386AE8
	bl FUN_02041484
	bl FUN_0203FD38
	mov r1, #0
	mov r2, r1
	mov r3, #1
	b _02386A80
_02386A40:
	add r8, r0, r1, lsl #3
	add r7, r5, r1, lsl #3
	mov r6, #4
_02386A4C:
	ldrh r4, [r8], #2
	subs r6, r6, #1
	strh r4, [r7], #2
	bne _02386A4C
	ldrb r4, [r5, r1, lsl #3]
	tst r4, #1
	movne r4, r3
	moveq r4, r2
	tst r4, #0xff
	beq _02386A88
	add r1, r1, #1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_02386A80:
	cmp r1, #4
	blt _02386A40
_02386A88:
	mov r6, #4
_02386A8C:
	add r4, r5, r6, lsl #3
	add r3, r5, r1, lsl #3
	mov r2, #4
_02386A98:
	ldrh r0, [r4], #2
	subs r2, r2, #1
	strh r0, [r3], #2
	bne _02386A98
	add r0, r6, #1
	lsl r0, r0, #0x10
	add r1, r1, #1
	asr r6, r0, #0x10
	lsl r0, r1, #0x10
	cmp r6, #8
	asr r1, r0, #0x10
	blt _02386A8C
	mov r2, #0
	b _02386AE0
_02386AD0:
	add r0, r1, #1
	lsl r0, r0, #0x10
	strb r2, [r5, r1, lsl #3]
	asr r1, r0, #0x10
_02386AE0:
	cmp r1, #8
	blt _02386AD0
_02386AE8:
	bl ov31_02386450
	ldr r0, _02386B0C @ =0x0238A270
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	add sp, sp, #0x114
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02386B0C: .4byte 0x0238A270
_02386B10: .4byte 0x0235352C
_02386B14: .4byte 0x000008DC
_02386B18: .4byte 0x02389F98
_02386B1C: .4byte 0x00000213
_02386B20: .4byte 0x000008D6
_02386B24: .4byte 0x000008D7
	arm_func_end ov31_0238647C

	arm_func_start ov31_02386B28
ov31_02386B28: @ 0x02386B28
	push {r3, r4, lr}
	sub sp, sp, #0xa4
	ldr r0, _02386C08 @ =0x0238A27C
	ldr r0, [r0]
	ldr r1, [r0, #0x64]
	ldrsh r0, [r1, #4]
	ldrsh r1, [r1, #6]
	bl FUN_023360FC
	mov r4, r0
	ldr r0, _02386C0C @ =0x000008D1
	bl FUN_020258C4
	ldr r1, _02386C08 @ =0x0238A27C
	mov r3, r0
	ldr r0, [r1]
	mov r1, #8
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x60]
	mov r2, #2
	bl FUN_02026214
	ldr r1, [r4, #0x10]
	cmp r1, #0
	moveq r0, #0
	beq _02386B98
	ldr r0, [r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_02386B98:
	cmp r0, #0
	beq _02386C00
	add r0, sp, #0x54
	mov r2, #0
	bl FUN_022E2A78
	ldr r0, [r4, #0x10]
	bl FUN_022E1618
	ldrb r1, [r0]
	ldr r0, _02386C10 @ =0x000008D2
	str r1, [sp, #0x14]
	bl FUN_020258C4
	add r1, sp, #4
	mov r2, r0
	str r1, [sp]
	add r0, sp, #0x54
	mov r1, #0x50
	mov r3, #0
	bl FUN_020223F0
	ldr r0, _02386C08 @ =0x0238A27C
	mov r1, #0x10
	ldr r0, [r0]
	mov r2, #0x12
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x60]
	add r3, sp, #0x54
	bl FUN_02026214
_02386C00:
	add sp, sp, #0xa4
	pop {r3, r4, pc}
	.align 2, 0
_02386C08: .4byte 0x0238A27C
_02386C0C: .4byte 0x000008D1
_02386C10: .4byte 0x000008D2
	arm_func_end ov31_02386B28

	arm_func_start ov31_02386C14
ov31_02386C14: @ 0x02386C14
	push {r3, lr}
	ldr r0, _02386C68 @ =0x0238A27C
	ldr r0, [r0]
	add r0, r0, #0x61
	add r0, r0, #0x100
	bl FUN_0234E988
	ldr r0, _02386C68 @ =0x0238A27C
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x60]
	bl FUN_0202F954
	mov r0, #0x62
	bl FUN_022E9FE0
	mov r0, #0x62
	bl FUN_022E9FE0
	ldr r0, _02386C68 @ =0x0238A27C
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x60]
	bl FUN_0202F8FC
	pop {r3, pc}
	.align 2, 0
_02386C68: .4byte 0x0238A27C
	arm_func_end ov31_02386C14

	arm_func_start ov31_02386C6C
ov31_02386C6C: @ 0x02386C6C
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xf4
	mov r5, r0
	mov r0, #0x164
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02386F0C @ =0x0238A27C
	str r0, [r1]
	str r5, [r0, #0x64]
_02386C90:
	bl FUN_022EA62C
	ldr r0, _02386F10 @ =0x02389FC8
	ldr r1, _02386F14 @ =ov31_02386B28
	bl FUN_0202F8C4
	ldr r1, _02386F0C @ =0x0238A27C
	ldr r1, [r1]
	strb r0, [r1, #0x160]
	bl FUN_022EBA70
	mov r0, #0x25
	mov r1, #0
	bl FUN_022EB81C
	mov r0, #0xc
	mov r1, #0
	bl FUN_022EB81C
	bl FUN_022EB9A0
	bl FUN_022EBA84
	mov r1, #0
	ldr r2, _02386F0C @ =0x0238A27C
	b _02386CF0
_02386CDC:
	ldr r3, [r2]
	add r4, r1, #1
	add r3, r3, r1, lsl #3
	mov r1, r4
	str r4, [r3, #4]
_02386CF0:
	cmp r1, r0
	blt _02386CDC
	ldr r0, _02386F0C @ =0x0238A27C
	mov r2, #0
	ldr r4, [r0]
	lsl r3, r1, #3
	strh r2, [r4, r3]
	ldr r3, [r0]
	sub r4, r2, #1
	add r3, r3, r1, lsl #3
	str r4, [r3, #4]
	ldr r3, [r0]
	add r3, r3, r1, lsl #3
	strh r2, [r3, #8]
	ldr r3, [r0]
	add r1, r3, r1, lsl #3
	str r4, [r1, #0xc]
	ldr r0, [r0]
	add r1, r0, #0x58
	bl ov31_0238513C
	ldr r1, _02386F0C @ =0x0238A27C
	ldr r0, _02386F18 @ =0x02389FB8
	ldr r3, [r1]
	ldr r1, _02386F1C @ =0x00000213
	add r4, r3, #0x58
	add r2, sp, #0x5c
	str r4, [sp, #0xbc]
	bl FUN_0202A5CC
	ldr r6, _02386F0C @ =0x0238A27C
	mov r4, #0x2d
	ldr r1, [r6]
	strb r0, [r1, #0x161]
_02386D70:
	mov r0, r4
	bl FUN_022E9FE0
	ldr r0, [r6]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x61]
	bl FUN_0202AB40
	cmp r0, #0
	bne _02386D70
	ldr r0, [r6]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x61]
	bl FUN_0202ABB0
	ldr r1, [r6]
	sub r0, r0, #1
	str r0, [r1, #0x124]
	ldr r0, [r6]
	ldr r0, [r0, #0x124]
	cmp r0, #0
	movlt r6, #1
	blt _02386EBC
	cmp r0, #1
	bne _02386E70
	bl ov31_02386C14
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl FUN_023360FC
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02386E68
	ldr r1, [r0]
	cmp r1, #2
	bne _02386E68
	bl FUN_022E1608
	ldrb r3, [r0]
	add r2, sp, #0xc
	ldr r1, _02386F20 @ =0x00001013
	str r3, [sp, #0x1c]
	str r2, [sp]
	ldrb r2, [r0]
	ldr r0, _02386F24 @ =0x02389FD8
	sub r3, r1, #0x740
	add r2, r2, #0xda
	add r2, r2, #0x3400
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	bl FUN_0202E3CC
	mov r6, r0
	mov r4, #0x16
_02386E3C:
	mov r0, r4
	bl FUN_022E9FE0
	mov r0, r6
	bl FUN_0202E6E4
	cmp r0, #0
	bne _02386E3C
	mov r0, r6
	bl FUN_0202E6C8
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
_02386E68:
	mov r6, #2
	b _02386EBC
_02386E70:
	bl FUN_022EB804
	cmp r0, #0
	beq _02386D70
	ldr r0, _02386F0C @ =0x0238A27C
	ldr r4, [r5, #0xb4]
	ldr r0, [r0]
	ldr r1, _02386F28 @ =0x0237C91C
	ldr r2, [r0, #0x124]
	add r0, r4, #0x4a
	lsl r2, r2, #3
	ldrh r1, [r1, r2]
	bl FUN_022EB408
	mov r6, #0
	strb r6, [r4, #0x4e]
	strh r6, [r4, #0x50]
	strh r6, [r4, #0x52]
	strb r6, [r4, #0x54]
	strh r6, [r4, #0x56]
	strh r6, [r4, #0x58]
_02386EBC:
	mov r0, #0x2d
	bl FUN_022E9FE0
	cmp r6, #2
	beq _02386C90
	ldr r0, _02386F0C @ =0x0238A27C
	ldr r0, [r0]
	cmp r0, #0
	beq _02386EF8
	bl ov31_02386C14
	ldr r0, _02386F0C @ =0x0238A27C
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02386F0C @ =0x0238A27C
	mov r1, #0
	str r1, [r0]
_02386EF8:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	add sp, sp, #0xf4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02386F0C: .4byte 0x0238A27C
_02386F10: .4byte 0x02389FC8
_02386F14: .4byte ov31_02386B28
_02386F18: .4byte 0x02389FB8
_02386F1C: .4byte 0x00000213
_02386F20: .4byte 0x00001013
_02386F24: .4byte 0x02389FD8
_02386F28: .4byte 0x0237C91C
	arm_func_end ov31_02386C6C

	arm_func_start ov31_02386F2C
ov31_02386F2C: @ 0x02386F2C
	push {r3, lr}
	ldr r0, _02387010 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x294
	add r0, r0, #0x400
	bl FUN_0234E988
	ldr r0, _02387010 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x97]
	cmp r0, r1
	beq _02386F64
	bl FUN_020308A0
_02386F64:
	ldr r0, _02387010 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x98]
	cmp r0, r1
	beq _02386F98
	bl FUN_020308A0
	bl FUN_020407C0
	ldr r0, _02387010 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x698]
_02386F98:
	ldr r0, _02387010 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x96]
	cmp r0, r1
	beq _02386FB8
	bl FUN_0202F8FC
_02386FB8:
	ldr r0, _02387010 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x3a4
	add r0, r0, #0x400
	bl ov31_023899D4
	ldr r0, _02387010 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x3a8
	add r0, r0, #0x400
	bl ov31_02388714
	ldr r0, _02387010 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x95
	add r0, r0, #0x600
	bl FUN_0234E988
	ldr r0, _02387010 @ =0x0238A280
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02387010 @ =0x0238A280
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02387010: .4byte 0x0238A280
	arm_func_end ov31_02386F2C
_02387014:
	.byte 0xB4, 0x10, 0x90, 0xE5, 0x24, 0xC0, 0x9F, 0xE5, 0x07, 0x00, 0xD1, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE3, 0x00, 0x00, 0x50, 0xE3, 0x0B, 0x10, 0xA0, 0x13, 0x14, 0x00, 0x9F, 0xE5
	.byte 0xA8, 0x10, 0xD1, 0x05, 0x00, 0x00, 0x90, 0xE5, 0xFF, 0x10, 0x01, 0xE2, 0xA4, 0x07, 0x90, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xB8, 0x99, 0x38, 0x02, 0x80, 0xA2, 0x38, 0x02

	arm_func_start ov31_0238704C
ov31_0238704C: @ 0x0238704C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x13c
	mov sl, r0
	ldr r0, _02387614 @ =0x000007AC
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02387618 @ =0x0238A280
	str r0, [r1]
	bl ov31_023880D8
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	str sl, [r0, #0x69c]
	bl FUN_0234EBCC
	mov r7, #0
	add r0, sp, #0xb0
	mov r1, #1
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	mov r8, r7
	bl FUN_0234EA18
	ldr r2, _0238761C @ =0x02387014
	add r0, sp, #0xb0
	mov r1, #0xe
	mov r3, r7
	bl ov31_02388114
	ldr r2, _02387618 @ =0x0238A280
	ldr r1, _02387620 @ =0x0238A014
	ldr r3, [r2]
	str r0, [r3, #0x7a8]
	ldr r0, [r2]
	ldr r0, [r0, #0x7a8]
	bl ov31_02388444
	ldr r0, _02387618 @ =0x0238A280
	add r1, sp, #8
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_02388704
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r1, #8
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov31_0238991C
	ldr r3, _02387618 @ =0x0238A280
	mov r1, #0xb
	ldr r4, [r3]
	mov r2, r7
	str r0, [r4, #0x7a4]
	ldr r0, [r3]
	ldr r0, [r0, #0x7a4]
	bl ov31_023899B8
_02387124:
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_02388534
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_023886D4
	cmp r0, #1
	moveq r7, #1
	beq _023875D8
	cmp r0, #2
	bne _02387184
	ldr r0, _02387618 @ =0x0238A280
	mov r8, #1
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_023886DC
	ldr r1, _02387618 @ =0x0238A280
	ldr r2, [r1]
	str r0, [r2, #0x760]
	ldr r0, [r1]
	ldr sb, [r0, #0x760]
	b _023871B0
_02387184:
	cmp r0, #3
	bne _023871B0
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_023886DC
	ldr r1, _02387618 @ =0x0238A280
	ldr r2, [r1]
	str r0, [r2, #0x760]
	ldr r0, [r1]
	ldr sb, [r0, #0x760]
_023871B0:
	bl FUN_022EBA70
	ldr r0, _02387618 @ =0x0238A280
	add r1, sp, #0xb0
	ldr r2, [r0]
	ldr r0, _02387624 @ =0x02353538
	ldr r2, [r2, #0x760]
	ldr r3, [r0]
	add r0, r1, r2, lsl #5
	ldr r1, [r0, #4]
	mov r0, #0x1b
	add r1, r3, r1, lsl #2
	add r1, r1, #0x12000
	ldr r4, [r1, #0xb28]
	mov r1, #0
	ldr r5, [r4, #0xb4]
	bl FUN_022EB81C
	mov r0, #0x19
	mov r1, #0
	bl FUN_022EB81C
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _02387278
	ldr r0, _02387624 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x75d]
	cmp r0, #0
	ldrbeq r0, [r1, #0x75e]
	cmpeq r0, #0
	bne _0238726C
	ldrsh r0, [r5, #0xc]
	bl FUN_0205638C
	ldrsh r1, [r0, #8]
	ldr r0, _02387628 @ =0x00005AA5
	cmp r1, r0
	beq _0238726C
	ldrb r0, [r5, #0x48]
	bl FUN_022F73A8
	cmp r0, #0
	beq _02387260
	ldr r0, _02387624 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	beq _0238726C
_02387260:
	mov r0, #0x34
	mov r1, #0
	bl FUN_022EB81C
_0238726C:
	mov r0, #0x1c
	mov r1, #0
	bl FUN_022EB81C
_02387278:
	mov r0, #0x30
	mov r1, #0
	bl FUN_022EB81C
	mov r0, #0x1a
	mov r1, #0
	bl FUN_022EB81C
	ldrb r0, [r5, #7]
	cmp r0, #0
	ldreq r0, _02387624 @ =0x02353538
	ldreq r1, [r0]
	ldrbeq r0, [r1, #0x75e]
	cmpeq r0, #0
	bne _02387320
	ldrb r0, [r1, #0x75c]
	cmp r0, #0
	beq _02387320
	ldrb r0, [r1, #0x748]
	bl FUN_020513C0
	cmp r0, #0
	beq _02387320
	mov r0, #0x3b
	mov r1, #0
	bl FUN_022EB81C
	ldrsh r0, [r5, #0xc]
	mov r6, #1
	cmp r0, #4
	movge r6, #0
	bge _023872FC
	bl FUN_0205638C
	ldrsh r0, [r0, #8]
	bl FUN_022F9C34
	cmp r0, #0
	movne r6, #0
_023872FC:
	mov r0, r4
	mov r1, #0
	bl FUN_02300818
	cmp r0, #0
	movne r6, #0
	cmp r6, #0
	bne _02387320
	mov r0, #0x3b
	bl FUN_022EB8F4
_02387320:
	mov r0, r5
	bl FUN_022FBAF0
	cmp r0, #0
	beq _0238735C
	mov r0, #0x19
	bl FUN_022EB8F4
	mov r0, #0x3b
	bl FUN_022EB8F4
	mov r0, #0x1a
	bl FUN_022EB8F4
	mov r0, #0x30
	bl FUN_022EB8F4
	mov r0, #0x34
	bl FUN_022EB8F4
	b _02387380
_0238735C:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _02387380
	mov r0, r4
	bl FUN_0234FBD4
	cmp r0, #0
	bne _02387380
	mov r0, #0x1a
	bl FUN_022EB8F4
_02387380:
	bl FUN_022EB9A0
	cmp r8, #0
	beq _023873C8
	ldr r0, _02387618 @ =0x0238A280
	ldr r3, [sl, #0xb4]
	ldr r0, [r0]
	add r1, sp, #0xb4
	ldr r2, [r0, #0x760]
	add r0, r3, #0x4a
	ldr r1, [r1, r2, lsl #5]
	bl FUN_022EBA94
	ldr r0, _02387618 @ =0x0238A280
	mov r7, #0
	ldr r0, [r0]
	add r0, r0, #0x294
	add r0, r0, #0x400
	bl FUN_0234E988
	b _023875D8
_023873C8:
	ldr r0, _02387618 @ =0x0238A280
	cmp sb, #0
	ldr r0, [r0]
	moveq r2, #1
	add r1, r0, #0x188
	movne r2, #0
	add r0, r0, #0x530
	add r1, r1, #0x400
	bl ov31_0238513C
	bl FUN_022EBA84
	mov r2, #0
	ldr r1, _02387618 @ =0x0238A280
	b _02387410
_023873FC:
	ldr r3, [r1]
	add r4, r2, #1
	add r3, r3, r2, lsl #3
	mov r2, r4
	str r4, [r3, #0x534]
_02387410:
	cmp r2, r0
	blt _023873FC
	ldr r4, _02387618 @ =0x0238A280
	ldr r3, _0238762C @ =0x00000A3C
	ldr r0, [r4]
	mvn r1, #0
	add r0, r0, r2, lsl #3
	add r0, r0, #0x500
	strh r3, [r0, #0x30]
	ldr r0, [r4]
	mov r5, #0
	add r0, r0, r2, lsl #3
	str r1, [r0, #0x534]
	ldr r3, [r4]
	mov r0, #0xa
	add r3, r3, r2, lsl #3
	add r3, r3, #0x500
	strh r5, [r3, #0x38]
	ldr r3, [r4]
	add r2, r3, r2, lsl #3
	str r1, [r2, #0x53c]
	ldr r1, [r4]
	add r1, r1, #0x188
	add r1, r1, #0x400
	str r1, [sp, #0x78]
	bl FUN_02029EC8
	add r4, r0, #1
	ldr r1, _02387618 @ =0x0238A280
	ldr r0, _02387630 @ =0x0238A024
	ldr r3, [r1]
	ldr r1, _02387634 @ =0x00000233
	add r2, sp, #0x18
	add r3, r3, #0x530
	str r4, [sp, #0x18]
	bl FUN_0202A5CC
	ldr r4, _02387618 @ =0x0238A280
	mov r6, #0x1b
	ldr r1, [r4]
	add fp, sp, #4
	strb r0, [r1, #0x694]
_023874B0:
	mov r0, r6
	bl FUN_022E9FE0
	mov r0, r5
	mov r1, fp
	bl FUN_0200625C
	ldr r0, [r4]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x94]
	bl FUN_0202AB40
	cmp r0, #0
	ldr r0, [r4]
	add r0, r0, #0x600
	bne _02387578
	ldrsb r0, [r0, #0x94]
	bl FUN_0202ABB0
	subs r1, r0, #1
	bmi _0238754C
	ldr r0, [r4]
	str r1, [r0, #0x760]
	ldr r0, [r4]
	ldr r0, [r0, #0x760]
	bl FUN_022EB804
	cmp r0, #0
	beq _023874B0
	ldr r0, _02387618 @ =0x0238A280
	ldr r1, _02387638 @ =0x0237C91C
	ldr r0, [r0]
	ldr r5, [sl, #0xb4]
	ldr r2, [r0, #0x760]
	add r0, r5, #0x4a
	lsl r2, r2, #3
	ldrh r1, [r1, r2]
	bl FUN_022EB408
	add r0, sp, #0xb0
	add r0, r0, sb, lsl #5
	ldr r0, [r0, #4]
	mov r4, #0
	strb r0, [r5, #0x4e]
	b _02387594
_0238754C:
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x294
	add r0, r0, #0x400
	bl FUN_0234E988
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	ldr r0, [r0, #0x7a8]
	bl ov31_023886F4
	mov r4, #1
	b _02387594
_02387578:
	ldrsb r0, [r0, #0x94]
	bl FUN_0202AB80
	mov r1, r0
	mov r0, #0xa
	and r1, r1, #0xff
	bl FUN_02029ED8
	b _023874B0
_02387594:
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x294
	add r0, r0, #0x400
	bl FUN_0234E988
	cmp r4, #1
	beq _02387124
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x95
	add r0, r0, #0x600
	bl FUN_0234E988
	ldr r0, _02387618 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x3a4
	add r0, r0, #0x400
	bl ov31_023899D4
_023875D8:
	cmp r7, #0
	beq _023875F0
	bl FUN_022E9580
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
_023875F0:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	bl ov31_02386F2C
	mov r0, #0x1b
	bl FUN_022E9FE0
	mov r0, r7
	add sp, sp, #0x13c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02387614: .4byte 0x000007AC
_02387618: .4byte 0x0238A280
_0238761C: .4byte 0x02387014
_02387620: .4byte 0x0238A014
_02387624: .4byte 0x02353538
_02387628: .4byte 0x00005AA5
_0238762C: .4byte 0x00000A3C
_02387630: .4byte 0x0238A024
_02387634: .4byte 0x00000233
_02387638: .4byte 0x0237C91C
	arm_func_end ov31_0238704C

	arm_func_start ov31_0238763C
ov31_0238763C: @ 0x0238763C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov31_0238763C

	arm_func_start ov31_02387660
ov31_02387660: @ 0x02387660
	ldr r1, _02387680 @ =0x02353538
	ldrb r0, [r0, #4]
	ldr r1, [r1]
	ldr ip, _02387684 @ =FUN_0238948C
	add r0, r1, r0, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bx ip
	.align 2, 0
_02387680: .4byte 0x02353538
_02387684: .4byte FUN_0238948C
	arm_func_end ov31_02387660

	arm_func_start ov31_02387688
ov31_02387688: @ 0x02387688
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x78
	ldr r2, _02387788 @ =0x02353538
	ldrb r0, [r0, #4]
	ldr r2, [r2]
	mov r4, r1
	add r0, r2, r0, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	bl FUN_022EA62C
	cmp r4, #0
	beq _023876C4
	mov r0, sb
	bl ov31_023889DC
	b _0238776C
_023876C4:
	ldr r0, [sb, #0xb4]
	bl FUN_022FBAF0
	cmp r0, #0
	movne r4, #1
	bne _023876E4
	cmp r4, #0
	movne r4, #2
	moveq r4, #0
_023876E4:
	add r0, sp, #0
	mov r1, sb
	bl FUN_022F89CC
	mov r2, #0
	add r0, sp, #0
	mov r1, r4
	strh r2, [sp, #0x40]
	strh r2, [sp, #0x56]
	bl FUN_0203F150
	mov r7, #0x62
	mov r6, r7
	mov r5, r7
	mov r4, #1
	mov fp, #0x1c
	mov r8, #0
_02387720:
	mov sl, r8
	bl FUN_022EA62C
_02387728:
	mov r0, r7
	bl FUN_022E9FE0
	bl FUN_0203F398
	cmp r0, #2
	beq _0238775C
	cmp r0, #1
	bne _02387728
	bl FUN_0203F990
	mov r0, r6
	bl FUN_022E9FE0
	mov r0, r5
	bl FUN_022E9FE0
	mov sl, r4
_0238775C:
	mov r0, fp
	bl FUN_022E9FE0
	cmp sl, #0
	beq _02387720
_0238776C:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, sb
	bl FUN_023021F0
	add sp, sp, #0x78
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02387788: .4byte 0x02353538
	arm_func_end ov31_02387688

	arm_func_start ov31_0238778C
ov31_0238778C: @ 0x0238778C
	push {r4, lr}
	ldr r1, _023877C0 @ =0x0238A280
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x92]
	bl FUN_020258C4
	mov r1, #2
	mov r3, r0
	mov r0, r4
	mov r2, r1
	bl FUN_02026214
	pop {r4, pc}
	.align 2, 0
_023877C0: .4byte 0x0238A280
	arm_func_end ov31_0238778C
_023877C4:
	.byte 0x18, 0x20, 0x9F, 0xE5, 0x18, 0xC0, 0x9F, 0xE5, 0x00, 0x30, 0x92, 0xE5
	.byte 0x02, 0x10, 0xA0, 0xE3, 0x12, 0x30, 0x83, 0xE2, 0x10, 0x20, 0xA0, 0xE3, 0x06, 0x3C, 0x83, 0xE2
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x80, 0xA2, 0x38, 0x02, 0x14, 0x62, 0x02, 0x02

	arm_func_start ov31_023877EC
ov31_023877EC: @ 0x023877EC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2a4
	mov r4, #0
	movs sl, r0
	str r3, [sp, #8]
	subne r0, r4, #1
	strne r0, [sl]
	mov sb, r1
	ldr r0, _02388080 @ =0x000007AC
	mov r1, #8
	mov fp, r2
	bl FUN_02001170
	ldr r1, _02388084 @ =0x0238A280
	str r0, [r1]
	bl ov31_023880D8
	mov r7, #0
	mov r6, r7
_02387830:
	ldr r0, _02388088 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb28]
	mov r0, r5
	bl ov31_0238763C
	cmp r0, #0
	beq _0238789C
	cmp fp, #0
	beq _0238786C
	mov r0, r5
	ldr r8, [r5, #0xb4]
	bl FUN_02347100
	strb r0, [r8, #0x161]
_0238786C:
	add r0, sp, #0x218
	add r0, r0, r7, lsl #5
	str r6, [r0, #4]
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0x161]
	cmp r0, #0
	movne r1, #0
	add r0, sp, #0x218
	add r0, r0, r7
	moveq r1, #3
	strb r1, [r0, #0x84]
	add r7, r7, #1
_0238789C:
	add r6, r6, #1
	cmp r6, #4
	blt _02387830
	mov r6, r7
	mvn r5, #0
	add r3, sp, #0x218
	mov r1, #0
	b _023878D0
_023878BC:
	add r2, r3, r6, lsl #5
	add r0, r3, r6
	str r5, [r2, #4]
	strb r1, [r0, #0x84]
	add r6, r6, #1
_023878D0:
	cmp r6, #4
	blt _023878BC
	mov r0, #0xb
	bl FUN_02029EC8
	ldr r1, _02388084 @ =0x0238A280
	mov r2, #0
	ldr r3, [r1]
	str r0, [r3, #0x760]
	ldr r0, [r1]
	str r7, [r0, #0x764]
	ldr r0, [r1]
	str r7, [r0, #0x768]
	ldr r0, [r1]
	str r2, [r0, #0x76c]
	ldr r0, [r1]
	str r2, [r0, #0x770]
	ldr r0, [r1]
	str r2, [r0, #0x754]
	ldr r0, [r1]
	str r2, [r0, #0x758]
	bl FUN_022EA62C
	ldr r0, _02388084 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x95
	add r0, r0, #0x600
	bl FUN_0234E988
	mov r5, #0
	add r0, sp, #0x68
	mov r1, r5
	mov r2, #0x80
	bl FUN_02087308
	mov r8, r5
	ldr fp, _0238808C @ =0x000003E7
	b _02387B80
_02387958:
	add r0, sp, #0x218
	add r0, r0, r8, lsl #5
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _02387B7C
	ldr r0, _02388088 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	mov r0, r6
	bl ov31_0238763C
	cmp r0, #0
	beq _02387B7C
	add r0, sp, #0x218
	add r0, r0, r8
	ldrb r0, [r0, #0x84]
	ldr r6, [r6, #0xb4]
	cmp r0, #0
	movne r0, #0x57
	moveq r0, #0x44
	and r2, r0, #0xff
	add r0, sp, #0x68
	mov r1, r6
	bl FUN_023002F0
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	ldrsh r0, [r6, #0xc]
	bl FUN_0205638C
	ldrsh r0, [r0, #8]
	bl FUN_022F9C34
	cmp r0, #0
	ldrsh r1, [r6, #0x12]
	ldrsh r0, [r6, #0x16]
	beq _02387A84
	add r1, r1, r0
	cmp r1, fp
	movgt r3, fp
	movle r3, r1
	asr r2, r3, #1
	ldrsh r0, [r6, #0x10]
	add r2, r3, r2, lsr #30
	cmp r0, r2, asr #2
	bgt _02387A18
	ldr r1, _02388090 @ =0x0238A044
	add r0, sp, #0xa8
	bl FUN_02089694
	b _02387B20
_02387A18:
	cmp r1, fp
	movgt r3, fp
	movle r3, r1
	asr r2, r3, #1
	add r2, r3, r2, lsr #30
	asr r2, r2, #2
	cmp r0, r2, lsl #1
	bgt _02387A48
	ldr r1, _02388094 @ =0x0238A04C
	add r0, sp, #0xa8
	bl FUN_02089694
	b _02387B20
_02387A48:
	cmp r1, fp
	movgt r1, fp
	asr r2, r1, #1
	add r1, r1, r2, lsr #30
	asr r1, r1, #2
	add r1, r1, r1, lsl #1
	cmp r0, r1
	add r0, sp, #0xa8
	bgt _02387A78
	ldr r1, _02388098 @ =0x0238A054
	bl FUN_02089694
	b _02387B20
_02387A78:
	ldr r1, _0238809C @ =0x0238A05C
	bl FUN_02089694
	b _02387B20
_02387A84:
	add r1, r1, r0
	cmp r1, fp
	movgt r3, fp
	movle r3, r1
	asr r2, r3, #1
	ldrsh r0, [r6, #0x10]
	add r2, r3, r2, lsr #30
	cmp r0, r2, asr #2
	bgt _02387AB8
	ldr r1, _023880A0 @ =0x0238A064
	add r0, sp, #0xa8
	bl FUN_02089694
	b _02387B20
_02387AB8:
	cmp r1, fp
	movgt r3, fp
	movle r3, r1
	asr r2, r3, #1
	add r2, r3, r2, lsr #30
	asr r2, r2, #2
	cmp r0, r2, lsl #1
	bgt _02387AE8
	ldr r1, _023880A4 @ =0x0238A06C
	add r0, sp, #0xa8
	bl FUN_02089694
	b _02387B20
_02387AE8:
	cmp r1, fp
	movgt r1, fp
	asr r2, r1, #1
	add r1, r1, r2, lsr #30
	asr r1, r1, #2
	add r1, r1, r1, lsl #1
	cmp r0, r1
	add r0, sp, #0xa8
	bgt _02387B18
	ldr r1, _023880A8 @ =0x0238A074
	bl FUN_02089694
	b _02387B20
_02387B18:
	ldr r1, _023880AC @ =0x0238A07C
	bl FUN_02089694
_02387B20:
	add r0, sp, #0xa8
	str r0, [sp, #0x54]
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, _02388084 @ =0x0238A280
	ldr r2, _023880B0 @ =0x0238A084
	ldr r0, [r0]
	mov r1, #0x100
	add r0, r0, #0x30
	add r0, r0, r5, lsl #8
	mov r3, #0
	bl FUN_020223F0
	ldr r0, _02388084 @ =0x0238A280
	lsl r1, r5, #3
	ldr r2, [r0]
	add r0, r2, #0x30
	add r0, r0, r5, lsl #8
	str r0, [r2, r5, lsl #3]
	ldr r0, _02388084 @ =0x0238A280
	add r5, r5, #1
	ldr r0, [r0]
	add r0, r0, r1
	str r5, [r0, #4]
_02387B7C:
	add r8, r8, #1
_02387B80:
	cmp r8, r7
	blt _02387958
	ldr r0, _02388084 @ =0x0238A280
	mov r3, #0
	ldr r1, [r0]
	sub r2, r3, #1
	str r3, [r1, r5, lsl #3]
	ldr r1, [r0]
	ldr r0, _02388088 @ =0x02353538
	add r1, r1, r5, lsl #3
	str r2, [r1, #4]
	ldr r0, [r0]
	ldrb r5, [r0, #0x75b]
	cmp r5, #0
	ldrne r1, _023880B4 @ =0x00000A3A
	movne r0, #0x10
	strne r0, [sp, #0xf4]
	mov r0, #0xb
	strhne r1, [sp, #0xf0]
	bl FUN_02029EC8
	ldr r1, _02388084 @ =0x0238A280
	cmp r5, #0
	ldr r3, [r1]
	add r2, sp, #0x29c
	str r0, [r3, #0x760]
	ldr r0, [r1]
	movne r1, #0x800
	ldr r0, [r0, #0x760]
	moveq r1, #0
	add r0, r0, #1
	str r0, [sp, #0xe8]
	ldr r0, _02388084 @ =0x0238A280
	orr r1, r1, #0x33
	ldr r3, [r0]
	str r2, [sp, #0x148]
	ldr r0, _023880B8 @ =0x0238A004
	add r2, sp, #0xe8
	orr r1, r1, #0x1200
	bl FUN_0202A690
	ldr r2, _02388084 @ =0x0238A280
	ldr r1, _023880BC @ =ov31_0238778C
	ldr r2, [r2]
	strb r0, [r2, #0x695]
	ldr r0, _023880C0 @ =0x0238A034
	bl FUN_0202F8C4
	ldr r1, _02388084 @ =0x0238A280
	ldr r3, _023880C4 @ =0x00000A36
	ldr r2, [r1]
	mov r5, #0x10
	strb r0, [r2, #0x696]
	ldr r2, [r1]
	str r5, [sp, #0x18c]
	add r0, r2, #0x92
	add r1, r0, #0x500
	add r0, sp, #0x118
	strh r3, [r0, #0x70]
	str r1, [sp, #0x1c8]
	cmp sb, #3
	bne _02387CA8
	add r1, r3, #3
	add r0, r2, #0x600
	strh r1, [r0, #0x92]
	mov r5, #0
	str r5, [sp]
	ldr r0, _023880C8 @ =0x02389FF4
	ldr r3, _023880CC @ =0x023877C4
	add r2, sp, #0x180
	mov r1, #0x800
	str r5, [sp, #4]
	bl FUN_020305B4
	ldr r1, _02388084 @ =0x0238A280
	ldr r1, [r1]
	strb r0, [r1, #0x697]
	b _02387CF4
_02387CA8:
	cmp sb, #2
	addne r1, r3, #3
	addne r0, r2, #0x600
	strhne r1, [r0, #0x92]
	bne _02387CF4
	add r1, r3, #2
	add r0, r2, #0x600
	strh r1, [r0, #0x92]
	mov r5, #0
	str r5, [sp]
	ldr r0, _023880C8 @ =0x02389FF4
	ldr r3, _023880CC @ =0x023877C4
	add r2, sp, #0x180
	mov r1, #0x800
	str r5, [sp, #4]
	bl FUN_020305B4
	ldr r1, _02388084 @ =0x0238A280
	ldr r1, [r1]
	strb r0, [r1, #0x697]
_02387CF4:
	sub r0, sb, #2
	mvn r7, #0x3d8
	str r0, [sp, #0x10]
	add r0, r7, #0xe10
	ldr r5, _02388084 @ =0x0238A280
	str r0, [sp, #0x14]
	asr fp, r7, #9
_02387D10:
	ldr r0, [r5]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x95]
	bl FUN_0202AB80
	ldr r1, [r5]
	str r0, [r1, #0x760]
	ldr r1, [r5]
	mov r0, #0xb
	ldr r1, [r1, #0x760]
	and r1, r1, #0xff
	bl FUN_02029ED8
	ldr r0, [r5]
	ldr r1, [r0, #0x760]
	add r0, sp, #0x218
	add r0, r0, r1, lsl #5
	ldr r6, [r0, #4]
	cmp r6, #0
	blt _02387EC0
	ldr r0, _02388088 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl ov31_0238763C
	cmp r0, #0
	cmpne r7, r6
	beq _02387E98
	cmp sb, #1
	bne _02387DCC
	mov r0, r8
	bl FUN_0203F9CC
	ldr r0, [r5]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x98]
	cmp r0, fp
	bne _02387DC0
	mov r1, #0
	mov r0, #7
	mov r2, r1
	bl FUN_0204018C
	ldr r1, [r5]
	strb r0, [r1, #0x698]
	b _02387DC4
_02387DC0:
	bl FUN_02041178
_02387DC4:
	bl FUN_020407EC
	b _02387E98
_02387DCC:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _02387E98
	ldr r1, [r5]
	add r0, r1, #0x600
	ldrsb r0, [r0, #0x97]
	str r0, [sp, #0xc]
	cmp r0, fp
	beq _02387E98
	add r0, r1, #0x92
	ldr r7, [r8, #0xb4]
	add r0, r0, #0x500
	mov r1, r8
	mov r2, #0
	bl FUN_022E2A78
	ldrb r0, [r7, #0xbc]
	cmp r0, #7
	beq _02387E24
	mov r0, r7
	bl FUN_022FBAF0
	cmp r0, #0
	beq _02387E3C
_02387E24:
	ldr r0, [r5]
	ldr r1, _023880D0 @ =0x00000A3D
	add r0, r0, #0x12
	add r0, r0, #0x600
	bl FUN_020258B8
	b _02387E90
_02387E3C:
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _02387E6C
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	add r0, r0, #0x12
	add r0, r0, #0x600
	bl FUN_020258B8
	b _02387E90
_02387E6C:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, _023880D4 @ =0x02389FE8
	add r0, r0, #0x12
	add r1, r7, #0x62
	add r0, r0, #0x600
	mov r3, #1
	bl FUN_0200D310
_02387E90:
	ldr r0, [sp, #0xc]
	bl FUN_0203083C
_02387E98:
	mov r0, r8
	mov r1, #0
	mov r2, #1
	mov r7, r6
	bl FUN_022F98B4
	mov r2, #1
	add r0, r8, #4
	mov r1, #0
	mov r3, r2
	bl FUN_02337428
_02387EC0:
	mov r0, #0x1b
	bl FUN_022E9FE0
	ldr r0, [r5]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x95]
	bl FUN_0202AB40
	cmp r0, #0
	bne _02387D10
	ldr r0, _02388084 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x95]
	bl FUN_0202ABB0
	subs r3, r0, #1
	bmi _02387F24
	ldr r0, _02388084 @ =0x0238A280
	add r1, sp, #0x29c
	ldr r2, [r0]
	str r3, [r2, #0x760]
	ldr r0, [r0]
	ldr r0, [r0, #0x760]
	ldrb r0, [r1, r0]
	cmp r0, #0
	movne r4, #1
	b _02387F28
_02387F24:
	mov r4, #1
_02387F28:
	ldr r0, _02388084 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x97]
	cmp r0, r1
	beq _02387F58
	bl FUN_020308A0
	ldr r0, _02388084 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x697]
_02387F58:
	ldr r0, _02388084 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x98]
	cmp r0, r1
	beq _02387F8C
	bl FUN_020308A0
	bl FUN_020407C0
	ldr r0, _02388084 @ =0x0238A280
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x698]
_02387F8C:
	ldr r0, _02388084 @ =0x0238A280
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrsb r0, [r0, #0x96]
	bl FUN_0202F8FC
	ldr r0, _02388084 @ =0x0238A280
	mvn r2, #1
	ldr r1, [r0]
	mov r0, #0x1b
	strb r2, [r1, #0x696]
	bl FUN_022E9FE0
	cmp sb, #3
	bne _02387FEC
	cmp r4, #0
	beq _0238800C
	bl FUN_0233779C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0238800C
	bl FUN_022E9580
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	b _0238800C
_02387FEC:
	bl FUN_0233779C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0238800C
	bl FUN_022E9580
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
_0238800C:
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #4
	mov r1, #0x3e
	bl FUN_022EA370
	cmp r4, #0
	beq _02388038
	bl ov31_02386F2C
	mov r0, #0
	b _02388078
_02388038:
	ldr r0, _02388084 @ =0x0238A280
	add r1, sp, #0x21c
	ldr r0, [r0]
	cmp sl, #0
	ldr r0, [r0, #0x760]
	ldr r4, [r1, r0, lsl #5]
	strne r4, [sl]
	bl ov31_02386F2C
	cmp r4, #0
	movlt r0, #0
	blt _02388078
	ldr r0, _02388088 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
_02388078:
	add sp, sp, #0x2a4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02388080: .4byte 0x000007AC
_02388084: .4byte 0x0238A280
_02388088: .4byte 0x02353538
_0238808C: .4byte 0x000003E7
_02388090: .4byte 0x0238A044
_02388094: .4byte 0x0238A04C
_02388098: .4byte 0x0238A054
_0238809C: .4byte 0x0238A05C
_023880A0: .4byte 0x0238A064
_023880A4: .4byte 0x0238A06C
_023880A8: .4byte 0x0238A074
_023880AC: .4byte 0x0238A07C
_023880B0: .4byte 0x0238A084
_023880B4: .4byte 0x00000A3A
_023880B8: .4byte 0x0238A004
_023880BC: .4byte ov31_0238778C
_023880C0: .4byte 0x0238A034
_023880C4: .4byte 0x00000A36
_023880C8: .4byte 0x02389FF4
_023880CC: .4byte 0x023877C4
_023880D0: .4byte 0x00000A3D
_023880D4: .4byte 0x02389FE8
	arm_func_end ov31_023877EC

	arm_func_start ov31_023880D8
ov31_023880D8: @ 0x023880D8
	mov r2, #0
	strb r2, [r0, #0x592]
	strb r2, [r0, #0x612]
	sub r1, r2, #2
	strb r1, [r0, #0x695]
	strb r1, [r0, #0x694]
	strb r1, [r0, #0x696]
	strb r1, [r0, #0x697]
	strb r1, [r0, #0x698]
	str r2, [r0, #0x7a4]
	str r2, [r0, #0x7a8]
	str r2, [r0, #0x76c]
	str r2, [r0, #0x770]
	str r2, [r0, #0x760]
	bx lr
	arm_func_end ov31_023880D8

	arm_func_start ov31_02388114
ov31_02388114: @ 0x02388114
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, _02388154 @ =0x000006D4
	mov r4, r2
	mov r1, #8
	mov r5, r3
	bl FUN_02001170
	mov r1, r7
	mov r2, r6
	mov r3, r4
	mov r4, r0
	str r5, [sp]
	bl ov31_02388158
	mov r0, r4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02388154: .4byte 0x000006D4
	arm_func_end ov31_02388114

	arm_func_start ov31_02388158
ov31_02388158: @ 0x02388158
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xdc
	mov sl, r0
	mvn r0, #1
	strb r0, [sl]
	ldr r4, [sp, #0x100]
	str r3, [sl, #0x6c4]
	str r4, [sl, #0x6c8]
	mov r0, #0
	str r0, [sl, #0x688]
	str r0, [sl, #0x68c]
	str r0, [sl, #0x67c]
	mov sb, r1
	str r2, [sl, #0x6c0]
	sub r0, r0, #1
	mov r7, sb
	str r0, [sl, #0x6b8]
	add r6, sl, #4
	mov r4, #8
_023881A4:
	ldm r7!, {r0, r1, r2, r3}
	stm r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _023881A4
	ldm r7, {r0, r1, r2}
	stm r6, {r0, r1, r2}
	add r0, sp, #0xc
	mov r1, #0x80
	bl FUN_02003250
	mov r4, #0
	add r0, sb, #0x14
	mov r7, r4
	str r0, [sp, #8]
	add fp, sl, #0xc0
	b _023883F4
_023881E0:
	ldr r0, [sb]
	cmp r0, #1
	bne _023882A0
	add r0, sb, r7, lsl #5
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _023883F0
	moveq r0, #0
	beq _02388218
	ldr r0, [r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_02388218:
	cmp r0, #0
	beq _023883F0
	add r0, sb, r7
	ldrb r0, [r0, #0x84]
	ldr r6, [r1, #0xb4]
	add r1, sb, r7, lsl #5
	cmp r0, #0
	movne r0, #0x57
	moveq r0, #0x44
	and r2, r0, #0xff
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	add r0, sp, #0xc
	beq _02388264
	ldrb r2, [r1, #0x1e]
	ldr r1, [sp, #8]
	add r1, r1, r7, lsl #5
	bl FUN_02054F44
	b _0238826C
_02388264:
	mov r1, r6
	bl FUN_023002F0
_0238826C:
	ldrsh r1, [r6, #0x12]
	ldrsh r0, [r6, #0x16]
	ldrsh r5, [r6, #0x10]
	add r8, r1, r0
	ldr r0, _0238841C @ =0x000003E7
	cmp r8, r0
	movgt r8, r0
	ldrsh r0, [r6, #0xc]
	bl FUN_0205638C
	ldrsh r0, [r0, #8]
	bl FUN_022F9C34
	str r0, [sp, #4]
	b _023882E8
_023882A0:
	cmp r0, #0
	bne _023882E8
	add r0, sb, r7, lsl #5
	ldr r6, [r0, #0x20]
	ldrb r0, [r6]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _023883F0
	ldrsh r5, [r6, #0xe]
	ldrsh r8, [r6, #0x10]
	ldrsh r0, [r6, #8]
	bl FUN_02056228
	str r0, [sp, #4]
	mov r1, r6
	add r0, sp, #0xc
	bl FUN_020585B4
_023882E8:
	add r0, sp, #0xc
	str r0, [sp, #0xc4]
	ldr r0, [sp, #4]
	cmp r0, #0
	asr r0, r8, #1
	add r0, r8, r0, lsr #30
	beq _02388360
	cmp r5, r0, asr #2
	asr r0, r0, #2
	bgt _02388320
	ldr r1, _02388420 @ =0x0238A0A8
	add r0, sp, #0x4c
	bl FUN_02089694
	b _023883B8
_02388320:
	cmp r5, r0, lsl #1
	bgt _02388338
	ldr r1, _02388424 @ =0x0238A0B0
	add r0, sp, #0x4c
	bl FUN_02089694
	b _023883B8
_02388338:
	add r0, r0, r0, lsl #1
	cmp r5, r0
	add r0, sp, #0x4c
	bgt _02388354
	ldr r1, _02388428 @ =0x0238A0B8
	bl FUN_02089694
	b _023883B8
_02388354:
	ldr r1, _0238842C @ =0x0238A0C0
	bl FUN_02089694
	b _023883B8
_02388360:
	cmp r5, r0, asr #2
	asr r0, r0, #2
	bgt _0238837C
	ldr r1, _02388430 @ =0x0238A0C8
	add r0, sp, #0x4c
	bl FUN_02089694
	b _023883B8
_0238837C:
	cmp r5, r0, lsl #1
	bgt _02388394
	ldr r1, _02388434 @ =0x0238A0D0
	add r0, sp, #0x4c
	bl FUN_02089694
	b _023883B8
_02388394:
	add r0, r0, r0, lsl #1
	cmp r5, r0
	add r0, sp, #0x4c
	bgt _023883B0
	ldr r1, _02388438 @ =0x0238A0D8
	bl FUN_02089694
	b _023883B8
_023883B0:
	ldr r1, _0238843C @ =0x0238A0E0
	bl FUN_02089694
_023883B8:
	add r0, sp, #0x4c
	str r0, [sp, #0xc8]
	add r0, sp, #0x8c
	str r0, [sp]
	ldr r2, _02388440 @ =0x0238A0E8
	add r0, fp, r4, lsl #8
	mov r1, #0x100
	mov r3, #0
	bl FUN_020223F0
	add r1, fp, r4, lsl #8
	add r0, sl, r4, lsl #3
	str r1, [r0, #0x90]
	add r4, r4, #1
	str r4, [r0, #0x94]
_023883F0:
	add r7, r7, #1
_023883F4:
	ldr r0, [sb, #0x88]
	cmp r7, r0
	blt _023881E0
	mov r0, #0
	add r1, sl, r4, lsl #3
	str r0, [r1, #0x90]
	sub r0, r0, #1
	str r0, [r1, #0x94]
	add sp, sp, #0xdc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0238841C: .4byte 0x000003E7
_02388420: .4byte 0x0238A0A8
_02388424: .4byte 0x0238A0B0
_02388428: .4byte 0x0238A0B8
_0238842C: .4byte 0x0238A0C0
_02388430: .4byte 0x0238A0C8
_02388434: .4byte 0x0238A0D0
_02388438: .4byte 0x0238A0D8
_0238843C: .4byte 0x0238A0E0
_02388440: .4byte 0x0238A0E8
	arm_func_end ov31_02388158

	arm_func_start ov31_02388444
ov31_02388444: @ 0x02388444
	push {r4, r5, r6, lr}
	sub sp, sp, #0x98
	mov r6, r0
	mov r5, r1
	bl FUN_0234E988
	mov r0, #0xb
	bl FUN_02029EC8
	str r0, [r6, #0x67c]
	ldr r1, [r6, #0x8c]
	mov r0, #0
	str r1, [r6, #0x680]
	ldr r1, [r6, #0x8c]
	str r1, [r6, #0x684]
	str r0, [r6, #0x688]
	str r0, [r6, #0x68c]
	str r0, [r6, #0x670]
	str r0, [r6, #0x674]
	bl FUN_022EA62C
	ldr r0, _02388528 @ =0x02353538
	ldr r0, [r0]
	ldrb r4, [r0, #0x75b]
	cmp r4, #0
	ldrne r1, _0238852C @ =0x00000A3A
	movne r0, #0x10
	strne r0, [sp, #0xc]
	strhne r1, [sp, #8]
	mov r0, #0xb
	bl FUN_02029EC8
	str r0, [r6, #0x67c]
	add r1, r0, #1
	add r0, r6, #0x88
	str r1, [sp]
	str r0, [sp, #0x60]
	ldr r0, [r6, #0x6c0]
	add r2, sp, #0
	tst r0, #2
	beq _023884FC
	cmp r4, #0
	movne r3, #0x800
	ldr r1, _02388530 @ =0x00401233
	moveq r3, #0
	orr r1, r3, r1
	mov r0, r5
	add r3, r6, #0x90
	bl FUN_0202A730
	b _0238851C
_023884FC:
	cmp r4, #0
	movne r0, #0x800
	moveq r0, #0
	orr r1, r0, #0x33
	mov r0, r5
	orr r1, r1, #0x1200
	add r3, r6, #0x90
	bl FUN_0202A690
_0238851C:
	strb r0, [r6]
	add sp, sp, #0x98
	pop {r4, r5, r6, pc}
	.align 2, 0
_02388528: .4byte 0x02353538
_0238852C: .4byte 0x00000A3A
_02388530: .4byte 0x00401233
	arm_func_end ov31_02388444

	arm_func_start ov31_02388534
ov31_02388534: @ 0x02388534
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0
	str r0, [sl, #0x6cc]
	add r4, sl, #0x2cc
	str r0, [r4, #0x404]
	add sb, sl, #4
	mov r5, #2
	mov r6, #0xb
	mov fp, #0x1b
	mov r8, r0
	add r7, sp, #0
_02388564:
	mov r0, r8
	mov r1, r7
	bl FUN_0200625C
	ldrsb r0, [sl]
	bl FUN_0202AB80
	str r0, [sl, #0x67c]
	ldr r1, [sl, #0x6b8]
	cmp r1, r0
	beq _023885DC
	str r0, [sl, #0x6b8]
	ldr r1, [sb]
	cmp r1, #1
	bne _023885B8
	add r0, sb, r0, lsl #5
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ldrne r1, [sl, #0x6c4]
	cmpne r1, #0
	beq _023885DC
	blx r1
	b _023885DC
_023885B8:
	cmp r1, #0
	bne _023885DC
	add r0, sb, r0, lsl #5
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ldrne r1, [sl, #0x6c4]
	cmpne r1, #0
	beq _023885DC
	blx r1
_023885DC:
	ldr r1, [sl, #0x67c]
	mov r0, r6
	and r1, r1, #0xff
	bl FUN_02029ED8
	ldr r0, [sl, #0x6c0]
	tst r0, #4
	beq _02388644
	ldrh r0, [sp]
	tst r0, #8
	beq _02388644
	ldr r0, [sl, #0x67c]
	add r0, sb, r0
	ldrb r0, [r0, #0x84]
	cmp r0, #0
	bne _02388638
	add r0, sl, #0x5c0
	mov r1, #0
	bl FUN_02032960
	mov r0, #2
	str r0, [r4, #0x400]
	ldr r0, [sl, #0x6b8]
	str r0, [r4, #0x404]
	b _023886BC
_02388638:
	mov r1, r5
	add r0, sl, #0x5c0
	bl FUN_02032960
_02388644:
	ldrsb r0, [sl]
	bl FUN_0202AB40
	cmp r0, #0
	bne _023886A8
	ldrsb r0, [sl]
	bl FUN_0202ABB0
	subs r0, r0, #1
	bmi _0238869C
	ldrsb r0, [sl]
	bl FUN_0202ABB0
	sub r0, r0, #1
	str r0, [sl, #0x67c]
	add r0, sb, r0
	ldrb r0, [r0, #0x84]
	cmp r0, #0
	moveq r0, #3
	streq r0, [r4, #0x400]
	ldreq r0, [sl, #0x67c]
	streq r0, [r4, #0x404]
	movne r0, #1
	strne r0, [r4, #0x400]
	b _023886BC
_0238869C:
	mov r0, #1
	str r0, [r4, #0x400]
	b _023886BC
_023886A8:
	mov r0, sl
	bl ov31_02388744
	mov r0, fp
	bl FUN_022E9FE0
	b _02388564
_023886BC:
	mov r0, sl
	bl ov31_02388744
	mov r0, #0x1b
	bl FUN_022E9FE0
	bl FUN_0233779C
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov31_02388534

	arm_func_start ov31_023886D4
ov31_023886D4: @ 0x023886D4
	ldr r0, [r0, #0x6cc]
	bx lr
	arm_func_end ov31_023886D4

	arm_func_start ov31_023886DC
ov31_023886DC: @ 0x023886DC
	ldr r1, [r0, #0x6cc]
	sub r1, r1, #2
	cmp r1, #1
	ldrls r0, [r0, #0x6d0]
	mvnhi r0, #0
	bx lr
	arm_func_end ov31_023886DC

	arm_func_start ov31_023886F4
ov31_023886F4: @ 0x023886F4
	ldr ip, _02388700 @ =FUN_0202A954
	ldrsb r0, [r0]
	bx ip
	.align 2, 0
_02388700: .4byte FUN_0202A954
	arm_func_end ov31_023886F4

	arm_func_start ov31_02388704
ov31_02388704: @ 0x02388704
	ldr ip, _02388710 @ =FUN_02028284
	ldrsb r0, [r0]
	bx ip
	.align 2, 0
_02388710: .4byte FUN_02028284
	arm_func_end ov31_02388704

	arm_func_start ov31_02388714
ov31_02388714: @ 0x02388714
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0234E988
	mov r0, r4
	bl FUN_02001188
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	arm_func_end ov31_02388714

	arm_func_start ov31_02388744
ov31_02388744: @ 0x02388744
	push {r4, lr}
	ldr r1, [r0, #0x6c0]
	tst r1, #8
	ldrne r1, [r0, #0x67c]
	addne r0, r0, r1, lsl #5
	ldrne r4, [r0, #0x24]
	cmpne r4, #0
	popeq {r4, pc}
	mov r0, r4
	mov r1, #0
	mov r2, #1
	bl FUN_022F98B4
	mov r2, #1
	mov r3, r2
	add r0, r4, #4
	mov r1, #0
	bl FUN_02337428
	pop {r4, pc}
	arm_func_end ov31_02388744

	arm_func_start ov31_0238878C
ov31_0238878C: @ 0x0238878C
	push {r4, r5, lr}
	sub sp, sp, #0x9c
	ldr r0, _023889B8 @ =0x0238A284
	ldr r0, [r0]
	cmp r0, #0
	bne _023887CC
	mov r0, #0x10
	mov r1, #8
	bl FUN_02001170
	ldr r1, _023889B8 @ =0x0238A284
	mov r2, #0
	str r0, [r1]
	str r2, [r0]
	ldr r0, [r1]
	sub r1, r2, #2
	strb r1, [r0, #4]
_023887CC:
	mov r3, #0
	ldr r0, _023889B8 @ =0x0238A284
	mov r2, r3
_023887D8:
	ldr r1, [r0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0xc]
	cmp r3, #2
	blt _023887D8
	bl FUN_022E08F4
	cmp r0, #0
	ldreq r0, _023889B8 @ =0x0238A284
	moveq r1, #3
	ldreq r0, [r0]
	ldr ip, _023889BC @ =0x000008C2
	strbeq r1, [r0, #0xc]
	ldr r0, _023889B8 @ =0x0238A284
	mov r5, #0x10
	ldr r1, [r0]
	ldr r0, _023889C0 @ =0x0238A10C
	add r4, r1, #0xc
	ldr r1, _023889C4 @ =0x00001A13
	ldr r3, _023889C8 @ =0x0238A11C
	add r2, sp, #4
	strh ip, [sp, #0xc]
	str r5, [sp, #0x10]
	str r4, [sp, #0x64]
	bl FUN_0202A5CC
	ldr r4, _023889B8 @ =0x0238A284
	mov r5, #0x62
	ldr r1, [r4]
	strb r0, [r1, #4]
_0238884C:
	mov r0, r5
	bl FUN_022E9FE0
	ldr r0, [r4]
	ldrsb r0, [r0, #4]
	bl FUN_0202AB40
	cmp r0, #0
	bne _0238884C
	ldr r0, _023889B8 @ =0x0238A284
	ldr r0, [r0]
	ldrsb r0, [r0, #4]
	bl FUN_0202ABB0
	ldr r1, _023889B8 @ =0x0238A284
	ldr r1, [r1]
	str r0, [r1, #8]
	mov r0, #0x62
	bl FUN_022E9FE0
	ldr r0, _023889B8 @ =0x0238A284
	ldr r0, [r0]
	ldrsb r0, [r0, #4]
	bl FUN_0202AABC
	ldr r0, _023889B8 @ =0x0238A284
	ldr r1, [r0]
	ldr r0, [r1, #8]
	cmp r0, #1
	beq _023888BC
	cmp r0, #2
	beq _02388908
	b _0238897C
_023888BC:
	mov r2, #1
	ldr r1, _023889CC @ =0x000008C5
	mov r3, r2
	mov r0, #0
	str r2, [sp]
	bl FUN_0234D518
	cmp r0, #1
	movne r0, #1
	bne _023888F0
	bl FUN_022F0B8C
	mov r1, #0x2b
	bl FUN_022EB408
	mov r0, #0
_023888F0:
	cmp r0, #0
	ldreq r0, _023889B8 @ =0x0238A284
	mvneq r1, #0
	ldreq r0, [r0]
	streq r1, [r0, #8]
	b _02388984
_02388908:
	mov r2, #1
	ldr r1, _023889D0 @ =0x000008C6
	mov r3, r2
	mov r0, #0
	str r2, [sp]
	bl FUN_0234D518
	cmp r0, #1
	movne r2, #1
	bne _02388964
	bl FUN_022F0B8C
	mov r1, #0x2e
	bl FUN_022EB408
	bl FUN_022E9580
	mov r2, r0
	mov r1, #0
	ldr r0, _023889D4 @ =0x0000025A
	mov r3, r1
	bl FUN_022ECDE4
	ldr r0, _023889D8 @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0
	strb r1, [r0, #0x758]
_02388964:
	cmp r2, #0
	ldreq r0, _023889B8 @ =0x0238A284
	mvneq r1, #0
	ldreq r0, [r0]
	streq r1, [r0, #8]
	b _02388984
_0238897C:
	mvn r0, #0
	str r0, [r1, #8]
_02388984:
	ldr r0, _023889B8 @ =0x0238A284
	ldr r0, [r0]
	ldr r1, [r0, #8]
	cmp r1, #0
	bge _023887CC
	cmp r0, #0
	beq _023889B0
	bl FUN_02001188
	ldr r0, _023889B8 @ =0x0238A284
	mov r1, #0
	str r1, [r0]
_023889B0:
	add sp, sp, #0x9c
	pop {r4, r5, pc}
	.align 2, 0
_023889B8: .4byte 0x0238A284
_023889BC: .4byte 0x000008C2
_023889C0: .4byte 0x0238A10C
_023889C4: .4byte 0x00001A13
_023889C8: .4byte 0x0238A11C
_023889CC: .4byte 0x000008C5
_023889D0: .4byte 0x000008C6
_023889D4: .4byte 0x0000025A
_023889D8: .4byte 0x02353538
	arm_func_end ov31_0238878C

	arm_func_start ov31_023889DC
ov31_023889DC: @ 0x023889DC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	mov r6, r0
	ldr r4, [r6, #0xb4]
	add r3, sp, #0xc
	add r0, r4, #0x9c
	ldm r0, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	mov r0, #8
	mov r1, #0x62
	bl FUN_022EA370
	mov r0, r6
	mov r1, #1
	bl FUN_023177E4
	mov r3, r0
	ldrsh r0, [r4, #2]
	ldrsh r2, [r4, #0xe]
	add r1, r4, #0x90
	bl FUN_02041A40
	mov r5, #0x62
_02388A2C:
	bl FUN_02041B7C
	movs r7, r0
	bne _02388A44
	mov r0, r5
	bl FUN_022E9FE0
	b _02388A2C
_02388A44:
	bl FUN_020420F4
	mov r0, r6
	bl FUN_023021F0
	ldr r0, [r6, #0xb4]
	add r3, sp, #0
	add r0, r0, #0x9c
	ldm r0, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	add r0, sp, #0xc
	mov r1, #0x38
	bl FUN_02058F04
	mov r5, r0
	add r0, sp, #0
	mov r1, #0x38
	bl FUN_02058F04
	cmp r5, #0
	bne _02388AA8
	cmp r0, #0
	beq _02388AF8
	ldr r0, _02388BFC @ =0x020A1870
	ldrsh r1, [r4, #0x16]
	ldrsh r0, [r0]
	add r0, r1, r0
	strh r0, [r4, #0x16]
	b _02388AF8
_02388AA8:
	cmp r0, #0
	bne _02388AF8
	ldr r0, _02388BFC @ =0x020A1870
	ldrsh r1, [r4, #0x16]
	ldrsh r0, [r0]
	ldr r2, _02388C00 @ =0x000003E7
	sub r0, r1, r0
	strh r0, [r4, #0x16]
	ldrsh r1, [r4, #0x12]
	ldrsh r0, [r4, #0x16]
	add r1, r1, r0
	cmp r1, r2
	ldrsh r0, [r4, #0x10]
	movle r2, r1
	cmp r0, r2
	ble _02388AF8
	ldr r0, _02388C00 @ =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
_02388AF8:
	bl FUN_022E2DD8
	add r0, sp, #0xc
	mov r1, #0x39
	bl FUN_02058F04
	mov r5, r0
	add r0, sp, #0
	mov r1, #0x39
	bl FUN_02058F04
	cmp r5, #0
	bne _02388B74
	cmp r0, #0
	beq _02388BE8
	mov r5, #0
	add r3, r4, #0x124
	mov r1, r5
	mov r2, #1
_02388B38:
	ldrb r0, [r3, r5, lsl #3]
	add r4, r3, r5, lsl #3
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	ldrhne r0, [r4, #2]
	orrne r0, r0, #0x100
	strhne r0, [r4, #2]
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r5, #4
	blt _02388B38
	b _02388BE8
_02388B74:
	cmp r0, #0
	bne _02388BE8
	mov sb, #0
	add r6, r4, #0x124
	mov r4, sb
	mov r5, #1
_02388B8C:
	ldrb r0, [r6, sb, lsl #3]
	add r8, r6, sb, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _02388BD4
	ldrh r1, [r8, #2]
	mov r0, r8
	bic r1, r1, #0x100
	strh r1, [r8, #2]
	bl FUN_02013A50
	ldrb r1, [r8, #6]
	cmp r1, r0
	ble _02388BD4
	mov r0, r8
	bl FUN_02013A50
	strb r0, [r8, #6]
_02388BD4:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
	cmp sb, #4
	blt _02388B8C
_02388BE8:
	cmp r7, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02388BFC: .4byte 0x020A1870
_02388C00: .4byte 0x000003E7
	arm_func_end ov31_023889DC
_02388C04:
	.byte 0x08, 0x40, 0x2D, 0xE9, 0xA0, 0xD0, 0x4D, 0xE2, 0x1C, 0x01, 0x9F, 0xE5
	.byte 0x00, 0x10, 0x90, 0xE5, 0x94, 0x0D, 0x91, 0xE5, 0x03, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90
	.byte 0x3F, 0x00, 0x00, 0xEA, 0x02, 0x00, 0x00, 0xEA, 0x28, 0x00, 0x00, 0xEA, 0x31, 0x00, 0x00, 0xEA
	.byte 0x38, 0x00, 0x00, 0xEA, 0xF8, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x48, 0x07, 0xD0, 0xE5
	.byte 0xD4, 0x21, 0xF3, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0xE8, 0x20, 0x9F, 0x05, 0xE8, 0x10, 0x9F, 0x05
	.byte 0x04, 0x00, 0xA0, 0x03, 0xB0, 0x20, 0xC1, 0x01, 0x32, 0x00, 0x00, 0x0A, 0xD0, 0x00, 0x9F, 0xE5
	.byte 0x00, 0x00, 0x90, 0xE5, 0x5D, 0x07, 0xD0, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0xCC, 0x20, 0x9F, 0x15
	.byte 0xC4, 0x10, 0x9F, 0x15, 0x04, 0x00, 0xA0, 0x13, 0xB0, 0x20, 0xC1, 0x11, 0x29, 0x00, 0x00, 0x1A
	.byte 0xBC, 0x10, 0x9F, 0xE5, 0x10, 0x00, 0xA0, 0xE3, 0xB0, 0x11, 0xCD, 0xE1, 0x14, 0x00, 0x8D, 0xE5
	.byte 0x00, 0xC0, 0xA0, 0xE3, 0x00, 0xC0, 0x8D, 0xE5, 0xA8, 0x00, 0x9F, 0xE5, 0xA8, 0x10, 0x9F, 0xE5
	.byte 0xA8, 0x30, 0x9F, 0xE5, 0x08, 0x20, 0x8D, 0xE2, 0x04, 0xC0, 0x8D, 0xE5, 0x40, 0x9E, 0xF2, 0xEB
	.byte 0x78, 0x10, 0x9F, 0xE5, 0x00, 0x20, 0x91, 0xE5, 0x00, 0x00, 0xC2, 0xE5, 0x00, 0x10, 0x91, 0xE5
	.byte 0x94, 0x0D, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2, 0x94, 0x0D, 0x81, 0xE5, 0x14, 0x00, 0x00, 0xEA
	.byte 0xD0, 0x00, 0xD1, 0xE1, 0xFA, 0x9E, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x10, 0x00, 0x00, 0x1A
	.byte 0x48, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x94, 0x0D, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2
	.byte 0x94, 0x0D, 0x81, 0xE5, 0x0A, 0x00, 0x00, 0xEA, 0xD0, 0x00, 0xD1, 0xE1, 0xE7, 0x9E, 0xF2, 0xEB
	.byte 0x28, 0x00, 0x9F, 0xE5, 0x00, 0x10, 0x90, 0xE5, 0x94, 0x0D, 0x91, 0xE5, 0x01, 0x00, 0x80, 0xE2
	.byte 0x94, 0x0D, 0x81, 0xE5, 0x02, 0x00, 0x00, 0xEA, 0x97, 0x1A, 0xFF, 0xEB, 0x04, 0x00, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x00, 0xEA, 0x01, 0x00, 0xA0, 0xE3, 0xA0, 0xD0, 0x8D, 0xE2, 0x08, 0x80, 0xBD, 0xE8
	.byte 0x88, 0xA2, 0x38, 0x02, 0x38, 0x35, 0x35, 0x02, 0x44, 0x0B, 0x00, 0x00, 0x0C, 0x28, 0x38, 0x02
	.byte 0x45, 0x0B, 0x00, 0x00, 0x46, 0x0B, 0x00, 0x00, 0x34, 0xA1, 0x38, 0x02, 0x13, 0x18, 0x00, 0x00
	.byte 0x54, 0x8D, 0x38, 0x02, 0xF0, 0x4F, 0x2D, 0xE9, 0xD4, 0xD0, 0x4D, 0xE2, 0xF0, 0x40, 0x9F, 0xE5
	.byte 0x00, 0xA0, 0xA0, 0xE1, 0x00, 0x00, 0x94, 0xE5, 0x04, 0x80, 0xA0, 0xE3, 0x90, 0x0D, 0x90, 0xE5
	.byte 0x14, 0x90, 0xA0, 0xE3, 0x00, 0x00, 0x50, 0xE3, 0x2C, 0x00, 0x00, 0x0A, 0x00, 0x70, 0xA0, 0xE3
	.byte 0x44, 0x60, 0x8D, 0xE2, 0x04, 0xB0, 0x8D, 0xE2, 0x84, 0x50, 0x8D, 0xE2, 0x22, 0x00, 0x00, 0xEA
	.byte 0x87, 0x00, 0x81, 0xE0, 0xF4, 0x10, 0xD0, 0xE1, 0x06, 0x00, 0xA0, 0xE1, 0xD7, 0x25, 0xF3, 0xEB
	.byte 0x00, 0x00, 0x94, 0xE5, 0x87, 0x00, 0x80, 0xE0, 0xF4, 0x00, 0xD0, 0xE1, 0x63, 0x26, 0xF3, 0xEB
	.byte 0x00, 0x20, 0x94, 0xE5, 0xA8, 0x00, 0x8D, 0xE5, 0x07, 0x20, 0x82, 0xE0, 0x0A, 0x29, 0xD2, 0xE5
	.byte 0x90, 0x10, 0x9F, 0xE5, 0x0B, 0x00, 0xA0, 0xE1, 0x06, 0x30, 0xA0, 0xE1, 0x23, 0x00, 0x00, 0xEB
	.byte 0x06, 0x00, 0xA0, 0xE1, 0x40, 0x10, 0xA0, 0xE3, 0x0B, 0x20, 0xA0, 0xE1, 0x00, 0x30, 0xA0, 0xE3
	.byte 0x00, 0x50, 0x8D, 0xE5, 0x81, 0x65, 0xF2, 0xEB, 0x0A, 0x00, 0xA0, 0xE1, 0x08, 0x10, 0xA0, 0xE1
	.byte 0x09, 0x20, 0xA0, 0xE1, 0x06, 0x30, 0xA0, 0xE1, 0x05, 0x75, 0xF2, 0xEB, 0x0D, 0x90, 0x89, 0xE2
	.byte 0x7C, 0x00, 0x59, 0xE3, 0x03, 0x00, 0x00, 0xBA, 0x04, 0x00, 0x58, 0xE3, 0x0E, 0x00, 0x00, 0xCA
	.byte 0x74, 0x80, 0xA0, 0xE3, 0x14, 0x90, 0xA0, 0xE3, 0x01, 0x70, 0x87, 0xE2, 0x00, 0x10, 0x94, 0xE5
	.byte 0x90, 0x0D, 0x91, 0xE5, 0x00, 0x00, 0x57, 0xE1, 0xD8, 0xFF, 0xFF, 0xBA, 0x06, 0x00, 0x00, 0xEA
	.byte 0x24, 0x00, 0x9F, 0xE5, 0xA2, 0x72, 0xF2, 0xEB, 0x00, 0x30, 0xA0, 0xE1, 0x0A, 0x00, 0xA0, 0xE1
	.byte 0x08, 0x10, 0xA0, 0xE1, 0x09, 0x20, 0xA0, 0xE1, 0xF1, 0x74, 0xF2, 0xEB, 0xD4, 0xD0, 0x8D, 0xE2
	.byte 0xF0, 0x8F, 0xBD, 0xE8, 0x88, 0xA2, 0x38, 0x02, 0x54, 0xA1, 0x38, 0x02, 0x47, 0x0B, 0x00, 0x00
	.byte 0x0F, 0x00, 0x2D, 0xE9, 0x08, 0x40, 0x2D, 0xE9, 0x0C, 0x20, 0x8D, 0xE2, 0x03, 0x20, 0xC2, 0xE3
	.byte 0x0C, 0x10, 0x9D, 0xE5, 0x04, 0x20, 0x82, 0xE2, 0xB1, 0x01, 0xF4, 0xEB, 0x08, 0x40, 0xBD, 0xE8
	.byte 0x10, 0xD0, 0x8D, 0xE2, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov31_02388E88
ov31_02388E88: @ 0x02388E88
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x84
	sub sp, sp, #0x400
	ldr r0, _02389164 @ =0x0238A144
	bl FUN_020348E4
	cmp r0, #0
	beq _02389158
	ldr r0, _02389168 @ =0x00000D98
	mov r1, #8
	bl FUN_02001170
	ldr r1, _0238916C @ =0x0238A288
	mov r3, #0
	str r0, [r1]
	add r5, r0, #4
	ldr r0, _02389170 @ =0x00000483
	mov r4, r3
	add r1, sp, #0
_02388ECC:
	add r2, r5, r3
	strb r4, [r1, r3]
	add r3, r3, #1
	strb r4, [r2, #0x906]
	cmp r3, r0
	blt _02388ECC
	mov sb, #1
	mov r8, #2
	add r7, sp, #0
	ldr r6, _02389174 @ =0x02353538
	b _02388F3C
_02388EF8:
	ldr r1, [r6]
	mov sl, sb
	add r1, r1, r4, lsl #3
	add r1, r1, #0x3900
	ldrsh r2, [r1, #0x76]
	ldrsh r1, [r1, #0x78]
	cmp r2, #0
	cmpeq r1, #0
	beq _02388F38
	add r0, r0, #0x174
	add r0, r0, #0x3800
	add r0, r0, r4, lsl #3
	cmp r2, #0
	moveq sl, r8
	bl FUN_02054480
	strb sl, [r7, r0]
_02388F38:
	add r4, r4, #1
_02388F3C:
	ldr r0, [r6]
	add r1, r0, #0x3000
	ldr r1, [r1, #0xe20]
	cmp r4, r1
	blt _02388EF8
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _02388F6C
	bl FUN_022F73EC
	add r1, sp, #0
	mov r2, #1
	strb r2, [r1, r0]
_02388F6C:
	ldr r0, _02389174 @ =0x02353538
	mov sl, #0
	ldr r0, [r0]
	mov sb, #1
	add r0, r0, #0x700
	ldrsh r2, [r0, #0xa8]
	cmp r2, #0
	addne r0, sp, #0
	movne r1, #1
	strbne r1, [r0, r2]
_02388F94:
	lsl r0, sb, #0x10
	add r1, sp, #0
	ldrb r1, [r1, r0, asr #16]
	asr r8, r0, #0x10
	mov r6, #0x44
	cmp r1, #0
	mov r4, #0
	beq _023890B4
	mov r0, r8
	bl FUN_0230DB14
	cmp r0, #0
	beq _023890B4
	mov r0, r8
	bl FUN_0204D360
	cmp r0, #0
	beq _023890B4
	mov r0, r8
	bl FUN_02052A44
	ldr r1, _02389178 @ =0xFFFFFC19
	cmp r0, r1
	beq _023890B4
	mov r0, r8
	mov r1, #1
	bl FUN_02055148
	cmp r0, #0
	movne r4, #1
	cmp r4, #0
	bne _0238906C
	mov r7, #0
	b _0238905C
_0238900C:
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	bl FUN_0205638C
	mov fp, r0
	ldrb r0, [fp]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02389058
	ldrsh r0, [fp, #8]
	bl FUN_022F9C40
	cmp r0, #0
	bne _02389058
	ldrsh r1, [fp, #0xc]
	mov r0, r8
	bl FUN_02054CD8
	cmp r0, #0
	bne _02389064
_02389058:
	add r7, r7, #1
_0238905C:
	cmp r7, #4
	blt _0238900C
_02389064:
	cmp r7, #4
	movne r4, #1
_0238906C:
	add r7, r5, sl
	ldrb r0, [r7, #0x906]
	cmp r4, #0
	movne r6, #0x46
	cmp r6, r0
	bne _023890A4
	mov r0, r8
	bl FUN_02052740
	lsl r1, sl, #1
	mov r4, r0
	ldrsh r0, [r5, r1]
	bl FUN_02052740
	cmp r4, r0
	beq _023890B4
_023890A4:
	lsl r0, sl, #1
	strh r8, [r5, r0]
	strb r6, [r7, #0x906]
	add sl, sl, #1
_023890B4:
	ldr r0, _02389170 @ =0x00000483
	add sb, sb, #1
	cmp sb, r0
	blt _02388F94
	add r0, r5, #6
	str sl, [r5, #0xd8c]
	add r6, r0, #0x900
	mov r8, #0
	b _02389140
_023890D8:
	add r7, r8, #1
	lsl fp, r8, #1
	b _02389134
_023890E4:
	lsl r1, r7, #1
	ldrsh r0, [r5, r1]
	ldrsh sb, [r5, r1]
	bl FUN_02052740
	mov r4, r0
	ldrsh r0, [r5, fp]
	bl FUN_02052740
	ldrsh r2, [r5, fp]
	add r1, sb, r4, lsl #11
	add r0, r2, r0, lsl #11
	cmp r1, r0
	bge _02389130
	ldrb r1, [r6, r7]
	lsl r0, r7, #1
	strh r2, [r5, r0]
	ldrb r0, [r6, r8]
	strb r0, [r6, r7]
	strh sb, [r5, fp]
	strb r1, [r6, r8]
_02389130:
	add r7, r7, #1
_02389134:
	cmp r7, sl
	blt _023890E4
	add r8, r8, #1
_02389140:
	cmp r8, sl
	blt _023890D8
	ldr r0, _0238916C @ =0x0238A288
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0xd94]
_02389158:
	add sp, sp, #0x84
	add sp, sp, #0x400
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02389164: .4byte 0x0238A144
_02389168: .4byte 0x00000D98
_0238916C: .4byte 0x0238A288
_02389170: .4byte 0x00000483
_02389174: .4byte 0x02353538
_02389178: .4byte 0xFFFFFC19
	arm_func_end ov31_02388E88

	arm_func_start ov31_0238917C
ov31_0238917C: @ 0x0238917C
	push {r3, lr}
	ldr r0, _023891A4 @ =0x0238A288
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _023891A4 @ =0x0238A288
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_023891A4: .4byte 0x0238A288
	arm_func_end ov31_0238917C

	arm_func_start ov31_023891A8
ov31_023891A8: @ 0x023891A8
	push {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_02030A18
	mov r4, r0
	ldr r0, _023891F8 @ =0x0238A1A0
	lsl r1, r4, #3
	ldrh r1, [r0, r1]
	mov r0, r5
	bl FUN_02030A2C
	add r0, r4, #0xfb0
	add r0, r0, #0x3000
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020258C4
	mov r3, r0
	mov r0, r5
	mov r1, #4
	mov r2, #0x10
	bl FUN_02026214
	pop {r3, r4, r5, pc}
	.align 2, 0
_023891F8: .4byte 0x0238A1A0
	arm_func_end ov31_023891A8
_023891FC:
	.byte 0x10, 0x40, 0x2D, 0xE9
	.byte 0xA0, 0xD0, 0x4D, 0xE2, 0xF0, 0x01, 0x9F, 0xE5, 0x00, 0x20, 0x90, 0xE5, 0x08, 0x00, 0x92, 0xE5
	.byte 0x06, 0x00, 0x50, 0xE3, 0x00, 0xF1, 0x8F, 0x90, 0x74, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0xEA
	.byte 0x24, 0x00, 0x00, 0xEA, 0x13, 0x00, 0x00, 0xEA, 0x45, 0x00, 0x00, 0xEA, 0x5D, 0x00, 0x00, 0xEA
	.byte 0x69, 0x00, 0x00, 0xEA, 0x68, 0x00, 0x00, 0xEA, 0xC0, 0xC1, 0x9F, 0xE5, 0x10, 0x40, 0xA0, 0xE3
	.byte 0xBC, 0x01, 0x9F, 0xE5, 0xBC, 0x11, 0x9F, 0xE5, 0xBC, 0x31, 0x9F, 0xE5, 0x08, 0x20, 0x8D, 0xE2
	.byte 0xB0, 0xC1, 0xCD, 0xE1, 0x14, 0x40, 0x8D, 0xE5, 0xDB, 0x84, 0xF2, 0xEB, 0x98, 0x11, 0x9F, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE3, 0x00, 0x30, 0x91, 0xE5, 0x00, 0x00, 0xC3, 0xE5, 0x00, 0x00, 0x91, 0xE5
	.byte 0x08, 0x20, 0x80, 0xE5, 0x5D, 0x00, 0x00, 0xEA, 0xD0, 0x00, 0xD2, 0xE1, 0x34, 0x7C, 0xF2, 0xEB
	.byte 0x03, 0x00, 0x50, 0xE3, 0x03, 0x00, 0x00, 0x1A, 0x6C, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0x9C, 0x7B, 0xF2, 0xEB, 0x5C, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0xAA, 0x85, 0xF2, 0xEB, 0x4C, 0x01, 0x9F, 0xE5, 0x01, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x90, 0xE5, 0x08, 0x10, 0x80, 0xE5, 0x3C, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD0, 0x00, 0xD0, 0xE1, 0x1D, 0x86, 0xF2, 0xEB, 0x00, 0x00, 0x50, 0xE3, 0x47, 0x00, 0x00, 0x1A
	.byte 0x24, 0x01, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0xD0, 0x00, 0xD0, 0xE1, 0x33, 0x86, 0xF2, 0xEB
	.byte 0x00, 0x40, 0xB0, 0xE1, 0x0D, 0x00, 0x00, 0x4A, 0x46, 0xE1, 0xF1, 0xEB, 0x0A, 0x0A, 0x50, 0xE3
	.byte 0x04, 0x01, 0x9F, 0xB5, 0x02, 0x10, 0xA0, 0xB3, 0x00, 0x00, 0x90, 0xB5, 0x08, 0x10, 0x80, 0xB5
	.byte 0x3A, 0x00, 0x00, 0xBA, 0xF0, 0x00, 0x9F, 0xE5, 0x03, 0x10, 0xA0, 0xE3, 0x00, 0x20, 0x90, 0xE5
	.byte 0x04, 0x40, 0x82, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0x08, 0x10, 0x80, 0xE5, 0x03, 0x00, 0x00, 0xEA
	.byte 0xD4, 0x00, 0x9F, 0xE5, 0x06, 0x10, 0xA0, 0xE3, 0x00, 0x00, 0x90, 0xE5, 0x08, 0x10, 0x80, 0xE5
	.byte 0xC4, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5, 0xD0, 0x00, 0xD0, 0xE1, 0x7A, 0x7B, 0xF2, 0xEB
	.byte 0x2A, 0x00, 0x00, 0xEA, 0x10, 0x00, 0xA0, 0xE3, 0x14, 0x00, 0x8D, 0xE5, 0x04, 0x10, 0x92, 0xE5
	.byte 0xB4, 0x00, 0x9F, 0xE5, 0x81, 0x11, 0xA0, 0xE1, 0xB1, 0x10, 0x90, 0xE1, 0x08, 0xC0, 0xA0, 0xE3
	.byte 0xA8, 0x00, 0x9F, 0xE5, 0xB0, 0x11, 0xCD, 0xE1, 0x04, 0x20, 0x92, 0xE5, 0xA0, 0x10, 0x9F, 0xE5
	.byte 0x08, 0x20, 0x8D, 0xE5, 0x00, 0xC0, 0x8D, 0xE5, 0x01, 0xC0, 0xA0, 0xE3, 0x94, 0x30, 0x9F, 0xE5
	.byte 0x08, 0x20, 0x8D, 0xE2, 0x04, 0xC0, 0x8D, 0xE5, 0x89, 0x9C, 0xF2, 0xEB, 0x68, 0x10, 0x9F, 0xE5
	.byte 0x04, 0x20, 0xA0, 0xE3, 0x00, 0x30, 0x91, 0xE5, 0x01, 0x00, 0xC3, 0xE5, 0x00, 0x00, 0x91, 0xE5
	.byte 0x08, 0x20, 0x80, 0xE5, 0x11, 0x00, 0x00, 0xEA, 0xD1, 0x00, 0xD2, 0xE1, 0x44, 0x9D, 0xF2, 0xEB
	.byte 0x00, 0x00, 0x50, 0xE3, 0x0D, 0x00, 0x00, 0x1A, 0x3C, 0x00, 0x9F, 0xE5, 0x00, 0x00, 0x90, 0xE5
	.byte 0xD1, 0x00, 0xD0, 0xE1, 0x35, 0x9D, 0xF2, 0xEB, 0x2C, 0x00, 0x9F, 0xE5, 0x02, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x00, 0x90, 0xE5, 0x08, 0x10, 0x80, 0xE5, 0x04, 0x00, 0x00, 0xEA, 0xD0, 0x00, 0xD2, 0xE1
	.byte 0xB5, 0x85, 0xF2, 0xEB, 0xE4, 0x18, 0xFF, 0xEB, 0x04, 0x00, 0xA0, 0xE3, 0x00, 0x00, 0x00, 0xEA
	.byte 0x01, 0x00, 0xA0, 0xE3, 0xA0, 0xD0, 0x8D, 0xE2, 0x10, 0x80, 0xBD, 0xE8, 0x8C, 0xA2, 0x38, 0x02
	.byte 0xA7, 0x3F, 0x00, 0x00, 0x70, 0xA1, 0x38, 0x02, 0x13, 0x18, 0x40, 0x00, 0xA0, 0xA1, 0x38, 0x02
	.byte 0x80, 0xA1, 0x38, 0x02, 0x33, 0x98, 0x00, 0x00, 0xA8, 0x91, 0x38, 0x02

	arm_func_start ov31_0238941C
ov31_0238941C: @ 0x0238941C
	push {r3, lr}
	ldr r0, _02389458 @ =0x0238A190
	bl FUN_020348E4
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0xc
	mov r1, #8
	bl FUN_02001170
	ldr r1, _0238945C @ =0x0238A28C
	mov r2, #0
	str r0, [r1]
	str r2, [r0, #4]
	ldr r0, [r1]
	str r2, [r0, #8]
	pop {r3, pc}
	.align 2, 0
_02389458: .4byte 0x0238A190
_0238945C: .4byte 0x0238A28C
	arm_func_end ov31_0238941C

	arm_func_start ov31_02389460
ov31_02389460: @ 0x02389460
	push {r3, lr}
	ldr r0, _02389488 @ =0x0238A28C
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _02389488 @ =0x0238A28C
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02389488: .4byte 0x0238A28C
	arm_func_end ov31_02389460

	arm_func_start FUN_0238948C
FUN_0238948C: @ 0x0238948C
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x134
	mov r4, r0
	mov r0, #0x530
	mov r1, #8
	bl FUN_02001170
	mov r5, r0
	mov r1, #0x530
	bl FUN_02003250
	add r0, r5, #0x2c
	mvn r1, #1
	strb r1, [r5]
	add r0, r0, #0x400
	strb r1, [r5, #1]
	bl ov31_02389D80
	mov r0, #0
	str r0, [r5, #0x52c]
	strb r0, [r5, #0x528]
	bl FUN_022EA62C
	mov r0, r5
	mov r1, r4
	bl ov31_02389A78
	ldr r1, [r5, #0x52c]
	mov r0, #8
	str r1, [r5, #0x4ec]
	str r0, [r5, #0x4f0]
	mov r1, #0
	str r1, [r5, #0x4f4]
	str r1, [r5, #0x4f8]
	str r1, [r5, #0x4dc]
	mov r0, #0x10
	str r0, [r5, #0x4e0]
	mov r0, r5
	str r1, [r5, #0x4e8]
	bl FUN_0234E988
	add r0, sp, #0xac
	bl FUN_02023690
	ldrb r0, [r5, #0x528]
	cmp r0, #0
	ldrne r1, _023898F0 @ =0x00000F5F
	mov r0, #0x10
	ldreq r1, _023898F4 @ =0x00000F5E
	str r0, [sp, #0xa8]
	strh r1, [sp, #0xa4]
	ldrb r0, [r5, #0x528]
	cmp r0, #0
	bne _02389560
	ldr r1, [r5, #0x524]
	add r0, r5, #0x78
	ldr r1, [r1, #0xb4]
	bl FUN_02300164
	add r0, r5, #0x78
	str r0, [sp, #0xe4]
_02389560:
	ldr r0, _023898F8 @ =0x0238A208
	ldr r1, _023898FC @ =0x80401813
	add r2, sp, #0x9c
	add r3, r5, #0xc4
	bl FUN_0202A690
	strb r0, [r5]
_02389578:
	mov r0, #0x3d
	bl FUN_022E9FE0
	ldr r0, [r5, #0x524]
	bl FUN_0234FB50
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl FUN_0200625C
	ldrsb r0, [r5]
	bl FUN_0202AB40
	cmp r0, #0
	bne _023897C8
	ldrsb r0, [r5]
	bl FUN_0202ABB0
	movs r7, r0
	bmi _023897BC
	ldrsb r0, [r5]
	bl FUN_0202ABB0
	sub r1, r0, #1
	add r0, r5, #0x2c
	str r1, [r5, #0x4e8]
	add r1, r5, r1
	add r0, r0, #0x400
	ldrb r6, [r1, #0xb8]
	bl ov31_02389D80
	ldr r0, _02389900 @ =0x00003F02
	bl FUN_02017C80
	bl FUN_022EBA70
	mov r0, #0x2f
	mov r1, #0
	bl FUN_022EB81C
	mov r0, #0xc
	mov r1, #0
	bl FUN_022EB81C
	cmp r4, #0
	beq _02389610
	mov r0, #0x2f
	bl FUN_022EB8F4
_02389610:
	add r1, r5, #0x6c
	add r0, r5, #4
	mov r2, #0
	str r1, [sp, #0x64]
	bl ov31_0238513C
	bl FUN_022EBA84
	mov r3, #0
	b _02389640
_02389630:
	add r2, r3, #1
	add r1, r5, r3, lsl #3
	mov r3, r2
	str r2, [r1, #8]
_02389640:
	cmp r3, r0
	blt _02389630
	ldr r0, _02389904 @ =0x00000A3C
	add r2, r5, r3, lsl #3
	strh r0, [r2, #4]
	mvn r1, #1
	mov r0, #0
	str r1, [r2, #8]
	strh r0, [r2, #0xc]
	sub r1, r0, #1
	add r0, r5, #1
	str r1, [r2, #0x10]
	bl FUN_0234E988
	ldr r0, _02389908 @ =0x0238A1F8
	ldr r1, _0238990C @ =0x80000213
	add r2, sp, #4
	add r3, r5, #4
	bl FUN_0202A5CC
	strb r0, [r5, #1]
	mvn r8, #0
	mov r4, #0x3d
_02389694:
	mov r0, r4
	bl FUN_022E9FE0
	ldrsb r0, [r5, #1]
	bl FUN_0202AB40
	cmp r0, #0
	bne _02389694
	ldrsb r0, [r5, #1]
	bl FUN_0202ABB0
	subs r1, r0, #1
	bmi _023896DC
	ldrsb r0, [r5, #1]
	bl FUN_0202ABB0
	sub r0, r0, #1
	str r0, [r5, #0x4e8]
	bl FUN_022EB804
	cmp r0, #0
	movne r8, #0
	b _023896F0
_023896DC:
	mvn r0, #2
	cmp r1, r0
	bne _023896F0
	ldr r0, _02389900 @ =0x00003F02
	bl FUN_02017C80
_023896F0:
	cmp r8, #0
	bge _0238970C
	add r0, r5, #1
	bl FUN_0234E988
	ldrsb r0, [r5]
	bl FUN_0202A954
	b _023898AC
_0238970C:
	ldr r0, [r5, #0x4e8]
	cmp r0, #0
	bne _02389780
	ldr r0, _02389910 @ =0x00003F07
	mov r1, #0x100
	bl FUN_02017C74
	ldrb r0, [r5, #0x528]
	cmp r0, #0
	beq _0238973C
	mov r0, r6
	bl ov31_02389C68
	b _02389748
_0238973C:
	ldr r0, [r5, #0x524]
	mov r1, r6
	bl ov31_02389C2C
_02389748:
	ldr r1, [r5, #0x524]
	mov r0, r5
	bl ov31_02389A78
	add r0, r5, #1
	bl FUN_0234E988
	ldrsb r0, [r5]
	bl FUN_0202A954
	ldrsb r0, [r5]
	add r1, r5, #0xc4
	bl FUN_0202A98C
	ldrsb r0, [r5]
	sub r1, r7, #1
	bl FUN_0202AB94
	b _023898AC
_02389780:
	ldr r0, _02389900 @ =0x00003F02
	bl FUN_02017C80
	bl FUN_02001808
	cmp r0, #0xa000
	bge _023897A8
	add r0, r5, #1
	bl FUN_0234E988
	ldrsb r0, [r5]
	bl FUN_0202A954
	b _023898AC
_023897A8:
	ldrsb r1, [r5]
	mov r0, r6
	mov r2, #1
	bl ov31_02389CC0
	b _023898AC
_023897BC:
	bl FUN_022EAC78
	mov r0, #1
	b _023898B0
_023897C8:
	ldrh r0, [sp]
	tst r0, #8
	beq _02389820
	ldr r0, _02389914 @ =0x00003F04
	bl FUN_022EACCC
	bl FUN_02001808
	cmp r0, #0xa000
	blt _023898AC
	ldrsb r0, [r5]
	bl FUN_0202B030
	mov r0, #0x3d
	bl FUN_022E9FE0
	ldrsb r0, [r5]
	bl FUN_0202ABB0
	sub r0, r0, #1
	str r0, [r5, #0x4e8]
	add r0, r5, r0
	ldrb r0, [r0, #0xb8]
	ldrsb r1, [r5]
	mov r2, #1
	bl ov31_02389CC0
	b _023898AC
_02389820:
	tst r0, #4
	beq _023898AC
	cmp r4, #0
	beq _02389840
	ldr r0, _02389918 @ =0x00003F03
	mov r1, #0x100
	bl FUN_02017C74
	b _023898AC
_02389840:
	ldrsb r0, [r5]
	bl FUN_0202B030
	ldrsb r0, [r5]
	bl FUN_0202ABB0
	mov r4, r0
	ldr r0, _02389910 @ =0x00003F07
	mov r1, #0x100
	bl FUN_02017C74
	ldrb r0, [r5, #0x528]
	cmp r0, #0
	add r0, r5, r4
	beq _0238987C
	ldrb r0, [r0, #0xb7]
	bl ov31_02389C68
	b _02389888
_0238987C:
	ldrb r1, [r0, #0xb7]
	ldr r0, [r5, #0x524]
	bl ov31_02389C2C
_02389888:
	ldr r1, [r5, #0x524]
	mov r0, r5
	bl ov31_02389A78
	ldrsb r0, [r5]
	add r1, r5, #0xc4
	bl FUN_0202A98C
	ldrsb r0, [r5]
	sub r1, r4, #1
	bl FUN_0202AB94
_023898AC:
	mov r0, #0
_023898B0:
	cmp r0, #0
	beq _02389578
	add r0, r5, #1
	bl FUN_0234E988
	mov r0, r5
	bl FUN_0234E988
	mov r0, #0x3d
	bl FUN_022E9FE0
	add r0, r5, #1
	bl FUN_0234E988
	mov r0, r5
	bl FUN_0234E988
	mov r0, r5
	bl FUN_02001188
	add sp, sp, #0x134
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023898F0: .4byte 0x00000F5F
_023898F4: .4byte 0x00000F5E
_023898F8: .4byte 0x0238A208
_023898FC: .4byte 0x80401813
_02389900: .4byte 0x00003F02
_02389904: .4byte 0x00000A3C
_02389908: .4byte 0x0238A1F8
_0238990C: .4byte 0x80000213
_02389910: .4byte 0x00003F07
_02389914: .4byte 0x00003F04
_02389918: .4byte 0x00003F03
	arm_func_end FUN_0238948C

	arm_func_start ov31_0238991C
ov31_0238991C: @ 0x0238991C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	mov r1, #8
	bl FUN_02001170
	mov r1, r5
	mov r2, r4
	mov r4, r0
	bl ov31_0238994C
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov31_0238991C

	arm_func_start ov31_0238994C
ov31_0238994C: @ 0x0238994C
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	asr r3, r2, #2
	mov r4, r0
	asr r0, r1, #2
	add r2, r2, r3, lsr #29
	add ip, r1, r0, lsr #29
	ldr r6, _023899B0 @ =0x0238A218
	asr lr, r2, #3
	add r5, sp, #0
	ldm r6, {r0, r1, r2, r3}
	stm r5, {r0, r1, r2, r3}
	asr ip, ip, #3
	add r3, lr, #1
	ldr r1, _023899B4 @ =ov31_02389A04
	mov r0, r5
	mov r2, r4
	strb ip, [sp, #4]
	strb r3, [sp, #5]
	bl FUN_0202F8DC
	strb r0, [r4]
	mov r0, #0xb
	strb r0, [r4, #1]
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_023899B0: .4byte 0x0238A218
_023899B4: .4byte ov31_02389A04
	arm_func_end ov31_0238994C

	arm_func_start ov31_023899B8
ov31_023899B8: @ 0x023899B8
	push {r3, lr}
	strb r1, [r0, #1]
	cmp r2, #0
	popeq {r3, pc}
	ldrsb r0, [r0]
	bl FUN_0202F9B8
	pop {r3, pc}
	arm_func_end ov31_023899B8

	arm_func_start ov31_023899D4
ov31_023899D4: @ 0x023899D4
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5]
	cmp r4, #0
	popeq {r3, r4, r5, pc}
	ldrsb r0, [r4]
	bl FUN_0202F918
	mov r0, r4
	bl FUN_02001188
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
	arm_func_end ov31_023899D4

	arm_func_start ov31_02389A04
ov31_02389A04: @ 0x02389A04
	push {r4, r5, lr}
	sub sp, sp, #0x94
	mov r5, r0
	mov r4, r1
	bl FUN_02027B1C
	add r0, sp, #0x44
	bl FUN_02023690
	ldrb r0, [r4, #1]
	ldr r3, _02389A70 @ =0x0000C402
	add ip, sp, #0x44
	cmp r0, #0xb
	strne r0, [sp, #0x54]
	moveq r2, #0xf60
	ldrne r2, _02389A74 @ =0x00000F61
	add r0, sp, #4
	mov r1, #0x40
	str ip, [sp]
	bl FUN_020235B8
	add r3, sp, #4
	mov r0, r5
	mov r1, #4
	mov r2, #2
	bl FUN_02026214
	mov r0, r5
	bl FUN_02027AF0
	add sp, sp, #0x94
	pop {r4, r5, pc}
	.align 2, 0
_02389A70: .4byte 0x0000C402
_02389A74: .4byte 0x00000F61
	arm_func_end ov31_02389A04

	arm_func_start ov31_02389A78
ov31_02389A78: @ 0x02389A78
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	mov sb, r1
	ldr r4, [sb, #0xb4]
	mov sl, r0
	ldrb r0, [r4, #7]
	strb r0, [sl, #0x528]
	bl FUN_022E9618
	ldrb r1, [r0, #0xa]
	add r0, sp, #0x14
	bl FUN_02058C4C
	ldrb r0, [sl, #0x528]
	cmp r0, #0
	beq _02389B64
	mov r6, #0
	bl FUN_022E9618
	ldrb r1, [r0, #0xa]
	add r0, sp, #8
	bl FUN_02058C4C
	ldr r4, _02389C20 @ =0x02353538
	mov r7, r6
	add r5, sp, #4
_02389AD0:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl FUN_0234FB60
	cmp r0, #0
	beq _02389B08
	ldr r1, [r8, #0xb4]
	add r0, r6, #1
	ldrb r1, [r1, #0xa8]
	lsl r0, r0, #0x10
	strb r1, [r5, r6]
	asr r6, r0, #0x10
_02389B08:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _02389AD0
	cmp r6, #0
	moveq r6, #0xb
	beq _02389B68
	mov r3, #1
	ldrb r2, [sp, #4]
	add r1, sp, #4
	b _02389B54
_02389B38:
	ldrb r0, [r1, r3]
	cmp r2, r0
	movne r6, #0xb
	bne _02389B68
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
_02389B54:
	cmp r3, r6
	blt _02389B38
	ldrb r6, [sp, #4]
	b _02389B68
_02389B64:
	ldrb r6, [r4, #0xa8]
_02389B68:
	mov r8, #0
	add r4, sl, #0x12c
	add fp, sp, #0x14
	add r5, sp, #0x20
	b _02389BF4
_02389B7C:
	ldrb r1, [fp, r8]
	add r0, sl, r8
	strb r1, [r0, #0xb8]
	cmp r1, #0xb
	beq _02389BFC
	str r1, [sp, #0x30]
	cmp r6, #0xb
	beq _02389BC4
	cmp r6, r1
	bne _02389BC4
	ldr r2, _02389C24 @ =0x0238A228
	mov r1, #0x40
	add r0, r4, r8, lsl #6
	mov r3, #0
	str r5, [sp]
	lsl r7, r8, #6
	bl FUN_020223F0
	b _02389BE0
_02389BC4:
	ldr r2, _02389C28 @ =0x0238A23C
	mov r1, #0x40
	add r0, r4, r8, lsl #6
	mov r3, #0
	str r5, [sp]
	lsl r7, r8, #6
	bl FUN_020223F0
_02389BE0:
	add r1, r4, r7
	add r0, sl, r8, lsl #3
	str r1, [r0, #0xc4]
	add r8, r8, #1
	str r8, [r0, #0xc8]
_02389BF4:
	cmp r8, #0xc
	blt _02389B7C
_02389BFC:
	mov r0, #0
	str r8, [sl, #0x52c]
	add r1, sl, r8, lsl #3
	str r0, [r1, #0xc4]
	sub r0, r0, #1
	str r0, [r1, #0xc8]
	str sb, [sl, #0x524]
	add sp, sp, #0x70
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02389C20: .4byte 0x02353538
_02389C24: .4byte 0x0238A228
_02389C28: .4byte 0x0238A23C
	arm_func_end ov31_02389A78

	arm_func_start ov31_02389C2C
ov31_02389C2C: @ 0x02389C2C
	push {r3, lr}
	ldr r3, [r0, #0xb4]
	mov r2, #6
	strb r1, [r3, #0xa8]
	strb r2, [r3, #0x7c]
	mov r1, #0
	str r1, [r3, #0x84]
	str r1, [r3, #0x88]
	strh r1, [r3, #0x80]
	ldrb r1, [r3, #7]
	cmp r1, #0
	popne {r3, pc}
	mov r1, #1
	bl FUN_01FFA3C4
	pop {r3, pc}
	arm_func_end ov31_02389C2C

	arm_func_start ov31_02389C68
ov31_02389C68: @ 0x02389C68
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02389CBC @ =0x02353538
	mov r4, r0
	mov r6, #0
_02389C78:
	ldr r0, [r5]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl FUN_0234FB60
	cmp r0, #0
	beq _02389CA4
	mov r0, r7
	mov r1, r4
	bl ov31_02389C2C
_02389CA4:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #4
	blt _02389C78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02389CBC: .4byte 0x02353538
	arm_func_end ov31_02389C68

	arm_func_start ov31_02389CC0
ov31_02389CC0: @ 0x02389CC0
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x5c
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_0202812C
	add r0, r6, #0xda
	add r0, r0, #0x2600
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r1, sp, #0xc
	str r6, [sp, #0x1c]
	str r1, [sp]
	str r2, [sp, #4]
	mov r2, #0
	ldr r0, _02389D74 @ =0x0238A1E8
	ldr r1, _02389D78 @ =0x00001013
	ldr r3, _02389D7C @ =0x00000A3B
	str r2, [sp, #8]
	bl FUN_0202E3CC
	mov r7, r0
	mov r6, #0x3e
_02389D1C:
	mov r0, r6
	bl FUN_022E9FE0
	mov r0, r7
	bl FUN_0202E6E4
	cmp r0, #0
	bne _02389D1C
	mov r0, r7
	bl FUN_0202E6C8
	mov r0, #0xb
	mov r1, #0
	bl FUN_022EA428
	mov r0, #4
	mov r1, #0x3e
	bl FUN_022EA370
	mov r0, r5
	bl FUN_0202810C
	cmp r4, #0
	beq _02389D6C
	mov r0, r5
	bl FUN_0202A954
_02389D6C:
	add sp, sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02389D74: .4byte 0x0238A1E8
_02389D78: .4byte 0x00001013
_02389D7C: .4byte 0x00000A3B
	arm_func_end ov31_02389CC0

	arm_func_start ov31_02389D80
ov31_02389D80: @ 0x02389D80
	mov r1, #0
	str r1, [r0, #0xc8]
	str r1, [r0, #0xcc]
	str r1, [r0, #0xbc]
	bx lr
	arm_func_end ov31_02389D80
	@ 0x02389D94