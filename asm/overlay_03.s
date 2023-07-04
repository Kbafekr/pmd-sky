	.include "asm/macros.inc"
	.include "overlay_03.inc"
	.include "global.inc"

	.text

	arm_func_start ov03_0233CA80
ov03_0233CA80: @ 0x0233CA80
	ldr ip, _0233CA90 @ =FUN_02003250
	ldr r0, _0233CA94 @ =0x02346BE0
	mov r1, #0x10
	bx ip
	.align 2, 0
_0233CA90: .4byte FUN_02003250
_0233CA94: .4byte 0x02346BE0
	arm_func_end ov03_0233CA80

	arm_func_start ov03_0233CA98
ov03_0233CA98: @ 0x0233CA98
	ldr r1, _0233CAA4 @ =0x02346BE0
	str r0, [r1]
	bx lr
	.align 2, 0
_0233CAA4: .4byte 0x02346BE0
	arm_func_end ov03_0233CA98

	arm_func_start ov03_0233CAA8
ov03_0233CAA8: @ 0x0233CAA8
	ldr r1, _0233CAB4 @ =0x02346BE0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0233CAB4: .4byte 0x02346BE0
	arm_func_end ov03_0233CAA8

	arm_func_start ov03_0233CAB8
ov03_0233CAB8: @ 0x0233CAB8
	ldr r0, _0233CAC4 @ =0x02346BE0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_0233CAC4: .4byte 0x02346BE0
	arm_func_end ov03_0233CAB8

	arm_func_start ov03_0233CAC8
ov03_0233CAC8: @ 0x0233CAC8
	ldr r1, _0233CAD4 @ =0x02346BE0
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0233CAD4: .4byte 0x02346BE0
	arm_func_end ov03_0233CAC8

	arm_func_start ov03_0233CAD8
ov03_0233CAD8: @ 0x0233CAD8
	ldr r0, _0233CAE4 @ =0x02346BE0
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_0233CAE4: .4byte 0x02346BE0
	arm_func_end ov03_0233CAD8

	arm_func_start ov03_0233CAE8
ov03_0233CAE8: @ 0x0233CAE8
	ldr r1, _0233CAF4 @ =0x02346BE0
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0233CAF4: .4byte 0x02346BE0
	arm_func_end ov03_0233CAE8

	arm_func_start ov03_0233CAF8
ov03_0233CAF8: @ 0x0233CAF8
	ldr r0, _0233CB04 @ =0x02346BE0
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0233CB04: .4byte 0x02346BE0
	arm_func_end ov03_0233CAF8

	arm_func_start ov03_0233CB08
ov03_0233CB08: @ 0x0233CB08
	push {r3, lr}
	mov r0, #0xb8
	arm_func_end ov03_0233CB08

	arm_func_start ov03_0233CB10
ov03_0233CB10: @ 0x0233CB10
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233CB90 @ =0x02346BF0
	mov r1, #0xb8
	str r0, [r2]
	bl FUN_02003250
	mov r2, #0
	ldr r0, _0233CB90 @ =0x02346BF0
	mov ip, r2
_0233CB34:
	ldr r1, [r0]
	add r1, r1, r2
	arm_func_end ov03_0233CB10

	arm_func_start ov03_0233CB3C
