	.include "asm/macros.inc"
	.include "overlay_19.inc"
	.include "global.inc"

	.text

	arm_func_start GetBarItem
GetBarItem: @ 0x0238A140
	push {r3, lr}
	mov lr, #0
	ldr r3, _0238A17C @ =0x0238DBCC
	mov r1, #0x16
	b _0238A16C
_0238A154:
	mul ip, lr, r1
	ldrsh r2, [r3, ip]
	cmp r0, r2
	addeq r0, r3, ip
	popeq {r3, pc}
	add lr, lr, #1
_0238A16C:
	cmp lr, #0x42
	blo _0238A154
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0238A17C: .4byte 0x0238DBCC
	arm_func_end GetBarItem

	arm_func_start ov19_0238A180
ov19_0238A180: @ 0x0238A180
	mov r2, #2
	str r2, [r0]
	mov r0, #5
	str r0, [r1]
	bx lr
	arm_func_end ov19_0238A180

	arm_func_start ov19_0238A194
ov19_0238A194: @ 0x0238A194
	mov r2, #1
	str r2, [r0]
	mov r0, #3
	str r0, [r1]
	bx lr
	arm_func_end ov19_0238A194

	arm_func_start ov19_0238A1A8
ov19_0238A1A8: @ 0x0238A1A8
	push {r3, lr}
	bl GetBarItem
	add r0, r0, #0xe
	pop {r3, pc}
	arm_func_end ov19_0238A1A8

	arm_func_start ov19_0238A1B8
ov19_0238A1B8: @ 0x0238A1B8
	ldr r0, _0238A1C0 @ =0x0238DAE0
	bx lr
	.align 2, 0
_0238A1C0: .4byte 0x0238DAE0
	arm_func_end ov19_0238A1B8

	arm_func_start GetRecruitableMonsterAll
GetRecruitableMonsterAll: @ 0x0238A1C4
	push {r4, r5, r6, lr}
	mov r0, #0x430
	mov r1, #0xf
	bl FUN_02001170
	mov r5, r0
	mov r4, #0
	mov r6, #1
_0238A1E0:
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	bl FUN_02062A58
	cmp r0, #0
	beq _0238A210
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	bl FUN_020527C4
	cmp r0, #1
	lsleq r0, r4, #1
	strheq r6, [r5, r0]
	addeq r4, r4, #1
_0238A210:
	add r6, r6, #1
	cmp r6, #0x218
	blt _0238A1E0
	cmp r4, #0
	ble _0238A260
	mov r0, r4
	bl FUN_02002274
	lsl r1, r0, #1
	ldrsh r4, [r5, r1]
	mov r0, #2
	bl FUN_02002274
	cmp r0, #1
	mov r0, r4
	bne _0238A254
	bl FUN_02054BE0
	mov r4, r0
	b _0238A264
_0238A254:
	bl FUN_02054BA4
	mov r4, r0
	b _0238A264
_0238A260:
	mov r4, #0
_0238A264:
	mov r0, r5
	bl FUN_02001188
	mov r0, r4
	pop {r4, r5, r6, pc}
	arm_func_end GetRecruitableMonsterAll

	arm_func_start GetRecruitableMonsterList
GetRecruitableMonsterList: @ 0x0238A274
	push {r4, r5, r6, r7, r8, lr}
	mov r0, #0xd8
	mov r1, #0xf
	bl FUN_02001170
	mov r6, #0
	ldr r4, _0238A318 @ =0x0238DAF4
	mov r5, r0
	mov r7, r6
_0238A294:
	lsl r0, r7, #1
	ldrsh r8, [r4, r0]
	mov r0, r8
	bl FUN_02062A58
	cmp r0, #0
	lslne r0, r6, #1
	add r7, r7, #1
	strhne r8, [r5, r0]
	addne r6, r6, #1
	cmp r7, #0x6c
	blt _0238A294
	cmp r6, #0
	ble _0238A304
	mov r0, r6
	bl FUN_02002274
	lsl r1, r0, #1
	ldrsh r4, [r5, r1]
	mov r0, #2
	bl FUN_02002274
	cmp r0, #1
	mov r0, r4
	bne _0238A2F8
	bl FUN_02054BE0
	mov r4, r0
	b _0238A308
_0238A2F8:
	bl FUN_02054BA4
	mov r4, r0
	b _0238A308
_0238A304:
	mov r4, #0
_0238A308:
	mov r0, r5
	bl FUN_02001188
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238A318: .4byte 0x0238DAF4
	arm_func_end GetRecruitableMonsterList

	arm_func_start GetRecruitableMonsterListRestricted
GetRecruitableMonsterListRestricted: @ 0x0238A31C
	push {r4, r5, r6, r7, r8, lr}
	mov r0, #0xd8
	mov r1, #0xf
	bl FUN_02001170
	mov r6, #0
	ldr r4, _0238A3D0 @ =0x0238DAF4
	mov r5, r0
	mov r7, r6
_0238A33C:
	lsl r0, r7, #1
	ldrsh r8, [r4, r0]
	mov r0, r8
	bl FUN_02062A58
	cmp r0, #0
	beq _0238A36C
	mov r0, r8
	bl FUN_020527C4
	cmp r0, #1
	lsleq r0, r6, #1
	strheq r8, [r5, r0]
	addeq r6, r6, #1
_0238A36C:
	add r7, r7, #1
	cmp r7, #0x6c
	blt _0238A33C
	cmp r6, #0
	ble _0238A3BC
	mov r0, r6
	bl FUN_02002274
	lsl r1, r0, #1
	ldrsh r4, [r5, r1]
	mov r0, #2
	bl FUN_02002274
	cmp r0, #1
	mov r0, r4
	bne _0238A3B0
	bl FUN_02054BE0
	mov r4, r0
	b _0238A3C0
_0238A3B0:
	bl FUN_02054BA4
	mov r4, r0
	b _0238A3C0
_0238A3BC:
	mov r4, #0
_0238A3C0:
	mov r0, r5
	bl FUN_02001188
	mov r0, r4
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238A3D0: .4byte 0x0238DAF4
	arm_func_end GetRecruitableMonsterListRestricted

	arm_func_start ov19_0238A3D4
ov19_0238A3D4: @ 0x0238A3D4
	cmp r0, #0
	ldrne r1, _0238A3E8 @ =0x0238DAE8
	strne r1, [r0]
	mov r0, #6
	bx lr
	.align 2, 0
_0238A3E8: .4byte 0x0238DAE8
	arm_func_end ov19_0238A3D4

	arm_func_start ov19_0238A3EC
ov19_0238A3EC: @ 0x0238A3EC
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl FUN_0204CB94
	mov r6, #0
	ldr r5, _0238A464 @ =0x0238DAE8
	mov r4, r0
	mov r7, r6
