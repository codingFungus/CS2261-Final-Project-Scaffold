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
	mov	r3, #4352
	mov	r6, #67108864
	mov	r2, #7168
	mov	r4, #0
	ldr	r5, .L4
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #8]	@ movhi
	mov	r3, #1024
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+20
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	ldr	ip, .L4+32
	strh	r4, [r6, #18]	@ movhi
	mov	r3, #512
	strh	r4, [r6, #16]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+36
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+40
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	100720640
	.word	startscreenMap
	.word	5200
	.word	startscreenTiles
	.word	startscreenPal
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
	push	{r4, lr}
	ldr	r1, .L34
	ldr	r4, .L34+4
	ldr	r3, [r1]
	ldrh	r2, [r4]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r1]
	beq	.L23
	ldr	r3, .L34+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L32
.L23:
	tst	r2, #4
	beq	.L22
	ldr	r3, .L34+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L33
.L22:
	pop	{r4, lr}
	bx	lr
.L33:
	pop	{r4, lr}
	b	goToInstruction
.L32:
	bl	goToGame
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	ldrh	r2, [r4]
	b	.L23
.L35:
	.align	2
.L34:
	.word	seed
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L38
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instruction.part.0
.L39:
	.align	2
.L38:
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
	ldr	r0, .L42
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L42+8
	mov	r3, #2480
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+24
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+36
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L42+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L54
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L53
.L45:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L53:
	b	goToGame
.L55:
	.align	2
.L54:
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
	ldr	r4, .L58
	strh	r5, [r2]	@ movhi
	mov	r3, #1024
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L58+4
	ldr	r1, .L58+8
	mov	lr, pc
	bx	r4
	mov	r3, #9344
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L58+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+24
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+28
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L58+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	DMANow
	.word	100720640
	.word	losebgMap
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
	ldr	r4, .L63
	strh	r5, [r2]	@ movhi
	mov	r3, #1024
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L63+4
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	mov	r3, #2272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+24
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L63+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L63+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
	ldr	r3, .L81+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
.L66:
	ldr	r4, .L81+16
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L68
	ldr	r2, .L81+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L68
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bleq	goToLose
.L68:
	ldr	r3, .L81+24
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bgt	.L65
	ldr	r2, [r3, #132]
	cmp	r2, #0
	bgt	.L65
	ldr	r3, [r3, #208]
	cmp	r3, #0
	bgt	.L65
	ldr	r3, [r4, #60]
	cmp	r3, #6
	beq	.L80
.L65:
	pop	{r4, lr}
	bx	lr
.L79:
	bl	goToPause
	b	.L66
.L80:
	ldr	r2, .L81+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L65
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bne	.L65
	pop	{r4, lr}
	b	goToWin
.L82:
	.align	2
.L81:
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
	ldr	r3, .L88
	ldr	r3, [r3]
	cmp	r3, #1
	movne	r2, #0
	mov	r3, #67108864
	ldreq	r2, .L88+4
	push	{r4, lr}
	ldrheq	r1, [r2]
	ldrheq	r2, [r2, #4]
	strhne	r2, [r3, #16]	@ movhi
	strheq	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, .L88+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L88+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L88+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	state
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
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
	ldr	r3, .L110
	mov	lr, pc
	bx	r3
	ldr	r4, .L110+4
	ldr	r8, .L110+8
	ldr	r7, .L110+12
	ldr	fp, .L110+16
	ldr	r10, .L110+20
	ldr	r9, .L110+24
	ldr	r5, .L110+28
	ldr	r6, .L110+32
.L99:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldr	r3, [r7]
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L91
.L93:
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L92
.L92:
	tst	r2, #8
	ldrne	r3, .L110+36
	movne	lr, pc
	bxne	r3
.L91:
	mov	lr, pc
	bx	r5
	b	.L99
.L94:
	tst	r2, #8
	beq	.L91
	ldr	r3, .L110+40
	mov	lr, pc
	bx	r3
	b	.L91
.L95:
	mov	lr, pc
	bx	r9
	b	.L91
.L96:
	tst	r2, #8
	beq	.L91
	ldr	r3, .L110+44
	mov	lr, pc
	bx	r3
	b	.L91
.L98:
	mov	lr, pc
	bx	fp
	b	.L91
.L97:
	mov	lr, pc
	bx	r10
	b	.L91
.L111:
	.align	2
.L110:
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
