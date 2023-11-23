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
	mov	lr, #2
	mov	r10, #5
	mov	r9, #20
	mov	r8, #210
	mov	r7, #7
	mov	r6, #10
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
	str	r0, [r3, #68]
	str	r10, [r3, #56]
	str	r9, [r3]
	str	r8, [r3, #4]
	str	r7, [r3, #40]
	str	r6, [r3, #24]
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
	add	r3, r3, #72
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
	add	r3, r3, #72
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
	add	r3, r3, #72
	bne	.L4
	ldr	r3, .L10+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+40
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
	push	{r4, r5, r6, r7, lr}
	mov	r0, #32
	mov	r7, #5
	mov	r6, #20
	mov	r5, #210
	mov	r4, #7
	mov	lr, #1
	mov	r1, #2
	mov	ip, #10
	ldr	r3, .L17
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
	ldr	r2, .L23
	ldr	r3, [r2, #68]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L20
	ldr	r1, .L23+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L23+8
	ldr	r0, [r2, #4]
	ldr	lr, [r1]
	ldr	r1, [r2, #36]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r4, .L23+12
	sub	r0, r0, lr
	lsl	r1, r1, #2
	add	lr, r4, ip, lsl #3
	and	r0, r0, #255
	lsl	ip, ip, #3
	and	r1, r1, #1020
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [r4, ip]	@ movhi
	strh	r1, [lr, #4]	@ movhi
.L20:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	bne	.L19
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	ldr	r3, .L23+12
	add	r3, r3, r2, lsl #3
	ldrh	r2, [r3, #2]
	orr	r2, r2, #4096
	strh	r2, [r3, #2]	@ movhi
.L19:
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r3, .L30
	push	{r4, r5, r6, lr}
	ldr	r0, .L30+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L30+8
	ldr	r3, [r2, #68]
	cmp	r3, #0
	bne	.L27
	ldr	r1, .L30+12
	ldr	r3, [r2]
	ldr	ip, [r1]
	ldr	r0, .L30+16
	ldr	r1, [r2, #36]
	sub	r3, r3, ip
	ldr	lr, [r0]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r0, [r2, #4]
	ldr	r4, .L30+20
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
.L27:
	ldr	r4, .L30+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L35
	ldr	r0, .L35+4
	mov	lr, pc
	bx	r3
	mov	lr, #256
	ldr	r0, .L35+8
	ldr	r2, .L35+12
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L35+16
	sub	r3, r3, r2
	ldr	r5, [r1]
	ldr	r2, [r0, #4]
	ldr	r4, [r0, #28]
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	ldr	ip, .L35+20
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
	ldr	r4, .L35+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L35+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	r5, .L68
	sub	sp, sp, #28
	str	r3, [sp, #20]
	ldr	r4, .L68+4
	ldr	r6, .L68+8
	ldr	r10, .L68+12
	ldr	r9, .L68+16
	ldr	r8, .L68+20
	ldr	fp, .L68+24
	add	r7, r5, #432
.L40:
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
	beq	.L38
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #20]
	eorne	r3, r2, #1
	cmp	r3, #0
	bne	.L65
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
.L38:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L40
	ldr	r5, .L68+28
	ldr	r10, .L68+12
	ldr	r9, .L68+16
	ldr	r8, .L68+20
	ldr	fp, .L68+32
	add	r7, r5, #288
.L43:
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
	beq	.L41
	ldr	r2, [r5, #52]
	ldr	r3, [sp, #20]
	cmp	r2, #0
	eor	r3, r3, #1
	bne	.L41
	ldr	r2, [r4, #64]
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L66
	bl	playerDisgusted
	mov	r3, #30
	ldr	r1, [r4, #56]
	mov	r0, r9
	sub	r1, r1, #1
	str	r1, [r4, #56]
	str	r3, [r10]
	mov	lr, pc
	bx	r8
.L41:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L43
	ldr	r5, .L68+36
	ldr	fp, .L68+12
	ldr	r10, .L68+40
	ldr	r8, .L68+20
	ldr	r9, .L68+16
	add	r7, r5, #504
.L47:
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
	beq	.L44
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L44
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
.L44:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L47
	ldr	r5, .L68+44
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
	beq	.L37
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L37
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L67
	mov	r1, #30
	ldr	r3, [r4, #56]
	ldr	r2, .L68+12
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r1, [r2]
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L68+16
	ldr	r3, .L68+20
	mov	lr, pc
	bx	r3
.L37:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L65:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L38
.L66:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L41
.L67:
	ldr	r4, .L68+20
	ldr	r0, .L68+48
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #56]
	ldr	r0, .L68+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #56]
	moveq	r3, #1
	streq	r3, [r5, #52]
	b	.L37
.L69:
	.align	2
.L68:
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
	ldr	r3, .L72
	ldr	r3, [r3]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L73:
	.align	2
.L72:
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
	ldr	r3, .L84
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L82
.L75:
	ldr	r1, .L84+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L83
.L77:
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
	ldr	r1, .L84+8
	ldr	ip, [r1]
	ldr	r0, .L84+12
	ldr	r1, .L84+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L80:
	ldr	r4, .L84+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L84+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L83:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L77
.L82:
	tst	r3, #512
	beq	.L75
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L84+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L77
.L85:
	.align	2
.L84:
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
	ldr	r3, .L130
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrh	r3, [r3]
	ldr	r4, .L130+4
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
	bne	.L125
.L87:
	tst	r3, #128
	bne	.L88
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L126
.L88:
	ands	r2, r3, #32
	bne	.L90
	cmp	r5, #0
	str	r2, [r4, #28]
	ble	.L90
	ldr	r1, [r4, #8]
	ldr	r2, .L130+8
	sub	r1, r5, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L127
.L90:
	tst	r3, #16
	bne	.L93
	mov	r0, #1
	ldr	r5, [r4]
	add	r1, r7, r5
	cmp	r1, #512
	str	r0, [r4, #28]
	blt	.L128
.L93:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L129
.L96:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L126:
	ldr	r8, [r4, #12]
	ldr	r0, .L130+8
	add	r2, r8, r6
	add	r9, r5, r2, lsl #9
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r2, r2, #9
	beq	.L88
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r1, r8
	strne	r2, [r4, #4]
	b	.L88
.L128:
	ldr	r7, [r4, #8]
	ldr	r0, .L130+8
	add	r1, r7, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L93
	add	r1, r1, r6, lsl #9
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r5, r7
	strne	r2, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L96
.L129:
	bl	playerAttack
	mov	r3, #1
	str	r3, [r4, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L125:
	ldr	r2, [r4, #12]
	ldr	r1, .L130+8
	sub	r2, lr, r2
	add	r8, r5, r2, lsl #9
	ldrb	r8, [r8, r1]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r2, #9
	beq	.L87
	add	r8, ip, r8
	ldrb	r1, [r8, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L87
.L127:
	add	r0, r1, r6, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L90
.L131:
	.align	2
.L130:
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
	ldr	r2, .L135
	push	{r4, lr}
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	bl	updatePlayer
	ldr	r3, .L135+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L136:
	.align	2
.L135:
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
	mov	r2, #1
	mov	ip, #32
	mov	r5, #0
	ldr	r1, .L141
	ldr	r3, .L141+4
	add	r0, r1, #24
.L138:
	strb	r2, [r3, #44]
	ldr	r4, [r1, #4]!
	ldr	lr, [r0, #4]!
	add	r2, r2, #1
	cmp	r2, #7
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r5, [r3, #52]
	add	r3, r3, #72
	bne	.L138
	pop	{r4, r5, lr}
	bx	lr
.L142:
	.align	2
.L141:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #268
	mov	r10, #512
	ldr	r1, .L151
	ldr	r3, .L151+4
	ldr	r2, .L151+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L151+12
	ldr	r7, .L151+16
	ldr	r6, .L151+20
	add	r5, r2, #432
.L145:
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
	bne	.L145
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L152:
	.align	2
.L151:
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
	ldr	r1, .L157
	ldr	r3, .L157+4
	add	r0, r1, #16
.L154:
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
	add	r3, r3, #72
	bne	.L154
	pop	{r4, r5, lr}
	bx	lr
.L158:
	.align	2
.L157:
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
	mov	r8, #512
	mov	r7, #272
	ldr	r1, .L165
	ldr	r2, .L165+4
	ldr	r3, .L165+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L165+12
	ldr	r4, .L165+16
	ldr	lr, .L165+20
	add	ip, r3, #288
.L162:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L161
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L161:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L162
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L166:
	.align	2
.L165:
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
	ldr	r1, .L171
	ldr	r3, .L171+4
	add	r0, r1, #28
.L168:
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
	add	r3, r3, #72
	bne	.L168
	pop	{r4, r5, lr}
	bx	lr
.L172:
	.align	2
.L171:
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
	ldr	r1, .L179
	ldr	r2, .L179+4
	ldr	r3, .L179+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L179+12
	ldr	r4, .L179+16
	ldr	lr, .L179+20
	add	ip, r3, #504
.L176:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L175
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L175:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L176
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L180:
	.align	2
.L179:
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
	ldr	r3, .L183
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L183+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L184:
	.align	2
.L183:
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
	.word	150
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
