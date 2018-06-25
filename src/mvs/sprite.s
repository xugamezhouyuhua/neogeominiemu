	.file	1 "sprite.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	gVideoBuff8,245760,4
	.globl	gVideoBuff16
	.data
	.align	2
	.type	gVideoBuff16, @object
	.size	gVideoBuff16, 4
gVideoBuff16:
	.word	gVideoBuff8
	.globl	gNeoPalColor
	.section	.bss,"aw",@nobits
	.align	1
	.type	gNeoPalColor, @object
	.size	gNeoPalColor, 2
gNeoPalColor:
	.space	2
	.globl	gFramesEmulated
	.align	2
	.type	gFramesEmulated, @object
	.size	gFramesEmulated, 4
gFramesEmulated:
	.space	4
	.text
	.align	2
	.globl	video_clear_buffer
	.set	nomips16
	.set	nomicromips
	.ent	video_clear_buffer
	.type	video_clear_buffer, @function
video_clear_buffer:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(gVideoBuff8)
	addiu	$4,$2,%lo(gVideoBuff8)
	move	$5,$0
	li	$2,196608			# 0x30000
	ori	$6,$2,0xc000
	jal	memset
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	video_clear_buffer
	.size	video_clear_buffer, .-video_clear_buffer
	.align	2
	.globl	blit_reset
	.set	nomips16
	.set	nomicromips
	.ent	blit_reset
	.type	blit_reset, @function
blit_reset:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(gVideoBuff8)
	addiu	$3,$2,%lo(gVideoBuff8)
	lui	$2,%hi(gVideoBuff16)
	sw	$3,%lo(gVideoBuff16)($2)
	lui	$2,%hi(gFramesEmulated)
	sw	$0,%lo(gFramesEmulated)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_reset
	.size	blit_reset, .-blit_reset
	.align	2
	.globl	blit_start
	.set	nomips16
	.set	nomicromips
	.ent	blit_start
	.type	blit_start, @function
blit_start:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$3,48($fp)
	li	$2,16			# 0x10
	bne	$3,$2,$L3
	nop

	lui	$2,%hi(gVideoBuff8)
	addiu	$2,$2,%lo(gVideoBuff8)
	sw	$2,24($fp)
	lui	$2,%hi(neo_game_w)
	lw	$3,%lo(neo_game_w)($2)
	li	$2,304			# 0x130
	bne	$3,$2,$L5
	nop

	lui	$2,%hi(gVideoBuff8+16432)
	addiu	$2,$2,%lo(gVideoBuff8+16432)
	j	$L6
	nop

$L5:
	lui	$2,%hi(gVideoBuff8+16416)
	addiu	$2,$2,%lo(gVideoBuff8+16416)
$L6:
	sw	$2,28($fp)
	lui	$2,%hi(video_palette)
	lw	$2,%lo(video_palette)($2)
	addiu	$2,$2,8190
	lhu	$2,0($2)
	sw	$2,36($fp)
	lw	$2,36($fp)
	sll	$2,$2,16
	lw	$3,36($fp)
	or	$2,$3,$2
	sw	$2,36($fp)
	sw	$0,32($fp)
	j	$L7
	nop

$L8:
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L7:
	lw	$2,32($fp)
	slt	$2,$2,20
	bne	$2,$0,$L8
	nop

	sw	$0,32($fp)
	j	$L9
	nop

