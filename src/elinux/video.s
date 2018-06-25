	.file	1 "video.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	COLOR555TO565
	.section	.bss,"aw",@nobits
	.align	2
	.type	COLOR555TO565, @object
	.size	COLOR555TO565, 131072
COLOR555TO565:
	.space	131072

	.comm	screen,4,4
	.globl	gGameW
	.data
	.align	2
	.type	gGameW, @object
	.size	gGameW, 4
gGameW:
	.word	320
	.globl	gGameH
	.align	2
	.type	gGameH, @object
	.size	gGameH, 4
gGameH:
	.word	240
	.rdata
	.align	2
$LC0:
	.ascii	"SDL_Init error: %s\012\000"
	.align	2
$LC1:
	.ascii	"couldn't set %dx%d 16 bits color model, error is %s\012\000"
	.text
	.align	2
	.globl	init_screen
	.set	nomips16
	.set	nomicromips
	.ent	init_screen
	.type	init_screen, @function
init_screen:
	.frame	$fp,48,$31		# vars= 0, regs= 4/0, args= 24, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$4,32			# 0x20
	jal	SDL_Init
	nop

	bgez	$2,$L2
	nop

	lui	$2,%hi(stderr)
	lw	$2,%lo(stderr)($2)
	move	$17,$2
	lui	$2,%hi($LC0)
	addiu	$16,$2,%lo($LC0)
	jal	SDL_GetError
	nop

	move	$4,$17
	move	$5,$16
	move	$6,$2
	jal	fprintf
	nop

	li	$4,1			# 0x1
	jal	exit
	nop

$L2:
	lw	$4,48($fp)
	lw	$5,52($fp)
	li	$6,16			# 0x10
	move	$7,$0
	jal	SDL_SetVideoMode
	nop

	move	$3,$2
	lui	$2,%hi(screen)
	sw	$3,%lo(screen)($2)
	lui	$2,%hi(screen)
	lw	$2,%lo(screen)($2)
	bne	$2,$0,$L3
	nop

	lui	$2,%hi(stderr)
	lw	$2,%lo(stderr)($2)
	move	$17,$2
	lui	$2,%hi($LC1)
	addiu	$16,$2,%lo($LC1)
	jal	SDL_GetError
	nop

	sw	$2,16($sp)
	move	$4,$17
	move	$5,$16
	lw	$6,48($fp)
	lw	$7,52($fp)
	jal	fprintf
	nop

	li	$4,1			# 0x1
	jal	exit
	nop

$L3:
	lui	$2,%hi(SDL_Quit)
	addiu	$4,$2,%lo(SDL_Quit)
	jal	atexit
	nop

	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	init_screen
	.size	init_screen, .-init_screen
	.align	2
	.globl	update_screen
	.set	nomips16
	.set	nomicromips
	.ent	update_screen
	.type	update_screen, @function
update_screen:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	lw	$2,56($fp)
	bne	$2,$0,$L4
	nop

	lui	$2,%hi(gVideoBuff16)
	lw	$2,%lo(gVideoBuff16)($2)
	sw	$2,24($fp)
	lui	$2,%hi(screen)
	lw	$2,%lo(screen)($2)
	lw	$2,20($2)
	sw	$2,28($fp)
	sh	$0,40($fp)
	lui	$2,%hi(gGameW)
	lw	$3,%lo(gGameW)($2)
	li	$2,304			# 0x130
	bne	$3,$2,$L6
	nop

	li	$2,16432			# 0x4030
	j	$L7
	nop

$L6:
	li	$2,16416			# 0x4020
$L7:
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	sw	$0,36($fp)
	j	$L8
	nop

$L11:
	sw	$0,32($fp)
	j	$L9
	nop

