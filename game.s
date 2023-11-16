	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #1
	mov	r1, #32
	mov	r0, #0
	mov	r6, #5
	mov	lr, #2
	mov	r9, #20
	mov	r8, #210
	mov	r7, #10
	mov	r2, r4
	ldr	r3, .L10
	mov	ip, r1
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldr	r1, .L10+4
	str	r0, [r3, #36]
	strb	r0, [r3, #44]
	str	r0, [r3, #60]
	str	r0, [r3, #64]
	str	r9, [r3]
	str	r8, [r3, #4]
	str	r7, [r3, #24]
	str	r6, [r3, #56]
	str	r6, [r3, #40]
	str	r4, [r3, #28]
	str	lr, [r3, #8]
	str	lr, [r3, #12]
	ldr	r3, .L10+8
	mov	r5, r0
	add	r0, r1, #24
.L2:
	strb	r2, [r3, #44]
	ldr	r4, [r1, #4]!
	ldr	lr, [r0, #4]!
	add	r2, r2, #1
	cmp	r2, #7
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L2
	mov	r2, #8
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L10+12
	ldr	r3, .L10+16
	add	r0, r1, #16
.L3:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r1], #4
	and	r2, lr, #255
	ldr	lr, [r0], #4
	cmp	r2, #12
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L3
	mov	r2, #15
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L10+20
	ldr	r3, .L10+24
	add	r0, r1, #28
.L4:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r1], #4
	and	r2, lr, #255
	ldr	lr, [r0], #4
	cmp	r2, #22
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L4
	ldr	r3, .L10+28
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	player
	.word	.LANCHOR0-4
	.word	orange
	.word	.LANCHOR0+48
	.word	cucumber
	.word	.LANCHOR0+80
	.word	catnip
	.word	initRat
	.size	initGame, .-initGame
	.align	2
	.global	colorAt
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L13
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L14:
	.align	2
.L13:
	.word	bg_collisionmapBitmap
	.size	colorAt, .-colorAt
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #5
	mov	r6, #20
	mov	r5, #210
	mov	r4, #1
	mov	lr, #10
	mov	r0, #32
	mov	r1, #2
	ldr	r3, .L17
	strb	r2, [r3, #44]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #28]
	str	lr, [r3, #24]
	str	ip, [r3, #56]
	str	ip, [r3, #40]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r0, .L22
	ldr	r2, .L22+4
	ldr	r3, [r0]
	ldr	r1, [r2]
	ldr	r2, .L22+8
	sub	r3, r3, r1
	ldr	r5, [r2]
	ldr	r1, [r0, #4]
	ldr	lr, .L22+12
	ldr	r4, [r0, #28]
	ldr	r2, [r0, #36]
	ldrb	ip, [r0, #44]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, lr, ip, lsl #3
	orr	r3, r3, #32768
	cmp	r4, #1
	sub	r1, r1, r5
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	lsl	ip, ip, #3
	and	r1, r1, #255
	and	r2, r2, #1020
	orreq	r3, r3, #4096
	strh	r1, [lr, ip]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strheq	r3, [r0, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"attack\000"
	.text
	.align	2
	.global	playerAttack
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerAttack, %function
playerAttack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L27
	ldr	r0, .L27+4
	mov	lr, pc
	bx	r3
	mov	lr, #1
	ldr	r1, .L27+8
	ldr	r2, .L27+12
	ldr	r3, [r1]
	ldr	r0, [r2]
	ldr	ip, .L27+16
	sub	r3, r3, r0
	ldr	r5, [ip]
	ldr	r0, [r1, #4]
	ldr	r2, [r1, #36]
	ldrb	ip, [r1, #44]	@ zero_extendqisi2
	ldr	r4, .L27+20
	sub	r0, r0, r5
	lsl	r3, r3, #23
	ldr	r5, [r1, #28]
	add	r2, r2, #32
	lsr	r3, r3, #23
	cmp	r5, lr
	orr	r3, r3, #32768
	add	r5, r4, ip, lsl #3
	lsl	r2, r2, #2
	strh	r3, [r5, #2]	@ movhi
	and	r0, r0, #255
	orreq	r3, r3, #4096
	and	r2, r2, #1020
	lsl	ip, ip, #3
	str	lr, [r1, #64]
	strh	r0, [r4, ip]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strheq	r3, [r5, #2]	@ movhi
	ldr	r4, .L27+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	mgba_printf
	.word	.LC0
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	DMANow
	.size	playerAttack, .-playerAttack
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"disgusted\000"
	.text
	.align	2
	.global	playerDisgusted
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerDisgusted, %function
playerDisgusted:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L32
	ldr	r0, .L32+4
	mov	lr, pc
	bx	r3
	mov	lr, #256
	ldr	r0, .L32+8
	ldr	r2, .L32+12
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L32+16
	sub	r3, r3, r2
	ldr	r5, [r1]
	ldr	r2, [r0, #4]
	ldr	r4, [r0, #28]
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	ldr	ip, .L32+20
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #32768
	cmp	r4, #1
	sub	r2, r2, r5
	strh	r3, [r0, #2]	@ movhi
	lsl	r1, r1, #3
	orreq	r3, r3, #4096
	and	r2, r2, #255
	strh	r2, [ip, r1]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strheq	r3, [r0, #2]	@ movhi
	ldr	r4, .L32+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L32+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	mgba_printf
	.word	.LC1
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	DMANow
	.size	playerDisgusted, .-playerDisgusted
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"%d\012\000"
	.align	2
.LC3:
	.ascii	"player attacked orange\000"
	.align	2
.LC4:
	.ascii	"player attacked cucumber\000"
	.text
	.align	2
	.global	playerCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerCollision, %function
playerCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L59
	ldr	r4, .L59+4
	ldr	r6, .L59+8
	ldr	r10, .L59+12
	ldr	r8, .L59+16
	ldr	r9, .L59+20
	sub	sp, sp, #20
	add	r7, r5, #408
	b	.L37
.L57:
	bl	playerDisgusted
	mov	r0, r9
	ldr	r1, [r4, #56]
	str	fp, [r5, #52]
	mov	lr, pc
	bx	r8
.L35:
	add	r5, r5, #68
	cmp	r7, r5
	beq	.L56
.L37:
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	add	r2, r4, #16
	sub	lr, lr, #10
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #4]
	str	lr, [sp, #12]
	ldr	r0, [r4]
	ldr	lr, [r5]
	sub	ip, ip, #10
	sub	r1, r1, #10
	stmib	sp, {r1, ip}
	str	lr, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L35
	ldr	fp, [r4, #64]
	cmp	fp, #0
	beq	.L57
	mov	r0, r10
	mov	lr, pc
	bx	r8
	mov	r3, #1
	add	r5, r5, #68
	str	r3, [r5, #-16]
	cmp	r7, r5
	bne	.L37
.L56:
	ldr	r5, .L59+24
	ldr	r10, .L59+28
	ldr	r8, .L59+16
	ldr	r9, .L59+20
	add	r7, r5, #272
.L40:
	ldr	r0, [r5, #20]
	ldr	ip, [r5, #16]
	sub	r0, r0, #10
	sub	ip, ip, #20
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r5, #4]
	add	r1, r1, #10
	str	r1, [sp]
	str	ip, [sp, #4]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L38
	ldr	fp, [r4, #64]
	cmp	fp, #0
	bne	.L39
	bl	playerDisgusted
	mov	r0, r9
	ldr	r1, [r4, #56]
	str	fp, [r5, #52]
	mov	lr, pc
	bx	r8
.L38:
	add	r5, r5, #68
	cmp	r7, r5
	bne	.L40
	ldr	r5, .L59+32
	mov	r10, #1
	ldr	r9, .L59+20
	ldr	r8, .L59+16
	add	r7, r5, #476
	b	.L42
.L41:
	add	r5, r5, #68
	cmp	r7, r5
	beq	.L58
.L42:
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	add	r2, r4, #16
	sub	lr, lr, #10
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #4]
	str	lr, [sp, #12]
	ldr	r0, [r4]
	ldr	lr, [r5]
	sub	ip, ip, #10
	sub	r1, r1, #10
	stmib	sp, {r1, ip}
	str	lr, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L41
	str	r10, [r5, #52]
	mov	r0, r9
	ldr	r1, [r4, #60]
	add	r5, r5, #68
	mov	lr, pc
	bx	r8
	cmp	r7, r5
	bne	.L42
.L58:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	mov	r0, r10
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [r5, #52]
	b	.L38
.L60:
	.align	2
.L59:
	.word	orange
	.word	player
	.word	collision
	.word	.LC3
	.word	mgba_printf
	.word	.LC2
	.word	cucumber
	.word	.LC4
	.word	catnip
	.size	playerCollision, .-playerCollision
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L110
	ldr	r4, .L110+4
	ldrh	r1, [r5]
	ldr	r6, [r4, #4]
	lsr	r3, r1, #6
	eor	r3, r3, #1
	mov	r8, #0
	cmp	r6, #0
	movle	r3, #0
	andgt	r3, r3, #1
	ldr	r0, [r4, #20]
	ldr	r7, [r4]
	ldr	ip, [r4, #16]
	cmp	r3, r8
	add	r2, r0, r6
	add	lr, ip, r7
	str	r8, [r4, #48]
	sub	lr, lr, #1
	sub	r8, r2, #1
	bne	.L104
.L62:
	tst	r1, #128
	bne	.L63
	ldr	r2, [r4, #4]
	add	r3, r0, r2
	cmp	r3, #255
	ble	.L105
.L63:
	ands	r3, r1, #32
	bne	.L65
	cmp	r7, #0
	str	r3, [r4, #28]
	ble	.L65
	ldr	r2, [r4, #8]
	ldr	r3, .L110+8
	sub	r2, r7, r2
	add	r7, r2, r6, lsl #9
	ldrb	r7, [r7, r3]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L106
.L65:
	tst	r1, #16
	bne	.L68
	mov	r3, #1
	ldr	r7, [r4]
	add	r2, ip, r7
	cmp	r2, #512
	str	r3, [r4, #28]
	blt	.L107
.L68:
	tst	r1, #512
	beq	.L108
.L70:
	and	r1, r1, #240
	cmp	r1, #240
	beq	.L73
.L72:
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	bne	.L74
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #40]
	add	r2, r2, #1
	cmp	r2, r1
	movge	r2, r3
	mov	r3, #10
	str	r2, [r4, #36]
	str	r3, [r4, #24]
.L74:
	ldm	r4, {r2, r3}
	add	r0, r0, r0, lsr #31
	sub	r2, r2, #120
	add	r2, r2, r0, asr #1
	add	ip, ip, ip, lsr #31
	sub	r3, r3, #80
	bic	r2, r2, r2, asr #31
	add	r3, r3, ip, asr #1
	bic	r3, r3, r3, asr #31
	cmp	r2, #272
	movge	r2, #272
	cmp	r3, #96
	movge	r3, #96
	ldr	r1, .L110+12
	ldr	r0, .L110+16
	str	r3, [r1]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	r2, [r0]
	b	playerCollision
.L107:
	ldr	r10, [r4, #8]
	ldr	r9, .L110+8
	add	r2, r10, lr
	add	r3, r2, r6, lsl #9
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L68
	add	r2, r2, r8, lsl #9
	ldrb	r3, [r2, r9]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r7, r7, r10
	strne	r7, [r4]
	tst	r1, #512
	bne	.L70
.L108:
	bl	playerAttack
	ldrh	r3, [r5]
	and	r2, r3, #240
	cmp	r2, #240
	bne	.L109
	tst	r3, #512
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #16]
	beq	.L72
.L73:
	mov	r2, #0
	mov	r3, #10
	str	r2, [r4, #36]
	str	r3, [r4, #24]
	b	.L74
.L105:
	ldr	r10, [r4, #12]
	ldr	r9, .L110+8
	add	r3, r10, r8
	add	fp, r7, r3, lsl #9
	ldrb	fp, [fp, r9]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r3, r3, #9
	beq	.L63
	add	r3, lr, r3
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r2, r2, r10
	strne	r2, [r4, #4]
	b	.L63
.L104:
	ldr	r3, [r4, #12]
	ldr	r2, .L110+8
	sub	r3, r6, r3
	add	r9, r7, r3, lsl #9
	ldrb	r9, [r9, r2]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r9, r3, #9
	beq	.L62
	add	r9, lr, r9
	ldrb	r2, [r9, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r3, [r4, #4]
	b	.L62
.L109:
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #16]
	b	.L72
.L106:
	add	r7, r2, r8, lsl #9
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	cmp	r3, #0
	strne	r2, [r4]
	b	.L65
.L111:
	.align	2
.L110:
	.word	buttons
	.word	player
	.word	bg_collisionmapBitmap
	.word	vOff
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	ldr	r3, .L114
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	updateRat
	.size	updateGame, .-updateGame
	.align	2
	.global	initOrange
	.syntax unified
	.arm
	.fpu softvfp
	.type	initOrange, %function
initOrange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #1
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L120
	ldr	r3, .L120+4
	add	r0, r1, #24
.L117:
	strb	r2, [r3, #44]
	ldr	r4, [r1, #4]!
	ldr	lr, [r0, #4]!
	add	r2, r2, #1
	cmp	r2, #7
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L117
	pop	{r4, r5, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	.LANCHOR0-4
	.word	orange
	.size	initOrange, .-initOrange
	.align	2
	.global	drawOrange
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawOrange, %function
drawOrange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #512
	mov	r7, #268
	ldr	r1, .L128
	ldr	r2, .L128+4
	ldr	r3, .L128+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L128+12
	ldr	r4, .L128+16
	ldr	lr, .L128+20
	add	ip, r3, #408
.L125:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L124
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L124:
	add	r3, r3, #68
	cmp	r3, ip
	bne	.L125
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	vOff
	.word	hOff
	.word	orange
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawOrange, .-drawOrange
	.align	2
	.global	initCucumber
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCucumber, %function
initCucumber:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #8
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L134
	ldr	r3, .L134+4
	add	r0, r1, #16
.L131:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r1], #4
	and	r2, lr, #255
	ldr	lr, [r0], #4
	cmp	r2, #12
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L131
	pop	{r4, r5, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	.LANCHOR0+48
	.word	cucumber
	.size	initCucumber, .-initCucumber
	.align	2
	.global	drawCucumber
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCucumber, %function
drawCucumber:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #272
	mov	r8, #512
	ldr	r1, .L142
	ldr	r2, .L142+4
	ldr	r3, .L142+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L142+12
	ldr	r4, .L142+16
	ldr	lr, .L142+20
	add	ip, r3, r7
.L139:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L138
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L138:
	add	r3, r3, #68
	cmp	r3, ip
	bne	.L139
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L143:
	.align	2
.L142:
	.word	vOff
	.word	hOff
	.word	cucumber
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawCucumber, .-drawCucumber
	.align	2
	.global	initCatnip
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCatnip, %function
initCatnip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #15
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L148
	ldr	r3, .L148+4
	add	r0, r1, #28
.L145:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r1], #4
	and	r2, lr, #255
	ldr	lr, [r0], #4
	cmp	r2, #22
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #68
	bne	.L145
	pop	{r4, r5, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	.LANCHOR0+80
	.word	catnip
	.size	initCatnip, .-initCatnip
	.align	2
	.global	drawCatnip
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCatnip, %function
drawCatnip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #512
	mov	r7, #276
	ldr	r1, .L156
	ldr	r2, .L156+4
	ldr	r3, .L156+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L156+12
	ldr	r4, .L156+16
	ldr	lr, .L156+20
	add	ip, r3, #476
.L153:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L152
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L152:
	add	r3, r3, #68
	cmp	r3, ip
	bne	.L153
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	vOff
	.word	hOff
	.word	catnip
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawCatnip, .-drawCatnip
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayer
	bl	drawOrange
	bl	drawCucumber
	bl	drawCatnip
	ldr	r3, .L160
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	drawRat
	.size	drawGame, .-drawGame
	.global	yNip
	.global	xNip
	.global	yCuc
	.global	xCuc
	.global	yOrange
	.global	xOrange
	.comm	score,4,4
	.comm	dog,68,4
	.comm	catnip,476,4
	.comm	rat,68,4
	.comm	cucumber,272,4
	.comm	orange,408,4
	.comm	player,68,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xOrange, %object
	.size	xOrange, 24
xOrange:
	.word	160
	.word	410
	.word	360
	.word	100
	.word	320
	.space	4
	.type	yOrange, %object
	.size	yOrange, 24
yOrange:
	.word	170
	.word	80
	.word	16
	.word	110
	.word	40
	.space	4
	.type	xCuc, %object
	.size	xCuc, 16
xCuc:
	.word	165
	.word	248
	.word	464
	.word	308
	.type	yCuc, %object
	.size	yCuc, 16
yCuc:
	.word	20
	.word	32
	.word	196
	.word	212
	.type	xNip, %object
	.size	xNip, 28
xNip:
	.word	276
	.word	5
	.word	8
	.word	480
	.word	200
	.space	8
	.type	yNip, %object
	.size	yNip, 28
yNip:
	.word	10
	.word	160
	.word	16
	.word	0
	.word	215
	.space	8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
