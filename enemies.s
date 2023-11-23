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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #15
	mov	r2, #1
	mov	r8, #32
	mov	r7, #24
	mov	r6, #120
	mov	r5, #30
	mov	lr, #10
	mov	r1, #0
	mov	ip, #7
	mov	r0, #3
	ldr	r3, .L4
	strb	r4, [r3, #44]
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	lr, [r3, #24]
	str	ip, [r3, #40]
	str	r0, [r3, #56]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r1, [r3, #36]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
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
	push	{r4, r5, lr}
	ldr	r0, .L9
	ldr	r2, .L9+4
	ldr	r3, [r0]
	ldr	r1, [r2]
	ldr	ip, .L9+8
	ldr	r2, [r0, #36]
	sub	r3, r3, r1
	ldr	r5, [ip]
	ldr	r1, [r0, #4]
	ldr	lr, .L9+12
	ldr	r4, [r0, #28]
	ldrb	ip, [r0, #44]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r2, r2, #96
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
.L10:
	.align	2
.L9:
	.word	rat
	.word	hOff
	.word	vOff
	.word	shadowOAM
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
	@ link register save eliminated.
	ldr	r3, .L22
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L12
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L14
	ldr	r2, [r3, #24]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r3, #24]
	bne	.L14
	ldr	r1, [r3, #36]
	ldr	r0, [r3, #40]
	add	r1, r1, #1
	cmp	r1, r0
	movge	r1, r2
	mov	r2, #10
	str	r1, [r3, #36]
	str	r2, [r3, #24]
.L14:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	ldr	r1, [r3, #8]
	ldr	r2, [r3]
	beq	.L21
	sub	r2, r2, r1
	cmp	r2, #19
	str	r2, [r3]
	movle	r2, #1
	strle	r2, [r3, #28]
	bx	lr
.L12:
	mov	r1, #512
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	ldr	r2, .L22+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L21:
	add	r2, r2, r1
	cmp	r2, #200
	str	r2, [r3]
	movgt	r2, #0
	strgt	r2, [r3, #28]
	bx	lr
.L23:
	.align	2
.L22:
	.word	rat
	.word	shadowOAM
	.size	updateRat, .-updateRat
	.align	2
	.global	initDog
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDog, %function
initDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #14
	mov	ip, #64
	mov	r5, #10
	mov	r4, #100
	mov	lr, #200
	mov	r0, #0
	mov	r1, #1
	mov	r2, #8
	ldr	r3, .L26
	strb	r6, [r3, #44]
	stm	r3, {r4, lr}
	str	r5, [r3, #24]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #36]
	str	r0, [r3, #52]
	str	r1, [r3, #28]
	str	r1, [r3, #32]
	str	r2, [r3, #56]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	dog
	.size	initDog, .-initDog
	.align	2
	.global	drawDog
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDog, %function
drawDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L30
	ldr	r2, .L30+4
	ldr	r3, [r1]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	push	{r4, lr}
	mvn	r3, r3, lsr #18
	mov	lr, #512
	ldr	r0, .L30+8
	ldr	r2, [r1, #4]
	ldr	r0, [r0]
	sub	r2, r2, r0
	ldr	r0, .L30+12
	ldr	ip, .L30+16
	ldrb	r1, [r1, #44]	@ zero_extendqisi2
	ldrb	r0, [r0, #44]	@ zero_extendqisi2
	add	r4, ip, r1, lsl #3
	and	r2, r2, #255
	lsl	r1, r1, #3
	add	r0, ip, r0, lsl #3
	strh	r3, [r4, #2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	dog
	.word	hOff
	.word	vOff
	.word	rat
	.word	shadowOAM
	.size	drawDog, .-drawDog
	.align	2
	.global	updateDog
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDog, %function
updateDog:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateDog, .-updateDog
	.comm	player_life,72,4
	.comm	heart,72,4
	.comm	player_score,72,4
	.comm	dog,72,4
	.comm	catnip,504,4
	.comm	rat,72,4
	.comm	cucumber,288,4
	.comm	orange,432,4
	.comm	player,72,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
