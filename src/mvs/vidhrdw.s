	.file	1 "vidhrdw.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	neogeo_videoram,131072,4

	.comm	videoram_read_buffer,2,2

	.comm	videoram_offset,2,2

	.comm	videoram_modulo,2,2

	.comm	palettes,16384,4

	.comm	palette_bank,1,1

	.comm	video_palette,4,4

	.comm	video_palettebank,16384,16

	.comm	video_clut16,65536,4

	.comm	gfx_pen_usage,12,4

	.comm	fix_bank,1,1

	.comm	fix_usage,4,4

	.comm	fix_memory,4,4

	.comm	neogeo_fix_bank_type,4,4

	.comm	max_sprite_number,2,2
	.local	xoffset
	.comm	xoffset,2,2
	.local	high_tile_mask
	.comm	high_tile_mask,4,4
	.local	sprite_gfx_code_mask
	.comm	sprite_gfx_code_mask,4,4
	.local	next_update_first_line
	.comm	next_update_first_line,4,4
	.local	spr_pen_usage
	.comm	spr_pen_usage,4,4
	.data
	.align	2
	.type	sprite_zoom_control, @object
	.size	sprite_zoom_control, 4
sprite_zoom_control:
	.word	neogeo_videoram+65536
	.align	2
	.type	sprite_y_control, @object
	.size	sprite_y_control, 4
sprite_y_control:
	.word	neogeo_videoram+66560
	.align	2
	.type	sprite_x_control, @object
	.size	sprite_x_control, 4
sprite_x_control:
	.word	neogeo_videoram+67584
	.local	skip_fullmode0
	.comm	skip_fullmode0,4,4
	.local	skip_fullmode1
	.comm	skip_fullmode1,4,4
	.local	tile_fullmode0
	.comm	tile_fullmode0,4,4
	.local	tile_fullmode1
	.comm	tile_fullmode1,4,4
	.local	draw_fixed_layer_func
	.comm	draw_fixed_layer_func,8,4
	.local	draw_fixed_layer
	.comm	draw_fixed_layer,4,4
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	draw_fixed_layer_type0
	.type	draw_fixed_layer_type0, @function
draw_fixed_layer_type0:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	bgez	$2,$L2
	nop

	addiu	$2,$2,7
$L2:
	sra	$2,$2,3
	sh	$2,24($fp)
	j	$L3
	nop

$L8:
	lhu	$2,24($fp)
	sll	$2,$2,5
	addiu	$2,$2,28674
	sll	$2,$2,1
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	sw	$2,28($fp)
	li	$2,2			# 0x2
	sh	$2,26($fp)
	j	$L4
	nop

$L6:
	lw	$2,28($fp)
	lhu	$2,0($2)
	sh	$2,32($fp)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
	lhu	$2,32($fp)
	srl	$2,$2,12
	sh	$2,34($fp)
	lhu	$2,32($fp)
	andi	$2,$2,0xfff
	sh	$2,32($fp)
	lui	$2,%hi(fix_usage)
	lw	$3,%lo(fix_usage)($2)
	lhu	$2,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L5
	nop

	lhu	$2,24($fp)
	sll	$2,$2,3
	addiu	$4,$2,16
	lhu	$2,26($fp)
	sll	$5,$2,3
	lhu	$3,32($fp)
	lhu	$2,34($fp)
	move	$6,$3
	move	$7,$2
	jal	blit_draw_fix
	nop

$L5:
	lhu	$2,26($fp)
	addiu	$2,$2,1
	sh	$2,26($fp)
$L4:
	lhu	$2,26($fp)
	sltu	$2,$2,30
	bne	$2,$0,$L6
	nop

	lhu	$2,24($fp)
	addiu	$2,$2,1
	sh	$2,24($fp)
$L3:
	lhu	$3,24($fp)
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	li	$4,320			# 0x140
	subu	$2,$4,$2
	bgez	$2,$L7
	nop

	addiu	$2,$2,7
$L7:
	sra	$2,$2,3
	slt	$2,$3,$2
	bne	$2,$0,$L8
	nop

	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	draw_fixed_layer_type0
	.size	draw_fixed_layer_type0, .-draw_fixed_layer_type0
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	draw_fixed_layer_type1
	.type	draw_fixed_layer_type1, @function
draw_fixed_layer_type1:
	.frame	$fp,184,$31		# vars= 152, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-184
	sw	$31,180($sp)
	sw	$fp,176($sp)
	move	$fp,$sp
	sw	$0,28($fp)
	sw	$0,32($fp)
	sh	$0,26($fp)
	j	$L10
	nop

$L12:
	lw	$2,32($fp)
	addiu	$3,$2,29952
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$3,0($2)
	li	$2,512			# 0x200
	bne	$3,$2,$L11
	nop

	lw	$2,32($fp)
	addiu	$3,$2,30080
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$2,0($2)
	andi	$3,$2,0xff00
	li	$2,65280			# 0xff00
	bne	$3,$2,$L11
	nop

	lw	$2,32($fp)
	addiu	$3,$2,30080
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$2,0($2)
	andi	$2,$2,0x3
	sw	$2,28($fp)
	lhu	$2,26($fp)
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$3,28($fp)
	sw	$3,20($2)
	lhu	$2,26($fp)
	addiu	$2,$2,1
	sh	$2,26($fp)
$L11:
	lhu	$2,26($fp)
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$3,28($fp)
	sw	$3,20($2)
	lhu	$2,26($fp)
	addiu	$2,$2,1
	sh	$2,26($fp)
	lw	$2,32($fp)
	addiu	$2,$2,2
	sw	$2,32($fp)
$L10:
	lhu	$2,26($fp)
	sltu	$2,$2,32
	bne	$2,$0,$L12
	nop

	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	bgez	$2,$L13
	nop

	addiu	$2,$2,7
$L13:
	sra	$2,$2,3
	sh	$2,24($fp)
	j	$L14
	nop

$L19:
	lhu	$2,24($fp)
	sll	$2,$2,5
	addiu	$2,$2,28674
	sll	$2,$2,1
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	sw	$2,36($fp)
	li	$2,2			# 0x2
	sh	$2,26($fp)
	j	$L15
	nop

