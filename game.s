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
	ldr	r5, .L73
	sub	sp, sp, #28
	str	r3, [sp, #16]
	ldr	r4, .L73+4
	ldr	r6, .L73+8
	ldr	fp, .L73+12
	ldr	r10, .L73+16
	ldr	r9, .L73+20
	ldr	r8, .L73+24
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
	ldr	r2, [r4, #64]
	cmp	r2, #0
	moveq	r2, #0
	ldr	r3, [sp, #16]
	eorne	r2, r3, #1
	cmp	r2, #0
	bne	.L69
	str	r2, [sp, #20]
	bl	playerDisgusted
	mov	ip, #40
	ldr	r3, [r4, #56]
	ldr	r1, .L73+28
	sub	r3, r3, #1
	ldr	r1, [r1]
	mov	r0, r10
	ldr	r2, [sp, #20]
	str	r3, [r4, #56]
	ldr	r3, .L73+32
	str	ip, [fp, #4]
	mov	lr, pc
	bx	r3
	bl	playerDisgusted
	mov	r0, r9
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r8
.L43:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L45
	ldr	r5, .L73+36
	ldr	fp, .L73+28
	ldr	r10, .L73+16
	ldr	r9, .L73+20
	ldr	r8, .L73+24
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
	ldr	r3, [sp, #16]
	eor	r2, r3, #1
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L46
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L70
	str	r2, [sp, #20]
	bl	playerDisgusted
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	mov	r0, r10
	ldr	r2, [sp, #20]
	ldr	r1, [fp]
	str	r3, [r4, #56]
	ldr	r3, .L73+32
	mov	lr, pc
	bx	r3
	mov	r3, #40
	ldr	r2, .L73+12
	mov	r0, r9
	ldr	r1, [r4, #56]
	str	r3, [r2, #4]
	mov	lr, pc
	bx	r8
.L46:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L48
	ldr	r5, .L73+40
	ldr	fp, .L73+44
	ldr	r10, .L73+48
	ldr	r9, .L73+52
	ldr	r8, .L73+24
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
	ldr	r2, [r5, #52]
	cmp	r2, #0
	beq	.L71
.L49:
	add	r5, r5, #72
	cmp	r7, r5
	bne	.L51
	ldr	r5, .L73+56
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
	ldr	r3, [sp, #16]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L72
	mov	r1, #40
	ldr	r3, [r4, #56]
	ldr	r2, .L73+12
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r1, [r2, #4]
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L73+20
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
.L42:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	mov	ip, #1
	ldr	r1, [r4, #60]
	ldr	r3, [r4, #56]
	add	r1, r1, ip
	add	r3, r3, ip
	mov	r0, r10
	str	r1, [r4, #60]
	str	r3, [r4, #56]
	ldr	r1, [fp]
	str	ip, [r5, #52]
	ldr	r3, .L73+32
	mov	lr, pc
	bx	r3
	mov	r3, #40
	ldr	r2, [r4, #56]
	cmp	r2, #4
	ldr	r2, .L73+12
	str	r3, [r2, #4]
	movgt	r3, #5
	ldr	r1, [r4, #60]
	mov	r0, r9
	strgt	r3, [r4, #56]
	mov	lr, pc
	bx	r8
	ldr	r1, [r4, #56]
	ldr	r0, .L73+20
	mov	lr, pc
	bx	r8
	b	.L49
.L69:
	mov	r3, #1
	ldr	r0, .L73+60
	str	r3, [r5, #52]
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r8
	b	.L43
.L70:
	mov	r3, #1
	ldr	r0, .L73+64
	str	r3, [r5, #52]
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r8
	b	.L46
.L72:
	ldr	r4, .L73+24
	ldr	r0, .L73+68
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #56]
	ldr	r0, .L73+72
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #56]
	moveq	r3, #1
	streq	r3, [r5, #52]
	b	.L42
.L74:
	.align	2
.L73:
	.word	orange
	.word	player
	.word	collision
	.word	.LANCHOR1
	.word	disgusted_data
	.word	.LC3
	.word	mgba_printf
	.word	disgusted_length
	.word	playSoundB
	.word	cucumber
	.word	catnip
	.word	Meow_length
	.word	Meow_data
	.word	.LC5
	.word	rat
	.word	.LC2
	.word	.LC4
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
	ldr	r3, .L77
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L78:
	.align	2
.L77:
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
	ldr	r3, .L89
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L87
.L80:
	ldr	r1, .L89+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L88
.L82:
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
	ldr	r1, .L89+8
	ldr	ip, [r1, #4]
	ldr	r0, .L89+12
	ldr	r1, .L89+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L85:
	ldr	r4, .L89+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L88:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L82
.L87:
	tst	r3, #512
	beq	.L80
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L89+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L82
.L90:
	.align	2
.L89:
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
	ldr	r3, .L135
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldrh	r3, [r3]
	ldr	r4, .L135+4
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
	bne	.L130
.L92:
	tst	r3, #128
	bne	.L93
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L131
.L93:
	ands	r2, r3, #32
	bne	.L95
	cmp	r5, #0
	str	r2, [r4, #28]
	ble	.L95
	ldr	r1, [r4, #8]
	ldr	r2, .L135+8
	sub	r1, r5, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L132
.L95:
	tst	r3, #16
	bne	.L98
	mov	r0, #1
	ldr	r5, [r4]
	add	r1, r7, r5
	cmp	r1, #512
	str	r0, [r4, #28]
	blt	.L133
.L98:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L134
.L101:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L131:
	ldr	r8, [r4, #12]
	ldr	r0, .L135+8
	add	r2, r8, r6
	add	r9, r5, r2, lsl #9
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r2, r2, #9
	beq	.L93
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r1, r8
	strne	r2, [r4, #4]
	b	.L93
.L133:
	ldr	r7, [r4, #8]
	ldr	r0, .L135+8
	add	r1, r7, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L98
	add	r1, r1, r6, lsl #9
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r2, r5, r7
	strne	r2, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L101
.L134:
	bl	playerAttack
	mov	r3, #1
	str	r3, [r4, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L130:
	ldr	r2, [r4, #12]
	ldr	r1, .L135+8
	sub	r2, lr, r2
	add	r8, r5, r2, lsl #9
	ldrb	r8, [r8, r1]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r2, #9
	beq	.L92
	add	r8, ip, r8
	ldrb	r1, [r8, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L92
.L132:
	add	r0, r1, r6, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L95
.L136:
	.align	2
.L135:
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
	ldr	r4, .L141
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L139
	bl	playerDisgusted
	ldr	r3, [r4]
	sub	r3, r3, #1
	str	r3, [r4]
.L139:
	bl	updatePlayer
	ldr	r3, .L141+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
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
	ldr	lr, .L148
	ldr	r3, .L148+4
	add	r4, lr, #20
.L145:
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
	bne	.L145
.L143:
	pop	{r4, r5, lr}
	bx	lr
.L149:
	.align	2
.L148:
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
	ldr	r1, .L158
	ldr	r3, .L158+4
	ldr	r2, .L158+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L158+12
	ldr	r7, .L158+16
	ldr	r6, .L158+20
	add	r5, r2, #360
.L152:
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
	bne	.L152
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L159:
	.align	2
.L158:
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
	ldr	r0, .L164
	ldr	r3, .L164+4
	add	r5, r0, #16
.L162:
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
	bne	.L162
.L160:
	pop	{r4, r5, r6, lr}
	bx	lr
.L165:
	.align	2
.L164:
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
	ldr	r1, .L172
	ldr	r2, .L172+4
	ldr	r3, .L172+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L172+12
	ldr	r4, .L172+16
	ldr	lr, .L172+20
	add	ip, r3, #288
.L169:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L168
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L168:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L169
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L173:
	.align	2
.L172:
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
	ldr	lr, .L179
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L179+4
	add	r5, lr, #24
	b	.L176
.L178:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L176:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #72
	bne	.L178
	pop	{r4, r5, r6, lr}
	bx	lr
.L180:
	.align	2
.L179:
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
	ldr	r1, .L187
	ldr	r2, .L187+4
	ldr	r3, .L187+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L187+12
	ldr	r4, .L187+16
	ldr	lr, .L187+20
	add	ip, r3, #432
.L184:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L183
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L183:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L184
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L188:
	.align	2
.L187:
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
	ldr	r3, .L191
	mov	lr, pc
	bx	r3
	ldr	r3, .L191+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L191+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L191+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L192:
	.align	2
.L191:
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
	.comm	soundB,24,4
	.comm	soundA,24,4
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
