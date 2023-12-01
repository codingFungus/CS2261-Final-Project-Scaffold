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
	.global	colorAt
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorAt, %function
colorAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	add	r0, r0, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L4:
	.align	2
.L3:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #32
	ldr	r3, .L9
	mov	r2, r6
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	mov	r6, #7
	mov	r1, #0
	mov	r10, #20
	mov	r9, #210
	mov	r8, #1
	str	r6, [r3, #40]
	mov	r6, #10
	mov	r7, #2
	mov	fp, #5
	mov	r5, r10
	mov	r4, r9
	mov	lr, r8
	mov	ip, r1
	mov	r0, #30
	str	r6, [r3, #24]
	ldr	r6, .L9+4
	str	fp, [r3, #56]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #28]
	str	r7, [r3, #8]
	str	r7, [r3, #12]
	str	r1, [r3, #36]
	strb	r1, [r3, #44]
	str	r1, [r3, #60]
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	add	r3, r6, #160
.L6:
	str	r5, [r6]
	str	r4, [r6, #4]
	str	lr, [r6, #12]
	str	ip, [r6, #16]
	str	r2, [r6, #24]
	str	r2, [r6, #20]
	str	r0, [r6, #28]
	add	r6, r6, #32
	cmp	r6, r3
	bne	.L6
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	player
	.word	bullet
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	initPlayer
	mov	r5, #0
	mov	r2, #1
	mov	ip, #170
	mov	r0, #160
	mov	r1, #32
	ldr	lr, .L22
	ldr	r3, .L22+4
	add	r4, lr, #20
.L14:
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
	bne	.L14
.L19:
	mov	r2, #8
	mov	lr, #20
	mov	ip, #165
	mov	r1, #32
	mov	r6, #0
	ldr	r4, .L22+8
	ldr	r3, .L22+12
	add	r5, r4, #16
.L13:
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
	bne	.L13
.L20:
	ldr	lr, .L22+16
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L22+20
	add	r5, lr, #24
	b	.L16
.L21:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L16:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #72
	bne	.L21
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L28
	ldr	r3, [r2, #68]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L25
	ldr	r1, .L28+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L28+8
	ldr	r0, [r2, #4]
	ldr	lr, [r1]
	ldr	r1, [r2, #36]
	ldrb	ip, [r2, #44]	@ zero_extendqisi2
	ldr	r4, .L28+12
	sub	r0, r0, lr
	lsl	r1, r1, #2
	add	lr, r4, ip, lsl #3
	and	r0, r0, #255
	lsl	ip, ip, #3
	and	r1, r1, #1020
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [r4, ip]	@ movhi
	strh	r1, [lr, #4]	@ movhi
.L25:
	ldr	r3, [r2, #28]
	cmp	r3, #1
	bne	.L24
	ldrb	r2, [r2, #44]	@ zero_extendqisi2
	ldr	r3, .L28+12
	add	r3, r3, r2, lsl #3
	ldrh	r2, [r3, #2]
	orr	r2, r2, #4096
	strh	r2, [r3, #2]	@ movhi
.L24:
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L36
	push	{r4, r5, r6, lr}
	ldr	r0, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+8
	ldr	r2, [r3, #68]
	cmp	r2, #0
	bne	.L31
	ldr	r1, .L36+12
	ldr	r2, [r3]
	ldr	ip, [r1]
	ldr	r0, .L36+16
	ldr	r1, [r3, #36]
	sub	r2, r2, ip
	ldr	lr, [r0]
	ldrb	ip, [r3, #44]	@ zero_extendqisi2
	ldr	r0, [r3, #4]
	ldr	r4, .L36+20
	ldr	r5, [r3, #28]
	lsl	r2, r2, #23
	add	r1, r1, #32
	lsr	r2, r2, #23
	orr	r2, r2, #32768
	sub	r0, r0, lr
	lsl	r3, r1, #2
	add	lr, r4, ip, lsl #3
	cmp	r5, #1
	strh	r2, [lr, #2]	@ movhi
	lsl	ip, ip, #3
	and	r1, r0, #255
	and	r3, r3, #1020
	orreq	r2, r2, #4096
	strh	r1, [r4, ip]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strheq	r2, [lr, #2]	@ movhi
.L33:
	ldr	r4, .L36+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	mov	lr, #152
	ldr	r2, .L36+12
	ldr	r1, .L36+16
	ldr	r0, [r2]
	ldr	r2, [r3]
	ldr	r4, [r1]
	ldr	r1, [r3, #4]
	sub	r2, r2, r0
	sub	r1, r1, r4
	ldrb	r0, [r3, #44]	@ zero_extendqisi2
	ldr	ip, .L36+20
	ldr	r4, [r3, #28]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	orr	r2, r2, #49152
	and	r3, r1, #255
	cmp	r4, #1
	add	r1, ip, r0, lsl #3
	strh	r2, [r1, #2]	@ movhi
	lsl	r0, r0, #3
	orr	r3, r3, #16384
	orreq	r2, r2, #4096
	strh	r3, [ip, r0]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strheq	r2, [r1, #2]	@ movhi
	b	.L33
.L37:
	.align	2
.L36:
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
	ldr	r4, .L43
	ldr	r3, .L43+4
	ldr	r0, .L43+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4]
	bne	.L38
	mov	lr, #256
	ldr	r0, .L43+12
	ldr	r2, .L43+16
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L43+20
	sub	r3, r3, r2
	ldr	r5, [r0, #28]
	ldr	r2, [r0, #4]
	ldr	r6, [r1]
	ldr	ip, .L43+24
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
	ldr	r1, .L43+24
	ldr	r5, .L43+28
	mov	lr, pc
	bx	r5
	mov	r3, #100
	str	r3, [r4]
.L38:
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	.align	2
.L43:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L93
	ldr	r3, [r4, #28]
	cmp	r3, #1
	mov	r3, #0
	moveq	r7, #15
	mvnne	r7, #14
	ldr	r5, .L93+4
	sub	sp, sp, #28
	str	r3, [sp, #20]
	ldr	r6, .L93+8
	ldr	r9, .L93+12
	add	r8, r5, #360
.L51:
	ldr	r1, [r4, #68]
	ldr	ip, [r5, #4]
	ldr	lr, [r5, #16]
	ldr	r10, [r5, #20]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	fp, [r5]
	cmp	r1, #0
	sub	ip, ip, #10
	sub	lr, lr, #10
	sub	r10, r10, #10
	ldm	r4, {r0, r1}
	sub	r2, r2, #5
	stm	sp, {fp, ip, lr}
	str	r10, [sp, #12]
	sub	r3, r3, #5
	bne	.L47
	add	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L48
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L48
	ldr	r10, [r4, #64]
	cmp	r10, #0
	moveq	r10, #0
	ldr	r3, [sp, #20]
	eorne	r10, r3, #1
	cmp	r10, #0
	bne	.L84
.L50:
	bl	playerDisgusted
	mov	ip, #40
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r3, [r4, #56]
	ldr	r1, .L93+16
	ldr	r3, .L93+20
	ldr	r1, [r1]
	str	ip, [r3, #4]
	mov	r2, r10
	ldr	r3, .L93+24
	mov	r0, r9
	mov	lr, pc
	bx	r3
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L93+28
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
.L48:
	add	r5, r5, #72
	cmp	r8, r5
	bne	.L51
	ldr	r5, .L93+36
	ldr	r9, .L93+12
	add	r8, r5, #288
.L56:
	add	r0, r5, #16
	ldr	lr, [r4, #68]
	ldr	r1, [r5]
	ldm	r0, {r0, ip}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	fp, [r5, #4]
	cmp	lr, #0
	sub	r0, r0, #20
	add	lr, r1, #10
	sub	ip, ip, #10
	ldr	r10, [r4]
	ldr	r1, [r4, #4]
	sub	r2, r2, #10
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	fp, [sp, #4]
	str	lr, [sp]
	sub	r3, r3, #5
	bne	.L52
	add	r0, r10, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L53
.L89:
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L53
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r10, r3, #1
	cmp	r2, #0
	moveq	r10, #0
	andne	r10, r10, #1
	cmp	r10, #0
	bne	.L90
	bl	playerDisgusted
	ldr	r3, [r4, #56]
	ldr	r1, .L93+16
	sub	r3, r3, #1
	mov	r2, r10
	mov	r0, r9
	ldr	r1, [r1]
	str	r3, [r4, #56]
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	mov	r3, #40
	ldr	r2, .L93+20
	ldr	r1, [r4, #56]
	str	r3, [r2, #4]
	ldr	r0, .L93+28
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
.L53:
	add	r5, r5, #72
	cmp	r8, r5
	bne	.L56
	ldr	r5, .L93+40
	ldr	fp, .L93+44
	ldr	r10, .L93+48
	ldr	r9, .L93+32
	add	r8, r5, #432
.L59:
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
	add	r0, r7, r0
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L57
	ldr	r2, [r5, #52]
	cmp	r2, #0
	beq	.L91
.L57:
	add	r5, r5, #72
	cmp	r8, r5
	bne	.L59
	ldr	r5, .L93+52
	ldr	r1, [r5, #20]
	ldr	r3, [r4, #20]
	ldr	r2, [r5, #16]
	ldr	r0, [r5, #4]
	str	r1, [sp, #12]
	ldr	r1, [r5]
	str	r2, [sp, #8]
	ldr	r2, [r4, #16]
	str	r0, [sp, #4]
	ldr	r0, [r4]
	str	r1, [sp]
	sub	r3, r3, #5
	ldr	r1, [r4, #4]
	sub	r2, r2, #5
	add	r0, r7, r0
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L45
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L45
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L92
	mov	r1, #40
	ldr	r3, [r4, #56]
	ldr	r2, .L93+20
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r1, [r2, #4]
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L93+28
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
.L45:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L47:
	add	r0, r7, r0
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L48
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L48
	ldr	r3, [sp, #20]
	ldr	r2, [r4, #64]
	eor	r10, r3, #1
	cmp	r2, #0
	moveq	r10, #0
	andne	r10, r10, #1
	cmp	r10, #0
	beq	.L50
.L84:
	mov	r3, #1
	ldr	r0, .L93+56
	str	r3, [r5, #52]
	str	r3, [sp, #20]
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
	b	.L48
.L52:
	add	r0, r7, r10
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L53
	b	.L89
.L91:
	mov	ip, #1
	ldr	r1, [r4, #60]
	ldr	r3, [r4, #56]
	add	r1, r1, ip
	str	r1, [r4, #60]
	ldr	r1, .L93+60
	add	r3, r3, ip
	mov	r0, fp
	str	r3, [r4, #56]
	str	ip, [r5, #52]
	ldr	r1, [r1]
	ldr	r3, .L93+24
	mov	lr, pc
	bx	r3
	mov	r3, #40
	ldr	r2, [r4, #56]
	cmp	r2, #4
	ldr	r2, .L93+20
	str	r3, [r2, #4]
	movgt	r3, #5
	ldr	r1, [r4, #60]
	mov	r0, r10
	strgt	r3, [r4, #56]
	mov	lr, pc
	bx	r9
	ldr	r1, [r4, #56]
	ldr	r0, .L93+28
	mov	lr, pc
	bx	r9
	b	.L57
.L90:
	mov	r3, #1
	ldr	r0, .L93+64
	str	r3, [r5, #52]
	str	r3, [sp, #20]
	ldr	r3, .L93+32
	mov	lr, pc
	bx	r3
	b	.L53
.L92:
	ldr	r4, .L93+32
	ldr	r0, .L93+68
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #56]
	ldr	r0, .L93+72
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #56]
	moveq	r3, #1
	streq	r3, [r5, #52]
	b	.L45
.L94:
	.align	2
.L93:
	.word	player
	.word	orange
	.word	collision
	.word	disgusted_data
	.word	disgusted_length
	.word	.LANCHOR1
	.word	playSoundB
	.word	.LC3
	.word	mgba_printf
	.word	cucumber
	.word	catnip
	.word	Meow_data
	.word	.LC5
	.word	rat
	.word	.LC2
	.word	Meow_length
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
	ldr	r3, .L97
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L98:
	.align	2
.L97:
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
	ldr	r3, .L109
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L107
.L100:
	ldr	r1, .L109+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L108
.L102:
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
	ldr	r1, .L109+8
	ldr	ip, [r1, #4]
	ldr	r0, .L109+12
	ldr	r1, .L109+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L105:
	ldr	r4, .L109+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L109+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L108:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L102
.L107:
	tst	r3, #512
	beq	.L100
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L109+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L102
.L110:
	.align	2
.L109:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L159
	ldr	r4, .L159+4
	ldrh	r3, [r5]
	ldr	lr, [r4, #4]
	lsr	r2, r3, #6
	eor	r2, r2, #1
	mov	r7, #0
	cmp	lr, #0
	movle	r2, #0
	andgt	r2, r2, #1
	ldr	r0, [r4, #20]
	ldr	r6, [r4]
	ldr	r8, [r4, #16]
	cmp	r2, r7
	add	r1, r0, lr
	add	ip, r8, r6
	str	r7, [r4, #48]
	sub	ip, ip, #1
	sub	r7, r1, #1
	bne	.L154
.L112:
	tst	r3, #128
	bne	.L113
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L155
.L113:
	ands	r2, r3, #32
	bne	.L115
	cmp	r6, #0
	str	r2, [r4, #28]
	ble	.L115
	ldr	r1, [r4, #8]
	ldr	r2, .L159+8
	sub	r1, r6, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L156
.L115:
	tst	r3, #16
	bne	.L118
	mov	r2, #1
	ldr	r0, [r4]
	add	r1, r8, r0
	cmp	r1, #512
	str	r2, [r4, #28]
	blt	.L157
.L118:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L158
.L121:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L155:
	ldr	r9, [r4, #12]
	ldr	r0, .L159+8
	add	r2, r9, r7
	add	r10, r6, r2, lsl #9
	ldrb	r10, [r10, r0]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r2, r2, #9
	beq	.L113
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r9
	strne	r1, [r4, #4]
	b	.L113
.L157:
	ldr	r8, [r4, #8]
	ldr	r6, .L159+8
	add	r1, r8, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r6]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L118
	add	r1, r1, r7, lsl #9
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r0, r0, r8
	strne	r0, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L121
.L158:
	bl	playerAttack
	mov	r2, #1
	ldr	r3, .L159+12
	ldrh	r3, [r3]
	tst	r3, #1
	str	r2, [r4, #64]
	beq	.L121
	ldrh	r3, [r5]
	ands	r3, r3, r2
	bne	.L121
	ldr	r1, [r4, #68]
	cmp	r1, #0
	moveq	r3, r2
	str	r3, [r4, #68]
	b	.L121
.L154:
	ldr	r2, [r4, #12]
	ldr	r1, .L159+8
	sub	r2, lr, r2
	add	r9, r6, r2, lsl #9
	ldrb	r9, [r9, r1]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r9, r2, #9
	beq	.L112
	add	r9, ip, r9
	ldrb	r1, [r9, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L112
.L156:
	add	r0, r1, r7, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L115
.L160:
	.align	2
.L159:
	.word	buttons
	.word	player
	.word	bg_collisionmapBitmap
	.word	oldButtons
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
	ldr	r4, .L165
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L163
	bl	playerDisgusted
	ldr	r3, [r4]
	sub	r3, r3, #1
	str	r3, [r4]
.L163:
	bl	updatePlayer
	ldr	r3, .L165+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L166:
	.align	2
.L165:
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
	ldr	lr, .L172
	ldr	r3, .L172+4
	add	r4, lr, #20
.L169:
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
	bne	.L169
.L167:
	pop	{r4, r5, lr}
	bx	lr
.L173:
	.align	2
.L172:
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
	ldr	r1, .L182
	ldr	r3, .L182+4
	ldr	r2, .L182+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L182+12
	ldr	r7, .L182+16
	ldr	r6, .L182+20
	add	r5, r2, #360
.L176:
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
	bne	.L176
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L183:
	.align	2
.L182:
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
	ldr	r0, .L188
	ldr	r3, .L188+4
	add	r5, r0, #16
.L186:
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
	bne	.L186
.L184:
	pop	{r4, r5, r6, lr}
	bx	lr
.L189:
	.align	2
.L188:
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
	ldr	r1, .L196
	ldr	r2, .L196+4
	ldr	r3, .L196+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L196+12
	ldr	r4, .L196+16
	ldr	lr, .L196+20
	add	ip, r3, #288
.L193:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L192
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L192:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L193
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L197:
	.align	2
.L196:
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
	ldr	lr, .L203
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L203+4
	add	r5, lr, #24
	b	.L200
.L202:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L200:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #72
	bne	.L202
	pop	{r4, r5, r6, lr}
	bx	lr
.L204:
	.align	2
.L203:
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
	ldr	r1, .L211
	ldr	r2, .L211+4
	ldr	r3, .L211+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L211+12
	ldr	r4, .L211+16
	ldr	lr, .L211+20
	add	ip, r3, #432
.L208:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L207
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L207:
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L208
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L212:
	.align	2
.L211:
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
	ldr	r3, .L215
	mov	lr, pc
	bx	r3
	ldr	r3, .L215+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L215+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L215+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L216:
	.align	2
.L215:
	.word	drawRat
	.word	drawScore
	.word	drawHeart
	.word	drawLives
	.size	drawGame, .-drawGame
	.comm	bullet,160,4
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