ov03_0233CB3C: @ 0x0233CB3C
	add r2, r2, #1
	strb ip, [r1, #0x14]
	cmp r2, #6
	blt _0233CB34
	ldr r0, _0233CB90 @ =0x02346BF0
	mov r1, #0x10
	ldr r3, [r0]
	add r2, r3, #0x14
	str r2, [r3, #0x7c]
	ldr r2, [r0]
	str ip, [r2, #0x10]
	ldr r0, [r0]
	bl FUN_02003250
	ldr r0, _0233CB90 @ =0x02346BF0
	mov r1, #0
	str r1, [r0, #4]
	bl FUN_02046D20
	mov r0, #0
	bl FUN_023375B0
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0233CB90: .4byte 0x02346BF0
	arm_func_end ov03_0233CB3C

	arm_func_start ov03_0233CB94
ov03_0233CB94: @ 0x0233CB94
	push {r4, lr}
	sub sp, sp, #8
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF78 @ =0x00002001
	ldr r0, [r0]
	ldr r2, [r0, #0x10]
	cmp r2, r1
	bgt _0233CC0C
	bge _0233CE68
	cmp r2, #0x1000
	bgt _0233CBEC
	bge _0233CDE0
	cmp r2, #2
	bgt _0233CF68
	cmp r2, #0
	blt _0233CF68
	beq _0233CC58
	cmp r2, #1
	beq _0233CD18
	cmp r2, #2
	beq _0233CDC4
	b _0233CF68
_0233CBEC:
	sub r0, r1, #0x1000
	cmp r2, r0
	bgt _0233CC00
	beq _0233CE00
	b _0233CF68
_0233CC00:
	cmp r2, #0x2000
	beq _0233CE48
	b _0233CF68
_0233CC0C:
	cmp r2, #0x4000
	bgt _0233CC38
	bge _0233CF0C
	cmp r2, #0x3000
	bgt _0233CC28
	beq _0233CEB0
	b _0233CF68
_0233CC28:
	add r0, r1, #0x1000
	cmp r2, r0
	beq _0233CED0
	b _0233CF68
_0233CC38:
	add r0, r1, #0x2000
	cmp r2, r0
	bgt _0233CC4C
	beq _0233CF30
	b _0233CF68
_0233CC4C:
	cmp r2, r1, lsl #1
	beq _0233CF48
	b _0233CF68
_0233CC58:
	bl FUN_0232E94C
	cmp r0, #0
	bne _0233CF68
	bl FUN_0232F3F4
	bl ov03_0233CA80
	mov r0, #1
	mov r1, #0
	bl FUN_0205B97C
	cmp r0, #0
	bne _0233CCA0
	mov r0, #5
	mov r1, #0
	bl FUN_0205B97C
	cmp r0, #0
	ldreq r0, _0233CF74 @ =0x02346BF0
	moveq r1, #3
	ldreq r0, [r0]
	strbeq r1, [r0, #0x15]
_0233CCA0:
	mov r0, #0x12
	bl FUN_02067584
	cmp r0, #0
	ldrne r0, _0233CF74 @ =0x02346BF0
	movne r1, #3
	ldreq r0, _0233CF74 @ =0x02346BF0
	moveq r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x16]
	mov r0, #0xb
	bl FUN_023375C0
	ldr r2, _0233CF7C @ =0x02346A38
	ldr r1, _0233CF74 @ =0x02346BF0
	ldr r2, [r2, r0, lsl #3]
	ldr r0, [r1]
	ldr r3, _0233CF80 @ =0x02346A34
	str r2, [r0, #0x1c]
	ldr r2, _0233CF84 @ =0x00003832
	str r3, [sp]
	str r2, [sp, #4]
	ldr r3, [r1]
	mov r0, #0
	ldr r2, _0233CF88 @ =0x00000233
	mov r1, r0
	add r3, r3, #0x1c
	bl FUN_020663DC
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0x10]
_0233CD18:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xb
	bl FUN_023375D0
	cmp r4, #1
	bne _0233CD58
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r2, #0x1000
	ldr r1, [r0]
	mov r0, #0
	str r2, [r1, #0x10]
	bl ov03_0233CA98
	b _0233CF68
_0233CD58:
	cmp r4, #2
	bne _0233CD7C
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r2, #0x2000
	ldr r1, [r0]
	mov r0, #1
	str r2, [r1, #0x10]
	bl ov03_0233CA98
	b _0233CF68
_0233CD7C:
	cmp r4, #3
	ldreq r0, _0233CF74 @ =0x02346BF0
	moveq r1, #0x3000
	ldreq r0, [r0]
	streq r1, [r0, #0x10]
	beq _0233CF68
	cmp r4, #4
	ldreq r0, _0233CF74 @ =0x02346BF0
	moveq r1, #0x4000
	ldreq r0, [r0]
	streq r1, [r0, #0x10]
	beq _0233CF68
	cmp r4, #0x1f
	ldreq r0, _0233CF74 @ =0x02346BF0
	moveq r1, #2
	ldreq r0, [r0]
	streq r1, [r0, #0x10]
	b _0233CF68
_0233CDC4:
	bl FUN_0232E94C
	arm_func_end ov03_0233CB94

	arm_func_start ov03_0233CDC8
ov03_0233CDC8: @ 0x0233CDC8
	cmp r0, #0
	bne _0233CF68
	mov r0, #0xf
	bl FUN_023310B8
	arm_func_end ov03_0233CDC8

	arm_func_start ov03_0233CDD8
ov03_0233CDD8: @ 0x0233CDD8
	mov r0, #3
	b _0233CF6C
_0233CDE0:
	bl FUN_0232E94C
	arm_func_end ov03_0233CDD8

	arm_func_start ov03_0233CDE4
ov03_0233CDE4: @ 0x0233CDE4
	cmp r0, #0
	bne _0233CF68
	bl ov03_0233D674
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF8C @ =0x00001001
	ldr r0, [r0]
	str r1, [r0, #0x10]
_0233CE00:
	bl FUN_02003BFC
	bl ov03_0233D6E4
	cmp r0, #1
	bne _0233CE30
	bl ov03_0233D6B8
	bl ov03_0233CAF8
	bl FUN_023375B0
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x10]
	b _0233CF68
_0233CE30:
	cmp r0, #2
	bne _0233CF68
	bl ov03_0233D6B8
	bl FUN_0204A018
	mov r0, #3
	b _0233CF6C
_0233CE48:
	bl FUN_0232E94C
	cmp r0, #0
	bne _0233CF68
	bl ov03_0233D018
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF78 @ =0x00002001
	ldr r0, [r0]
	str r1, [r0, #0x10]
_0233CE68:
	bl FUN_02003BFC
	bl ov03_0233D088
	cmp r0, #1
	bne _0233CE98
	bl ov03_0233D05C
	bl ov03_0233CAF8
	bl FUN_023375B0
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x10]
	b _0233CF68
_0233CE98:
	cmp r0, #2
	bne _0233CF68
	bl ov03_0233D05C
	bl FUN_0204A018
	mov r0, #3
	b _0233CF6C
_0233CEB0:
	bl FUN_0232E94C
	cmp r0, #0
	bne _0233CF68
	bl ov03_0234442C
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF90 @ =0x00003001
	ldr r0, [r0]
	str r1, [r0, #0x10]
_0233CED0:
	bl ov03_02344464
	cmp r0, #1
	bne _0233CEF4
	bl ov03_02344700
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x10]
	b _0233CF68
_0233CEF4:
	cmp r0, #2
	bne _0233CF68
	bl ov03_02344700
	bl FUN_0204A018
	mov r0, #3
	b _0233CF6C
_0233CF0C:
	bl FUN_0232E94C
	cmp r0, #0
	bne _0233CF68
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF94 @ =0x00004001
	ldr r0, [r0]
	str r1, [r0, #0x10]
	bl FUN_02046D20
	b _0233CF68
_0233CF30:
	bl ov03_0234472C
	ldr r0, _0233CF74 @ =0x02346BF0
	ldr r1, _0233CF98 @ =0x00004002
	ldr r0, [r0]
	str r1, [r0, #0x10]
	b _0233CF68
_0233CF48:
	bl ov03_023447B8
	cmp r0, #0
	beq _0233CF68
	bl ov03_0234478C
	ldr r0, _0233CF74 @ =0x02346BF0
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x10]
_0233CF68:
	mov r0, #1
_0233CF6C:
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0233CF74: .4byte 0x02346BF0
_0233CF78: .4byte 0x00002001
_0233CF7C: .4byte 0x02346A38
_0233CF80: .4byte 0x02346A34
_0233CF84: .4byte 0x00003832
_0233CF88: .4byte 0x00000233
_0233CF8C: .4byte 0x00001001
_0233CF90: .4byte 0x00003001
_0233CF94: .4byte 0x00004001
_0233CF98: .4byte 0x00004002
	arm_func_end ov03_0233CDE4

	arm_func_start ov03_0233CF9C
ov03_0233CF9C: @ 0x0233CF9C
	push {r3, lr}
	ldr r0, _0233CFD0 @ =0x02346BF0
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02046D20
	ldr r0, _0233CFD0 @ =0x02346BF0
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _0233CFD0 @ =0x02346BF0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0233CFD0: .4byte 0x02346BF0
	arm_func_end ov03_0233CF9C

	arm_func_start ov03_0233CFD4
ov03_0233CFD4: @ 0x0233CFD4
	push {r3, lr}
	bl FUN_0204E6A4
	cmp r0, #0
	bne _0233D010
	bl FUN_0204E40C
	cmp r0, #0
	bne _0233D010
	bl FUN_0204E210
	mvn r1, #0
	cmp r0, r1
	bne _0233D010
	bl FUN_0204E644
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
_0233D010:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov03_0233CFD4

	arm_func_start ov03_0233D018
ov03_0233D018: @ 0x0233D018
	push {r3, lr}
	mov r0, #0xc4
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233D058 @ =0x02346BB8
	mov r1, #0xc4
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _0233D058 @ =0x02346BB8
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	add r0, r1, #0x20
	str r0, [r1, #0x84]
	pop {r3, pc}
	.align 2, 0
_0233D058: .4byte 0x02346BB8
	arm_func_end ov03_0233D018

	arm_func_start ov03_0233D05C
ov03_0233D05C: @ 0x0233D05C
	push {r3, lr}
	ldr r0, _0233D084 @ =0x02346BB8
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _0233D084 @ =0x02346BB8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0233D084: .4byte 0x02346BB8
	arm_func_end ov03_0233D05C

	arm_func_start ov03_0233D088
ov03_0233D088: @ 0x0233D088
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, #0x300
	bgt _0233D104
	bge _0233D43C
	ldr r0, _0233D634 @ =0x00000101
	cmp r2, r0
	bgt _0233D0E4
	bge _0233D39C
	cmp r2, #1
	bgt _0233D0D8
	cmp r2, #0
	blt _0233D624
	beq _0233D160
	cmp r2, #1
	beq _0233D204
	b _0233D624
_0233D0D8:
	cmp r2, #0x100
	beq _0233D328
	b _0233D624
_0233D0E4:
	cmp r2, #0x200
	bgt _0233D0F4
	beq _0233D29C
	b _0233D624
_0233D0F4:
	add r0, r0, #0x100
	cmp r2, r0
	beq _0233D2E4
	b _0233D624
_0233D104:
	ldr r1, _0233D638 @ =0x00000402
	cmp r2, r1
	bgt _0233D134
	bge _0233D510
	ldr r0, _0233D63C @ =0x00000301
	cmp r2, r0
	bgt _0233D128
	beq _0233D480
	b _0233D624
_0233D128:
	cmp r2, #0x400
	beq _0233D4CC
	b _0233D624
_0233D134:
	add r0, r1, #0xff
	cmp r2, r0
	bgt _0233D150
	bge _0233D5B8
	cmp r2, #0x500
	beq _0233D574
	b _0233D624
_0233D150:
	ldr r0, _0233D640 @ =0x0000FFFF
	cmp r2, r0
	beq _0233D61C
	b _0233D624
_0233D160:
	add r0, r1, #0x20
	mov r1, #3
	bl FUN_02003250
	bl FUN_0204E464
	cmp r0, #0
	bne _0233D190
	ldr r0, _0233D630 @ =0x02346BB8
	mov r2, #3
	ldr r1, [r0]
	strb r2, [r1, #0x20]
	ldr r0, [r0]
	strb r2, [r0, #0x21]
_0233D190:
	mov r0, #5
	mov r1, #0
	bl FUN_0205B97C
	cmp r0, #0
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #3
	ldreq r0, [r0]
	strbeq r1, [r0, #0x22]
	mov r0, #0xe
	bl FUN_023375C0
	ldr r2, _0233D644 @ =0x02346930
	ldr r1, _0233D630 @ =0x02346BB8
	ldr r2, [r2, r0, lsl #3]
	ldr r0, [r1]
	ldr r3, _0233D648 @ =0x0234692C
	str r2, [r0, #0x24]
	ldr r2, _0233D64C @ =0x0000383C
	str r3, [sp]
	str r2, [sp, #4]
	ldr r3, [r1]
	mov r0, #0
	ldr r2, _0233D650 @ =0x00000233
	mov r1, r0
	add r3, r3, #0x24
	bl FUN_020663DC
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
_0233D204:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xe
	bl FUN_023375D0
	cmp r4, #9
	bne _0233D244
	mov r0, #0
	bl ov03_0233CAA8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x200
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D244:
	cmp r4, #0xa
	bne _0233D268
	mov r0, #3
	bl ov03_0233CAA8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x100
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D268:
	cmp r4, #0xb
	bne _0233D28C
	mov r0, #4
	bl ov03_0233CAA8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x200
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D28C:
	cmp r4, #0x1f
	bne _0233D624
	mov r0, #1
	b _0233D628
_0233D29C:
	bl ov03_0233CAB8
	cmp r0, #0
	mov r3, #0x100
	bne _0233D2C8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0
	ldr r2, [r0]
	str r3, [r2]
	ldr r0, [r0]
	strb r1, [r0, #0xbc]
	b _0233D624
_0233D2C8:
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #1
	ldr r2, [r0]
	str r3, [r2]
	ldr r0, [r0]
	strb r1, [r0, #0xbc]
	b _0233D624
_0233D2E4:
	bl FUN_02066A44
	movs r5, r0
	beq _0233D624
	bl FUN_020674CC
	mov r4, r0
	bl FUN_02067664
	cmp r5, #1
	bne _0233D320
	ldr r0, _0233D630 @ =0x02346BB8
	mov r2, #0x100
	ldr r1, [r0]
	str r2, [r1]
	ldr r0, [r0]
	strb r4, [r0, #0xbc]
	b _0233D624
_0233D320:
	mov r0, #1
	b _0233D628
_0233D328:
	mov r4, #0
	bl ov03_0233CAB8
	cmp r0, #0
	ldreq r4, _0233D654 @ =0x00003849
	beq _0233D358
	bl ov03_0233CAB8
	cmp r0, #3
	ldreq r4, _0233D658 @ =0x0000384C
	beq _0233D358
	bl ov03_0233CAB8
	cmp r0, #4
	ldreq r4, _0233D65C @ =0x0000384D
_0233D358:
	mov r0, #0xf
	bl FUN_023375C0
	ldr r1, _0233D660 @ =0x02346958
	ldr r3, _0233D664 @ =0x02346B20
	ldr r1, [r1, r0, lsl #3]
	ldr r0, _0233D668 @ =0x02346954
	str r1, [r3]
	str r0, [sp]
	ldr r0, _0233D66C @ =0x0234673C
	ldr r2, _0233D650 @ =0x00000233
	mov r1, #0
	str r4, [sp, #4]
	bl FUN_020663DC
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r1, _0233D634 @ =0x00000101
	ldr r0, [r0]
	str r1, [r0]
_0233D39C:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xf
	bl FUN_023375D0
	cmp r4, #0xc
	bne _0233D3DC
	mov r0, #0
	bl ov03_0233CAC8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x300
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D3DC:
	cmp r4, #0xd
	bne _0233D400
	mov r0, #1
	bl ov03_0233CAC8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x400
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D400:
	cmp r4, #0xe
	bne _0233D424
	mov r0, #2
	bl ov03_0233CAC8
	ldr r0, _0233D630 @ =0x02346BB8
	mov r1, #0x500
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D424:
	cmp r4, #0x1f
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233D624
_0233D43C:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233D454
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233D468
_0233D454:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r0, [r0]
	ldrsb r0, [r0, #0xbc]
	bl ov03_0233F310
	b _0233D470
_0233D468:
	mov r0, #0
	bl ov03_0233F310
_0233D470:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r1, _0233D63C @ =0x00000301
	ldr r0, [r0]
	str r1, [r0]
_0233D480:
	bl ov03_0233F3A4
	movs r4, r0
	beq _0233D624
	bl ov03_0233F378
	cmp r4, #1
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D624
	cmp r4, #3
	moveq r0, #2
	beq _0233D628
	cmp r4, #2
	ldreq r0, _0233D630 @ =0x02346BB8
	ldreq r1, _0233D640 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233D624
_0233D4CC:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233D4E4
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233D4F8
_0233D4E4:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r0, [r0]
	ldrsb r0, [r0, #0xbc]
	bl ov03_0233DDE8
	b _0233D4FC
_0233D4F8:
	bl ov03_0233DDA0
_0233D4FC:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r1, _0233D638 @ =0x00000402
	ldr r0, [r0]
	str r1, [r0]
	b _0233D624
_0233D510:
	bl ov03_0233DE58
	movs r4, r0
	beq _0233D624
	bl ov03_0233DE2C
	cmp r4, #1
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D624
	cmp r4, #2
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D624
	cmp r4, #4
	moveq r0, #2
	beq _0233D628
	cmp r4, #3
	ldreq r0, _0233D630 @ =0x02346BB8
	ldreq r1, _0233D640 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233D624
_0233D574:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233D58C
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233D5A0
_0233D58C:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r0, [r0]
	ldrsb r0, [r0, #0xbc]
	bl ov03_02340B28
	b _0233D5A8
_0233D5A0:
	mov r0, #0
	bl ov03_02340B28
_0233D5A8:
	ldr r0, _0233D630 @ =0x02346BB8
	ldr r1, _0233D670 @ =0x00000501
	ldr r0, [r0]
	str r1, [r0]
_0233D5B8:
	bl ov03_02340CD8
	movs r4, r0
	beq _0233D624
	bl ov03_02340C9C
	cmp r4, #1
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D624
	cmp r4, #2
	ldreq r0, _0233D630 @ =0x02346BB8
	moveq r1, #0
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233D624
	cmp r4, #4
	moveq r0, #2
	beq _0233D628
	cmp r4, #3
	ldreq r0, _0233D630 @ =0x02346BB8
	ldreq r1, _0233D640 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233D624
_0233D61C:
	mov r0, #1
	b _0233D628
_0233D624:
	mov r0, #0
_0233D628:
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0233D630: .4byte 0x02346BB8
_0233D634: .4byte 0x00000101
_0233D638: .4byte 0x00000402
_0233D63C: .4byte 0x00000301
_0233D640: .4byte 0x0000FFFF
_0233D644: .4byte 0x02346930
_0233D648: .4byte 0x0234692C
_0233D64C: .4byte 0x0000383C
_0233D650: .4byte 0x00000233
_0233D654: .4byte 0x00003849
_0233D658: .4byte 0x0000384C
_0233D65C: .4byte 0x0000384D
_0233D660: .4byte 0x02346958
_0233D664: .4byte 0x02346B20
_0233D668: .4byte 0x02346954
_0233D66C: .4byte 0x0234673C
_0233D670: .4byte 0x00000501
	arm_func_end ov03_0233D088

	arm_func_start ov03_0233D674
ov03_0233D674: @ 0x0233D674
	push {r3, lr}
	mov r0, #0x154
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233D6B4 @ =0x02346BBC
	mov r1, #0x154
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _0233D6B4 @ =0x02346BBC
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	add r0, r1, #4
	str r0, [r1, #0x68]
	pop {r3, pc}
	.align 2, 0
_0233D6B4: .4byte 0x02346BBC
	arm_func_end ov03_0233D674

	arm_func_start ov03_0233D6B8
ov03_0233D6B8: @ 0x0233D6B8
	push {r3, lr}
	ldr r0, _0233D6E0 @ =0x02346BBC
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _0233D6E0 @ =0x02346BBC
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0233D6E0: .4byte 0x02346BBC
	arm_func_end ov03_0233D6B8

	arm_func_start ov03_0233D6E4
ov03_0233D6E4: @ 0x0233D6E4
	push {r4, lr}
	sub sp, sp, #8
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, #0x300
	bgt _0233D768
	bge _0233DA60
	ldr r0, _0233DD54 @ =0x00000101
	cmp r2, r0
	bgt _0233D748
	bge _0233D9A4
	cmp r2, #2
	bgt _0233D73C
	cmp r2, #0
	blt _0233DD44
	beq _0233D7C4
	cmp r2, #1
	beq _0233D844
	cmp r2, #2
	beq _0233D914
	b _0233DD44
_0233D73C:
	cmp r2, #0x100
	beq _0233D930
	b _0233DD44
_0233D748:
	cmp r2, #0x200
	bgt _0233D758
	beq _0233DAD4
	b _0233DD44
_0233D758:
	add r0, r0, #0x100
	cmp r2, r0
	beq _0233DB4C
	b _0233DD44
_0233D768:
	ldr r1, _0233DD58 @ =0x00000401
	cmp r2, r1
	bgt _0233D798
	bge _0233DBD4
	sub r0, r1, #0x100
	cmp r2, r0
	bgt _0233D78C
	beq _0233DA80
	b _0233DD44
_0233D78C:
	cmp r2, #0x400
	beq _0233DB98
	b _0233DD44
_0233D798:
	add r0, r1, #0x100
	cmp r2, r0
	bgt _0233D7B4
	bge _0233DCB8
	cmp r2, #0x500
	beq _0233DC40
	b _0233DD44
_0233D7B4:
	rsb r0, r1, #0x10400
	cmp r2, r0
	beq _0233DD38
	b _0233DD44
_0233D7C4:
	add r0, r1, #4
	mov r1, #3
	bl FUN_02003250
	mov r0, #4
	mov r1, #0
	bl FUN_0205B97C
	cmp r0, #0
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #3
	ldreq r0, [r0]
	strbeq r1, [r0, #5]
	mov r0, #0xc
	bl FUN_023375C0
	ldr r2, _0233DD5C @ =0x02346908
	ldr r1, _0233DD50 @ =0x02346BBC
	ldr r3, [r2, r0, lsl #3]
	ldr r0, [r1]
	ldr r2, _0233DD60 @ =0x02346904
	str r3, [r0, #8]
	str r2, [sp]
	ldr r0, _0233DD64 @ =0x00003837
	ldr r2, _0233DD68 @ =0x00000233
	str r0, [sp, #4]
	ldr r1, [r1]
	ldr r0, _0233DD6C @ =0x0234674C
	add r3, r1, #8
	mov r1, #0
	bl FUN_020663DC
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
_0233D844:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xc
	bl FUN_023375D0
	cmp r4, #6
	bne _0233D8B4
	mov r0, #1
	bl FUN_0205B9C8
	cmp r0, #0x1e
	bge _0233D894
	mov r0, #1
	bl ov03_0233CAA8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x100
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233D894:
	ldr r1, _0233DD70 @ =0x0000387E
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233D8B4:
	cmp r4, #7
	bne _0233D8D8
	mov r0, #2
	bl ov03_0233CAA8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x300
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233D8D8:
	cmp r4, #8
	bne _0233D8FC
	mov r0, #5
	bl ov03_0233CAA8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x100
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233D8FC:
	cmp r4, #0x1f
	ldreq r0, _0233DD50 @ =0x02346BBC
	ldreq r1, _0233DD74 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233DD44
_0233D914:
	bl FUN_02066494
	cmp r0, #0x1f
	ldreq r0, _0233DD50 @ =0x02346BBC
	ldreq r1, _0233DD74 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233DD44
_0233D930:
	mov r4, #0
	bl ov03_0233CAB8
	cmp r0, #1
	ldreq r4, _0233DD78 @ =0x0000384A
	beq _0233D960
	bl ov03_0233CAB8
	cmp r0, #2
	ldreq r4, _0233DD7C @ =0x0000384B
	beq _0233D960
	bl ov03_0233CAB8
	cmp r0, #5
	ldreq r4, _0233DD80 @ =0x0000384E
_0233D960:
	mov r0, #0xd
	arm_func_end ov03_0233D6E4

	arm_func_start ov03_0233D964
ov03_0233D964: @ 0x0233D964
	bl FUN_023375C0
	ldr r1, _0233DD84 @ =0x02346958
	ldr r3, _0233DD88 @ =0x02346B20
	ldr r1, [r1, r0, lsl #3]
	ldr r0, _0233DD8C @ =0x02346954
	str r1, [r3]
	str r0, [sp]
	ldr r0, _0233DD90 @ =0x0234673C
	ldr r2, _0233DD68 @ =0x00000233
	mov r1, #0
	str r4, [sp, #4]
	bl FUN_020663DC
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, _0233DD54 @ =0x00000101
	ldr r0, [r0]
	str r1, [r0]
_0233D9A4:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xd
	bl FUN_023375D0
	cmp r4, #0xc
	bne _0233D9E4
	mov r0, #0
	bl ov03_0233CAC8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x200
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233D9E4:
	cmp r4, #0xd
	bne _0233DA08
	mov r0, #1
	bl ov03_0233CAC8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x400
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233DA08:
	cmp r4, #0xe
	bne _0233DA2C
	mov r0, #2
	bl ov03_0233CAC8
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0x500
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233DA2C:
	cmp r4, #0x1f
	bne _0233DD44
	bl ov03_0233CAB8
	cmp r0, #2
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x300
	ldreq r0, [r0]
	streq r1, [r0]
	ldrne r0, _0233DD50 @ =0x02346BBC
	movne r1, #0
	ldrne r0, [r0]
	strne r1, [r0]
	b _0233DD44
_0233DA60:
	bl FUN_020664AC
	mov r0, #4
	bl FUN_020668B4
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, _0233DD94 @ =0x00000301
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233DA80:
	bl FUN_02066A44
	cmp r0, #0
	beq _0233DD44
	cmp r0, #1
	bne _0233DABC
	bl FUN_020674CC
	mov r4, r0
	bl FUN_02067664
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r2, #0x100
	ldr r1, [r0]
	str r2, [r1]
	ldr r0, [r0]
	strb r4, [r0, #0x150]
	b _0233DD44
_0233DABC:
	bl FUN_02067664
	ldr r0, _0233DD50 @ =0x02346BBC
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233DAD4:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233DAEC
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233DAF8
_0233DAEC:
	mov r0, #0
	bl ov03_0233F310
	b _0233DB3C
_0233DAF8:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233DB1C
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x50]
	bl ov03_0233F310
	b _0233DB3C
_0233DB1C:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233DB34
	mov r0, #1
	bl ov03_0233F310
	b _0233DB3C
_0233DB34:
	mov r0, #0
	bl ov03_0233F310
_0233DB3C:
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, _0233DD98 @ =0x00000201
	ldr r0, [r0]
	str r1, [r0]
_0233DB4C:
	bl ov03_0233F3A4
	movs r4, r0
	beq _0233DD44
	bl ov03_0233F378
	cmp r4, #1
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233DD44
	cmp r4, #3
	moveq r0, #2
	beq _0233DD48
	cmp r4, #2
	ldreq r0, _0233DD50 @ =0x02346BBC
	ldreq r1, _0233DD74 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233DD44
_0233DB98:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233DBBC
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x50]
	bl ov03_0233DDE8
	b _0233DBC0
_0233DBBC:
	bl ov03_0233DDA0
_0233DBC0:
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, _0233DD58 @ =0x00000401
	ldr r0, [r0]
	str r1, [r0]
	b _0233DD44
_0233DBD4:
	bl ov03_0233DE58
	movs r4, r0
	beq _0233DD44
	bl ov03_0233DE2C
	cmp r4, #1
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233DD44
	cmp r4, #2
	bne _0233DC30
	bl ov03_0233CAB8
	cmp r0, #2
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x300
	ldreq r0, [r0]
	streq r1, [r0]
	ldrne r0, _0233DD50 @ =0x02346BBC
	movne r1, #0
	ldrne r0, [r0]
	strne r1, [r0]
	b _0233DD44
_0233DC30:
	cmp r4, #4
	moveq r0, #2
	movne r0, #1
	b _0233DD48
_0233DC40:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233DC58
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233DC64
_0233DC58:
	mov r0, #0
	bl ov03_02340B28
	b _0233DCA8
_0233DC64:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233DC88
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x50]
	bl ov03_02340B28
	b _0233DCA8
_0233DC88:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233DCA0
	mov r0, #1
	bl ov03_02340B28
	b _0233DCA8
_0233DCA0:
	mvn r0, #0
	bl ov03_02340B28
_0233DCA8:
	ldr r0, _0233DD50 @ =0x02346BBC
	ldr r1, _0233DD9C @ =0x00000501
	ldr r0, [r0]
	str r1, [r0]
_0233DCB8:
	bl ov03_02340CD8
	movs r4, r0
	beq _0233DD44
	bl ov03_02340C9C
	cmp r4, #1
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x100
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233DD44
	cmp r4, #2
	bne _0233DD14
	bl ov03_0233CAB8
	cmp r0, #2
	ldreq r0, _0233DD50 @ =0x02346BBC
	moveq r1, #0x300
	ldreq r0, [r0]
	streq r1, [r0]
	ldrne r0, _0233DD50 @ =0x02346BBC
	movne r1, #0
	ldrne r0, [r0]
	strne r1, [r0]
	b _0233DD44
_0233DD14:
	cmp r4, #4
	moveq r0, #2
	beq _0233DD48
	cmp r4, #3
	ldreq r0, _0233DD50 @ =0x02346BBC
	ldreq r1, _0233DD74 @ =0x0000FFFF
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233DD44
_0233DD38:
	bl ov03_0233D6B8
	mov r0, #1
	b _0233DD48
_0233DD44:
	mov r0, #0
_0233DD48:
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0233DD50: .4byte 0x02346BBC
_0233DD54: .4byte 0x00000101
_0233DD58: .4byte 0x00000401
_0233DD5C: .4byte 0x02346908
_0233DD60: .4byte 0x02346904
_0233DD64: .4byte 0x00003837
_0233DD68: .4byte 0x00000233
_0233DD6C: .4byte 0x0234674C
_0233DD70: .4byte 0x0000387E
_0233DD74: .4byte 0x0000FFFF
_0233DD78: .4byte 0x0000384A
_0233DD7C: .4byte 0x0000384B
_0233DD80: .4byte 0x0000384E
_0233DD84: .4byte 0x02346958
_0233DD88: .4byte 0x02346B20
_0233DD8C: .4byte 0x02346954
_0233DD90: .4byte 0x0234673C
_0233DD94: .4byte 0x00000301
_0233DD98: .4byte 0x00000201
_0233DD9C: .4byte 0x00000501
	arm_func_end ov03_0233D964

	arm_func_start ov03_0233DDA0
ov03_0233DDA0: @ 0x0233DDA0
	push {r3, lr}
	mov r0, #0x14c
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233DDE4 @ =0x02346BC0
	mov r1, #0x14c
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _0233DDE4 @ =0x02346BC0
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	strb r2, [r1, #0xd0]
	ldr r0, [r0]
	strb r2, [r0, #0x149]
	pop {r3, pc}
	.align 2, 0
_0233DDE4: .4byte 0x02346BC0
	arm_func_end ov03_0233DDA0

	arm_func_start ov03_0233DDE8
ov03_0233DDE8: @ 0x0233DDE8
	push {r4, lr}
	mov r4, r0
	mov r0, #0x14c
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233DE28 @ =0x02346BC0
	mov r1, #0x14c
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _0233DE28 @ =0x02346BC0
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	ldr r0, [r0]
	strb r4, [r0, #0xd0]
	pop {r4, pc}
	.align 2, 0
_0233DE28: .4byte 0x02346BC0
	arm_func_end ov03_0233DDE8

	arm_func_start ov03_0233DE2C
ov03_0233DE2C: @ 0x0233DE2C
	push {r3, lr}
	ldr r0, _0233DE54 @ =0x02346BC0
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _0233DE54 @ =0x02346BC0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0233DE54: .4byte 0x02346BC0
	arm_func_end ov03_0233DE2C

	arm_func_start ov03_0233DE58
ov03_0233DE58: @ 0x0233DE58
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	ldr r4, _0233EE08 @ =0x02346BC0
	ldr r0, _0233EE0C @ =0x000003F2
	ldr r2, [r4]
	ldr r1, [r2]
	cmp r1, r0
	bgt _0233DFB0
	bge _0233F210
	sub r3, r0, #0xd1
	cmp r1, r3
	bgt _0233DF38
	bge _0233E704
	sub r3, r0, #0xef
	cmp r1, r3
	bgt _0233DED4
	bge _0233E340
	cmp r1, #2
	bgt _0233DEC4
	cmp r1, #0
	blt _0233F2C4
	beq _0233E094
	cmp r1, #1
	beq _0233E0EC
	cmp r1, #2
	beq _0233E114
	b _0233F2C4
_0233DEC4:
	sub r0, r0, #0xf0
	cmp r1, r0
	beq _0233E388
	b _0233F2C4
_0233DED4:
	sub r0, r0, #0xdf
	cmp r1, r0
	bgt _0233DF2C
	subs r0, r1, #0x304
	addpl pc, pc, r0, lsl #2
	b _0233F2C4
_0233DEEC: @ jump table
	b _0233F26C @ case 0
	b _0233F2C4 @ case 1
	b _0233F2C4 @ case 2
	b _0233F274 @ case 3
	b _0233F2C4 @ case 4
	b _0233F2C4 @ case 5
	b _0233F2C4 @ case 6
	b _0233F2C4 @ case 7
	b _0233F2C4 @ case 8
	b _0233F2C4 @ case 9
	b _0233F2C4 @ case 10
	b _0233F2B4 @ case 11
	b _0233E4E4 @ case 12
	b _0233E5F8 @ case 13
	b _0233E65C @ case 14
	b _0233E698 @ case 15
_0233DF2C:
	cmp r1, #0x320
	beq _0233E6AC
	b _0233F2C4
_0233DF38:
	sub r3, r0, #0x9d
	cmp r1, r3
	bgt _0233DF90
	bge _0233EE98
	sub r3, r0, #0xcf
	cmp r1, r3
	bgt _0233DF64
	sub r0, r0, #0xcf
	cmp r1, r0
	beq _0233E77C
	b _0233F2C4
_0233DF64:
	sub r0, r1, #0x324
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0233F2C4
_0233DF74: @ jump table
	b _0233ED84 @ case 0
	b _0233EEB4 @ case 1
	b _0233EFA4 @ case 2
	b _0233F2C4 @ case 3
	b _0233F2C4 @ case 4
	b _0233F2C4 @ case 5
	b _0233F168 @ case 6
_0233DF90:
	cmp r1, #0x3f0
	bgt _0233DFA0
	beq _0233F17C
	b _0233F2C4
_0233DFA0:
	ldr r0, _0233EE10 @ =0x000003F1
	cmp r1, r0
	beq _0233F210
	b _0233F2C4
_0233DFB0:
	cmp r1, #0x400
	bgt _0233E01C
	bge _0233EFC8
	add r2, r0, #3
	cmp r1, r2
	bgt _0233DFF4
	bge _0233F210
	add r2, r0, #1
	cmp r1, r2
	bgt _0233DFE8
	add r0, r0, #1
	cmp r1, r0
	beq _0233F210
	b _0233F2C4
_0233DFE8:
	cmp r1, #0x3f4
	beq _0233F258
	b _0233F2C4
_0233DFF4:
	add r2, r0, #4
	cmp r1, r2
	bgt _0233E010
	add r0, r0, #4
	cmp r1, r0
	beq _0233F258
	b _0233F2C4
_0233E010:
	add r0, r0, #0xd
	cmp r1, r0
	b _0233F2C4
_0233E01C:
	add r3, r0, #0x12
	cmp r1, r3
	bgt _0233E074
	add r2, r0, #0x11
	cmp r1, r2
	blt _0233E048
	beq _0233F154
	add r0, r0, #0x12
	cmp r1, r0
	beq _0233F0C4
	b _0233F2C4
_0233E048:
	add r2, r0, #0xf
	cmp r1, r2
	bgt _0233E064
	add r0, r0, #0xf
	cmp r1, r0
	beq _0233EFE4
	b _0233F2C4
_0233E064:
	add r0, r0, #0x10
	cmp r1, r0
	beq _0233F018
	b _0233F2C4
_0233E074:
	cmp r1, #0x1000
	bgt _0233E084
	beq _0233E3D8
	b _0233F2C4
_0233E084:
	ldr r0, _0233EE14 @ =0x00001001
	cmp r1, r0
	beq _0233E400
	b _0233F2C4
_0233E094:
	bl FUN_0204A1CC
	bl FUN_022BCA80
	mov r4, r0
	bl FUN_022BCCF4
	ldr r1, _0233EE08 @ =0x02346BC0
	cmp r4, #3
	ldr r1, [r1]
	strb r0, [r1, #0x148]
	bne _0233E0D0
	bl FUN_02339888
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E0D0:
	mov r0, #1
	bl FUN_022BCBAC
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E0EC:
	bl FUN_023398A4
	cmp r0, #0
	beq _0233F2C4
	mov r0, #1
	bl FUN_022BCBAC
	mov r0, r4
	ldr r0, [r0]
	mov r1, #2
	str r1, [r0]
	b _0233F2C4
_0233E114:
	add r0, r2, #0x10c
	mov r1, #0x36
	bl FUN_02003250
	bl ov03_0233CAB8
	cmp r0, #0
	bne _0233E194
	mov r0, r4
	ldr r0, [r0]
	ldrsb r1, [r0, #0xd0]
	add r0, r0, #0x20
	bl FUN_0205B794
	mov r0, r4
	ldr r1, [r0]
	mov r2, #0
	strh r2, [r1, #0xc2]
	ldr r0, [r0]
	strh r2, [r0, #0xc0]
	bl FUN_020205A0
	mov r1, r4
	ldr r2, [r1]
	strb r0, [r2, #0x3c]
	ldr r0, [r1]
	add r0, r0, #0x3d
	bl FUN_02050B10
	ldr r1, _0233EE18 @ =0x00003869
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E194:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233E1C0
	ldr r1, _0233EE20 @ =0x0000384F
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E1C0:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233E228
	mov r0, r4
	ldr r0, [r0]
	ldrsb r1, [r0, #0xd0]
	add r0, r0, #0x20
	bl FUN_0205B794
	mov r0, r4
	ldr r1, [r0]
	mov r2, #0
	strh r2, [r1, #0xc2]
	ldr r0, [r0]
	strh r2, [r0, #0xc0]
	bl FUN_020205A0
	mov r1, r4
	ldr r2, [r1]
	strb r0, [r2, #0x3c]
	ldr r0, [r1]
	add r0, r0, #0x3d
	bl FUN_02050B10
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x1000
	str r1, [r0]
	b _0233F2C4
_0233E228:
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233E254
	ldr r1, _0233EE24 @ =0x00003881
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E254:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233E314
	mov r0, r4
	ldr r0, [r0]
	ldrsb r1, [r0, #0xd0]
	add r0, r0, #0x20
	bl FUN_0205B794
	mov r0, r4
	ldr r1, [r0]
	mov r2, #0
	strh r2, [r1, #0xc2]
	ldr r0, [r0]
	strh r2, [r0, #0xc0]
	bl FUN_020205A0
	mov r1, r4
	ldr r2, [r1]
	strb r0, [r2, #0x3c]
	ldr r0, [r1]
	add r0, r0, #0x3d
	bl FUN_02050B10
	mov r0, r4
	ldr r1, [r0]
	ldrb r0, [r1, #0x148]
	cmp r0, #0
	beq _0233E300
	add r0, r1, #0x20
	bl FUN_0205B6CC
	cmp r0, #0
	beq _0233E300
	mov r0, #0x10
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233EE28 @ =0x023467EC
	ldr r3, _0233EE2C @ =0x00003850
	mov r1, r0
	bl FUN_020663C8
	mov r0, r4
	ldr r1, _0233EE30 @ =0x00000303
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E300:
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #0x1000
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E314:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _0233F2C4
	ldr r1, _0233EE34 @ =0x0000388D
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E340:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x10
	bl FUN_023375D0
	cmp r4, #0x1d
	ldreq r0, _0233EE08 @ =0x02346BC0
	moveq r1, #0x1000
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233F2C4
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _0233F2C4
	mov r0, #1
	b _0233F2C8
_0233E388:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	bl ov03_0233CAB8
	cmp r0, #0
	cmpne r0, #2
	cmpne r0, #4
	ldreq r0, _0233EE08 @ =0x02346BC0
	moveq r1, #0x310
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233F2C4
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	ldreq r0, _0233EE08 @ =0x02346BC0
	moveq r1, #0x320
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233F2C4
_0233E3D8:
	mov r1, #0
	strb r1, [r2, #0x149]
	ldr r0, [r4]
	add r0, r0, #0x20
	bl ov03_023449C4
	mov r0, r4
	ldr r1, _0233EE14 @ =0x00001001
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E400:
	bl ov03_02344AB8
	mvn r1, #0
	cmp r0, r1
	bne _0233E41C
	bl ov03_02344A58
	mov r0, #1
	b _0233F2C8
_0233E41C:
	cmp r0, #2
	bne _0233E430
	bl ov03_02344A58
	mov r0, #2
	b _0233F2C8
_0233E430:
	cmp r0, #3
	bne _0233E444
	bl ov03_02344A58
	mov r0, #4
	b _0233F2C8
_0233E444:
	cmp r0, #1
	bne _0233F2C4
	bl ov03_02344AA4
	mov r1, r4
	ldr r1, [r1]
	strb r0, [r1, #0x149]
	bl ov03_02344A58
	bl ov03_0233CAB8
	cmp r0, #0
	bne _0233E48C
	ldr r1, _0233EE18 @ =0x00003869
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E48C:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233E4B8
	ldr r1, _0233EE38 @ =0x0000386A
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E4B8:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233F2C4
	ldr r1, _0233EE3C @ =0x0000388E
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233EE1C @ =0x00000302
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E4E4:
	bl ov03_0233CAB8
	cmp r0, #0
	bne _0233E540
	mov r1, r4
	ldr r1, [r1]
	add r0, sp, #0x34
	add r1, r1, #0x20
	bl FUN_0204DCA0
	ldr r4, _0233EE40 @ =0x00000121
	mov r0, #0
	add r3, sp, #0x34
	sub r1, r0, #1
	mov r2, #6
	str r4, [sp]
	bl FUN_02037570
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE44 @ =0x00003868
	ldr r2, [r0]
	add r3, r4, #0x1f0
	mov r0, #0
	str r3, [r2]
	bl FUN_02066468
	b _0233F2C4
_0233E540:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233E59C
	mov r1, r4
	ldr r1, [r1]
	add r0, sp, #0x34
	add r1, r1, #0x20
	bl FUN_0204DCA0
	ldr r4, _0233EE40 @ =0x00000121
	mov r0, #0
	add r3, sp, #0x34
	sub r1, r0, #1
	mov r2, #6
	str r4, [sp]
	bl FUN_02037570
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE48 @ =0x0000386B
	ldr r2, [r0]
	add r3, r4, #0x1f0
	mov r0, #0
	str r3, [r2]
	bl FUN_02066468
	b _0233F2C4
_0233E59C:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _0233F2C4
	mov r1, r4
	ldr r1, [r1]
	add r0, sp, #0x34
	add r1, r1, #0x20
	bl FUN_0204DCA0
	ldr r4, _0233EE40 @ =0x00000121
	mov r0, #0
	add r3, sp, #0x34
	sub r1, r0, #1
	mov r2, #6
	str r4, [sp]
	bl FUN_02037570
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE4C @ =0x0000388F
	ldr r2, [r0]
	add r3, r4, #0x1f0
	mov r0, #0
	str r3, [r2]
	bl FUN_02066468
	b _0233F2C4
_0233E5F8:
	add r1, sp, #6
	mov r0, #0
	bl FUN_0200625C
	bl FUN_0204AE60
	cmp r0, #0
	add r0, sp, #0x10
	beq _0233E61C
	bl FUN_02006C1C
	b _0233E620
_0233E61C:
	bl FUN_02006BFC
_0233E620:
	ldrh r0, [sp, #6]
	tst r0, #1
	bne _0233E644
	add r0, sp, #0x10
	mov r1, #2
	mov r2, #0
	bl FUN_02006C8C
	cmp r0, #0
	beq _0233F2C4
_0233E644:
	bl FUN_02046D20
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE50 @ =0x00000312
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233E65C:
	bl FUN_020376EC
	cmp r0, #1
	bne _0233F2C4
	mov r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #0x149]
	cmp r0, #0
	beq _0233E690
	bl FUN_0204FF80
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0
	strb r1, [r0, #0x149]
_0233E690:
	mov r0, #3
	b _0233F2C8
_0233E698:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	mov r0, #3
	b _0233F2C8
_0233E6AC:
	bl ov03_0233CAB8
	cmp r0, #1
	beq _0233E6D0
	bl ov03_0233CAB8
	cmp r0, #3
	beq _0233E6D0
	bl ov03_0233CAB8
	cmp r0, #5
	bne _0233F2C4
_0233E6D0:
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r1, r0, #0x10c
	mov r0, #5
	bl FUN_020367F0
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE54 @ =0x00000321
	ldr r0, [r0]
	str r1, [r0]
	bl FUN_02046D20
	b _0233F2C4
_0233E704:
	bl FUN_02036CD4
	mov r1, r4
	ldr r2, [r1]
	str r0, [r2, #0x108]
	ldr r1, [r1]
	ldr r0, [r1, #0x108]
	cmp r0, #3
	bne _0233E754
	bl FUN_0203755C
	mov r2, r4
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0x36
	add r0, r0, #0x10c
	bl FUN_020032D4
	mov r0, r4
	ldr r1, _0233EE58 @ =0x00000323
	ldr r0, [r0]
	str r1, [r0]
	b _0233E760
_0233E754:
	cmp r0, #2
	ldreq r0, _0233EE58 @ =0x00000323
	streq r0, [r1]
_0233E760:
	bl FUN_02066494
	cmp r0, #0x1f
	ldreq r0, _0233EE08 @ =0x02346BC0
	ldreq r1, _0233EE58 @ =0x00000323
	ldreq r0, [r0]
	streq r1, [r0]
	b _0233F2C4
_0233E77C:
	bl FUN_02037468
	cmp r0, #1
	bne _0233F2C4
	mov r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x108]
	cmp r0, #3
	bne _0233ED7C
	bl ov03_0233CAB8
	mov r1, r4
	ldr r4, [r1]
	mov r5, r0
	add r0, r4, #0x10c
	add r1, r4, #0x20
	bl FUN_0204DBA0
	cmp r0, #0
	moveq r7, #3
	beq _0233EA74
	cmp r5, #1
	beq _0233E7E0
	cmp r5, #3
	beq _0233E85C
	cmp r5, #5
	beq _0233E954
	b _0233EA70
_0233E7E0:
	ldrb r0, [r4, #0x20]
	cmp r0, #1
	movne r7, #4
	bne _0233EA74
	add r1, r4, #0x34
	mov r0, #2
	bl FUN_0205B918
	cmp r0, #0
	bne _0233E83C
	add r1, r4, #0x34
	mov r0, #4
	bl FUN_0205B918
	cmp r0, #0
	bne _0233E83C
	add r1, r4, #0x34
	mov r0, #6
	bl FUN_0205B918
	cmp r0, #0
	bne _0233E83C
	add r0, r4, #0x34
	bl FUN_0205B8CC
	cmp r0, #0
	beq _0233E844
_0233E83C:
	mov r7, #8
	b _0233EA74
_0233E844:
	bl FUN_0205B690
	mvn r1, #0
	cmp r0, r1
	moveq r7, #7
	movne r7, #0
	b _0233EA74
_0233E85C:
	ldrb r0, [r4, #0x20]
	cmp r0, #4
	movne r7, #5
	bne _0233EA74
	ldrsh r0, [r4, #0xc2]
	cmp r0, #0
	beq _0233E938
	ldrsh r0, [r4, #0xc2]
	bl FUN_0200EB58
	cmp r0, #0
	beq _0233E89C
	add r0, r4, #0x20
	mov r1, #0
	bl FUN_02062E34
	cmp r0, #0
	bne _0233E8A4
_0233E89C:
	mov r7, #9
	b _0233EA74
_0233E8A4:
	ldrsh r0, [r4, #0xc2]
	bl FUN_0200E808
	cmp r0, #0xc
	bgt _0233E8D4
	bge _0233E90C
	cmp r0, #1
	bgt _0233E938
	cmp r0, #0
	blt _0233E938
	cmpne r0, #1
	beq _0233E8F0
	b _0233E938
_0233E8D4:
	cmp r0, #0xe
	bgt _0233E938
	cmp r0, #0xd
	blt _0233E938
	cmpne r0, #0xe
	beq _0233E90C
	b _0233E938
_0233E8F0:
	ldrh r0, [r4, #0xc0]
	cmp r0, #0
	beq _0233E904
	cmp r0, #0x64
	blo _0233E938
_0233E904:
	mov r7, #9
	b _0233EA74
_0233E90C:
	ldrsh r0, [r4, #0xc0]
	bl FUN_0200EB58
	cmp r0, #0
	beq _0233E930
	add r0, r4, #0x20
	mov r1, #1
	bl FUN_02062E34
	cmp r0, #0
	bne _0233E938
_0233E930:
	mov r7, #9
	b _0233EA74
_0233E938:
	add r1, r4, #0x34
	mov r0, #1
	bl FUN_0205B918
	cmp r0, #0
	moveq r7, #9
	movne r7, #1
	b _0233EA74
_0233E954:
	add r0, sp, #8
	bl FUN_0205B584
	ldrb r0, [r4, #0x20]
	cmp r0, #5
	movne r7, #6
	bne _0233EA74
	ldrsh r0, [r4, #0xc2]
	cmp r0, #0
	beq _0233EA38
	ldrsh r0, [r4, #0xc2]
	bl FUN_0200EB58
	cmp r0, #0
	beq _0233E99C
	add r0, r4, #0x20
	mov r1, #0
	bl FUN_02062E34
	cmp r0, #0
	bne _0233E9A4
_0233E99C:
	mov r7, #0xa
	b _0233EA74
_0233E9A4:
	ldrsh r0, [r4, #0xc2]
	bl FUN_0200E808
	cmp r0, #0xc
	bgt _0233E9D4
	bge _0233EA0C
	cmp r0, #1
	bgt _0233EA38
	cmp r0, #0
	blt _0233EA38
	cmpne r0, #1
	beq _0233E9F0
	b _0233EA38
_0233E9D4:
	cmp r0, #0xe
	bgt _0233EA38
	cmp r0, #0xd
	blt _0233EA38
	cmpne r0, #0xe
	beq _0233EA0C
	b _0233EA38
_0233E9F0:
	ldrh r0, [r4, #0xc0]
	cmp r0, #0
	beq _0233EA04
	cmp r0, #0x64
	blo _0233EA38
_0233EA04:
	mov r7, #0xa
	b _0233EA74
_0233EA0C:
	ldrsh r0, [r4, #0xc0]
	bl FUN_0200EB58
	cmp r0, #0
	beq _0233EA30
	add r0, r4, #0x20
	mov r1, #1
	bl FUN_02062E34
	cmp r0, #0
	bne _0233EA38
_0233EA30:
	mov r7, #0xa
	b _0233EA74
_0233EA38:
	add r1, r4, #0x34
	mov r0, #4
	bl FUN_0205B918
	cmp r0, #0
	beq _0233EA60
	add r1, sp, #8
	add r0, r4, #0xc4
	bl FUN_0205B554
	cmp r0, #0
	bne _0233EA68
_0233EA60:
	mov r7, #0xa
	b _0233EA74
_0233EA68:
	mov r7, #2
	b _0233EA74
_0233EA70:
	mov r7, #0xb
_0233EA74:
	ldr r0, _0233EE5C @ =0x02346A64
	bl FUN_0200C1FC
	ldr r5, _0233EE60 @ =0x02346A68
	ldr r4, _0233EE08 @ =0x02346BC0
	mov r6, #0
_0233EA88:
	ldr r1, [r4]
	mov r0, r5
	add r1, r1, r6
	ldrb r1, [r1, #0x10c]
	bl FUN_0200C1FC
	add r6, r6, #1
	cmp r6, #0x36
	blt _0233EA88
	ldr r0, _0233EE5C @ =0x02346A64
	bl FUN_0200C1FC
	cmp r7, #0xa
	addls pc, pc, r7, lsl #2
	b _0233F2C4
_0233EABC: @ jump table
	b _0233EAE8 @ case 0
	b _0233EB40 @ case 1
	b _0233EC04 @ case 2
	b _0233EC8C @ case 3
	b _0233ECC0 @ case 4
	b _0233ECC0 @ case 5
	b _0233ECC0 @ case 6
	b _0233ECD4 @ case 7
	b _0233ED08 @ case 8
	b _0233ED28 @ case 9
	b _0233ED5C @ case 10
_0233EAE8:
	mov r0, #0x1c
	mov r1, #0x3880
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r2, #0x324
	ldr r1, [r0]
	str r2, [r1]
	ldr r0, [r0]
	add r0, r0, #0x34
	bl FUN_0205B890
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r2, #2
	ldr r1, [r0]
	strb r2, [r1, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x20
	bl FUN_0205B6EC
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl FUN_02069790
	b _0233F2C4
_0233EB40:
	ldr r1, _0233EE64 @ =0x00003853
	mov r0, #0x1c
	bl FUN_02066468
	ldr r1, _0233EE08 @ =0x02346BC0
	mov r3, #0x324
	ldr r2, [r1]
	mov r0, #1
	str r3, [r2]
	ldr r1, [r1]
	add r1, r1, #0x34
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	mov r4, r0
	mov r0, #0
	mov r2, #7
	mov r1, r0
	strb r2, [r4]
	bl FUN_0205BC30
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, [r0]
	ldrsh r0, [r1, #0xc2]
	cmp r0, #0
	beq _0233EBB0
	add r0, r1, #0xbe
	bl FUN_0205BCC4
	b _0233EBB8
_0233EBB0:
	mov r0, #0
	bl FUN_0205BCC4
_0233EBB8:
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r2, #5
	ldr r1, [r0]
	ldrb r1, [r1, #0xce]
	strb r1, [r4, #0xae]
	ldr r1, [r0]
	strb r2, [r1, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x20
	bl FUN_0205B738
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl FUN_02069790
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #0x324
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233EC04:
	ldr r1, _0233EE68 @ =0x00003891
	mov r0, #0x1c
	bl FUN_02066468
	ldr r1, _0233EE08 @ =0x02346BC0
	mov r3, #0x324
	ldr r2, [r1]
	mov r0, #4
	str r3, [r2]
	ldr r1, [r1]
	add r1, r1, #0x34
	bl FUN_0205BA0C
	ldr r1, _0233EE08 @ =0x02346BC0
	lsl r0, r0, #0x18
	ldr r1, [r1]
	mov r2, #6
	asr r0, r0, #0x18
	strb r2, [r1, #0x20]
	bl FUN_0205B77C
	ldr r1, _0233EE08 @ =0x02346BC0
	mov lr, r0
	ldr r5, [r1]
	mov r4, #0xb
	add ip, r5, #0x20
_0233EC60:
	ldm ip!, {r0, r1, r2, r3}
	stm lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0233EC60
	ldr r2, [r5, #0x34]
	ldr r1, [r5, #0x38]
	add r0, r5, #0x20
	str r2, [r5, #0x100]
	str r1, [r5, #0x104]
	bl FUN_02069790
	b _0233F2C4
_0233EC8C:
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233EE6C @ =0x023467D4
	ldr r3, _0233EE70 @ =0x000038A0
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE0C @ =0x000003F2
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ECC0:
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #0x3f0
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ECD4:
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233EE6C @ =0x023467D4
	ldr r3, _0233EE74 @ =0x000038A5
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE78 @ =0x000003F3
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ED08:
	ldr r1, _0233EE7C @ =0x000038A1
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #0x3f4
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ED28:
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233EE6C @ =0x023467D4
	ldr r3, _0233EE80 @ =0x000038A3
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE84 @ =0x000003F5
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ED5C:
	mov r0, #0x1c
	rsb r1, r0, #0x38c0
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE88 @ =0x000003F6
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233ED7C:
	mov r0, #1
	b _0233F2C8
_0233ED84:
	bl FUN_02066494
	mov r4, r0
	bl FUN_020698B8
	cmp r4, #0x1f
	bne _0233F2C4
	bl FUN_02069904
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233EDDC
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r0, [r0]
	ldrsh r0, [r0, #0xc2]
	cmp r0, #0
	beq _0233EDDC
	ldr r1, _0233EE8C @ =0x00003851
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE90 @ =0x00000355
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233EDDC:
	bl ov03_0233CAB8
	cmp r0, #5
	ldreq r0, _0233EE08 @ =0x02346BC0
	ldreq r1, _0233EE94 @ =0x00000325
	ldreq r0, [r0]
	streq r1, [r0]
	ldrne r0, _0233EE08 @ =0x02346BC0
	movne r1, #0x400
	ldrne r0, [r0]
	strne r1, [r0]
	b _0233F2C4
	.align 2, 0
_0233EE08: .4byte 0x02346BC0
_0233EE0C: .4byte 0x000003F2
_0233EE10: .4byte 0x000003F1
_0233EE14: .4byte 0x00001001
_0233EE18: .4byte 0x00003869
_0233EE1C: .4byte 0x00000302
_0233EE20: .4byte 0x0000384F
_0233EE24: .4byte 0x00003881
_0233EE28: .4byte 0x023467EC
_0233EE2C: .4byte 0x00003850
_0233EE30: .4byte 0x00000303
_0233EE34: .4byte 0x0000388D
_0233EE38: .4byte 0x0000386A
_0233EE3C: .4byte 0x0000388E
_0233EE40: .4byte 0x00000121
_0233EE44: .4byte 0x00003868
_0233EE48: .4byte 0x0000386B
_0233EE4C: .4byte 0x0000388F
_0233EE50: .4byte 0x00000312
_0233EE54: .4byte 0x00000321
_0233EE58: .4byte 0x00000323
_0233EE5C: .4byte 0x02346A64
_0233EE60: .4byte 0x02346A68
_0233EE64: .4byte 0x00003853
_0233EE68: .4byte 0x00003891
_0233EE6C: .4byte 0x023467D4
_0233EE70: .4byte 0x000038A0
_0233EE74: .4byte 0x000038A5
_0233EE78: .4byte 0x000003F3
_0233EE7C: .4byte 0x000038A1
_0233EE80: .4byte 0x000038A3
_0233EE84: .4byte 0x000003F5
_0233EE88: .4byte 0x000003F6
_0233EE8C: .4byte 0x00003851
_0233EE90: .4byte 0x00000355
_0233EE94: .4byte 0x00000325
_0233EE98:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, r4
	ldreq r0, [r0]
	moveq r1, #0x400
	streq r1, [r0]
	b _0233F2C4
_0233EEB4:
	add r0, r2, #0xd4
	bl FUN_0206351C
	mov r1, r4
	ldr r2, [r1]
	mov r3, #2
	strb r3, [r2, #0xd6]
	ldr r1, [r1]
	mov r0, #6
	add r1, r1, #0x34
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	ldrsh ip, [r0, #0xa2]
	add r2, sp, #4
	mov r1, #0
	cmp ip, #0
	beq _0233EF40
	mov r3, r4
	ldr r4, [r3]
	strh ip, [r4, #0xe8]
	ldrh r4, [r0, #0xa0]
	ldr r3, [r3]
	add r0, r0, #4
	strh r4, [r3, #0xe6]
	bl FUN_020630A4
	ldr r0, _0233EE08 @ =0x02346BC0
	ldrsh r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0xea
	bl FUN_0200CF58
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #2
	b _0233EF68
_0233EF40:
	add r0, r0, #4
	bl FUN_020630A4
	mov r0, r4
	ldr r0, [r0]
	ldrsh r1, [sp, #4]
	mov r2, #0
	add r0, r0, #0xe4
	bl FUN_0200CF58
	mov r0, r4
	mov r1, #1
_0233EF68:
	ldr r0, [r0]
	mov r2, #0x10
	str r1, [r0, #0xe0]
	ldr r0, _0233EE08 @ =0x02346BC0
	mov r1, #0
	ldr r3, [r0]
	str r1, [r3, #0xfc]
	ldr r0, [r0]
	add r0, r0, #0xd4
	bl FUN_0203D438
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233F2D0 @ =0x00000326
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233EFA4:
	bl FUN_0203D538
	cmp r0, #1
	bne _0233F2C4
	bl FUN_0203EFD4
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x400
	str r1, [r0]
	b _0233F2C4
_0233EFC8:
	ldr r1, _0233F2D4 @ =0x0000023B
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233F2D8 @ =0x00000401
	ldr r0, [r0]
	str r1, [r0]
_0233EFE4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl FUN_02029F88
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233F2DC @ =0x00000402
	ldr r0, [r0]
	str r1, [r0]
	bl FUN_02003B94
	b _0233F2C4
_0233F018:
	mov r0, #3
	bl FUN_02048F84
	mov r4, r0
	bl FUN_02029FBC
	bl FUN_02003BC8
	cmp r4, #0
	bne _0233F098
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233F04C
	mov r0, #1
	bl ov03_0233CAE8
	b _0233F078
_0233F04C:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233F064
	mov r0, #2
	bl ov03_0233CAE8
	b _0233F078
_0233F064:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _0233F078
	mov r0, #3
	bl ov03_0233CAE8
_0233F078:
	mov r0, #0x1c
	mov r1, #0x23c
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233F2E0 @ =0x00000404
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233F098:
	cmp r4, #1
	moveq r0, #4
	beq _0233F2C8
	ldr r1, _0233F2E4 @ =0x00000239
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233F2E8 @ =0x00000403
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233F0C4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233F114
	bl ov03_0233CFD4
	cmp r0, #0
	mov r0, #0x1c
	beq _0233F0F8
	ldr r1, _0233F2EC @ =0x00003882
	bl FUN_02066468
	b _0233F100
_0233F0F8:
	ldr r1, _0233F2F0 @ =0x00003883
	bl FUN_02066468
_0233F100:
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233F2F4 @ =0x0000032A
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233F114:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233F140
	ldr r1, _0233F2F8 @ =0x00003857
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _0233F2F4 @ =0x0000032A
	ldr r0, [r0]
	str r1, [r0]
	b _0233F2C4
_0233F140:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _0233F2C4
	mov r0, #3
	b _0233F2C8
_0233F154:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	mov r0, #1
	b _0233F2C8
_0233F168:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	mov r0, #3
	b _0233F2C8
_0233F17C:
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233F1AC
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233F2FC @ =0x0234678C
	ldr r3, _0233F300 @ =0x000038A8
	mov r1, r0
	bl FUN_020663C8
	b _0233F200
_0233F1AC:
	cmp r0, #3
	bne _0233F1D8
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233F2FC @ =0x0234678C
	ldr r3, _0233F304 @ =0x000038A9
	mov r1, r0
	bl FUN_020663C8
	b _0233F200
_0233F1D8:
	cmp r0, #5
	bne _0233F200
	mov r0, #0x11
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0233F2FC @ =0x0234678C
	ldr r3, _0233F308 @ =0x000038AA
	mov r1, r0
	bl FUN_020663C8
_0233F200:
	ldr r0, _0233EE08 @ =0x02346BC0
	ldr r1, _0233EE10 @ =0x000003F1
	ldr r0, [r0]
	str r1, [r0]
_0233F210:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x11
	bl FUN_023375D0
	cmp r4, #0x1d
	ldreq r0, _0233EE08 @ =0x02346BC0
	moveq r1, #0x320
	ldreq r0, [r0]
	streq r1, [r0]
	beq _0233F2C4
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _0233F2C4
	mov r0, #1
	b _0233F2C8
_0233F258:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _0233F2C4
	mov r0, #1
	b _0233F2C8
_0233F26C:
	bl FUN_02066494
	b _0233F2C4
_0233F274:
	bl FUN_02066434
	cmp r0, #0x1d
	bne _0233F2A0
	ldr r1, _0233F30C @ =0x02346A6C
	mov r0, #0x1c
	bl FUN_02066478
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x304
	str r1, [r0]
	b _0233F2C4
_0233F2A0:
	sub r0, r0, #0x1e
	cmp r0, #1
	bhi _0233F2C4
	mov r0, #1
	b _0233F2C8
_0233F2B4:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #3
	beq _0233F2C8
_0233F2C4:
	mov r0, #0
_0233F2C8:
	add sp, sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0233F2D0: .4byte 0x00000326
_0233F2D4: .4byte 0x0000023B
_0233F2D8: .4byte 0x00000401
_0233F2DC: .4byte 0x00000402
_0233F2E0: .4byte 0x00000404
_0233F2E4: .4byte 0x00000239
_0233F2E8: .4byte 0x00000403
_0233F2EC: .4byte 0x00003882
_0233F2F0: .4byte 0x00003883
_0233F2F4: .4byte 0x0000032A
_0233F2F8: .4byte 0x00003857
_0233F2FC: .4byte 0x0234678C
_0233F300: .4byte 0x000038A8
_0233F304: .4byte 0x000038A9
_0233F308: .4byte 0x000038AA
_0233F30C: .4byte 0x02346A6C
	arm_func_end ov03_0233DE58

	arm_func_start ov03_0233F310
ov03_0233F310: @ 0x0233F310
	push {r4, lr}
	mov r4, r0
	mov r0, #0x284
	mov r1, #8
	bl FUN_02001170
	ldr r2, _0233F374 @ =0x02346BC4
	mov r1, #0x284
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _0233F374 @ =0x02346BC4
	mov r3, #0xa000
	ldr r1, [r0]
	mov r2, #0
	str r3, [r1]
	ldr r1, [r0]
	strb r4, [r1, #4]
	ldr r3, [r0]
	add r1, r3, #0x47
	bic r1, r1, #0x1f
	str r1, [r3, #0x24]
	ldr r1, [r0]
	strb r2, [r1, #0x281]
	ldr r0, [r0]
	strb r2, [r0, #0x283]
	pop {r4, pc}
	.align 2, 0
_0233F374: .4byte 0x02346BC4
	arm_func_end ov03_0233F310

	arm_func_start ov03_0233F378
ov03_0233F378: @ 0x0233F378
	push {r3, lr}
	ldr r0, _0233F3A0 @ =0x02346BC4
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _0233F3A0 @ =0x02346BC4
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0233F3A0: .4byte 0x02346BC4
	arm_func_end ov03_0233F378

	arm_func_start ov03_0233F3A4
ov03_0233F3A4: @ 0x0233F3A4
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xf4
	ldr r5, _02340318 @ =0x02346BC4
	ldr r3, _0234031C @ =0x00003070
	ldr r4, [r5]
	ldr r0, [r4]
	cmp r0, r3
	bgt _0233F498
	bge _02340230
	ldr r2, _02340320 @ =0x00000603
	cmp r0, r2
	bgt _0233F42C
	bge _0234048C
	cmp r0, #0x500
	bgt _0233F404
	bge _0233FC40
	cmp r0, #2
	bgt _023406AC
	cmp r0, #0
	blt _023406AC
	beq _0233F5A0
	cmp r0, #2
	beq _0233FA18
	b _023406AC
_0233F404:
	ldr r2, _02340324 @ =0x00000502
	cmp r0, r2
	bgt _023406AC
	sub r1, r2, #1
	cmp r0, r1
	blt _023406AC
	beq _0233FDAC
	cmp r0, r2
	beq _023403C8
	b _023406AC
_0233F42C:
	add r1, r2, #6
	cmp r0, r1
	bgt _0233F474
	add r1, r2, #2
	cmp r0, r1
	blt _0233F464
	beq _023404C4
	add r1, r2, #3
	cmp r0, r1
	beq _023405C0
	add r1, r2, #6
	cmp r0, r1
	beq _0234069C
	b _023406AC
_0233F464:
	add r1, r2, #1
	cmp r0, r1
	beq _023404A8
	b _023406AC
_0233F474:
	ldr r1, _02340328 @ =0x00001004
	cmp r0, r1
	bgt _0233F488
	beq _0233FA74
	b _023406AC
_0233F488:
	add r1, r1, #1
	cmp r0, r1
	beq _0233FA94
	b _023406AC
_0233F498:
	ldr r2, _0234032C @ =0x00004001
	cmp r0, r2
	bgt _0233F4E8
	bge _0233FB70
	add r1, r3, #2
	cmp r0, r1
	bgt _0233F4C8
	bge _02340388
	sub r1, r2, #0xf90
	cmp r0, r1
	beq _023402D8
	b _023406AC
_0233F4C8:
	add r1, r3, #3
	cmp r0, r1
	bgt _0233F4DC
	beq _0234039C
	b _023406AC
_0233F4DC:
	cmp r0, #0x4000
	beq _0233FB24
	b _023406AC
_0233F4E8:
	cmp r0, r2, lsl #1
	bgt _0233F500
	bge _023405FC
	cmp r0, #0x8000
	beq _023405E4
	b _023406AC
_0233F500:
	cmp r0, #0xa000
	bgt _0233F510
	beq _0233F520
	b _023406AC
_0233F510:
	add r1, r2, #0x6000
	cmp r0, r1
	beq _0233F578
	b _023406AC
_0233F520:
	bl FUN_0204A1CC
	bl FUN_022BCA80
	mov r4, r0
	bl FUN_022BCCF4
	mov r1, r5
	ldr r1, [r1]
	cmp r4, #3
	strb r0, [r1, #0x280]
	bne _0233F55C
	bl FUN_02339888
	mov r0, r5
	ldr r1, _02340330 @ =0x0000A001
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233F55C:
	mov r0, #1
	bl FUN_022BCBAC
	mov r0, r5
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	b _023406AC
_0233F578:
	bl FUN_023398A4
	cmp r0, #0
	beq _023406AC
	mov r0, #1
	bl FUN_022BCBAC
	mov r0, r5
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	b _023406AC
_0233F5A0:
	bl ov03_0233CAB8
	cmp r0, #1
	beq _0233F5C4
	bl ov03_0233CAB8
	cmp r0, #5
	beq _0233F5C4
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233F684
_0233F5C4:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #1
	strne r0, [r1, #0x1c]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x118
	ldr r0, [r0]
	add r0, r0, #0x68
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x18
	ldr r0, [r0]
	add r0, r0, #0x180
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r3, #0x18
	ldr r1, [r0]
	mov r2, #0x118
	str r3, [r1, #0x1c4]
	ldr r3, [r0]
	mov r4, #0
	add r1, r3, #0x180
	str r1, [r3, #0x1c8]
	ldr r1, [r0]
	ldr r3, _02340334 @ =ov03_023406DC
	str r2, [r1, #0x1cc]
	ldr r5, [r0]
	mov r2, #1
	add r1, r5, #0x68
	str r1, [r5, #0x1d0]
	ldr r1, [r0]
	strb r4, [r1, #0x1d8]
	ldr r1, [r0]
	str r3, [r1, #0x1d4]
	ldr r1, [r0]
	strb r2, [r1, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x184
	bl FUN_02050B10
	bl ov03_0233CAB8
	cmp r0, #1
	ldr r0, _02340318 @ =0x02346BC4
	moveq r1, #0x4000
	ldr r0, [r0]
	movne r1, #0x500
	str r1, [r0]
	b _023406AC
_0233F684:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _0233F898
	mov r0, r5
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x1c]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x118
	ldr r0, [r0]
	add r0, r0, #0x68
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x18
	ldr r0, [r0]
	add r0, r0, #0x180
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r2, #0x118
	ldr r1, [r0]
	mov r4, #0x18
	str r2, [r1, #0x1c4]
	ldr r2, [r0]
	mov r3, #0
	add r1, r2, #0x68
	str r1, [r2, #0x1c8]
	ldr r1, [r0]
	ldr r2, _02340338 @ =0x02337B68
	str r4, [r1, #0x1cc]
	ldr r4, [r0]
	add r1, r4, #0x180
	str r1, [r4, #0x1d0]
	ldr r1, [r0]
	strb r3, [r1, #0x1d8]
	ldr r1, [r0]
	str r2, [r1, #0x1d4]
	ldr r1, [r0]
	strb r3, [r1, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x6c
	bl FUN_02050B10
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	ldrb r0, [r1, #0x6c]
	cmp r0, #0
	bne _0233F748
	add r0, r1, #0x6c
	bl FUN_020250E4
_0233F748:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r0, [r0]
	ldrsb r1, [r0, #4]
	add r0, r0, #0x80
	bl FUN_0205B794
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x24
	ldr r3, [r0]
	ldrb r2, [r3, #0x12e]
	strb r2, [r3, #0x282]
	ldr r0, [r0]
	add r0, r0, #0xb2
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x48
	ldr r0, [r0]
	add r0, r0, #0xd6
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r2, #0x14
	ldr r1, [r0]
	add r0, r1, #0x9d
	add r1, r1, #0x6c
	bl FUN_020032D4
	ldr r1, _02340318 @ =0x02346BC4
	mov r3, #1
	ldr r0, [r1]
	mov r2, #0
	strb r3, [r0, #0x12d]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0x22]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0x20]
	ldr r0, [r1]
	ldr r0, [r0, #0x88]
	bl FUN_0205BD90
	ldr r1, _02340318 @ =0x02346BC4
	ldr r2, [r1]
	strb r0, [r2, #0x12e]
	ldr r0, [r1]
	ldrb r0, [r0, #0x282]
	bl FUN_0205BD40
	cmp r0, #0
	ldrne r0, _02340318 @ =0x02346BC4
	ldrne r1, [r0]
	ldrbne r0, [r1, #0x12e]
	andne r0, r0, #1
	strbne r0, [r1, #0x12e]
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	ldrb r0, [r1, #0x280]
	cmp r0, #0
	beq _0233F874
	add r0, r1, #0x80
	bl FUN_0205B6CC
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0233F874
	mov r0, #0x12
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _0234033C @ =0x023467EC
	ldr r3, _02340340 @ =0x00003850
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233F874:
	ldr r0, _02340318 @ =0x02346BC4
	mov r2, #1
	ldr r3, [r0]
	mov r1, #0
	str r2, [r3, #0x8c]
	ldr r0, _02340328 @ =0x00001004
	str r1, [r3, #0x90]
	str r0, [r3]
	b _023406AC
_0233F898:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233F8B0
	bl ov03_0233CAB8
	cmp r0, #4
	bne _023406AC
_0233F8B0:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x1c]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x118
	ldr r0, [r0]
	add r0, r0, #0x68
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x18
	ldr r0, [r0]
	add r0, r0, #0x180
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r2, #0x118
	ldr r1, [r0]
	mov r4, #0x18
	str r2, [r1, #0x1c4]
	ldr r2, [r0]
	mov r3, #0
	add r1, r2, #0x68
	str r1, [r2, #0x1c8]
	ldr r1, [r0]
	ldr r2, _02340338 @ =0x02337B68
	str r4, [r1, #0x1cc]
	ldr r4, [r0]
	add r1, r4, #0x180
	str r1, [r4, #0x1d0]
	ldr r1, [r0]
	strb r3, [r1, #0x1d8]
	ldr r1, [r0]
	str r2, [r1, #0x1d4]
	ldr r1, [r0]
	strb r3, [r1, #0x20]
	ldr r0, [r0]
	add r0, r0, #0x6c
	bl FUN_02050B10
	ldr r0, _02340318 @ =0x02346BC4
	ldr r0, [r0]
	ldrsb r1, [r0, #4]
	add r0, r0, #0x80
	bl FUN_0205B794
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x24
	ldr r3, [r0]
	ldrb r2, [r3, #0x12e]
	strb r2, [r3, #0x282]
	ldr r0, [r0]
	add r0, r0, #0xb2
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x48
	ldr r0, [r0]
	add r0, r0, #0xd6
	bl FUN_02003250
	ldr r0, _02340318 @ =0x02346BC4
	mov r2, #0x14
	ldr r1, [r0]
	add r0, r1, #0x9d
	add r1, r1, #0x6c
	bl FUN_020032D4
	ldr r1, _02340318 @ =0x02346BC4
	mov r3, #1
	ldr r0, [r1]
	mov r2, #0
	strb r3, [r0, #0x12d]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0x22]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0x20]
	ldr r0, [r1]
	str r3, [r0, #0x8c]
	str r2, [r0, #0x90]
	ldrb r0, [r0, #0x282]
	bl FUN_0205BD40
	cmp r0, #0
	ldrne r0, _02340318 @ =0x02346BC4
	ldrne r1, [r0]
	ldrbne r0, [r1, #0x12e]
	andne r0, r0, #1
	strbne r0, [r1, #0x12e]
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _02340328 @ =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FA18:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x12
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _0233FA60
	mov r0, r5
	ldr r3, [r0]
	mov r2, #1
	mov r1, #0
	str r2, [r3, #0x8c]
	ldr r0, _02340328 @ =0x00001004
	str r1, [r3, #0x90]
	str r0, [r3]
	b _023406AC
_0233FA60:
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _023406AC
	mov r0, #1
	b _023406B0
_0233FA74:
	add r0, r4, #0x80
	add r1, r4, #0x130
	bl ov03_023449C4
	mov r0, r5
	ldr r1, _02340344 @ =0x00001005
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FA94:
	bl ov03_02344AB8
	mvn r1, #0
	cmp r0, r1
	bne _0233FAB0
	bl ov03_02344A58
	mov r0, #1
	b _023406B0
_0233FAB0:
	cmp r0, #2
	bne _0233FAC4
	bl ov03_02344A58
	mov r0, #1
	b _023406B0
_0233FAC4:
	cmp r0, #3
	bne _0233FAD8
	bl ov03_02344A58
	mov r0, #3
	b _023406B0
_0233FAD8:
	cmp r0, #1
	bne _023406AC
	bl ov03_02344AA4
	mov r1, r5
	ldr r1, [r1]
	strb r0, [r1, #0x283]
	bl ov03_02344A90
	mov r1, r5
	ldr r1, [r1]
	strb r0, [r1, #0x17c]
	bl ov03_02344A58
	bl ov03_0233CAB8
	cmp r0, #0
	ldr r0, _02340318 @ =0x02346BC4
	moveq r1, #0x4000
	ldr r0, [r0]
	movne r1, #0x500
	str r1, [r0]
	b _023406AC
_0233FB24:
	bl ov03_0233CAB8
	cmp r0, #0
	ldreq r4, _02340348 @ =0x000038C1
	ldreq r5, _0234034C @ =0x023468A4
	ldrne r4, _02340350 @ =0x000038C5
	ldrne r5, _02340354 @ =0x023468C4
	mov r0, #0x13
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r4
	bl FUN_020663C8
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _0234032C @ =0x00004001
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FB70:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x13
	bl FUN_023375D0
	cmp r4, #0x1b
	bne _0233FBD0
	bl ov03_0233CAB8
	cmp r0, #0
	moveq r0, r5
	ldreq r1, [r0]
	mov r3, #0
	ldrbeq r0, [r1, #0x282]
	andeq r0, r0, #1
	strbeq r0, [r1, #0x12e]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x500
	ldr r2, [r0]
	strb r3, [r2, #0x281]
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FBD0:
	cmp r4, #0x1c
	bne _0233FC10
	bl ov03_0233CAB8
	cmp r0, #0
	moveq r0, r5
	ldreq r1, [r0]
	mov r3, #1
	ldrbeq r0, [r1, #0x282]
	strbeq r0, [r1, #0x12e]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x500
	ldr r2, [r0]
	strb r3, [r2, #0x281]
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FC10:
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _023406AC
	bl ov03_0233CAB8
	cmp r0, #0
	moveq r0, r5
	ldreq r1, _02340328 @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
	beq _023406AC
	mov r0, #1
	b _023406B0
_0233FC40:
	add r5, r4, #0x180
	ldr r6, [r4, #0x24]
	bl ov03_0233CAB8
	cmp r0, #0
	beq _0233FC60
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233FC9C
_0233FC60:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r0, [r0]
	ldrb r0, [r0, #0x281]
	cmp r0, #0
	movne r0, #7
	strbne r0, [r6]
	movne r0, #0
	moveq r0, #1
	strbeq r0, [r6]
	strb r0, [r6, #1]
	mov r0, #2
	strb r0, [r4, #0x68]
	mov r0, #0x11
	strb r0, [r5]
	b _0233FD10
_0233FC9C:
	bl ov03_0233CAB8
	cmp r0, #2
	beq _0233FCB4
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0233FCD8
_0233FCB4:
	mov r0, #2
	strb r0, [r6]
	mov r0, #4
	strb r0, [r4, #0x68]
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0
	strb r0, [r6, #1]
	b _0233FD10
_0233FCD8:
	bl ov03_0233CAB8
	cmp r0, #4
	beq _0233FCF0
	bl ov03_0233CAB8
	cmp r0, #5
	bne _0233FD10
_0233FCF0:
	mov r0, #3
	strb r0, [r6]
	mov r0, #8
	strb r0, [r4, #0x68]
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0
	strb r0, [r6, #1]
_0233FD10:
	bl FUN_020205A0
	strb r0, [r5, #2]
	ldrsb r2, [r5, #2]
	add r0, r4, #0x6c
	mov r1, #0x114
	strb r2, [r4, #0x6a]
	bl FUN_02337B3C
	strb r0, [r4, #0x6b]
	add r0, r5, #4
	mov r1, #0x14
	bl FUN_02337B3C
	ldr r1, _02340318 @ =0x02346BC4
	strb r0, [r5, #3]
	ldr r3, [r1]
	mov r4, #1
	add r0, r3, #0x1c4
	str r0, [sp, #0x34]
	str r4, [sp, #0x30]
	ldr r1, [r3, #0x1c]
	mov r0, #0x20
	str r1, [sp, #0x40]
	ldrb r2, [r3, #0x20]
	mov r1, #0
	strb r2, [sp, #0x44]
	ldr r2, [r3, #0x24]
	str r2, [sp, #0x48]
	strb r1, [sp, #0x4e]
	strh r0, [sp, #0x4c]
	ldrb r0, [r3, #0x281]
	cmp r0, #0
	moveq r4, r1
	add r0, sp, #0x30
	str r4, [sp, #0x50]
	bl FUN_02337BA0
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _02340358 @ =0x00000501
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0233FDAC:
	bl FUN_02337E0C
	movs r6, r0
	beq _023406AC
	mov r0, r5
	ldr r0, [r0]
	add r4, r0, #0x68
	add r5, r0, #0x180
	bl FUN_02337C54
	add r0, sp, #0xa4
	bl FUN_02023690
	add r0, sp, #6
	mov r1, #0x2a
	bl FUN_02003250
	cmp r6, #0xe
	addls pc, pc, r6, lsl #2
	b _023406AC
_0233FDEC: @ jump table
	b _023406AC @ case 0
	b _023401AC @ case 1
	b _023406AC @ case 2
	b _023406AC @ case 3
	b _0233FE28 @ case 4
	b _023401D8 @ case 5
	b _023401D8 @ case 6
	b _023401D8 @ case 7
	b _023401D8 @ case 8
	b _023401D8 @ case 9
	b _023401D8 @ case 10
	b _023401D8 @ case 11
	b _023401D8 @ case 12
	b _023401D8 @ case 13
	b _023401D8 @ case 14
_0233FE28:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r0, [r0]
	ldrb r0, [r0, #0x283]
	cmp r0, #0
	beq _0233FE50
	bl FUN_0204FF80
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x283]
_0233FE50:
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0233FEC4
	bl FUN_020205A0
	ldrsb r1, [r4, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _0233FE80
	add r1, r4, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _0233FE88
_0233FE80:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_0233FE88:
	ldr r1, _02340360 @ =0x0000387F
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
	add r0, r4, #0x2c
	bl FUN_0205B890
	mov r1, #2
	add r0, r4, #0x18
	strb r1, [r4, #0x18]
	bl FUN_0205B6EC
	add r0, r4, #0x18
	bl FUN_02069790
	b _02340198
_0233FEC4:
	bl ov03_0233CAB8
	cmp r0, #0
	bne _0233FF18
	bl FUN_020205A0
	ldrsb r1, [r5, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _0233FEF4
	add r1, r5, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _0233FEFC
_0233FEF4:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_0233FEFC:
	ldr r1, _02340364 @ =0x0000385D
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
	b _02340198
_0233FF18:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0234005C
	mov r5, #0
	bl FUN_020205A0
	ldrsb r1, [r4, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _0233FF4C
	add r1, r4, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _0233FF54
_0233FF4C:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_0233FF54:
	ldr r1, _02340368 @ =0x00003854
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
	add r1, r4, #0x2c
	mov r0, #1
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	mov r1, #7
	strb r1, [r0]
	ldrb r2, [r4, #0xc6]
	mov r1, #5
	strb r2, [r0, #0xae]
	add r0, r4, #0x18
	strb r1, [r4, #0x18]
	bl FUN_0205B738
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsh r0, [r0, #0x22]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0233FFE0
	add r0, r4, #0xb6
	bl FUN_0205BCC4
	mov r0, #0
	mov r1, r0
	bl FUN_0205BC30
	b _02340048
_0233FFE0:
	ldrb r0, [r1, #0x17c]
	cmp r0, #0
	beq _02340034
	add r0, r1, #0x100
	ldrh r1, [r0, #0x30]
	and r1, r1, #1
	strh r1, [r0, #0x30]
	ldrb r0, [r4, #0xc6]
	bl FUN_0205BD5C
	ldr r2, _02340318 @ =0x02346BC4
	mov r1, r0
	ldr r0, [r2]
	add r0, r0, #0x130
	bl FUN_0205BC30
	mov r0, #0
	bl FUN_0205BCC4
	ldr r0, _02340318 @ =0x02346BC4
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsh r5, [r0, #0x38]
	b _02340048
_02340034:
	mov r0, #0
	bl FUN_0205BCC4
	mov r0, #0
	mov r1, r0
	bl FUN_0205BC30
_02340048:
	add r0, r4, #0x18
	bl FUN_02069790
	mov r0, r5
	bl FUN_02069940
	b _02340198
_0234005C:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _023400B0
	bl FUN_020205A0
	ldrsb r1, [r5, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _0234008C
	add r1, r5, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _02340094
_0234008C:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_02340094:
	ldr r1, _0234036C @ =0x0000386C
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
	b _02340198
_023400B0:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _02340148
	bl FUN_020205A0
	ldrsb r1, [r4, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _023400E0
	add r1, r4, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _023400E8
_023400E0:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_023400E8:
	ldr r1, _02340370 @ =0x00003892
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
	add r1, r4, #0x2c
	mov r0, #4
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	mov r1, #6
	asr r0, r0, #0x18
	strb r1, [r4, #0x18]
	bl FUN_0205B77C
	mov ip, r0
	add r6, r4, #0x18
	mov r5, #0xb
_0234012C:
	ldm r6!, {r0, r1, r2, r3}
	stm ip!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0234012C
	add r0, r4, #0x18
	bl FUN_02069790
	b _02340198
_02340148:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _02340198
	bl FUN_020205A0
	ldrsb r1, [r5, #2]
	cmp r1, r0
	add r0, sp, #6
	bne _02340178
	add r1, r5, #4
	mov r2, #0x14
	bl FUN_020251F4
	b _02340180
_02340178:
	ldr r1, _0234035C @ =0x000038C9
	bl FUN_020258B8
_02340180:
	ldr r1, _02340374 @ =0x0000389B
	add r3, sp, #6
	add r2, sp, #0xa4
	mov r0, #0x1c
	str r3, [sp, #0xdc]
	bl FUN_02066488
_02340198:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _02340324 @ =0x00000502
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_023401AC:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _023401C4
	bl ov03_0233CAB8
	cmp r0, #1
	bne _023401D8
_023401C4:
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0x4000
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_023401D8:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _023401FC
	bl ov03_0233CAB8
	cmp r0, #2
	beq _023401FC
	bl ov03_0233CAB8
	cmp r0, #4
	bne _02340228
_023401FC:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsh r0, [r0, #0x22]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrne r0, _0234031C @ =0x00003070
	strne r0, [r1]
	bne _023406AC
_02340228:
	mov r0, #1
	b _023406B0
_02340230:
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, sp, #0x54
	bl FUN_02023690
	mov r0, r5
	ldr r1, [r0]
	ldrb r0, [r1, #0x283]
	cmp r0, #0
	beq _02340280
	add r0, r1, #0x1e
	add r0, r0, #0x100
	mov r1, #0xb4
	mov r2, #0
	bl FUN_0200CF58
	mov r0, r5
	ldr r0, [r0]
	mov r1, #0
	strb r1, [r0, #0x283]
_02340280:
	mov r1, #0
	ldr r0, _02340318 @ =0x02346BC4
	str r1, [sp]
	ldr r0, [r0]
	ldr r2, _02340378 @ =0x02346A84
	add r1, r0, #0x1e
	mov r0, r4
	add r1, r1, #0x100
	mov r3, #1
	bl FUN_0200D310
	ldr r1, _0234037C @ =0x000038A6
	add r2, sp, #0x54
	mov r0, #0x1c
	str r4, [sp, #0x8c]
	bl FUN_02066488
	mov r0, r4
	bl FUN_02001188
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _02340380 @ =0x00003071
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_023402D8:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _023406AC
	mov r0, r5
	ldr r0, [r0]
	add r4, r0, #0x80
	add r0, r4, #0x9e
	bl FUN_020103AC
	mov r1, #0
	strh r1, [r4, #0xa2]
	strh r1, [r4, #0xa0]
	mov r0, r5
	ldr r0, [r0]
	ldr r1, _02340384 @ =0x00003072
	str r1, [r0]
	b _023406AC
	.align 2, 0
_02340318: .4byte 0x02346BC4
_0234031C: .4byte 0x00003070
_02340320: .4byte 0x00000603
_02340324: .4byte 0x00000502
_02340328: .4byte 0x00001004
_0234032C: .4byte 0x00004001
_02340330: .4byte 0x0000A001
_02340334: .4byte ov03_023406DC
_02340338: .4byte 0x02337B68
_0234033C: .4byte 0x023467EC
_02340340: .4byte 0x00003850
_02340344: .4byte 0x00001005
_02340348: .4byte 0x000038C1
_0234034C: .4byte 0x023468A4
_02340350: .4byte 0x000038C5
_02340354: .4byte 0x023468C4
_02340358: .4byte 0x00000501
_0234035C: .4byte 0x000038C9
_02340360: .4byte 0x0000387F
_02340364: .4byte 0x0000385D
_02340368: .4byte 0x00003854
_0234036C: .4byte 0x0000386C
_02340370: .4byte 0x00003892
_02340374: .4byte 0x0000389B
_02340378: .4byte 0x02346A84
_0234037C: .4byte 0x000038A6
_02340380: .4byte 0x00003071
_02340384: .4byte 0x00003072
_02340388:
	mov r0, #0
	str r0, [r4, #0x27c]
	ldr r0, [r5]
	add r1, r3, #3
	str r1, [r0]
_0234039C:
	bl ov03_02340A28
	cmp r0, #1
	moveq r0, #1
	beq _023406B0
	cmp r0, #3
	moveq r0, #3
	beq _023406B0
	cmp r0, #2
	bne _023406AC
	mov r0, #1
	b _023406B0
_023403C8:
	bl FUN_02066494
	mov r4, r0
	bl FUN_020698B8
	cmp r4, #0x1f
	bne _023406AC
	bl FUN_02069904
	bl ov03_0233CAB8
	cmp r0, #3
	bne _02340464
	mov r0, r5
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsh r0, [r0, #0x22]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _02340430
	ldr r1, _023406B8 @ =0x00003851
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _02340320 @ =0x00000603
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_02340430:
	ldrb r0, [r1, #0x17c]
	cmp r0, #0
	moveq r0, #0x8000
	streq r0, [r1]
	beq _023406AC
	ldr r1, _023406BC @ =0x00003852
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _023406C0 @ =0x00000604
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_02340464:
	bl ov03_0233CAB8
	cmp r0, #5
	mov r0, r5
	ldreq r1, _023406C4 @ =0x00000605
	ldreq r0, [r0]
	streq r1, [r0]
	ldrne r0, [r0]
	movne r1, #0x8000
	strne r1, [r0]
	b _023406AC
_0234048C:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, r5
	ldreq r0, [r0]
	moveq r1, #0x8000
	streq r1, [r0]
	b _023406AC
_023404A8:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, r5
	ldreq r0, [r0]
	moveq r1, #0x8000
	streq r1, [r0]
	b _023406AC
_023404C4:
	add r0, r4, #0x198
	bl FUN_0206351C
	mov r1, r5
	ldr r2, [r1]
	mov r3, #2
	strb r3, [r2, #0x19a]
	ldr r1, [r1]
	mov r0, #6
	add r1, r1, #0x94
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	ldrsh r5, [r0, #0xa2]
	add r2, sp, #4
	mov r1, #0
	cmp r5, #0
	beq _0234055C
	ldr r4, _02340318 @ =0x02346BC4
	ldr r3, [r4]
	add r3, r3, #0x100
	strh r5, [r3, #0xac]
	ldrh r5, [r0, #0xa0]
	ldr r3, [r4]
	add r0, r0, #4
	add r3, r3, #0x100
	strh r5, [r3, #0xaa]
	bl FUN_020630A4
	mov r0, r4
	ldr r0, [r0]
	ldrsh r1, [sp, #4]
	add r0, r0, #0xae
	mov r2, #0
	add r0, r0, #0x100
	bl FUN_0200CF58
	mov r0, r4
	mov r1, #2
	b _02340584
_0234055C:
	add r0, r0, #4
	bl FUN_020630A4
	ldr r0, _02340318 @ =0x02346BC4
	ldrsh r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x1a8
	bl FUN_0200CF58
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #1
_02340584:
	ldr r0, [r0]
	mov r2, #0x10
	str r1, [r0, #0x1a4]
	ldr r0, _02340318 @ =0x02346BC4
	mov r1, #0
	ldr r3, [r0]
	str r1, [r3, #0x1c0]
	ldr r0, [r0]
	add r0, r0, #0x198
	bl FUN_0203D438
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _023406C8 @ =0x00000606
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_023405C0:
	bl FUN_0203D538
	cmp r0, #1
	bne _023406AC
	bl FUN_0203EFD4
	mov r0, r5
	ldr r0, [r0]
	mov r1, #0x8000
	str r1, [r0]
	b _023406AC
_023405E4:
	mov r0, #0
	str r0, [r4, #0x27c]
	ldr r0, [r5]
	lsl r1, r2, #1
	str r1, [r0]
	b _023406AC
_023405FC:
	bl ov03_02340A28
	cmp r0, #1
	bne _02340680
	bl ov03_0233CAB8
	cmp r0, #1
	bne _0234064C
	bl ov03_0233CFD4
	cmp r0, #0
	mov r0, #0x1c
	beq _02340630
	ldr r1, _023406CC @ =0x00003882
	bl FUN_02066468
	b _02340638
_02340630:
	ldr r1, _023406D0 @ =0x00003883
	bl FUN_02066468
_02340638:
	ldr r0, _02340318 @ =0x02346BC4
	ldr r1, _023406D4 @ =0x00000609
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_0234064C:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _02340678
	ldr r1, _023406D8 @ =0x00003857
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r5
	ldr r1, _023406D4 @ =0x00000609
	ldr r0, [r0]
	str r1, [r0]
	b _023406AC
_02340678:
	mov r0, #2
	b _023406B0
_02340680:
	cmp r0, #3
	moveq r0, #3
	beq _023406B0
	cmp r0, #2
	bne _023406AC
	mov r0, #1
	b _023406B0
_0234069C:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #2
	beq _023406B0
_023406AC:
	mov r0, #0
_023406B0:
	add sp, sp, #0xf4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_023406B8: .4byte 0x00003851
_023406BC: .4byte 0x00003852
_023406C0: .4byte 0x00000604
_023406C4: .4byte 0x00000605
_023406C8: .4byte 0x00000606
_023406CC: .4byte 0x00003882
_023406D0: .4byte 0x00003883
_023406D4: .4byte 0x00000609
_023406D8: .4byte 0x00003857
	arm_func_end ov03_0233F3A4

	arm_func_start ov03_023406DC
ov03_023406DC: @ 0x023406DC
	push {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl ov03_0233CAB8
	cmp r0, #1
	beq _0234070C
	bl ov03_0233CAB8
	cmp r0, #3
	beq _0234070C
	bl ov03_0233CAB8
	cmp r0, #5
	bne _02340A1C
_0234070C:
	add r0, r4, #4
	mov r1, #0x114
	bl FUN_02337B3C
	ldrb r1, [r4, #3]
	cmp r0, r1
	movne r0, #3
	bne _02340A20
	bl ov03_0233CAB8
	cmp r0, #1
	bne _02340794
	ldrb r0, [r4]
	cmp r0, #2
	mov r0, #2
	bne _02340A20
	add r1, r4, #0x2c
	bl FUN_0205B918
	cmp r0, #0
	bne _0234078C
	add r1, r4, #0x2c
	mov r0, #4
	bl FUN_0205B918
	cmp r0, #0
	bne _0234078C
	add r1, r4, #0x2c
	mov r0, #6
	bl FUN_0205B918
	cmp r0, #0
	bne _0234078C
	add r0, r4, #0x2c
	bl FUN_0205B8CC
	cmp r0, #0
	beq _02340A14
_0234078C:
	mov r0, #4
	b _02340A20
_02340794:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _023408F4
	ldrb r0, [r4]
	cmp r0, #4
	movne r0, #2
	bne _02340A20
	ldrsh r0, [r4, #0xba]
	cmp r0, #0
	beq _0234087C
	ldrsh r0, [r4, #0xba]
	bl FUN_0200EB58
	cmp r0, #0
	beq _023407E0
	add r0, r4, #0x18
	mov r1, #0
	bl FUN_02062E34
	cmp r0, #0
	bne _023407E8
_023407E0:
	mov r0, #6
	b _02340A20
_023407E8:
	ldrsh r0, [r4, #0xba]
	bl FUN_0200E808
	cmp r0, #0xc
	bgt _02340818
	bge _02340850
	cmp r0, #1
	bgt _0234087C
	cmp r0, #0
	blt _0234087C
	cmpne r0, #1
	beq _02340834
	b _0234087C
_02340818:
	cmp r0, #0xe
	bgt _0234087C
	cmp r0, #0xd
	blt _0234087C
	cmpne r0, #0xe
	beq _02340850
	b _0234087C
_02340834:
	ldrh r0, [r4, #0xb8]
	cmp r0, #0
	beq _02340848
	cmp r0, #0x64
	blo _0234087C
_02340848:
	mov r0, #6
	b _02340A20
_02340850:
	ldrsh r0, [r4, #0xb8]
	bl FUN_0200EB58
	cmp r0, #0
	beq _02340874
	add r0, r4, #0x18
	mov r1, #1
	bl FUN_02062E34
	cmp r0, #0
	bne _0234087C
_02340874:
	mov r0, #6
	b _02340A20
_0234087C:
	ldrb r0, [r4, #0x114]
	cmp r0, #0
	beq _023408D8
	ldrsh r0, [r4, #0xd0]
	bl FUN_02062B64
	cmp r0, #0
	bne _023408D0
	ldrb r0, [r4, #0xc6]
	ldrsh r1, [r4, #0xd0]
	add r2, r4, #0xf2
	bl FUN_0205C700
	cmp r0, #0
	beq _023408D0
	ldrb r0, [r4, #0xcc]
	cmp r0, #1
	blo _023408D0
	cmp r0, #0x64
	bhi _023408D0
	ldrb r0, [r4, #0xec]
	cmp r0, #0xb
	blo _023408D8
_023408D0:
	mov r0, #6
	b _02340A20
_023408D8:
	add r1, r4, #0x2c
	mov r0, #1
	bl FUN_0205B918
	cmp r0, #0
	bne _02340A14
	mov r0, #5
	b _02340A20
_023408F4:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _02340A14
	ldrb r0, [r4]
	cmp r0, #8
	movne r0, #2
	bne _02340A20
	ldrsh r0, [r4, #0xba]
	cmp r0, #0
	beq _023409DC
	ldrsh r0, [r4, #0xba]
	bl FUN_0200EB58
	cmp r0, #0
	beq _02340940
	add r0, r4, #0x18
	mov r1, #0
	bl FUN_02062E34
	cmp r0, #0
	bne _02340948
_02340940:
	mov r0, #6
	b _02340A20
_02340948:
	ldrsh r0, [r4, #0xba]
	bl FUN_0200E808
	cmp r0, #0xc
	bgt _02340978
	bge _023409B0
	cmp r0, #1
	bgt _023409DC
	cmp r0, #0
	blt _023409DC
	cmpne r0, #1
	beq _02340994
	b _023409DC
_02340978:
	cmp r0, #0xe
	bgt _023409DC
	cmp r0, #0xd
	blt _023409DC
	cmpne r0, #0xe
	beq _023409B0
	b _023409DC
_02340994:
	ldrh r0, [r4, #0xb8]
	cmp r0, #0
	beq _023409A8
	cmp r0, #0x64
	blo _023409DC
_023409A8:
	mov r0, #6
	b _02340A20
_023409B0:
	ldrsh r0, [r4, #0xb8]
	bl FUN_0200EB58
	cmp r0, #0
	beq _023409D4
	add r0, r4, #0x18
	mov r1, #1
	bl FUN_02062E34
	cmp r0, #0
	bne _023409DC
_023409D4:
	mov r0, #6
	b _02340A20
_023409DC:
	add r0, sp, #0
	bl FUN_0205B584
	add r1, r4, #0x2c
	mov r0, #4
	bl FUN_0205B918
	cmp r0, #0
	beq _02340A0C
	add r1, sp, #0
	add r0, r4, #0xbc
	bl FUN_0205B554
	cmp r0, #0
	bne _02340A14
_02340A0C:
	mov r0, #5
	b _02340A20
_02340A14:
	mov r0, #1
	b _02340A20
_02340A1C:
	mov r0, #0
_02340A20:
	add sp, sp, #8
	pop {r4, pc}
	arm_func_end ov03_023406DC

	arm_func_start ov03_02340A28
ov03_02340A28: @ 0x02340A28
	push {r3, r4, r5, lr}
	ldr r0, _02340B1C @ =0x02346BC4
	ldr r4, [r0]
	ldr r0, [r4, #0x27c]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02340B14
_02340A44: @ jump table
	b _02340A58 @ case 0
	b _02340A6C @ case 1
	b _02340A98 @ case 2
	b _02340AF0 @ case 3
	b _02340B04 @ case 4
_02340A58:
	ldr r1, _02340B20 @ =0x0000023B
	mov r0, #0
	bl FUN_02066468
	mov r0, #1
	str r0, [r4, #0x27c]
_02340A6C:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02340B14
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl FUN_02029F88
	mov r0, #2
	str r0, [r4, #0x27c]
	bl FUN_02003B94
	b _02340B14
_02340A98:
	mov r0, #3
	bl FUN_02048F84
	mov r5, r0
	bl FUN_02003BC8
	bl FUN_02029FBC
	cmp r5, #0
	bne _02340ACC
	mov r0, #0x1c
	mov r1, #0x23c
	bl FUN_02066468
	mov r0, #3
	str r0, [r4, #0x27c]
	b _02340B14
_02340ACC:
	cmp r5, #1
	moveq r0, #3
	popeq {r3, r4, r5, pc}
	ldr r1, _02340B24 @ =0x00000239
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, #4
	str r0, [r4, #0x27c]
	b _02340B14
_02340AF0:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02340B14
	mov r0, #1
	pop {r3, r4, r5, pc}
_02340B04:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #2
	popeq {r3, r4, r5, pc}
_02340B14:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02340B1C: .4byte 0x02346BC4
_02340B20: .4byte 0x0000023B
_02340B24: .4byte 0x00000239
	arm_func_end ov03_02340A28

	arm_func_start ov03_02340B28
ov03_02340B28: @ 0x02340B28
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, _02340C94 @ =0x00001AEC
	mov r1, #8
	bl FUN_02001170
	ldr r2, _02340C98 @ =0x02346BC8
	ldr r1, _02340C94 @ =0x00001AEC
	str r0, [r2]
	bl FUN_02003250
	ldr r1, _02340C98 @ =0x02346BC8
	mov r3, #0
	ldr r0, [r1]
	sub r2, r3, #2
	str r3, [r0]
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r4, [r0, #0x610]
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r3, [r0, #0x660]
	ldr r0, [r1]
	str r3, [r0, #8]
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r2, [r0, #0x661]
	bl ov03_0233CAB8
	cmp r0, #5
	bne _02340C04
	mov r4, #0
	ldr r7, _02340C98 @ =0x02346BC8
	mov r5, r4
	mov r6, #0xb0
_02340BA8:
	lsl r0, r4, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	ldrb r1, [r0]
	cmp r1, #4
	bne _02340BE8
	bl FUN_0205B6CC
	cmp r0, #0
	beq _02340BE8
	ldr r0, [r7]
	lsl r1, r4, #0x18
	add r0, r0, #0x10
	mla r0, r5, r6, r0
	asr r1, r1, #0x18
	bl FUN_0205B794
	add r5, r5, #1
_02340BE8:
	add r4, r4, #1
	cmp r4, #0x20
	blt _02340BA8
	ldr r0, _02340C98 @ =0x02346BC8
	ldr r0, [r0]
	str r5, [r0, #0xc]
	b _02340C30
_02340C04:
	ldr r0, _02340C98 @ =0x02346BC8
	mov r2, #1
	ldr r1, [r0]
	cmp r4, #0
	str r2, [r1, #0xc]
	blt _02340C30
	ldr r2, [r0]
	add r0, r2, #0x1600
	ldrsb r1, [r0, #0x10]
	add r0, r2, #0x10
	bl FUN_0205B794
_02340C30:
	ldr r2, _02340C98 @ =0x02346BC8
	mov r0, #0
	ldr r1, [r2]
	add r1, r1, #0x1000
	strb r0, [r1, #0xae9]
	ldr r1, [r2]
	add r1, r1, #0x1000
	ldrb r3, [r1, #0xae9]
	strb r3, [r1, #0xaea]
	ldr r1, [r2]
	add r1, r1, #0x1000
	strb r0, [r1, #0x9dc]
	ldr r4, [r2]
	add r1, r4, #0x338
	add r1, r1, #0x1400
	add r1, r1, #0x1f
	bic r3, r1, #0x1f
	add r1, r4, #0x1000
	str r3, [r1, #0x958]
	ldr r1, [r2]
	str r0, [r1, #4]
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #0xae4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02340C94: .4byte 0x00001AEC
_02340C98: .4byte 0x02346BC8
	arm_func_end ov03_02340B28

	arm_func_start ov03_02340C9C
ov03_02340C9C: @ 0x02340C9C
	push {r3, lr}
	ldr r0, _02340CD4 @ =0x02346BC8
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #1
	bl FUN_022BCBAC
	ldr r0, _02340CD4 @ =0x02346BC8
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02340CD4 @ =0x02346BC8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02340CD4: .4byte 0x02346BC8
	arm_func_end ov03_02340C9C

	arm_func_start ov03_02340CD8
ov03_02340CD8: @ 0x02340CD8
	push {r3, lr}
	ldr r0, _02340DAC @ =0x02346BC8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02340D5C
	bl ov03_02340DB4
	cmp r0, #1
	bne _02340D28
	bl FUN_022BD274
	cmp r0, #0
	beq _02340D20
	ldr r0, _02340DAC @ =0x02346BC8
	mov r1, #0xf000
	ldr r0, [r0]
	str r1, [r0, #4]
	bl FUN_0233769C
	b _02340DA4
_02340D20:
	mov r0, #1
	pop {r3, pc}
_02340D28:
	cmp r0, #2
	popne {r3, pc}
	bl FUN_022BD274
	cmp r0, #0
	beq _02340D54
	ldr r0, _02340DAC @ =0x02346BC8
	ldr r1, _02340DB0 @ =0x0000F001
	ldr r0, [r0]
	str r1, [r0, #4]
	bl FUN_0233769C
	b _02340DA4
_02340D54:
	mov r0, #2
	pop {r3, pc}
_02340D5C:
	bl FUN_02337718
	cmp r0, #1
	cmpne r0, #3
	bne _02340D90
	bl FUN_023376DC
	ldr r1, _02340DAC @ =0x02346BC8
	ldr r0, _02340DB0 @ =0x0000F001
	ldr r1, [r1]
	ldr r1, [r1, #4]
	cmp r1, r0
	moveq r0, #2
	movne r0, #1
	pop {r3, pc}
_02340D90:
	cmp r0, #2
	bne _02340DA4
	bl FUN_023376DC
	mov r0, #4
	pop {r3, pc}
_02340DA4:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02340DAC: .4byte 0x02346BC8
_02340DB0: .4byte 0x0000F001
	arm_func_end ov03_02340CD8

	arm_func_start ov03_02340DB4
ov03_02340DB4: @ 0x02340DB4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x310
	ldr r4, _02341D00 @ =0x02346BC8
	ldr r1, _02341D04 @ =0x00005011
	ldr r5, [r4]
	ldr r2, [r5]
	cmp r2, r1
	bgt _02340FA4
	bge _02343720
	ldr r3, _02341D08 @ =0x00004002
	cmp r2, r3
	bgt _02340EC0
	bge _02341A38
	ldr r1, _02341D0C @ =0x00003070
	cmp r2, r1
	bgt _02340E7C
	bge _02341920
	ldr r1, _02341D10 @ =0x00001001
	cmp r2, r1
	bgt _02340E30
	bge _02341518
	cmp r2, #2
	bgt _02344184
	cmp r2, #0
	blt _02344184
	beq _02341134
	cmp r2, #1
	beq _0234116C
	cmp r2, #2
	beq _02341188
	b _02344184
_02340E30:
	add r0, r1, #1
	cmp r2, r0
	bgt _02340E44
	beq _02341704
	b _02344184
_02340E44:
	add r0, r1, #4
	cmp r2, r0
	bgt _02344184
	add r0, r1, #2
	cmp r2, r0
	blt _02344184
	beq _0234174C
	add r0, r1, #3
	cmp r2, r0
	beq _023417B0
	add r0, r1, #4
	cmp r2, r0
	beq _0234180C
	b _02344184
_02340E7C:
	add r0, r1, #2
	cmp r2, r0
	bgt _02340E9C
	bge _023419E0
	add r0, r1, #1
	cmp r2, r0
	beq _023419AC
	b _02344184
_02340E9C:
	add r0, r1, #3
	cmp r2, r0
	bgt _02340EB0
	beq _023419F4
	b _02344184
_02340EB0:
	sub r0, r3, #1
	cmp r2, r0
	beq _02341A20
	b _02344184
_02340EC0:
	sub r0, r1, #0xe
	cmp r2, r0
	bgt _02340F4C
	bge _023431EC
	add r0, r3, #2
	cmp r2, r0
	bgt _02340EF0
	bge _02341C88
	add r0, r3, #1
	cmp r2, r0
	beq _02341B80
	b _02344184
_02340EF0:
	add r0, r3, #0xe
	cmp r2, r0
	bgt _02340F3C
	add r0, r3, #3
	subs r0, r2, r0
	addpl pc, pc, r0, lsl #2
	b _02344184
_02340F0C: @ jump table
	b _023421F4 @ case 0
	b _0234258C @ case 1
	b _023427CC @ case 2
	b _023428C0 @ case 3
	b _02344184 @ case 4
	b _02344184 @ case 5
	b _02344184 @ case 6
	b _02344184 @ case 7
	b _02344184 @ case 8
	b _02344184 @ case 9
	b _02344184 @ case 10
	b _0234290C @ case 11
_02340F3C:
	ldr r0, _02341D14 @ =0x00005001
	cmp r2, r0
	beq _02342EFC
	b _02344184
_02340F4C:
	sub r0, r1, #0xa
	cmp r2, r0
	bgt _02340F80
	bge _0234338C
	sub r0, r1, #0xd
	cmp r2, r0
	bgt _02340F70
	beq _0234321C
	b _02344184
_02340F70:
	sub r0, r1, #0xb
	cmp r2, r0
	beq _02343368
	b _02344184
_02340F80:
	sub r0, r1, #9
	cmp r2, r0
	bgt _02340F94
	beq _023435FC
	b _02344184
_02340F94:
	sub r0, r1, #1
	cmp r2, r0
	beq _02343678
	b _02344184
_02340FA4:
	ldr r0, _02341D18 @ =0x00006002
	cmp r2, r0
	bgt _02341084
	bge _02343DA4
	add r3, r1, #0xf8
	cmp r2, r3
	bgt _02341038
	bge _02343540
	sub r3, r0, #0xfb0
	cmp r2, r3
	bgt _02341014
	bge _02343074
	add r3, r1, #5
	cmp r2, r3
	bgt _02344184
	sub r3, r0, #0xff0
	cmp r2, r3
	blt _02344184
	sub r0, r0, #0xff0
	cmp r2, r0
	beq _02343920
	add r0, r1, #2
	cmp r2, r0
	beq _02343AC4
	add r0, r1, #5
	cmp r2, r0
	beq _023432F4
	b _02344184
_02341014:
	add r0, r1, #0x42
	cmp r2, r0
	bgt _02341028
	beq _0234319C
	b _02344184
_02341028:
	add r0, r1, #0xf7
	cmp r2, r0
	beq _023433E4
	b _02344184
_02341038:
	sub r3, r0, #0xef0
	cmp r2, r3
	bgt _02341060
	sub r0, r0, #0xef0
	cmp r2, r0
	bge _02343778
	add r0, r1, #0xff
	cmp r2, r0
	beq _023435D0
	b _02344184
_02341060:
	ldr r1, _02341D1C @ =0x0000511A
	cmp r2, r1
	bgt _02341074
	beq _023437E0
	b _02344184
_02341074:
	sub r0, r0, #1
	cmp r2, r0
	beq _02343D88
	b _02344184
_02341084:
	ldr r3, _02341D20 @ =0x00007001
	cmp r2, r3
	bgt _023410DC
	bge _023440F4
	add r1, r0, #3
	cmp r2, r1
	bgt _023410B4
	bge _02343DEC
	add r0, r0, #2
	cmp r2, r0
	beq _02343DC0
	b _02344184
_023410B4:
	add r1, r0, #4
	cmp r2, r1
	bgt _023410D0
	add r0, r0, #4
	cmp r2, r0
	beq _02343F08
	b _02344184
_023410D0:
	cmp r2, #0x7000
	beq _023440E0
	b _02344184
_023410DC:
	add r1, r0, #0x2000
	cmp r2, r1
	bgt _02341114
	add r0, r0, #0x2000
	cmp r2, r0
	bge _02343C14
	add r0, r3, #1
	cmp r2, r0
	bgt _02341108
	beq _02344108
	b _02344184
_02341108:
	cmp r2, #0x8000
	beq _02343BFC
	b _02344184
_02341114:
	cmp r2, #0xe000
	bgt _02341124
	beq _0234411C
	b _02344184
_02341124:
	add r0, r3, #0x7000
	cmp r2, r0
	beq _02344130
	b _02344184
_02341134:
	bl FUN_0204A1CC
	bl FUN_022BCA80
	cmp r0, #3
	movne r0, r4
	ldrne r0, [r0]
	movne r1, #2
	strne r1, [r0]
	bne _02344184
	bl FUN_02339888
	mov r0, r4
	ldr r0, [r0]
	mov r1, #1
	str r1, [r0]
	b _02344184
_0234116C:
	bl FUN_023398A4
	cmp r0, #0
	movne r0, r4
	ldrne r0, [r0]
	movne r1, #2
	strne r1, [r0]
	b _02344184
_02341188:
	bl ov03_0233CAB8
	cmp r0, #1
	bne _02341224
	bl ov03_023441A0
	bl FUN_022BD338
	cmp r0, #0
	beq _023411B0
	bl FUN_022BCCF4
	cmp r0, #0
	bne _023411C4
_023411B0:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x700]
_023411C4:
	mov r0, #0x14
	bl FUN_023375C0
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02341D24 @ =0x023469A8
	ldr r2, [r1]
	ldr r4, [r3, r0, lsl #3]
	add r0, r2, #0x1000
	ldr r3, _02341D28 @ =0x023469A4
	str r4, [r0, #0x668]
	mov r0, #0
	ldr r2, _02341D2C @ =0x00003879
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1]
	ldr r2, _02341D30 @ =0x00000233
	add r3, r1, #0x268
	mov r1, r0
	add r3, r3, #0x1400
	bl FUN_020663DC
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D14 @ =0x00005001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341224:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _0234129C
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	bne _02341260
	ldr r1, _02341D34 @ =0x00003858
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x7000
	str r1, [r0]
	b _02344184
_02341260:
	bl FUN_022BCCF4
	cmp r0, #0
	movne r0, r4
	ldrne r1, _02341D38 @ =0x00004001
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
	ldr r1, _02341D3C @ =0x00003859
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x7000
	str r1, [r0]
	b _02344184
_0234129C:
	bl ov03_0233CAB8
	cmp r0, #5
	bne _02341318
	mov r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bgt _023412DC
	ldr r1, _02341D40 @ =0x00003895
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x7000
	str r1, [r0]
	b _02344184
_023412DC:
	bl FUN_022BCCF4
	cmp r0, #0
	movne r0, r4
	ldrne r1, _02341D38 @ =0x00004001
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
	ldr r1, _02341D44 @ =0x00003896
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x7000
	str r1, [r0]
	b _02344184
_02341318:
	bl ov03_0233CAB8
	cmp r0, #0
	bne _023413D8
	add r0, r5, #0x42
	mov r1, #0x24
	bl FUN_02003250
	add r0, r5, #0x66
	mov r1, #0x48
	bl FUN_02003250
	mov r0, #0
	strh r0, [r5, #0xb2]
	strh r0, [r5, #0xb0]
	bl ov03_023441A0
	bl FUN_022BD338
	cmp r0, #0
	beq _02341364
	bl FUN_022BCCF4
	cmp r0, #0
	bne _02341378
_02341364:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #3
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x700]
_02341378:
	mov r0, #0x15
	bl FUN_023375C0
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02341D48 @ =0x02346848
	ldr r2, [r1]
	ldr r4, [r3, r0, lsl #3]
	add r0, r2, #0x1000
	ldr r3, _02341D4C @ =0x02346844
	str r4, [r0, #0x668]
	mov r0, #0
	ldr r2, _02341D50 @ =0x0000385E
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1]
	ldr r2, _02341D30 @ =0x00000233
	add r3, r1, #0x268
	mov r1, r0
	add r3, r3, #0x1400
	bl FUN_020663DC
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D10 @ =0x00001001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023413D8:
	bl ov03_0233CAB8
	cmp r0, #2
	bne _02341478
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	bne _02341414
	ldr r1, _02341D54 @ =0x0000386F
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341D20 @ =0x00007001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341414:
	bl FUN_022BCCF4
	cmp r0, #0
	bne _02341440
	ldr r1, _02341D58 @ =0x00003870
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341D20 @ =0x00007001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341440:
	add r0, r5, #0x42
	mov r1, #0x24
	bl FUN_02003250
	add r0, r5, #0x66
	mov r1, #0x48
	bl FUN_02003250
	mov r1, #0
	strh r1, [r5, #0xb2]
	strh r1, [r5, #0xb0]
	mov r0, r4
	ldr r0, [r0]
	ldr r1, _02341D5C @ =0x00001004
	str r1, [r0]
	b _02344184
_02341478:
	bl ov03_0233CAB8
	cmp r0, #4
	bne _02344184
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	bne _023414B4
	mov r0, #0x1c
	add r1, r0, #0x3880
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341D20 @ =0x00007001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023414B4:
	bl FUN_022BCCF4
	cmp r0, #0
	bne _023414E0
	ldr r1, _02341D60 @ =0x0000389D
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341D20 @ =0x00007001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023414E0:
	add r0, r5, #0x42
	mov r1, #0x24
	bl FUN_02003250
	add r0, r5, #0x66
	mov r1, #0x48
	bl FUN_02003250
	mov r1, #0
	strh r1, [r5, #0xb2]
	strh r1, [r5, #0xb0]
	mov r0, r4
	ldr r0, [r0]
	ldr r1, _02341D5C @ =0x00001004
	str r1, [r0]
	b _02344184
_02341518:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x15
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02341614
	bl FUN_022BCCF4
	cmp r0, #0
	beq _02341580
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	ldrbne r0, [r5, #0xbd]
	cmpne r0, #0
	beq _02341580
	ldr r1, _02341D64 @ =0x00003860
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #0x7000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341580:
	bl FUN_022BCCF4
	cmp r0, #0
	beq _023415F0
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	beq _023415F0
	ldrb r0, [r5, #0xbd]
	cmp r0, #0
	bne _023415F0
	ldr r0, _02341D00 @ =0x02346BC8
	mov r2, #1
	ldr r1, [r0]
	mov r0, #0x16
	add r1, r1, #0x1000
	strb r2, [r1, #0xae9]
	bl FUN_023375C0
	str r0, [sp]
	ldr r2, _02341D68 @ =0x0234675C
	ldr r3, _02341D6C @ =0x00003861
	mov r0, #0
	mov r1, #8
	bl FUN_020663C8
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D70 @ =0x00001002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023415F0:
	ldr r1, _02341D00 @ =0x02346BC8
	mov r3, #1
	ldr r0, [r1]
	ldr r2, _02341D5C @ =0x00001004
	add r0, r0, #0x1000
	strb r3, [r0, #0xae9]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02341614:
	cmp r4, #0x1e
	bne _023416F4
	bl FUN_022BCCF4
	cmp r0, #0
	beq _02341664
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	beq _02341664
	ldrb r0, [r5, #0xbd]
	cmp r0, #0
	bne _02341664
	ldr r1, _02341D74 @ =0x00003863
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #0x7000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341664:
	bl FUN_022BCCF4
	cmp r0, #0
	beq _023416D0
	add r0, r5, #0x10
	bl FUN_0205B6CC
	cmp r0, #0
	ldrbne r0, [r5, #0xbd]
	cmpne r0, #0
	beq _023416D0
	ldr r0, _02341D00 @ =0x02346BC8
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x16
	add r1, r1, #0x1000
	strb r2, [r1, #0xae9]
	bl FUN_023375C0
	str r0, [sp]
	ldr r2, _02341D68 @ =0x0234675C
	ldr r3, _02341D78 @ =0x00003864
	mov r0, #0
	mov r1, #8
	bl FUN_020663C8
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D70 @ =0x00001002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023416D0:
	ldr r1, _02341D00 @ =0x02346BC8
	mov r3, #0
	ldr r0, [r1]
	ldr r2, _02341D5C @ =0x00001004
	add r0, r0, #0x1000
	strb r3, [r0, #0xae9]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_023416F4:
	cmp r4, #0x1f
	bne _02344184
	mov r0, #1
	b _02344188
_02341704:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x16
	bl FUN_023375D0
	cmp r4, #0x1d
	ldreq r0, _02341D00 @ =0x02346BC8
	ldreq r1, _02341D5C @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
	beq _02344184
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _02344184
	mov r0, #1
	b _02344188
_0234174C:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x1a
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02341794
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r2, _02341D38 @ =0x00004001
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae9]
	strb r0, [r5, #0xbd]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02341794:
	sub r0, r4, #0x1e
	cmp r0, #1
	ldrls r0, _02341D00 @ =0x02346BC8
	ldrls r1, _02341D5C @ =0x00001004
	ldrls r0, [r0]
	strls r1, [r0]
	b _02344184
_023417B0:
	bl ov03_0233CAB8
	cmp r0, #0
	bne _023417E0
	mov r1, r4
	ldr r0, [r1]
	ldrb r2, [r5, #0xbd]
	add r0, r0, #0x1000
	strb r2, [r0, #0xaea]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae9]
	strb r0, [r5, #0xbd]
_023417E0:
	ldr r1, _02341D00 @ =0x02346BC8
	add r0, r5, #0x10
	ldr r1, [r1]
	add r1, r1, #0x214
	add r1, r1, #0x1400
	bl ov03_023449C4
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D7C @ =0x00001005
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_0234180C:
	bl ov03_02344AB8
	movs r4, r0
	beq _02344184
	bl ov03_0233CAB8
	cmp r0, #0
	ldreq r0, _02341D00 @ =0x02346BC8
	ldreq r0, [r0]
	addeq r0, r0, #0x1000
	ldrbeq r0, [r0, #0xaea]
	strbeq r0, [r5, #0xbd]
	mvn r0, #0
	cmp r4, r0
	bne _02341868
	bl ov03_02344A58
	bl ov03_0233CAB8
	cmp r0, #0
	ldreq r0, _02341D00 @ =0x02346BC8
	moveq r1, #2
	ldreq r0, [r0]
	streq r1, [r0]
	beq _02344184
	mov r0, #1
	b _02344188
_02341868:
	cmp r4, #2
	bne _0234187C
	bl ov03_02344A58
	mov r0, #2
	b _02344188
_0234187C:
	cmp r4, #3
	bne _02341890
	bl ov03_02344A58
	mov r0, #4
	b _02344188
_02341890:
	cmp r4, #1
	bne _02344184
	bl ov03_02344A90
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0x660]
	bl ov03_02344AA4
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r0, [r1, #0xae8]
	bl ov03_02344A58
	bl ov03_0233CAB8
	cmp r0, #0
	beq _023418EC
	cmp r0, #2
	cmpne r0, #4
	ldreq r0, _02341D00 @ =0x02346BC8
	ldreq r1, _02341D38 @ =0x00004001
	ldreq r0, [r0]
	streq r1, [r0]
	b _02344184
_023418EC:
	mov r0, #0x1a
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02341D68 @ =0x0234675C
	ldr r3, _02341D80 @ =0x00003865
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D84 @ =0x00001003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341920:
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r6, r0
	add r0, sp, #0x2c0
	bl FUN_02023690
	mov r0, r4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae8]
	cmp r0, #0
	beq _02341960
	add r0, r5, #0xae
	mov r1, #0xb4
	mov r2, #0
	bl FUN_0200CF58
_02341960:
	ldr r2, _02341D88 @ =0x02346A90
	mov r4, #0
	mov r0, r6
	add r1, r5, #0xae
	mov r3, #1
	str r4, [sp]
	bl FUN_0200D310
	ldr r1, _02341D8C @ =0x000038A6
	add r2, sp, #0x2c0
	mov r0, #0x1c
	str r6, [sp, #0x2f8]
	bl FUN_02066488
	mov r0, r6
	bl FUN_02001188
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D90 @ =0x00003071
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023419AC:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344184
	add r0, r5, #0xae
	bl FUN_020103AC
	mov r1, #0
	strh r1, [r5, #0xb2]
	strh r1, [r5, #0xb0]
	mov r0, r4
	ldr r0, [r0]
	ldr r1, _02341D94 @ =0x00003072
	str r1, [r0]
	b _02344184
_023419E0:
	bl ov03_023442D0
	mov r0, r4
	ldr r1, _02341D98 @ =0x00003073
	ldr r0, [r0]
	str r1, [r0]
_023419F4:
	bl ov03_02344300
	cmp r0, #1
	moveq r0, #1
	beq _02344188
	cmp r0, #3
	moveq r0, #4
	beq _02344188
	cmp r0, #2
	bne _02344184
	mov r0, #1
	b _02344188
_02341A20:
	bl FUN_02338A24
	mov r0, r4
	ldr r1, _02341D08 @ =0x00004002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341A38:
	bl FUN_02338EC4
	cmp r0, #1
	beq _02341B40
	cmp r0, #4
	beq _02341A58
	cmp r0, #8
	beq _02341B40
	b _02344184
_02341A58:
	bl ov03_0233CAB8
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02344184
_02341A68: @ jump table
	b _02341A80 @ case 0
	b _02341AE0 @ case 1
	b _02341AA0 @ case 2
	b _02341B00 @ case 3
	b _02341AC0 @ case 4
	b _02341B20 @ case 5
_02341A80:
	ldr r1, _02341D9C @ =0x00003866
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341AA0:
	ldr r1, _02341DA4 @ =0x00003873
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341AC0:
	ldr r1, _02341DA8 @ =0x0000389E
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341AE0:
	ldr r1, _02341DAC @ =0x00003884
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341B00:
	ldr r1, _02341DB0 @ =0x0000385A
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341B20:
	ldr r1, _02341DB4 @ =0x00003897
	mov r0, #0
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02341DA0 @ =0x00004003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341B40:
	bl FUN_02338B08
	bl ov03_0233CAB8
	cmp r0, #2
	beq _02341B5C
	bl ov03_0233CAB8
	cmp r0, #4
	bne _02341B78
_02341B5C:
	ldrsh r0, [r5, #0xb2]
	cmp r0, #0
	ldrne r0, _02341D00 @ =0x02346BC8
	ldrne r1, _02341D0C @ =0x00003070
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
_02341B78:
	mov r0, #1
	b _02344188
_02341B80:
	bl FUN_02066494
	mov r4, r0
	bl FUN_02338EC4
	cmp r0, #5
	bne _02341BB0
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DB8 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341BB0:
	cmp r4, #0x1f
	bne _02344184
	ldrb r0, [r5, #0xbd]
	cmp r0, #0
	beq _02341C08
	bl ov03_0233CAB8
	cmp r0, #0
	bne _02341C08
	bl FUN_022BD338
	cmp r0, #0
	beq _02341BE8
	bl FUN_022BCCF4
	cmp r0, #0
	bne _02341C08
_02341BE8:
	mov r0, #0x13
	mov r1, #6
	bl FUN_023398B0
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DB8 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341C08:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _02341C24
	cmp r0, #2
	cmpne r0, #4
	beq _02341C2C
	b _02341C3C
_02341C24:
	ldrb r2, [r5, #0xbe]
	b _02341C44
_02341C2C:
	ldr r0, [r5, #0x18]
	bl FUN_0205BD90
	mov r2, r0
	b _02341C44
_02341C3C:
	bl FUN_0205BD78
	mov r2, r0
_02341C44:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x958]
	bl FUN_0232C5C8
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DBC @ =0x00004004
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341C88:
	bl FUN_02338EC4
	cmp r0, #4
	bne _023421A8
	bl ov03_0233CAB8
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02344184
_02341CA4: @ jump table
	b _02341CBC @ case 0
	b _02341F9C @ case 1
	b _02341DC4 @ case 2
	b _0234210C @ case 3
	b _02341EFC @ case 4
	b _02342154 @ case 5
_02341CBC:
	mov r0, r4
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x958]
	add r1, r1, #0x10
	bl FUN_0232C8E8
	mov r1, r4
	ldr r1, [r1]
	mov r0, #1
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	mov r0, r4
	ldr r1, _02341DC0 @ =0x00004006
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
	.align 2, 0
_02341D00: .4byte 0x02346BC8
_02341D04: .4byte 0x00005011
_02341D08: .4byte 0x00004002
_02341D0C: .4byte 0x00003070
_02341D10: .4byte 0x00001001
_02341D14: .4byte 0x00005001
_02341D18: .4byte 0x00006002
_02341D1C: .4byte 0x0000511A
_02341D20: .4byte 0x00007001
_02341D24: .4byte 0x023469A8
_02341D28: .4byte 0x023469A4
_02341D2C: .4byte 0x00003879
_02341D30: .4byte 0x00000233
_02341D34: .4byte 0x00003858
_02341D38: .4byte 0x00004001
_02341D3C: .4byte 0x00003859
_02341D40: .4byte 0x00003895
_02341D44: .4byte 0x00003896
_02341D48: .4byte 0x02346848
_02341D4C: .4byte 0x02346844
_02341D50: .4byte 0x0000385E
_02341D54: .4byte 0x0000386F
_02341D58: .4byte 0x00003870
_02341D5C: .4byte 0x00001004
_02341D60: .4byte 0x0000389D
_02341D64: .4byte 0x00003860
_02341D68: .4byte 0x0234675C
_02341D6C: .4byte 0x00003861
_02341D70: .4byte 0x00001002
_02341D74: .4byte 0x00003863
_02341D78: .4byte 0x00003864
_02341D7C: .4byte 0x00001005
_02341D80: .4byte 0x00003865
_02341D84: .4byte 0x00001003
_02341D88: .4byte 0x02346A90
_02341D8C: .4byte 0x000038A6
_02341D90: .4byte 0x00003071
_02341D94: .4byte 0x00003072
_02341D98: .4byte 0x00003073
_02341D9C: .4byte 0x00003866
_02341DA0: .4byte 0x00004003
_02341DA4: .4byte 0x00003873
_02341DA8: .4byte 0x0000389E
_02341DAC: .4byte 0x00003884
_02341DB0: .4byte 0x0000385A
_02341DB4: .4byte 0x00003897
_02341DB8: .4byte 0x00004008
_02341DBC: .4byte 0x00004004
_02341DC0: .4byte 0x00004006
_02341DC4:
	mov r0, r4
	ldr r0, [r0]
	add r0, r0, #0x2d
	bl FUN_02050B10
	mov r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #0xbe]
	bl FUN_0205BD5C
	mov r2, r4
	mov r1, r0
	ldr r0, [r2]
	add r0, r0, #0xae
	bl ov03_023441EC
	cmp r0, #0
	bne _02341E80
	mov r0, r4
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x660]
	cmp r0, #0
	beq _02341EA0
	add r0, r2, #0x1600
	ldrsh r0, [r0, #0x1c]
	bl FUN_02062B64
	cmp r0, #0
	bne _02341E80
	mov r0, r4
	ldr r2, [r0]
	add r1, r2, #0x1600
	ldrb r0, [r2, #0xbe]
	add r2, r2, #0x3e
	ldrsh r1, [r1, #0x1c]
	add r2, r2, #0x1600
	bl FUN_0205C700
	cmp r0, #0
	beq _02341E80
	mov r0, r4
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldrb r1, [r0, #0x618]
	cmp r1, #1
	blo _02341E80
	cmp r1, #0x64
	bhi _02341E80
	ldrb r0, [r0, #0x638]
	cmp r0, #0xb
	blo _02341EA0
_02341E80:
	mov r0, #2
	mov r1, #6
	bl FUN_023398B0
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DB8 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341EA0:
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x660]
	cmp r0, #0
	addne r0, r2, #0x214
	addne r2, r0, #0x1400
	ldr r0, _02341D00 @ =0x02346BC8
	moveq r2, #0
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x958]
	add r1, r1, #0x10
	bl FUN_0232D3C4
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, #5
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DC0 @ =0x00004006
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341EFC:
	mov r0, r4
	ldr r0, [r0]
	add r0, r0, #0x2d
	bl FUN_02050B10
	mov r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #0xbe]
	bl FUN_0205BD5C
	mov r2, r4
	mov r1, r0
	ldr r0, [r2]
	add r0, r0, #0xae
	bl ov03_023441EC
	cmp r0, #0
	beq _02341F58
	mov r0, #2
	mov r1, #6
	bl FUN_023398B0
	mov r0, r4
	ldr r1, _02341DB8 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341F58:
	mov r0, r4
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x958]
	add r1, r1, #0x10
	bl FUN_0232D83C
	mov r1, r4
	ldr r1, [r1]
	mov r0, #7
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	mov r0, r4
	ldr r1, _02341DC0 @ =0x00004006
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341F9C:
	mov r0, r4
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x95c]
	cmp r1, #0
	bge _02341FF0
	ldr r1, [r2, #0x1c]
	ldr r0, [r0, #0x958]
	ldr r2, [r2, #0x20]
	bl FUN_0232CEA8
	mov r1, r4
	ldr r1, [r1]
	mov r0, #3
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	mov r0, r4
	ldr r1, _02342F70 @ =0x00005108
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02341FF0:
	beq _02342094
	mov r5, #0
	mov r4, r5
	mov r7, r5
	mov r6, r5
	mov sl, r5
	mov sb, #1
	mov r8, r5
_02342010:
	and r0, sl, #0xff
	bl FUN_0204D2F8
	cmp r0, #0
	beq _0234203C
	lsl r1, r8, sl
	rsb r0, sl, #0x20
	orr r1, r1, sb, lsr r0
	sub r0, sl, #0x20
	orr r1, r1, sb, lsl r0
	orr r7, r7, sb, lsl sl
	orr r6, r6, r1
_0234203C:
	add sl, sl, #1
	cmp sl, #0x40
	blt _02342010
	mov sl, #0
	mov sb, #1
	mov r8, sl
_02342054:
	add r0, sl, #0x40
	and r0, r0, #0xff
	bl FUN_0204D2F8
	cmp r0, #0
	beq _02342084
	lsl r1, r8, sl
	rsb r0, sl, #0x20
	orr r1, r1, sb, lsr r0
	sub r0, sl, #0x20
	orr r1, r1, sb, lsl r0
	orr r5, r5, sb, lsl sl
	orr r4, r4, r1
_02342084:
	add sl, sl, #1
	cmp sl, #0x74
	blt _02342054
	b _023420A4
_02342094:
	mvn r5, #0
	mov r4, r5
	mov r7, r5
	mov r6, r5
_023420A4:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #0
	ldr r2, [r0]
	mov r0, #0x20
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x95c]
	mov r3, r7
	str r1, [sp, #0xc]
	str r6, [sp]
	ldr r0, [r0, #0x958]
	mov r1, r5
	mov r2, r4
	bl FUN_0232CA30
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02342F74 @ =0x00005052
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_0234210C:
	mov r0, r4
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldr r1, [r2, #0x1c]
	ldr r0, [r0, #0x958]
	ldr r2, [r2, #0x20]
	bl FUN_0232D55C
	mov r1, r4
	ldr r1, [r1]
	mov r0, #6
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	mov r0, r4
	ldr r1, _02342F78 @ =0x00004005
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342154:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #0xb0
	ldr r3, [r2, #8]
	add r0, r2, #0x1000
	mla r2, r3, r1, r2
	ldr r1, [r2, #0x1c]
	ldr r0, [r0, #0x958]
	ldr r2, [r2, #0x20]
	bl FUN_0232D8C8
	mov r1, r4
	ldr r1, [r1]
	mov r0, #8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	mov r0, r4
	ldr r1, _02342F78 @ =0x00004005
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023421A8:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	bl ov03_0233CAB8
	cmp r0, #2
	beq _023421D0
	bl ov03_0233CAB8
	cmp r0, #4
	bne _023421EC
_023421D0:
	ldrsh r0, [r5, #0xb2]
	cmp r0, #0
	ldrne r0, _02341D00 @ =0x02346BC8
	ldrne r1, _02341D0C @ =0x00003070
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
_023421EC:
	mov r0, #2
	b _02344188
_023421F4:
	bl FUN_02338EC4
	cmp r0, #4
	bne _02342574
	bl ov03_0233CAB8
	cmp r0, #3
	beq _02342218
	cmp r0, #5
	beq _0234241C
	b _02344184
_02342218:
	mov r0, #0
	bl FUN_02338E1C
	mov r4, r0
	bl FUN_0232D590
	cmp r0, #0x64
	bne _023423E4
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, r4
	ldr r1, [r1]
	add r1, r1, #0x10
	bl FUN_0232D664
	add r0, sp, #0xb4
	mov r1, #0x2a
	bl FUN_02003250
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r6, [r0]
	bl FUN_020205A0
	ldrsb r1, [r6, #0x2c]
	cmp r1, r0
	add r0, sp, #0xb4
	bne _0234227C
	add r1, r6, #0x2d
	mov r2, #0x14
	bl FUN_020251F4
	b _02342284
_0234227C:
	ldr r1, _02342F7C @ =0x000038C9
	bl FUN_020258B8
_02342284:
	mov r0, #5
	strb r0, [r5, #0x10]
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, r4
	ldr r2, [r1]
	ldrb r2, [r2, #0xbe]
	strb r2, [r5, #0xbe]
	ldr r1, [r1]
	add r1, r1, #0x214
	add r1, r1, #0x1400
	bl FUN_0232D5C4
	ldr r1, _02341D00 @ =0x02346BC8
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r4, [r0, #0x660]
	ldrb r0, [r5, #0xbe]
	bl FUN_0205BD5C
	mov r1, r0
	add r0, r5, #0xae
	bl ov03_023441EC
	cmp r0, #0
	movne r0, #0
	strhne r0, [r5, #0xb2]
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x660]
	cmp r0, #0
	beq _02342378
	add r0, r1, #0x1600
	ldrsh r0, [r0, #0x1c]
	bl FUN_02062B64
	cmp r0, #0
	bne _02342364
	ldr r1, _02341D00 @ =0x02346BC8
	ldrb r0, [r5, #0xbe]
	ldr r2, [r1]
	add r1, r2, #0x1600
	ldrsh r1, [r1, #0x1c]
	add r2, r2, #0x3e
	add r2, r2, #0x1600
	bl FUN_0205C700
	cmp r0, #0
	beq _02342364
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x618]
	cmp r1, #1
	blo _02342364
	cmp r1, #0x64
	bhi _02342364
	ldrb r0, [r0, #0x638]
	cmp r0, #0xb
	blo _02342378
_02342364:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r4, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r4, [r0, #0x660]
_02342378:
	add r0, sp, #0x270
	bl FUN_02023690
	add r3, sp, #0xb4
	ldr r1, _02342F80 @ =0x00003855
	add r2, sp, #0x270
	mov r0, #0x1c
	str r3, [sp, #0x2a8]
	bl FUN_02066488
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	ldr r0, [r1]
	add r0, r0, #0x10
	bl FUN_02069790
	cmp r4, #0
	beq _02344184
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1600
	ldrsh r0, [r0, #0x1c]
	bl FUN_02069940
	b _02344184
_023423E4:
	ldr r1, _02342F8C @ =0x00003856
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, #0
	ldr r1, _02341D00 @ =0x02346BC8
	strb r0, [r5, #0x10]
	ldr r0, [r1]
	ldr r2, _02342F84 @ =0x00002A30
	add r0, r0, #0x1000
	str r2, [r0, #0xae0]
	ldr r0, [r1]
	ldr r1, _02342F88 @ =0x00004007
	str r1, [r0]
	b _02344184
_0234241C:
	mov r0, #0
	bl FUN_02338E1C
	mov r4, r0
	bl FUN_0232D8FC
	cmp r0, #1
	bne _02342484
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #0xb0
	ldr r3, [r0]
	mov r0, r4
	ldr r2, [r3, #8]
	add r5, r3, #0x10
	mul r4, r2, r1
	add r6, r5, r4
	mov r1, r6
	bl FUN_0232D930
	mov r0, #6
	strb r0, [r5, r4]
	ldrb r0, [r6, #0xae]
	bl FUN_0205BD5C
	mov r1, r0
	add r0, r6, #0x9e
	bl ov03_023441EC
	cmp r0, #0
	movne r0, #0
	strhne r0, [r6, #0xa2]
_02342484:
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r2, [r0]
	ldr r1, [r2, #8]
	add r1, r1, #1
	str r1, [r2, #8]
	ldr r3, [r0]
	mov r0, #0xb0
	ldr r5, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r1, r5
	blt _02342530
	mov r2, #0
	mov r4, r2
	b _023424D0
_023424BC:
	mla r1, r2, r0, r3
	ldrb r1, [r1, #0x10]
	add r2, r2, #1
	cmp r1, #6
	addeq r4, r4, #1
_023424D0:
	cmp r2, r5
	blt _023424BC
	cmp r4, #0
	ble _02342500
	add r0, sp, #0x220
	bl FUN_02023690
	ldr r1, _02342F90 @ =0x00003893
	add r2, sp, #0x220
	mov r0, #0x1c
	str r4, [sp, #0x244]
	bl FUN_02066488
	b _0234250C
_02342500:
	ldr r1, _02342F94 @ =0x00003894
	mov r0, #0x1c
	bl FUN_02066468
_0234250C:
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02342530:
	mla r2, r1, r0, r3
	add r0, r3, #0x1000
	ldr r1, [r2, #0x1c]
	ldr r0, [r0, #0x958]
	ldr r2, [r2, #0x20]
	bl FUN_0232D8C8
	ldr r1, _02341D00 @ =0x02346BC8
	mov r0, #8
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02342F78 @ =0x00004005
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342574:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_0234258C:
	bl FUN_02338EC4
	cmp r0, #4
	bne _02342780
	bl ov03_0233CAB8
	cmp r0, #0
	beq _023425B8
	cmp r0, #2
	beq _023425EC
	cmp r0, #4
	beq _02342718
	b _02344184
_023425B8:
	mov r0, #0
	bl FUN_02338E1C
	bl FUN_0232CA18
	str r0, [r5, #0x1c]
	str r1, [r5, #0x20]
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	mov r0, r4
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023425EC:
	mov r0, #0
	bl FUN_02338E1C
	bl FUN_0232D524
	cmp r0, #0
	beq _02342668
	ldr r1, _02342F9C @ =0x00003874
	mov r0, #0x1c
	bl FUN_02066468
	mov r1, #0
	mov r0, r4
	strh r1, [r5, #0xb2]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae8]
	cmp r0, #0
	beq _02342644
	bl FUN_0204FF80
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0x1000
	strb r1, [r0, #0xae8]
_02342644:
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02342668:
	ldrsh r0, [r5, #0xb2]
	cmp r0, #0
	mov r0, #0x1c
	beq _023426EC
	ldr r1, _02342FA0 @ =0x00003876
	bl FUN_02066468
	mov r0, r4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae8]
	cmp r0, #0
	beq _023426A8
	add r0, r5, #0xae
	mov r1, #0xb4
	mov r2, #0
	bl FUN_0200CF58
_023426A8:
	add r0, r5, #0xae
	bl FUN_020103AC
	mov r2, #0
	strh r2, [r5, #0xb2]
	ldr r1, _02341D00 @ =0x02346BC8
	strh r2, [r5, #0xb0]
	ldr r0, [r1]
	ldr r3, _02342F84 @ =0x00002A30
	add r0, r0, #0x1000
	strb r2, [r0, #0xae8]
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_023426EC:
	ldr r1, _02342FA4 @ =0x00003875
	bl FUN_02066468
	mov r1, r4
	ldr r0, [r1]
	ldr r3, _02342F84 @ =0x00002A30
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r2, _02342F88 @ =0x00004007
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02342718:
	ldr r1, _02342FA8 @ =0x0000389F
	mov r0, #0x1c
	bl FUN_02066468
	mov r1, #0
	mov r0, r4
	strh r1, [r5, #0xb2]
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xae8]
	cmp r0, #0
	beq _0234275C
	bl FUN_0204FF80
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0x1000
	strb r1, [r0, #0xae8]
_0234275C:
	ldr r1, _02341D00 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02342780:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	bl ov03_0233CAB8
	cmp r0, #2
	beq _023427A8
	bl ov03_0233CAB8
	cmp r0, #4
	bne _023427C4
_023427A8:
	ldrsh r0, [r5, #0xb2]
	cmp r0, #0
	ldrne r0, _02341D00 @ =0x02346BC8
	ldrne r1, _02341D0C @ =0x00003070
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
_023427C4:
	mov r0, #2
	b _02344188
_023427CC:
	bl FUN_02339988
	bl FUN_02338EC4
	mov r5, r0
	bl FUN_02066494
	mov r4, r0
	bl FUN_020698B8
	add r1, sp, #0x14
	mov r0, #0
	bl FUN_020061EC
	bl FUN_0204AE60
	cmp r0, #0
	moveq r0, #0
	beq _02342818
	add r0, sp, #0x90
	bl FUN_02006C1C
	add r0, sp, #0x90
	mov r1, #1
	mov r2, #0
	bl FUN_02006C8C
_02342818:
	ldrh r1, [sp, #0x14]
	cmp r1, #0
	cmpeq r0, #0
	ldrne r0, _02341D00 @ =0x02346BC8
	ldrne r1, _02342F84 @ =0x00002A30
	ldrne r0, [r0]
	addne r0, r0, #0x1000
	strne r1, [r0, #0xae0]
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xae0]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0xae0]
	cmp r5, #5
	bne _0234287C
	bl FUN_02069904
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341DB8 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_0234287C:
	cmp r4, #0x1f
	beq _0234289C
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xae0]
	cmp r0, #0
	bgt _02344184
_0234289C:
	bl FUN_02069904
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023428C0:
	bl FUN_02338EC4
	cmp r0, #0
	beq _02344184
	bl FUN_02338B08
	bl ov03_0233CAB8
	cmp r0, #2
	beq _023428E8
	bl ov03_0233CAB8
	cmp r0, #4
	bne _02342904
_023428E8:
	ldrsh r0, [r5, #0xb2]
	cmp r0, #0
	ldrne r0, _02341D00 @ =0x02346BC8
	ldrne r1, _02341D0C @ =0x00003070
	ldrne r0, [r0]
	strne r1, [r0]
	bne _02344184
_02342904:
	mov r0, #2
	b _02344188
_0234290C:
	bl FUN_02338EC4
	cmp r0, #6
	bne _02342EE8
	bl FUN_02338B08
	bl ov03_0233CAB8
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02342ED4
_0234292C: @ jump table
	b _02342E8C @ case 0
	b _02342944 @ case 1
	b _02342EC0 @ case 2
	b _02342B68 @ case 3
	b _02342EC0 @ case 4
	b _02342D5C @ case 5
_02342944:
	ldr r5, [r4]
	add r1, r5, #0x1000
	ldr r0, [r1, #0x95c]
	cmp r0, #0
	bge _02342A98
	ldr r0, [r1, #0x960]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02344184
_02342968: @ jump table
	b _02342978 @ case 0
	b _02342A30 @ case 1
	b _02342A64 @ case 2
	b _02342A30 @ case 3
_02342978:
	add r1, r5, #0x24
	mov r0, #2
	bl FUN_0205B918
	cmp r0, #0
	bne _023429C4
	add r1, r5, #0x24
	mov r0, #4
	bl FUN_0205B918
	cmp r0, #0
	bne _023429C4
	add r1, r5, #0x24
	mov r0, #6
	bl FUN_0205B918
	cmp r0, #0
	bne _023429C4
	add r0, r5, #0x24
	bl FUN_0205B8CC
	cmp r0, #0
	beq _023429E4
_023429C4:
	ldr r1, _02342FAC @ =0x000038A1
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, _02341D20 @ =0x00007001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023429E4:
	add r0, r5, #0x24
	bl FUN_0205B890
	mov r0, #2
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x14]
	bl FUN_02051380
	strb r0, [r5, #0xbc]
	add r0, r5, #0x10
	bl FUN_0205B6EC
	ldr r1, _02342FB0 @ =0x00003889
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, [r0]
	ldr r2, _02342FB4 @ =0x00005110
	add r0, r5, #0x10
	str r2, [r1]
	bl FUN_02069790
	b _02344184
_02342A30:
	mov r0, #0x17
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02342FB8 @ =0x02346774
	ldr r3, _02342FBC @ =0x00003887
	mov r1, r0
	bl FUN_020663C8
	mov r0, r4
	ldr r1, _02342FC0 @ =0x00005008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342A64:
	mov r0, #0x17
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02342FB8 @ =0x02346774
	ldr r3, _02342FC4 @ =0x00003888
	mov r1, r0
	bl FUN_020663C8
	mov r0, r4
	ldr r1, _02342FC0 @ =0x00005008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342A98:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02342AD8
	mov r0, #0x18
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02342FB8 @ =0x02346774
	ldr r3, _02342FC8 @ =0x00003886
	mov r1, r0
	bl FUN_020663C8
	mov r0, r4
	ldr r1, _02342FCC @ =0x00005016
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342AD8:
	add r0, r5, #0x1900
	ldrsh r0, [r0, #0x64]
	cmp r0, #0
	moveq r0, #2
	beq _02344188
	ldrb r0, [r1, #0x9d4]
	cmp r0, #0
	beq _02342B60
	mov r5, #0
	mov r6, #0xb0
	b _02342B40
_02342B04:
	ldr r1, [r4]
	add r0, r1, r5, lsl #1
	add r0, r0, #0x1900
	ldrsh r0, [r0, #0x68]
	add r2, r1, #0x10
	smulbb r1, r0, r6
	ldrb r0, [r2, r1]
	add r7, r2, r1
	cmp r0, #2
	bne _02342B3C
	add r0, r7, #0x14
	bl FUN_0205B890
	mov r0, r7
	bl FUN_0205B6EC
_02342B3C:
	add r5, r5, #1
_02342B40:
	ldr r1, [r4]
	add r0, r1, #0x1900
	ldrsh r0, [r0, #0x64]
	cmp r5, r0
	blt _02342B04
	mov r0, #0x8000
	str r0, [r1]
	b _02344184
_02342B60:
	mov r0, #2
	b _02344188
_02342B68:
	mov r0, r4
	ldr r1, [r0]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	moveq r0, #2
	beq _02344188
	ldrb r0, [r1, #0xbe]
	bl FUN_0205BD5C
	mov r2, r4
	mov r1, r0
	ldr r0, [r2]
	add r0, r0, #0xae
	bl ov03_023441EC
	cmp r0, #0
	movne r0, r4
	ldrne r0, [r0]
	movne r1, #0
	strhne r1, [r0, #0xb2]
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x660]
	cmp r0, #0
	beq _02342C44
	add r0, r1, #0x1600
	ldrsh r0, [r0, #0x1c]
	bl FUN_02062B64
	cmp r0, #0
	bne _02342C30
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r2, [r0]
	add r1, r2, #0x1600
	ldrb r0, [r2, #0xbe]
	add r2, r2, #0x3e
	ldrsh r1, [r1, #0x1c]
	add r2, r2, #0x1600
	bl FUN_0205C700
	cmp r0, #0
	beq _02342C30
	ldr r0, _02341D00 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x618]
	cmp r1, #1
	blo _02342C30
	cmp r1, #0x64
	bhi _02342C30
	ldrb r0, [r0, #0x638]
	cmp r0, #0xb
	blo _02342C44
_02342C30:
	ldr r0, _02341D00 @ =0x02346BC8
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	strb r1, [r0, #0x660]
_02342C44:
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r0, #1
	ldr r1, [r1]
	add r1, r1, #0x24
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	mov r2, #7
	ldr r1, _02342FD0 @ =0x02346BC8
	strb r2, [r0]
	ldr r2, [r1]
	ldrb r2, [r2, #0xbe]
	strb r2, [r0, #0xae]
	ldr r0, [r1]
	add r0, r0, #0x10
	bl FUN_0205B738
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, [r0]
	ldrsh r0, [r1, #0xb2]
	cmp r0, #0
	beq _02342CD8
	mov r0, #0
	mov r1, r0
	bl FUN_0205BC30
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0xae
	bl FUN_0205BCC4
	ldr r1, _02342FD4 @ =0x00003851
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342FD8 @ =0x00006001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342CD8:
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x660]
	cmp r0, #0
	mov r0, #0
	beq _02342D38
	bl FUN_0205BCC4
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	ldrb r0, [r0, #0xbe]
	bl FUN_0205BD5C
	ldr r2, _02342FD0 @ =0x02346BC8
	mov r1, r0
	ldr r0, [r2]
	add r0, r0, #0x214
	add r0, r0, #0x1400
	bl FUN_0205BC30
	ldr r1, _02342FDC @ =0x00003852
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342FE0 @ =0x00006002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342D38:
	bl FUN_0205BCC4
	mov r0, #0
	mov r1, r0
	bl FUN_0205BC30
	ldr r0, _02342FD0 @ =0x02346BC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342D5C:
	mov r1, r4
	ldr r0, [r1]
	mov r4, #0
	str r4, [r0, #8]
	mov r6, r4
	mov r7, r4
	mov r0, #0xb0
	b _02342DAC
_02342D7C:
	mul r5, r6, r0
	add r2, r3, r5
	ldrb r2, [r2, #0x10]
	cmp r2, #6
	bne _02342DA8
	cmp r4, #0
	ldreq r3, [r1]
	add r7, r7, #1
	addeq r2, r3, #0x10
	streq r6, [r3, #8]
	addeq r4, r2, r5
_02342DA8:
	add r6, r6, #1
_02342DAC:
	ldr r3, [r1]
	ldr r2, [r3, #0xc]
	cmp r6, r2
	blt _02342D7C
	cmp r7, #0
	ble _02342E84
	add r0, sp, #0x1d0
	bl FUN_02023690
	add r1, r4, #0x14
	mov r0, #4
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	mov r5, r0
	ldrb r0, [r4, #0xae]
	bl FUN_0205BD5C
	mov r1, r0
	add r0, r4, #0x9e
	bl ov03_023441EC
	cmp r0, #0
	movne r0, #0
	strhne r0, [r4, #0xa2]
	mov r0, r5
	mov r1, r4
	mov r2, #0xb0
	bl FUN_020032D4
	add r0, sp, #0x64
	mov r1, #0x2a
	bl FUN_02003250
	bl FUN_020205A0
	ldrsb r1, [r4, #0x1c]
	cmp r1, r0
	add r0, sp, #0x64
	bne _02342E48
	add r1, r4, #0x1d
	mov r2, #0x14
	bl FUN_020251F4
	b _02342E50
_02342E48:
	ldr r1, _02342F7C @ =0x000038C9
	bl FUN_020258B8
_02342E50:
	ldr r1, _02342FE4 @ =0x00003890
	add r3, sp, #0x64
	add r2, sp, #0x1d0
	mov r0, #0x1c
	str r3, [sp, #0x208]
	bl FUN_02066488
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r2, _02342FE8 @ =0x00006004
	ldr r1, [r0]
	mov r0, r4
	str r2, [r1]
	bl FUN_02069790
	b _02344184
_02342E84:
	mov r0, #2
	b _02344188
_02342E8C:
	mov r0, r4
	ldr r0, [r0]
	add r0, r0, #0x1600
	ldrsb r0, [r0, #0x10]
	bl FUN_0205B77C
	add r1, r5, #0x10
	mov r2, #0xb0
	bl FUN_020032D4
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x8000
	str r1, [r0]
	b _02344184
_02342EC0:
	mov r0, r4
	ldr r0, [r0]
	mov r1, #0x8000
	str r1, [r0]
	b _02344184
_02342ED4:
	ldr r0, _02342FD0 @ =0x02346BC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02342EE8:
	cmp r0, #8
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_02342EFC:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x14
	bl FUN_023375D0
	cmp r4, #0x17
	bne _02342F44
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #0
	ldr r0, [r1]
	ldr r2, _02342FEC @ =0x00004001
	add r0, r0, #0x1000
	str r3, [r0, #0x95c]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02342F44:
	cmp r4, #0x18
	bne _02342FF0
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #1
	ldr r0, [r1]
	add r2, r3, #0x4000
	add r0, r0, #0x1000
	str r3, [r0, #0x95c]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
	.align 2, 0
_02342F70: .4byte 0x00005108
_02342F74: .4byte 0x00005052
_02342F78: .4byte 0x00004005
_02342F7C: .4byte 0x000038C9
_02342F80: .4byte 0x00003855
_02342F84: .4byte 0x00002A30
_02342F88: .4byte 0x00004007
_02342F8C: .4byte 0x00003856
_02342F90: .4byte 0x00003893
_02342F94: .4byte 0x00003894
_02342F98: .4byte 0x00004010
_02342F9C: .4byte 0x00003874
_02342FA0: .4byte 0x00003876
_02342FA4: .4byte 0x00003875
_02342FA8: .4byte 0x0000389F
_02342FAC: .4byte 0x000038A1
_02342FB0: .4byte 0x00003889
_02342FB4: .4byte 0x00005110
_02342FB8: .4byte 0x02346774
_02342FBC: .4byte 0x00003887
_02342FC0: .4byte 0x00005008
_02342FC4: .4byte 0x00003888
_02342FC8: .4byte 0x00003886
_02342FCC: .4byte 0x00005016
_02342FD0: .4byte 0x02346BC8
_02342FD4: .4byte 0x00003851
_02342FD8: .4byte 0x00006001
_02342FDC: .4byte 0x00003852
_02342FE0: .4byte 0x00006002
_02342FE4: .4byte 0x00003890
_02342FE8: .4byte 0x00006004
_02342FEC: .4byte 0x00004001
_02342FF0:
	cmp r4, #0x19
	bne _0234301C
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #2
	ldr r0, [r1]
	ldr r2, _02342FEC @ =0x00004001
	add r0, r0, #0x1000
	str r3, [r0, #0x95c]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_0234301C:
	cmp r4, #0x1a
	bne _02343064
	ldr r1, _02342FD0 @ =0x02346BC8
	mvn r3, #0
	ldr r0, [r1]
	ldr r2, _02343F70 @ =0xD4A51000
	add r0, r0, #0x1000
	str r3, [r0, #0x95c]
	ldr r0, [r1]
	mov r1, #0xe8
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bl FUN_02046D20
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F74 @ =0x00005006
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343064:
	cmp r4, #0x1f
	bne _02344184
	mov r0, #1
	b _02344188
_02343074:
	bl FUN_02338EC4
	cmp r0, #4
	bne _02343184
	mov r0, #0
	bl FUN_02338E1C
	mov r4, r0
	bl FUN_0232CB1C
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r2, [r1]
	str r0, [r2, #0xc]
	ldr r2, [r1]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _023430CC
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023430CC:
	add r0, r2, #0x1000
	ldr r1, [r0, #0x95c]
	add r0, r2, #0xdd
	cmp r1, #0
	moveq r3, #1
	movne r3, #0
	add r5, r0, #0x1900
	add r1, r2, #0x10
	mov r0, r4
	and r3, r3, #0xff
	mov r2, #0x20
	bl FUN_0232CB50
	ldr r1, _02342FD0 @ =0x02346BC8
	cmp r0, #0
	ldr r1, [r1]
	str r0, [r1, #0xc]
	bne _02343130
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343130:
	add r0, sp, #0x180
	bl FUN_02023690
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r2, _02343F78 @ =0x02346BCC
	ldr r1, [r0]
	mov r0, r5
	add r1, r1, #0x1000
	ldr r1, [r1, #0x95c]
	lsl r1, r1, #1
	ldrh r1, [r2, r1]
	bl FUN_020258B8
	ldr r1, _02343F7C @ =0x00003885
	add r2, sp, #0x180
	mov r0, #0x1c
	str r5, [sp, #0x1b8]
	bl FUN_02066488
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F80 @ =0x00005053
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343184:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_0234319C:
	bl FUN_02338EC4
	mov r4, r0
	bl FUN_02066494
	cmp r4, #5
	bne _023431CC
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023431CC:
	cmp r0, #0x1f
	bne _02344184
	bl FUN_02046D20
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F88 @ =0x00005003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023431EC:
	mov r0, #0
	mov r1, #1
	bl FUN_0205B97C
	mov r3, r0
	ldr r2, [r5, #0xc]
	add r1, r5, #0x10
	mov r0, #0x13
	bl FUN_02066990
	mov r0, r4
	ldr r1, _02343F8C @ =0x00005004
	ldr r0, [r0]
	str r1, [r0]
_0234321C:
	bl FUN_02338EC4
	mov r4, r0
	bl FUN_02066A44
	cmp r4, #5
	bne _0234324C
	bl FUN_02067664
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_0234324C:
	mvn r1, #0
	cmp r0, r1
	bne _02343290
	bl FUN_02067664
	mov r0, #0x19
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02343F90 @ =0x0234675C
	ldr r3, _02343F94 @ =0x000038A7
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F98 @ =0x00005010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343290:
	cmp r0, #2
	bne _02344184
	bl FUN_020674E8
	ldr r3, _02342FD0 @ =0x02346BC8
	mov r4, #0
	ldr r2, [r3]
	mov r1, #0x20
	add r2, r2, #0x1900
	strh r0, [r2, #0x64]
	ldr r0, [r3]
	add r0, r0, #0x1900
	strh r4, [r0, #0x66]
	ldr r0, [r3]
	add r0, r0, #0x168
	add r0, r0, #0x1800
	bl FUN_02067524
	bl FUN_02067664
	ldr r1, _02342FB0 @ =0x00003889
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F9C @ =0x00005011
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023432F4:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x18
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02343358
	bl FUN_022BD274
	cmp r0, #0
	ldreq r0, _02342FD0 @ =0x02346BC8
	moveq r1, #2
	ldreq r0, [r0]
	streq r1, [r0]
	beq _02344184
	ldr r0, _02342FD0 @ =0x02346BC8
	mov r3, #0xe000
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0xae4]
	b _02344184
_02343358:
	cmp r4, #0x1f
	bne _02344184
	mov r0, #2
	b _02344188
_02343368:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	mov r0, #1
	bl FUN_0233580C
	mov r0, r4
	ldr r1, _02343FA0 @ =0x00005007
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_0234338C:
	bl FUN_02336014
	cmp r0, #2
	bne _023433C4
	bl FUN_023370AC
	mov r2, r4
	ldr r2, [r2]
	str r0, [r2, #0x1c]
	str r1, [r2, #0x20]
	bl FUN_02335FA8
	mov r0, r4
	ldr r1, _02342FEC @ =0x00004001
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023433C4:
	cmp r0, #1
	bne _02344184
	bl FUN_02335FA8
	mov r0, r4
	ldr r0, [r0]
	mov r1, #2
	str r1, [r0]
	b _02344184
_023433E4:
	bl FUN_02338EC4
	cmp r0, #4
	bne _02343528
	mov r0, #0
	bl FUN_02338E1C
	mov r4, r0
	bl FUN_0232CEDC
	mov r6, r0
	mov r0, r4
	bl FUN_0232CF4C
	mov r5, r0
	mov r0, r4
	bl FUN_0232CF14
	cmp r6, #0
	bne _02343460
	ldr r2, _02342FD0 @ =0x02346BC8
	mov r1, #0
	ldr r3, [r2]
	mov r0, #1
	strb r1, [r3, #0x10]
	ldr r3, [r2]
	strb r1, [r3, #0xbd]
	ldr r2, [r2]
	add r2, r2, #0x1000
	str r0, [r2, #0x960]
	bl FUN_02338BEC
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343460:
	cmp r5, #0
	bne _023434B8
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #0
	ldr r2, [r1]
	cmp r0, #0
	strb r3, [r2, #0x10]
	ldr r2, [r1]
	strb r0, [r2, #0xbd]
	ldr r0, [r1]
	movne r1, #2
	moveq r1, #3
	add r0, r0, #0x1000
	str r1, [r0, #0x960]
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023434B8:
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #2
	ldr r2, [r1]
	strb r3, [r2, #0x10]
	ldr r2, [r1]
	strb r0, [r2, #0xbd]
	ldr r1, [r1]
	mov r0, r4
	add r1, r1, #0x10
	bl FUN_0232CF84
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x958]
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	bl FUN_0232D188
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r0, #4
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343FA4 @ =0x00005109
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343528:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_02343540:
	bl FUN_02338EC4
	cmp r0, #4
	bne _023435B8
	mov r0, #0
	bl FUN_02338E1C
	mov r4, r0
	bl FUN_0232D1BC
	cmp r0, #0
	ldreq r0, _02342FD0 @ =0x02346BC8
	moveq r1, #3
	ldreq r0, [r0]
	addeq r0, r0, #0x1000
	streq r1, [r0, #0x960]
	beq _02343598
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r0, r4
	ldr r1, [r1]
	mov r3, #0
	add r2, r1, #0x1000
	add r1, r1, #0x10
	str r3, [r2, #0x960]
	bl FUN_0232D1F4
_02343598:
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02342F98 @ =0x00004010
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023435B8:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_023435D0:
	bl FUN_02066494
	mov r4, r0
	bl FUN_020698B8
	cmp r4, #0x1f
	bne _02344184
	bl FUN_02069904
	ldr r0, _02342FD0 @ =0x02346BC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023435FC:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x17
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02343668
	bl FUN_022BD274
	cmp r0, #0
	beq _02343650
	ldr r0, _02342FD0 @ =0x02346BC8
	mov r3, #0xe000
	ldr r2, [r0]
	mov r1, #1
	str r3, [r2]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0xae4]
	b _02344184
_02343650:
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F74 @ =0x00005006
	ldr r0, [r0]
	str r1, [r0]
	bl FUN_02046D20
	b _02344184
_02343668:
	cmp r4, #0x1f
	bne _02344184
	mov r0, #2
	b _02344188
_02343678:
	bl FUN_02338EC4
	mov r5, r0
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0x19
	bl FUN_023375D0
	cmp r5, #5
	bne _023436C4
	bl FUN_02046BB4
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023436C4:
	cmp r4, #0x1d
	bne _023436FC
	mov r0, #1
	mov r1, #0
	bl FUN_02338BEC
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #0
	ldr r0, [r1]
	ldr r2, _02342F98 @ =0x00004010
	add r0, r0, #0x1900
	strh r3, [r0, #0x64]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_023436FC:
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _02344184
	bl FUN_02046D20
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F88 @ =0x00005003
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343720:
	bl FUN_02338EC4
	mov r4, r0
	bl FUN_02066494
	cmp r4, #5
	bne _02343750
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343750:
	cmp r0, #0x1f
	bne _02344184
	ldr r1, _02343FA8 @ =0x0000388A
	mov r0, #0
	bl FUN_02066468
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343FAC @ =0x00005112
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343778:
	bl FUN_02338EC4
	mov r4, r0
	bl FUN_02066494
	cmp r4, #5
	bne _023437A8
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023437A8:
	cmp r0, #0x1f
	bne _02344184
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r3, #0
	ldr r0, [r1]
	ldr r2, _02343FB0 @ =0x0000511A
	add r0, r0, #0x1000
	strb r3, [r0, #0x9d4]
	ldr r0, [r1]
	add r0, r0, #0x1000
	strb r3, [r0, #0x9d5]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_023437E0:
	mov r8, #0
	sub r5, r1, #0x108
	mov fp, #2
	mov r7, r8
	mov r6, #1
_023437F4:
	ldr r3, [r4]
	mov r0, #2
	add r1, r3, #0x1900
	ldrsh r1, [r1, #0x66]
	add r2, r3, #0x10
	add r1, r3, r1, lsl #1
	add r1, r1, #0x1900
	ldrsh r3, [r1, #0x68]
	mov r1, #0xb0
	smulbb sl, r3, r1
	add sb, r2, sl
	add r1, sb, #0x14
	bl FUN_0205B918
	cmp r0, #0
	bne _02343868
	mov r0, #4
	add r1, sb, #0x14
	bl FUN_0205B918
	cmp r0, #0
	bne _02343868
	mov r0, #6
	add r1, sb, #0x14
	bl FUN_0205B918
	cmp r0, #0
	bne _02343868
	add r0, sb, #0x14
	bl FUN_0205B8CC
	cmp r0, #0
	beq _023438D8
_02343868:
	strb r7, [sb]
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x9d5]
	ldr r0, [r4]
	add r0, r0, #0x1900
	ldrsh r1, [r0, #0x66]
	add r1, r1, #1
	strh r1, [r0, #0x66]
	ldr r0, [r4]
	add r0, r0, #0x1900
	ldrsh r1, [r0, #0x66]
	ldrsh r0, [r0, #0x64]
	cmp r1, r0
	blt _02343918
	ldr r1, _02343FB4 @ =0x000038A2
	mov r0, #0x1c
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02343FB8 @ =0x00005013
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r1, [r1]
	mov r0, #0
	str r2, [r1]
	b _02344188
_023438D8:
	strb fp, [sb]
	ldr r0, [r4]
	add r2, r0, sl
	add r0, r0, #0x1000
	ldr r1, [r2, #0x1c]
	ldr r0, [r0, #0x958]
	ldr r2, [r2, #0x20]
	bl FUN_0232D188
	ldr r1, [r4]
	mov r0, #4
	add r1, r1, #0x1000
	ldr r1, [r1, #0x958]
	bl FUN_02338C4C
	ldr r0, [r4]
	mov r8, #1
	str r5, [r0]
_02343918:
	cmp r8, #0
	beq _023437F4
_02343920:
	bl FUN_02338EC4
	cmp r0, #4
	bne _02343AAC
	mov r0, #0
	bl FUN_02338E1C
	ldr r1, _02342FD0 @ =0x02346BC8
	mov r2, #0xb0
	ldr r5, [r1]
	mov r4, r0
	add r1, r5, #0x1900
	ldrsh r1, [r1, #0x66]
	add r3, r5, #0x10
	add r1, r5, r1, lsl #1
	add r1, r1, #0x1900
	ldrsh r1, [r1, #0x68]
	smlabb r5, r1, r2, r3
	bl FUN_0232D1BC
	cmp r0, #0
	beq _023439C4
	mov r0, r4
	mov r1, r5
	bl FUN_0232D1F4
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x95c]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r5, #0xad]
	mov r0, #2
	strb r0, [r5]
	ldrb r0, [r5, #4]
	bl FUN_02051380
	ldr r1, _02342FD0 @ =0x02346BC8
	strb r0, [r5, #0xac]
	ldr r0, [r1]
	mov r1, #1
	add r0, r0, #0x1000
	strb r1, [r0, #0x9d4]
	b _023439CC
_023439C4:
	mov r0, #0
	strb r0, [r5]
_023439CC:
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r0, [r1]
	add r0, r0, #0x1900
	ldrsh r2, [r0, #0x66]
	add r2, r2, #1
	strh r2, [r0, #0x66]
	ldr r2, [r1]
	add r0, r2, #0x1900
	ldrsh r1, [r0, #0x66]
	ldrsh r0, [r0, #0x64]
	cmp r1, r0
	ldrlt r0, _02343FB0 @ =0x0000511A
	strlt r0, [r2]
	blt _02344184
	add r0, r2, #0x1000
	ldrb r1, [r0, #0x9d5]
	cmp r1, #0
	beq _02343A44
	ldr r1, _02343FB4 @ =0x000038A2
	mov r0, #0x1c
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02343FB8 @ =0x00005013
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02343A44:
	ldrb r0, [r0, #0x9d4]
	cmp r0, #0
	mov r0, #0x1c
	beq _02343A80
	ldr r1, _02343FBC @ =0x0000388B
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02343A80:
	ldr r1, _02343FC0 @ =0x0000388C
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02343AAC:
	cmp r0, #8
	cmpne r0, #6
	bne _02344184
	bl FUN_02338B08
	mov r0, #2
	b _02344188
_02343AC4:
	bl FUN_02338EC4
	mov r5, r0
	bl FUN_02066494
	mov r4, r0
	add r1, sp, #0x12
	mov r0, #0
	bl FUN_020061EC
	bl FUN_0204AE60
	cmp r0, #0
	moveq r0, #0
	beq _02343B08
	add r0, sp, #0x40
	bl FUN_02006C1C
	add r0, sp, #0x40
	mov r1, #1
	mov r2, #0
	bl FUN_02006C8C
_02343B08:
	ldrh r1, [sp, #0x12]
	cmp r1, #0
	cmpeq r0, #0
	ldrne r0, _02342FD0 @ =0x02346BC8
	ldrne r1, _02342F84 @ =0x00002A30
	ldrne r0, [r0]
	addne r0, r0, #0x1000
	strne r1, [r0, #0xae0]
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xae0]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0xae0]
	cmp r5, #5
	bne _02343B68
	bl FUN_02046D20
	bl FUN_02338C34
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343F84 @ =0x00004008
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343B68:
	cmp r4, #0x1f
	beq _02343B88
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xae0]
	cmp r0, #0
	bgt _02344184
_02343B88:
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x9d4]
	cmp r0, #0
	mov r0, #0x1c
	beq _02343BD0
	ldr r1, _02343FBC @ =0x0000388B
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02343BD0:
	ldr r1, _02343FC0 @ =0x0000388C
	bl FUN_02066468
	ldr r1, _02342FD0 @ =0x02346BC8
	ldr r3, _02342F84 @ =0x00002A30
	ldr r0, [r1]
	ldr r2, _02342F88 @ =0x00004007
	add r0, r0, #0x1000
	str r3, [r0, #0xae0]
	ldr r0, [r1]
	str r2, [r0]
	b _02344184
_02343BFC:
	bl ov03_023442D0
	mov r0, r4
	ldr r1, _02343FC4 @ =0x00008002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343C14:
	bl ov03_02344300
	cmp r0, #1
	bne _02343D6C
	bl ov03_0233CAB8
	cmp r0, #1
	bne _02343C64
	bl ov03_0233CFD4
	cmp r0, #0
	mov r0, #0x1c
	beq _02343C48
	ldr r1, _02343FC8 @ =0x00003882
	bl FUN_02066468
	b _02343C50
_02343C48:
	ldr r1, _02343FCC @ =0x00003883
	bl FUN_02066468
_02343C50:
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343FD0 @ =0x00007002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343C64:
	bl ov03_0233CAB8
	cmp r0, #3
	bne _02343C90
	ldr r1, _02343FD4 @ =0x00003857
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, r4
	ldr r1, _02343FD0 @ =0x00007002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343C90:
	bl ov03_0233CAB8
	cmp r0, #0
	bne _02343D64
	mov r1, r4
	ldr r1, [r1]
	add r0, sp, #0x130
	add r1, r1, #0xdd
	ldr r6, [r5, #0x1c]
	add r7, r1, #0x1900
	ldr r4, [r5, #0x20]
	bl FUN_02023690
	ldrb r0, [r5, #0xbd]
	cmp r0, #0
	ldrne r0, _02343FD8 @ =0x0000385F
	ldreq r0, _02343FDC @ =0x00003862
	lsl r1, r0, #0x10
	mov r0, r7
	lsr r1, r1, #0x10
	bl FUN_020258B8
	ldr r2, _02343FE0 @ =0x00002710
	mov r0, r6
	mov r1, r4
	mov r3, #0
	bl FUN_0208FE48
	str r0, [sp, #0x15c]
	ldr r2, _02343FE0 @ =0x00002710
	mov r0, r6
	mov r1, r4
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _02343FE0 @ =0x00002710
	mov r3, #0
	bl FUN_0208FE48
	str r0, [sp, #0x158]
	ldr r2, _02343FE4 @ =0x05F5E100
	mov r1, r4
	mov r0, r6
	mov r3, #0
	bl FUN_0208FE3C
	ldr r2, _02343FE0 @ =0x00002710
	mov r3, #0
	bl FUN_0208FE48
	str r0, [sp, #0x154]
	ldr r1, _02343FE8 @ =0x00003867
	mov r0, #0x1c
	add r2, sp, #0x130
	str r7, [sp, #0x168]
	bl FUN_02066488
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343FD0 @ =0x00007002
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343D64:
	mov r0, #3
	b _02344188
_02343D6C:
	cmp r0, #3
	moveq r0, #4
	beq _02344188
	cmp r0, #2
	bne _02344184
	mov r0, #1
	b _02344188
_02343D88:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, r4
	ldreq r0, [r0]
	moveq r1, #0x8000
	streq r1, [r0]
	b _02344184
_02343DA4:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, r4
	ldreq r0, [r0]
	moveq r1, #0x8000
	streq r1, [r0]
	b _02344184
_02343DC0:
	bl FUN_02066494
	mov r4, r0
	bl FUN_020698B8
	cmp r4, #0x1f
	bne _02344184
	bl FUN_02069904
	ldr r0, _02342FD0 @ =0x02346BC8
	ldr r1, _02343FEC @ =0x00006005
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343DEC:
	add r0, r5, #0x1a8
	add r0, r0, #0x1800
	bl FUN_0206351C
	mov r2, r4
	ldr r0, [r2]
	mov r3, #2
	add r0, r0, #0x1000
	strb r3, [r0, #0x9aa]
	ldr r3, [r2]
	mov r1, #0xb0
	ldr r2, [r3, #8]
	add r3, r3, #0x24
	mla r1, r2, r1, r3
	mov r0, #6
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	ldrsh r5, [r0, #0xa2]
	add r2, sp, #0x10
	mov r1, #0
	cmp r5, #0
	beq _02343E94
	ldr r3, [r4]
	add r3, r3, #0x1900
	strh r5, [r3, #0xbc]
	ldrh r5, [r0, #0xa0]
	ldr r3, [r4]
	add r0, r0, #4
	add r3, r3, #0x1900
	strh r5, [r3, #0xba]
	bl FUN_020630A4
	mov r0, r4
	ldr r0, [r0]
	ldrsh r1, [sp, #0x10]
	add r0, r0, #0xbe
	mov r2, #0
	add r0, r0, #0x1900
	bl FUN_0200CF58
	mov r0, r4
	mov r1, #2
	b _02343EC0
_02343E94:
	add r0, r0, #4
	bl FUN_020630A4
	mov r0, r4
	ldr r0, [r0]
	ldrsh r1, [sp, #0x10]
	add r0, r0, #0x1b8
	mov r2, #0
	add r0, r0, #0x1800
	bl FUN_0200CF58
	mov r0, r4
	mov r1, #1
_02343EC0:
	ldr r0, [r0]
	ldr r3, _02343FF0 @ =0x02346BC8
	add r0, r0, #0x1000
	str r1, [r0, #0x9b4]
	ldr r0, [r3]
	mov r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #0x9d0]
	ldr r0, [r3]
	mov r2, #0x10
	add r0, r0, #0x1a8
	add r0, r0, #0x1800
	bl FUN_0203D438
	ldr r0, _02343FF0 @ =0x02346BC8
	ldr r1, _02343FF4 @ =0x00006006
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_02343F08:
	bl FUN_0203D538
	cmp r0, #1
	bne _02344184
	mov r4, #0
	bl FUN_0203EFD4
	ldr r0, _02343FF0 @ =0x02346BC8
	ldr r2, [r0]
	ldr r1, [r2, #8]
	add r1, r1, #1
	str r1, [r2, #8]
	ldr r6, [r0]
	mov r0, #0xb0
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	b _02343FFC
_02343F44:
	mul r2, r3, r0
	add r1, r6, r2
	ldrb r1, [r1, #0x10]
	cmp r1, #6
	bne _02343FF8
	ldr r0, _02343FF0 @ =0x02346BC8
	ldr r1, [r0]
	add r0, r1, #0x10
	str r3, [r1, #8]
	add r4, r0, r2
	b _02344004
	.align 2, 0
_02343F70: .4byte 0xD4A51000
_02343F74: .4byte 0x00005006
_02343F78: .4byte 0x02346BCC
_02343F7C: .4byte 0x00003885
_02343F80: .4byte 0x00005053
_02343F84: .4byte 0x00004008
_02343F88: .4byte 0x00005003
_02343F8C: .4byte 0x00005004
_02343F90: .4byte 0x0234675C
_02343F94: .4byte 0x000038A7
_02343F98: .4byte 0x00005010
_02343F9C: .4byte 0x00005011
_02343FA0: .4byte 0x00005007
_02343FA4: .4byte 0x00005109
_02343FA8: .4byte 0x0000388A
_02343FAC: .4byte 0x00005112
_02343FB0: .4byte 0x0000511A
_02343FB4: .4byte 0x000038A2
_02343FB8: .4byte 0x00005013
_02343FBC: .4byte 0x0000388B
_02343FC0: .4byte 0x0000388C
_02343FC4: .4byte 0x00008002
_02343FC8: .4byte 0x00003882
_02343FCC: .4byte 0x00003883
_02343FD0: .4byte 0x00007002
_02343FD4: .4byte 0x00003857
_02343FD8: .4byte 0x0000385F
_02343FDC: .4byte 0x00003862
_02343FE0: .4byte 0x00002710
_02343FE4: .4byte 0x05F5E100
_02343FE8: .4byte 0x00003867
_02343FEC: .4byte 0x00006005
_02343FF0: .4byte 0x02346BC8
_02343FF4: .4byte 0x00006006
_02343FF8:
	add r3, r3, #1
_02343FFC:
	cmp r3, r5
	blt _02343F44
_02344004:
	cmp r4, #0
	beq _023440CC
	add r0, sp, #0xe0
	bl FUN_02023690
	add r1, r4, #0x14
	mov r0, #4
	bl FUN_0205BA0C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B77C
	mov r5, r0
	ldrb r0, [r4, #0xae]
	bl FUN_0205BD5C
	mov r1, r0
	add r0, r4, #0x9e
	bl ov03_023441EC
	cmp r0, #0
	movne r0, #0
	strhne r0, [r4, #0xa2]
	mov r0, r5
	mov r1, r4
	mov r2, #0xb0
	bl FUN_020032D4
	add r0, sp, #0x16
	mov r1, #0x2a
	bl FUN_02003250
	bl FUN_020205A0
	ldrsb r1, [r4, #0x1c]
	cmp r1, r0
	add r0, sp, #0x16
	bne _02344090
	add r1, r4, #0x1d
	mov r2, #0x14
	bl FUN_020251F4
	b _02344098
_02344090:
	ldr r1, _02344190 @ =0x000038C9
	bl FUN_020258B8
_02344098:
	ldr r1, _02344194 @ =0x00003890
	add r3, sp, #0x16
	add r2, sp, #0xe0
	mov r0, #0x1c
	str r3, [sp, #0x118]
	bl FUN_02066488
	ldr r0, _02343FF0 @ =0x02346BC8
	ldr r2, _02344198 @ =0x00006004
	ldr r1, [r0]
	mov r0, r4
	str r2, [r1]
	bl FUN_02069790
	b _02344184
_023440CC:
	ldr r0, _02343FF0 @ =0x02346BC8
	mov r1, #0x8000
	ldr r0, [r0]
	str r1, [r0]
	b _02344184
_023440E0:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344184
	mov r0, #2
	b _02344188
_023440F4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344184
	mov r0, #1
	b _02344188
_02344108:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344184
	mov r0, #3
	b _02344188
_0234411C:
	bl FUN_0233769C
	mov r0, r4
	ldr r1, _0234419C @ =0x0000E001
	ldr r0, [r0]
	str r1, [r0]
_02344130:
	bl FUN_02337718
	sub r0, r0, #1
	cmp r0, #2
	bhi _02344184
	bl FUN_023376DC
	ldr r0, _02343FF0 @ =0x02346BC8
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xae4]
	cmp r0, #1
	movne r0, #2
	strne r0, [r1]
	bne _02344170
	ldr r0, _02343F74 @ =0x00005006
	str r0, [r1]
	bl FUN_02046D20
_02344170:
	ldr r0, _02343FF0 @ =0x02346BC8
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0xae4]
_02344184:
	mov r0, #0
_02344188:
	add sp, sp, #0x310
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02344190: .4byte 0x000038C9
_02344194: .4byte 0x00003890
_02344198: .4byte 0x00006004
_0234419C: .4byte 0x0000E001
	arm_func_end ov03_02340DB4

	arm_func_start ov03_023441A0
ov03_023441A0: @ 0x023441A0
	push {r3, lr}
	ldr r0, _023441E8 @ =0x02346BC8
	mov r1, #0x98
	ldr r0, [r0]
	add r0, r0, #0x268
	add r0, r0, #0x1400
	bl FUN_02003250
	ldr r0, _023441E8 @ =0x02346BC8
	mov r1, #6
	ldr r0, [r0]
	add r0, r0, #0x1700
	bl FUN_02003250
	ldr r0, _023441E8 @ =0x02346BC8
	ldr r0, [r0]
	add r1, r0, #0x1700
	add r0, r0, #0x1000
	str r1, [r0, #0x6c8]
	pop {r3, pc}
	.align 2, 0
_023441E8: .4byte 0x02346BC8
	arm_func_end ov03_023441A0

	arm_func_start ov03_023441EC
ov03_023441EC: @ 0x023441EC
	push {r3, r4, r5, lr}
	mov r5, r0
	ldrsh r0, [r5, #4]
	mov r4, r1
	cmp r0, #0
	beq _023442C8
	bl FUN_0200EB58
	cmp r0, #0
	beq _02344224
	ldrsh r0, [r5, #4]
	mov r1, r4
	bl FUN_02062DDC
	cmp r0, #0
	bne _0234422C
_02344224:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0234422C:
	ldrsh r0, [r5, #4]
	bl FUN_0200E808
	cmp r0, #0xc
	bgt _0234425C
	bge _02344294
	cmp r0, #1
	bgt _023442C0
	cmp r0, #0
	blt _023442C0
	cmpne r0, #1
	beq _02344278
	b _023442C0
_0234425C:
	cmp r0, #0xe
	bgt _023442C0
	cmp r0, #0xd
	blt _023442C0
	cmpne r0, #0xe
	beq _02344294
	b _023442C0
_02344278:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0234428C
	cmp r0, #0x64
	blo _023442C8
_0234428C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02344294:
	ldrsh r0, [r5, #2]
	bl FUN_0200EB58
	cmp r0, #0
	beq _023442B8
	ldrsh r0, [r5, #2]
	mov r1, r4
	bl FUN_02062DDC
	cmp r0, #0
	bne _023442C8
_023442B8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_023442C0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_023442C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov03_023441EC

	arm_func_start ov03_023442D0
ov03_023442D0: @ 0x023442D0
	ldr r2, _023442F8 @ =0x02346BC8
	mov r0, #0
	ldr r1, [r2]
	ldr ip, _023442FC @ =FUN_022BD264
	add r1, r1, #0x1000
	str r0, [r1, #0x9d8]
	ldr r1, [r2]
	add r1, r1, #0x1000
	strb r0, [r1, #0x9dc]
	bx ip
	.align 2, 0
_023442F8: .4byte 0x02346BC8
_023442FC: .4byte FUN_022BD264
	arm_func_end ov03_023442D0

	arm_func_start ov03_02344300
ov03_02344300: @ 0x02344300
	push {r3, r4, r5, lr}
	ldr r0, _02344420 @ =0x02346BC8
	ldr r5, [r0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x9d8]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02344418
_02344320: @ jump table
	b _02344334 @ case 0
	b _02344350 @ case 1
	b _02344380 @ case 2
	b _023443F4 @ case 3
	b _02344408 @ case 4
_02344334:
	bl FUN_022BD780
	ldr r1, _02344424 @ =0x0000023B
	mov r0, #0
	bl FUN_02066468
	add r0, r5, #0x1000
	mov r1, #1
	str r1, [r0, #0x9d8]
_02344350:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344418
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl FUN_02029F88
	add r0, r5, #0x1000
	mov r1, #2
	str r1, [r0, #0x9d8]
	bl FUN_02003B94
	b _02344418
_02344380:
	mov r0, #3
	bl FUN_02048F84
	mov r4, r0
	bl FUN_02003BC8
	bl FUN_02029FBC
	cmp r4, #0
	bne _023443CC
	mov r0, #0x1c
	mov r1, #0x23c
	bl FUN_02066468
	add r0, r5, #0x1000
	mov r2, #3
	ldr r1, _02344420 @ =0x02346BC8
	str r2, [r0, #0x9d8]
	ldr r0, [r1]
	mov r1, #1
	add r0, r0, #0x1000
	strb r1, [r0, #0x9dc]
	b _02344418
_023443CC:
	cmp r4, #1
	moveq r0, #3
	popeq {r3, r4, r5, pc}
	ldr r1, _02344428 @ =0x00000239
	mov r0, #0x1c
	bl FUN_02066468
	add r0, r5, #0x1000
	mov r1, #4
	str r1, [r0, #0x9d8]
	b _02344418
_023443F4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02344418
	mov r0, #1
	pop {r3, r4, r5, pc}
_02344408:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #2
	popeq {r3, r4, r5, pc}
_02344418:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02344420: .4byte 0x02346BC8
_02344424: .4byte 0x0000023B
_02344428: .4byte 0x00000239
	arm_func_end ov03_02344300

	arm_func_start ov03_0234442C
ov03_0234442C: @ 0x0234442C
	push {r3, lr}
	mov r0, #4
	mov r1, #8
	bl FUN_02001170
	ldr r2, _02344460 @ =0x02346BD4
	mov r1, #4
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _02344460 @ =0x02346BD4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02344460: .4byte 0x02346BD4
	arm_func_end ov03_0234442C

	arm_func_start ov03_02344464
ov03_02344464: @ 0x02344464
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	ldr r0, _023446E8 @ =0x02346BD4
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _023446DC
_02344484: @ jump table
	b _023444B4 @ case 0
	b _023444CC @ case 1
	b _023444E0 @ case 2
	b _023444F8 @ case 3
	b _02344574 @ case 4
	b _02344588 @ case 5
	b _023445A0 @ case 6
	b _023445CC @ case 7
	b _02344634 @ case 8
	b _02344660 @ case 9
	b _02344674 @ case 10
	b _023446A0 @ case 11
_023444B4:
	ldr r1, _023446EC @ =0x000038BD
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, #1
	str r0, [r4]
	b _023446DC
_023444CC:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #2
	streq r0, [r4]
	b _023446DC
_023444E0:
	bl FUN_02046D20
	mov r0, #0x12
	bl FUN_020668B4
	mov r0, #3
	str r0, [r4]
	b _023446DC
_023444F8:
	bl FUN_02066A44
	cmp r0, #0
	beq _023446DC
	bl FUN_020674E8
	mov r6, r0
	cmp r6, #0
	ble _02344568
	add r0, sp, #4
	mov r1, #0x20
	bl FUN_02067524
	mov r7, #0
	add r5, sp, #4
	b _02344544
_0234452C:
	lsl r0, r7, #1
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bl FUN_0205B7C8
	add r7, r7, #1
_02344544:
	cmp r7, r6
	blt _0234452C
	bl FUN_02067664
	ldr r1, _023446F0 @ =0x000038BE
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, #4
	str r0, [r4]
	b _023446DC
_02344568:
	bl FUN_02067664
	mov r0, #1
	b _023446E0
_02344574:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #5
	streq r0, [r4]
	b _023446DC
_02344588:
	ldr r1, _023446F4 @ =0x0000023B
	mov r0, #0
	bl FUN_02066468
	mov r0, #6
	str r0, [r4]
	b _023446DC
_023445A0:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _023446DC
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl FUN_02029F88
	mov r0, #7
	str r0, [r4]
	bl FUN_02003B94
	b _023446DC
_023445CC:
	mov r0, #3
	bl FUN_02048F84
	mov r4, r0
	bl FUN_02003BC8
	bl FUN_02029FBC
	cmp r4, #0
	bne _02344608
	mov r0, #0x1c
	mov r1, #0x23c
	bl FUN_02066468
	ldr r0, _023446E8 @ =0x02346BD4
	mov r1, #8
	ldr r0, [r0]
	str r1, [r0]
	b _023446DC
_02344608:
	cmp r4, #1
	moveq r0, #2
	beq _023446E0
	ldr r1, _023446F8 @ =0x00000239
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _023446E8 @ =0x02346BD4
	mov r1, #9
	ldr r0, [r0]
	str r1, [r0]
	b _023446DC
_02344634:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _023446DC
	mov r0, #0x12
	bl FUN_02067584
	cmp r0, #0
	movne r0, #1
	bne _023446E0
	mov r0, #0xa
	str r0, [r4]
	b _023446DC
_02344660:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _023446DC
	mov r0, #1
	b _023446E0
_02344674:
	mov r0, #8
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _023446FC @ =0x023467A4
	mov r1, r0
	mov r3, #0x38c0
	bl FUN_020663C8
	mov r0, #0xb
	str r0, [r4]
	b _023446DC
_023446A0:
	bl FUN_02066434
	mov r5, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #8
	bl FUN_023375D0
	cmp r5, #0x1d
	moveq r0, #2
	streq r0, [r4]
	beq _023446DC
	sub r0, r5, #0x1e
	cmp r0, #1
	movls r0, #1
	bls _023446E0
_023446DC:
	mov r0, #0
_023446E0:
	add sp, sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_023446E8: .4byte 0x02346BD4
_023446EC: .4byte 0x000038BD
_023446F0: .4byte 0x000038BE
_023446F4: .4byte 0x0000023B
_023446F8: .4byte 0x00000239
_023446FC: .4byte 0x023467A4
	arm_func_end ov03_02344464

	arm_func_start ov03_02344700
ov03_02344700: @ 0x02344700
	push {r3, lr}
	ldr r0, _02344728 @ =0x02346BD4
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _02344728 @ =0x02346BD4
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02344728: .4byte 0x02346BD4
	arm_func_end ov03_02344700

	arm_func_start ov03_0234472C
ov03_0234472C: @ 0x0234472C
	push {r3, lr}
	mov r0, #0xc
	mov r1, #8
	bl FUN_02001170
	ldr r2, _02344788 @ =0x02346BD8
	mov r1, #0xc
	str r0, [r2]
	bl FUN_02003250
	ldr r1, _02344788 @ =0x02346BD8
	mov r2, #0
	ldr r0, [r1]
	sub r3, r2, #2
	str r2, [r0]
	ldr r2, [r1]
	mov r0, #0xa
	strb r3, [r2, #4]
	ldr r1, [r1]
	strb r3, [r1, #5]
	bl FUN_023375C0
	ldr r1, _02344788 @ =0x02346BD8
	ldr r1, [r1]
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_02344788: .4byte 0x02346BD8
	arm_func_end ov03_0234472C

	arm_func_start ov03_0234478C
ov03_0234478C: @ 0x0234478C
	push {r3, lr}
	ldr r0, _023447B4 @ =0x02346BD8
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _023447B4 @ =0x02346BD8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_023447B4: .4byte 0x02346BD8
	arm_func_end ov03_0234478C

	arm_func_start ov03_023447B8
ov03_023447B8: @ 0x023447B8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x138
	ldr r0, _02344934 @ =0x02346BD8
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02344928
_023447D8: @ jump table
	b _023447E8 @ case 0
	b _02344838 @ case 1
	b _023448A0 @ case 2
	b _023448F4 @ case 3
_023447E8:
	ldr r1, _02344938 @ =0x00003C4F
	mov r0, #0x10
	strh r1, [sp, #0xa8]
	str r0, [sp, #0xac]
	ldr r0, [r4, #8]
	str r0, [sp, #0xa0]
	bl FUN_02046D20
	mov r0, #0xa
	str r0, [sp]
	mov r5, #8
	ldr r0, _0234493C @ =0x02346AAC
	ldr r1, _02344940 @ =0x00041833
	ldr r3, _02344944 @ =0x02344954
	add r2, sp, #0xa0
	str r5, [sp, #4]
	bl FUN_0202BA20
	strb r0, [r4, #4]
	mov r0, #1
	str r0, [r4]
	b _02344928
_02344838:
	ldrsb r0, [r4, #4]
	bl FUN_0202BCFC
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0xa
	bl FUN_023375D0
	ldrsb r0, [r4, #4]
	bl FUN_0202BCBC
	cmp r0, #0
	bne _02344928
	ldrsb r0, [r4, #4]
	bl FUN_0202BD10
	mov r5, r0
	ldrsb r0, [r4, #4]
	bl FUN_0202836C
	ldrsb r0, [r4, #4]
	bl FUN_0202BC44
	mvn r0, #1
	strb r0, [r4, #4]
	cmp r5, #0
	movlt r0, #1
	blt _0234492C
	str r5, [r4, #8]
	mov r0, #2
	str r0, [r4]
	b _02344928
_023448A0:
	mov r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r4, #8]
	mov r1, #0xa
	add r0, r0, #0xc50
	add r0, r0, #0x3000
	strh r0, [sp, #0x10]
	ldr r0, [r4, #8]
	mov ip, #1
	str r0, [sp, #8]
	str r1, [sp]
	ldr r0, _02344948 @ =0x02346A9C
	ldr r1, _0234494C @ =0x00009833
	ldr r3, _02344950 @ =ov03_02344970
	add r2, sp, #8
	str ip, [sp, #4]
	bl FUN_020305B4
	strb r0, [r4, #5]
	mov r0, #3
	str r0, [r4]
	b _02344928
_023448F4:
	ldrsb r0, [r4, #5]
	bl FUN_020308C4
	cmp r0, #0
	bne _02344928
	ldrsb r0, [r4, #5]
	bl FUN_02030A18
	str r0, [r4, #8]
	ldrsb r0, [r4, #5]
	bl FUN_020308A0
	mvn r0, #1
	strb r0, [r4, #5]
	mov r0, #0
	str r0, [r4]
_02344928:
	mov r0, #0
_0234492C:
	add sp, sp, #0x138
	pop {r3, r4, r5, pc}
	.align 2, 0
_02344934: .4byte 0x02346BD8
_02344938: .4byte 0x00003C4F
_0234493C: .4byte 0x02346AAC
_02344940: .4byte 0x00041833
_02344944: .4byte 0x02344954
_02344948: .4byte 0x02346A9C
_0234494C: .4byte 0x00009833
_02344950: .4byte ov03_02344970
	arm_func_end ov03_023447B8
_02344954:
	.byte 0xC5, 0x0E, 0x81, 0xE2, 0x03, 0x0A, 0x80, 0xE2, 0x00, 0x08, 0xA0, 0xE1
	.byte 0x04, 0xC0, 0x9F, 0xE5, 0x20, 0x08, 0xA0, 0xE1, 0x1C, 0xFF, 0x2F, 0xE1, 0xC4, 0x58, 0x02, 0x02

	arm_func_start ov03_02344970
ov03_02344970: @ 0x02344970
	push {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_02030A18
	mov r5, r0
	add r0, r5, #0xc50
	add r0, r0, #0x3000
	lsl r1, r0, #0x10
	mov r0, r4
	lsr r1, r1, #0x10
	bl FUN_02030A2C
	add r0, r5, #0x5a
	add r0, r0, #0x3c00
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020258C4
	mov r3, r0
	mov r0, r4
	mov r1, #4
	mov r2, #0x10
	bl FUN_02026214
	pop {r3, r4, r5, pc}
	arm_func_end ov03_02344970

	arm_func_start ov03_023449C4
ov03_023449C4: @ 0x023449C4
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #0x14c
	mov r1, #8
	bl FUN_02001170
	ldr r1, _02344A50 @ =0x02346BDC
	str r0, [r1]
	bl FUN_02044094
	bl FUN_020440DC
	bl FUN_02043218
	ldr r0, _02344A50 @ =0x02346BDC
	mov r1, #0x14c
	ldr r0, [r0]
	bl FUN_02003250
	mov ip, #0
	ldr r0, _02344A50 @ =0x02346BDC
	ldr r2, _02344A54 @ =0x00001004
	ldr r1, [r0]
	sub r3, ip, #1
	str r2, [r1]
	ldr r1, [r0]
	sub r2, ip, #2
	strb ip, [r1, #0xc]
	ldr r1, [r0]
	str r3, [r1, #0x10]
	ldr r1, [r0]
	strb r2, [r1, #0x14]
	ldr r1, [r0]
	str r5, [r1, #4]
	ldr r1, [r0]
	str r4, [r1, #8]
	ldr r0, [r0]
	strb ip, [r0, #0x149]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02344A50: .4byte 0x02346BDC
_02344A54: .4byte 0x00001004
	arm_func_end ov03_023449C4

	arm_func_start ov03_02344A58
ov03_02344A58: @ 0x02344A58
	push {r3, lr}
	ldr r0, _02344A8C @ =0x02346BDC
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_020440B8
	ldr r0, _02344A8C @ =0x02346BDC
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _02344A8C @ =0x02346BDC
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02344A8C: .4byte 0x02346BDC
	arm_func_end ov03_02344A58

	arm_func_start ov03_02344A90
ov03_02344A90: @ 0x02344A90
	ldr r0, _02344AA0 @ =0x02346BDC
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02344AA0: .4byte 0x02346BDC
	arm_func_end ov03_02344A90

	arm_func_start ov03_02344AA4
ov03_02344AA4: @ 0x02344AA4
	ldr r0, _02344AB4 @ =0x02346BDC
	ldr r0, [r0]
	ldrb r0, [r0, #0x149]
	bx lr
	.align 2, 0
_02344AB4: .4byte 0x02346BDC
	arm_func_end ov03_02344AA4

	arm_func_start ov03_02344AB8
ov03_02344AB8: @ 0x02344AB8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3b4
	ldr r3, _02345A5C @ =0x02346BDC
	ldr r4, [r3]
	ldm r4, {r1, r7}
	cmp r1, #0x3500
	bgt _02344C48
	bge _02345F68
	ldr r0, _02345A60 @ =0x00003032
	cmp r1, r0
	bgt _02344BA0
	bge _023457F4
	ldr r3, _02345A64 @ =0x00002010
	cmp r1, r3
	bgt _02344B68
	bge _023456AC
	sub r0, r3, #0xe
	cmp r1, r0
	bgt _02344B30
	bge _0234557C
	ldr r2, _02345A68 @ =0x00001005
	cmp r1, r2
	bgt _02346640
	sub r0, r2, #1
	cmp r1, r0
	blt _02346640
	beq _02344D40
	cmp r1, r2
	beq _02345250
	b _02346640
_02344B30:
	sub r0, r3, #0xb
	cmp r1, r0
	bgt _02346640
	sub r0, r3, #0xd
	cmp r1, r0
	blt _02346640
	beq _023455F0
	sub r0, r3, #0xc
	cmp r1, r0
	beq _02345618
	sub r0, r3, #0xb
	cmp r1, r0
	beq _02345690
	b _02346640
_02344B68:
	sub r2, r0, #0x31
	cmp r1, r2
	bgt _02344B90
	sub r0, r0, #0x31
	cmp r1, r0
	bge _02345758
	add r0, r3, #1
	cmp r1, r0
	beq _023456C8
	b _02346640
_02344B90:
	sub r0, r0, #1
	cmp r1, r0
	beq _023457C8
	b _02346640
_02344BA0:
	add r2, r0, #0x22
	cmp r1, r2
	bgt _02344C08
	bge _02345D00
	add r2, r0, #4
	cmp r1, r2
	bgt _02344BF8
	add r2, r0, #2
	cmp r1, r2
	blt _02344BE8
	beq _02345898
	add r2, r0, #3
	cmp r1, r2
	beq _023459F8
	add r0, r0, #4
	cmp r1, r0
	beq _02345C64
	b _02346640
_02344BE8:
	add r0, r0, #1
	cmp r1, r0
	beq _02345818
	b _02346640
_02344BF8:
	add r0, r0, #0x21
	cmp r1, r0
	beq _02345C88
	b _02346640
_02344C08:
	add r2, r0, #0x34
	cmp r1, r2
	bgt _02344C28
	bge _02345D30
	add r2, r0, #0x23
	cmp r1, r2
	beq _02345D1C
	b _02346640
_02344C28:
	cmp r1, #0x3100
	bgt _02344C38
	beq _02345B80
	b _02346640
_02344C38:
	add r0, r0, #0xcf
	cmp r1, r0
	beq _02345C10
	b _02346640
_02344C48:
	ldr r2, _02345A6C @ =0x00003536
	cmp r1, r2
	bgt _02344CC8
	bge _02346588
	sub r0, r2, #0x24
	cmp r1, r0
	bgt _02344C98
	bge _02346628
	sub r0, r2, #0x32
	cmp r1, r0
	bgt _02344C88
	bge _02346010
	sub r0, r2, #0x35
	cmp r1, r0
	beq _02345FE4
	b _02346640
_02344C88:
	sub r0, r2, #0x25
	cmp r1, r0
	beq _023465AC
	b _02346640
_02344C98:
	sub r0, r2, #2
	cmp r1, r0
	bgt _02344CB8
	bge _02346098
	sub r0, r2, #3
	cmp r1, r0
	beq _02346034
	b _02346640
_02344CB8:
	sub r0, r2, #1
	cmp r1, r0
	beq _023461B0
	b _02346640
_02344CC8:
	ldr r2, _02345A70 @ =0x00003701
	cmp r1, r2
	bgt _02344D00
	bge _023463FC
	sub r0, r2, #0x100
	cmp r1, r0
	bgt _02344CF4
	bge _02346374
	cmp r1, #0x3600
	beq _02346324
	b _02346640
_02344CF4:
	cmp r1, #0x3700
	beq _023463AC
	b _02346640
_02344D00:
	add r0, r2, #0x10
	cmp r1, r0
	bgt _02344D20
	bge _023464C8
	add r0, r2, #0xf
	cmp r1, r0
	beq _0234647C
	b _02346640
_02344D20:
	cmp r1, #0x3800
	bgt _02344D30
	beq _02346524
	b _02346640
_02344D30:
	add r0, r2, #0x100
	cmp r1, r0
	beq _02346560
	b _02346640
_02344D40:
	bl ov03_0233CAB8
	cmp r0, #0
	beq _02344D60
	cmp r0, #2
	beq _02344E08
	cmp r0, #4
	beq _02345080
	b _02345240
_02344D60:
	bl ov03_0233CAD8
	cmp r0, #0
	beq _02344D88
	cmp r0, #1
	beq _02344D80
	cmp r0, #2
	beq _02344DC8
	b _02345240
_02344D80:
	mov r0, #1
	b _02346644
_02344D88:
	mov r0, #0
	bl FUN_023375C0
	cmp r0, #3
	blt _02344DA4
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
_02344DA4:
	mov r0, #0
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02345A74 @ =0x02346864
	ldr r3, _02345A78 @ =0x0000385B
	mov r1, r0
	bl FUN_020663C8
	b _02345240
_02344DC8:
	mov r0, #0
	bl FUN_023375C0
	cmp r0, #3
	blt _02344DE4
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
_02344DE4:
	mov r0, #0
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02345A74 @ =0x02346864
	ldr r3, _02345A7C @ =0x0000385C
	mov r1, r0
	bl FUN_020663C8
	b _02345240
_02344E08:
	mov r4, #0
	bl ov03_0233CAD8
	cmp r0, #0
	beq _02344EF0
	cmp r0, #1
	beq _02344E2C
	cmp r0, #2
	beq _02344EF0
	b _02345038
_02344E2C:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A80 @ =0x02346804
	ldr r0, [r0]
	mov r2, #0x20
	add r0, r0, #0xb8
	bl FUN_020032D4
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _02344E68
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A84 @ =0x00003846
	ldr r2, [r0]
	mov r0, #0x11
	strh r1, [r2, #0xb8]
	str r0, [r2, #0xbc]
_02344E68:
	bl ov03_023466A4
	ldr r1, _02345A5C @ =0x02346BDC
	ldrb r0, [r7, #4]
	ldr r4, [r1]
	bl FUN_02051340
	cmp r0, #0
	beq _02344EC4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0204316C
	bl FUN_02043320
	cmp r0, #0
	beq _02344ECC
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	bne _02344ECC
_02344EC4:
	mov r0, #3
	strb r0, [r4, #0xb0]
_02344ECC:
	mov r0, #0
	ldr r4, _02345A88 @ =0x00003872
	bl FUN_023375C0
	cmp r0, #3
	blt _02345038
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
	b _02345038
_02344EF0:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A8C @ =0x02346A04
	ldr r0, [r0]
	mov r2, #0x30
	add r0, r0, #0xb8
	bl FUN_020032D4
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _02344F2C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A84 @ =0x00003846
	ldr r2, [r0]
	mov r0, #0x11
	strh r1, [r2, #0xc0]
	str r0, [r2, #0xc4]
_02344F2C:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r2, [r0]
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	ldrne r1, _02345A90 @ =0x00003848
	movne r0, #0x13
	strhne r1, [r2, #0xc8]
	strne r0, [r2, #0xcc]
	bl ov03_023466A4
	ldr r1, _02345A5C @ =0x02346BDC
	ldrb r0, [r7, #4]
	ldr r4, [r1]
	bl FUN_02051340
	cmp r0, #0
	beq _02344FA8
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0204316C
	bl FUN_02043320
	cmp r0, #0
	beq _02344FB0
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	bne _02344FB0
_02344FA8:
	mov r0, #3
	strb r0, [r4, #0xb1]
_02344FB0:
	ldrb r0, [r7, #4]
	bl FUN_02051398
	cmp r0, #0
	beq _02344FF4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0203C774
	bl FUN_0203AD68
	cmp r0, #0
	beq _0234500C
_02344FF4:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #3
	strbeq r0, [r4, #0xb2]
_0234500C:
	bl ov03_0233CAD8
	cmp r0, #0
	ldreq r4, _02345A94 @ =0x0000386E
	mov r0, #0
	ldrne r4, _02345A98 @ =0x00003871
	bl FUN_023375C0
	cmp r0, #5
	blt _02345038
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
_02345038:
	ldr r1, _02345A5C @ =0x02346BDC
	mov r0, #0
	ldr r5, [r1]
	bl FUN_023375C0
	add r0, r5, r0, lsl #3
	ldr r1, [r0, #0xbc]
	ldr r0, _02345A5C @ =0x02346BDC
	str r1, [r5, #0x18]
	ldr r3, [r0]
	mov r0, #0
	add r1, r3, #0xb8
	str r1, [sp]
	ldr r2, _02345A9C @ =0x00000233
	mov r1, r0
	add r3, r3, #0x18
	str r4, [sp, #4]
	bl FUN_020663DC
	b _02345240
_02345080:
	mov r4, #0
	bl ov03_0233CAD8
	cmp r0, #0
	beq _0234514C
	cmp r0, #1
	beq _023450A4
	cmp r0, #2
	beq _0234514C
	b _023451FC
_023450A4:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AA0 @ =0x02346884
	ldr r0, [r0]
	mov r2, #0x20
	add r0, r0, #0xb8
	bl FUN_020032D4
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _023450E0
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A84 @ =0x00003846
	ldr r2, [r0]
	mov r0, #0x11
	strh r1, [r2, #0xb8]
	str r0, [r2, #0xbc]
_023450E0:
	bl ov03_023466A4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r4, [r0]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0204316C
	bl FUN_02043320
	cmp r0, #0
	beq _02345128
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	moveq r0, #3
	strbeq r0, [r4, #0xb0]
_02345128:
	mov r0, #0
	ldr r4, _02345AA4 @ =0x0000389A
	bl FUN_023375C0
	cmp r0, #3
	blt _023451FC
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
	b _023451FC
_0234514C:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AA8 @ =0x0234697C
	ldr r0, [r0]
	mov r2, #0x28
	add r0, r0, #0xb8
	bl FUN_020032D4
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _02345188
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A84 @ =0x00003846
	ldr r2, [r0]
	mov r0, #0x11
	strh r1, [r2, #0xc0]
	str r0, [r2, #0xc4]
_02345188:
	bl ov03_023466A4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r4, [r0]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0204316C
	bl FUN_02043320
	cmp r0, #0
	beq _023451D0
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	moveq r0, #3
	strbeq r0, [r4, #0xb1]
_023451D0:
	bl ov03_0233CAD8
	cmp r0, #0
	ldreq r4, _02345AAC @ =0x00003898
	mov r0, #0
	ldrne r4, _02345AB0 @ =0x00003899
	bl FUN_023375C0
	cmp r0, #4
	blt _023451FC
	mov r0, #0
	mov r1, r0
	bl FUN_023375D0
_023451FC:
	ldr r1, _02345A5C @ =0x02346BDC
	mov r0, #0
	ldr r5, [r1]
	bl FUN_023375C0
	add r0, r5, r0, lsl #3
	ldr r1, [r0, #0xbc]
	ldr r0, _02345A5C @ =0x02346BDC
	str r1, [r5, #0x18]
	ldr r3, [r0]
	mov r0, #0
	add r1, r3, #0xb8
	str r1, [sp]
	ldr r2, _02345A9C @ =0x00000233
	mov r1, r0
	add r3, r3, #0x18
	str r4, [sp, #4]
	bl FUN_020663DC
_02345240:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A68 @ =0x00001005
	ldr r0, [r0]
	str r1, [r0]
_02345250:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #0
	bl FUN_023375D0
	cmp r4, #0xf
	bne _023452CC
	ldrb r0, [r7, #0xad]
	cmp r0, #0
	bne _02345298
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A64 @ =0x00002010
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345298:
	mov r0, #5
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02345AB4 @ =0x02346824
	ldr r3, _02345AB8 @ =0x0000386D
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345ABC @ =0x00002002
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023452CC:
	cmp r4, #0x10
	bne _0234533C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0234531C
	mov r0, #6
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02345AC0 @ =0x023467BC
	ldr r3, _02345AC4 @ =0x000038AB
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AC8 @ =0x00003001
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234531C:
	ldr r1, _02345ACC @ =0x000038AD
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A60 @ =0x00003032
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234533C:
	cmp r4, #0x11
	bne _023453E4
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, sp, #0x2cc
	bl FUN_02023690
	mov r5, #0
	ldr r2, _02345AD0 @ =0x02346ABC
	mov r0, r4
	add r1, r7, #0x9e
	mov r3, #1
	str r5, [sp]
	bl FUN_0200D310
	add r0, sp, #0x31c
	mov r1, #0x98
	str r4, [sp, #0x304]
	bl FUN_02003250
	mov r0, #1
	bl FUN_023375C0
	ldr r2, _02345AD4 @ =0x023467C0
	ldr r1, _02345AC0 @ =0x023467BC
	ldr r2, [r2, r0, lsl #3]
	ldr r0, _02345AD8 @ =0x000038B1
	str r2, [sp, #0x31c]
	str r1, [sp]
	str r0, [sp, #4]
	add r1, sp, #0x2cc
	mov r0, r5
	str r1, [sp, #8]
	mov r1, r0
	mov r2, #0x33
	add r3, sp, #0x31c
	bl FUN_02066408
	mov r0, r4
	bl FUN_02001188
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345ADC @ =0x00003053
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023453E4:
	cmp r4, #0x12
	bne _0234544C
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _0234542C
	mov r0, #7
	bl FUN_023375C0
	str r0, [sp]
	mov r0, #0
	ldr r2, _02345AC0 @ =0x023467BC
	ldr r3, _02345AE0 @ =0x000038AC
	mov r1, r0
	bl FUN_020663C8
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3500
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234542C:
	ldr r1, _02345AE4 @ =0x000038AE
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AE8 @ =0x00003504
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234544C:
	cmp r4, #0x13
	bne _023454D0
	add r0, sp, #0x27c
	bl FUN_02023690
	ldr r1, _02345A5C @ =0x02346BDC
	add r0, sp, #0x1e4
	ldr r2, [r1]
	mov r1, #0x98
	ldr r2, [r2, #8]
	ldrsh r2, [r2, #8]
	str r2, [sp, #0x27c]
	bl FUN_02003250
	mov r0, #2
	bl FUN_023375C0
	ldr r1, _02345AD4 @ =0x023467C0
	ldr r2, _02345AC0 @ =0x023467BC
	ldr r0, [r1, r0, lsl #3]
	ldr r1, _02345AEC @ =0x000038B3
	str r0, [sp, #0x1e4]
	str r2, [sp]
	mov r0, #0
	str r1, [sp, #4]
	add r2, sp, #0x27c
	str r2, [sp, #8]
	mov r1, r0
	mov r2, #0x33
	add r3, sp, #0x1e4
	bl FUN_02066408
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AF0 @ =0x00003511
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023454D0:
	cmp r4, #9
	moveq r0, #1
	beq _02346644
	cmp r4, #7
	bne _02345524
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _0234551C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02010154
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AF4 @ =0x00003055
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234551C:
	mov r0, #1
	b _02346644
_02345524:
	cmp r4, #0xb
	bne _0234556C
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0
	beq _02345564
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02010154
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AF4 @ =0x00003055
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345564:
	mov r0, #1
	b _02346644
_0234556C:
	cmp r4, #0x1f
	bne _02346640
	mvn r0, #0
	b _02346644
_0234557C:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #5
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _023455B8
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AF8 @ =0x00002003
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023455B8:
	cmp r4, #0x1e
	bne _023455D8
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A64 @ =0x00002010
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023455D8:
	cmp r4, #0x1f
	ldreq r0, _02345A5C @ =0x02346BDC
	ldreq r1, _02345AFC @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
	b _02346640
_023455F0:
	mov r2, #0
	mov r3, r2
	add r1, r4, #0xe8
	mov r0, #7
	bl FUN_020367F0
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B00 @ =0x00002004
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345618:
	bl FUN_02036CD4
	cmp r0, #3
	bne _02345678
	bl FUN_0203755C
	mov r4, r0
	mov r1, r4
	add r0, r7, #0x32
	mov r2, #0x12
	bl FUN_02025404
	add r0, r7, #0x56
	add r1, r4, #0x12
	mov r2, #0x24
	bl FUN_02025404
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, r4
	ldr r0, [r0]
	mov r2, #0x38
	add r0, r0, #0xe8
	bl FUN_020032D4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B04 @ =0x00002005
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345678:
	cmp r0, #2
	ldreq r0, _02345A5C @ =0x02346BDC
	ldreq r1, _02345B04 @ =0x00002005
	ldreq r0, [r0]
	streq r1, [r0]
	b _02346640
_02345690:
	bl FUN_02037468
	cmp r0, #1
	ldreq r0, _02345A5C @ =0x02346BDC
	ldreq r1, _02345AFC @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
	b _02346640
_023456AC:
	mov r0, #0
	bl FUN_02333E60
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B08 @ =0x00002011
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023456C8:
	bl FUN_023346BC
	cmp r0, #2
	bne _02345738
	add r0, sp, #0xe4
	bl FUN_023352EC
	add r1, sp, #0xe4
	add r0, r7, #0x32
	mov r2, #0x12
	mov r3, #1
	bl FUN_0202561C
	add r0, sp, #0xe4
	bl FUN_02335308
	add r1, sp, #0xe4
	add r0, r7, #0x56
	mov r2, #0x24
	mov r3, #1
	bl FUN_0202561C
	bl FUN_0233462C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x38
	ldr r0, [r0]
	add r0, r0, #0xe8
	bl FUN_02003250
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AFC @ =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345738:
	cmp r0, #1
	bne _02346640
	bl FUN_0233462C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AFC @ =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345758:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #6
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _023457AC
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B0C @ =0x000038B4
	ldr r2, [r0]
	mov r3, #0
	mov r0, #0x1c
	strb r3, [r2, #0xc]
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B10 @ =0x00003031
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023457AC:
	sub r0, r4, #0x1e
	cmp r0, #1
	ldrls r0, _02345A5C @ =0x02346BDC
	ldrls r1, _02345AFC @ =0x00001004
	ldrls r0, [r0]
	strls r1, [r0]
	b _02346640
_023457C8:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	ldr r1, _02345ACC @ =0x000038AD
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A60 @ =0x00003032
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023457F4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B14 @ =0x00003033
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345818:
	bl FUN_020433E0
	cmp r0, #0
	bne _02345874
	ldr r0, _02345B18 @ =0x0233C1B4
	ldrsh r0, [r0]
	bl FUN_0204322C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0204316C
	mov r1, #0
	mov r2, #8
	bl FUN_02042CF0
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	strb r0, [r1, #0x14]
	b _02345878
_02345874:
	bl FUN_020433C0
_02345878:
	ldr r0, _02345A5C @ =0x02346BDC
	mov r3, #0
	ldr r2, [r0]
	ldr r1, _02345B1C @ =0x00003034
	strb r3, [r2, #0x148]
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345898:
	bl FUN_02043468
	mov r4, r0
	bl FUN_02043400
	cmp r0, #0
	bne _0234598C
	mvn r0, #0
	cmp r4, r0
	bne _023458DC
	bl FUN_0204317C
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r3, #1
	ldr r2, [r0]
	ldr r1, _02345AFC @ =0x00001004
	strb r3, [r2, #0x14]
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023458DC:
	mov r0, r4
	bl FUN_02043254
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r2, _02345B18 @ =0x0233C1B4
	ldr r1, [r1]
	strh r0, [r2]
	str r4, [r1, #0x10]
	bl ov03_023466A4
	ldr r1, _02345A5C @ =0x02346BDC
	lsl r0, r4, #0x10
	ldr r5, [r1]
	asr r0, r0, #0x10
	bl FUN_02010044
	ldr r1, [r5, #4]
	mov r4, r0
	ldrb r0, [r1, #0xae]
	bl FUN_0205BD5C
	mov r1, r0
	mov r0, r4
	bl FUN_02062DDC
	cmp r0, #0
	moveq r0, #3
	strbeq r0, [r5, #0xb0]
	mov r0, #3
	bl FUN_023375C0
	ldr r1, _02345B20 @ =0x023468E8
	ldr r2, _02345A5C @ =0x02346BDC
	ldr r3, [r1, r0, lsl #3]
	ldr r1, [r2]
	ldr r0, _02345B24 @ =0x023468E4
	str r3, [r1, #0x18]
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r3, [r2]
	ldr r0, _02345B28 @ =0x02346AD8
	ldr r2, _02345A9C @ =0x00000233
	add r3, r3, #0x18
	bl FUN_020663DC
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B2C @ =0x00003035
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234598C:
	bl FUN_02043434
	cmp r0, #0
	beq _02346640
	add r1, sp, #0xe
	mov r0, #0
	bl FUN_0200625C
	ldrh r0, [sp, #0xe]
	tst r0, #8
	beq _02346640
	mov r0, #0
	bl FUN_02017CCC
	mov r0, r4
	bl FUN_02043254
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r2, _02345B18 @ =0x0233C1B4
	ldr r1, [r1]
	strh r0, [r2]
	str r4, [r1, #0x10]
	bl FUN_0204317C
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r3, #1
	ldr r2, [r0]
	mov r1, #0x3100
	strb r3, [r2, #0x14]
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023459F8:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #3
	bl FUN_023375D0
	cmp r4, #0x10
	bne _02345B30
	ldr r0, _02345A5C @ =0x02346BDC
	add r1, r7, #0x9e
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0200FFF4
	bl FUN_0204317C
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r3, #1
	ldr r2, [r0]
	ldr r1, _02345AFC @ =0x00001004
	strb r3, [r2, #0x14]
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
	.align 2, 0
_02345A5C: .4byte 0x02346BDC
_02345A60: .4byte 0x00003032
_02345A64: .4byte 0x00002010
_02345A68: .4byte 0x00001005
_02345A6C: .4byte 0x00003536
_02345A70: .4byte 0x00003701
_02345A74: .4byte 0x02346864
_02345A78: .4byte 0x0000385B
_02345A7C: .4byte 0x0000385C
_02345A80: .4byte 0x02346804
_02345A84: .4byte 0x00003846
_02345A88: .4byte 0x00003872
_02345A8C: .4byte 0x02346A04
_02345A90: .4byte 0x00003848
_02345A94: .4byte 0x0000386E
_02345A98: .4byte 0x00003871
_02345A9C: .4byte 0x00000233
_02345AA0: .4byte 0x02346884
_02345AA4: .4byte 0x0000389A
_02345AA8: .4byte 0x0234697C
_02345AAC: .4byte 0x00003898
_02345AB0: .4byte 0x00003899
_02345AB4: .4byte 0x02346824
_02345AB8: .4byte 0x0000386D
_02345ABC: .4byte 0x00002002
_02345AC0: .4byte 0x023467BC
_02345AC4: .4byte 0x000038AB
_02345AC8: .4byte 0x00003001
_02345ACC: .4byte 0x000038AD
_02345AD0: .4byte 0x02346ABC
_02345AD4: .4byte 0x023467C0
_02345AD8: .4byte 0x000038B1
_02345ADC: .4byte 0x00003053
_02345AE0: .4byte 0x000038AC
_02345AE4: .4byte 0x000038AE
_02345AE8: .4byte 0x00003504
_02345AEC: .4byte 0x000038B3
_02345AF0: .4byte 0x00003511
_02345AF4: .4byte 0x00003055
_02345AF8: .4byte 0x00002003
_02345AFC: .4byte 0x00001004
_02345B00: .4byte 0x00002004
_02345B04: .4byte 0x00002005
_02345B08: .4byte 0x00002011
_02345B0C: .4byte 0x000038B4
_02345B10: .4byte 0x00003031
_02345B14: .4byte 0x00003033
_02345B18: .4byte 0x0233C1B4
_02345B1C: .4byte 0x00003034
_02345B20: .4byte 0x023468E8
_02345B24: .4byte 0x023468E4
_02345B28: .4byte 0x02346AD8
_02345B2C: .4byte 0x00003035
_02345B30:
	cmp r4, #4
	bne _02345B5C
	bl FUN_0204317C
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r3, #1
	ldr r2, [r0]
	mov r1, #0x3100
	strb r3, [r2, #0x14]
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345B5C:
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B14 @ =0x00003033
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345B80:
	ldrsb r1, [r4, #0x14]
	mvn r0, #1
	cmp r1, r0
	bne _02345BFC
	ldr r0, [r4, #0x10]
	add r1, sp, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0200FFAC
	add r0, sp, #0x94
	bl FUN_02023690
	ldrsh r2, [sp, #0x18]
	ldrh r1, [sp, #0x1a]
	add r4, sp, #0x94
	add r0, r2, #0xd1
	add r0, r0, #0x2900
	lsl r0, r0, #0x10
	str r2, [sp, #0xa4]
	str r1, [sp, #0xb8]
	str r4, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0234664C @ =0x02346AC8
	ldr r1, _02346650 @ =0x00001013
	ldr r3, _02346654 @ =0x000008E4
	mov r2, #0
	str r4, [sp, #8]
	bl FUN_0202E3CC
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	strb r0, [r1, #0x14]
_02345BFC:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346658 @ =0x00003101
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345C10:
	ldrsb r0, [r4, #0x14]
	bl FUN_0202E6E4
	cmp r0, #0
	bne _02346640
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r1, #1
	ldr r0, [r0]
	ldrsb r0, [r0, #0x14]
	cmp r0, r1
	beq _02345C4C
	bl FUN_0202E6C8
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x14]
_02345C4C:
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B14 @ =0x00003033
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345C64:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345B14 @ =0x00003033
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345C88:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #1
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02345CE4
	add r0, r7, #0x9e
	bl FUN_0200D81C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _0234665C @ =0x000038B2
	ldr r2, [r0]
	mvn r3, #0
	mov r0, #0x1c
	str r3, [r2, #0x10]
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346660 @ =0x00003054
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345CE4:
	sub r0, r4, #0x1e
	cmp r0, #1
	ldrls r0, _02345A5C @ =0x02346BDC
	ldrls r1, _02345AFC @ =0x00001004
	ldrls r0, [r0]
	strls r1, [r0]
	b _02346640
_02345D00:
	bl FUN_02066494
	cmp r0, #0x1f
	ldreq r0, _02345A5C @ =0x02346BDC
	ldreq r1, _02345AFC @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
	b _02346640
_02345D1C:
	mov r1, #0
	str r1, [r4, #0x144]
	ldr r1, [r3]
	add r0, r0, #0x34
	str r0, [r1]
_02345D30:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r4, [r0]
	ldr r0, [r4, #0x144]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02345E28
_02345D48: @ jump table
	b _02345D5C @ case 0
	b _02345D80 @ case 1
	b _02345DAC @ case 2
	b _02345E04 @ case 3
	b _02345E18 @ case 4
_02345D5C:
	bl ov03_0233CAD8
	cmp r0, #2
	bne _02345D6C
	bl FUN_022BD780
_02345D6C:
	ldr r1, _02346664 @ =0x0000023B
	mov r0, #0
	bl FUN_02066468
	mov r0, #1
	str r0, [r4, #0x144]
_02345D80:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02345E28
	mov r0, #0xe0
	mov r1, #0x88
	mov r2, #1
	bl FUN_02029F88
	mov r0, #2
	str r0, [r4, #0x144]
	bl FUN_02003B94
	b _02345E28
_02345DAC:
	mov r0, #3
	bl FUN_02048F84
	mov r5, r0
	bl FUN_02003BC8
	bl FUN_02029FBC
	cmp r5, #0
	bne _02345DE0
	mov r0, #0x1c
	mov r1, #0x23c
	bl FUN_02066468
	mov r0, #3
	str r0, [r4, #0x144]
	b _02345E28
_02345DE0:
	cmp r5, #1
	moveq r0, #3
	beq _02345E2C
	ldr r1, _02346668 @ =0x00000239
	mov r0, #0x1c
	bl FUN_02066468
	mov r0, #4
	str r0, [r4, #0x144]
	b _02345E28
_02345E04:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02345E28
	mov r0, #1
	b _02345E2C
_02345E18:
	bl FUN_02066494
	cmp r0, #0x1f
	moveq r0, #2
	beq _02345E2C
_02345E28:
	mov r0, #0
_02345E2C:
	cmp r0, #1
	bne _02345F00
	ldrsh r0, [r7, #0xa2]
	cmp r0, #0xb4
	bne _02345EF8
	ldr r1, _02345A5C @ =0x02346BDC
	add r0, sp, #0x10
	ldr r2, [r1]
	ldr r1, _0234666C @ =0x02346AF8
	ldr r3, [r2, #4]
	ldr r2, _02346670 @ =0x0000030F
	ldrb r8, [r3, #0xae]
	bl FUN_02008C3C
	mov r5, #0
	mov fp, r5
	mov r4, #1
	mov r6, #0x400
_02345E70:
	ldr r1, [sp, #0x10]
	mov r0, r6
	add sl, r1, #2
	ldrsh sb, [r1]
	bl FUN_02002274
	b _02345E9C
_02345E88:
	ldrsh r1, [sl]
	cmp r0, r1
	blt _02345EA4
	add sl, sl, #4
	sub sb, sb, #1
_02345E9C:
	cmp sb, #1
	bgt _02345E88
_02345EA4:
	ldrsh r1, [sl, #2]
	mov r2, r5
	add r0, r7, #0x9e
	bl FUN_0200CF58
	mov r0, r8
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, r4
	movne r0, fp
	tst r0, #0xff
	bne _02345EE0
	ldrsh r0, [r7, #0xa2]
	bl FUN_0200EB30
	cmp r0, #0
	beq _02345E70
_02345EE0:
	add r0, sp, #0x10
	bl FUN_02008BD4
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x149]
_02345EF8:
	mov r0, #1
	b _02346644
_02345F00:
	cmp r0, #3
	bne _02345F34
	add r0, r7, #0x9e
	bl FUN_020103AC
	mov r1, #0
	strh r1, [r7, #0xa2]
	ldr r0, _02345A5C @ =0x02346BDC
	strh r1, [r7, #0xa0]
	ldr r0, [r0]
	sub r1, r1, #1
	str r1, [r0, #0x10]
	mov r0, #3
	b _02346644
_02345F34:
	cmp r0, #2
	bne _02346640
	add r0, r7, #0x9e
	bl FUN_020103AC
	mov r1, #0
	strh r1, [r7, #0xa2]
	ldr r0, _02345A5C @ =0x02346BDC
	strh r1, [r7, #0xa0]
	ldr r0, [r0]
	sub r1, r1, #1
	str r1, [r0, #0x10]
	mov r0, #2
	b _02346644
_02345F68:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #7
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _02345FC8
	mov r1, #0
	strh r1, [r7, #0xa2]
	ldr r0, _02345A5C @ =0x02346BDC
	strh r1, [r7, #0xa0]
	ldr r2, [r0]
	sub r3, r1, #1
	ldr r1, _0234665C @ =0x000038B2
	mov r0, #0x1c
	str r3, [r2, #0x10]
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346674 @ =0x00003501
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02345FC8:
	sub r0, r4, #0x1e
	cmp r0, #1
	ldrls r0, _02345A5C @ =0x02346BDC
	ldrls r1, _02345AFC @ =0x00001004
	ldrls r0, [r0]
	strls r1, [r0]
	b _02346640
_02345FE4:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	ldr r1, _02345AE4 @ =0x000038AE
	mov r0, #0x1c
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AE8 @ =0x00003504
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346010:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346034:
	bl FUN_0203A998
	cmp r0, #0
	bne _02346074
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl FUN_0203C774
	mov r1, #0
	bl FUN_02039C2C
	b _02346078
_02346074:
	bl FUN_0203A638
_02346078:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r3, _0234667C @ =0x00003534
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2]
	ldr r0, [r0]
	strb r1, [r0, #0x148]
	b _02346640
_02346098:
	bl FUN_0203A5A8
	cmp r0, #0
	beq _023460F8
	bl FUN_0203A9EC
	cmp r0, #0
	beq _02346640
	add r1, sp, #0xc
	mov r0, #0
	bl FUN_0200625C
	ldrh r0, [sp, #0xc]
	tst r0, #8
	beq _02346640
	bl FUN_0203AA20
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	str r0, [r1, #0x10]
	mov r0, #0
	bl FUN_02017CCC
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3600
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023460F8:
	bl FUN_0203AA20
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _02346124
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AFC @ =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346124:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	str r5, [r0, #0x10]
	bl ov03_023466A4
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r4, [r0]
	bl FUN_02055650
	cmp r5, r0
	beq _02346154
	bl FUN_0205567C
	cmp r5, r0
	bne _0234615C
_02346154:
	mov r0, #3
	strb r0, [r4, #0xb0]
_0234615C:
	mov r0, #4
	bl FUN_023375C0
	ldr r1, _02346680 @ =0x023469D8
	ldr r2, _02345A5C @ =0x02346BDC
	ldr r3, [r1, r0, lsl #3]
	ldr r1, [r2]
	ldr r0, _02346684 @ =0x023469D4
	str r3, [r1, #0x18]
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r3, [r2]
	ldr r0, _02346688 @ =0x02346AE8
	ldr r2, _02345A9C @ =0x00000233
	add r3, r3, #0x18
	bl FUN_020663DC
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _0234668C @ =0x00003535
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023461B0:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #4
	bl FUN_023375D0
	cmp r4, #0x12
	bne _023462A0
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	strb r1, [r2, #0xc]
	bl FUN_020555A8
	ldr r2, _02345A5C @ =0x02346BDC
	mov r1, r0
	ldr r0, [r2]
	ldr r0, [r0, #8]
	bl FUN_02055E14
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xae]
	bl FUN_0205BD40
	cmp r0, #0
	beq _02346288
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #5]
	bl FUN_02051798
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r2, [r1]
	ldr r2, [r2, #8]
	strb r0, [r2, #5]
	ldr r0, [r1]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0xff
	beq _02346280
	bl ov03_0233CAD8
	cmp r0, #2
	bne _02346288
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0x80
	blo _02346288
_02346280:
	mov r0, #0x69
	strb r0, [r1, #5]
_02346288:
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345AFC @ =0x00001004
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023462A0:
	cmp r4, #0x14
	bne _023462C0
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3600
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023462C0:
	cmp r4, #0x15
	bne _023462E0
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3700
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023462E0:
	cmp r4, #0x16
	bne _02346300
	bl FUN_0203A51C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3800
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346300:
	sub r0, r4, #0x1e
	cmp r0, #1
	bhi _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346324:
	ldrsb r1, [r4, #0x14]
	mvn r0, #1
	cmp r1, r0
	bne _02346360
	ldr r1, [r4, #0x10]
	add r0, sp, #0x1c
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl FUN_0205B028
	add r0, sp, #0x1c
	mov r1, #3
	bl FUN_0203F150
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	strb r0, [r1, #0x14]
_02346360:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346690 @ =0x00003601
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346374:
	bl FUN_0203F398
	cmp r0, #1
	bne _02346640
	bl FUN_0203F990
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x14]
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023463AC:
	ldrsb r1, [r4, #0x14]
	mvn r0, #1
	cmp r1, r0
	bne _023463E8
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0203FA64
	mov r1, #0
	mov r2, r1
	mov r0, #9
	bl FUN_0204018C
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	strb r0, [r1, #0x14]
_023463E8:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02345A70 @ =0x00003701
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023463FC:
	bl FUN_020407EC
	cmp r0, #1
	bne _02346424
	bl ov03_023466E8
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346424:
	cmp r0, #2
	cmpne r0, #7
	bne _02346640
	bl FUN_0203FD38
	ldr r2, _02345A5C @ =0x02346BDC
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0x20
	add r0, r0, #0x22
	add r0, r0, #0x100
	bl FUN_020032D4
	bl FUN_02041094
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	add r1, r1, #0x100
	strh r0, [r1, #0x20]
	bl ov03_023466E8
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346694 @ =0x00003710
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234647C:
	ldrsb r1, [r4, #0x14]
	mvn r0, #1
	cmp r1, r0
	bne _023464B4
	add r0, r4, #0x100
	ldrsh r2, [r0, #0x20]
	add r0, r4, #0x22
	add r0, r0, #0x100
	mov r1, #4
	mov r3, #1
	bl FUN_020417A8
	ldr r1, _02345A5C @ =0x02346BDC
	ldr r1, [r1]
	strb r0, [r1, #0x14]
_023464B4:
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346698 @ =0x00003711
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023464C8:
	bl FUN_02041A18
	cmp r0, #1
	bne _02346640
	ldr r1, _02345A5C @ =0x02346BDC
	mvn r0, #1
	ldr r1, [r1]
	ldrsb r1, [r1, #0x14]
	cmp r1, r0
	beq _02346510
	bl FUN_02041A00
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r0, [r0]
	ldrsb r0, [r0, #0x14]
	bl FUN_0202E6C8
	ldr r0, _02345A5C @ =0x02346BDC
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x14]
_02346510:
	ldr r0, _02345A5C @ =0x02346BDC
	mov r1, #0x3700
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346524:
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r1, r0
	ldrsh r0, [r1, #4]
	ldrsh r2, [r1, #8]
	add r1, r1, #0x14
	mov r3, #0
	bl FUN_02041A40
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _0234669C @ =0x00003801
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346560:
	bl FUN_02041B7C
	cmp r0, #1
	bne _02346640
	bl FUN_020420F4
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_02346588:
	bl FUN_02066494
	cmp r0, #0x1f
	bne _02346640
	bl FUN_02046D20
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _02346678 @ =0x00003533
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_023465AC:
	bl FUN_02066434
	mov r4, r0
	bl FUN_0206645C
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	mov r0, #2
	bl FUN_023375D0
	cmp r4, #0x1d
	bne _0234660C
	ldr r0, _02345A5C @ =0x02346BDC
	mov r3, #0
	ldr r2, [r0]
	ldr r1, _02345B0C @ =0x000038B4
	strb r3, [r2, #0xc]
	ldr r2, [r0]
	sub r3, r3, #1
	mov r0, #0x1c
	str r3, [r2, #0x10]
	bl FUN_02066468
	ldr r0, _02345A5C @ =0x02346BDC
	ldr r1, _023466A0 @ =0x00003512
	ldr r0, [r0]
	str r1, [r0]
	b _02346640
_0234660C:
	sub r0, r4, #0x1e
	cmp r0, #1
	ldrls r0, _02345A5C @ =0x02346BDC
	ldrls r1, _02345AFC @ =0x00001004
	ldrls r0, [r0]
	strls r1, [r0]
	b _02346640
_02346628:
	bl FUN_02066494
	cmp r0, #0x1f
	ldreq r0, _02345A5C @ =0x02346BDC
	ldreq r1, _02345AFC @ =0x00001004
	ldreq r0, [r0]
	streq r1, [r0]
_02346640:
	mov r0, #0
_02346644:
	add sp, sp, #0x3b4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0234664C: .4byte 0x02346AC8
_02346650: .4byte 0x00001013
_02346654: .4byte 0x000008E4
_02346658: .4byte 0x00003101
_0234665C: .4byte 0x000038B2
_02346660: .4byte 0x00003054
_02346664: .4byte 0x0000023B
_02346668: .4byte 0x00000239
_0234666C: .4byte 0x02346AF8
_02346670: .4byte 0x0000030F
_02346674: .4byte 0x00003501
_02346678: .4byte 0x00003533
_0234667C: .4byte 0x00003534
_02346680: .4byte 0x023469D8
_02346684: .4byte 0x023469D4
_02346688: .4byte 0x02346AE8
_0234668C: .4byte 0x00003535
_02346690: .4byte 0x00003601
_02346694: .4byte 0x00003710
_02346698: .4byte 0x00003711
_0234669C: .4byte 0x00003801
_023466A0: .4byte 0x00003512
	arm_func_end ov03_02344AB8

	arm_func_start ov03_023466A4
ov03_023466A4: @ 0x023466A4
	push {r3, lr}
	ldr r0, _023466E4 @ =0x02346BDC
	mov r1, #0x98
	ldr r0, [r0]
	add r0, r0, #0x18
	bl FUN_02003250
	ldr r0, _023466E4 @ =0x02346BDC
	mov r1, #6
	ldr r0, [r0]
	add r0, r0, #0xb0
	bl FUN_02003250
	ldr r0, _023466E4 @ =0x02346BDC
	ldr r1, [r0]
	add r0, r1, #0xb0
	str r0, [r1, #0x78]
	pop {r3, pc}
	.align 2, 0
_023466E4: .4byte 0x02346BDC
	arm_func_end ov03_023466A4

	arm_func_start ov03_023466E8
ov03_023466E8: @ 0x023466E8
	push {r3, lr}
	ldr r1, _02346734 @ =0x02346BDC
	mvn r0, #1
	ldr r2, [r1]
	ldrsb r1, [r2, #0x14]
	cmp r1, r0
	popeq {r3, pc}
	ldr r0, [r2, #0x10]
	bl FUN_0203FD80
	bl FUN_020407C0
	ldr r0, _02346734 @ =0x02346BDC
	ldr r0, [r0]
	ldrsb r0, [r0, #0x14]
	bl FUN_020308A0
	ldr r0, _02346734 @ =0x02346BDC
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x14]
	pop {r3, pc}
	.align 2, 0
_02346734: .4byte 0x02346BDC
	arm_func_end ov03_023466E8
	@ 0x02346738