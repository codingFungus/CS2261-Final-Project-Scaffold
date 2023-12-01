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
	.file	"enemies.c"
	.text
	.align	2
	.global	initRat
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRat, %function
initRat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #15
	mov	r4, #30
	mov	lr, #120
	mov	fp, #32
	mov	r10, #24
	mov	r2, #1
	mov	r9, #10
	mov	r0, #0
	mov	r8, #7
	mov	r7, #3
	ldr	ip, .L6
	ldr	r3, .L6+4
	add	r6, ip, #12
.L3:
	add	r5, r1, #1
	strb	r1, [r3, #44]
	and	r1, r5, #255
	cmp	r1, #18
	str	fp, [r3, #16]
	str	r10, [r3, #20]
	str	lr, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r9, [r3, #24]
	str	r0, [r3, #36]
	str	r8, [r3, #40]
	str	r2, [r3, #32]
	str	r0, [r3, #52]
	str	r7, [r3, #56]
	add	r3, r3, #76
	ldrne	lr, [ip], #4
	ldrne	r4, [r6], #4
	bne	.L3
.L1:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0+4
	.word	rat
	.size	initRat, .-initRat
	.align	2
	.global	drawRat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRat, %function
drawRat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L13
	ldr	r2, .L13+4
	ldr	r3, .L13+8
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	r10, [r1]
	ldrh	r9, [r2]
	ldr	r5, .L13+12
	ldr	r8, .L13+16
	ldr	r7, .L13+20
	add	r6, r3, #228
.L10:
	ldr	r2, [r3]
	ldrb	lr, [r3, #44]	@ zero_extendqisi2
	ldr	r0, [r3, #36]
	ldr	fp, [r3, #28]
	sub	r2, r2, r9
	ldr	ip, [r3, #4]
	and	r1, r2, r8
	and	r2, r7, #32768
	orr	r2, r2, r1
	add	r4, r5, lr, lsl #3
	cmp	fp, #1
	add	r0, r0, #96
	strh	r2, [r4, #2]	@ movhi
	sub	ip, ip, r10
	orreq	r2, r2, #4096
	lsl	r0, r0, #2
	add	r3, r3, #76
	strheq	r2, [r4, #2]	@ movhi
	lsl	lr, lr, #3
	and	ip, ip, #255
	and	r1, r0, #1020
	cmp	r6, r3
	strh	ip, [r5, lr]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	bne	.L10
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	vOff
	.word	hOff
	.word	rat
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawRat, .-drawRat
	.align	2
	.global	updateRat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRat, %function
updateRat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	ip, #512
	mov	lr, #1
	mov	r5, #0
	mov	r4, #10
	ldr	r3, .L30
	ldr	r0, .L30+4
	add	r1, r3, #228
.L25:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L16
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L18
	ldr	r2, [r3, #24]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r3, #24]
	beq	.L28
.L18:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	ldr	r6, [r3, #8]
	ldr	r2, [r3]
	beq	.L29
	sub	r2, r2, r6
	cmp	r2, #19
	str	r2, [r3]
	strle	lr, [r3, #28]
.L23:
	add	r3, r3, #76
	cmp	r3, r1
	bne	.L25
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L16:
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	lsl	r2, r2, #3
	strh	ip, [r0, r2]	@ movhi
	b	.L23
.L29:
	add	r2, r2, r6
	cmp	r2, #200
	str	r2, [r3]
	strgt	r5, [r3, #28]
	b	.L23
.L28:
	add	r6, r3, #36
	ldm	r6, {r6, r7}
	add	r6, r6, #1
	cmp	r6, r7
	movge	r6, r2
	str	r4, [r3, #24]
	str	r6, [r3, #36]
	b	.L18
.L31:
	.align	2
.L30:
	.word	rat
	.word	shadowOAM
	.size	updateRat, .-updateRat
	.global	yRat
	.global	xRat
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
	.type	xRat, %object
	.size	xRat, 12
xRat:
	.word	120
	.word	200
	.word	350
	.type	yRat, %object
	.size	yRat, 12
yRat:
	.word	30
	.word	50
	.word	200
	.ident	"GCC: (devkitARM release 53) 9.1.0"