$L10:
	lw	$2,32($fp)
	sll	$2,$2,1
	lw	$3,24($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,40($fp)
	lw	$2,32($fp)
	sll	$2,$2,1
	lw	$3,28($fp)
	addu	$2,$3,$2
	lhu	$4,40($fp)
	lui	$3,%hi(COLOR555TO565)
	sll	$4,$4,1
	addiu	$3,$3,%lo(COLOR555TO565)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L9:
	lui	$2,%hi(gGameW)
	lw	$2,%lo(gGameW)($2)
	lw	$3,32($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L10
	nop

	lui	$2,%hi(gGameW)
	lw	$2,%lo(gGameW)($2)
	sll	$2,$2,1
	lw	$3,28($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1024
	sw	$2,24($fp)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L8:
	lui	$2,%hi(gGameH)
	lw	$2,%lo(gGameH)($2)
	lw	$3,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L11
	nop

	lui	$2,%hi(screen)
	lw	$2,%lo(screen)($2)
	move	$4,$2
	jal	SDL_Flip
	nop

$L4:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_screen
	.size	update_screen, .-update_screen
	.rdata
	.align	2
$LC2:
	.ascii	"+++ gamew = %d gameh = %d +++\012\000"
	.text
	.align	2
	.globl	neo_game_w_h_cb
	.set	nomips16
	.set	nomicromips
	.ent	neo_game_w_h_cb
	.type	neo_game_w_h_cb, @function
neo_game_w_h_cb:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lui	$2,%hi(gGameW)
	lw	$3,32($fp)
	sw	$3,%lo(gGameW)($2)
	lui	$2,%hi(gGameH)
	lw	$3,36($fp)
	sw	$3,%lo(gGameH)($2)
	jal	neo_init_color_table
	nop

	lw	$4,32($fp)
	lw	$5,36($fp)
	jal	init_screen
	nop

	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lui	$2,%hi(gGameW)
	lw	$3,%lo(gGameW)($2)
	lui	$2,%hi(gGameH)
	lw	$2,%lo(gGameH)($2)
	move	$5,$3
	move	$6,$2
	jal	printf
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neo_game_w_h_cb
	.size	neo_game_w_h_cb, .-neo_game_w_h_cb
	.align	2
	.globl	neo_init_color_table
	.set	nomips16
	.set	nomicromips
	.ent	neo_init_color_table
	.type	neo_init_color_table, @function
neo_init_color_table:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$0,8($fp)
	j	$L14
	nop

$L15:
	lw	$2,8($fp)
	andi	$2,$2,0x7fff
	sw	$2,12($fp)
	lw	$2,12($fp)
	sra	$2,$2,10
	andi	$2,$2,0xffff
	andi	$2,$2,0x1f
	sh	$2,16($fp)
	lw	$2,12($fp)
	sra	$2,$2,5
	andi	$2,$2,0xffff
	andi	$2,$2,0x1f
	sh	$2,18($fp)
	lw	$2,12($fp)
	andi	$2,$2,0xffff
	andi	$2,$2,0x1f
	sh	$2,20($fp)
	lhu	$2,18($fp)
	sll	$2,$2,1
	andi	$3,$2,0xffff
	lhu	$2,18($fp)
	srl	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,18($fp)
	lhu	$2,20($fp)
	sll	$2,$2,11
	seh	$3,$2
	lhu	$2,18($fp)
	sll	$2,$2,5
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lh	$2,16($fp)
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(COLOR555TO565)
	lw	$4,8($fp)
	sll	$4,$4,1
	addiu	$2,$2,%lo(COLOR555TO565)
	addu	$2,$4,$2
	sh	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L14:
	lw	$3,8($fp)
	li	$2,65535			# 0xffff
	slt	$2,$3,$2
	bne	$2,$0,$L15
	nop

	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neo_init_color_table
	.size	neo_init_color_table, .-neo_init_color_table
	.align	2
	.globl	poll_gamepad
	.set	nomips16
	.set	nomicromips
	.ent	poll_gamepad
	.type	poll_gamepad, @function
poll_gamepad:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	sw	$0,24($fp)
	j	$L17
	nop

$L18:
	lbu	$3,28($fp)
	li	$2,12			# 0xc
	bne	$3,$2,$L17
	nop

	jal	neogeo_emulator_exit
	nop

$L17:
	addiu	$2,$fp,28
	move	$4,$2
	jal	SDL_PollEvent
	nop

	bne	$2,$0,$L18
	nop

	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	poll_gamepad
	.size	poll_gamepad, .-poll_gamepad
	.ident	"GCC: (GNU) 4.5.2"