$L10:
	lui	$2,%hi(neo_game_w)
	lw	$2,%lo(neo_game_w)($2)
	sll	$2,$2,1
	lw	$4,28($fp)
	lui	$3,%hi(gVideoBuff8)
	addiu	$5,$3,%lo(gVideoBuff8)
	move	$6,$2
	jal	memcpy
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1024
	sw	$2,28($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L9:
	lw	$2,32($fp)
	slt	$2,$2,224
	bne	$2,$0,$L10
	nop

$L3:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_start
	.size	blit_start, .-blit_start
	.align	2
	.globl	blit_finish
	.set	nomips16
	.set	nomicromips
	.ent	blit_finish
	.type	blit_finish, @function
blit_finish:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_finish
	.size	blit_finish, .-blit_finish
	.align	2
	.globl	blit_draw_fix
	.set	nomips16
	.set	nomicromips
	.ent	blit_draw_fix
	.type	blit_draw_fix, @function
blit_draw_fix:
	.frame	$fp,40,$31		# vars= 24, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$fp,36($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	move	$2,$7
	sh	$2,52($fp)
	li	$2,8			# 0x8
	sw	$2,8($fp)
	lui	$2,%hi(fix_memory)
	lw	$2,%lo(fix_memory)($2)
	move	$3,$2
	lw	$2,48($fp)
	sll	$2,$2,5
	addu	$2,$3,$2
	sw	$2,12($fp)
	lui	$2,%hi(video_palette)
	lw	$3,%lo(video_palette)($2)
	lhu	$2,52($fp)
	sll	$2,$2,4
	sll	$2,$2,1
	addu	$2,$3,$2
	sw	$2,20($fp)
	lui	$2,%hi(gVideoBuff16)
	lw	$3,%lo(gVideoBuff16)($2)
	lw	$2,44($fp)
	sll	$2,$2,9
	move	$4,$2
	lw	$2,40($fp)
	addu	$2,$4,$2
	sll	$2,$2,1
	addu	$2,$3,$2
	sw	$2,16($fp)
	j	$L13
	nop

$L22:
	lw	$2,12($fp)
	lw	$2,0($2)
	sw	$2,24($fp)
	lw	$2,12($fp)
	addiu	$2,$2,4
	sw	$2,12($fp)
	lw	$2,24($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L14
	nop

	lw	$2,16($fp)
	lhu	$3,28($fp)
	sh	$3,0($2)
$L14:
	lw	$2,24($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L15
	nop

	lw	$2,16($fp)
	addiu	$2,$2,8
	lhu	$3,28($fp)
	sh	$3,0($2)
$L15:
	lw	$2,24($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L16
	nop

	lw	$2,16($fp)
	addiu	$2,$2,2
	lhu	$3,28($fp)
	sh	$3,0($2)
$L16:
	lw	$2,24($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L17
	nop

	lw	$2,16($fp)
	addiu	$2,$2,10
	lhu	$3,28($fp)
	sh	$3,0($2)
$L17:
	lw	$2,24($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L18
	nop

	lw	$2,16($fp)
	addiu	$2,$2,4
	lhu	$3,28($fp)
	sh	$3,0($2)
$L18:
	lw	$2,24($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L19
	nop

	lw	$2,16($fp)
	addiu	$2,$2,12
	lhu	$3,28($fp)
	sh	$3,0($2)
$L19:
	lw	$2,24($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L20
	nop

	lw	$2,16($fp)
	addiu	$2,$2,6
	lhu	$3,28($fp)
	sh	$3,0($2)
$L20:
	lw	$2,24($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,20($fp)
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,28($fp)
	lh	$2,28($fp)
	bltz	$2,$L21
	nop

	lw	$2,16($fp)
	addiu	$2,$2,14
	lhu	$3,28($fp)
	sh	$3,0($2)
$L21:
	lw	$2,16($fp)
	addiu	$2,$2,1024
	sw	$2,16($fp)
$L13:
	lw	$2,8($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	lw	$3,8($fp)
	addiu	$3,$3,-1
	sw	$3,8($fp)
	bne	$2,$0,$L22
	nop

	move	$sp,$fp
	lw	$fp,36($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_draw_fix
	.size	blit_draw_fix, .-blit_draw_fix
	.align	2
	.globl	blit_draw_spr
	.set	nomips16
	.set	nomicromips
	.ent	blit_draw_spr
	.type	blit_draw_spr, @function
blit_draw_spr:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,44($fp)
	sh	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_draw_spr
	.size	blit_draw_spr, .-blit_draw_spr
	.align	2
	.globl	blit_finish_spr
	.set	nomips16
	.set	nomicromips
	.ent	blit_finish_spr
	.type	blit_finish_spr, @function
blit_finish_spr:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_finish_spr
	.size	blit_finish_spr, .-blit_finish_spr
	.data
	.align	2
	.type	drawgfxline, @object
	.size	drawgfxline, 32
drawgfxline:
	.word	drawgfxline_zoom
	.word	drawgfxline_zoom_flip
	.word	drawgfxline_zoom_opaque
	.word	drawgfxline_zoom_flip_opaque
	.word	drawgfxline_fixed
	.word	drawgfxline_fixed_flip
	.word	drawgfxline_fixed_opaque
	.word	drawgfxline_fixed_flip_opaque
	.rdata
	.align	2
	.type	zoom_x_tables, @object
	.size	zoom_x_tables, 256
zoom_x_tables:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_zoom
	.type	drawgfxline_zoom, @function
drawgfxline_zoom:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lui	$2,%hi(zoom_x_tables)
	addiu	$3,$2,%lo(zoom_x_tables)
	lw	$2,36($fp)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	lbu	$2,0($2)
	beq	$2,$0,$L26
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L27
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L27:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L26:
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	beq	$2,$0,$L28
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L29
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L29:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L28:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	beq	$2,$0,$L30
	nop

	lw	$3,12($fp)
	li	$2,983040			# 0xf0000
	and	$2,$3,$2
	beq	$2,$0,$L31
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L31:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L30:
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	beq	$2,$0,$L32
	nop

	lw	$3,12($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$3,$2
	beq	$2,$0,$L33
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L33:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L32:
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$2,0($2)
	beq	$2,$0,$L34
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L35
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L35:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L34:
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$2,0($2)
	beq	$2,$0,$L36
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L37
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L37:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L36:
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$2,0($2)
	beq	$2,$0,$L38
	nop

	lw	$3,12($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$3,$2
	beq	$2,$0,$L39
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L39:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L38:
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$2,0($2)
	beq	$2,$0,$L40
	nop

	lw	$3,12($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$3,$2
	beq	$2,$0,$L41
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L41:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L40:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$2,0($2)
	beq	$2,$0,$L42
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L43
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L43:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L42:
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$2,0($2)
	beq	$2,$0,$L44
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L45
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L45:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L44:
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$2,0($2)
	beq	$2,$0,$L46
	nop

	lw	$3,12($fp)
	li	$2,983040			# 0xf0000
	and	$2,$3,$2
	beq	$2,$0,$L47
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L47:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L46:
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$2,0($2)
	beq	$2,$0,$L48
	nop

	lw	$3,12($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$3,$2
	beq	$2,$0,$L49
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L49:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L48:
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$2,0($2)
	beq	$2,$0,$L50
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L51
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L51:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L50:
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$2,0($2)
	beq	$2,$0,$L52
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L53
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L53:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L52:
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$2,0($2)
	beq	$2,$0,$L54
	nop

	lw	$3,12($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$3,$2
	beq	$2,$0,$L55
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L55:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L54:
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$2,0($2)
	beq	$2,$0,$L25
	nop

	lw	$3,12($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$3,$2
	beq	$2,$0,$L25
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L25:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_zoom
	.size	drawgfxline_zoom, .-drawgfxline_zoom
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_zoom_opaque
	.type	drawgfxline_zoom_opaque, @function
drawgfxline_zoom_opaque:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lui	$2,%hi(zoom_x_tables)
	addiu	$3,$2,%lo(zoom_x_tables)
	lw	$2,36($fp)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	lbu	$2,0($2)
	beq	$2,$0,$L58
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L58:
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	beq	$2,$0,$L59
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L59:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	beq	$2,$0,$L60
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L60:
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	beq	$2,$0,$L61
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L61:
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$2,0($2)
	beq	$2,$0,$L62
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L62:
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$2,0($2)
	beq	$2,$0,$L63
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L63:
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$2,0($2)
	beq	$2,$0,$L64
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L64:
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$2,0($2)
	beq	$2,$0,$L65
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L65:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$2,0($2)
	beq	$2,$0,$L66
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L66:
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$2,0($2)
	beq	$2,$0,$L67
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L67:
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$2,0($2)
	beq	$2,$0,$L68
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L68:
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$2,0($2)
	beq	$2,$0,$L69
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L69:
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$2,0($2)
	beq	$2,$0,$L70
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L70:
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$2,0($2)
	beq	$2,$0,$L71
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L71:
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$2,0($2)
	beq	$2,$0,$L72
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L72:
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$2,0($2)
	beq	$2,$0,$L57
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L57:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_zoom_opaque
	.size	drawgfxline_zoom_opaque, .-drawgfxline_zoom_opaque
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_zoom_flip
	.type	drawgfxline_zoom_flip, @function
drawgfxline_zoom_flip:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lui	$2,%hi(zoom_x_tables)
	addiu	$3,$2,%lo(zoom_x_tables)
	lw	$2,36($fp)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	lbu	$2,0($2)
	beq	$2,$0,$L75
	nop

	lw	$3,12($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$3,$2
	beq	$2,$0,$L76
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L76:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L75:
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	beq	$2,$0,$L77
	nop

	lw	$3,12($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$3,$2
	beq	$2,$0,$L78
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L78:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L77:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	beq	$2,$0,$L79
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L80
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L80:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L79:
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	beq	$2,$0,$L81
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L82
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L82:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L81:
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$2,0($2)
	beq	$2,$0,$L83
	nop

	lw	$3,12($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$3,$2
	beq	$2,$0,$L84
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L84:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L83:
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$2,0($2)
	beq	$2,$0,$L85
	nop

	lw	$3,12($fp)
	li	$2,983040			# 0xf0000
	and	$2,$3,$2
	beq	$2,$0,$L86
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L86:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L85:
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$2,0($2)
	beq	$2,$0,$L87
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L88
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L88:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L87:
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$2,0($2)
	beq	$2,$0,$L89
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L90
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L90:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L89:
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$2,0($2)
	beq	$2,$0,$L91
	nop

	lw	$3,12($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$3,$2
	beq	$2,$0,$L92
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L92:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L91:
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$2,0($2)
	beq	$2,$0,$L93
	nop

	lw	$3,12($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$3,$2
	beq	$2,$0,$L94
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L94:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L93:
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$2,0($2)
	beq	$2,$0,$L95
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L96
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L96:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L95:
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$2,0($2)
	beq	$2,$0,$L97
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L98
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L98:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L97:
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$2,0($2)
	beq	$2,$0,$L99
	nop

	lw	$3,12($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$3,$2
	beq	$2,$0,$L100
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L100:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L99:
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$2,0($2)
	beq	$2,$0,$L101
	nop

	lw	$3,12($fp)
	li	$2,983040			# 0xf0000
	and	$2,$3,$2
	beq	$2,$0,$L102
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L102:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L101:
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$2,0($2)
	beq	$2,$0,$L103
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L104
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L104:
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L103:
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$2,0($2)
	beq	$2,$0,$L74
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L74
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L74:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_zoom_flip
	.size	drawgfxline_zoom_flip, .-drawgfxline_zoom_flip
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_zoom_flip_opaque
	.type	drawgfxline_zoom_flip_opaque, @function
drawgfxline_zoom_flip_opaque:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lui	$2,%hi(zoom_x_tables)
	addiu	$3,$2,%lo(zoom_x_tables)
	lw	$2,36($fp)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	lbu	$2,0($2)
	beq	$2,$0,$L107
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L107:
	lw	$2,8($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	beq	$2,$0,$L108
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L108:
	lw	$2,8($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	beq	$2,$0,$L109
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L109:
	lw	$2,8($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	beq	$2,$0,$L110
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L110:
	lw	$2,8($fp)
	addiu	$2,$2,4
	lbu	$2,0($2)
	beq	$2,$0,$L111
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L111:
	lw	$2,8($fp)
	addiu	$2,$2,5
	lbu	$2,0($2)
	beq	$2,$0,$L112
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L112:
	lw	$2,8($fp)
	addiu	$2,$2,6
	lbu	$2,0($2)
	beq	$2,$0,$L113
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L113:
	lw	$2,8($fp)
	addiu	$2,$2,7
	lbu	$2,0($2)
	beq	$2,$0,$L114
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L114:
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$2,8($fp)
	addiu	$2,$2,8
	lbu	$2,0($2)
	beq	$2,$0,$L115
	nop

	lw	$2,12($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L115:
	lw	$2,8($fp)
	addiu	$2,$2,9
	lbu	$2,0($2)
	beq	$2,$0,$L116
	nop

	lw	$2,12($fp)
	srl	$2,$2,20
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L116:
	lw	$2,8($fp)
	addiu	$2,$2,10
	lbu	$2,0($2)
	beq	$2,$0,$L117
	nop

	lw	$2,12($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L117:
	lw	$2,8($fp)
	addiu	$2,$2,11
	lbu	$2,0($2)
	beq	$2,$0,$L118
	nop

	lw	$2,12($fp)
	srl	$2,$2,4
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L118:
	lw	$2,8($fp)
	addiu	$2,$2,12
	lbu	$2,0($2)
	beq	$2,$0,$L119
	nop

	lw	$2,12($fp)
	srl	$2,$2,24
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L119:
	lw	$2,8($fp)
	addiu	$2,$2,13
	lbu	$2,0($2)
	beq	$2,$0,$L120
	nop

	lw	$2,12($fp)
	srl	$2,$2,16
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L120:
	lw	$2,8($fp)
	addiu	$2,$2,14
	lbu	$2,0($2)
	beq	$2,$0,$L121
	nop

	lw	$2,12($fp)
	srl	$2,$2,8
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
$L121:
	lw	$2,8($fp)
	addiu	$2,$2,15
	lbu	$2,0($2)
	beq	$2,$0,$L106
	nop

	lw	$2,12($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L106:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_zoom_flip_opaque
	.size	drawgfxline_zoom_flip_opaque, .-drawgfxline_zoom_flip_opaque
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_fixed
	.type	drawgfxline_fixed, @function
drawgfxline_fixed:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	beq	$2,$0,$L124
	nop

	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L125
	nop

	lw	$2,8($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L125:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L126
	nop

	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L126:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L127
	nop

	lw	$2,28($fp)
	addiu	$2,$2,2
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L127:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L128
	nop

	lw	$2,28($fp)
	addiu	$2,$2,10
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L128:
	lw	$2,8($fp)
	srl	$2,$2,16
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L129
	nop

	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L129:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L130
	nop

	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L130:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L131
	nop

	lw	$2,28($fp)
	addiu	$2,$2,6
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L131:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L124
	nop

	lw	$2,28($fp)
	addiu	$2,$2,14
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L124:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	beq	$2,$0,$L123
	nop

	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L133
	nop

	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L133:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L134
	nop

	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L134:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L135
	nop

	lw	$2,28($fp)
	addiu	$2,$2,18
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L135:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L136
	nop

	lw	$2,28($fp)
	addiu	$2,$2,26
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L136:
	lw	$2,8($fp)
	srl	$2,$2,16
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L137
	nop

	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L137:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L138
	nop

	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L138:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L139
	nop

	lw	$2,28($fp)
	addiu	$2,$2,22
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L139:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L123
	nop

	lw	$2,28($fp)
	addiu	$2,$2,30
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L123:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_fixed
	.size	drawgfxline_fixed, .-drawgfxline_fixed
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_fixed_opaque
	.type	drawgfxline_fixed_opaque, @function
drawgfxline_fixed_opaque:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,10
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,8($fp)
	srl	$3,$3,16
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,8($fp)
	srl	$3,$3,20
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,6
	lw	$3,8($fp)
	srl	$3,$3,24
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,14
	lw	$3,8($fp)
	srl	$3,$3,28
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,18
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,26
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$3,8($fp)
	srl	$3,$3,16
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$3,8($fp)
	srl	$3,$3,20
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,22
	lw	$3,8($fp)
	srl	$3,$3,24
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,30
	lw	$3,8($fp)
	srl	$3,$3,28
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_fixed_opaque
	.size	drawgfxline_fixed_opaque, .-drawgfxline_fixed_opaque
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_fixed_flip
	.type	drawgfxline_fixed_flip, @function
drawgfxline_fixed_flip:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	beq	$2,$0,$L142
	nop

	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L143
	nop

	lw	$2,28($fp)
	addiu	$2,$2,30
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L143:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L144
	nop

	lw	$2,28($fp)
	addiu	$2,$2,22
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L144:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L145
	nop

	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L145:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L146
	nop

	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L146:
	lw	$2,8($fp)
	srl	$2,$2,16
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L147
	nop

	lw	$2,28($fp)
	addiu	$2,$2,26
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L147:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L148
	nop

	lw	$2,28($fp)
	addiu	$2,$2,18
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L148:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L149
	nop

	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L149:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L142
	nop

	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L142:
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	beq	$2,$0,$L141
	nop

	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L151
	nop

	lw	$2,28($fp)
	addiu	$2,$2,14
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L151:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L152
	nop

	lw	$2,28($fp)
	addiu	$2,$2,6
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L152:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L153
	nop

	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L153:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L154
	nop

	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L154:
	lw	$2,8($fp)
	srl	$2,$2,16
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L155
	nop

	lw	$2,28($fp)
	addiu	$2,$2,10
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L155:
	lw	$2,8($fp)
	andi	$2,$2,0xf0
	beq	$2,$0,$L156
	nop

	lw	$2,28($fp)
	addiu	$2,$2,2
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L156:
	lw	$2,8($fp)
	andi	$2,$2,0xf00
	beq	$2,$0,$L157
	nop

	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L157:
	lw	$2,8($fp)
	andi	$2,$2,0xf000
	beq	$2,$0,$L141
	nop

	lw	$2,8($fp)
	srl	$2,$2,12
	andi	$2,$2,0xf
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
$L141:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_fixed_flip
	.size	drawgfxline_fixed_flip, .-drawgfxline_fixed_flip
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	drawgfxline_fixed_flip_opaque
	.type	drawgfxline_fixed_flip_opaque, @function
drawgfxline_fixed_flip_opaque:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$7,36($fp)
	lw	$2,24($fp)
	addiu	$2,$2,4
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	srl	$2,$2,28
	sll	$2,$2,1
	lw	$3,32($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lw	$2,28($fp)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,2
	lw	$3,8($fp)
	srl	$3,$3,20
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,4
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,6
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	lw	$3,8($fp)
	srl	$3,$3,24
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,10
	lw	$3,8($fp)
	srl	$3,$3,16
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,12
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,14
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,28($fp)
	addiu	$2,$2,16
	lw	$3,8($fp)
	srl	$3,$3,28
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,18
	lw	$3,8($fp)
	srl	$3,$3,20
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,20
	lw	$3,8($fp)
	srl	$3,$3,12
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,22
	lw	$3,8($fp)
	srl	$3,$3,4
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,24
	lw	$3,8($fp)
	srl	$3,$3,24
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,26
	lw	$3,8($fp)
	srl	$3,$3,16
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,28
	lw	$3,8($fp)
	srl	$3,$3,8
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,30
	lw	$3,8($fp)
	andi	$3,$3,0xf
	sll	$3,$3,1
	lw	$4,32($fp)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	drawgfxline_fixed_flip_opaque
	.size	drawgfxline_fixed_flip_opaque, .-drawgfxline_fixed_flip_opaque
	.align	2
	.globl	blit_draw_spr_line
	.set	nomips16
	.set	nomicromips
	.ent	blit_draw_spr_line
	.type	blit_draw_spr_line, @function
blit_draw_spr_line:
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
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	lw	$3,76($fp)
	lw	$2,80($fp)
	sh	$3,40($fp)
	sb	$2,44($fp)
	lw	$2,72($fp)
	sll	$2,$2,7
	sw	$2,24($fp)
	lw	$2,60($fp)
	sll	$3,$2,9
	lw	$2,56($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	lhu	$2,40($fp)
	seb	$2,$2
	andi	$2,$2,0x1
	seb	$3,$2
	lb	$2,44($fp)
	andi	$2,$2,0x2
	seb	$2,$2
	or	$2,$3,$2
	seb	$3,$2
	lw	$2,64($fp)
	andi	$2,$2,0x10
	sra	$2,$2,2
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,32($fp)
	lhu	$2,40($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L160
	nop

	lw	$2,68($fp)
	xori	$2,$2,0xf
	sw	$2,68($fp)
$L160:
	lw	$2,68($fp)
	sll	$2,$2,3
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	lbu	$3,32($fp)
	lui	$2,%hi(drawgfxline)
	sll	$3,$3,2
	addiu	$2,$2,%lo(drawgfxline)
	addu	$2,$3,$2
	lw	$2,0($2)
	lui	$3,%hi(memory_region_gfx3)
	lw	$3,%lo(memory_region_gfx3)($3)
	move	$4,$3
	lw	$3,24($fp)
	addu	$4,$4,$3
	lui	$3,%hi(gVideoBuff16)
	lw	$5,%lo(gVideoBuff16)($3)
	lw	$3,28($fp)
	sll	$3,$3,1
	addu	$5,$5,$3
	lui	$3,%hi(video_palette)
	lw	$6,%lo(video_palette)($3)
	lhu	$3,40($fp)
	srl	$3,$3,8
	andi	$3,$3,0xffff
	sll	$3,$3,4
	sll	$3,$3,1
	addu	$3,$6,$3
	move	$6,$3
	lw	$7,64($fp)
	move	$25,$2
	jalr	$25
	nop

	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	blit_draw_spr_line
	.size	blit_draw_spr_line, .-blit_draw_spr_line
	.ident	"GCC: (GNU) 4.5.2"
