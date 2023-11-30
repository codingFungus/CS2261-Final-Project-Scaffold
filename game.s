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
	mov	r7, #1
	ldr	r2, .L13
	mov	r1, r5
	str	r5, [r2, #16]
	str	r5, [r2, #20]
	mov	r5, #10
	mov	lr, #0
	mov	r10, #20
	mov	r6, #2
	mov	fp, #5
	mov	r9, #210
	mov	r8, #7
	mov	r3, r7
	mov	ip, #170
	mov	r0, #160
	str	r5, [r2, #24]
	ldr	r5, .L13+4
	str	lr, [r2, #36]
	strb	lr, [r2, #44]
	str	lr, [r2, #60]
	str	lr, [r2, #64]
	str	lr, [r2, #68]
	str	fp, [r2, #56]
	str	r10, [r2]
	str	r9, [r2, #4]
	str	r8, [r2, #40]
	str	r7, [r2, #28]
	str	r6, [r2, #8]
	str	r6, [r2, #12]
	ldr	r2, .L13+8
	mov	r4, lr
	add	lr, r5, r10
.L4:
	cmp	r3, #5
	stm	r2, {r0, ip}
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	strb	r3, [r2, #44]
	str	r4, [r2, #52]
	add	r2, r2, #72
	ldrne	r0, [r5], #4
	ldrne	ip, [lr], #4
	addne	r3, r3, #1
	bne	.L4
.L10:
	mov	r2, #8
	mov	lr, #20
	mov	ip, #165
	mov	r1, #32
	mov	r6, #0
	ldr	r4, .L13+12
	ldr	r3, .L13+16
	add	r5, r4, #16
.L3:
	add	r0, r2, #1
	strb	r2, [r3, #44]
	and	r2, r0, #255
	cmp	r2, #12
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r6, [r3, #52]
	add	r3, r3, #72
	ldrne	ip, [r4], #4
	ldrne	lr, [r5], #4
	bne	.L3
.L11:
	ldr	lr, .L13+20
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L13+24
	add	r5, lr, #24
	b	.L6
.L12:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L6:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #72
	bne	.L12
	ldr	r3, .L13+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+40
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.word	.LANCHOR0+4
	.word	orange
	.word	.LANCHOR0+44
	.word	cucumber
	.word	.LANCHOR0+76
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
	ldr	r3, .L16
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
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
.L21:
	.align	2
.L20:
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
	ldr	r2, .L26
	ldr	r3, [r2, #68]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L23
	ldr	r1, .L26+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L26+8
	ldr	r0, [r2, #4]
	ldr	lr, [r1]
	ldr	r1, [r2, #36]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r4, .L26+12
	sub	r0, r0, lr
	lsl	r1, r1, #2
	add	lr, r4, ip, lsl #3
	and	r0, r0, #255
	lsl	ip, ip, #3
	and	r1, r1, #1020
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [r4, ip]	@ movhi
	strh	r1, [lr, #4]	@ movhi
.L23:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	bne	.L22
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	ldr	r3, .L26+12
	add	r3, r3, r2, lsl #3
	ldrh	r2, [r3, #2]
	orr	r2, r2, #4096
	strh	r2, [r3, #2]	@ movhi
.L22:
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L33
	push	{r4, r5, r6, lr}
	ldr	r0, .L33+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L33+8
	ldr	r3, [r2, #68]
	cmp	r3, #0
	bne	.L30
	ldr	r1, .L33+12
	ldr	r3, [r2]
	ldr	ip, [r1]
	ldr	r0, .L33+16
	ldr	r1, [r2, #36]
	sub	r3, r3, ip
	ldr	lr, [r0]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r0, [r2, #4]
	ldr	r4, .L33+20
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
.L30:
	ldr	r4, .L33+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L33+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r4, .L40
	ldr	r3, .L40+4
	ldr	r0, .L40+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4]
	bne	.L35
	mov	lr, #256
	ldr	r0, .L40+12
	ldr	r2, .L40+16
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L40+20
	sub	r3, r3, r2
	ldr	r5, [r0, #28]
	ldr	r2, [r0, #4]
	ldr	r6, [r1]
	ldr	ip, .L40+24
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #32768
	cmp	r5, #1
	sub	r2, r2, r6
	strh	r3, [r0, #2]	@ movhi
	lsl	r1, r1, #3
	orreq	r3, r3, #4096
	and	r2, r2, #255
	strh	r2, [ip, r1]	@ movhi
	strheq	r3, [r0, #2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L40+24
	ldr	r5, .L40+28
	mov	lr, pc
	bx	r5
	mov	r3, #100
	str	r3, [r4]
.L35:
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR1
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
	ldr	r5, .L72
	sub	sp, sp, #28
	str	r3, [sp, #20]
	ldr	r4, .L72+4
	ldr	r6, .L72+8
	ldr	r8, .L72+12
	ldr	r10, .L72+16
	ldr	r9, .L72+20
	ldr	fp, .L72+24
	add	r7, r5, #360
.L45:
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
	beq	.L43
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L43
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #20]
	eorne	r3, r2, #1
	cmp	r3, #0
	bne	.L69
	bl	playerDisgusted
	mov	r1, #40
	mov	r2, #100
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r1, [r8, #4]
	str	r3, [r4, #56]
	str	r2, [r8]
	bl	playerDisgusted
	mov	r0, r10
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r9
.L43:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L45
	ldr	r5, .L72+28
	ldr	r10, .L72+12
	ldr	r9, .L72+16
	ldr	r8, .L72+20
	ldr	fp, .L72+32
	add	r7, r5, #288
.L48:
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
	beq	.L46
	ldr	r2, [r5, #52]
	ldr	r3, [sp, #20]
	cmp	r2, #0
	eor	r3, r3, #1
	bne	.L46
	ldr	r2, [r4, #64]
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L70
	bl	playerDisgusted
	mov	r3, #40
	ldr	r1, [r4, #56]
	mov	r0, r9
	sub	r1, r1, #1
	str	r1, [r4, #56]
	str	r3, [r10, #4]
	mov	lr, pc
	bx	r8
.L46:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L48
	mov	fp, #1
	ldr	r5, .L72+36
	ldr	r10, .L72+40
	ldr	r8, .L72+20
	ldr	r9, .L72+16
	add	r7, r5, #432
.L51:
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
	beq	.L49
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r4, #56]
	add	r3, r3, #1
	cmp	r3, #4
	str	r3, [r4, #56]
	mov	ip, #40
	movgt	r3, #5
	ldr	r1, [r4, #60]
	ldr	r2, .L72+12
	add	r1, r1, #1
	mov	r0, r10
	str	fp, [r5, #52]
	str	r1, [r4, #60]
	str	ip, [r2, #4]
	strgt	r3, [r4, #56]
	mov	lr, pc
	bx	r8
	mov	r0, r9
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r8
.L49:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L51
	ldr	r5, .L72+44
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
	beq	.L42
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L71
	mov	r1, #40
	ldr	r3, [r4, #56]
	ldr	r2, .L72+12
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r1, [r2, #4]
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L72+16
	ldr	r3, .L72+20
	mov	lr, pc
	bx	r3
.L42:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L69:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r9
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L43
.L70:
	mov	r3, #1
	mov	r0, fp
	str	r3, [r5, #52]
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L46
.L71:
	ldr	r4, .L72+20
	ldr	r0, .L72+48
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #56]
	ldr	r0, .L72+52
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #56]
	moveq	r3, #1
	streq	r3, [r5, #52]
	b	.L42
.L73:
	.align	2
.L72:
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
	ldr	r3, .L76
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L77:
	.align	2
.L76:
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
	ldr	r3, .L88
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L86
.L79:
	ldr	r1, .L88+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L87
.L81:
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
	ldr	r1, .L88+8
	ldr	ip, [r1, #4]
	ldr	r0, .L88+12
	ldr	r1, .L88+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L84:
	ldr	r4, .L88+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L88+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L87:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L81
.L86:
	tst	r3, #512
	beq	.L79
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L88+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L81
.L89:
	.align	2
.L88:
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
	ldr	r3, .L134
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrh	r3, [r3]
	ldr	r4, .L134+4
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
	bne	.L129
.L91:
	tst	r3, #128
	bne	.L92
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L130
.L92:
	ands	r2, r3, #32
	bne	.L94
	cmp	r5, #0
	str	r2, [r4, #28]
	ble	.L94
	ldr	r1, [r4, #8]
	ldr	r2, .L134+8
	sub	r1, r5, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L131
.L94:
	tst	r3, #16
	bne	.L97
	mov	r0, #1
	ldr	r5, [r4]
	add	r1, r7, r5
	cmp	r1, #512
	str	r0, [r4, #28]
	blt	.L132
.L97:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L133
.L100:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L130:
	ldr	r8, [r4, #12]
	ldr	r0, .L134+8
	add	r2, r8, r6
	add	r9, r5, r2, lsl #9
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r2, r2, #9
	beq	.L92
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r1, r8
	strne	r2, [r4, #4]
	b	.L92
.L132:
	ldr	r7, [r4, #8]
	ldr	r0, .L134+8
	add	r1, r7, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L97
	add	r1, r1, r6, lsl #9
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r5, r7
	strne	r2, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L100
.L133:
	bl	playerAttack
	mov	r3, #1
	str	r3, [r4, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L129:
	ldr	r2, [r4, #12]
	ldr	r1, .L134+8
	sub	r2, lr, r2
	add	r8, r5, r2, lsl #9
	ldrb	r8, [r8, r1]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r2, #9
	beq	.L91
	add	r8, ip, r8
	ldrb	r1, [r8, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L91
.L131:
	add	r0, r1, r6, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L94
.L135:
	.align	2
.L134:
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
	push	{r4, lr}
	ldr	r4, .L140
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L138
	bl	playerDisgusted
	ldr	r3, [r4]
	sub	r3, r3, #1
	str	r3, [r4]
.L138:
	bl	updatePlayer
	ldr	r3, .L140+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L141:
	.align	2
.L140:
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
	mov	ip, #170
	mov	r0, #160
	mov	r1, #32
	mov	r5, #0
	ldr	lr, .L147
	ldr	r3, .L147+4
	add	r4, lr, #20
.L144:
	cmp	r2, #5
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r5, [r3, #52]
	add	r3, r3, #72
	ldrne	r0, [lr], #4
	ldrne	ip, [r4], #4
	addne	r2, r2, #1
	bne	.L144
.L142:
	pop	{r4, r5, lr}
	bx	lr
.L148:
	.align	2
.L147:
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
	ldr	r1, .L157
	ldr	r3, .L157+4
	ldr	r2, .L157+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L157+12
	ldr	r7, .L157+16
	ldr	r6, .L157+20
	add	r5, r2, #360
.L151:
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
	bne	.L151
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L158:
	.align	2
.L157:
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
	ldr	r0, .L163
	ldr	r3, .L163+4
	add	r5, r0, #16
.L161:
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
	bne	.L161
.L159:
	pop	{r4, r5, r6, lr}
	bx	lr
.L164:
	.align	2
.L163:
	.word	.LANCHOR0+44
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
	ldr	r1, .L171
	ldr	r2, .L171+4
	ldr	r3, .L171+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L171+12
	ldr	r4, .L171+16
	ldr	lr, .L171+20
	add	ip, r3, #288
.L168:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L167
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L167:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L168
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L172:
	.align	2
.L171:
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
	push	{r4, r5, r6, lr}
	ldr	lr, .L178
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L178+4
	add	r5, lr, #24
	b	.L175
.L177:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L175:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #72
	bne	.L177
	pop	{r4, r5, r6, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	.LANCHOR0+76
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
	ldr	r1, .L186
	ldr	r2, .L186+4
	ldr	r3, .L186+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L186+12
	ldr	r4, .L186+16
	ldr	lr, .L186+20
	add	ip, r3, #432
.L183:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L182
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L182:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L183
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L187:
	.align	2
.L186:
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
	ldr	r3, .L190
	mov	lr, pc
	bx	r3
	ldr	r3, .L190+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L190+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L190+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L191:
	.align	2
.L190:
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
	.comm	catnip,432,4
	.comm	rat,72,4
	.comm	cucumber,288,4
	.comm	orange,360,4
	.comm	player,72,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xOrange, %object
	.size	xOrange, 20
xOrange:
	.word	160
	.word	410
	.word	360
	.word	100
	.word	320
	.type	yOrange, %object
	.size	yOrange, 20
yOrange:
	.word	170
	.word	80
	.word	16
	.word	110
	.word	40
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
	.size	xNip, 24
xNip:
	.word	5
	.word	8
	.word	480
	.word	400
	.word	90
	.word	350
	.type	yNip, %object
	.size	yNip, 24
yNip:
	.word	160
	.word	16
	.word	100
	.word	0
	.word	10
	.word	70
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	disgustedDisplayTimer, %object
	.size	disgustedDisplayTimer, 4
disgustedDisplayTimer:
	.space	4
	.type	collisionCooldown, %object
	.size	collisionCooldown, 4
collisionCooldown:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