_0238A408:
	ldrb r0, [r5, r7, lsl #1]
	bl FUN_0206A714
	bl FUN_0204CF9C
	cmp r0, #0
	bne _0238A450
	add r0, r5, r7, lsl #1
	ldrb r0, [r0, #1]
	lsl r1, r7, #1
	cmp r0, r4
	bhi _0238A450
	ldrb r0, [r5, r1]
	bl FUN_0204D2F8
	cmp r0, #0
	bne _0238A450
	cmp r8, #0
	ldrbne r0, [r5, r7, lsl #1]
	strbne r0, [r8, r6]
	add r6, r6, #1
_0238A450:
	add r7, r7, #1
	cmp r7, #6
	blt _0238A408
	mov r0, r6
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238A464: .4byte 0x0238DAE8
	arm_func_end ov19_0238A3EC

	arm_func_start ov19_0238A468
ov19_0238A468: @ 0x0238A468
	push {r3, lr}
	ldr r0, _0238A4A0 @ =0x02324DB0
	ldr r0, [r0]
	cmp r0, #0
	ldrsbne r0, [r0, #0xc]
	mvnne r1, #1
	cmpne r0, r1
	popeq {r3, pc}
	bl FUN_0202F650
	ldr r0, _0238A4A0 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
_0238A4A0: .4byte 0x02324DB0
	arm_func_end ov19_0238A468

	arm_func_start ov19_0238A4A4
ov19_0238A4A4: @ 0x0238A4A4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x308
	sub sp, sp, #0x800
	ldr r0, _0238B424 @ =0x02324DB0
	ldr r8, [r0]
	ldr r0, [r8, #4]
	cmp r0, #0x40
	addls pc, pc, r0, lsl #2
	b _0238C598
_0238A4C8: @ jump table
	b _0238A5CC @ case 0
	b _0238A5E8 @ case 1
	b _0238A624 @ case 2
	b _0238A604 @ case 3
	b _0238A664 @ case 4
	b _0238C50C @ case 5
	b _0238C50C @ case 6
	b _0238C50C @ case 7
	b _0238A7D8 @ case 8
	b _0238A838 @ case 9
	b _0238A970 @ case 10
	b _0238AA08 @ case 11
	b _0238AAA8 @ case 12
	b _0238C50C @ case 13
	b _0238AAD4 @ case 14
	b _0238AB00 @ case 15
	b _0238ABC0 @ case 16
	b _0238ACCC @ case 17
	b _0238AD0C @ case 18
	b _0238AD50 @ case 19
	b _0238AD90 @ case 20
	b _0238ADE4 @ case 21
	b _0238AE20 @ case 22
	b _0238AE74 @ case 23
	b _0238AEA8 @ case 24
	b _0238AEC8 @ case 25
	b _0238C50C @ case 26
	b _0238B01C @ case 27
	b _0238B040 @ case 28
	b _0238B320 @ case 29
	b _0238B34C @ case 30
	b _0238B3B4 @ case 31
	b _0238B4A4 @ case 32
	b _0238B4F8 @ case 33
	b _0238B528 @ case 34
	b _0238B5D8 @ case 35
	b _0238B6E0 @ case 36
	b _0238B6C8 @ case 37
	b _0238BDEC @ case 38
	b _0238BE08 @ case 39
	b _0238BE34 @ case 40
	b _0238BE50 @ case 41
	b _0238BE68 @ case 42
	b _0238BEE0 @ case 43
	b _0238BF44 @ case 44
	b _0238BF64 @ case 45
	b _0238BFA4 @ case 46
	b _0238BFBC @ case 47
	b _0238C004 @ case 48
	b _0238C07C @ case 49
	b _0238C0FC @ case 50
	b _0238C1BC @ case 51
	b _0238C244 @ case 52
	b _0238C2A0 @ case 53
	b _0238C2E4 @ case 54
	b _0238C348 @ case 55
	b _0238C380 @ case 56
	b _0238C598 @ case 57
	b _0238C3AC @ case 58
	b _0238C410 @ case 59
	b _0238C43C @ case 60
	b _0238C46C @ case 61
	b _0238C570 @ case 62
	b _0238C50C @ case 63
	b _0238C480 @ case 64
_0238A5CC:
	mvn r0, #0
	mov r1, #0
	bl FUN_022E8124
	bl FUN_02311D6C
	mov r0, #1
	str r0, [r8, #4]
	b _0238C598
_0238A5E8:
	bl FUN_0230D220
	cmp r0, #0
	ldreq r1, [r8, #8]
	mvneq r0, #0
	streq r1, [r8, #4]
	streq r0, [r8, #8]
	b _0238C598
_0238A604:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	blt _0238C598
	bl FUN_02057AC4
_0238A624:
	bl ov19_0238D450
	ldr r0, [r8, #4]
	ldr r4, _0238B428 @ =0x0001012E
	cmp r0, #2
	ldreq r0, _0238B42C @ =0x0000458B
	ldr r2, _0238B430 @ =0x0238E250
	ldrne r0, _0238B434 @ =0x0000458C
	lsl r1, r0, #0x10
	mov r0, #0
	lsr r3, r1, #0x10
	mov r1, #0x3000
	stm sp, {r0, r4}
	bl ov19_0238D3A0
	mov r0, #4
	str r0, [r8, #4]
	b _0238C598
_0238A664:
	bl ov19_0238D418
	cmp r0, #1
	bne _0238A740
	bl FUN_0200ED84
	mov sb, #0
	mov r7, #1
	mov sl, r0
	mov r6, sb
	mov r4, sb
	mov r5, r7
	b _0238A6D8
_0238A690:
	lsl r0, sb, #0x10
	asr r0, r0, #0x10
	bl FUN_0200F348
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r7
	moveq r1, r6
	tst r1, #0xff
	beq _0238A6D4
	ldrsh r0, [r0, #4]
	bl GetBarItem
	cmp r0, #0
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	movne r0, #1
	bne _0238A6E4
_0238A6D4:
	add sb, sb, #1
_0238A6D8:
	cmp sb, sl
	blt _0238A690
	mov r0, #0
_0238A6E4:
	cmp r0, #0
	movne r4, #7
	movne r5, #8
	ldrne r6, _0238B438 @ =0x00004590
	bne _0238A710
	add r0, r8, #0x100
	mov r1, #0xa
	ldr r6, _0238B43C @ =0x0000458F
	strh r1, [r0]
	mov r4, #6
	mov r5, #3
_0238A710:
	add r0, sp, #0xa00
	add r0, r0, #0xb8
	bl FUN_02023690
	ldr r3, _0238B428 @ =0x0001012E
	add r2, sp, #0xa00
	ldr r0, _0238B440 @ =0x0000301C
	add r2, r2, #0xb8
	mov r1, r6
	str r3, [sp, #0xb04]
	bl FUN_02046BE8
	stmib r8, {r4, r5}
	b _0238C598
_0238A740:
	cmp r0, #2
	bne _0238A790
	add r0, sp, #0xa00
	add r0, r0, #0x68
	bl FUN_02023690
	ldr r3, _0238B428 @ =0x0001012E
	add r2, sp, #0xa00
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238B444 @ =0x0000458D
	add r2, r2, #0x68
	str r3, [sp, #0xab4]
	bl FUN_02046BE8
	add r0, r8, #0x100
	mov r1, #0xa
	strh r1, [r0]
	mov r0, #5
	str r0, [r8, #4]
	mov r0, #3
	str r0, [r8, #8]
	b _0238C598
_0238A790:
	sub r0, r0, #9
	cmp r0, #1
	bhi _0238C598
	add r0, sp, #0xa00
	add r0, r0, #0x18
	bl FUN_02023690
	ldr r3, _0238B428 @ =0x0001012E
	add r2, sp, #0xa00
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238B448 @ =0x0000458E
	add r2, r2, #0x18
	str r3, [sp, #0xa64]
	bl FUN_02046BE8
	mov r0, #0x3f
	str r0, [r8, #4]
	sub r0, r0, #0x40
	str r0, [r8, #8]
	b _0238C598
_0238A7D8:
	bl ov19_0238D47C
	bl FUN_02046D20
	bl ov19_0238C5A8
	ldr r1, _0238B424 @ =0x02324DB0
	mvn r0, #1
	ldr r4, [r1]
	ldrsb r1, [r4, #0x20]
	cmp r1, r0
	bne _0238A82C
	ldr r1, _0238B44C @ =ov19_0238D4A4
	add r0, r4, #0x5c
	str r1, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r2, _0238B450 @ =0x0238E360
	ldr r0, [r4, #0x64]
	ldrsh r2, [r2]
	add r3, r4, #0x23
	bl FUN_022BD474
	strb r0, [r4, #0x20]
_0238A82C:
	mov r0, #9
	str r0, [r8, #4]
	b _0238C598
_0238A838:
	add r1, sp, #0x18
	mov r0, #0
	bl FUN_0200625C
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCE58
	mov r4, r0
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCDA8
	ldrh r2, [sp, #0x18]
	ldr r1, _0238B450 @ =0x0238E360
	strh r0, [r1]
	tst r2, #4
	bne _0238A878
	tst r2, #0x800
	cmpeq r4, #0
	beq _0238A8B0
_0238A878:
	cmp r4, #0
	bne _0238A888
	mov r0, #5
	bl FUN_02017CCC
_0238A888:
	bl FUN_0200FC24
	mov r0, #0
	str r0, [r8, #0x58]
	bl ov19_0238C5A8
	ldrsb r0, [r8, #0x20]
	ldr r1, [r8, #0x64]
	bl FUN_022BCC60
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCCB0
	b _0238C598
_0238A8B0:
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCD68
	cmp r0, #0
	bne _0238A934
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCDBC
	cmp r0, #0
	blt _0238A910
	ldr r1, _0238B450 @ =0x0238E360
	str r0, [r8, #0x58]
	ldrsh r2, [r1, #2]
	mov r1, #0
	ldr r0, _0238B454 @ =0x0238E1D8
	lsl r2, r2, #0x18
	asr r4, r2, #0x18
	ldr r2, _0238B458 @ =0x0238E270
	mov r3, r1
	str r4, [sp]
	mov r4, #0x70000
	str r4, [sp, #4]
	bl ov19_0238D3A0
	mov r0, #0xa
	str r0, [r8, #4]
	b _0238C598
_0238A910:
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCD10
	bl ov19_0238D4E4
	add r0, r8, #0x100
	mov r1, #0xa
	strh r1, [r0]
	mov r0, #3
	str r0, [r8, #4]
	b _0238C598
_0238A934:
	ldrh r0, [sp, #0x18]
	tst r0, #8
	beq _0238C598
	ldr r0, _0238B45C @ =0x00003F02
	mov r1, #0x100
	bl FUN_02017C74
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCDA8
	str r0, [r8, #0x58]
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCDF4
	bl ov19_0238D4E4
	mov r0, #0xb
	str r0, [r8, #4]
	b _0238C598
_0238A970:
	bl ov19_0238D418
	mov r4, r0
	bl FUN_02046BA0
	ldr r1, _0238B450 @ =0x0238E360
	sub r2, r4, #9
	strh r0, [r1, #2]
	cmp r2, #1
	bhi _0238A9A4
	ldrsb r0, [r8, #0x20]
	bl FUN_022BCC7C
	mov r0, #9
	str r0, [r8, #4]
	b _0238C598
_0238A9A4:
	cmp r4, #3
	bne _0238A9F0
	add r0, sp, #0x900
	add r0, r0, #0xc8
	bl FUN_02023690
	ldr r0, _0238B428 @ =0x0001012E
	str r0, [sp, #0xa14]
	bl ov19_0238D4E4
	add r2, sp, #0x900
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238B460 @ =0x00004594
	add r2, r2, #0xc8
	bl FUN_02046BE8
	bl ov19_0238D450
	mov r0, #0xd
	str r0, [r8, #4]
	mov r0, #0xe
	str r0, [r8, #8]
	b _0238C598
_0238A9F0:
	cmp r4, #2
	bne _0238C598
	bl ov19_0238D4E4
	mov r0, #0xb
	str r0, [r8, #4]
	b _0238C598
_0238AA08:
	ldr r0, [r8, #0x58]
	add r0, r8, r0, lsl #1
	ldrsh r0, [r0, #0x68]
	bl FUN_0200F348
	mov r4, r0
	ldrb r0, [r4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrshne r5, [r4, #4]
	add r0, sp, #0x900
	add r0, r0, #0x78
	moveq r5, #0
	bl FUN_02023690
	str r5, [sp, #0x988]
	ldrh r1, [r4, #2]
	add r0, r5, #0xd1
	add r0, r0, #0x2900
	str r1, [sp, #0x99c]
	ldrh r1, [r4, #2]
	mov r2, #0
	add r4, sp, #0x900
	add r1, r1, #0xbc
	lsl r0, r0, #0x10
	str r1, [sp, #0x990]
	add r4, r4, #0x78
	str r2, [sp, #0x9a4]
	str r4, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0238B464 @ =0x0238E1E8
	ldr r1, _0238B468 @ =0x00001013
	ldr r3, _0238B46C @ =0x000008E4
	str r4, [sp, #8]
	bl FUN_0202E3CC
	strb r0, [r8, #0x21]
	mov r0, #0xc
	str r0, [r8, #4]
	b _0238C598
_0238AAA8:
	ldrsb r0, [r8, #0x21]
	bl FUN_0202E6E4
	cmp r0, #0
	bne _0238C598
	ldrsb r0, [r8, #0x21]
	bl FUN_0202E6C8
	mvn r0, #1
	strb r0, [r8, #0x21]
	mov r0, #8
	str r0, [r8, #4]
	b _0238C598
_0238AAD4:
	bl ov19_0238D47C
	bl FUN_02046D20
	bl FUN_0203A998
	cmp r0, #0
	bne _0238AAF4
	mov r0, #0xb
	mov r1, #0
	bl FUN_02039C2C
_0238AAF4:
	mov r0, #0xf
	str r0, [r8, #4]
	b _0238C598
_0238AB00:
	bl FUN_0203A5A8
	cmp r0, #0
	beq _0238AB54
	bl FUN_0203A9EC
	cmp r0, #0
	beq _0238C598
	add r1, sp, #0x16
	mov r0, #0
	bl FUN_0200625C
	ldrh r0, [sp, #0x16]
	tst r0, #8
	beq _0238C598
	mov r0, #0
	bl FUN_02017CCC
	bl FUN_0203AAB0
	str r0, [r8, #0xd4]
	bl FUN_0203A5F0
	bl FUN_0203A51C
	mov r0, #0x11
	str r0, [r8, #4]
	b _0238C598
_0238AB54:
	bl FUN_0203AA20
	mvn r1, #0
	cmp r0, r1
	beq _0238ABA4
	ldr r1, _0238B450 @ =0x0238E360
	str r0, [r8, #0xd4]
	ldrsh r2, [r1, #4]
	mov r1, #0
	ldr r0, _0238B470 @ =0x0238E1F8
	lsl r2, r2, #0x18
	asr r4, r2, #0x18
	ldr r2, _0238B474 @ =0x0238E290
	mov r3, r1
	str r4, [sp]
	mov r4, #0x70000
	str r4, [sp, #4]
	bl ov19_0238D3A0
	mov r0, #0x10
	str r0, [r8, #4]
	b _0238C598
_0238ABA4:
	bl FUN_0203A51C
	add r0, r8, #0x100
	mov r1, #0xa
	strh r1, [r0]
	mov r0, #3
	str r0, [r8, #4]
	b _0238C598
_0238ABC0:
	bl ov19_0238D418
	mov r4, r0
	bl FUN_02046BA0
	ldr r1, _0238B450 @ =0x0238E360
	sub r2, r4, #9
	strh r0, [r1, #4]
	cmp r2, #1
	bhi _0238ABF0
	bl FUN_0203A638
	mov r0, #0xf
	str r0, [r8, #4]
	b _0238C598
_0238ABF0:
	cmp r4, #4
	bne _0238AC84
	add r0, sp, #0x890
	mov r1, #0x98
	bl FUN_02003250
	ldr r0, [r8, #0x58]
	add r0, r8, r0, lsl #1
	ldrsh r0, [r0, #0x68]
	bl FUN_0200F348
	mov r4, r0
	add r0, sp, #0x900
	add r0, r0, #0x28
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	ldr r0, _0238B428 @ =0x0001012E
	orr r1, r1, #0x20000
	str r1, [sp, #0x928]
	ldrsh r1, [r4, #4]
	str r1, [sp, #0x938]
	str r0, [sp, #0x974]
	bl FUN_0203A51C
	bl ov19_0238D450
	ldr r1, _0238B478 @ =0x0238E208
	ldr r0, _0238B47C @ =0x0000459A
	str r1, [sp]
	add r1, sp, #0x900
	str r0, [sp, #4]
	add r1, r1, #0x28
	str r1, [sp, #8]
	mov r0, #0
	mov r1, #0x3000
	mov r2, #0x33
	add r3, sp, #0x890
	bl FUN_02046A20
	mov r0, #0x19
	str r0, [r8, #4]
	b _0238C598
_0238AC84:
	cmp r4, #5
	bne _0238AC9C
	bl FUN_0203A51C
	mov r0, #0x11
	str r0, [r8, #4]
	b _0238C598
_0238AC9C:
	cmp r4, #6
	bne _0238ACB4
	bl FUN_0203A51C
	mov r0, #0x13
	str r0, [r8, #4]
	b _0238C598
_0238ACB4:
	cmp r4, #7
	bne _0238C598
	bl FUN_0203A51C
	mov r0, #0x17
	str r0, [r8, #4]
	b _0238C598
_0238ACCC:
	ldrsb r1, [r8, #0x22]
	mvn r0, #1
	cmp r1, r0
	bne _0238AD00
	ldr r1, [r8, #0xd4]
	add r0, sp, #0x280
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl FUN_0205B028
	add r0, sp, #0x280
	mov r1, #3
	bl FUN_0203F150
	strb r0, [r8, #0x22]
_0238AD00:
	mov r0, #0x12
	str r0, [r8, #4]
	b _0238C598
_0238AD0C:
	bl FUN_0203F398
	cmp r0, #1
	bne _0238C598
	ldr r1, _0238B424 @ =0x02324DB0
	mvn r0, #1
	ldr r1, [r1]
	ldrsb r1, [r1, #0x22]
	cmp r1, r0
	beq _0238AD44
	bl FUN_0203F990
	ldr r0, _0238B424 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x22]
_0238AD44:
	mov r0, #0xe
	str r0, [r8, #4]
	b _0238C598
_0238AD50:
	ldrsb r1, [r8, #0x20]
	mvn r0, #1
	cmp r1, r0
	bne _0238AD84
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0203FA64
	mov r1, #0
	mov r2, r1
	mov r0, #9
	bl FUN_0204018C
	strb r0, [r8, #0x20]
_0238AD84:
	mov r0, #0x14
	str r0, [r8, #4]
	b _0238C598
_0238AD90:
	bl FUN_020407EC
	cmp r0, #1
	bne _0238ADAC
	bl ov19_0238D51C
	mov r0, #0xe
	str r0, [r8, #4]
	b _0238C598
_0238ADAC:
	cmp r0, #2
	cmpne r0, #7
	bne _0238C598
	bl FUN_0203FD38
	mov r1, r0
	add r0, r8, #0xda
	mov r2, #0x20
	bl FUN_020032D4
	bl FUN_02041094
	strh r0, [r8, #0xd8]
	bl ov19_0238D51C
	mov r0, #0x15
	str r0, [r8, #4]
	b _0238C598
_0238ADE4:
	ldrsb r1, [r8, #0x22]
	mvn r0, #1
	cmp r1, r0
	bne _0238AE14
	ldrsh r2, [r8, #0xd8]
	add r0, r8, #0xda
	arm_func_end ov19_0238A4A4

	arm_func_start ov19_0238ADFC
ov19_0238ADFC: @ 0x0238ADFC
	mov r1, #4
	mov r3, #1
	bl FUN_020417A8
	ldr r1, _0238B424 @ =0x02324DB0
	ldr r1, [r1]
	strb r0, [r1, #0x22]
_0238AE14:
	mov r0, #0x16
	str r0, [r8, #4]
	b _0238C598
_0238AE20:
	bl FUN_02041A18
	cmp r0, #1
	bne _0238C598
	ldr r1, _0238B424 @ =0x02324DB0
	mvn r0, #1
	ldr r1, [r1]
	ldrsb r1, [r1, #0x22]
	cmp r1, r0
	beq _0238AE68
	bl FUN_02041A00
	ldr r0, _0238B424 @ =0x02324DB0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x22]
	bl FUN_0202E6C8
	ldr r0, _0238B424 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x22]
_0238AE68:
	mov r0, #0x13
	str r0, [r8, #4]
	b _0238C598
_0238AE74:
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r1, r0
	ldrsh r0, [r1, #4]
	ldrsh r2, [r1, #8]
	add r1, r1, #0x14
	mov r3, #0
	bl FUN_02041A40
	mov r0, #0x18
	str r0, [r8, #4]
	b _0238C598
_0238AEA8:
	bl FUN_02041B7C
	cmp r0, #1
	bne _0238C598
	bl FUN_020420F4
	bl FUN_020572EC
	mov r0, #0xe
	str r0, [r8, #4]
	b _0238C598
_0238AEC8:
	bl ov19_0238D418
	sub r1, r0, #9
	cmp r1, #1
	bhi _0238AF0C
	add r0, sp, #0x840
	bl FUN_02023690
	ldr r3, _0238B428 @ =0x0001012E
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238B480 @ =0x0000459D
	add r2, sp, #0x840
	str r3, [sp, #0x88c]
	bl FUN_02046BE8
	mov r0, #0x1a
	str r0, [r8, #4]
	mov r0, #8
	str r0, [r8, #8]
	b _0238C598
_0238AF0C:
	cmp r0, #8
	bne _0238C598
	ldr r0, [r8, #0x58]
	add r0, r8, r0, lsl #1
	ldrsh r0, [r0, #0x68]
	bl FUN_0200F348
	ldrh r1, [r0]
	strh r1, [r8, #0xcc]
	ldrh r1, [r0, #2]
	strh r1, [r8, #0xce]
	ldrh r0, [r0, #4]
	strh r0, [r8, #0xd0]
	ldr r0, [r8, #0x58]
	add r0, r8, r0, lsl #1
	ldrsh r0, [r0, #0x68]
	bl FUN_0200F390
	add r0, sp, #0x2c
	add r1, r8, #0xcc
	bl FUN_0200D0A0
	add r1, sp, #0x2c
	mov r0, #0
	bl FUN_02065CB4
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	beq _0238AFB8
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x1c
	str r0, [r8, #8]
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055410
	cmp r0, #0
	movne r0, #5
	moveq r0, #6
	str r0, [r8]
	b _0238C598
_0238AFB8:
	bl ov19_0238C640
	add r0, sp, #0x7f0
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	ldr r0, _0238B428 @ =0x0001012E
	orr r2, r1, #0x20000
	ldr r1, _0238B484 @ =0x0000101C
	str r2, [sp, #0x7f0]
	str r0, [sp, #0x83c]
	add r0, r8, #0x100
	strh r1, [r0, #0xc8]
	add r4, sp, #0x7f0
	add r3, r1, #0x2000
	ldr r2, _0238B488 @ =0x0000459E
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020235B8
	mov r0, #3
	str r0, [r8, #0x1c4]
	mov r0, #0x1b
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B01C:
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x1c
	str r0, [r8, #8]
	mov r0, #7
	str r0, [r8]
	b _0238C598
_0238B040:
	mov r0, #0xc
	bl FUN_02002274
	ldr r1, _0238B424 @ =0x02324DB0
	ldr r2, [r1]
	strh r0, [r2, #0xfa]
	ldr r0, [r1]
	ldrsh r0, [r0, #0xd0]
	bl ov19_0238A1A8
	mov r6, r0
	bl ov19_0238A1B8
	ldr r1, _0238B424 @ =0x02324DB0
	mov r7, r0
	mov r0, #0
	ldr r4, [r1]
	mov r2, r0
_0238B07C:
	lsl r1, r2, #1
	ldrh r1, [r6, r1]
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, r1
	blt _0238B07C
	mov r5, #3
	bl FUN_02002274
	mov r2, #0
	mov r3, r2
	b _0238B0C4
_0238B0A8:
	lsl r1, r3, #1
	ldrh r1, [r6, r1]
	add r2, r2, r1
	cmp r2, r0
	movhi r5, r3
	bhi _0238B0CC
	add r3, r3, #1
_0238B0C4:
	cmp r3, #3
	blt _0238B0A8
_0238B0CC:
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _0238B0E8
_0238B0D8: @ jump table
	b _0238B0E8 @ case 0
	b _0238B0F0 @ case 1
	b _0238B100 @ case 2
	b _0238B0F8 @ case 3
_0238B0E8:
	mov r5, #0
	b _0238B204
_0238B0F0:
	mov r5, #1
	b _0238B204
_0238B0F8:
	mov r5, #2
	b _0238B204
_0238B100:
	mov r0, #0
	mov r2, r0
_0238B108:
	lsl r1, r2, #1
	ldrh r1, [r7, r1]
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, r1
	blt _0238B108
	mov r6, #3
	bl FUN_02002274
	mov r3, #0
	mov r2, r3
	b _0238B150
_0238B134:
	lsl r1, r2, #1
	ldrh r1, [r7, r1]
	add r3, r3, r1
	cmp r3, r0
	movhi r6, r2
	bhi _0238B158
	add r2, r2, #1
_0238B150:
	cmp r2, #3
	blt _0238B134
_0238B158:
	cmp r6, #0
	mov r5, #6
	beq _0238B178
	cmp r6, #1
	beq _0238B1C4
	cmp r6, #2
	beq _0238B1F4
	b _0238B204
_0238B178:
	bl FUN_0201077C
	cmp r0, #0
	bne _0238B204
	mov r0, #0x1e
	bl FUN_0204CA94
	cmp r0, #0
	beq _0238B204
	bl GetRecruitableMonsterAll
	add r1, r4, #0x100
	strh r0, [r1, #4]
	bl GetRecruitableMonsterList
	add r1, r4, #0x100
	strh r0, [r1, #6]
	ldrsh r0, [r1, #4]
	cmp r0, #0
	ldrshne r0, [r1, #6]
	cmpne r0, #0
	movne r5, #3
	b _0238B204
_0238B1C4:
	mov r0, #0
	bl FUN_02055964
	mvn r1, #0
	cmp r0, r1
	beq _0238B204
	bl GetRecruitableMonsterListRestricted
	add r1, r4, #0x100
	strh r0, [r1, #4]
	ldrsh r0, [r1, #4]
	cmp r0, #0
	movne r5, #4
	b _0238B204
_0238B1F4:
	mov r0, #0
	bl ov19_0238A3EC
	cmp r0, #0
	movne r5, #5
_0238B204:
	str r5, [r4, #0xfc]
	ldr r0, [r8, #0xfc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0238C598
_0238B218: @ jump table
	b _0238B234 @ case 0
	b _0238B250 @ case 1
	b _0238B234 @ case 2
	b _0238B234 @ case 3
	b _0238B234 @ case 4
	b _0238B234 @ case 5
	b _0238B2B8 @ case 6
_0238B234:
	bl FUN_02046D20
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x22
	str r0, [r8, #4]
	b _0238C598
_0238B250:
	bl ov19_0238C640
	add r0, sp, #0x7a0
	bl FUN_02023690
	ldr r2, _0238B428 @ =0x0001012E
	add r0, r8, #0x10
	mov r1, #0xc
	str r2, [sp, #0x7ec]
	bl FUN_0204D7F4
	bl ov19_0238D450
	mov r0, #4
	ldr r1, _0238B484 @ =0x0000101C
	str r0, [r8, #0x1c4]
	add r0, r8, #0x100
	strh r1, [r0, #0xc8]
	add r3, r1, #0x2000
	add r1, sp, #0x7a0
	str r1, [sp]
	ldr r2, _0238B48C @ =0x000045B1
	add r0, r8, #0x1cc
	mov r1, #0x400
	bl FUN_020235B8
	mov r0, #0x1d
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B2B8:
	bl ov19_0238C640
	add r0, sp, #0x750
	bl FUN_02023690
	ldr r2, _0238B428 @ =0x0001012E
	add r0, r8, #0x10
	mov r1, #0xc
	str r2, [sp, #0x79c]
	bl FUN_0204D7F4
	bl ov19_0238D450
	mov r0, #5
	ldr r1, _0238B484 @ =0x0000101C
	str r0, [r8, #0x1c4]
	add r0, r8, #0x100
	strh r1, [r0, #0xc8]
	add r3, r1, #0x2000
	add r1, sp, #0x750
	str r1, [sp]
	ldr r2, _0238B490 @ =0x000045BC
	add r0, r8, #0x1cc
	mov r1, #0x400
	bl FUN_020235B8
	mov r0, #0x1e
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B320:
	bl ov19_0238D47C
	bl FUN_02046D20
	add r0, r8, #0x10
	mov r1, #0
	bl FUN_0204D7F4
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x22
	str r0, [r8, #4]
	b _0238C598
_0238B34C:
	bl ov19_0238C640
	add r0, sp, #0x700
	bl FUN_02023690
	ldr r2, _0238B428 @ =0x0001012E
	add r0, r8, #0x10
	mov r1, #7
	str r2, [sp, #0x74c]
	bl FUN_0204D7F4
	bl ov19_0238D450
	mov r0, #6
	ldr r1, _0238B484 @ =0x0000101C
	str r0, [r8, #0x1c4]
	add r0, r8, #0x100
	strh r1, [r0, #0xc8]
	add r3, r1, #0x2000
	add r1, sp, #0x700
	str r1, [sp]
	ldr r2, _0238B494 @ =0x000045BD
	add r0, r8, #0x1cc
	mov r1, #0x400
	bl FUN_020235B8
	mov r0, #0x1f
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B3B4:
	bl ov19_0238C640
	bl ov19_0238D47C
	add r0, r8, #0x10
	mov r1, #0
	bl FUN_0204D7F4
	add r0, sp, #0x6b0
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	ldr r0, _0238B498 @ =0x00001311
	orr r1, r1, #0x20000
	str r1, [sp, #0x6b0]
	str r0, [sp, #0x6d4]
	mov r3, #0x1c
	add r0, r8, #0x100
	strh r3, [r0, #0xc8]
	add r1, sp, #0x6b0
	str r1, [sp]
	ldr r2, _0238B49C @ =0x000045BE
	add r0, r8, #0x1cc
	mov r1, #0x400
	bl FUN_020235B8
	mov r0, #7
	str r0, [r8, #0x1c4]
	mov r0, #0x20
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
	.align 2, 0
_0238B424: .4byte 0x02324DB0
_0238B428: .4byte 0x0001012E
_0238B42C: .4byte 0x0000458B
_0238B430: .4byte 0x0238E250
_0238B434: .4byte 0x0000458C
_0238B438: .4byte 0x00004590
_0238B43C: .4byte 0x0000458F
_0238B440: .4byte 0x0000301C
_0238B444: .4byte 0x0000458D
_0238B448: .4byte 0x0000458E
_0238B44C: .4byte ov19_0238D4A4
_0238B450: .4byte 0x0238E360
_0238B454: .4byte 0x0238E1D8
_0238B458: .4byte 0x0238E270
_0238B45C: .4byte 0x00003F02
_0238B460: .4byte 0x00004594
_0238B464: .4byte 0x0238E1E8
_0238B468: .4byte 0x00001013
_0238B46C: .4byte 0x000008E4
_0238B470: .4byte 0x0238E1F8
_0238B474: .4byte 0x0238E290
_0238B478: .4byte 0x0238E208
_0238B47C: .4byte 0x0000459A
_0238B480: .4byte 0x0000459D
_0238B484: .4byte 0x0000101C
_0238B488: .4byte 0x0000459E
_0238B48C: .4byte 0x000045B1
_0238B490: .4byte 0x000045BC
_0238B494: .4byte 0x000045BD
_0238B498: .4byte 0x00001311
_0238B49C: .4byte 0x000045BE
_0238B4A0: .4byte 0x000045BF
_0238B4A4:
	add r0, sp, #0x660
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	add r0, r8, #0x100
	orr r1, r1, #0x20000
	str r1, [sp, #0x660]
	mov r3, #0x1c
	strh r3, [r0, #0xc8]
	add r4, sp, #0x660
	ldr r2, _0238B4A0 @ =0x000045BF
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020235B8
	mov r0, #8
	str r0, [r8, #0x1c4]
	mov r0, #0x21
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B4F8:
	add r0, sp, #0x610
	bl FUN_02023690
	ldr r0, [r8, #0xd4]
	ldr r1, _0238C488 @ =0x000045C0
	orr r3, r0, #0x20000
	add r2, sp, #0x610
	mov r0, #0x1c
	str r3, [sp, #0x610]
	bl FUN_02046BE8
	mov r0, #0x25
	str r0, [r8, #4]
	b _0238C598
_0238B528:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ble _0238C598
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, sp, #0x230
	bl FUN_02023690
	ldr r0, _0238B424 @ =0x02324DB0
	add r3, sp, #0x230
	ldr r6, [r0]
	ldr r2, _0238C48C @ =0x0238E238
	ldrsh r5, [r6, #0xd0]
	mov r0, r4
	mov r1, #0x100
	str r5, [sp, #0x240]
	str r3, [sp]
	ldrh r5, [r6, #0xfa]
	mov r3, #0
	lsl r5, r5, #1
	ldrh r2, [r2, r5]
	bl FUN_020235B8
	add r0, sp, #0x5c0
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	ldr r0, _0238B498 @ =0x00001311
	orr r1, r1, #0x20000
	str r1, [sp, #0x5c0]
	str r0, [sp, #0x5e4]
	ldr r1, _0238C490 @ =0x000045B2
	mov r0, #0x1c
	add r2, sp, #0x5c0
	str r4, [sp, #0x5f8]
	bl FUN_02046BE8
	mov r0, r4
	bl FUN_02001188
	mov r0, #0x23
	str r0, [r8, #4]
	b _0238C598
_0238B5D8:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	mov r0, #3
	bl FUN_02002274
	mov r4, r0
	bl ov19_0238C640
	ldr r0, [r8, #0xfc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0238B668
_0238B610: @ jump table
	b _0238B62C @ case 0
	b _0238B63C @ case 1
	b _0238B64C @ case 2
	b _0238B62C @ case 3
	b _0238B62C @ case 4
	b _0238B62C @ case 5
	b _0238B668 @ case 6
_0238B62C:
	ldr r0, _0238C494 @ =0x0238E18A
	lsl r1, r4, #1
	ldrh r5, [r0, r1]
	b _0238B668
_0238B63C:
	ldr r0, _0238C498 @ =0x0238E17E
	lsl r1, r4, #1
	ldrh r5, [r0, r1]
	b _0238B668
_0238B64C:
	ldr r0, _0238C49C @ =0x0238E190
	lsl r1, r4, #1
	ldrh r5, [r0, r1]
	ldr r0, _0238C4A0 @ =0x000045B9
	cmp r5, r0
	moveq r0, #0xc
	streq r0, [r8, #0x1c4]
_0238B668:
	ldr r0, [r8, #0x1c4]
	cmp r0, #0
	bne _0238B690
	mov r1, r5
	mov r0, #0x1c
	mov r2, #0
	bl FUN_02046BE8
	mov r0, #0x25
	str r0, [r8, #4]
	b _0238C598
_0238B690:
	add r0, r8, #0x100
	mov r3, #0x1c
	mov r2, r5
	strh r3, [r0, #0xc8]
	mov r4, #0
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020235B8
	mov r0, #0x24
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238B6C8:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
_0238B6E0:
	ldr r0, [r8, #0xfc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0238C598
_0238B6F0: @ jump table
	b _0238B70C @ case 0
	b _0238B70C @ case 1
	b _0238BD48 @ case 2
	b _0238B70C @ case 3
	b _0238B70C @ case 4
	b _0238B70C @ case 5
	b _0238B70C @ case 6
_0238B70C:
	ldr r0, _0238B424 @ =0x02324DB0
	ldr r5, [r0]
	ldr r0, [r5, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r1, #0
	str r1, [sp, #0x24]
	mov r4, r0
	bl ov19_0238C640
	ldrsh r1, [r5, #0xd0]
	cmp r1, #0x67
	bgt _0238B7A8
	subs r0, r1, #0x58
	addpl pc, pc, r0, lsl #2
	b _0238B78C
_0238B74C: @ jump table
	b _0238B7FC @ case 0
	b _0238B904 @ case 1
	b _0238BA3C @ case 2
	b _0238BA3C @ case 3
	b _0238BA3C @ case 4
	b _0238B938 @ case 5
	b _0238BA3C @ case 6
	b _0238BA3C @ case 7
	b _0238BA3C @ case 8
	b _0238BA3C @ case 9
	b _0238BA3C @ case 10
	b _0238BA3C @ case 11
	b _0238B96C @ case 12
	b _0238B990 @ case 13
	b _0238B9B4 @ case 14
	b _0238B9D8 @ case 15
_0238B78C:
	cmp r1, #0x47
	bgt _0238B79C
	beq _0238B7C4
	b _0238BA3C
_0238B79C:
	cmp r1, #0x4d
	beq _0238B7E0
	b _0238BA3C
_0238B7A8:
	cmp r1, #0x6c
	bgt _0238B7B8
	beq _0238B9F0
	b _0238BA3C
_0238B7B8:
	cmp r1, #0x89
	beq _0238BA14
	b _0238BA3C
_0238B7C4:
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_02011580
	ldr r1, [sp, #0x24]
	bl ov19_0238C80C
	mov r5, r0
	b _0238BCE8
_0238B7E0:
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_020115BC
	ldr r1, [sp, #0x24]
	bl ov19_0238C80C
	mov r5, r0
	b _0238BCE8
_0238B7FC:
	add r1, sp, #0x14
	add r2, sp, #0x24
	mov r0, r4
	bl FUN_020115F8
	ldr r2, _0238B424 @ =0x02324DB0
	mov r7, r0
	ldrh sb, [sp, #0x14]
	mov r0, #0x100
	mov r1, #0xf
	ldr r6, [sp, #0x24]
	ldr r4, [r2]
	bl FUN_02001170
	mov r5, r0
	add r0, sp, #0x88
	bl FUN_02023690
	cmp r7, #0
	str sb, [sp, #0x98]
	str r5, [sp, #0xc0]
	cmpeq r6, #0
	bne _0238B85C
	mov r0, r5
	bl FUN_02001188
	mov r5, #0
	b _0238BCE8
_0238B85C:
	mov r0, #1
	str r0, [r4, #0x1c4]
	cmp r7, #0
	bne _0238B8BC
	cmp r6, #0
	beq _0238B8BC
	add r0, r4, #0x100
	mov r1, #0x1c
	cmp r6, #1
	strh r1, [r0, #0xc8]
	ldrne r0, _0238C4A4 @ =0x000045D6
	add r6, sp, #0x88
	ldreq r0, _0238C4A8 @ =0x000045D7
	mov r3, #0x1c
	lsl r1, r0, #0x10
	lsr r2, r1, #0x10
	add r0, r4, #0x1cc
	mov r1, #0x400
	str r6, [sp]
	bl FUN_020235B8
	mov r0, r5
	bl FUN_02001188
	mov r5, #2
	b _0238BCE8
_0238B8BC:
	add r0, r4, #0x100
	mov r1, #0x1c
	strh r1, [r0, #0xc8]
	cmp r7, #1
	ldrne r0, _0238C4AC @ =0x000045D4
	add r6, sp, #0x88
	ldreq r0, _0238C4B0 @ =0x000045D5
	mov r3, #0x1c
	lsl r1, r0, #0x10
	lsr r2, r1, #0x10
	add r0, r4, #0x1cc
	mov r1, #0x400
	str r6, [sp]
	bl FUN_020235B8
	mov r0, r5
	bl FUN_02001188
	mov r5, #1
	b _0238BCE8
_0238B904:
	mov r0, r4
	bl FUN_0230AD7C
	cmp r0, #0
	beq _0238B924
	mov r0, #1
	bl ov19_0238CB2C
	mov r5, #4
	b _0238BCE8
_0238B924:
	mov r0, r4
	mov r1, #1
	bl FUN_0230A31C
	mov r5, #3
	b _0238BCE8
_0238B938:
	mov r0, r4
	bl FUN_0230AD7C
	cmp r0, #0
	beq _0238B958
	mov r0, #5
	bl ov19_0238CB2C
	mov r5, #4
	b _0238BCE8
_0238B958:
	mov r0, r4
	mov r1, #5
	bl FUN_0230A31C
	mov r5, #3
	b _0238BCE8
_0238B96C:
	ldr r5, [sp, #0x24]
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_0201170C
	mov r1, r5
	mov r2, #2
	bl ov19_0238C900
	mov r5, r0
	b _0238BCE8
_0238B990:
	ldr r5, [sp, #0x24]
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_02011748
	mov r1, r5
	mov r2, #3
	bl ov19_0238C900
	mov r5, r0
	b _0238BCE8
_0238B9B4:
	ldr r5, [sp, #0x24]
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_02011784
	mov r1, r5
	mov r2, #4
	bl ov19_0238C900
	mov r5, r0
	b _0238BCE8
_0238B9D8:
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_020117FC
	bl ov19_0238C9F0
	mov r5, r0
	b _0238BCE8
_0238B9F0:
	ldr r5, [sp, #0x24]
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_020117C0
	mov r1, r5
	mov r2, #5
	bl ov19_0238C900
	mov r5, r0
	b _0238BCE8
_0238BA14:
	mov r0, r4
	bl FUN_02011830
	cmp r0, #0
	beq _0238BA3C
	add r1, sp, #0x24
	mov r0, r4
	bl FUN_02011850
	bl ov19_0238C9F0
	mov r5, r0
	b _0238BCE8
_0238BA3C:
	ldrsh r0, [r5, #0xd0]
	bl FUN_0200CBF4
	cmp r0, #0
	beq _0238BCE4
	ldr r0, _0238B424 @ =0x02324DB0
	ldr sb, [r0]
	ldr r0, [sb, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r4, r0
	ldr r0, _0238C4B4 @ =0x0000068A
	mov r1, #0xf
	bl FUN_02001170
	mov r5, r0
	add r0, r5, #0x500
	str r0, [sp, #0x10]
	add r0, r5, #0x45
	add r6, r0, #0x600
	ldrsh r2, [r4, #0xa]
	add r1, sp, #0x114
	ldrb r3, [r4, #0xc]
	strh r2, [r1, #0x64]
	ldrsh r2, [r4, #8]
	ldrb r0, [r4, #0xd]
	ldrb fp, [r4, #0xe]
	strh r2, [r1, #0x66]
	strh r3, [r1, #0x68]
	strh r0, [r1, #0x6a]
	add sl, r5, #0x600
	ldrb r3, [r4, #0xf]
	strh fp, [r1, #0x6c]
	mov r0, sl
	strh r3, [r1, #0x6e]
	ldrsh r1, [r4, #4]
	bl FUN_02058D04
	str r0, [sp, #0xc]
	ldrsh r1, [sb, #0xd0]
	mov r0, r4
	mov r2, #0
	add r3, sp, #0x28
	bl FUN_02011528
	add r0, sp, #0x114
	ldrsh fp, [r4, #0xa]
	ldrsh r3, [r0, #0x64]
	ldrsh r2, [r4, #8]
	ldrsh r1, [r0, #0x66]
	sub r3, fp, r3
	ldrb lr, [r4, #0xc]
	strh r3, [r0, #0x64]
	sub r1, r2, r1
	strh r1, [r0, #0x66]
	ldrsh ip, [r0, #0x68]
	ldrb r3, [r4, #0xd]
	ldrsh r1, [r0, #0x6a]
	sub fp, lr, ip
	ldrb lr, [r4, #0xe]
	sub r1, r3, r1
	strh fp, [r0, #0x68]
	strh r1, [r0, #0x6a]
	ldrsh ip, [r0, #0x6c]
	ldrb r3, [r4, #0xf]
	ldrsh r1, [r0, #0x6e]
	sub fp, lr, ip
	strh fp, [r0, #0x6c]
	sub r1, r3, r1
	strh r1, [r0, #0x6e]
	ldrsh r1, [r4, #4]
	mov r0, r6
	bl FUN_02058D04
	mov fp, r0
	mov r0, #0
	strb r0, [r5]
	ldrsh r0, [sp, #0x28]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0238BB9C
_0238BB70: @ jump table
	b _0238BB80 @ case 0
	b _0238BB88 @ case 1
	b _0238BB90 @ case 2
	b _0238BB98 @ case 3
_0238BB80:
	ldr r7, _0238C4B8 @ =0x000045E3
	b _0238BB9C
_0238BB88:
	ldr r7, _0238C4BC @ =0x000045E4
	b _0238BB9C
_0238BB90:
	ldr r7, _0238C4C0 @ =0x000045E5
	b _0238BB9C
_0238BB98:
	ldr r7, _0238C4C4 @ =0x000045E6
_0238BB9C:
	add r0, sp, #0xd8
	bl FUN_02023690
	ldr r0, _0238B424 @ =0x02324DB0
	mov r2, r7
	ldr r1, [r0]
	add r3, sp, #0xd8
	ldr r7, [r1, #0xd4]
	add r0, r5, #0x400
	orr r7, r7, #0x20000
	str r7, [sp, #0xd8]
	str r3, [sp]
	mov r1, #0x400
	mov r3, #0x1c
	bl FUN_020235B8
	mov r0, r5
	add r1, r5, #0x400
	bl FUN_020897AC
	add r0, sp, #0x114
	ldrsh r0, [r0, #0x66]
	cmp r0, #0
	beq _0238BC0C
	stm sp, {sl, fp}
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r2, r4
	add r1, r5, #0x400
	str r6, [sp, #8]
	bl ov19_0238CBC0
_0238BC0C:
	add r0, sp, #0x128
	bl FUN_02023690
	ldr r0, [sb, #0xd4]
	ldr r4, _0238C4C8 @ =0x0238E1CC
	orr r0, r0, #0x20000
	str r0, [sp, #0x128]
	ldr r0, [sp, #0x10]
	mov r7, #2
	str r0, [sp, #0x160]
	add fp, sp, #0x128
	add r6, sp, #0x178
_0238BC38:
	lsl r0, r7, #1
	ldrsh sl, [r6, r0]
	cmp sl, #0
	beq _0238BC8C
	ldr r1, _0238C4CC @ =0x0238E2C0
	mov r0, r5
	bl FUN_020897AC
	lsl r1, r7, #1
	ldrh r1, [r4, r1]
	ldr r0, [sp, #0x10]
	str sl, [sp, #0x14c]
	bl FUN_020258B8
	ldr r2, _0238C4D0 @ =0x000045E7
	add r0, r5, #0x400
	mov r1, #0x100
	mov r3, #0
	str fp, [sp]
	bl FUN_020235B8
	mov r0, r5
	add r1, r5, #0x400
	bl FUN_020897AC
_0238BC8C:
	add r7, r7, #1
	cmp r7, #6
	blt _0238BC38
	add r0, sp, #0x128
	bl FUN_02023690
	mov r0, #4
	str r0, [sp, #0x14c]
	add r0, sb, #0x100
	mov r3, #0x1c
	strh r3, [r0, #0xc8]
	add r4, sp, #0x128
	mov r2, r5
	add r0, sb, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020223F0
	mov r1, #1
	mov r0, r5
	str r1, [sb, #0x1c4]
	bl FUN_02001188
	mov r5, #1
	b _0238BCE8
_0238BCE4:
	mov r5, #0
_0238BCE8:
	str r5, [r8, #0x108]
	cmp r5, #0
	bne _0238BD2C
	add r0, sp, #0x570
	bl FUN_02023690
	ldr r1, [r8, #0xd4]
	add r0, r8, #0x100
	orr r1, r1, #0x20000
	str r1, [sp, #0x570]
	mov r3, #0x1c
	strh r3, [r0, #0xc8]
	add r4, sp, #0x570
	ldr r2, _0238C4D4 @ =0x000045C1
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020235B8
_0238BD2C:
	cmp r5, #3
	moveq r0, #0x29
	movne r0, #0x26
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238BD48:
	mov r3, #0
	mov r2, r3
_0238BD50:
	add r0, r8, r3, lsl #1
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	add r1, r8, r3
	strh r2, [r0, #0x18]
	add r3, r3, #1
	strb r2, [r1, #0x124]
	cmp r3, #6
	blt _0238BD50
	add r0, sp, #0x1c
	add r1, sp, #0x20
	bl ov19_0238A194
	mov r0, #5
	bl FUN_02002274
	mov r4, r0
	ldr r1, [sp, #0x20]
	cmp r4, #1
	ldr r0, [sp, #0x1c]
	addge r4, r4, #1
	add r1, r1, #1
	bl FUN_0200228C
	add r1, r8, r4, lsl #1
	rsb r3, r0, #0
	add r2, r1, #0x100
	add r0, r8, #0x10c
	mov r1, #0
	strh r3, [r2, #0xc]
	bl ov19_0238CCEC
	cmp r0, #0
	bne _0238BDD0
	bl ov19_0238D310
	b _0238C598
_0238BDD0:
	add r0, r8, #0x10c
	bl ov19_0238CEC0
	mov r0, #0x28
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238BDEC:
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #3
	str r0, [r8, #4]
	bl ov19_0238D0D8
	b _0238C598
_0238BE08:
	ldr r1, [r8, #8]
	mvn r0, #0
	cmp r1, r0
	bne _0238BE28
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #3
	b _0238C59C
_0238BE28:
	str r1, [r8, #4]
	str r0, [r8, #8]
	b _0238C598
_0238BE34:
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #3
	str r0, [r8, #4]
	bl ov19_0238D0D8
	b _0238C598
_0238BE50:
	bl FUN_0230A390
	cmp r0, #0
	beq _0238C598
	bl FUN_0230AD50
	bl ov19_0238D0D8
	b _0238C598
_0238BE68:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ble _0238C598
	bl ov19_0238C640
	add r0, sp, #0x520
	bl FUN_02023690
	ldr r1, _0238B428 @ =0x0001012E
	mov r0, #9
	str r1, [sp, #0x56c]
	str r0, [r8, #0x1c4]
	bl ov19_0238D450
	ldr r1, _0238B484 @ =0x0000101C
	add r0, r8, #0x100
	strh r1, [r0, #0xc8]
	add r3, r1, #0x2000
	add r1, sp, #0x520
	str r1, [sp]
	ldr r2, _0238C4D8 @ =0x000045D9
	add r0, r8, #0x1cc
	mov r1, #0x400
	bl FUN_020235B8
	mov r0, #0x2b
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238BEE0:
	add r0, r8, #0x100
	ldrsh r0, [r0, #4]
	mov r1, #0
	mov r2, r1
	mov r3, r1
	bl FUN_02065BAC
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x2c
	str r0, [r8, #8]
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	movne r0, #0x10
	strne r0, [r8]
	bne _0238C598
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #0x11
	str r0, [r8]
	b _0238C598
_0238BF44:
	bl ov19_0238C640
	mov r0, #0xa
	str r0, [r8, #0x1c4]
	mov r0, #0x2d
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238BF64:
	add r0, sp, #0x5c
	bl FUN_0206351C
	mov r0, #1
	strb r0, [sp, #0x7e]
	add r0, r8, #0x100
	ldrsh r4, [r0, #6]
	mov r1, #0
	mov r3, #5
	add r0, sp, #0x5c
	mov r2, r1
	strh r4, [sp, #0x80]
	strb r3, [sp, #0x5e]
	bl FUN_0203D438
	mov r0, #0x2e
	str r0, [r8, #4]
	b _0238C598
_0238BFA4:
	bl FUN_0203D538
	cmp r0, #0
	beq _0238C598
	bl FUN_0203EFD4
	bl ov19_0238D310
	b _0238C598
_0238BFBC:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ble _0238C598
	add r0, sp, #0x4d0
	bl FUN_02023690
	mov r3, #0x60000
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238C4DC @ =0x000045DA
	add r2, sp, #0x4d0
	str r3, [sp, #0x51c]
	bl FUN_02046BE8
	mov r0, #0x30
	str r0, [r8, #4]
	b _0238C598
_0238C004:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	bl FUN_02046D20
	mov r0, #0
	add r1, r8, #0x100
	ldrsh r1, [r1, #4]
	mov r2, r0
	mov r3, r0
	bl FUN_02065BAC
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x31
	str r0, [r8, #8]
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	movne r0, #0x12
	strne r0, [r8]
	bne _0238C598
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #0x13
	str r0, [r8]
	b _0238C598
_0238C07C:
	add r0, sp, #0x480
	bl FUN_02023690
	add r1, r8, #0x100
	ldrsh r2, [r1, #4]
	add r0, r8, #0x10
	str r2, [sp, #0x4cc]
	ldrsh r1, [r1, #4]
	bl FUN_0204D7D4
	add r0, r8, #0x10
	mov r1, #0x13
	bl FUN_0204D804
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	beq _0238C0D0
	ldr r1, _0238C4E0 @ =0x0238E1BC
	add r0, r8, #0x10
	bl FUN_0204D848
	b _0238C0DC
_0238C0D0:
	ldr r1, _0238C4E4 @ =0x0238E1C4
	add r0, r8, #0x10
	bl FUN_0204D848
_0238C0DC:
	ldr r0, _0238B440 @ =0x0000301C
	ldr r1, _0238C4E8 @ =0x000045DB
	add r2, sp, #0x480
	bl FUN_02046BE8
	bl ov19_0238D450
	mov r0, #0x32
	str r0, [r8, #4]
	b _0238C598
_0238C0FC:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	add r0, sp, #0x3e8
	mov r1, #0x98
	bl FUN_02003250
	add r0, sp, #0x398
	bl FUN_02023690
	add r1, r8, #0x100
	ldrsh r2, [r1, #4]
	add r0, r8, #0x10
	str r2, [sp, #0x3e4]
	ldrsh r1, [r1, #4]
	bl FUN_0204D7D4
	add r0, r8, #0x10
	mov r1, #0x13
	bl FUN_0204D804
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	beq _0238C174
	ldr r1, _0238C4EC @ =0x0238E1A4
	add r0, r8, #0x10
	bl FUN_0204D848
	b _0238C180
_0238C174:
	ldr r1, _0238C4F0 @ =0x0238E1AC
	add r0, r8, #0x10
	bl FUN_0204D848
_0238C180:
	bl ov19_0238D450
	ldr r1, _0238C4F4 @ =0x0238E220
	ldr r0, _0238C4F8 @ =0x000045DC
	str r1, [sp]
	str r0, [sp, #4]
	add r4, sp, #0x398
	add r3, sp, #0x3e8
	mov r0, #0
	mov r1, #0x3000
	mov r2, #0x31
	str r4, [sp, #8]
	bl FUN_02046A20
	mov r0, #0x33
	str r0, [r8, #4]
	b _0238C598
_0238C1BC:
	bl ov19_0238D418
	cmp r0, #8
	bne _0238C200
	bl ov19_0238D47C
	bl FUN_02046D20
	ldr r1, _0238C4FC @ =0x0238E1B4
	add r0, r8, #0x10
	bl FUN_0204D848
	add r0, r8, #0x10
	mov r1, #0
	bl FUN_0204D804
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x36
	str r0, [r8, #4]
	b _0238C598
_0238C200:
	sub r0, r0, #9
	cmp r0, #1
	bhi _0238C598
	bl ov19_0238D47C
	bl FUN_02046D20
	add r0, r8, #0x10
	mov r1, #0
	bl FUN_0204D804
	ldr r1, _0238C4FC @ =0x0238E1B4
	add r0, r8, #0x10
	bl FUN_0204D848
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x34
	str r0, [r8, #4]
	b _0238C598
_0238C244:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ble _0238C598
	bl ov19_0238D47C
	ldr r1, _0238C500 @ =0x00000163
	add r0, r8, #0x10
	bl FUN_0204D7D4
	add r0, sp, #0x348
	bl FUN_02023690
	add r0, r8, #0x100
	ldrsh r3, [r0, #4]
	ldr r1, _0238C504 @ =0x000045DF
	add r2, sp, #0x348
	mov r0, #0x1c
	str r3, [sp, #0x348]
	bl FUN_02046BE8
	mov r0, #0x35
	str r0, [r8, #4]
	b _0238C598
_0238C2A0:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	bl FUN_02046D20
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #3
	str r0, [r8, #8]
	mov r0, #0x14
	str r0, [r8]
	b _0238C598
_0238C2E4:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ble _0238C598
	bl ov19_0238D47C
	ldr r1, _0238C500 @ =0x00000163
	add r0, r8, #0x10
	bl FUN_0204D7D4
	add r0, sp, #0x30
	bl FUN_0206351C
	mov r0, #6
	strb r0, [sp, #0x32]
	add r0, r8, #0x100
	ldrsh r3, [r0, #4]
	mov r1, #0
	add r0, sp, #0x30
	mov r2, r1
	strh r3, [sp, #0x54]
	bl FUN_0203D438
	mov r0, #0x37
	str r0, [r8, #4]
	b _0238C598
_0238C348:
	bl FUN_0203D538
	cmp r0, #0
	beq _0238C598
	bl FUN_0203EFD4
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x38
	str r0, [r8, #8]
	mov r0, #0x14
	str r0, [r8]
	b _0238C598
_0238C380:
	bl FUN_0230D220
	cmp r0, #0
	bne _0238C598
	bl FUN_02311D6C
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	str r0, [r8, #4]
	mov r0, #3
	str r0, [r8, #8]
_0238C3AC:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	bl ov19_0238C640
	add r0, sp, #0x2f8
	bl FUN_02023690
	add r0, r8, #0x100
	mov r3, #0x1c
	strh r3, [r0, #0xc8]
	add r4, sp, #0x2f8
	ldr r2, _0238C508 @ =0x000045E1
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020235B8
	mov r0, #0xb
	str r0, [r8, #0x1c4]
	mov r0, #0x3b
	str r0, [r8, #4]
	mov r0, #0xc
	str r0, [r8]
	b _0238C598
_0238C410:
	bl FUN_02046D20
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x3d
	str r0, [r8, #4]
	mov r0, #0x3c
	str r0, [r8, #8]
	mov r0, #0x15
	str r0, [r8]
	b _0238C598
_0238C43C:
	bl FUN_0230D220
	cmp r0, #0
	bne _0238C598
	bl FUN_02311D6C
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	str r0, [r8, #4]
	mov r0, #3
	str r0, [r8, #8]
	b _0238C598
_0238C46C:
	ldr r1, [r8, #8]
	mvn r0, #0
	str r1, [r8, #4]
	str r0, [r8, #8]
	b _0238C598
_0238C480:
	bl ov19_0238D310
	b _0238C598
	.align 2, 0
_0238C488: .4byte 0x000045C0
_0238C48C: .4byte 0x0238E238
_0238C490: .4byte 0x000045B2
_0238C494: .4byte 0x0238E18A
_0238C498: .4byte 0x0238E17E
_0238C49C: .4byte 0x0238E190
_0238C4A0: .4byte 0x000045B9
_0238C4A4: .4byte 0x000045D6
_0238C4A8: .4byte 0x000045D7
_0238C4AC: .4byte 0x000045D4
_0238C4B0: .4byte 0x000045D5
_0238C4B4: .4byte 0x0000068A
_0238C4B8: .4byte 0x000045E3
_0238C4BC: .4byte 0x000045E4
_0238C4C0: .4byte 0x000045E5
_0238C4C4: .4byte 0x000045E6
_0238C4C8: .4byte 0x0238E1CC
_0238C4CC: .4byte 0x0238E2C0
_0238C4D0: .4byte 0x000045E7
_0238C4D4: .4byte 0x000045C1
_0238C4D8: .4byte 0x000045D9
_0238C4DC: .4byte 0x000045DA
_0238C4E0: .4byte 0x0238E1BC
_0238C4E4: .4byte 0x0238E1C4
_0238C4E8: .4byte 0x000045DB
_0238C4EC: .4byte 0x0238E1A4
_0238C4F0: .4byte 0x0238E1AC
_0238C4F4: .4byte 0x0238E220
_0238C4F8: .4byte 0x000045DC
_0238C4FC: .4byte 0x0238E1B4
_0238C500: .4byte 0x00000163
_0238C504: .4byte 0x000045DF
_0238C508: .4byte 0x000045E1
_0238C50C:
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	cmp r0, #0xa
	bne _0238C598
	ldr r1, [r8, #8]
	mvn r0, #0
	cmp r1, r0
	bne _0238C544
	bl ov19_0238D47C
	bl FUN_02046D20
	mov r0, #3
	b _0238C59C
_0238C544:
	cmp r1, #8
	cmpne r1, #0xe
	bne _0238C558
	bl ov19_0238D47C
	bl FUN_02046D20
_0238C558:
	mov r0, #0x3e
	str r0, [r8, #4]
	add r0, r8, #0x100
	mov r1, #0
	strh r1, [r0]
	b _0238C598
_0238C570:
	add r0, r8, #0x100
	ldrsh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrsh r0, [r0]
	cmp r0, #0xa
	ldrge r1, [r8, #8]
	mvnge r0, #0
	strge r1, [r8, #4]
	strge r0, [r8, #8]
_0238C598:
	mov r0, #0
_0238C59C:
	add sp, sp, #0x308
	add sp, sp, #0x800
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov19_0238ADFC

	arm_func_start ov19_0238C5A8
ov19_0238C5A8: @ 0x0238C5A8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl FUN_0200ED84
	mov sb, #0
	mov r7, #1
	mov r8, r0
	mov sl, sb
	mov r6, sb
	mov fp, sb
	mov r5, r7
	ldr r4, _0238C63C @ =0x02324DB0
	b _0238C624
_0238C5D4:
	lsl r0, sl, #0x10
	asr r0, r0, #0x10
	bl FUN_0200F348
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r7
	moveq r1, r6
	tst r1, #0xff
	beq _0238C620
	ldrsh r0, [r0, #4]
	bl GetBarItem
	cmp r0, #0
	movne r0, r5
	moveq r0, fp
	tst r0, #0xff
	ldrne r0, [r4]
	addne r0, r0, sb, lsl #1
	strhne sl, [r0, #0x68]
	addne sb, sb, #1
_0238C620:
	add sl, sl, #1
_0238C624:
	cmp sl, r8
	blt _0238C5D4
	ldr r0, _0238C63C @ =0x02324DB0
	ldr r0, [r0]
	str sb, [r0, #0x64]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0238C63C: .4byte 0x02324DB0
	arm_func_end ov19_0238C5A8

	arm_func_start ov19_0238C640
ov19_0238C640: @ 0x0238C640
	ldr r0, _0238C66C @ =0x02324DB0
	mov r2, #0x1c
	ldr r3, [r0]
	mov r1, #0
	add r0, r3, #0x100
	strh r2, [r0, #0xc8]
	strh r2, [r0, #0xca]
	strb r1, [r3, #0x1cc]
	strb r1, [r3, #0x5cc]
	str r1, [r3, #0x1c4]
	bx lr
	.align 2, 0
_0238C66C: .4byte 0x02324DB0
	arm_func_end ov19_0238C640

	arm_func_start ov19_0238C670
ov19_0238C670: @ 0x0238C670
	push {r3, r4, r5, lr}
	sub sp, sp, #0x50
	ldr r1, _0238C6C0 @ =0x02324DB0
	add r0, sp, #0
	ldr r4, [r1]
	mov r5, #0
	bl FUN_02023690
	add r0, r4, #0x1cc
	bl FUN_0202A66C
	cmp r0, #0
	bne _0238C6B4
	add r0, r4, #0x100
	ldrh r0, [r0, #0xc8]
	add r2, sp, #0
	add r1, r4, #0x1cc
	bl FUN_02046C30
	mov r5, #1
_0238C6B4:
	mov r0, r5
	add sp, sp, #0x50
	pop {r3, r4, r5, pc}
	.align 2, 0
_0238C6C0: .4byte 0x02324DB0
	arm_func_end ov19_0238C670

	arm_func_start ov19_0238C6C4
ov19_0238C6C4: @ 0x0238C6C4
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _0238C7AC @ =0x02324DB0
	mov r0, #0
	ldr r4, [r1]
	ldr r1, [r4, #0x1c4]
	cmp r1, #0
	beq _0238C7A4
	ldr r0, [r4, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055410
	cmp r0, #0
	movne r0, #1
	bne _0238C79C
	ldr r0, [r4, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055474
	cmp r0, #0
	movne r0, #0xd
	bne _0238C79C
	ldr r1, [r4, #0xd4]
	add r0, sp, #0
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	bl FUN_02056E04
	mov r3, #0
	add r2, sp, #0
	b _0238C750
_0238C73C:
	lsl r1, r3, #1
	ldrsh r1, [r2, r1]
	cmp r4, r1
	beq _0238C75C
	add r3, r3, #1
_0238C750:
	cmp r3, r0
	blt _0238C73C
	mvn r3, #0
_0238C75C:
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _0238C798
_0238C768: @ jump table
	b _0238C778 @ case 0
	b _0238C780 @ case 1
	b _0238C788 @ case 2
	b _0238C790 @ case 3
_0238C778:
	mov r0, #0x16
	b _0238C79C
_0238C780:
	mov r0, #0x17
	b _0238C79C
_0238C788:
	mov r0, #0x18
	b _0238C79C
_0238C790:
	mov r0, #0x19
	b _0238C79C
_0238C798:
	mvn r0, #0
_0238C79C:
	bl FUN_02065B70
	mov r0, #1
_0238C7A4:
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_0238C7AC: .4byte 0x02324DB0
	arm_func_end ov19_0238C6C4

	arm_func_start ov19_0238C7B0
ov19_0238C7B0: @ 0x0238C7B0
	push {r3, r4, r5, lr}
	sub sp, sp, #0x50
	ldr r1, _0238C808 @ =0x02324DB0
	add r0, sp, #0
	ldr r4, [r1]
	mov r5, #0
	bl FUN_02023690
	add r0, r4, #0x1cc
	add r0, r0, #0x400
	bl FUN_0202A66C
	cmp r0, #0
	bne _0238C7FC
	add r0, r4, #0x100
	ldrh r0, [r0, #0xca]
	add r1, r4, #0x1cc
	add r2, sp, #0
	add r1, r1, #0x400
	bl FUN_02046C30
	mov r5, #1
_0238C7FC:
	mov r0, r5
	add sp, sp, #0x50
	pop {r3, r4, r5, pc}
	.align 2, 0
_0238C808: .4byte 0x02324DB0
	arm_func_end ov19_0238C7B0

	arm_func_start ov19_0238C80C
ov19_0238C80C: @ 0x0238C80C
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x54
	ldr r2, _0238C8F4 @ =0x02324DB0
	mov r8, r0
	ldr r6, [r2]
	mov r7, r1
	ldr r0, [r6, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r5, r0
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, sp, #4
	bl FUN_02023690
	ldr r0, _0238C8F4 @ =0x02324DB0
	ldr r0, [r0]
	ldr r0, [r0, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020564B0
	mov r2, r0
	mov r1, r5
	mov r0, r4
	bl FUN_02056094
	str r4, [sp, #0x3c]
	mov r0, #1
	cmp r8, #0
	str r0, [r6, #0x1c4]
	mov r3, #0x1c
	add r5, sp, #4
	bne _0238C8C0
	str r7, [sp, #0x28]
	add r0, r6, #0x100
	strh r3, [r0, #0xc8]
	ldr r2, _0238C8F8 @ =0x000045E9
	add r0, r6, #0x1cc
	mov r1, #0x400
	str r5, [sp]
	bl FUN_020235B8
	mov r0, r4
	bl FUN_02001188
	b _0238C8E8
_0238C8C0:
	str r8, [sp, #0x28]
	add r0, r6, #0x100
	strh r3, [r0, #0xc8]
	ldr r2, _0238C8FC @ =0x000045E8
	add r0, r6, #0x1cc
	mov r1, #0x400
	str r5, [sp]
	bl FUN_020235B8
	mov r0, r4
	bl FUN_02001188
_0238C8E8:
	mov r0, #1
	add sp, sp, #0x54
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238C8F4: .4byte 0x02324DB0
_0238C8F8: .4byte 0x000045E9
_0238C8FC: .4byte 0x000045E8
	arm_func_end ov19_0238C80C

	arm_func_start ov19_0238C900
ov19_0238C900: @ 0x0238C900
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x54
	ldr r3, _0238C9E0 @ =0x02324DB0
	mov r8, r0
	ldr r5, [r3]
	mov r7, r1
	ldr r0, [r5, #0xd4]
	mov r6, r2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, sp, #4
	bl FUN_02023690
	ldr r0, _0238C9E4 @ =0x0238E1CC
	lsl r1, r6, #1
	ldrh r1, [r0, r1]
	mov r0, r4
	bl FUN_020258B8
	ldr r0, _0238C9E0 @ =0x02324DB0
	cmp r8, #0
	ldr r0, [r0]
	moveq r6, #1
	ldr r0, [r0, #0xd4]
	movne r6, #0
	orr r0, r0, #0x20000
	cmp r6, #0
	moveq r7, r8
	str r0, [sp, #4]
	str r7, [sp, #0x28]
	str r4, [sp, #0x3c]
	add r0, r5, #0x100
	mov r1, #0x1c
	strh r1, [r0, #0xc8]
	cmp r6, #0
	ldrne r0, _0238C9E8 @ =0x000045EB
	add r7, sp, #4
	ldreq r0, _0238C9EC @ =0x000045EA
	mov r3, #0x1c
	lsl r1, r0, #0x10
	lsr r2, r1, #0x10
	add r0, r5, #0x1cc
	mov r1, #0x400
	str r7, [sp]
	bl FUN_020235B8
	mov r0, r4
	bl FUN_02001188
	mov r0, #1
	str r0, [r5, #0x1c4]
	cmp r6, #0
	movne r0, #2
	add sp, sp, #0x54
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0238C9E0: .4byte 0x02324DB0
_0238C9E4: .4byte 0x0238E1CC
_0238C9E8: .4byte 0x000045EB
_0238C9EC: .4byte 0x000045EA
	arm_func_end ov19_0238C900

	arm_func_start ov19_0238C9F0
ov19_0238C9F0: @ 0x0238C9F0
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x5c
	ldr r1, _0238CB20 @ =0x02324DB0
	mov sb, r0
	ldr r8, [r1]
	ldr r0, [r8, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r4, r0
	ldr r0, _0238CB24 @ =0x0000068A
	mov r1, #0xf
	bl FUN_02001170
	mov r5, r0
	add r0, r5, #0x45
	add r7, r0, #0x600
	mov r0, #0
	strb r0, [r5]
	add r0, sp, #0xc
	add r6, r5, #0x600
	bl FUN_02023690
	add r1, sp, #0xc
	str r1, [sp]
	ldr r2, _0238CB28 @ =0x000045D8
	add r0, r5, #0x400
	mov r1, #0x100
	mov r3, #0
	bl FUN_020235B8
	mov r0, r5
	add r1, r5, #0x400
	bl FUN_020897AC
	cmp sb, #0
	beq _0238CABC
	ldrsh r2, [r4, #8]
	ldrsh r1, [r4, #4]
	mov r0, r6
	sub r2, r2, sb
	bl FUN_02058D04
	mov sb, r0
	ldrsh r1, [r4, #4]
	ldrsh r2, [r4, #8]
	mov r0, r7
	bl FUN_02058D04
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, r5
	str r7, [sp, #8]
	mov r2, r4
	mov r3, sb
	add r1, r5, #0x400
	bl ov19_0238CBC0
_0238CABC:
	add r0, sp, #0xc
	bl FUN_02023690
	ldr r0, _0238CB20 @ =0x02324DB0
	mov r1, #4
	ldr r0, [r0]
	str r1, [sp, #0x30]
	ldr r1, [r0, #0xd4]
	add r0, r8, #0x100
	orr r1, r1, #0x20000
	str r1, [sp, #0xc]
	mov r3, #0x1c
	strh r3, [r0, #0xc8]
	add r4, sp, #0xc
	mov r2, r5
	add r0, r8, #0x1cc
	mov r1, #0x400
	str r4, [sp]
	bl FUN_020223F0
	mov r1, #1
	mov r0, r5
	str r1, [r8, #0x1c4]
	bl FUN_02001188
	mov r0, #1
	add sp, sp, #0x5c
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0238CB20: .4byte 0x02324DB0
_0238CB24: .4byte 0x0000068A
_0238CB28: .4byte 0x000045D8
	arm_func_end ov19_0238C9F0

	arm_func_start ov19_0238CB2C
ov19_0238CB2C: @ 0x0238CB2C
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x54
	ldr r1, _0238CBB8 @ =0x02324DB0
	mov r6, r0
	ldr r5, [r1]
	ldr r0, [r5, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r4, r0
	mov r0, #1
	bl FUN_02017C50
	add r0, sp, #4
	bl FUN_02023690
	ldr r0, _0238CBB8 @ =0x02324DB0
	mov ip, #0x204
	ldr r0, [r0]
	mov r3, #0x1c
	ldr r0, [r0, #0xd4]
	add r1, r5, #0x100
	orr r0, r0, #0x20000
	str r0, [sp, #4]
	ldrb r4, [r4, #1]
	add r2, sp, #4
	add r0, r5, #0x1cc
	add r4, r4, r6
	str r4, [sp, #0x28]
	str ip, [sp, #0x2c]
	strh r3, [r1, #0xc8]
	str r2, [sp]
	ldr r2, _0238CBBC @ =0x000045EC
	mov r1, #0x400
	bl FUN_020235B8
	add sp, sp, #0x54
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0238CBB8: .4byte 0x02324DB0
_0238CBBC: .4byte 0x000045EC
	arm_func_end ov19_0238CB2C

	arm_func_start ov19_0238CBC0
ov19_0238CBC0: @ 0x0238CBC0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x5c
	ldr r4, _0238CCDC @ =0x02324DB0
	mov sl, r0
	ldr r4, [r4]
	mov r0, #0
	ldr r8, [sp, #0x80]
	ldr r7, [sp, #0x84]
	ldr r6, [sp, #0x88]
	mov sb, r1
	mov fp, r2
	str r3, [sp, #4]
	mov r5, #1
	str r0, [sp, #8]
_0238CBF8:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	b _0238CC1C
_0238CC08:
	ldrb r0, [r8, r3]
	cmp r5, r0
	moveq r1, #1
	beq _0238CC28
	add r3, r3, #1
_0238CC1C:
	ldr r0, [sp, #4]
	cmp r3, r0
	blt _0238CC08
_0238CC28:
	mov r3, #0
	b _0238CC44
_0238CC30:
	ldrb r0, [r6, r3]
	cmp r5, r0
	moveq r2, #1
	beq _0238CC4C
	add r3, r3, #1
_0238CC44:
	cmp r3, r7
	blt _0238CC30
_0238CC4C:
	cmp r1, r2
	beq _0238CCC4
	add r0, sp, #0xc
	bl FUN_02023690
	ldr r1, _0238CCE0 @ =0x0238E2C0
	mov r0, sl
	bl FUN_020897AC
	ldr r1, [r4, #0xd4]
	mov r0, sl
	orr r1, r1, #0x20000
	str r1, [sp, #0xc]
	ldr r1, _0238CCE4 @ =0x0238E2C4
	str r5, [sp, #0x1c]
	bl FUN_020897AC
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #8]
	arm_func_end ov19_0238CBC0

	arm_func_start ov19_0238CC94
ov19_0238CC94: @ 0x0238CC94
	ldr r2, _0238CCE8 @ =0x000045E2
	mov r0, sb
	mov r1, #0x100
	mov r3, #0
	bl FUN_020235B8
	arm_func_end ov19_0238CC94

	arm_func_start ov19_0238CCA8
ov19_0238CCA8: @ 0x0238CCA8
	mov r0, sl
	mov r1, sb
	bl FUN_020897AC
	add r0, fp, #0x14
	and r1, r5, #0xff
	arm_func_end ov19_0238CCA8

	arm_func_start ov19_0238CCBC
ov19_0238CCBC: @ 0x0238CCBC
	bl FUN_02058DF4
	add r5, r5, #1
_0238CCC4:
	add r5, r5, #1
	cmp r5, #0x45
	blt _0238CBF8
	ldr r0, [sp, #8]
	add sp, sp, #0x5c
	arm_func_end ov19_0238CCBC

	arm_func_start ov19_0238CCD8
ov19_0238CCD8: @ 0x0238CCD8
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0238CCDC: .4byte 0x02324DB0
_0238CCE0: .4byte 0x0238E2C0
_0238CCE4: .4byte 0x0238E2C4
_0238CCE8: .4byte 0x000045E2
	arm_func_end ov19_0238CCD8

	arm_func_start ov19_0238CCEC
ov19_0238CCEC: @ 0x0238CCEC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	arm_func_end ov19_0238CCEC

	arm_func_start ov19_0238CCF0
ov19_0238CCF0: @ 0x0238CCF0
	ldr r2, _0238CEBC @ =0x02324DB0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r0, [r0, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	mov r6, r0
	mov r0, #0
	mov sb, r0
	str r4, [r5, #0x20]
	mov fp, r0
	b _0238CEB0
_0238CD28:
	lsl r1, sb, #1
	ldrsh r7, [r5, r1]
	cmp r7, #0
	beq _0238CE9C
	cmp sb, #5
	addls pc, pc, sb, lsl #2
	b _0238CE74
_0238CD44: @ jump table
	b _0238CD5C @ case 0
	b _0238CD84 @ case 1
	b _0238CDD4 @ case 2
	b _0238CDFC @ case 3
	b _0238CE24 @ case 4
	b _0238CE4C @ case 5
_0238CD5C:
	mov r1, r7
	add r0, r6, #0xa
	ldrsh r8, [r6, #0xa]
	bl FUN_02054FB8
	movs sl, r0
	ldrshne r0, [r6, #0xa]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	b _0238CE78
_0238CD84:
	ldrsh r8, [r6, #8]
	ldrsh r1, [r6, #4]
	add r0, r5, #0x2c
	mov r2, r8
	bl FUN_02058D04
	str r0, [r5, #0x24]
	mov r1, r7
	add r0, r6, #8
	bl FUN_02055054
	movs sl, r0
	ldrshne r0, [r6, #8]
	ldrsh r1, [r6, #4]
	ldrsh r2, [r6, #8]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	add r0, r5, #0x71
	bl FUN_02058D04
	str r0, [r5, #0x28]
	b _0238CE78
_0238CDD4:
	mov r1, r7
	add r0, r6, #0xc
	ldrb r8, [r6, #0xc]
	bl FUN_02054FEC
	movs sl, r0
	ldrbne r0, [r6, #0xc]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	b _0238CE78
_0238CDFC:
	mov r1, r7
	add r0, r6, #0xd
	ldrb r8, [r6, #0xd]
	bl FUN_02054FEC
	movs sl, r0
	ldrbne r0, [r6, #0xd]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	b _0238CE78
_0238CE24:
	mov r1, r7
	add r0, r6, #0xe
	ldrb r8, [r6, #0xe]
	bl FUN_02055020
	movs sl, r0
	ldrbne r0, [r6, #0xe]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	b _0238CE78
_0238CE4C:
	mov r1, r7
	add r0, r6, #0xf
	ldrb r8, [r6, #0xf]
	bl FUN_02055020
	movs sl, r0
	ldrbne r0, [r6, #0xf]
	subne r0, r0, r8
	lslne r0, r0, #0x10
	asrne r7, r0, #0x10
	b _0238CE78
_0238CE74:
	mov sl, #0
_0238CE78:
	add r0, r5, sb, lsl #1
	strh r7, [r0, #0xc]
	add r0, r5, sb
	strb sl, [r0, #0x18]
	cmp r4, #1
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	b _0238CEAC
_0238CE9C:
	add r1, r5, r1
	strh fp, [r1, #0xc]
	add r1, r5, sb
	strb fp, [r1, #0x18]
_0238CEAC:
	add sb, sb, #1
_0238CEB0:
	cmp sb, #6
	blt _0238CD28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0238CEBC: .4byte 0x02324DB0
	arm_func_end ov19_0238CCF0

	arm_func_start ov19_0238CEC0
ov19_0238CEC0: @ 0x0238CEC0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	ldr r1, _0238D0BC @ =0x02324DB0
	mov sl, r0
	ldr sb, [r1]
	ldr r0, [sb, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_020555A8
	str r0, [sp, #0x10]
	ldr r0, _0238D0C0 @ =0x0000068A
	mov r1, #0xf
	bl FUN_02001170
	mov r4, r0
	add r0, r4, #0x500
	str r0, [sp, #0xc]
	mov r7, #0
	bl ov19_0238C640
	add r0, sp, #0x20
	bl FUN_02023690
	ldr r0, [sb, #0xd4]
	mov r8, r7
	orr r0, r0, #0x20000
	str r0, [sp, #0x20]
	add r0, sl, #0x2c
	str r0, [sp, #0x14]
	add r0, sl, #0x71
	str r0, [sp, #0x18]
	add r0, sb, #0x100
	add fp, sb, #0x1cc
	str r0, [sp, #0x1c]
_0238CF3C:
	add r0, sl, r8, lsl #1
	ldrsh r5, [r0, #0xc]
	add r0, sl, r8
	ldrb r6, [r0, #0x18]
	cmp r5, #0
	beq _0238D0A0
	cmp r7, #0
	bne _0238CF84
	add r0, sp, #0x20
	str r0, [sp]
	ldr r2, [sl, #0x20]
	add r0, fp, #0x400
	lsl r7, r2, #1
	ldr r2, _0238D0C4 @ =0x0238E178
	mov r1, #0x100
	ldrh r2, [r2, r7]
	mov r3, #0
	bl FUN_020235B8
_0238CF84:
	add r0, fp, #0x400
	bl FUN_02020868
	mov r7, r0
	ldr r1, _0238D0C8 @ =0x0238E1CC
	lsl r2, r8, #1
	ldrh r1, [r1, r2]
	ldr r0, [sp, #0xc]
	bl FUN_020258B8
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x58]
	mov r0, r5
	bl FUN_0208655C
	str r0, [sp, #0x44]
	cmp r8, #1
	ldreq r0, [sl, #0x20]
	lsleq r1, r0, #1
	ldreq r0, _0238D0CC @ =0x0238E196
	ldrheq r2, [r0, r1]
	beq _0238CFF0
	ldr r0, [sl, #0x20]
	cmp r6, #0
	lsleq r1, r0, #1
	ldreq r0, _0238D0D0 @ =0x0238E19C
	ldrheq r2, [r0, r1]
	lslne r1, r0, #1
	ldrne r0, _0238D0D4 @ =0x0238E184
	ldrhne r2, [r0, r1]
_0238CFF0:
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, r4
	mov r1, #0x100
	mov r3, #0
	bl FUN_020235B8
	cmp r8, #1
	bne _0238D04C
	cmp r5, #0
	ble _0238D04C
	cmp r6, #0
	beq _0238D04C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	ldr r1, [sl, #0x28]
	mov r0, r4
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r3, [sl, #0x24]
	add r1, r4, #0x400
	bl ov19_0238CBC0
_0238D04C:
	add r0, sp, #0x20
	bl FUN_02023690
	mov r0, #4
	str r0, [sp, #0x44]
	mov r0, #0xa
	strb r0, [r7], #1
	ldr r0, [sp, #0x1c]
	mov r1, #0x1c
	strh r1, [r0, #0xca]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, r7
	mov r1, #0x400
	mov r2, r4
	mov r3, #0x1c
	bl FUN_020223F0
	cmp r5, #0
	movgt r0, #1
	strgt r0, [sb, #0x1c4]
	movle r0, #2
	strle r0, [sb, #0x1c4]
_0238D0A0:
	add r8, r8, #1
	cmp r8, #6
	blt _0238CF3C
	mov r0, r4
	bl FUN_02001188
	add sp, sp, #0x70
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0238D0BC: .4byte 0x02324DB0
_0238D0C0: .4byte 0x0000068A
_0238D0C4: .4byte 0x0238E178
_0238D0C8: .4byte 0x0238E1CC
_0238D0CC: .4byte 0x0238E196
_0238D0D0: .4byte 0x0238E19C
_0238D0D4: .4byte 0x0238E184
	arm_func_end ov19_0238CEC0

	arm_func_start ov19_0238D0D8
ov19_0238D0D8: @ 0x0238D0D8
	push {r3, r4, r5, lr}
	sub sp, sp, #0xc0
	ldr r0, _0238D308 @ =0x02324DB0
	ldr r4, [r0]
	bl ov19_0238C640
	ldr r0, [r4, #0xfc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0238D300
_0238D0FC: @ jump table
	b _0238D118 @ case 0
	b _0238D120 @ case 1
	b _0238D118 @ case 2
	b _0238D274 @ case 3
	b _0238D290 @ case 4
	b _0238D2AC @ case 5
	b _0238D1D0 @ case 6
_0238D118:
	bl ov19_0238D310
	b _0238D300
_0238D120:
	ldr r0, _0238D308 @ =0x02324DB0
	ldr r0, [r0]
	ldrsh r0, [r0, #0xd0]
	bl GetBarItem
	mov ip, #0
	mov r5, ip
	add r3, sp, #8
_0238D13C:
	lsl r1, ip, #1
	strh r5, [r3, r1]
	add r2, r3, ip, lsl #1
	add r1, r3, ip
	strh r5, [r2, #0xc]
	add ip, ip, #1
	strb r5, [r1, #0x18]
	cmp ip, #6
	blt _0238D13C
	ldrsh r2, [r0, #2]
	mov r1, #1
	strh r2, [sp, #8]
	ldrsh r2, [r0, #4]
	strh r2, [sp, #0xa]
	ldrsh r2, [r0, #6]
	strh r2, [sp, #0xc]
	ldrsh r2, [r0, #8]
	strh r2, [sp, #0xe]
	ldrsh r2, [r0, #0xa]
	strh r2, [sp, #0x10]
	ldrsh r2, [r0, #0xc]
	mov r0, r3
	strh r2, [sp, #0x12]
	bl ov19_0238CCEC
	cmp r0, #0
	bne _0238D1AC
	bl ov19_0238D310
	b _0238D300
_0238D1AC:
	add r0, sp, #8
	bl ov19_0238CEC0
	mov r0, #0x27
	str r0, [r4, #4]
	mov r0, #0x40
	str r0, [r4, #8]
	mov r0, #0xc
	str r0, [r4]
	b _0238D300
_0238D1D0:
	mov r5, #0
	mov r3, r5
	add r2, sp, #8
_0238D1DC:
	lsl r0, r5, #1
	strh r3, [r2, r0]
	add r1, r2, r5, lsl #1
	add r0, r2, r5
	strh r3, [r1, #0xc]
	add r5, r5, #1
	strb r3, [r0, #0x18]
	cmp r5, #6
	blt _0238D1DC
	add r0, sp, #0
	add r1, sp, #4
	bl ov19_0238A180
	mov r0, #6
	bl FUN_02002274
	ldr r1, [sp, #4]
	mov r5, r0
	ldr r0, [sp]
	add r1, r1, #1
	bl FUN_0200228C
	add r1, sp, #8
	lsl r2, r5, #1
	strh r0, [r1, r2]
	mov r0, r1
	mov r1, #2
	bl ov19_0238CCEC
	cmp r0, #0
	bne _0238D250
	bl ov19_0238D310
	b _0238D300
_0238D250:
	add r0, sp, #8
	bl ov19_0238CEC0
	mov r0, #0x27
	str r0, [r4, #4]
	mov r0, #0x40
	str r0, [r4, #8]
	mov r0, #0xc
	str r0, [r4]
	b _0238D300
_0238D274:
	bl FUN_02046D20
	add r0, r4, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x2a
	str r0, [r4, #4]
	b _0238D300
_0238D290:
	bl FUN_02046D20
	add r0, r4, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x2f
	str r0, [r4, #4]
	b _0238D300
_0238D2AC:
	mov r0, #0
	bl ov19_0238A3D4
	mov r1, #0xf
	bl FUN_02001170
	mov r5, r0
	bl ov19_0238A3EC
	bl FUN_02002274
	ldrb r1, [r5, r0]
	mov r0, r5
	strb r1, [r4, #0x102]
	bl FUN_02001188
	ldrb r0, [r4, #0x102]
	bl FUN_0206A714
	mov r1, #3
	bl FUN_0204D018
	mov r0, #0x1c
	ldr r1, _0238D30C @ =0x000045E0
	mov r2, #0
	bl FUN_02046BE8
	mov r0, #0x3a
	str r0, [r4, #4]
_0238D300:
	add sp, sp, #0xc0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0238D308: .4byte 0x02324DB0
_0238D30C: .4byte 0x000045E0
	arm_func_end ov19_0238D0D8

	arm_func_start ov19_0238D310
ov19_0238D310: @ 0x0238D310
	push {r4, lr}
	ldr r0, _0238D384 @ =0x02324DB0
	ldr r4, [r0]
	bl ov19_0238D47C
	bl FUN_02046D20
	add r0, r4, #0x100
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x3d
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4, #8]
	ldr r0, [r4, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055528
	cmp r0, #0
	beq _0238D378
	ldr r0, [r4, #0xd4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_02055410
	cmp r0, #0
	movne r0, #9
	moveq r0, #0xa
	b _0238D37C
_0238D378:
	mov r0, #8
_0238D37C:
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0238D384: .4byte 0x02324DB0
	arm_func_end ov19_0238D310

	arm_func_start ov19_0238D388
ov19_0238D388: @ 0x0238D388
	push {r3, lr}
	bl FUN_02046C78
	cmp r0, #0
	movne r0, #0xa
	moveq r0, #0
	pop {r3, pc}
	arm_func_end ov19_0238D388

	arm_func_start ov19_0238D3A0
ov19_0238D3A0: @ 0x0238D3A0
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xf4
	mov r7, r0
	mov r6, r1
	add r0, sp, #0x5c
	mov r1, #0x98
	mov r5, r2
	mov r4, r3
	bl FUN_02003250
	add r0, sp, #0xf8
	ldrsb r0, [r0, #0x10]
	cmp r0, #0
	addge r0, r5, r0, lsl #3
	ldrge r1, [r0, #4]
	add r0, sp, #0xc
	movlt r1, #0
	str r1, [sp, #0x5c]
	bl FUN_02023690
	ldr r0, [sp, #0x10c]
	add ip, sp, #0xc
	str r0, [sp, #0x58]
	str r5, [sp]
	add r3, sp, #0x5c
	mov r0, r7
	mov r1, r6
	mov r2, #0x33
	stmib sp, {r4, ip}
	bl FUN_02046A20
	add sp, sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	arm_func_end ov19_0238D3A0

	arm_func_start ov19_0238D418
ov19_0238D418: @ 0x0238D418
	push {r3, lr}
	bl FUN_02046B04
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	popeq {r3, pc}
	sub r1, r2, #1
	cmp r0, r1
	moveq r0, #0xa
	popeq {r3, pc}
	sub r1, r2, #2
	cmp r0, r1
	moveq r0, #0xa
	pop {r3, pc}
	arm_func_end ov19_0238D418

	arm_func_start ov19_0238D450
ov19_0238D450: @ 0x0238D450
	push {r3, lr}
	ldr r0, _0238D478 @ =0x02324DB0
	mvn r1, #1
	ldr r2, [r0]
	ldrsb r0, [r2, #0xc]
	cmp r0, r1
	popeq {r3, pc}
	add r1, r2, #0x10
	bl FUN_0202F690
	pop {r3, pc}
	.align 2, 0
_0238D478: .4byte 0x02324DB0
	arm_func_end ov19_0238D450

	arm_func_start ov19_0238D47C
ov19_0238D47C: @ 0x0238D47C
	push {r3, lr}
	ldr r0, _0238D4A0 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	ldrsb r0, [r0, #0xc]
	cmp r0, r1
	popeq {r3, pc}
	bl FUN_0202F6DC
	pop {r3, pc}
	.align 2, 0
_0238D4A0: .4byte 0x02324DB0
	arm_func_end ov19_0238D47C

	arm_func_start ov19_0238D4A4
ov19_0238D4A4: @ 0x0238D4A4
	push {r4, lr}
	ldr ip, _0238D4E0 @ =0x02324DB0
	mov r3, r2
	ldr r2, [ip]
	mov lr, #0
	add r2, r2, r1
	strb lr, [r2, #0x23]
	ldr ip, [ip]
	mov r2, #1
	add r1, ip, r1, lsl #1
	ldrsh r1, [r1, #0x68]
	mov r4, r0
	bl FUN_022BD394
	mov r0, r4
	pop {r4, pc}
	.align 2, 0
_0238D4E0: .4byte 0x02324DB0
	arm_func_end ov19_0238D4A4

	arm_func_start ov19_0238D4E4
ov19_0238D4E4: @ 0x0238D4E4
	push {r3, lr}
	ldr r0, _0238D518 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	ldrsb r0, [r0, #0x20]
	cmp r0, r1
	popeq {r3, pc}
	bl FUN_022BCCF4
	ldr r0, _0238D518 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x20]
	pop {r3, pc}
	.align 2, 0
_0238D518: .4byte 0x02324DB0
	arm_func_end ov19_0238D4E4

	arm_func_start ov19_0238D51C
ov19_0238D51C: @ 0x0238D51C
	push {r3, lr}
	ldr r1, _0238D568 @ =0x02324DB0
	mvn r0, #1
	ldr r2, [r1]
	ldrsb r1, [r2, #0x20]
	cmp r1, r0
	popeq {r3, pc}
	ldr r0, [r2, #0xd4]
	bl FUN_0203FD80
	bl FUN_020407C0
	ldr r0, _0238D568 @ =0x02324DB0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x20]
	bl FUN_020308A0
	ldr r0, _0238D568 @ =0x02324DB0
	mvn r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x20]
	pop {r3, pc}
	.align 2, 0
_0238D568: .4byte 0x02324DB0
	arm_func_end ov19_0238D51C

	arm_func_start ov19_0238D56C
ov19_0238D56C: @ 0x0238D56C
	push {r4, lr}
	ldr r0, _0238D5F0 @ =0x00000A68
	mov r1, #8
	bl FUN_02001170
	mov r4, r0
	ldr r1, _0238D5F4 @ =0x02324DB0
	add r0, r4, #0x9d0
	str r4, [r1]
	bl FUN_02034A38
	str r0, [r4, #0x9cc]
	mvn r2, #1
	strb r2, [r4, #0xc]
	strb r2, [r4, #0x20]
	strb r2, [r4, #0x21]
	ldr r1, _0238D5F8 @ =0x00000163
	add r0, r4, #0x10
	strb r2, [r4, #0x22]
	bl FUN_0204D7D4
	add r0, r4, #0x10
	mov r1, #0
	bl FUN_0204D804
	add r0, r4, #0x10
	mov r1, #0
	bl FUN_0204D7F4
	add r0, r4, #0x5c
	bl FUN_020580C4
	mov r0, #0
	str r0, [r4]
	sub r0, r0, #1
	str r0, [r4, #4]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0238D5F0: .4byte 0x00000A68
_0238D5F4: .4byte 0x02324DB0
_0238D5F8: .4byte 0x00000163
	arm_func_end ov19_0238D56C

	arm_func_start ov19_0238D5FC
ov19_0238D5FC: @ 0x0238D5FC
	push {r4, lr}
	ldr r1, _0238D684 @ =0x02324DB0
	mov r0, #0
	ldr r4, [r1]
	mov r1, #3
	mov r2, #1
	bl FUN_0202F5AC
	strb r0, [r4, #0xc]
	mvn r2, #1
	strb r2, [r4, #0x20]
	strb r2, [r4, #0x21]
	ldr r1, _0238D688 @ =0x00000163
	add r0, r4, #0x10
	strb r2, [r4, #0x22]
	bl FUN_0204D7D4
	add r0, r4, #0x10
	mov r1, #0
	bl FUN_0204D804
	add r0, r4, #0x10
	mov r1, #0
	bl FUN_0204D7F4
	add r0, r4, #0x5c
	bl FUN_020580C4
	ldr r0, [r4]
	cmp r0, #0
	bne _0238D67C
	mov r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #8]
_0238D67C:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0238D684: .4byte 0x02324DB0
_0238D688: .4byte 0x00000163
	arm_func_end ov19_0238D5FC
	@ 0x0238D68C