$L17:
	lw	$2,36($fp)
	lhu	$2,0($2)
	sh	$2,40($fp)
	lw	$2,36($fp)
	addiu	$2,$2,2
	sw	$2,36($fp)
	lhu	$2,40($fp)
	srl	$2,$2,12
	sh	$2,42($fp)
	lhu	$2,40($fp)
	andi	$2,$2,0xfff
	sh	$2,40($fp)
	lhu	$2,26($fp)
	addiu	$2,$2,-2
	andi	$2,$2,0x1f
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lw	$2,20($2)
	seh	$2,$2
	xori	$2,$2,0x3
	seh	$2,$2
	andi	$2,$2,0xffff
	sll	$2,$2,12
	andi	$3,$2,0xffff
	lhu	$2,40($fp)
	addu	$2,$3,$2
	sh	$2,40($fp)
	lui	$2,%hi(fix_usage)
	lw	$3,%lo(fix_usage)($2)
	lhu	$2,40($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L16
	nop

	lhu	$2,24($fp)
	sll	$2,$2,3
	addiu	$4,$2,16
	lhu	$2,26($fp)
	sll	$5,$2,3
	lhu	$3,40($fp)
	lhu	$2,42($fp)
	move	$6,$3
	move	$7,$2
	jal	blit_draw_fix
	nop

$L16:
	lhu	$2,26($fp)
	addiu	$2,$2,1
	sh	$2,26($fp)
$L15:
	lhu	$2,26($fp)
	sltu	$2,$2,30
	bne	$2,$0,$L17
	nop

	lhu	$2,24($fp)
	addiu	$2,$2,1
	sh	$2,24($fp)
$L14:
	lhu	$3,24($fp)
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	li	$4,320			# 0x140
	subu	$2,$4,$2
	bgez	$2,$L18
	nop

	addiu	$2,$2,7
$L18:
	sra	$2,$2,3
	slt	$2,$3,$2
	bne	$2,$0,$L19
	nop

	move	$sp,$fp
	lw	$31,180($sp)
	lw	$fp,176($sp)
	addiu	$sp,$sp,184
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	draw_fixed_layer_type1
	.size	draw_fixed_layer_type1, .-draw_fixed_layer_type1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	draw_fixed_layer_type2
	.type	draw_fixed_layer_type2, @function
draw_fixed_layer_type2:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	bgez	$2,$L21
	nop

	addiu	$2,$2,7
$L21:
	sra	$2,$2,3
	sh	$2,24($fp)
	j	$L22
	nop

$L27:
	lhu	$2,24($fp)
	sll	$2,$2,5
	addiu	$2,$2,28674
	sll	$2,$2,1
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	sw	$2,28($fp)
	li	$2,2			# 0x2
	sh	$2,26($fp)
	j	$L23
	nop

$L25:
	lw	$2,28($fp)
	lhu	$2,0($2)
	sh	$2,32($fp)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
	lhu	$2,32($fp)
	srl	$2,$2,12
	sh	$2,34($fp)
	lhu	$2,32($fp)
	andi	$2,$2,0xfff
	sh	$2,32($fp)
	lhu	$2,26($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x1f
	addiu	$3,$2,29952
	lhu	$4,24($fp)
	li	$2,-1431699456			# 0xffffffffaaaa0000
	ori	$2,$2,0xaaab
	multu	$4,$2
	mfhi	$2
	srl	$2,$2,2
	andi	$2,$2,0xffff
	sll	$2,$2,5
	addu	$3,$3,$2
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$2,0($2)
	move	$4,$2
	lhu	$5,24($fp)
	li	$2,-1431699456			# 0xffffffffaaaa0000
	ori	$2,$2,0xaaab
	multu	$5,$2
	mfhi	$2
	srl	$2,$2,2
	sll	$2,$2,1
	sll	$3,$2,2
	subu	$3,$3,$2
	subu	$2,$5,$3
	andi	$2,$2,0xffff
	li	$3,5			# 0x5
	subu	$2,$3,$2
	sll	$2,$2,1
	sra	$2,$4,$2
	andi	$2,$2,0xffff
	nor	$2,$0,$2
	andi	$2,$2,0xffff
	andi	$2,$2,0x3
	andi	$2,$2,0xffff
	sll	$2,$2,12
	andi	$3,$2,0xffff
	lhu	$2,32($fp)
	addu	$2,$3,$2
	sh	$2,32($fp)
	lui	$2,%hi(fix_usage)
	lw	$3,%lo(fix_usage)($2)
	lhu	$2,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L24
	nop

	lhu	$2,24($fp)
	sll	$2,$2,3
	addiu	$4,$2,16
	lhu	$2,26($fp)
	sll	$5,$2,3
	lhu	$3,32($fp)
	lhu	$2,34($fp)
	move	$6,$3
	move	$7,$2
	jal	blit_draw_fix
	nop

$L24:
	lhu	$2,26($fp)
	addiu	$2,$2,1
	sh	$2,26($fp)
$L23:
	lhu	$2,26($fp)
	sltu	$2,$2,30
	bne	$2,$0,$L25
	nop

	lhu	$2,24($fp)
	addiu	$2,$2,1
	sh	$2,24($fp)
$L22:
	lhu	$3,24($fp)
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	li	$4,320			# 0x140
	subu	$2,$4,$2
	bgez	$2,$L26
	nop

	addiu	$2,$2,7
$L26:
	sra	$2,$2,3
	slt	$2,$3,$2
	bne	$2,$0,$L27
	nop

	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	draw_fixed_layer_type2
	.size	draw_fixed_layer_type2, .-draw_fixed_layer_type2
	.local	sprite_list
	.comm	sprite_list,768,4
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	draw_sprites_hardware
	.type	draw_sprites_hardware, @function
draw_sprites_hardware:
	.frame	$fp,104,$31		# vars= 64, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$fp,96($sp)
	move	$fp,$sp
	sw	$4,104($fp)
	sw	$5,108($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sh	$0,52($fp)
	sh	$0,54($fp)
	sh	$0,56($fp)
	sw	$0,64($fp)
	sw	$0,68($fp)
	j	$L29
	nop

$L38:
	lui	$2,%hi(sprite_y_control)
	lw	$3,%lo(sprite_y_control)($2)
	lhu	$2,52($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,84($fp)
	lui	$2,%hi(sprite_zoom_control)
	lw	$3,%lo(sprite_zoom_control)($2)
	lhu	$2,52($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,86($fp)
	lhu	$2,84($fp)
	andi	$2,$2,0x40
	beq	$2,$0,$L30
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L52
	nop

$L31:
	lw	$2,48($fp)
	addiu	$2,$2,1
	lw	$3,36($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
	j	$L33
	nop

$L30:
	lhu	$2,54($fp)
	bne	$2,$0,$L53
	nop

$L34:
	lhu	$2,84($fp)
	andi	$2,$2,0x3f
	sw	$2,40($fp)
	lw	$2,40($fp)
	beq	$2,$0,$L54
	nop

$L36:
	lhu	$2,84($fp)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	li	$3,512			# 0x200
	subu	$2,$3,$2
	sw	$2,32($fp)
	lui	$2,%hi(sprite_x_control)
	lw	$3,%lo(sprite_x_control)($2)
	lhu	$2,52($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	addiu	$2,$2,16
	sw	$2,36($fp)
	lhu	$2,86($fp)
	andi	$2,$2,0xff
	sll	$2,$2,6
	sw	$2,44($fp)
	lw	$2,40($fp)
	slt	$2,$2,33
	bne	$2,$0,$L37
	nop

	li	$2,512			# 0x200
	sw	$2,40($fp)
	li	$2,1			# 0x1
	sh	$2,56($fp)
	lui	$2,%hi(skip_fullmode1)
	lw	$3,%lo(skip_fullmode1)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,64($fp)
	lui	$2,%hi(tile_fullmode1)
	lw	$3,%lo(tile_fullmode1)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,68($fp)
	j	$L33
	nop

$L37:
	lw	$2,40($fp)
	sll	$2,$2,4
	sw	$2,40($fp)
	sh	$0,56($fp)
	lui	$2,%hi(skip_fullmode0)
	lw	$3,%lo(skip_fullmode0)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,64($fp)
	lui	$2,%hi(tile_fullmode0)
	lw	$3,%lo(tile_fullmode0)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,68($fp)
$L33:
	lw	$2,36($fp)
	andi	$2,$2,0x1ff
	sw	$2,36($fp)
	lhu	$2,86($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$2,$2,0xf
	sw	$2,48($fp)
	lw	$3,36($fp)
	lw	$2,48($fp)
	addu	$3,$3,$2
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	addiu	$2,$2,16
	slt	$2,$3,$2
	bne	$2,$0,$L32
	nop

	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	li	$3,336			# 0x150
	subu	$3,$3,$2
	lw	$2,36($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L32
	nop

	lhu	$4,54($fp)
	lw	$2,36($fp)
	seh	$3,$2
	lui	$2,%hi(sprite_list)
	sll	$4,$4,3
	addiu	$2,$2,%lo(sprite_list)
	addu	$2,$4,$2
	sh	$3,0($2)
	lhu	$4,54($fp)
	lw	$2,48($fp)
	andi	$2,$2,0xffff
	addiu	$2,$2,1
	andi	$3,$2,0xffff
	lui	$2,%hi(sprite_list)
	sll	$4,$4,3
	addiu	$2,$2,%lo(sprite_list)
	addu	$2,$4,$2
	sh	$3,2($2)
	lhu	$2,54($fp)
	lhu	$3,52($fp)
	sll	$3,$3,6
	sll	$4,$3,1
	lui	$3,%hi(neogeo_videoram)
	addiu	$3,$3,%lo(neogeo_videoram)
	addu	$3,$4,$3
	lui	$4,%hi(sprite_list)
	addiu	$4,$4,%lo(sprite_list)
	sll	$2,$2,3
	addu	$2,$4,$2
	sw	$3,4($2)
	lhu	$2,54($fp)
	addiu	$2,$2,1
	sh	$2,54($fp)
	j	$L32
	nop

$L52:
	nop
	j	$L32
	nop

$L54:
	nop
$L32:
	lhu	$2,52($fp)
	addiu	$2,$2,1
	sh	$2,52($fp)
	j	$L29
	nop

$L55:
	nop
$L29:
	lui	$2,%hi(max_sprite_number)
	lhu	$2,%lo(max_sprite_number)($2)
	lhu	$3,52($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L38
	nop

	j	$L35
	nop

$L53:
	nop
$L35:
	lhu	$2,54($fp)
	beq	$2,$0,$L39
	nop

	sh	$0,72($fp)
	sh	$0,74($fp)
	j	$L40
	nop

$L50:
	lw	$2,32($fp)
	andi	$3,$2,0xffff
	lhu	$2,72($fp)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	andi	$2,$2,0x1ff
	sh	$2,76($fp)
	lw	$2,64($fp)
	lbu	$2,0($2)
	sh	$2,78($fp)
	lhu	$2,56($fp)
	beq	$2,$0,$L41
	nop

	lhu	$2,78($fp)
	bne	$2,$0,$L42
	nop

	lui	$2,%hi(skip_fullmode1)
	lw	$3,%lo(skip_fullmode1)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,64($fp)
	lui	$2,%hi(tile_fullmode1)
	lw	$3,%lo(tile_fullmode1)($2)
	lw	$2,44($fp)
	addu	$2,$3,$2
	sw	$2,68($fp)
	lw	$2,64($fp)
	lbu	$2,0($2)
	sh	$2,78($fp)
	j	$L42
	nop

$L41:
	lhu	$2,78($fp)
	sltu	$2,$2,17
	bne	$2,$0,$L42
	nop

	lui	$2,%hi(skip_fullmode0)
	lw	$3,%lo(skip_fullmode0)($2)
	lw	$2,44($fp)
	addiu	$2,$2,63
	addu	$2,$3,$2
	lbu	$2,0($2)
	sh	$2,78($fp)
	lhu	$2,74($fp)
	beq	$2,$0,$L43
	nop

	lw	$2,64($fp)
	lbu	$2,0($2)
	move	$3,$2
	lhu	$2,78($fp)
	subu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,76($fp)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	andi	$2,$2,0x1ff
	sh	$2,76($fp)
	j	$L42
	nop

$L43:
	li	$2,1			# 0x1
	sh	$2,74($fp)
$L42:
	lhu	$3,76($fp)
	lhu	$2,78($fp)
	addu	$3,$3,$2
	lw	$2,104($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L44
	nop

	lhu	$3,78($fp)
	lw	$2,108($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L44
	nop

	lui	$2,%hi(sprite_list)
	addiu	$2,$2,%lo(sprite_list)
	sw	$2,80($fp)
	sw	$0,36($fp)
	j	$L45
	nop

$L49:
	lw	$2,80($fp)
	lw	$3,4($2)
	lw	$2,68($fp)
	lbu	$2,0($2)
	addiu	$2,$2,1
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,88($fp)
	lw	$2,80($fp)
	lw	$3,4($2)
	lw	$2,68($fp)
	lbu	$2,0($2)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	move	$3,$2
	lhu	$2,88($fp)
	sll	$2,$2,12
	move	$4,$2
	lui	$2,%hi(high_tile_mask)
	lw	$2,%lo(high_tile_mask)($2)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,60($fp)
	lui	$2,%hi(auto_animation_disabled)
	lbu	$2,%lo(auto_animation_disabled)($2)
	bne	$2,$0,$L46
	nop

	lhu	$2,88($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L47
	nop

	lw	$3,60($fp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$3,$3,$2
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	andi	$2,$2,0x7
	or	$2,$3,$2
	sw	$2,60($fp)
	j	$L46
	nop

$L47:
	lhu	$2,88($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L46
	nop

	lw	$3,60($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$3,$3,$2
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	andi	$2,$2,0x3
	or	$2,$3,$2
	sw	$2,60($fp)
$L46:
	lui	$2,%hi(sprite_gfx_code_mask)
	lw	$2,%lo(sprite_gfx_code_mask)($2)
	lw	$3,60($fp)
	and	$2,$3,$2
	sw	$2,60($fp)
	lui	$2,%hi(spr_pen_usage)
	lw	$3,%lo(spr_pen_usage)($2)
	lw	$2,60($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L48
	nop

	lw	$2,80($fp)
	lh	$2,0($2)
	move	$4,$2
	lhu	$5,76($fp)
	lw	$2,80($fp)
	lhu	$2,2($2)
	move	$3,$2
	lhu	$2,78($fp)
	lhu	$6,88($fp)
	lw	$7,60($fp)
	sw	$7,16($sp)
	sw	$6,20($sp)
	move	$6,$3
	move	$7,$2
	jal	blit_draw_spr
	nop

$L48:
	lw	$2,80($fp)
	addiu	$2,$2,8
	sw	$2,80($fp)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L45:
	lhu	$3,54($fp)
	lw	$2,36($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L49
	nop

$L44:
	lw	$2,64($fp)
	lbu	$2,0($2)
	move	$3,$2
	lhu	$2,72($fp)
	addu	$2,$3,$2
	sh	$2,72($fp)
	lw	$2,64($fp)
	addiu	$2,$2,1
	sw	$2,64($fp)
	lw	$2,68($fp)
	addiu	$2,$2,1
	sw	$2,68($fp)
$L40:
	lhu	$3,72($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L50
	nop

	sh	$0,54($fp)
	sw	$0,40($fp)
$L39:
	lui	$2,%hi(max_sprite_number)
	lhu	$2,%lo(max_sprite_number)($2)
	lhu	$3,52($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L55
	nop

	jal	blit_finish_spr
	nop

	move	$sp,$fp
	lw	$31,100($sp)
	lw	$fp,96($sp)
	addiu	$sp,$sp,104
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	draw_sprites_hardware
	.size	draw_sprites_hardware, .-draw_sprites_hardware
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	sprite_on_scanline
	.type	sprite_on_scanline, @function
sprite_on_scanline:
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
	lw	$3,28($fp)
	lw	$2,32($fp)
	addu	$2,$3,$2
	addiu	$2,$2,-1
	andi	$2,$2,0x1ff
	sw	$2,8($fp)
	lw	$3,8($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L57
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L57
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L58
	nop

$L57:
	lw	$3,8($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L59
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L58
	nop

	lw	$3,24($fp)
	lw	$2,8($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L59
	nop

$L58:
	li	$2,1			# 0x1
	j	$L60
	nop

$L59:
	move	$2,$0
$L60:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sprite_on_scanline
	.size	sprite_on_scanline, .-sprite_on_scanline
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	draw_sprites_software
	.type	draw_sprites_software, @function
draw_sprites_software:
	.frame	$fp,112,$31		# vars= 64, regs= 2/0, args= 32, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$fp,104($sp)
	move	$fp,$sp
	sw	$4,112($fp)
	sw	$5,116($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sh	$0,60($fp)
	sh	$0,62($fp)
	sb	$0,64($fp)
	j	$L62
	nop

$L71:
	lui	$2,%hi(sprite_y_control)
	lw	$3,%lo(sprite_y_control)($2)
	lhu	$2,60($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,84($fp)
	lui	$2,%hi(sprite_zoom_control)
	lw	$3,%lo(sprite_zoom_control)($2)
	lhu	$2,60($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,86($fp)
	lhu	$2,84($fp)
	andi	$2,$2,0x40
	beq	$2,$0,$L63
	nop

	lw	$2,48($fp)
	beq	$2,$0,$L85
	nop

$L64:
	lw	$2,56($fp)
	addiu	$2,$2,1
	lw	$3,44($fp)
	addu	$2,$3,$2
	sw	$2,44($fp)
	j	$L66
	nop

$L63:
	lhu	$2,62($fp)
	bne	$2,$0,$L86
	nop

$L67:
	lhu	$2,84($fp)
	andi	$2,$2,0x3f
	sw	$2,48($fp)
	lw	$2,48($fp)
	beq	$2,$0,$L87
	nop

$L69:
	lhu	$2,84($fp)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	li	$3,512			# 0x200
	subu	$2,$3,$2
	sw	$2,40($fp)
	lui	$2,%hi(sprite_x_control)
	lw	$3,%lo(sprite_x_control)($2)
	lhu	$2,60($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	addiu	$2,$2,16
	sw	$2,44($fp)
	lhu	$2,86($fp)
	andi	$2,$2,0xff
	sw	$2,52($fp)
	lw	$2,48($fp)
	slt	$2,$2,33
	bne	$2,$0,$L70
	nop

	li	$2,512			# 0x200
	sw	$2,48($fp)
	li	$2,1			# 0x1
	sb	$2,64($fp)
	j	$L66
	nop

$L70:
	lw	$2,48($fp)
	sll	$2,$2,4
	sw	$2,48($fp)
	sb	$0,64($fp)
$L66:
	lw	$2,44($fp)
	andi	$2,$2,0x1ff
	sw	$2,44($fp)
	lhu	$2,86($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$2,$2,0xf
	sw	$2,56($fp)
	lw	$3,44($fp)
	lw	$2,56($fp)
	addu	$3,$3,$2
	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	addiu	$2,$2,16
	slt	$2,$3,$2
	bne	$2,$0,$L65
	nop

	lui	$2,%hi(xoffset)
	lhu	$2,%lo(xoffset)($2)
	li	$3,336			# 0x150
	subu	$3,$3,$2
	lw	$2,44($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L65
	nop

	lhu	$4,62($fp)
	lw	$2,44($fp)
	seh	$3,$2
	lui	$2,%hi(sprite_list)
	sll	$4,$4,3
	addiu	$2,$2,%lo(sprite_list)
	addu	$2,$4,$2
	sh	$3,0($2)
	lhu	$4,62($fp)
	lw	$2,56($fp)
	andi	$2,$2,0xffff
	addiu	$2,$2,1
	andi	$3,$2,0xffff
	lui	$2,%hi(sprite_list)
	sll	$4,$4,3
	addiu	$2,$2,%lo(sprite_list)
	addu	$2,$4,$2
	sh	$3,2($2)
	lhu	$2,62($fp)
	lhu	$3,60($fp)
	sll	$3,$3,6
	sll	$4,$3,1
	lui	$3,%hi(neogeo_videoram)
	addiu	$3,$3,%lo(neogeo_videoram)
	addu	$3,$4,$3
	lui	$4,%hi(sprite_list)
	addiu	$4,$4,%lo(sprite_list)
	sll	$2,$2,3
	addu	$2,$4,$2
	sw	$3,4($2)
	lhu	$2,62($fp)
	addiu	$2,$2,1
	sh	$2,62($fp)
	j	$L65
	nop

$L85:
	nop
	j	$L65
	nop

$L87:
	nop
$L65:
	lhu	$2,60($fp)
	addiu	$2,$2,1
	sh	$2,60($fp)
	j	$L62
	nop

$L88:
	nop
$L62:
	lui	$2,%hi(max_sprite_number)
	lhu	$2,%lo(max_sprite_number)($2)
	lhu	$3,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L71
	nop

	j	$L68
	nop

$L86:
	nop
$L68:
	lhu	$2,62($fp)
	beq	$2,$0,$L72
	nop

	lui	$2,%hi(memory_region_gfx4)
	lw	$3,%lo(memory_region_gfx4)($2)
	lw	$2,52($fp)
	sll	$2,$2,8
	addu	$2,$3,$2
	sw	$2,88($fp)
	lw	$2,112($fp)
	sh	$2,72($fp)
	j	$L73
	nop

$L83:
	lui	$2,%hi(sprite_list)
	addiu	$2,$2,%lo(sprite_list)
	sw	$2,76($fp)
	lhu	$2,72($fp)
	move	$4,$2
	lw	$5,40($fp)
	lw	$6,48($fp)
	jal	sprite_on_scanline
	nop

	beq	$2,$0,$L74
	nop

	lw	$2,40($fp)
	andi	$2,$2,0xffff
	lhu	$3,72($fp)
	subu	$2,$3,$2
	andi	$2,$2,0xffff
	andi	$2,$2,0x1ff
	sh	$2,92($fp)
	lhu	$2,92($fp)
	andi	$2,$2,0xff
	sh	$2,80($fp)
	lhu	$2,92($fp)
	andi	$2,$2,0x100
	sh	$2,82($fp)
	lhu	$2,82($fp)
	beq	$2,$0,$L75
	nop

	lhu	$2,80($fp)
	xori	$2,$2,0xff
	sh	$2,80($fp)
$L75:
	lbu	$2,64($fp)
	beq	$2,$0,$L76
	nop

	lhu	$3,80($fp)
	lw	$2,52($fp)
	addiu	$2,$2,1
	sll	$2,$2,1
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	sh	$2,80($fp)
	lhu	$3,80($fp)
	lw	$2,52($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L76
	nop

	lw	$2,52($fp)
	andi	$2,$2,0xffff
	addiu	$2,$2,1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$3,$2,0xffff
	lhu	$2,80($fp)
	subu	$2,$3,$2
	andi	$2,$2,0xffff
	addiu	$2,$2,-1
	sh	$2,80($fp)
	lhu	$2,82($fp)
	sltu	$2,$2,1
	sh	$2,82($fp)
$L76:
	lhu	$2,80($fp)
	lw	$3,88($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,94($fp)
	lbu	$2,94($fp)
	andi	$2,$2,0xf
	sb	$2,74($fp)
	lbu	$2,94($fp)
	srl	$2,$2,4
	sb	$2,75($fp)
	lhu	$2,82($fp)
	beq	$2,$0,$L77
	nop

	lbu	$2,74($fp)
	xori	$2,$2,0xf
	sb	$2,74($fp)
	lbu	$2,75($fp)
	xori	$2,$2,0x1f
	sb	$2,75($fp)
$L77:
	lbu	$2,75($fp)
	sll	$2,$2,1
	sb	$2,95($fp)
	sw	$0,44($fp)
	j	$L78
	nop

$L82:
	lw	$2,76($fp)
	lw	$3,4($2)
	lbu	$2,95($fp)
	addiu	$2,$2,1
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	sh	$2,96($fp)
	lw	$2,76($fp)
	lw	$3,4($2)
	lbu	$2,95($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	move	$3,$2
	lhu	$2,96($fp)
	sll	$2,$2,12
	move	$4,$2
	lui	$2,%hi(high_tile_mask)
	lw	$2,%lo(high_tile_mask)($2)
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,68($fp)
	lui	$2,%hi(auto_animation_disabled)
	lbu	$2,%lo(auto_animation_disabled)($2)
	bne	$2,$0,$L79
	nop

	lhu	$2,96($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L80
	nop

	lw	$3,68($fp)
	li	$2,-8			# 0xfffffffffffffff8
	and	$3,$3,$2
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	andi	$2,$2,0x7
	or	$2,$3,$2
	sw	$2,68($fp)
	j	$L79
	nop

$L80:
	lhu	$2,96($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L79
	nop

	lw	$3,68($fp)
	li	$2,-4			# 0xfffffffffffffffc
	and	$3,$3,$2
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	andi	$2,$2,0x3
	or	$2,$3,$2
	sw	$2,68($fp)
$L79:
	lui	$2,%hi(sprite_gfx_code_mask)
	lw	$2,%lo(sprite_gfx_code_mask)($2)
	lw	$3,68($fp)
	and	$2,$3,$2
	sw	$2,68($fp)
	lui	$2,%hi(spr_pen_usage)
	lw	$3,%lo(spr_pen_usage)($2)
	lw	$2,68($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L81
	nop

	lw	$2,76($fp)
	lh	$2,0($2)
	move	$4,$2
	lhu	$5,72($fp)
	lw	$2,76($fp)
	lhu	$2,2($2)
	move	$3,$2
	lbu	$2,74($fp)
	lhu	$7,96($fp)
	lui	$6,%hi(spr_pen_usage)
	lw	$8,%lo(spr_pen_usage)($6)
	lw	$6,68($fp)
	addu	$6,$8,$6
	lbu	$6,0($6)
	lw	$8,68($fp)
	sw	$8,16($sp)
	sw	$7,20($sp)
	sw	$6,24($sp)
	move	$6,$3
	move	$7,$2
	jal	blit_draw_spr_line
	nop

$L81:
	lw	$2,76($fp)
	addiu	$2,$2,8
	sw	$2,76($fp)
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
$L78:
	lhu	$3,62($fp)
	lw	$2,44($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L82
	nop

$L74:
	lhu	$2,72($fp)
	addiu	$2,$2,1
	sh	$2,72($fp)
$L73:
	lhu	$3,72($fp)
	lw	$2,116($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L83
	nop

	sh	$0,62($fp)
	sw	$0,48($fp)
$L72:
	lui	$2,%hi(max_sprite_number)
	lhu	$2,%lo(max_sprite_number)($2)
	lhu	$3,60($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L88
	nop

	move	$sp,$fp
	lw	$31,108($sp)
	lw	$fp,104($sp)
	addiu	$sp,$sp,112
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	draw_sprites_software
	.size	draw_sprites_software, .-draw_sprites_software
	.align	2
	.globl	neogeo_video_init
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_video_init
	.type	neogeo_video_init, @function
neogeo_video_init:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	sw	$0,28($fp)
	j	$L90
	nop

$L95:
	sw	$0,32($fp)
	j	$L91
	nop

$L94:
	sw	$0,36($fp)
	j	$L92
	nop

$L93:
	lw	$2,28($fp)
	sll	$3,$2,3
	lw	$2,28($fp)
	sra	$2,$2,2
	or	$2,$3,$2
	sw	$2,44($fp)
	lw	$2,32($fp)
	sll	$3,$2,3
	lw	$2,32($fp)
	sra	$2,$2,2
	or	$2,$3,$2
	sw	$2,48($fp)
	lw	$2,36($fp)
	sll	$3,$2,3
	lw	$2,36($fp)
	sra	$2,$2,2
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,28($fp)
	andi	$2,$2,0x1
	sll	$2,$2,14
	seh	$3,$2
	lw	$2,28($fp)
	andi	$2,$2,0x1e
	sll	$2,$2,7
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lw	$2,32($fp)
	andi	$2,$2,0x1
	sll	$2,$2,13
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lw	$2,32($fp)
	andi	$2,$2,0x1e
	sll	$2,$2,3
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lw	$2,36($fp)
	andi	$2,$2,0x1
	sll	$2,$2,12
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lw	$2,36($fp)
	andi	$2,$2,0x1e
	sra	$2,$2,1
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	sh	$2,56($fp)
	lhu	$4,56($fp)
	lw	$2,52($fp)
	andi	$2,$2,0xf8
	sll	$2,$2,7
	seh	$3,$2
	lw	$2,48($fp)
	andi	$2,$2,0xf8
	sll	$2,$2,2
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lw	$2,44($fp)
	andi	$2,$2,0xf8
	sra	$2,$2,3
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(video_clut16)
	sll	$4,$4,1
	addiu	$2,$2,%lo(video_clut16)
	addu	$2,$4,$2
	sh	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L92:
	lw	$2,36($fp)
	slt	$2,$2,32
	bne	$2,$0,$L93
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L91:
	lw	$2,32($fp)
	slt	$2,$2,32
	bne	$2,$0,$L94
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L90:
	lw	$2,28($fp)
	slt	$2,$2,32
	bne	$2,$0,$L95
	nop

	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	srl	$2,$2,7
	sw	$2,60($fp)
	lw	$3,60($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L96
	nop

	li	$2,65536			# 0x10000
	j	$L97
	nop

$L96:
	move	$2,$0
$L97:
	lui	$3,%hi(high_tile_mask)
	sw	$2,%lo(high_tile_mask)($3)
	lw	$3,60($fp)
	li	$2,131072			# 0x20000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L98
	nop

	li	$2,131072			# 0x20000
	j	$L99
	nop

$L98:
	move	$2,$0
$L99:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lw	$3,60($fp)
	li	$2,262144			# 0x40000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L100
	nop

	li	$2,262144			# 0x40000
	j	$L101
	nop

$L100:
	move	$2,$0
$L101:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lw	$3,60($fp)
	li	$2,393216			# 0x60000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L102
	nop

	li	$2,393216			# 0x60000
	j	$L103
	nop

$L102:
	move	$2,$0
$L103:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lw	$3,60($fp)
	li	$2,524288			# 0x80000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L104
	nop

	li	$2,524288			# 0x80000
	j	$L105
	nop

$L104:
	move	$2,$0
$L105:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lw	$3,60($fp)
	li	$2,655360			# 0xa0000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L106
	nop

	li	$2,655360			# 0xa0000
	j	$L107
	nop

$L106:
	move	$2,$0
$L107:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lw	$3,60($fp)
	li	$2,786432			# 0xc0000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L108
	nop

	li	$2,786432			# 0xc0000
	j	$L109
	nop

$L108:
	move	$2,$0
$L109:
	lui	$3,%hi(high_tile_mask)
	lw	$3,%lo(high_tile_mask)($3)
	or	$3,$2,$3
	lui	$2,%hi(high_tile_mask)
	sw	$3,%lo(high_tile_mask)($2)
	lui	$2,%hi(sprite_gfx_code_mask)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(sprite_gfx_code_mask)($2)
	li	$2,-2147483648			# 0xffffffff80000000
	sw	$2,40($fp)
	j	$L110
	nop

$L113:
	lw	$2,60($fp)
	addiu	$3,$2,-1
	lw	$2,40($fp)
	and	$2,$3,$2
	bne	$2,$0,$L116
	nop

$L111:
	lui	$2,%hi(sprite_gfx_code_mask)
	lw	$2,%lo(sprite_gfx_code_mask)($2)
	srl	$3,$2,1
	lui	$2,%hi(sprite_gfx_code_mask)
	sw	$3,%lo(sprite_gfx_code_mask)($2)
	lw	$2,40($fp)
	srl	$2,$2,1
	sw	$2,40($fp)
$L110:
	lw	$2,40($fp)
	bne	$2,$0,$L113
	nop

	j	$L112
	nop

$L116:
	nop
$L112:
	lui	$2,%hi(memory_region_user3)
	lw	$3,%lo(memory_region_user3)($2)
	lui	$2,%hi(skip_fullmode0)
	sw	$3,%lo(skip_fullmode0)($2)
	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	addiu	$3,$2,16384
	lui	$2,%hi(tile_fullmode0)
	sw	$3,%lo(tile_fullmode0)($2)
	lui	$2,%hi(memory_region_user3)
	lw	$3,%lo(memory_region_user3)($2)
	li	$2,32768			# 0x8000
	addu	$3,$3,$2
	lui	$2,%hi(skip_fullmode1)
	sw	$3,%lo(skip_fullmode1)($2)
	lui	$2,%hi(memory_region_user3)
	lw	$3,%lo(memory_region_user3)($2)
	li	$2,49152			# 0xc000
	addu	$3,$3,$2
	lui	$2,%hi(tile_fullmode1)
	sw	$3,%lo(tile_fullmode1)($2)
	lui	$2,%hi(neogeo_videoram)
	addiu	$4,$2,%lo(neogeo_videoram)
	move	$5,$0
	li	$6,131072			# 0x20000
	jal	memset
	nop

	lui	$2,%hi(palettes)
	addiu	$4,$2,%lo(palettes)
	move	$5,$0
	li	$6,16384			# 0x4000
	jal	memset
	nop

	lui	$2,%hi(video_palettebank)
	addiu	$4,$2,%lo(video_palettebank)
	move	$5,$0
	li	$6,16384			# 0x4000
	jal	memset
	nop

	sw	$0,24($fp)
	j	$L114
	nop

$L115:
	lui	$2,%hi(video_palettebank)
	lw	$3,24($fp)
	sll	$3,$3,1
	addiu	$2,$2,%lo(video_palettebank)
	addu	$2,$3,$2
	li	$3,-32768			# 0xffffffffffff8000
	sh	$3,0($2)
	lui	$2,%hi(video_palettebank)
	lw	$3,24($fp)
	addiu	$3,$3,4096
	sll	$3,$3,1
	addiu	$2,$2,%lo(video_palettebank)
	addu	$2,$3,$2
	li	$3,-32768			# 0xffffffffffff8000
	sh	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,16
	sw	$2,24($fp)
$L114:
	lw	$2,24($fp)
	slt	$2,$2,4096
	bne	$2,$0,$L115
	nop

	jal	neogeo_video_reset
	nop

	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_video_init
	.size	neogeo_video_init, .-neogeo_video_init
	.align	2
	.globl	neogeo_video_exit
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_video_exit
	.type	neogeo_video_exit, @function
neogeo_video_exit:
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
	.end	neogeo_video_exit
	.size	neogeo_video_exit, .-neogeo_video_exit
	.align	2
	.globl	neogeo_video_reset
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_video_reset
	.type	neogeo_video_reset, @function
neogeo_video_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(xoffset)
	sh	$0,%lo(xoffset)($2)
	lui	$2,%hi(video_palettebank)
	addiu	$3,$2,%lo(video_palettebank)
	lui	$2,%hi(video_palette)
	sw	$3,%lo(video_palette)($2)
	lui	$2,%hi(palette_bank)
	sb	$0,%lo(palette_bank)($2)
	lui	$2,%hi(videoram_read_buffer)
	sh	$0,%lo(videoram_read_buffer)($2)
	lui	$2,%hi(videoram_modulo)
	sh	$0,%lo(videoram_modulo)($2)
	lui	$2,%hi(videoram_offset)
	sh	$0,%lo(videoram_offset)($2)
	lui	$2,%hi(next_update_first_line)
	li	$3,16			# 0x10
	sw	$3,%lo(next_update_first_line)($2)
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,13
	bne	$2,$0,$L119
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,24
	beq	$2,$0,$L119
	nop

	lui	$2,%hi(max_sprite_number)
	li	$3,32			# 0x20
	sh	$3,%lo(max_sprite_number)($2)
	j	$L120
	nop

$L119:
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,11			# 0xb
	beq	$3,$2,$L121
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,12			# 0xc
	beq	$3,$2,$L121
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,24			# 0x18
	bne	$3,$2,$L122
	nop

$L121:
	lui	$2,%hi(max_sprite_number)
	li	$3,381			# 0x17d
	sh	$3,%lo(max_sprite_number)($2)
	j	$L120
	nop

$L122:
	lui	$2,%hi(max_sprite_number)
	sh	$0,%lo(max_sprite_number)($2)
$L120:
	lui	$2,%hi(draw_fixed_layer_func)
	lui	$3,%hi(draw_fixed_layer_type0)
	addiu	$3,$3,%lo(draw_fixed_layer_type0)
	sw	$3,%lo(draw_fixed_layer_func)($2)
	lui	$2,%hi(neogeo_fix_bank_type)
	lw	$2,%lo(neogeo_fix_bank_type)($2)
	li	$3,1			# 0x1
	beq	$2,$3,$L124
	nop

	li	$3,2			# 0x2
	beq	$2,$3,$L125
	nop

	j	$L130
	nop

$L124:
	lui	$2,%hi(draw_fixed_layer_func)
	addiu	$2,$2,%lo(draw_fixed_layer_func)
	lui	$3,%hi(draw_fixed_layer_type1)
	addiu	$3,$3,%lo(draw_fixed_layer_type1)
	sw	$3,4($2)
	j	$L126
	nop

$L125:
	lui	$2,%hi(draw_fixed_layer_func)
	addiu	$2,$2,%lo(draw_fixed_layer_func)
	lui	$3,%hi(draw_fixed_layer_type2)
	addiu	$3,$3,%lo(draw_fixed_layer_type2)
	sw	$3,4($2)
	j	$L126
	nop

$L130:
	lui	$2,%hi(draw_fixed_layer_func)
	addiu	$2,$2,%lo(draw_fixed_layer_func)
	lui	$3,%hi(draw_fixed_layer_type0)
	addiu	$3,$3,%lo(draw_fixed_layer_type0)
	sw	$3,4($2)
	nop
$L126:
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,11			# 0xb
	beq	$3,$2,$L127
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,12			# 0xc
	beq	$3,$2,$L127
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,24			# 0x18
	bne	$3,$2,$L128
	nop

$L127:
	li	$4,1			# 0x1
	jal	neogeo_set_fixed_layer_source
	nop

	j	$L129
	nop

$L128:
	move	$4,$0
	jal	neogeo_set_fixed_layer_source
	nop

$L129:
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$3,8($2)
	lui	$2,%hi(spr_pen_usage)
	sw	$3,%lo(spr_pen_usage)($2)
	jal	blit_reset
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_video_reset
	.size	neogeo_video_reset, .-neogeo_video_reset
	.align	2
	.globl	neogeo_set_fixed_layer_source
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_fixed_layer_source
	.type	neogeo_set_fixed_layer_source, @function
neogeo_set_fixed_layer_source:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,8($fp)
	lui	$2,%hi(fix_bank)
	lbu	$3,8($fp)
	sb	$3,%lo(fix_bank)($2)
	lbu	$3,8($fp)
	lui	$2,%hi(gfx_pen_usage)
	sll	$3,$3,2
	addiu	$2,$2,%lo(gfx_pen_usage)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(fix_usage)
	sw	$3,%lo(fix_usage)($2)
	lbu	$2,8($fp)
	beq	$2,$0,$L132
	nop

	lui	$2,%hi(memory_region_gfx2)
	lw	$2,%lo(memory_region_gfx2)($2)
	j	$L133
	nop

$L132:
	lui	$2,%hi(memory_region_gfx1)
	lw	$2,%lo(memory_region_gfx1)($2)
$L133:
	lui	$3,%hi(fix_memory)
	sw	$2,%lo(fix_memory)($3)
	lbu	$3,8($fp)
	lui	$2,%hi(draw_fixed_layer_func)
	sll	$3,$3,2
	addiu	$2,$2,%lo(draw_fixed_layer_func)
	addu	$2,$3,$2
	lw	$3,0($2)
	lui	$2,%hi(draw_fixed_layer)
	sw	$3,%lo(draw_fixed_layer)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_set_fixed_layer_source
	.size	neogeo_set_fixed_layer_source, .-neogeo_set_fixed_layer_source
	.align	2
	.globl	neogeo_screenrefresh
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_screenrefresh
	.type	neogeo_screenrefresh, @function
neogeo_screenrefresh:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	slt	$2,$2,240
	beq	$2,$0,$L135
	nop

	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	move	$4,$2
	li	$5,239			# 0xef
	jal	blit_start
	nop

	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	move	$4,$2
	li	$5,239			# 0xef
	jal	draw_sprites_software
	nop

$L135:
	lui	$2,%hi(draw_fixed_layer)
	lw	$2,%lo(draw_fixed_layer)($2)
	move	$25,$2
	jalr	$25
	nop

	jal	blit_finish
	nop

	lui	$2,%hi(next_update_first_line)
	li	$3,16			# 0x10
	sw	$3,%lo(next_update_first_line)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_screenrefresh
	.size	neogeo_screenrefresh, .-neogeo_screenrefresh
	.align	2
	.globl	neogeo_partial_screenrefresh
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_partial_screenrefresh
	.type	neogeo_partial_screenrefresh, @function
neogeo_partial_screenrefresh:
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
	lw	$2,32($fp)
	slt	$2,$2,16
	bne	$2,$0,$L136
	nop

	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	lw	$3,32($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L138
	nop

	lw	$2,32($fp)
	slt	$2,$2,240
	bne	$2,$0,$L139
	nop

	li	$2,239			# 0xef
	sw	$2,32($fp)
$L139:
	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	move	$4,$2
	lw	$5,32($fp)
	jal	blit_start
	nop

	lui	$2,%hi(next_update_first_line)
	lw	$2,%lo(next_update_first_line)($2)
	move	$4,$2
	lw	$5,32($fp)
	jal	draw_sprites_software
	nop

$L138:
	lw	$2,32($fp)
	addiu	$3,$2,1
	lui	$2,%hi(next_update_first_line)
	sw	$3,%lo(next_update_first_line)($2)
$L136:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_partial_screenrefresh
	.size	neogeo_partial_screenrefresh, .-neogeo_partial_screenrefresh
	.align	2
	.globl	state_save_video
	.set	nomips16
	.set	nomicromips
	.ent	state_save_video
	.type	state_save_video, @function
state_save_video:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_videoram)
	addiu	$5,$2,%lo(neogeo_videoram)
	li	$6,131072			# 0x20000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	li	$2,131072			# 0x20000
	addu	$3,$3,$2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(palettes)
	addiu	$5,$2,%lo(palettes)
	li	$6,8192			# 0x2000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,8192
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(palettes+8192)
	addiu	$2,$2,%lo(palettes+8192)
	move	$4,$3
	move	$5,$2
	li	$6,8192			# 0x2000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,8192
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(videoram_read_buffer)
	addiu	$5,$2,%lo(videoram_read_buffer)
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(videoram_offset)
	addiu	$5,$2,%lo(videoram_offset)
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(videoram_modulo)
	addiu	$5,$2,%lo(videoram_modulo)
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(palette_bank)
	addiu	$5,$2,%lo(palette_bank)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(fix_bank)
	addiu	$5,$2,%lo(fix_bank)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_save_video
	.size	state_save_video, .-state_save_video
	.align	2
	.globl	state_load_video
	.set	nomips16
	.set	nomicromips
	.ent	state_load_video
	.type	state_load_video, @function
state_load_video:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	lui	$2,%hi(neogeo_videoram)
	addiu	$4,$2,%lo(neogeo_videoram)
	li	$5,1			# 0x1
	li	$6,131072			# 0x20000
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(palettes)
	addiu	$4,$2,%lo(palettes)
	li	$5,1			# 0x1
	li	$6,8192			# 0x2000
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(palettes+8192)
	addiu	$2,$2,%lo(palettes+8192)
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,8192			# 0x2000
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(videoram_read_buffer)
	addiu	$4,$2,%lo(videoram_read_buffer)
	li	$5,1			# 0x1
	li	$6,2			# 0x2
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(videoram_offset)
	addiu	$4,$2,%lo(videoram_offset)
	li	$5,1			# 0x1
	li	$6,2			# 0x2
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(videoram_modulo)
	addiu	$4,$2,%lo(videoram_modulo)
	li	$5,1			# 0x1
	li	$6,2			# 0x2
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(palette_bank)
	addiu	$4,$2,%lo(palette_bank)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(fix_bank)
	addiu	$4,$2,%lo(fix_bank)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,40($fp)
	jal	fread
	nop

	sw	$0,24($fp)
	j	$L142
	nop

$L144:
	lw	$2,24($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L143
	nop

	lui	$2,%hi(palettes)
	lw	$3,24($fp)
	sll	$3,$3,1
	addiu	$2,$2,%lo(palettes)
	addu	$2,$3,$2
	lhu	$2,0($2)
	andi	$3,$2,0x7fff
	lui	$2,%hi(video_clut16)
	sll	$3,$3,1
	addiu	$2,$2,%lo(video_clut16)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lui	$2,%hi(video_palettebank)
	lw	$4,24($fp)
	sll	$4,$4,1
	addiu	$2,$2,%lo(video_palettebank)
	addu	$2,$4,$2
	sh	$3,0($2)
	lui	$2,%hi(palettes)
	lw	$3,24($fp)
	addiu	$3,$3,4096
	sll	$3,$3,1
	addiu	$2,$2,%lo(palettes)
	addu	$2,$3,$2
	lhu	$2,0($2)
	andi	$3,$2,0x7fff
	lui	$2,%hi(video_clut16)
	sll	$3,$3,1
	addiu	$2,$2,%lo(video_clut16)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lui	$2,%hi(video_palettebank)
	lw	$4,24($fp)
	addiu	$4,$4,4096
	sll	$4,$4,1
	addiu	$2,$2,%lo(video_palettebank)
	addu	$2,$4,$2
	sh	$3,0($2)
$L143:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L142:
	lw	$2,24($fp)
	slt	$2,$2,4096
	bne	$2,$0,$L144
	nop

	lui	$2,%hi(video_palettebank)
	addiu	$3,$2,%lo(video_palettebank)
	lui	$2,%hi(palette_bank)
	lbu	$2,%lo(palette_bank)($2)
	sll	$2,$2,13
	addu	$3,$3,$2
	lui	$2,%hi(video_palette)
	sw	$3,%lo(video_palette)($2)
	lui	$2,%hi(fix_bank)
	lbu	$2,%lo(fix_bank)($2)
	move	$4,$2
	jal	neogeo_set_fixed_layer_source
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_video
	.size	state_load_video, .-state_load_video
	.ident	"GCC: (GNU) 4.5.2"
