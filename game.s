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
	.global	colorat
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorat, %function
colorat:
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
	.size	colorat, .-colorat
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
	ldr	r3, .L7
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
	str	r2, [r3, #72]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
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
	ldr	lr, .L20
	ldr	r3, .L20+4
	add	r4, lr, #20
.L12:
	cmp	r2, #5
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r5, [r3, #52]
	add	r3, r3, #76
	ldrne	r0, [lr], #4
	ldrne	ip, [r4], #4
	addne	r2, r2, #1
	bne	.L12
.L17:
	mov	r2, #8
	mov	lr, #20
	mov	ip, #165
	mov	r1, #32
	mov	r6, #0
	ldr	r4, .L20+8
	ldr	r3, .L20+12
	add	r5, r4, #16
.L11:
	add	r0, r2, #1
	strb	r2, [r3, #44]
	and	r2, r0, #255
	cmp	r2, #12
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r6, [r3, #52]
	add	r3, r3, #76
	ldrne	ip, [r4], #4
	ldrne	lr, [r5], #4
	bne	.L11
.L18:
	ldr	lr, .L20+16
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L20+20
	add	r5, lr, #24
	b	.L14
.L19:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L14:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #76
	bne	.L19
	ldr	r3, .L20+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	.global	playerattack
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerattack, %function
playerattack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	push	{r4, r5, r6, lr}
	ldr	r0, .L34+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+8
	ldr	r2, [r3, #68]
	cmp	r2, #0
	bne	.L29
	ldr	r1, .L34+12
	ldr	r2, [r3]
	ldr	ip, [r1]
	ldr	r0, .L34+16
	ldr	r1, [r3, #36]
	sub	r2, r2, ip
	ldr	lr, [r0]
	ldrb	ip, [r3, #44]	@ zero_extendqisi2
	ldr	r0, [r3, #4]
	ldr	r4, .L34+20
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
.L31:
	ldr	r4, .L34+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	mov	lr, #152
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	ldr	r0, [r2]
	ldr	r2, [r3]
	ldr	r4, [r1]
	ldr	r1, [r3, #4]
	sub	r2, r2, r0
	sub	r1, r1, r4
	ldrb	r0, [r3, #44]	@ zero_extendqisi2
	ldr	ip, .L34+20
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
	b	.L31
.L35:
	.align	2
.L34:
	.word	mgba_printf
	.word	.LC0
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	DMANow
	.size	playerattack, .-playerattack
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
	ldr	r4, .L41
	ldr	r3, .L41+4
	ldr	r0, .L41+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4]
	bne	.L36
	mov	lr, #256
	ldr	r0, .L41+12
	ldr	r2, .L41+16
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L41+20
	sub	r3, r3, r2
	ldr	r5, [r0, #28]
	ldr	r2, [r0, #4]
	ldr	r6, [r1]
	ldr	ip, .L41+24
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
	ldr	r1, .L41+24
	ldr	r5, .L41+28
	mov	lr, pc
	bx	r5
	mov	r3, #100
	str	r3, [r4]
.L36:
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
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
	.ascii	"player attacked rat[i]\000"
	.align	2
.LC6:
	.ascii	"rat[i] lives: %d\012\000"
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
	ldr	r4, .L141
	ldr	r6, .L141+4
	sub	sp, sp, #28
	str	r3, [sp, #16]
	ldr	r5, [r4, #68]
	ldr	r9, .L141+8
	ldr	fp, .L141+12
	ldr	r10, .L141+16
	add	r7, r6, #380
.L56:
	cmp	r5, #0
	beq	.L122
	cmp	r5, #1
	beq	.L123
.L46:
	add	r6, r6, #76
	cmp	r6, r7
	bne	.L56
	ldr	r6, .L141+20
	ldr	r9, .L141+8
	ldr	fp, .L141+12
	ldr	r10, .L141+16
	add	r7, r6, #304
.L70:
	cmp	r5, #0
	beq	.L124
	cmp	r5, #1
	beq	.L125
.L59:
	add	r6, r6, #76
	cmp	r6, r7
	bne	.L70
	ldr	r6, .L141+24
	ldr	r8, .L141+8
	ldr	fp, .L141+28
	ldr	r10, .L141+32
	ldr	r9, .L141+36
	add	r7, r6, #456
	b	.L80
.L71:
	ldr	r5, [r4, #28]
	cmp	r5, #1
	beq	.L126
.L75:
	cmp	r5, #0
	beq	.L127
.L73:
	add	r6, r6, #76
	cmp	r6, r7
	ldr	r5, [r4, #68]
	beq	.L128
.L80:
	cmp	r5, #0
	bne	.L71
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6]
	add	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L73
.L119:
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L73
	mov	ip, #1
	ldr	r0, [r4, #60]
	ldr	r3, [r4, #56]
	add	r0, r0, #1
	str	ip, [r6, #52]
	mov	r2, r5
	add	r3, r3, #1
	str	r0, [r4, #60]
	ldr	r1, [fp]
	mov	r0, r10
	str	r3, [r4, #56]
	mov	lr, pc
	bx	r9
	mov	r3, #40
	ldr	r2, [r4, #56]
	cmp	r2, #4
	ldr	r2, .L141+40
	str	r3, [r2, #4]
	movgt	r3, #5
	add	r6, r6, #76
	strgt	r3, [r4, #56]
	cmp	r6, r7
	ldr	r5, [r4, #68]
	bne	.L80
.L128:
	ldr	r6, .L141+44
	cmp	r5, #0
	ldr	r8, .L141+8
	ldr	fp, .L141+40
	ldr	r10, .L141+16
	ldr	r9, .L141+48
	add	r7, r6, #228
	beq	.L129
.L81:
	ldr	r5, [r4, #28]
	cmp	r5, #1
	beq	.L130
.L85:
	cmp	r5, #0
	beq	.L131
.L82:
	add	r6, r6, #76
	cmp	r6, r7
	beq	.L43
.L132:
	ldr	r5, [r4, #68]
	cmp	r5, #0
	bne	.L81
.L129:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	str	ip, [sp, #12]
	ldr	ip, [r6, #4]
	str	r1, [sp, #8]
	ldr	r0, [r4]
	ldr	r1, [r6]
	sub	r3, r3, #5
	stm	sp, {r1, ip}
	sub	r2, r2, #5
	ldr	r1, [r4, #4]
	add	r0, r0, #5
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L82
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [sp, #16]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L120
.L90:
	mov	r2, #40
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r2, [fp, #4]
	add	r6, r6, #76
	bl	playerDisgusted
	mov	r0, r10
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r9
	cmp	r6, r7
	bne	.L132
.L43:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L122:
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6]
	sub	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #5
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L107
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #16]
	eorne	r3, r2, #1
	cmp	r3, #0
	bne	.L133
	bl	playerDisgusted
	mov	ip, #40
	mov	r2, r5
	ldr	r3, [r4, #56]
.L108:
	sub	r3, r3, #1
	str	r3, [r4, #56]
	ldr	r1, .L141+52
	ldr	r3, .L141+40
	ldr	r1, [r1]
	str	ip, [r3, #4]
	mov	r0, fp
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	bl	playerDisgusted
	mov	r0, r10
	ldr	r1, [r4, #56]
	ldr	r3, .L141+48
	mov	lr, pc
	bx	r3
.L107:
	ldr	r5, [r4, #68]
	b	.L46
.L127:
	add	r0, r6, #16
	ldm	r0, {r0, ip}
	add	r2, r4, #16
	sub	ip, ip, #10
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	ip, [sp, #12]
	ldr	ip, [r6]
	sub	r0, r0, #10
	add	r1, r1, #10
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	ip, [sp]
	ldm	r4, {r0, r1}
	sub	r3, r3, #5
	sub	r2, r2, #5
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L73
	b	.L119
.L124:
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #20
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6, #4]
	add	r1, r1, #10
	str	r1, [sp]
	str	ip, [sp, #4]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #10
	add	r0, r0, #5
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L110
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L110
	ldr	r3, [sp, #16]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L111
	bl	playerDisgusted
	mov	r2, r5
	ldr	r3, [r4, #56]
.L112:
	ldr	r1, .L141+52
	sub	r3, r3, #1
	mov	r0, fp
	ldr	r1, [r1]
	str	r3, [r4, #56]
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	mov	r2, #40
	ldr	ip, .L141+40
	mov	r0, r10
	ldr	r1, [r4, #56]
	ldr	r3, .L141+48
	str	r2, [ip, #4]
	mov	lr, pc
	bx	r3
.L110:
	ldr	r5, [r4, #68]
	b	.L59
.L123:
	ldr	r8, [r4, #28]
	cmp	r8, #1
	beq	.L134
	cmp	r8, #0
	bne	.L46
	add	r0, r6, #16
	ldm	r0, {r0, ip}
	add	r2, r4, #16
	sub	ip, ip, #10
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	ip, [sp, #12]
	ldr	ip, [r6]
	sub	r0, r0, #10
	sub	r1, r1, #10
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	ip, [sp]
	ldm	r4, {r0, r1}
	sub	r3, r3, #5
	sub	r2, r2, #5
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L107
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L107
	ldr	r2, [sp, #16]
	ldr	r3, [r4, #64]
	eor	r8, r2, #1
	cmp	r3, #0
	moveq	r8, #0
	andne	r8, r8, #1
	cmp	r8, #0
	bne	.L135
	bl	playerDisgusted
	mov	ip, #40
	mov	r2, r8
	ldr	r3, [r4, #56]
	b	.L108
.L125:
	ldr	r8, [r4, #28]
	cmp	r8, #1
	beq	.L136
.L62:
	cmp	r8, #0
	bne	.L110
	add	r0, r6, #16
	ldm	r0, {r0, ip}
	add	r2, r4, #16
	sub	ip, ip, #10
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	str	ip, [sp, #12]
	ldr	ip, [r6, #4]
	sub	r0, r0, #20
	add	r1, r1, #10
	str	r0, [sp, #8]
	str	r1, [sp]
	str	ip, [sp, #4]
	ldm	r4, {r0, r1}
	sub	r3, r3, #5
	sub	r2, r2, #10
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L110
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L110
	ldr	r3, [sp, #16]
	ldr	r2, [r4, #64]
	eor	r3, r3, #1
	cmp	r2, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L111
	bl	playerDisgusted
	mov	r2, r8
	ldr	r3, [r4, #56]
	b	.L112
.L126:
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6]
	add	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #32
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L114
	ldr	r2, [r6, #52]
	cmp	r2, #0
	beq	.L137
.L114:
	ldr	r5, [r4, #28]
	b	.L75
.L131:
	ldr	r1, [r6, #20]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #4]
	ldr	ip, [r6, #16]
	str	r1, [sp, #12]
	ldr	r1, [r6]
	sub	r3, r3, #5
	stmib	sp, {r0, ip}
	str	r1, [sp]
	sub	r2, r2, #5
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L82
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #16]
	eorne	r3, r2, #1
	cmp	r3, #0
	beq	.L90
.L120:
	ldr	r0, .L141+56
	mov	lr, pc
	bx	r9
	ldr	r1, [r6, #56]
	ldr	r0, .L141+60
	mov	lr, pc
	bx	r9
	ldr	r3, [r6, #56]
	sub	r3, r3, #1
	str	r3, [r6, #56]
	cmp	r3, #0
	mov	r3, #1
	streq	r3, [r6, #52]
	str	r3, [sp, #16]
	b	.L82
.L130:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	str	ip, [sp, #12]
	ldr	ip, [r6, #4]
	str	r1, [sp, #8]
	ldr	r0, [r4]
	ldr	r1, [r6]
	sub	r3, r3, #5
	stm	sp, {r1, ip}
	sub	r2, r2, #5
	ldr	r1, [r4, #4]
	add	r0, r0, #32
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L115
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L115
	ldr	r3, [r4, #64]
	cmp	r3, #0
	moveq	r3, #0
	ldr	r2, [sp, #16]
	eorne	r3, r2, #1
	cmp	r3, #0
	bne	.L138
	mov	r2, #40
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r3, [r4, #56]
	str	r2, [fp, #4]
	bl	playerDisgusted
	mov	r0, r10
	ldr	r1, [r4, #56]
	mov	lr, pc
	bx	r9
.L115:
	ldr	r5, [r4, #28]
	b	.L85
.L134:
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #10
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #4]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6]
	sub	r1, r1, #10
	str	r1, [sp, #4]
	str	ip, [sp]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #5
	add	r0, r0, #32
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L107
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L107
	ldr	r2, [sp, #16]
	ldr	r3, [r4, #64]
	eor	r2, r2, #1
	cmp	r3, #0
	moveq	r2, #0
	andne	r2, r2, #1
	cmp	r2, #0
	bne	.L139
	str	r2, [sp, #20]
	bl	playerDisgusted
	mov	ip, #40
	ldr	r3, [r4, #56]
	ldr	r2, [sp, #20]
	b	.L108
.L137:
	ldr	r0, [r4, #60]
	ldr	r3, [r4, #56]
	add	r0, r0, #1
	add	r3, r3, #1
	str	r5, [r6, #52]
	str	r0, [r4, #60]
	ldr	r1, [fp]
	mov	r0, r10
	str	r3, [r4, #56]
	mov	lr, pc
	bx	r9
	mov	r3, #40
	ldr	r2, [r4, #56]
	cmp	r2, #4
	ldr	r2, .L141+40
	str	r3, [r2, #4]
	movgt	r3, #5
	ldr	r5, [r4, #28]
	strgt	r3, [r4, #56]
	b	.L75
.L136:
	ldr	r0, [r6, #20]
	ldr	ip, [r6, #16]
	sub	r0, r0, #10
	sub	ip, ip, #20
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	str	r0, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r4]
	ldr	ip, [r6, #4]
	add	r1, r1, #10
	str	r1, [sp]
	str	ip, [sp, #4]
	ldr	r1, [r4, #4]
	sub	r3, r3, #5
	sub	r2, r2, #10
	add	r0, r0, #32
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L109
	ldr	r3, [r6, #52]
	cmp	r3, #0
	bne	.L109
	ldr	r2, [sp, #16]
	ldr	r3, [r4, #64]
	eor	r8, r2, #1
	cmp	r3, #0
	moveq	r8, #0
	andne	r8, r8, #1
	cmp	r8, #0
	bne	.L140
	bl	playerDisgusted
	ldr	r3, [r4, #56]
	ldr	r1, .L141+52
	sub	r3, r3, #1
	mov	r2, r8
	mov	r0, fp
	ldr	r1, [r1]
	str	r3, [r4, #56]
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	mov	r2, #40
	ldr	ip, .L141+40
	mov	r0, r10
	ldr	r1, [r4, #56]
	ldr	r3, .L141+48
	str	r2, [ip, #4]
	mov	lr, pc
	bx	r3
.L109:
	ldr	r8, [r4, #28]
	b	.L62
.L133:
	mov	r3, #1
	ldr	r0, .L141+64
	ldr	r2, .L141+48
	str	r3, [r6, #52]
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r2
	ldr	r5, [r4, #68]
	b	.L46
.L111:
	mov	r3, #1
	ldr	r0, .L141+68
	str	r3, [r6, #52]
	ldr	r2, .L141+48
	str	r3, [sp, #16]
	mov	lr, pc
	bx	r2
	ldr	r5, [r4, #68]
	b	.L59
.L139:
	str	r5, [r6, #52]
	ldr	r0, .L141+64
	ldr	r3, .L141+48
	str	r8, [sp, #16]
	mov	lr, pc
	bx	r3
	ldr	r5, [r4, #68]
	b	.L46
.L138:
	ldr	r0, .L141+56
	mov	lr, pc
	bx	r9
	ldr	r1, [r6, #56]
	ldr	r0, .L141+60
	mov	lr, pc
	bx	r9
	ldr	r3, [r6, #56]
	sub	r3, r3, #1
	cmp	r3, #0
	streq	r5, [r6, #52]
	str	r5, [sp, #16]
	str	r3, [r6, #56]
	ldr	r5, [r4, #28]
	b	.L85
.L135:
	str	r5, [r6, #52]
	ldr	r0, .L141+64
	ldr	r3, .L141+48
	str	r5, [sp, #16]
	mov	lr, pc
	bx	r3
	ldr	r5, [r4, #68]
	b	.L46
.L140:
	ldr	r0, .L141+68
	ldr	r3, .L141+48
	str	r5, [r6, #52]
	str	r5, [sp, #16]
	mov	lr, pc
	bx	r3
	ldr	r8, [r4, #28]
	b	.L62
.L142:
	.align	2
.L141:
	.word	player
	.word	orange
	.word	collision
	.word	disgusted_data
	.word	.LC3
	.word	cucumber
	.word	catnip
	.word	Meow_length
	.word	Meow_data
	.word	playSoundB
	.word	.LANCHOR1
	.word	rat
	.word	mgba_printf
	.word	disgusted_length
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.word	.LC4
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
	ldr	r3, .L145
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bxgt	lr
	b	playerCollision.part.0
.L146:
	.align	2
.L145:
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
	ldr	r3, .L157
	ldrh	r3, [r3]
	and	r2, r3, #240
	cmp	r2, #240
	push	{r4, lr}
	beq	.L155
.L148:
	ldr	r1, .L157+4
	ldr	r3, [r1, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1, #24]
	beq	.L156
.L150:
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
	ldr	r1, .L157+8
	ldr	ip, [r1, #4]
	ldr	r0, .L157+12
	ldr	r1, .L157+16
	cmp	ip, #0
	str	r2, [r0]
	str	r3, [r1]
	blle	playerCollision.part.0
.L153:
	ldr	r4, .L157+20
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L157+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L156:
	ldr	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #5
	movgt	r2, r3
	mov	r3, #10
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L150
.L155:
	tst	r3, #512
	beq	.L148
	mov	r2, #0
	mov	r3, #10
	ldr	r1, .L157+4
	str	r2, [r1, #36]
	str	r3, [r1, #24]
	b	.L150
.L158:
	.align	2
.L157:
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
	ldr	r5, .L207
	ldr	r4, .L207+4
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
	bne	.L202
.L160:
	tst	r3, #128
	bne	.L161
	ldr	r1, [r4, #4]
	add	r0, r0, r1
	cmp	r0, #255
	ble	.L203
.L161:
	ands	r2, r3, #32
	bne	.L163
	cmp	r6, #0
	str	r2, [r4, #28]
	ble	.L163
	ldr	r1, [r4, #8]
	ldr	r2, .L207+8
	sub	r1, r6, r1
	add	r0, r1, lr, lsl #9
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L204
.L163:
	tst	r3, #16
	bne	.L166
	mov	r2, #1
	ldr	r0, [r4]
	add	r1, r8, r0
	cmp	r1, #512
	str	r2, [r4, #28]
	blt	.L205
.L166:
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	beq	.L206
.L169:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	playerAnimation
.L203:
	ldr	r9, [r4, #12]
	ldr	r0, .L207+8
	add	r2, r9, r7
	add	r10, r6, r2, lsl #9
	ldrb	r10, [r10, r0]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r2, r2, #9
	beq	.L161
	add	r2, ip, r2
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r9
	strne	r1, [r4, #4]
	b	.L161
.L205:
	ldr	r8, [r4, #8]
	ldr	r6, .L207+8
	add	r1, r8, ip
	add	r2, r1, lr, lsl #9
	ldrb	r2, [r2, r6]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L166
	add	r1, r1, r7, lsl #9
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r0, r0, r8
	strne	r0, [r4]
	tst	r3, #512
	movne	r3, #0
	strne	r3, [r4, #64]
	bne	.L169
.L206:
	bl	playerattack
	mov	r2, #1
	ldr	r3, .L207+12
	ldrh	r3, [r3]
	tst	r3, #1
	str	r2, [r4, #64]
	beq	.L169
	ldrh	r3, [r5]
	ands	r3, r3, r2
	bne	.L169
	ldr	r1, [r4, #68]
	cmp	r1, #0
	moveq	r3, r2
	str	r3, [r4, #68]
	b	.L169
.L202:
	ldr	r2, [r4, #12]
	ldr	r1, .L207+8
	sub	r2, lr, r2
	add	r9, r6, r2, lsl #9
	ldrb	r9, [r9, r1]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r9, r2, #9
	beq	.L160
	add	r9, ip, r9
	ldrb	r1, [r9, r1]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	b	.L160
.L204:
	add	r0, r1, r7, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r1, [r4]
	b	.L163
.L208:
	.align	2
.L207:
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
	ldr	r4, .L213
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L211
	bl	playerDisgusted
	ldr	r3, [r4]
	sub	r3, r3, #1
	str	r3, [r4]
.L211:
	bl	updatePlayer
	ldr	r3, .L213+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L214:
	.align	2
.L213:
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
	ldr	lr, .L220
	ldr	r3, .L220+4
	add	r4, lr, #20
.L217:
	cmp	r2, #5
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r5, [r3, #52]
	add	r3, r3, #76
	ldrne	r0, [lr], #4
	ldrne	ip, [r4], #4
	addne	r2, r2, #1
	bne	.L217
.L215:
	pop	{r4, r5, lr}
	bx	lr
.L221:
	.align	2
.L220:
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
	ldr	r1, .L230
	ldr	r3, .L230+4
	ldr	r2, .L230+8
	ldrh	r9, [r1]
	ldrh	r8, [r3]
	ldr	lr, .L230+12
	ldr	r7, .L230+16
	ldr	r6, .L230+20
	add	r5, r2, #380
.L224:
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
	add	r2, r2, #76
	lsl	r4, r0, #3
	orr	r3, r3, r6
	add	r0, lr, r0, lsl #3
	cmp	r5, r2
	strh	fp, [r0, #4]	@ movhi
	strh	ip, [lr, r4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	bne	.L224
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L231:
	.align	2
.L230:
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
	ldr	r0, .L236
	ldr	r3, .L236+4
	add	r5, r0, #16
.L234:
	add	r4, r2, #1
	strb	r2, [r3, #44]
	and	r2, r4, #255
	cmp	r2, #12
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r6, [r3, #52]
	add	r3, r3, #76
	ldrne	ip, [r0], #4
	ldrne	lr, [r5], #4
	bne	.L234
.L232:
	pop	{r4, r5, r6, lr}
	bx	lr
.L237:
	.align	2
.L236:
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
	ldr	r1, .L244
	ldr	r2, .L244+4
	ldr	r3, .L244+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L244+12
	ldr	r4, .L244+16
	ldr	lr, .L244+20
	add	ip, r3, #304
.L241:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L240
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L240:
	add	r3, r3, #76
	cmp	r3, ip
	bne	.L241
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L245:
	.align	2
.L244:
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
	ldr	lr, .L251
	mov	r2, #15
	mov	ip, #160
	mov	r0, #5
	mov	r1, #32
	mov	r6, #0
	ldr	r3, .L251+4
	add	r5, lr, #24
	b	.L248
.L250:
	ldr	r0, [lr], #4
	ldr	ip, [r5], #4
	and	r2, r4, #255
.L248:
	cmp	r2, #20
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strb	r2, [r3, #44]
	str	r6, [r3, #52]
	add	r4, r2, #1
	add	r3, r3, #76
	bne	.L250
	pop	{r4, r5, r6, lr}
	bx	lr
.L252:
	.align	2
.L251:
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
	ldr	r1, .L259
	ldr	r2, .L259+4
	ldr	r3, .L259+8
	ldrh	r6, [r1]
	ldrh	r5, [r2]
	ldr	r1, .L259+12
	ldr	r4, .L259+16
	ldr	lr, .L259+20
	add	ip, r3, #456
.L256:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r9, r2, #3
	lslne	r2, r2, #3
	strhne	r8, [r1, r2]	@ movhi
	bne	.L255
	ldm	r3, {r2, r10}
	sub	r2, r2, r5
	and	r2, r2, r4
	sub	r10, r10, r6
	orr	r2, r2, lr
	and	r10, r10, #255
	strh	r7, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r10, [r1, r9]	@ movhi
.L255:
	add	r3, r3, #76
	cmp	r3, ip
	bne	.L256
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L260:
	.align	2
.L259:
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
	ldr	r3, .L263
	mov	lr, pc
	bx	r3
	ldr	r3, .L263+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L263+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L263+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L264:
	.align	2
.L263:
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
	.comm	player_life,76,4
	.comm	heart,76,4
	.comm	player_score,76,4
	.comm	dog,76,4
	.comm	catnip,456,4
	.comm	rat,228,4
	.comm	cucumber,304,4
	.comm	orange,380,4
	.comm	player,76,4
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
