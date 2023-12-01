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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #768
	mov	r4, #67108864
	mov	r2, #23552
	mov	r5, #0
	ldr	r1, .L4
	ldr	r6, .L4+4
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #16
	strh	r1, [r4, #8]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r6
	mov	r3, #16
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	mov	lr, pc
	bx	r3
	ldr	ip, .L4+52
	strh	r5, [r4, #18]	@ movhi
	mov	r3, #512
	strh	r5, [r4, #16]	@ movhi
	mov	r2, #117440512
	strh	r5, [r4, #22]	@ movhi
	mov	r0, #3
	strh	r5, [r4, #20]	@ movhi
	ldr	r1, .L4+56
	str	r5, [ip]
	mov	lr, pc
	bx	r6
	ldr	r3, .L4+60
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	24068
	.word	DMANow
	.word	startscreenPal
	.word	5152
	.word	startscreenTiles
	.word	100720640
	.word	startscreenMap
	.word	100679680
	.word	startscreen2Tiles
	.word	100724736
	.word	startscreen2Map
	.word	hideSprites
	.word	waitForVBlank
	.word	seed
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L8+8
	ldr	r2, .L8+12
	ldrh	r1, [r1, #48]
	ldr	r3, .L8+16
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	setupSounds
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction.part.0, %function
instruction.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	instruction.part.0, .-instruction.part.0
	.set	win.part.0,instruction.part.0
	.set	lose.part.0,instruction.part.0
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r2, .L16
	mov	lr, pc
	bx	r2
	ldr	r3, .L16+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L16+8
	ldr	r3, .L16+12
	ldr	r4, .L16+16
	mov	lr, pc
	bx	r3
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+36
	ldr	r1, .L16+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+44
	ldr	r1, .L16+48
	mov	lr, pc
	bx	r4
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L16+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+56
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	Catbgm_length
	.word	Catbgm_data
	.word	playSoundA
	.word	DMANow
	.word	100720640
	.word	newbgMap
	.word	newbg_tileTiles
	.word	newbg_tilePal
	.word	100728832
	.word	catSpritesheetTiles
	.word	83886592
	.word	catSpritesheetPal
	.word	shadowOAM
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r5, #256
	mov	r1, #7168
	ldr	r4, .L20
	strh	r5, [r2]	@ movhi
	mov	r3, #1024
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L20+4
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #3440
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+16
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L20+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	100720640
	.word	instructionsMap
	.word	instructionsTiles
	.word	instructionsPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r1, .L41
	ldr	r5, .L41+4
	ldr	r3, [r1]
	ldrh	r2, [r5]
	ldr	r4, .L41+8
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r1]
	ldrh	r3, [r4]
	beq	.L23
	tst	r3, #8
	beq	.L38
.L23:
	tst	r2, #4
	beq	.L24
	tst	r3, #4
	beq	.L39
.L24:
	tst	r3, #16
	ldr	r4, .L41+12
	bne	.L25
	ldr	r2, [r4]
	tst	r3, #64
	add	r2, r2, #2
	str	r2, [r4]
	bne	.L27
.L40:
	ldr	r3, [r4, #4]
	sub	r3, r3, #2
	str	r3, [r4, #4]
.L28:
	ldr	r3, .L41+16
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	ldm	r4, {r2, r3}
	add	r0, r2, r2, lsr #31
	add	r1, r3, r3, lsr #31
	asr	r0, r0, #1
	asr	r1, r1, #1
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsl	r1, r1, #16
	lsl	r3, r3, #16
	lsr	r0, r0, #16
	lsr	r2, r2, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	strh	r0, [ip, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r1, [ip, #22]	@ movhi
	strh	r2, [ip, #16]	@ movhi
	strh	r3, [ip, #18]	@ movhi
	bx	lr
.L25:
	tst	r3, #32
	ldreq	r2, [r4]
	subeq	r2, r2, #2
	streq	r2, [r4]
	tst	r3, #64
	beq	.L40
.L27:
	tst	r3, #128
	ldreq	r3, [r4, #4]
	addeq	r3, r3, #2
	streq	r3, [r4, #4]
	b	.L28
.L39:
	bl	goToInstruction
	ldrh	r3, [r4]
	b	.L24
.L38:
	bl	goToGame
	ldr	r3, .L41+20
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5]
	ldrh	r3, [r4]
	b	.L23
.L42:
	.align	2
.L41:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L45
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instruction.part.0
.L46:
	.align	2
.L45:
	.word	oldButtons
	.size	instruction, .-instruction
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"paused\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #256
	mov	r2, #7168
	strh	r5, [r3]	@ movhi
	ldr	r0, .L49
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L49+8
	mov	r3, #2512
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L49+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+16
	ldr	r1, .L49+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+24
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+36
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L49+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
	.word	.LC0
	.word	mgba_printf
	.word	DMANow
	.word	newpauseScreenTiles
	.word	100720640
	.word	newpauseScreenMap
	.word	newpauseScreenPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L61+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L60
.L52:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L60:
	b	goToGame
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r5, #512
	mov	r1, #7168
	ldr	r4, .L65
	strh	r5, [r2]	@ movhi
	mov	r3, #1024
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L65+4
	ldr	r1, .L65+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L65+12
	ldr	r1, .L65+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+28
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L65+32
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L65+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	100720640
	.word	losebgMap
	.word	7984
	.word	losebgTiles
	.word	losebgPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	instruction
	.size	lose, .-lose
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r5, #512
	mov	r1, #7168
	ldr	r4, .L70
	strh	r5, [r2]	@ movhi
	mov	r3, #1024
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L70+4
	ldr	r1, .L70+8
	mov	lr, pc
	bx	r4
	mov	r3, #2272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L70+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L70+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+24
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L70+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	DMANow
	.word	100720640
	.word	winbgMap
	.word	winbgTiles
	.word	winbgPal
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L73
	ldr	r3, .L88+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L73:
	ldr	r4, .L88+16
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L75
	ldr	r2, .L88+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L75
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bleq	goToLose
.L75:
	ldr	r3, .L88+24
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bgt	.L72
	ldr	r2, [r3, #132]
	cmp	r2, #0
	bgt	.L72
	ldr	r3, [r3, #208]
	cmp	r3, #0
	bgt	.L72
	ldr	r3, [r4, #60]
	cmp	r3, #6
	beq	.L87
.L72:
	pop	{r4, lr}
	bx	lr
.L86:
	bl	goToPause
	b	.L73
.L87:
	ldr	r2, .L88+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L72
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bne	.L72
	pop	{r4, lr}
	b	goToWin
.L89:
	.align	2
.L88:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	player
	.word	delayTimer
	.word	rat
	.size	game, .-game
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	instruction
	.size	win, .-win
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L98
	ldr	r3, [r3]
	cmp	r3, #1
	push	{r4, lr}
	beq	.L96
	cmp	r3, #0
	beq	.L97
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
.L93:
	ldr	r3, .L98+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L98+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L98+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L97:
	mov	r1, #67108864
	ldr	r2, .L98+16
	strh	r3, [r1, #16]	@ movhi
	strh	r3, [r1, #18]	@ movhi
	ldm	r2, {r2, r3}
	add	r3, r3, r3, lsr #31
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	asr	r3, r3, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #22]	@ movhi
	b	.L93
.L96:
	mov	r3, #67108864
	ldr	r2, .L98+16
	ldrh	r1, [r2]
	ldrh	r2, [r2, #4]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	b	.L93
.L99:
	.align	2
.L98:
	.word	state
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	.LANCHOR0
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L120
	mov	lr, pc
	bx	r3
	ldr	r4, .L120+4
	ldr	r8, .L120+8
	ldr	r7, .L120+12
	ldr	fp, .L120+16
	ldr	r10, .L120+20
	ldr	r9, .L120+24
	ldr	r5, .L120+28
	ldr	r6, .L120+32
.L109:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldr	r3, [r7]
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L101
.L103:
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L102
.L102:
	tst	r2, #8
	ldrne	r3, .L120+36
	movne	lr, pc
	bxne	r3
.L101:
	mov	lr, pc
	bx	r5
	b	.L109
.L104:
	tst	r2, #8
	beq	.L101
	ldr	r3, .L120+40
	mov	lr, pc
	bx	r3
	b	.L101
.L105:
	mov	lr, pc
	bx	r9
	b	.L101
.L106:
	tst	r2, #8
	beq	.L101
	ldr	r3, .L120+44
	mov	lr, pc
	bx	r3
	b	.L101
.L108:
	mov	lr, pc
	bx	fp
	b	.L101
.L107:
	mov	lr, pc
	bx	r10
	b	.L101
.L121:
	.align	2
.L120:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	game
	.word	pause
	.word	draw
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.word	instruction.part.0
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.global	vOff
	.global	hOff
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	delayTimer,4,4
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
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
