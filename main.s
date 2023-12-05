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
	mov	r1, #67108864
	mov	r3, #768
	mov	r2, #23552
	ldr	r0, .L6
	push	{r4, r5, r6, lr}
	strh	r3, [r1]	@ movhi
	ldr	r5, .L6+4
	strh	r2, [r1, #10]	@ movhi
	mov	r3, #16
	strh	r0, [r1, #8]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+8
	mov	lr, pc
	bx	r5
	mov	r3, #5120
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+16
	ldr	r1, .L6+20
	mov	lr, pc
	bx	r5
	ldr	r2, .L6+24
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L6+28
	mov	lr, pc
	bx	r5
	mov	r2, #0
.L2:
	lsl	r3, r2, #1
	add	r3, r3, #100663296
	add	r3, r3, #61440
	ldrh	r1, [r3]
	add	r2, r2, #1
	orr	r1, r1, #8192
	cmp	r2, #1024
	strh	r1, [r3]	@ movhi
	bne	.L2
	ldr	r3, .L6+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L6+36
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r1, #67108864
	ldr	ip, .L6+40
	strh	r4, [r1, #18]	@ movhi
	mov	r3, #512
	strh	r4, [r1, #16]	@ movhi
	mov	r2, #117440512
	strh	r4, [r1, #22]	@ movhi
	mov	r0, #3
	strh	r4, [r1, #20]	@ movhi
	ldr	r1, .L6+44
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+48
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	24068
	.word	DMANow
	.word	startscreenPal
	.word	startscreenTiles
	.word	100720640
	.word	startscreenMap
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
	ldr	r3, .L10
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L10+8
	ldr	r2, .L10+12
	ldrh	r1, [r1, #48]
	ldr	r3, .L10+16
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L10+20
	pop	{r4, lr}
	str	r2, [r3]
	b	goToStart
.L11:
	.align	2
.L10:
	.word	mgba_open
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	setupSounds
	.word	.LANCHOR0
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
	ldr	r3, .L14
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L15:
	.align	2
.L14:
	.word	buttons
	.size	instruction.part.0, .-instruction.part.0
	.set	win.part.0,instruction.part.0
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
	ldr	r2, .L18
	mov	lr, pc
	bx	r2
	ldr	r3, .L18+4
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L18+8
	ldr	r3, .L18+12
	ldr	r4, .L18+16
	mov	lr, pc
	bx	r3
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L18+20
	ldr	r1, .L18+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L18+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L18+36
	ldr	r1, .L18+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L18+44
	ldr	r1, .L18+48
	mov	lr, pc
	bx	r4
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L18+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+56
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L18+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	waitForVBlank
	.word	CatSong_length
	.word	CatSong_data
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
	mov	r2, #7168
	mov	r5, #67108864
	mov	r6, #256
	ldr	r4, .L22
	strh	r6, [r5]	@ movhi
	mov	r3, #1024
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L22+4
	ldr	r1, .L22+8
	mov	lr, pc
	bx	r4
	mov	r3, #3440
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+16
	mov	r3, r6
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+24
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r3, #512
	strh	r1, [r5, #16]	@ movhi
	mov	r2, #117440512
	strh	r1, [r5, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L22+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L22+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r1, .L43
	ldr	r5, .L43+4
	ldr	r3, [r1]
	ldrh	r2, [r5]
	ldr	r4, .L43+8
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r1]
	ldrh	r3, [r4]
	beq	.L25
	tst	r3, #8
	beq	.L40
.L25:
	tst	r2, #4
	beq	.L26
	tst	r3, #4
	beq	.L41
.L26:
	tst	r3, #16
	ldr	r4, .L43+12
	bne	.L27
	ldr	r2, [r4]
	tst	r3, #64
	add	r2, r2, #2
	str	r2, [r4]
	bne	.L29
.L42:
	ldr	r3, [r4, #4]
	sub	r3, r3, #2
	str	r3, [r4, #4]
.L30:
	ldr	r3, .L43+16
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
.L27:
	tst	r3, #32
	ldreq	r2, [r4]
	subeq	r2, r2, #2
	streq	r2, [r4]
	tst	r3, #64
	beq	.L42
.L29:
	tst	r3, #128
	ldreq	r3, [r4, #4]
	addeq	r3, r3, #2
	streq	r3, [r4, #4]
	b	.L30
.L41:
	bl	goToInstruction
	ldrh	r3, [r4]
	b	.L26
.L40:
	bl	goToGame
	ldr	r3, .L43+20
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5]
	ldrh	r3, [r4]
	b	.L25
.L44:
	.align	2
.L43:
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
	ldr	r3, .L47
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instruction.part.0
.L48:
	.align	2
.L47:
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
	ldr	r0, .L51
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L51+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L51+8
	mov	r3, #2512
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L51+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L51+16
	ldr	r1, .L51+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, r5
	mov	r2, #83886080
	ldr	r1, .L51+24
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L51+28
	ldr	r1, .L51+32
	str	r2, [r3]
	str	r2, [r3, #4]
	mov	lr, pc
	bx	r1
	ldr	r3, .L51+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L51+40
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L51+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	.LC0
	.word	mgba_printf
	.word	DMANow
	.word	newpauseScreenTiles
	.word	100720640
	.word	newpauseScreenMap
	.word	newpauseScreenPal
	.word	.LANCHOR0
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
	ldr	r3, .L63
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L54
	ldr	r2, .L63+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L62
.L54:
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L63+4
	ldrh	r3, [r3]
	ands	r3, r3, #4
	bxne	lr
	ldr	r2, .L63+8
	str	r3, [r2]
	str	r3, [r2, #4]
	b	goToStart
.L62:
	b	goToGame
.L64:
	.align	2
.L63:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
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
	mov	r2, #7168
	mov	r5, #67108864
	mov	r6, #512
	ldr	r4, .L67
	strh	r6, [r5]	@ movhi
	mov	r3, #1024
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L67+4
	ldr	r1, .L67+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L67+12
	ldr	r1, .L67+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L67+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+28
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r3, r6
	strh	r1, [r5, #16]	@ movhi
	mov	r2, #117440512
	strh	r1, [r5, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L67+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bxne	lr
	ldr	r2, .L74+8
	str	r3, [r2]
	str	r3, [r2, #4]
	b	goToStart
.L75:
	.align	2
.L74:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
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
	mov	r2, #7168
	mov	r5, #67108864
	mov	r6, #512
	ldr	r4, .L78
	strh	r6, [r5]	@ movhi
	mov	r3, #1024
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L78+4
	ldr	r1, .L78+8
	mov	lr, pc
	bx	r4
	mov	r3, #2256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L78+12
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+24
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r3, r6
	strh	r1, [r5, #16]	@ movhi
	mov	r2, #117440512
	strh	r1, [r5, #18]	@ movhi
	mov	r0, #3
	ldr	r1, .L78+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L78+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r3, .L96+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
.L81:
	ldr	r4, .L96+16
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L83
	ldr	r2, .L96+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L83
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bleq	goToLose
.L83:
	ldr	r3, .L96+24
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bgt	.L80
	ldr	r2, [r3, #132]
	cmp	r2, #0
	bgt	.L80
	ldr	r3, [r3, #208]
	cmp	r3, #0
	bgt	.L80
	ldr	r3, [r4, #60]
	cmp	r3, #6
	beq	.L95
.L80:
	pop	{r4, lr}
	bx	lr
.L94:
	bl	goToPause
	b	.L81
.L95:
	ldr	r2, .L96+20
	ldr	r3, [r2]
	cmp	r3, #0
	movle	r3, #39
	strle	r3, [r2]
	ble	.L80
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r2]
	bne	.L80
	pop	{r4, lr}
	b	goToWin
.L97:
	.align	2
.L96:
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
	ldr	r3, .L105
	ldr	r3, [r3]
	cmp	r3, #1
	push	{r4, lr}
	beq	.L104
	cmp	r3, #0
	movne	r2, #0
	mov	r3, #67108864
	ldreq	r2, .L105+4
	ldrheq	r1, [r2]
	ldrheq	r2, [r2, #4]
	strhne	r2, [r3, #16]	@ movhi
	strheq	r1, [r3, #20]	@ movhi
	strhne	r2, [r3, #18]	@ movhi
	strheq	r2, [r3, #22]	@ movhi
.L101:
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L105+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L105+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L104:
	mov	r3, #67108864
	ldr	r2, .L105+4
	ldrh	r1, [r2]
	ldrh	r2, [r2, #4]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	b	.L101
.L106:
	.align	2
.L105:
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
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	ldr	r4, .L124+4
	ldr	r8, .L124+8
	ldr	r7, .L124+12
	ldr	fp, .L124+16
	ldr	r10, .L124+20
	ldr	r9, .L124+24
	ldr	r5, .L124+28
	ldr	r6, .L124+32
.L116:
	ldrh	r2, [r4]
	strh	r2, [r8]	@ movhi
	ldr	r3, [r7]
	ldrh	r1, [r6, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L108
.L110:
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L109
.L109:
	ldr	r3, .L124+36
	mov	lr, pc
	bx	r3
.L108:
	mov	lr, pc
	bx	r5
	b	.L116
.L111:
	tst	r2, #8
	beq	.L108
	ldr	r3, .L124+40
	mov	lr, pc
	bx	r3
	b	.L108
.L112:
	mov	lr, pc
	bx	r9
	b	.L108
.L113:
	tst	r2, #8
	beq	.L108
	ldr	r3, .L124+44
	mov	lr, pc
	bx	r3
	b	.L108
.L115:
	mov	lr, pc
	bx	fp
	b	.L108
.L114:
	mov	lr, pc
	bx	r10
	b	.L108
.L125:
	.align	2
.L124:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	game
	.word	pause
	.word	draw
	.word	67109120
	.word	lose
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
