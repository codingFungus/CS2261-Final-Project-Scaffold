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
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #5
	mov	r6, #20
	mov	r5, #210
	mov	r4, #1
	mov	lr, #10
	mov	r0, #32
	mov	r1, #2
	ldr	r3, .L7
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
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	.align	2
.L7:
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
	ldr	r0, .L12
	ldr	r2, .L12+4
	ldr	r3, [r0]
	ldr	r1, [r2]
	ldr	r2, .L12+8
	sub	r3, r3, r1
	ldr	r5, [r2]
	ldr	r1, [r0, #4]
	ldr	lr, .L12+12
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
.L13:
	.align	2
.L12:
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
	ldr	r3, .L17
	ldr	r0, .L17+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L17+8
	ldr	r2, .L17+12
	ldr	r3, [r0]
	ldr	r1, [r2]
	ldr	ip, .L17+16
	ldr	r2, [r0, #36]
	sub	r3, r3, r1
	ldr	r5, [ip]
	ldr	r1, [r0, #4]
	ldr	lr, .L17+20
	ldr	r4, [r0, #28]
	ldrb	ip, [r0, #44]	@ zero_extendqisi2
	lsl	r3, r3, #23
	add	r2, r2, #32
	lsr	r3, r3, #23
	add	r0, lr, ip, lsl #3
	orr	r3, r3, #32768
	cmp	r4, #1
	sub	r1, r1, r5
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	lsl	ip, ip, #3
	orreq	r3, r3, #4096
	and	r1, r1, #255
	and	r2, r2, #1020
	strh	r1, [lr, ip]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strheq	r3, [r0, #2]	@ movhi
	ldr	r4, .L17+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L17+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
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
	ldr	r3, .L22
	ldr	r0, .L22+4
	mov	lr, pc
	bx	r3
	mov	lr, #256
	ldr	r0, .L22+8
	ldr	r2, .L22+12
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L22+16
	sub	r3, r3, r2
	ldr	r5, [r1]
	ldr	r2, [r0, #4]
	ldr	r4, [r0, #28]
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	ldr	ip, .L22+20
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
	ldr	r4, .L22+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	.ascii	"player attacked by obj\000"
	.align	2
.LC3:
	.ascii	"%d\012\000"
	.text
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L86
	ldr	r4, .L86+4
	ldrh	r1, [r5]
	ldr	r6, [r4, #4]
	lsr	r0, r1, #6
	eor	r0, r0, #1
	mov	r8, #0
	cmp	r6, #0
	movle	r0, #0
	andgt	r0, r0, #1
	ldr	r3, [r4, #20]
	ldr	r7, [r4]
	ldr	r2, [r4, #16]
	cmp	r0, r8
	add	ip, r3, r6
	add	lr, r2, r7
	str	r8, [r4, #48]
	sub	sp, sp, #20
	sub	r8, ip, #1
	sub	lr, lr, #1
	bne	.L77
.L25:
	tst	r1, #128
	bne	.L26
	ldr	ip, [r4, #4]
	add	r0, r3, ip
	cmp	r0, #255
	ble	.L78
.L26:
	ands	r0, r1, #32
	bne	.L28
	cmp	r7, #0
	str	r0, [r4, #28]
	ble	.L28
	ldr	ip, [r4, #8]
	ldr	r0, .L86+8
	sub	ip, r7, ip
	add	r7, ip, r6, lsl #9
	ldrb	r7, [r7, r0]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L79
.L28:
	tst	r1, #16
	bne	.L31
	mov	r0, #1
	ldr	r7, [r4]
	add	ip, r2, r7
	cmp	ip, #512
	str	r0, [r4, #28]
	blt	.L80
.L31:
	tst	r1, #512
	beq	.L81
.L33:
	and	r1, r1, #240
	cmp	r1, #240
	beq	.L36
.L35:
	ldr	r1, [r4, #24]
	sub	r1, r1, #1
	cmp	r1, #0
	str	r1, [r4, #24]
	beq	.L82
.L37:
	ldm	r4, {r0, r1}
	add	ip, r3, r3, lsr #31
	sub	r5, r0, #120
	sub	lr, r1, #80
	add	r5, r5, ip, asr #1
	add	ip, r2, r2, lsr #31
	bic	r5, r5, r5, asr #31
	add	ip, lr, ip, asr #1
	cmp	r5, #272
	bic	ip, ip, ip, asr #31
	movlt	lr, r5
	movge	lr, #272
	cmp	ip, #96
	movge	ip, #96
	ldr	r7, .L86+12
	ldr	r6, .L86+16
	ldr	r5, .L86+20
	str	lr, [r7]
	str	ip, [r6]
	ldr	r7, .L86+24
	ldr	r8, .L86+28
	ldr	fp, .L86+32
	ldr	r10, .L86+36
	add	r9, r5, #360
.L39:
	ldr	r6, .L86+40
.L45:
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r5, #4]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	sub	r3, r3, #3
	stm	sp, {ip, lr}
	sub	r2, r2, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L83
.L41:
	add	r6, r6, #60
	cmp	r8, r6
	beq	.L84
.L43:
	add	r2, r4, #16
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	b	.L45
.L83:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	str	ip, [sp, #12]
	ldr	ip, [r6, #4]
	str	r1, [sp, #8]
	ldr	r0, [r4]
	ldr	r1, [r6]
	sub	r3, r3, #3
	stm	sp, {r1, ip}
	sub	r2, r2, #3
	ldr	r1, [r4, #4]
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L41
	mov	r0, fp
	mov	lr, pc
	bx	r10
	ldr	r3, [r4, #56]
	sub	r3, r3, #1
	str	r3, [r4, #56]
	add	r6, r6, #60
	bl	playerDisgusted
	ldr	r1, [r4, #56]
	ldr	r0, .L86+44
	mov	lr, pc
	bx	r10
	cmp	r8, r6
	bne	.L43
.L84:
	add	r5, r5, #60
	cmp	r9, r5
	addne	r2, r4, #16
	ldmne	r4, {r0, r1}
	ldmne	r2, {r2, r3}
	bne	.L39
.L24:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L82:
	add	r0, r4, #36
	ldm	r0, {r0, ip}
	add	r0, r0, #1
	cmp	r0, ip
	movge	r0, r1
	mov	r1, #10
	str	r0, [r4, #36]
	str	r1, [r4, #24]
	b	.L37
.L80:
	ldr	r10, [r4, #8]
	ldr	r9, .L86+8
	add	ip, r10, lr
	add	r0, ip, r6, lsl #9
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L31
	add	ip, ip, r8, lsl #9
	ldrb	r0, [ip, r9]	@ zero_extendqisi2
	cmp	r0, #0
	addne	r7, r7, r10
	strne	r7, [r4]
	tst	r1, #512
	bne	.L33
.L81:
	bl	playerAttack
	ldrh	r3, [r5]
	and	r2, r3, #240
	cmp	r2, #240
	bne	.L85
	tst	r3, #512
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	beq	.L35
.L36:
	mov	r0, #0
	mov	r1, #10
	str	r0, [r4, #36]
	str	r1, [r4, #24]
	b	.L37
.L78:
	ldr	r10, [r4, #12]
	ldr	r9, .L86+8
	add	r0, r10, r8
	add	fp, r7, r0, lsl #9
	ldrb	fp, [fp, r9]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #9
	beq	.L26
	add	r0, lr, r0
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	addne	ip, ip, r10
	strne	ip, [r4, #4]
	b	.L26
.L77:
	ldr	r0, [r4, #12]
	ldr	ip, .L86+8
	sub	r0, r6, r0
	add	r9, r7, r0, lsl #9
	ldrb	r9, [r9, ip]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r9, r0, #9
	beq	.L25
	add	r9, lr, r9
	ldrb	ip, [r9, ip]	@ zero_extendqisi2
	cmp	ip, #0
	strne	r0, [r4, #4]
	b	.L25
.L85:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	b	.L35
.L79:
	add	r7, ip, r8, lsl #9
	ldrb	r0, [r7, r0]	@ zero_extendqisi2
	cmp	r0, #0
	strne	ip, [r4]
	b	.L28
.L87:
	.align	2
.L86:
	.word	buttons
	.word	player
	.word	bg_collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	orange
	.word	collision
	.word	cucumber+240
	.word	.LC2
	.word	mgba_printf
	.word	cucumber
	.word	.LC3
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
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"orange\000"
	.text
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
	ldr	r3, .L93
	push	{r4, lr}
	ldr	r0, .L93+4
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	ip, #32
	ldr	r1, .L93+8
	ldr	r3, .L93+12
	add	r0, r1, #24
.L90:
	strb	r2, [r3, #44]
	ldr	r4, [r1, #4]!
	ldr	lr, [r0, #4]!
	add	r2, r2, #1
	cmp	r2, #7
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #60
	bne	.L90
	pop	{r4, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	mgba_printf
	.word	.LC4
	.word	.LANCHOR0-4
	.word	orange
	.size	initOrange, .-initOrange
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
	mov	r1, #2
	mov	r2, #0
	mov	r0, #5
	mov	ip, #10
	mov	r4, #32
	mov	lr, #1
	mov	r6, #20
	mov	r5, #210
	ldr	r3, .L99
	str	ip, [r3, #24]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #36]
	strb	r2, [r3, #44]
	str	r0, [r3, #56]
	str	r0, [r3, #40]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	lr, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	bl	initOrange
	mov	r1, r4
	mov	r2, #8
	ldr	r0, .L99+4
	ldr	r3, .L99+8
	add	ip, r0, #16
.L96:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r0], #4
	and	r2, lr, #255
	ldr	lr, [ip], #4
	cmp	r2, #12
	stm	r3, {r4, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	add	r3, r3, #60
	bne	.L96
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	player
	.word	.LANCHOR0+48
	.word	cucumber
	.size	initGame, .-initGame
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #384
	ldr	r2, .L105
	ldr	r3, .L105+4
	ldr	r1, .L105+8
	ldrh	r6, [r2]
	ldrh	r5, [r3]
	ldr	r0, .L105+12
	ldr	r4, .L105+16
	ldr	lr, .L105+20
	add	ip, r1, #360
.L102:
	ldrb	r2, [r1, #44]	@ zero_extendqisi2
	ldr	r8, [r1, #4]
	ldr	r3, [r1], #60
	sub	r3, r3, r5
	sub	r8, r8, r6
	and	r3, r3, r4
	lsl	r9, r2, #3
	and	r8, r8, #255
	add	r2, r0, r2, lsl #3
	orr	r3, r3, lr
	cmp	ip, r1
	strh	r8, [r0, r9]	@ movhi
	strh	r7, [r2, #4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	bne	.L102
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L106:
	.align	2
.L105:
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
	mov	r2, #8
	mov	ip, #32
	push	{r4, lr}
	ldr	r1, .L111
	ldr	r3, .L111+4
	add	r0, r1, #16
.L108:
	add	lr, r2, #1
	strb	r2, [r3, #44]
	ldr	r4, [r1], #4
	and	r2, lr, #255
	ldr	lr, [r0], #4
	cmp	r2, #12
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	add	r3, r3, #60
	bne	.L108
	pop	{r4, lr}
	bx	lr
.L112:
	.align	2
.L111:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #388
	ldr	r2, .L117
	ldr	r3, .L117+4
	ldr	r1, .L117+8
	ldrh	r6, [r2]
	ldrh	r5, [r3]
	ldr	r0, .L117+12
	ldr	r4, .L117+16
	ldr	lr, .L117+20
	add	ip, r1, #240
.L114:
	ldrb	r2, [r1, #44]	@ zero_extendqisi2
	ldr	r8, [r1, #4]
	ldr	r3, [r1], #60
	sub	r3, r3, r5
	sub	r8, r8, r6
	and	r3, r3, r4
	lsl	r9, r2, #3
	and	r8, r8, #255
	add	r2, r0, r2, lsl #3
	orr	r3, r3, lr
	cmp	ip, r1
	strh	r8, [r0, r9]	@ movhi
	strh	r7, [r2, #4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	bne	.L114
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	vOff
	.word	hOff
	.word	cucumber
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawCucumber, .-drawCucumber
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
	pop	{r4, lr}
	b	drawCucumber
	.size	drawGame, .-drawGame
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	score,4,4
	.global	yCuc
	.global	xCuc
	.global	yOrange
	.global	xOrange
	.comm	cucumber,240,4
	.comm	orange,360,4
	.comm	player,60,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xOrange, %object
	.size	xOrange, 24
xOrange:
	.word	160
	.word	410
	.word	375
	.word	104
	.word	320
	.space	4
	.type	yOrange, %object
	.size	yOrange, 24
yOrange:
	.word	170
	.word	80
	.word	16
	.word	113
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
