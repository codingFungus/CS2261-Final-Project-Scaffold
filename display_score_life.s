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
	.file	"display_score_life.c"
	.text
	.align	2
	.global	initScore
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore, %function
initScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #20
	str	lr, [sp, #-4]!
	mov	lr, #22
	mov	r1, #0
	mov	r2, #16
	mov	ip, #6
	ldr	r3, .L4
	str	r0, [r3]
	ldr	r0, .L4+4
	strb	lr, [r3, #44]
	str	ip, [r3, #40]
	str	r1, [r3, #4]
	str	r1, [r0, #52]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player_score
	.word	player
	.size	initScore, .-initScore
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L8
	ldr	r2, .L8+4
	ldr	r3, [r0]
	ldr	r1, [r2, #60]
	ldr	lr, .L8+8
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r0, r1, #255
	ldr	r1, .L8+12
	lsr	r3, r3, #23
	add	ip, lr, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	and	r1, r1, r0, lsl #1
	strh	r4, [lr, r2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player_score
	.word	player
	.word	shadowOAM
	.word	1022
	.size	drawScore, .-drawScore
	.align	2
	.global	initHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHeart, %function
initHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #220
	mov	r0, #0
	mov	r1, #23
	ldr	r3, .L11
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #44]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L12:
	.align	2
.L11:
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L15
	ldr	r3, [r1]
	ldrb	r2, [r1, #44]	@ zero_extendqisi2
	ldr	r0, .L15+4
	lsl	r3, r3, #23
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldr	ip, .L15+8
	lsr	r3, r3, #23
	add	r1, r0, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	strh	lr, [r0, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	heart
	.word	shadowOAM
	.word	530
	.size	drawHeart, .-drawHeart
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #200
	mov	r0, #0
	mov	r1, #24
	ldr	r3, .L18
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #44]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L19:
	.align	2
.L18:
	.word	player_life
	.size	initLives, .-initLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L22
	ldr	r2, .L22+4
	ldr	r3, [r0]
	ldr	r1, [r2, #56]
	ldr	lr, .L22+8
	ldrb	r2, [r0, #44]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r0, r1, #255
	ldr	r1, .L22+12
	lsr	r3, r3, #23
	add	ip, lr, r2, lsl #3
	orr	r3, r3, #16384
	lsl	r2, r2, #3
	and	r1, r1, r0, lsl #1
	strh	r4, [lr, r2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	player_life
	.word	player
	.word	shadowOAM
	.word	1022
	.size	drawLives, .-drawLives
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
