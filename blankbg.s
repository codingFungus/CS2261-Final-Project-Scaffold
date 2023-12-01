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
	.file	"blankbg.c"
	.text
	.global	blankbgPal
	.global	blankbgMap
	.global	blankbgTiles
	.section	.rodata
	.align	2
	.type	blankbgPal, %object
	.size	blankbgPal, 512
blankbgPal:
	.space	512
	.type	blankbgMap, %object
	.size	blankbgMap, 2048
blankbgMap:
	.space	2048
	.type	blankbgTiles, %object
	.size	blankbgTiles, 32
blankbgTiles:
	.space	32
	.ident	"GCC: (devkitARM release 53) 9.1.0"
