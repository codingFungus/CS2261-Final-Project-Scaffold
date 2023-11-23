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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #32
	ldr	r2, .L12
	mov	r1, r5
	str	r5, [r2, #16]
	str	r5, [r2, #20]
	mov	r5, #10
	mov	lr, #0
	mov	r7, #1
	mov	r6, #2
	mov	fp, #5
	mov	r10, #20
	mov	r9, #210
	mov	r8, #7
	str	r5, [r2, #24]
	ldr	r5, .L12+4
	str	lr, [r2, #36]
	strb	lr, [r2, #44]
	str	lr, [r2, #60]
	str	lr, [r2, #64]
	str	lr, [r2, #68]
	mov	r4, lr
	str	fp, [r2, #56]
	str	r10, [r2]
	str	r9, [r2, #4]
	str	r8, [r2, #40]
	str	r7, [r2, #28]
	str	r6, [r2, #8]
	str	r6, [r2, #12]
	mov	r3, r7
	mov	ip, #170
	mov	r0, #160
	ldr	r2, .L12+8
	add	lr, r5, #24
	b	.L4
.L2:
	ldr	r0, [r5], #4
	ldr	ip, [lr], #4
.L4:
	strb	r3, [r2, #44]
	add	r3, r3, #1
	cmp	r3, #7
	stm	r2, {r0, ip}
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r4, [r2, #52]
	add	r2, r2, #72
	bne	.L2
	mov	r2, #8
	mov	ip, #20
	mov	r0, #165
	mov	r1, #32
	mov	r6, #0
	ldr	lr, .L12+12
	ldr	r3, .L12+16
	add	r5, lr, #16
.L3:
	add	r4, r2, #1
	strb	r2, [r3, #44]
	and	r2, r4, #255
	cmp	r2, #12
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r6, [r3, #52]
	add	r3, r3, #72
	ldrne	r0, [lr], #4
	ldrne	ip, [r5], #4
	bne	.L3
.L10:
	ldr	lr, .L12+20
	mov	r2, #15
	mov	ip, #10
	mov	r0, #276
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L12+24
	add	r4, lr, #28
	b	.L6
.L11:
	ldr	r0, [lr], #4
	ldr	ip, [r4], #4
	and	r2, r5, #255
.L6:
	cmp	r2, #21
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r5, r2, #1
	add	r3, r3, #72
	bne	.L11
	ldr	r3, .L12+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+40
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	.LANCHOR0+4
	.word	orange
	.word	.LANCHOR0+52
	.word	cucumber
	.word	.LANCHOR0+84
	.word	catnip
	.word	initRat
	.word	initScore
	.word	initHeart
	.word	initLives
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
	ldr	r3, .L15
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L16:
	.align	2
.L15:
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
	push	{r4, r5, r6, r7, lr}
	mov	r0, #32
	mov	r7, #5
	mov	r6, #20
	mov	r5, #210
	mov	r4, #7
	mov	lr, #1
	mov	r1, #2
	mov	ip, #10
	ldr	r3, .L19
	strb	r2, [r3, #44]
	str	r7, [r3, #56]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #40]
	str	lr, [r3, #28]
	str	ip, [r3, #24]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L20:
	.align	2
.L19:
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
	ldr	r2, .L25
	ldr	r3, [r2, #68]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L22
	ldr	r1, .L25+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L25+8
	ldr	r0, [r2, #4]
	ldr	lr, [r1]
	ldr	r1, [r2, #36]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r4, .L25+12
	sub	r0, r0, lr
	lsl	r1, r1, #2
	add	lr, r4, ip, lsl #3
	and	r0, r0, #255
	lsl	ip, ip, #3
	and	r1, r1, #1020
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [r4, ip]	@ movhi
	strh	r1, [lr, #4]	@ movhi
.L22:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	bne	.L21
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	ldr	r3, .L25+12
	add	r3, r3, r2, lsl #3
	ldrh	r2, [r3, #2]
	orr	r2, r2, #4096
	strh	r2, [r3, #2]	@ movhi
.L21:
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L32
	push	{r4, r5, r6, lr}
	ldr	r0, .L32+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L32+8
	ldr	r3, [r2, #68]
	cmp	r3, #0
	bne	.L29
	ldr	r1, .L32+12
	ldr	r3, [r2]
	ldr	ip, [r1]
	ldr	r0, .L32+16
	ldr	r1, [r2, #36]
	sub	r3, r3, ip
	ldr	lr, [r0]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r0, [r2, #4]
	ldr	r4, .L32+20
	ldr	r5, [r2, #28]
	lsl	r3, r3, #23
	add	r1, r1, #32
	lsr	r3, r3, #23
	orr	r3, r3, #32768
	sub	r0, r0, lr
	lsl	r2, r1, #2
	add	lr, r4, ip, lsl #3
	cmp	r5, #1
	strh	r3, [lr, #2]	@ movhi
	lsl	ip, ip, #3
	and	r1, r0, #255
	and	r2, r2, #1020
	orreq	r3, r3, #4096
	strh	r1, [r4, ip]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	strheq	r3, [lr, #2]	@ movhi
.L29:
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
	ldr	r3, .L37
	ldr	r0, .L37+4
	mov	lr, pc
	bx	r3
	mov	lr, #256
	ldr	r0, .L37+8
	ldr	r2, .L37+12
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L37+16
	sub	r3, r3, r2
	ldr	r5, [r1]
	ldr	r2, [r0, #4]
	ldr	r4, [r0, #28]
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	ldr	ip, .L37+20
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
	ldr	r4, .L37+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L37+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	.align	2
.L37:
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
	.ascii	"player attacked orange\000"
	.align	2
.LC3:
	.ascii	"player lives: %d\012\000"
	.align	2
.LC4:
	.ascii	"player attacked cucumber\000"
	.align	2
.LC5:
	.ascii	"player score: %d\012\000"
	.align	2
.LC6:
	.ascii	"player attacked rat\000"
	.align	2
.LC7:
	.ascii	"rat lives: %d\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerCollision.part.0, %function
playerCollision.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L70
	sub	sp, sp, #28
	str	r3, [sp, #20]
	ldr	r4, .L70+4
	ldr	r6, .L70+8
	ldr	r10, .L70+12
	ldr	r9, .L70+16
	ldr	r8, .L70+20
	ldr	fp, .L70+24
	add	r7, r5, #432
.L42:
	ldr	r0, [r5, #20]
	ldr	ip, [r5, #16]
	sub	r0, r0, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #4]
	str	r0, [sp, #12]
	sub	ip, ip, #10
	ldr	r0, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	sub	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	sub	r3, r3, #5
	ldr	r1, [r4, #4]
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L40
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #20]
	eorne	r3, r2, #1
	cmp	r3, #0
	bne	.L67
	bl	playerDisgusted
	mov	r2, #30
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r2, [r10]
	bl	playerDisgusted
	mov	r0, r9
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r8
.L40:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L42
	ldr	r5, .L70+28
	ldr	r10, .L70+12
	ldr	r9, .L70+16
	ldr	r8, .L70+20
	ldr	fp, .L70+32
	add	r7, r5, #288
.L45:
	ldr	r0, [r5, #20]
	ldr	ip, [r5, #16]
	sub	r0, r0, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	str	r0, [sp, #12]
	sub	ip, ip, #20
	ldr	r0, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r5, #4]
	add	r1, r1, #10
	str	r1, [sp]
	str	ip, [sp, #4]
	sub	r3, r3, #5
	ldr	r1, [r4, #4]
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L43
	ldr	r2, [r5, #52]
	ldr	r3, [sp, #20]
	cmp	r2, #0
	eor	r3, r3, #1
	bne	.L43
	ldr	r2, [r4, #64]
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L68
	bl	playerDisgusted
	mov	r3, #30
	ldr	r1, [r4, #56]
	mov	r0, r9
	sub	r1, r1, #1
	str	r1, [r4, #56]
	str	r3, [r10]
	mov	lr, pc
	bx	r8
.L43:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L45
	ldr	r5, .L70+36
	ldr	fp, .L70+12
	ldr	r10, .L70+40
	ldr	r8, .L70+20
	ldr	r9, .L70+16
	add	r7, r5, #504
.L49:
	ldr	r0, [r5, #20]
	ldr	ip, [r5, #16]
	sub	r0, r0, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #4]
	str	r0, [sp, #12]
	sub	ip, ip, #10
	ldr	r0, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	add	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	sub	r3, r3, #5
	ldr	r1, [r4, #4]
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L46
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L46
	mov	ip, #1
	ldr	r1, [r4, #60]
	add	r1, r1, ip
	cmp	r1, #5
	mov	r2, #30
	str	r1, [r4, #60]
	movgt	r1, #6
	str	r2, [fp]
	movgt	r2, r1
	ldr	r3, [r4, #56]
	add	r3, r3, ip
	strgt	r2, [r4, #60]
	cmp	r3, #4
	str	r3, [r4, #56]
	movgt	r3, #5
	mov	r0, r10
	str	ip, [r5, #52]
	strgt	r3, [r4, #56]
	mov	lr, pc
	bx	r8
	mov	r0, r9
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r8
.L46:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L49
	ldr	r5, .L70+44
	add	r0, r5, #16
	ldm	r0, {r0, r2}
	ldr	r3, [r4, #20]
	ldm	r5, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r4, #16]
	str	r0, [sp, #8]
	ldr	r0, [r4]
	stm	sp, {r1, ip}
	sub	r3, r3, #5
	ldr	r1, [r4, #4]
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L39
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L39
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L69
	mov	r1, #30
	ldr	r3, [r4, #56]
	ldr	r2, .L70+12
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r1, [r2]
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L70+16
	ldr	r3, .L70+20
	mov	lr, pc
	bx	r3
.L39:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L67:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L40
.L68:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L43
.L69:
	ldr	r4, .L70+20
	ldr	r0, .L70+48
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #56]
	ldr	r0, .L70+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #56]
	moveq	r3, #1
	streq	r3, [r5, #52]
	b	.L39
.L71:
	.align	2
.L70:
	.word	orange
	.word	player
	.word	collision
	.word	.LANCHOR1
	.word	.LC3
	.word	mgba_printf
	.word	.LC2
	.word	cucumber
	.word	.LC4
	.word	catnip
	.word	.LC5
	.word	rat
	.word	.LC6
	.word	.LC7
	.size	playerCollision.part.0, .-playerCollision.part.0
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
	@ link register save eliminated.
	ldr	r3, .L74
	ldr	r3, [r3]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L75:
	.align	2
.L74:
	.word	.LANCHOR1
	.size	playerCollision, .-playerCollision
	.align	2
	.global	playerAnimation
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerAnimation, %function
playerAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L84
.L77:
	ldr	r1, .L86+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L85
.L79:
	ldr	r2, [r1]
	ldr	r0, [r1, #20]
	ldr	r3, [r1, #4]
	ldr	r1, [r1, #16]
	add	r0, r0, r0, lsr #31
	sub	r2, r2, #120
	add	r2, r2, r0, asr #1
	add	r1, r1, r1, lsr #31
	sub	r3, r3, #80
	bic	r2, r2, r2, asr #31
	add	r3, r3, r1, asr #1
	bic	r3, r3, r3, asr #31
	cmp	r2, #272
	movge	r2, #272
	cmp	r3, #96
	movge	r3, #96
	ldr	r1, .L86+8
	ldr	ip, [r1]
	ldr	r0, .L86+12
	ldr	r1, .L86+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L82:
	ldr	r4, .L86+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L86+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L85:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L79
.L84:
	tst	r3, #512
	beq	.L77
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L86+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L79
.L87:
	.align	2
.L86:
	.word	buttons
	.word	player
	.word	.LANCHOR1
	.word	hOff
	.word	vOff
	.word	DMANow
	.word	shadowOAM
	.size	playerAnimation, .-playerAnimation
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
	ldr	r3, .L132
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrh	r3, [r3]
	ldr	r4, .L132+4
	lsr	r2, r3, #6
	ldr	lr, [r4, #4]
	eor	r2, r2, #1
	mov	r6, #0
	cmp	lr, #0
	movle	r2, #0
	andgt	r2, r2, #1
	ldr	r0, [r4, #20]
	ldr	r5, [r4]
	ldr	r7, [r4, #16]
	cmp	r2, r6
	add	r1, r0, lr
	add	ip, r7, r5
	str	r6, [r4, #48]
	sub	ip, ip, #1
	sub	r6, r1, #1
	bne	.L127
.L89:
	tst	r3, #128
	bne	.L90
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L128
.L90:
	ands	r2, r3, #32
	bne	.L92
	cmp	r5, #0
	str	r2, [r4, #28]
	ble	.L92
	ldr	r1, [r4, #8]
	ldr	r2, .L132+8
	sub	r1, r5, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L129
.L92:
	tst	r3, #16
	bne	.L95
	mov	r0, #1
	ldr	r5, [r4]
	add	r1, r7, r5
	cmp	r1, #512
	str	r0, [r4, #28]
	blt	.L130
.L95:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L131
.L98:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L128:
	ldr	r8, [r4, #12]
	ldr	r0, .L132+8
	add	r2, r8, r6
	add	r9, r5, r2, lsl #9
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r2, r2, #9
	beq	.L90
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r1, r8
	strne	r2, [r4, #4]
	b	.L90
.L130:
	ldr	r7, [r4, #8]
	ldr	r0, .L132+8
	add	r1, r7, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L95
	add	r1, r1, r6, lsl #9
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r5, r7
	strne	r2, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L98
.L131:
	bl	playerAttack
	mov	r3, #1
	str	r3, [r4, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L127:
	ldr	r2, [r4, #12]
	ldr	r1, .L132+8
	sub	r2, lr, r2
	add	r8, r5, r2, lsl #9
	ldrb	r8, [r8, r1]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r2, #9
	beq	.L89
	add	r8, ip, r8
	ldrb	r1, [r8, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L89
.L129:
	add	r0, r1, r6, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L92
.L133:
	.align	2
.L132:
	.word	buttons
	.word	player
	.word	bg_collisionmapBitmap
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
	ldr	r2, .L137
	push	{r4, lr}
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	bl	updatePlayer
	ldr	r3, .L137+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	.LANCHOR1
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
	ldr	lr, .L145
	mov	r2, #1
	mov	ip, #170
	mov	r0, #160
	mov	r1, #32
	mov	r5, #0
	ldr	r3, .L145+4
	add	r4, lr, #24
	b	.L141
.L144:
	ldr	r0, [lr], #4
	ldr	ip, [r4], #4
.L141:
	strb	r2, [r3, #44]
	add	r2, r2, #1
	cmp	r2, #7
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #72
	bne	.L144
	pop	{r4, r5, lr}
	bx	lr
.L146:
	.align	2
.L145:
	.word	.LANCHOR0+4
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #268
	mov	r10, #512
	ldr	r1, .L155
	ldr	r3, .L155+4
	ldr	r2, .L155+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L155+12
	ldr	r7, .L155+16
	ldr	r6, .L155+20
	add	r5, r2, #432
.L149:
	ldr	r1, [r2, #4]
	ldr	r3, [r2, #52]
	sub	r1, r1, r9
	cmp	r3, #0
	and	r1, r1, #255
	moveq	ip, r1
	movne	ip, r10
	ldr	r3, [r2]
	ldrb	r0, [r2, #44]	@ zero_extendqisi2
	sub	r3, r3, r8
	and	r3, r3, r7
	add	r2, r2, #72
	lsl	r4, r0, #3
	orr	r3, r3, r6
	add	r0, lr, r0, lsl #3
	cmp	r5, r2
	strh	fp, [r0, #4]	@ movhi
	strh	ip, [lr, r4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	bne	.L149
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L156:
	.align	2
.L155:
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
	push	{r4, r5, r6, lr}
	mov	r2, #8
	mov	lr, #20
	mov	ip, #165
	mov	r1, #32
	mov	r6, #0
	ldr	r0, .L161
	ldr	r3, .L161+4
	add	r5, r0, #16
.L159:
	add	r4, r2, #1
	strb	r2, [r3, #44]
	and	r2, r4, #255
	cmp	r2, #12
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r6, [r3, #52]
	add	r3, r3, #72
	ldrne	ip, [r0], #4
	ldrne	lr, [r5], #4
	bne	.L159
.L157:
	pop	{r4, r5, r6, lr}
	bx	lr
.L162:
	.align	2
.L161:
	.word	.LANCHOR0+52
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
	mov	r8, #512
	mov	r7, #272
	ldr	r1, .L169
	ldr	r2, .L169+4
	ldr	r3, .L169+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L169+12
	ldr	r4, .L169+16
	ldr	lr, .L169+20
	add	ip, r3, #288
.L166:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L165
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L165:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L166
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L170:
	.align	2
.L169:
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
	ldr	r0, .L176
	push	{r4, r5, r6, lr}
	mov	r2, #15
	mov	lr, #10
	mov	ip, #276
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L176+4
	add	r4, r0, #28
	b	.L173
.L175:
	ldr	ip, [r0], #4
	ldr	lr, [r4], #4
	and	r2, r5, #255
.L173:
	cmp	r2, #21
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r5, r2, #1
	add	r3, r3, #72
	bne	.L175
	pop	{r4, r5, r6, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	.LANCHOR0+84
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
	ldr	r1, .L184
	ldr	r2, .L184+4
	ldr	r3, .L184+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L184+12
	ldr	r4, .L184+16
	ldr	lr, .L184+20
	add	ip, r3, #504
.L181:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L180
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L180:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L181
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L185:
	.align	2
.L184:
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
	ldr	r3, .L188
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L189:
	.align	2
.L188:
	.word	drawRat
	.word	drawScore
	.word	drawHeart
	.word	drawLives
	.size	drawGame, .-drawGame
	.global	disgustedDisplayTimer
	.global	collisionCooldown
	.global	yNip
	.global	xNip
	.global	yCuc
	.global	xCuc
	.global	yOrange
	.global	xOrange
	.comm	player_life,72,4
	.comm	heart,72,4
	.comm	player_score,72,4
	.comm	dog,72,4
	.comm	catnip,504,4
	.comm	rat,72,4
	.comm	cucumber,288,4
	.comm	orange,432,4
	.comm	player,72,4
	.section	.rodata
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
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionCooldown, %object
	.size	collisionCooldown, 4
collisionCooldown:
	.space	4
	.type	disgustedDisplayTimer, %object
	.size	disgustedDisplayTimer, 4
disgustedDisplayTimer:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
