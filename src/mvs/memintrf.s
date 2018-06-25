	.file	1 "memintrf.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	memory_region_cpu1
	.section	.bss,"aw",@nobits
	.align	2
	.type	memory_region_cpu1, @object
	.size	memory_region_cpu1, 4
memory_region_cpu1:
	.space	4
	.globl	memory_region_cpu2
	.align	2
	.type	memory_region_cpu2, @object
	.size	memory_region_cpu2, 4
memory_region_cpu2:
	.space	4
	.globl	memory_region_gfx1
	.align	2
	.type	memory_region_gfx1, @object
	.size	memory_region_gfx1, 4
memory_region_gfx1:
	.space	4
	.globl	memory_region_gfx2
	.align	2
	.type	memory_region_gfx2, @object
	.size	memory_region_gfx2, 4
memory_region_gfx2:
	.space	4
	.globl	memory_region_gfx3
	.align	2
	.type	memory_region_gfx3, @object
	.size	memory_region_gfx3, 4
memory_region_gfx3:
	.space	4
	.globl	memory_region_gfx4
	.align	2
	.type	memory_region_gfx4, @object
	.size	memory_region_gfx4, 4
memory_region_gfx4:
	.space	4
	.globl	memory_region_sound1
	.align	2
	.type	memory_region_sound1, @object
	.size	memory_region_sound1, 4
memory_region_sound1:
	.space	4
	.globl	memory_region_sound2
	.align	2
	.type	memory_region_sound2, @object
	.size	memory_region_sound2, 4
memory_region_sound2:
	.space	4
	.globl	memory_region_user1
	.align	2
	.type	memory_region_user1, @object
	.size	memory_region_user1, 4
memory_region_user1:
	.space	4
	.globl	memory_region_user3
	.align	2
	.type	memory_region_user3, @object
	.size	memory_region_user3, 4
memory_region_user3:
	.space	4

	.comm	memory_length_cpu1,4,4

	.comm	memory_length_cpu2,4,4

	.comm	memory_length_gfx1,4,4

	.comm	memory_length_gfx2,4,4

	.comm	memory_length_gfx3,4,4

	.comm	memory_length_gfx4,4,4

	.comm	memory_length_sound1,4,4

	.comm	memory_length_sound2,4,4

	.comm	memory_length_user1,4,4

	.comm	memory_length_user3,4,4

	.comm	neogeo_memcard,2048,4

	.comm	neogeo_ram,65536,4

	.comm	neogeo_sram16,65536,4

	.comm	neogeo_machine_mode,4,4

	.comm	disable_sound,4,4

	.comm	use_parent_crom,4,4

	.comm	use_parent_srom,4,4

	.comm	use_parent_vrom,4,4
	.local	cpu1rom
	.comm	cpu1rom,448,4
	.local	cpu2rom
	.comm	cpu2rom,448,4
	.local	gfx2rom
	.comm	gfx2rom,224,4
	.local	gfx3rom
	.comm	gfx3rom,896,4
	.local	snd1rom
	.comm	snd1rom,448,4
	.local	snd2rom
	.comm	snd2rom,448,4
	.local	usr1rom
	.comm	usr1rom,56,4
	.local	num_cpu1rom
	.comm	num_cpu1rom,4,4
	.local	num_cpu2rom
	.comm	num_cpu2rom,4,4
	.local	num_gfx2rom
	.comm	num_gfx2rom,4,4
	.local	num_gfx3rom
	.comm	num_gfx3rom,4,4
	.local	num_snd1rom
	.comm	num_snd1rom,4,4
	.local	num_snd2rom
	.comm	num_snd2rom,4,4
	.local	num_usr1rom
	.comm	num_usr1rom,4,4
	.local	encrypt_cpu1
	.comm	encrypt_cpu1,4,4
	.local	encrypt_cpu2
	.comm	encrypt_cpu2,4,4
	.local	encrypt_snd1
	.comm	encrypt_snd1,4,4
	.local	encrypt_gfx2
	.comm	encrypt_gfx2,4,4
	.local	encrypt_gfx3
	.comm	encrypt_gfx3,4,4
	.local	encrypt_usr1
	.comm	encrypt_usr1,4,4
	.local	bios_amask
	.comm	bios_amask,4,4
	.local	neogeo_sram
	.comm	neogeo_sram,4,4
	.local	neogeo_protection_r
	.comm	neogeo_protection_r,4,4
	.local	neogeo_protection_w
	.comm	neogeo_protection_w,4,4
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_decode_spr
	.type	neogeo_decode_spr, @function
neogeo_decode_spr:
	.frame	$fp,200,$31		# vars= 168, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-200
	sw	$31,196($sp)
	sw	$fp,192($sp)
	move	$fp,$sp
	sw	$4,200($fp)
	sw	$5,204($fp)
	sw	$6,208($fp)
	lw	$2,204($fp)
	srl	$2,$2,7
	sw	$2,48($fp)
	sw	$0,24($fp)
	j	$L2
	nop

$L15:
	sw	$0,40($fp)
	lw	$2,24($fp)
	sll	$2,$2,7
	lw	$3,200($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	addiu	$2,$fp,60
	move	$4,$2
	lw	$5,28($fp)
	li	$6,128			# 0x80
	jal	memcpy
	nop

	sw	$0,36($fp)
	j	$L3
	nop

$L10:
	sw	$0,44($fp)
	sw	$0,32($fp)
	j	$L4
	nop

$L6:
	lw	$2,36($fp)
	addiu	$2,$2,16
	sll	$2,$2,2
	addiu	$2,$2,3
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,3
	sw	$2,52($fp)
	lw	$2,36($fp)
	addiu	$2,$2,16
	sll	$2,$2,2
	addiu	$2,$2,1
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,2
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,36($fp)
	addiu	$2,$2,16
	sll	$2,$2,2
	addiu	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,1
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,36($fp)
	addiu	$2,$2,16
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,52($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L5
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L5:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	sll	$2,$3,$2
	lw	$3,44($fp)
	or	$2,$3,$2
	sw	$2,44($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L4:
	lw	$2,32($fp)
	slt	$2,$2,8
	bne	$2,$0,$L6
	nop

	lw	$2,44($fp)
	andi	$3,$2,0xf
	lw	$2,44($fp)
	andi	$2,$2,0xf0
	sll	$2,$2,4
	or	$3,$3,$2
	lw	$2,44($fp)
	andi	$2,$2,0xf00
	sll	$2,$2,8
	or	$3,$3,$2
	lw	$2,44($fp)
	andi	$2,$2,0xf000
	sll	$2,$2,12
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,983040			# 0xf0000
	and	$2,$4,$2
	srl	$2,$2,12
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$4,$2
	srl	$2,$2,8
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$4,$2
	srl	$2,$2,4
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,56($fp)
	lw	$2,56($fp)
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	sw	$0,44($fp)
	sw	$0,32($fp)
	j	$L7
	nop

$L9:
	lw	$2,36($fp)
	sll	$2,$2,2
	addiu	$2,$2,3
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,3
	sw	$2,52($fp)
	lw	$2,36($fp)
	sll	$2,$2,2
	addiu	$2,$2,1
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,2
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,36($fp)
	sll	$2,$2,2
	addiu	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sll	$2,$2,1
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,36($fp)
	sll	$2,$2,2
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,36($2)
	move	$3,$2
	lw	$2,32($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	lw	$3,52($fp)
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,52($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L8
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L8:
	lw	$2,32($fp)
	sll	$2,$2,2
	lw	$3,52($fp)
	sll	$2,$3,$2
	lw	$3,44($fp)
	or	$2,$3,$2
	sw	$2,44($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L7:
	lw	$2,32($fp)
	slt	$2,$2,8
	bne	$2,$0,$L9
	nop

	lw	$2,44($fp)
	andi	$3,$2,0xf
	lw	$2,44($fp)
	andi	$2,$2,0xf0
	sll	$2,$2,4
	or	$3,$3,$2
	lw	$2,44($fp)
	andi	$2,$2,0xf00
	sll	$2,$2,8
	or	$3,$3,$2
	lw	$2,44($fp)
	andi	$2,$2,0xf000
	sll	$2,$2,12
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,983040			# 0xf0000
	and	$2,$4,$2
	srl	$2,$2,12
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$4,$2
	srl	$2,$2,8
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$4,$2
	srl	$2,$2,4
	or	$3,$3,$2
	lw	$4,44($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,56($fp)
	lw	$2,56($fp)
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,8
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,16
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,56($fp)
	srl	$2,$2,24
	andi	$3,$2,0x00ff
	lw	$2,28($fp)
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L3:
	lw	$2,36($fp)
	slt	$2,$2,16
	bne	$2,$0,$L10
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L11
	nop

	lw	$3,40($fp)
	li	$2,256			# 0x100
	bne	$3,$2,$L12
	nop

	li	$2,2			# 0x2
	j	$L13
	nop

$L12:
	li	$2,1			# 0x1
$L13:
	lw	$3,208($fp)
	sb	$2,0($3)
	j	$L14
	nop

$L11:
	lw	$2,208($fp)
	sb	$0,0($2)
$L14:
	lw	$2,208($fp)
	addiu	$2,$2,1
	sw	$2,208($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$3,24($fp)
	lw	$2,48($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L15
	nop

	move	$sp,$fp
	lw	$31,196($sp)
	lw	$fp,192($sp)
	addiu	$sp,$sp,200
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_decode_spr
	.size	neogeo_decode_spr, .-neogeo_decode_spr
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_decode_fix
	.type	neogeo_decode_fix, @function
neogeo_decode_fix:
	.frame	$fp,96,$31		# vars= 64, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	move	$fp,$sp
	sw	$4,96($fp)
	sw	$5,100($fp)
	sw	$6,104($fp)
	lw	$2,96($fp)
	sw	$2,40($fp)
	sw	$0,24($fp)
	j	$L17
	nop

$L32:
	sb	$0,32($fp)
	lw	$3,96($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,56
	move	$4,$3
	move	$5,$2
	li	$6,32			# 0x20
	jal	memcpy
	nop

	lw	$3,96($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	sw	$2,36($fp)
	sw	$0,28($fp)
	j	$L18
	nop

$L27:
	lw	$2,28($fp)
	addiu	$2,$2,16
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,32($2)
	sb	$2,44($fp)
	lw	$2,36($fp)
	lbu	$3,44($fp)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	lbu	$2,44($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L19
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L19:
	lbu	$2,44($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	beq	$2,$0,$L20
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L20:
	lw	$2,28($fp)
	addiu	$2,$2,24
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,32($2)
	sb	$2,44($fp)
	lw	$2,36($fp)
	lbu	$3,44($fp)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	lbu	$2,44($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L21
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L21:
	lbu	$2,44($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	beq	$2,$0,$L22
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L22:
	lw	$2,28($fp)
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,32($2)
	sb	$2,44($fp)
	lw	$2,36($fp)
	lbu	$3,44($fp)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	lbu	$2,44($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L23
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L23:
	lbu	$2,44($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	beq	$2,$0,$L24
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L24:
	lw	$2,28($fp)
	addiu	$2,$2,8
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$2,32($2)
	sb	$2,44($fp)
	lw	$2,36($fp)
	lbu	$3,44($fp)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	lbu	$2,44($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L25
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L25:
	lbu	$2,44($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	beq	$2,$0,$L26
	nop

	lbu	$2,32($fp)
	addiu	$2,$2,1
	sb	$2,32($fp)
$L26:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L18:
	lw	$2,28($fp)
	sltu	$2,$2,8
	bne	$2,$0,$L27
	nop

	lbu	$2,32($fp)
	beq	$2,$0,$L28
	nop

	lbu	$3,32($fp)
	li	$2,64			# 0x40
	bne	$3,$2,$L29
	nop

	li	$2,2			# 0x2
	j	$L30
	nop

$L29:
	li	$2,1			# 0x1
$L30:
	lw	$3,104($fp)
	sb	$2,0($3)
	j	$L31
	nop

$L28:
	lw	$2,104($fp)
	sb	$0,0($2)
$L31:
	lw	$2,104($fp)
	addiu	$2,$2,1
	sw	$2,104($fp)
	lw	$2,24($fp)
	addiu	$2,$2,32
	sw	$2,24($fp)
$L17:
	lw	$3,24($fp)
	lw	$2,100($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L32
	nop

	sw	$0,24($fp)
	j	$L33
	nop

$L34:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,48($fp)
	lw	$2,48($fp)
	andi	$3,$2,0xf
	lw	$2,48($fp)
	andi	$2,$2,0xf0
	sll	$2,$2,4
	or	$3,$3,$2
	lw	$2,48($fp)
	andi	$2,$2,0xf00
	sll	$2,$2,8
	or	$3,$3,$2
	lw	$2,48($fp)
	andi	$2,$2,0xf000
	sll	$2,$2,12
	or	$3,$3,$2
	lw	$4,48($fp)
	li	$2,983040			# 0xf0000
	and	$2,$4,$2
	srl	$2,$2,12
	or	$3,$3,$2
	lw	$4,48($fp)
	li	$2,15728640			# 0xf00000
	and	$2,$4,$2
	srl	$2,$2,8
	or	$3,$3,$2
	lw	$4,48($fp)
	li	$2,251658240			# 0xf000000
	and	$2,$4,$2
	srl	$2,$2,4
	or	$3,$3,$2
	lw	$4,48($fp)
	li	$2,-268435456			# 0xfffffffff0000000
	and	$2,$4,$2
	or	$2,$3,$2
	sw	$2,52($fp)
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,40($fp)
	addu	$2,$3,$2
	lw	$3,52($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L33:
	lw	$2,100($fp)
	srl	$3,$2,2
	lw	$2,24($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L34
	nop

	move	$sp,$fp
	lw	$31,92($sp)
	lw	$fp,88($sp)
	addiu	$sp,$sp,96
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_decode_fix
	.size	neogeo_decode_fix, .-neogeo_decode_fix
	.rdata
	.align	2
$LC0:
	.ascii	"REGION_USER3\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	build_zoom_tables
	.type	build_zoom_tables, @function
build_zoom_tables:
	.frame	$fp,120,$31		# vars= 88, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$fp,112($sp)
	move	$fp,$sp
	li	$4,65536			# 0x10000
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_user3)
	sw	$3,%lo(memory_region_user3)($2)
	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	bne	$2,$0,$L36
	nop

	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	error_memory
	nop

	move	$2,$0
	j	$L37
	nop

$L36:
	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	move	$4,$2
	move	$5,$0
	li	$6,65536			# 0x10000
	jal	memset
	nop

	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	sw	$2,76($fp)
	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	addiu	$2,$2,16384
	sw	$2,80($fp)
	lui	$2,%hi(memory_region_user3)
	lw	$3,%lo(memory_region_user3)($2)
	li	$2,32768			# 0x8000
	addu	$2,$3,$2
	sw	$2,84($fp)
	lui	$2,%hi(memory_region_user3)
	lw	$3,%lo(memory_region_user3)($2)
	li	$2,49152			# 0xc000
	addu	$2,$3,$2
	sw	$2,88($fp)
	sw	$0,24($fp)
	j	$L38
	nop

$L51:
	sw	$0,28($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	lui	$2,%hi(memory_region_gfx4)
	lw	$3,%lo(memory_region_gfx4)($2)
	lw	$2,24($fp)
	sll	$2,$2,8
	addu	$2,$3,$2
	sw	$2,92($fp)
	lw	$2,24($fp)
	sll	$2,$2,6
	lw	$3,76($fp)
	addu	$2,$3,$2
	sw	$2,96($fp)
	lw	$2,24($fp)
	sll	$2,$2,6
	lw	$3,80($fp)
	addu	$2,$3,$2
	sw	$2,100($fp)
	j	$L39
	nop

$L46:
	sw	$0,44($fp)
	lw	$2,36($fp)
	slt	$2,$2,512
	beq	$2,$0,$L40
	nop

	lw	$2,36($fp)
	andi	$2,$2,0xff
	sw	$2,48($fp)
	lw	$2,36($fp)
	andi	$2,$2,0x100
	sw	$2,104($fp)
	lw	$2,104($fp)
	beq	$2,$0,$L41
	nop

	lw	$2,48($fp)
	xori	$2,$2,0xff
	sw	$2,48($fp)
$L41:
	lw	$2,48($fp)
	lw	$3,92($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	sw	$2,44($fp)
	lw	$2,104($fp)
	beq	$2,$0,$L40
	nop

	lw	$2,44($fp)
	xori	$2,$2,0x1f
	sw	$2,44($fp)
$L40:
	lw	$2,36($fp)
	bne	$2,$0,$L42
	nop

	lw	$2,44($fp)
	sw	$2,32($fp)
$L42:
	lw	$3,32($fp)
	lw	$2,44($fp)
	bne	$3,$2,$L43
	nop

	lw	$3,36($fp)
	li	$2,512			# 0x200
	bne	$3,$2,$L44
	nop

$L43:
	lw	$2,28($fp)
	lw	$3,100($fp)
	addu	$2,$3,$2
	lw	$3,32($fp)
	andi	$3,$3,0x00ff
	sll	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,44($fp)
	sw	$2,32($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L44:
	lw	$3,36($fp)
	li	$2,512			# 0x200
	beq	$3,$2,$L45
	nop

	lw	$2,28($fp)
	lw	$3,96($fp)
	addu	$2,$3,$2
	lbu	$3,0($2)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,0($2)
$L45:
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L39:
	lw	$2,36($fp)
	slt	$2,$2,513
	bne	$2,$0,$L46
	nop

	lw	$2,24($fp)
	sll	$2,$2,6
	lw	$3,76($fp)
	addu	$2,$3,$2
	sw	$2,96($fp)
	sw	$0,28($fp)
	j	$L47
	nop

$L50:
	lw	$2,28($fp)
	lw	$3,96($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sltu	$2,$2,17
	beq	$2,$0,$L66
	nop

$L48:
	lw	$2,28($fp)
	lw	$3,96($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L47:
	lw	$2,28($fp)
	slt	$2,$2,15
	bne	$2,$0,$L50
	nop

	j	$L49
	nop

$L66:
	nop
$L49:
	lw	$2,96($fp)
	addiu	$2,$2,63
	lw	$3,24($fp)
	andi	$4,$3,0x00ff
	lw	$3,40($fp)
	andi	$3,$3,0x00ff
	subu	$3,$4,$3
	andi	$3,$3,0x00ff
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L38:
	lw	$2,24($fp)
	slt	$2,$2,256
	bne	$2,$0,$L51
	nop

	sw	$0,24($fp)
	j	$L52
	nop

$L65:
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
	lui	$2,%hi(memory_region_gfx4)
	lw	$3,%lo(memory_region_gfx4)($2)
	lw	$2,24($fp)
	sll	$2,$2,8
	addu	$2,$3,$2
	sw	$2,92($fp)
	lw	$2,24($fp)
	sll	$2,$2,6
	lw	$3,84($fp)
	addu	$2,$3,$2
	sw	$2,96($fp)
	lw	$2,24($fp)
	sll	$2,$2,6
	lw	$3,88($fp)
	addu	$2,$3,$2
	sw	$2,100($fp)
	j	$L53
	nop

$L64:
	sw	$0,64($fp)
	lw	$2,60($fp)
	slt	$2,$2,512
	beq	$2,$0,$L54
	nop

	lw	$2,60($fp)
	andi	$2,$2,0xff
	sw	$2,68($fp)
	lw	$2,60($fp)
	andi	$2,$2,0x100
	sw	$2,72($fp)
	lw	$2,72($fp)
	beq	$2,$0,$L55
	nop

	lw	$2,68($fp)
	xori	$2,$2,0xff
	sw	$2,68($fp)
$L55:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,1
	lw	$3,68($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	sw	$2,68($fp)
	lw	$2,24($fp)
	addiu	$3,$2,1
	lw	$2,68($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L56
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,1
	addiu	$3,$2,-1
	lw	$2,68($fp)
	subu	$2,$3,$2
	sw	$2,68($fp)
	lw	$2,72($fp)
	sltu	$2,$2,1
	sw	$2,72($fp)
$L56:
	lw	$2,68($fp)
	lw	$3,92($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	sw	$2,64($fp)
	lw	$2,72($fp)
	beq	$2,$0,$L54
	nop

	lw	$2,64($fp)
	xori	$2,$2,0x1f
	sw	$2,64($fp)
$L54:
	lw	$2,60($fp)
	bne	$2,$0,$L57
	nop

	lw	$2,64($fp)
	sw	$2,56($fp)
$L57:
	lw	$3,56($fp)
	lw	$2,64($fp)
	bne	$3,$2,$L58
	nop

	lw	$3,60($fp)
	li	$2,512			# 0x200
	bne	$3,$2,$L59
	nop

$L58:
	lw	$2,52($fp)
	lw	$3,100($fp)
	addu	$2,$3,$2
	lw	$3,56($fp)
	andi	$3,$3,0x00ff
	sll	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,64($fp)
	sw	$2,56($fp)
	lw	$2,52($fp)
	beq	$2,$0,$L60
	nop

	lw	$2,64($fp)
	beq	$2,$0,$L61
	nop

	lw	$2,52($fp)
	lw	$3,96($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	beq	$2,$0,$L61
	nop

$L60:
	lw	$2,24($fp)
	bne	$2,$0,$L62
	nop

	lw	$3,52($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L67
	nop

$L62:
	lw	$2,52($fp)
	addiu	$2,$2,1
	sw	$2,52($fp)
$L59:
	lw	$3,60($fp)
	li	$2,512			# 0x200
	beq	$3,$2,$L63
	nop

	lw	$2,52($fp)
	lw	$3,96($fp)
	addu	$2,$3,$2
	lbu	$3,0($2)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,0($2)
$L63:
	lw	$2,60($fp)
	addiu	$2,$2,1
	sw	$2,60($fp)
$L53:
	lw	$2,60($fp)
	slt	$2,$2,513
	bne	$2,$0,$L64
	nop

	j	$L61
	nop

$L67:
	nop
$L61:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L52:
	lw	$2,24($fp)
	slt	$2,$2,256
	bne	$2,$0,$L65
	nop

	li	$2,1			# 0x1
$L37:
	move	$sp,$fp
	lw	$31,116($sp)
	lw	$fp,112($sp)
	addiu	$sp,$sp,120
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	build_zoom_tables
	.size	build_zoom_tables, .-build_zoom_tables
	.rdata
	.align	2
$LC1:
	.ascii	"REGION_CPU1\000"
	.align	2
$LC2:
	.ascii	"LOADING %s\012\000"
	.align	2
$LC3:
	.ascii	"DECRYPTING\000"
	.align	2
$LC4:
	.ascii	"COULD_NOT_ALLOCATE_MEMORY_FOR_DECRYPT_ROM\000"
	.align	2
$LC5:
	.ascii	"+++ neogeo_ngh = 0x%x +++\012\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_cpu1
	.type	load_rom_cpu1, @function
load_rom_cpu1:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_cpu1)
	lw	$2,%lo(memory_length_cpu1)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_cpu1)
	sw	$3,%lo(memory_region_cpu1)($2)
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	bne	$2,$0,$L69
	nop

	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	error_memory
	nop

	move	$2,$0
	j	$L70
	nop

$L69:
	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lui	$2,%hi(memory_length_cpu1)
	lw	$2,%lo(memory_length_cpu1)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L71
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L72
	nop

$L71:
	move	$2,$0
$L72:
	sw	$2,32($fp)
	sw	$0,24($fp)
	j	$L73
	nop

$L77:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$3,$fp,36
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(cpu1rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(cpu1rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,36
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,32($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	bgez	$2,$L74
	nop

	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L75
	nop

	addiu	$2,$fp,36
	move	$4,$2
	jal	error_file
	nop

	j	$L76
	nop

$L75:
	addiu	$2,$fp,36
	move	$4,$2
	jal	error_crc
	nop

$L76:
	move	$2,$0
	j	$L70
	nop

$L74:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,36
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	lui	$4,%hi(cpu1rom)
	addiu	$4,$4,%lo(cpu1rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L73:
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L77
	nop

	lui	$2,%hi(encrypt_cpu1)
	lw	$2,%lo(encrypt_cpu1)($2)
	beq	$2,$0,$L78
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	jal	puts
	nop

	lui	$2,%hi(machine_init_type)
	lw	$2,%lo(machine_init_type)($2)
	sltu	$3,$2,34
	beq	$3,$0,$L79
	nop

	sll	$3,$2,2
	lui	$2,%hi($L96)
	addiu	$2,$2,%lo($L96)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L96:
	.word	$L79
	.word	$L79
	.word	$L80
	.word	$L79
	.word	$L81
	.word	$L79
	.word	$L82
	.word	$L83
	.word	$L84
	.word	$L79
	.word	$L85
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L86
	.word	$L87
	.word	$L88
	.word	$L89
	.word	$L90
	.word	$L79
	.word	$L91
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L79
	.word	$L92
	.word	$L93
	.word	$L94
	.word	$L95
	.text
$L81:
	jal	kof99_decrypt_68k
	nop

	j	$L97
	nop

$L82:
	jal	garou_decrypt_68k
	nop

	j	$L97
	nop

$L83:
	jal	garouh_decrypt_68k
	nop

	j	$L97
	nop

$L84:
	jal	mslug3_decrypt_68k
	nop

	j	$L97
	nop

$L85:
	jal	kof2000_decrypt_68k
	nop

	j	$L97
	nop

$L80:
	jal	kof98_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L86:
	jal	kof2002_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L87:
	jal	mslug5_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L88:
	jal	svc_px_decrypt
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L89:
	jal	samsho5_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L90:
	jal	kof2003_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L91:
	jal	samsh5sp_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L92:
	jal	matrim_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L93:
	jal	mslug5_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L94:
	jal	svc_px_decrypt
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L95:
	jal	kf2k3pcb_decrypt_68k
	nop

	sw	$2,28($fp)
	j	$L97
	nop

$L79:
	sw	$0,28($fp)
$L97:
	lw	$2,28($fp)
	bne	$2,$0,$L78
	nop

	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L70
	nop

$L78:
	li	$4,264			# 0x108
	jal	m68000_read_memory_16
	nop

	move	$3,$2
	lui	$2,%hi(neogeo_ngh)
	sh	$3,%lo(neogeo_ngh)($2)
	lui	$2,%hi($LC5)
	addiu	$3,$2,%lo($LC5)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	li	$2,1			# 0x1
$L70:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_cpu1
	.size	load_rom_cpu1, .-load_rom_cpu1
	.rdata
	.align	2
$LC6:
	.ascii	"REGION_CPU2\000"
	.align	2
$LC7:
	.ascii	"neogeo\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_cpu2
	.type	load_rom_cpu2, @function
load_rom_cpu2:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_cpu2)
	lw	$2,%lo(memory_length_cpu2)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_cpu2)
	sw	$3,%lo(memory_region_cpu2)($2)
	lui	$2,%hi(memory_region_cpu2)
	lw	$2,%lo(memory_region_cpu2)($2)
	bne	$2,$0,$L99
	nop

	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	jal	error_memory
	nop

	move	$2,$0
	j	$L100
	nop

$L99:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	lui	$2,%hi(memory_length_cpu2)
	lw	$2,%lo(memory_length_cpu2)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L101
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L102
	nop

$L101:
	lui	$2,%hi($LC7)
	addiu	$2,$2,%lo($LC7)
$L102:
	sw	$2,28($fp)
	sw	$0,24($fp)
	j	$L103
	nop

$L107:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$2,$3,$2
	addiu	$3,$fp,36
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(cpu2rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(cpu2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,36
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,28($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L104
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L105
	nop

	addiu	$2,$fp,36
	move	$4,$2
	jal	error_file
	nop

	j	$L106
	nop

$L105:
	addiu	$2,$fp,36
	move	$4,$2
	jal	error_crc
	nop

$L106:
	move	$2,$0
	j	$L100
	nop

$L104:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,36
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	lui	$4,%hi(cpu2rom)
	addiu	$4,$4,%lo(cpu2rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L103:
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L107
	nop

	lui	$2,%hi(encrypt_cpu2)
	lw	$2,%lo(encrypt_cpu2)($2)
	beq	$2,$0,$L108
	nop

	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	jal	puts
	nop

	lui	$2,%hi(machine_init_type)
	lw	$2,%lo(machine_init_type)($2)
	addiu	$2,$2,-10
	sltu	$3,$2,25
	beq	$3,$0,$L108
	nop

	li	$3,-806223872			# 0xffffffffcff20000
	ori	$3,$3,0x3f80
	sll	$2,$3,$2
	bgez	$2,$L108
	nop

$L109:
	jal	neogeo_cmc50_m1_decrypt
	nop

	nop
$L108:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	li	$2,65536			# 0x10000
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,65536			# 0x10000
	jal	memcpy
	nop

	li	$2,1			# 0x1
$L100:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_cpu2
	.size	load_rom_cpu2, .-load_rom_cpu2
	.rdata
	.align	2
$LC8:
	.ascii	"REGION_GFX1\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_gfx1
	.type	load_rom_gfx1, @function
load_rom_gfx1:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_gfx1)
	lw	$2,%lo(memory_length_gfx1)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_gfx1)
	sw	$3,%lo(memory_region_gfx1)($2)
	lui	$2,%hi(memory_region_gfx1)
	lw	$2,%lo(memory_region_gfx1)($2)
	bne	$2,$0,$L111
	nop

	lui	$2,%hi($LC8)
	addiu	$4,$2,%lo($LC8)
	jal	error_memory
	nop

	move	$2,$0
	j	$L112
	nop

$L111:
	lui	$2,%hi(memory_region_gfx1)
	lw	$3,%lo(memory_region_gfx1)($2)
	lui	$2,%hi(memory_length_gfx1)
	lw	$2,%lo(memory_length_gfx1)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(sfix_name)
	lw	$2,%lo(sfix_name)($2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$2,%hi(bios_zip)
	lw	$5,%lo(bios_zip)($2)
	lui	$2,%hi(sfix_crc)
	lw	$3,%lo(sfix_crc)($2)
	addiu	$2,$fp,28
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	bgez	$2,$L113
	nop

	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L114
	nop

	addiu	$2,$fp,28
	move	$4,$2
	jal	error_file
	nop

	j	$L115
	nop

$L114:
	addiu	$2,$fp,28
	move	$4,$2
	jal	error_crc
	nop

$L115:
	move	$2,$0
	j	$L112
	nop

$L113:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,28
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_gfx1)
	lw	$3,%lo(memory_region_gfx1)($2)
	lui	$2,%hi(memory_length_gfx1)
	lw	$2,%lo(memory_length_gfx1)($2)
	move	$4,$3
	move	$5,$2
	jal	file_read
	nop

	jal	file_close
	nop

	lui	$2,%hi(memory_region_gfx1)
	lw	$4,%lo(memory_region_gfx1)($2)
	lui	$2,%hi(memory_length_gfx1)
	lw	$3,%lo(memory_length_gfx1)($2)
	lui	$2,%hi(gfx_pen_usage)
	lw	$2,%lo(gfx_pen_usage)($2)
	move	$5,$3
	move	$6,$2
	jal	neogeo_decode_fix
	nop

	li	$2,1			# 0x1
$L112:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_gfx1
	.size	load_rom_gfx1, .-load_rom_gfx1
	.rdata
	.align	2
$LC9:
	.ascii	"REGION_GFX2\000"
	.align	2
$LC10:
	.ascii	"cache/srom\000"
	.align	2
$LC11:
	.ascii	"LOADING_DECRYPTED_GFX2_ROM\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_gfx2
	.type	load_rom_gfx2, @function
load_rom_gfx2:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_gfx2)
	lw	$2,%lo(memory_length_gfx2)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_gfx2)
	sw	$3,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(memory_region_gfx2)
	lw	$2,%lo(memory_region_gfx2)($2)
	bne	$2,$0,$L117
	nop

	lui	$2,%hi($LC9)
	addiu	$4,$2,%lo($LC9)
	jal	error_memory
	nop

	move	$2,$0
	j	$L118
	nop

$L117:
	lui	$2,%hi(memory_region_gfx2)
	lw	$3,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(memory_length_gfx2)
	lw	$2,%lo(memory_length_gfx2)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(encrypt_gfx2)
	lw	$2,%lo(encrypt_gfx2)($2)
	beq	$2,$0,$L119
	nop

	li	$4,2			# 0x2
	jal	cachefile_open
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L120
	nop

	lui	$2,%hi($LC10)
	addiu	$4,$2,%lo($LC10)
	jal	error_file
	nop

	move	$2,$0
	j	$L118
	nop

$L120:
	lui	$2,%hi($LC11)
	addiu	$4,$2,%lo($LC11)
	jal	puts
	nop

	lui	$2,%hi(memory_region_gfx2)
	lw	$3,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(memory_length_gfx2)
	lw	$2,%lo(memory_length_gfx2)($2)
	move	$4,$3
	li	$5,1			# 0x1
	move	$6,$2
	lw	$7,28($fp)
	jal	fread
	nop

	lw	$4,28($fp)
	jal	fclose
	nop

	j	$L121
	nop

$L119:
	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	bne	$2,$0,$L122
	nop

	lui	$2,%hi(bios_zip)
	lw	$2,%lo(bios_zip)($2)
	j	$L123
	nop

$L122:
	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
$L123:
	sw	$2,32($fp)
	sw	$0,24($fp)
	j	$L124
	nop

$L128:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$2,$3,$2
	addiu	$3,$fp,40
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(gfx2rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(gfx2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,40
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,32($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	bgez	$2,$L125
	nop

	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L126
	nop

	addiu	$2,$fp,40
	move	$4,$2
	jal	error_file
	nop

	j	$L127
	nop

$L126:
	addiu	$2,$fp,40
	move	$4,$2
	jal	error_crc
	nop

$L127:
	move	$2,$0
	j	$L118
	nop

$L125:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,40
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_gfx2)
	lw	$3,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	lui	$4,%hi(gfx2rom)
	addiu	$4,$4,%lo(gfx2rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L124:
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L128
	nop

$L121:
	lui	$2,%hi(memory_region_gfx2)
	lw	$4,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(memory_length_gfx2)
	lw	$3,%lo(memory_length_gfx2)($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$2,4($2)
	move	$5,$3
	move	$6,$2
	jal	neogeo_decode_fix
	nop

	li	$2,1			# 0x1
$L118:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_gfx2
	.size	load_rom_gfx2, .-load_rom_gfx2
	.rdata
	.align	2
$LC12:
	.ascii	"COULD_NOT_ALLOCATE_MEMORY_FOR_SPRITE_DATA\000"
	.align	2
$LC13:
	.ascii	"TRY_TO_USE_SPRITE_CACHE\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_gfx3
	.type	load_rom_gfx3, @function
load_rom_gfx3:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(encrypt_gfx3)
	lw	$2,%lo(encrypt_gfx3)($2)
	bne	$2,$0,$L130
	nop

	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_gfx3)
	sw	$3,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_region_gfx3)
	lw	$2,%lo(memory_region_gfx3)($2)
	beq	$2,$0,$L131
	nop

	lui	$2,%hi(memory_region_gfx3)
	lw	$3,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L132
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L133
	nop

$L132:
	move	$2,$0
$L133:
	sw	$2,28($fp)
	sw	$0,24($fp)
	j	$L134
	nop

$L139:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$3,$fp,36
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(gfx3rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(gfx3rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,36
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,28($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L135
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L136
	nop

	addiu	$2,$fp,36
	move	$4,$2
	jal	error_file
	nop

	j	$L137
	nop

$L136:
	addiu	$2,$fp,36
	move	$4,$2
	jal	error_crc
	nop

$L137:
	move	$2,$0
	j	$L138
	nop

$L135:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,36
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_gfx3)
	lw	$3,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	lui	$4,%hi(gfx3rom)
	addiu	$4,$4,%lo(gfx3rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L134:
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L139
	nop

	lui	$2,%hi(memory_region_gfx3)
	lw	$4,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_length_gfx3)
	lw	$3,%lo(memory_length_gfx3)($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$2,8($2)
	move	$5,$3
	move	$6,$2
	jal	neogeo_decode_spr
	nop

	j	$L130
	nop

$L131:
	lui	$2,%hi($LC12)
	addiu	$4,$2,%lo($LC12)
	jal	puts
	nop

	lui	$2,%hi($LC13)
	addiu	$4,$2,%lo($LC13)
	jal	puts
	nop

$L130:
	lui	$2,%hi(memory_region_gfx3)
	lw	$2,%lo(memory_region_gfx3)($2)
	bne	$2,$0,$L140
	nop

	jal	zyh_cache_start
	nop

	bne	$2,$0,$L140
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L138
	nop

$L140:
	li	$2,1			# 0x1
$L138:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_gfx3
	.size	load_rom_gfx3, .-load_rom_gfx3
	.rdata
	.align	2
$LC14:
	.ascii	"REGION_GFX4\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_gfx4
	.type	load_rom_gfx4, @function
load_rom_gfx4:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_gfx4)
	lw	$2,%lo(memory_length_gfx4)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_gfx4)
	sw	$3,%lo(memory_region_gfx4)($2)
	lui	$2,%hi(memory_region_gfx4)
	lw	$2,%lo(memory_region_gfx4)($2)
	bne	$2,$0,$L142
	nop

	lui	$2,%hi($LC14)
	addiu	$4,$2,%lo($LC14)
	jal	error_memory
	nop

	move	$2,$0
	j	$L143
	nop

$L142:
	lui	$2,%hi(memory_region_gfx4)
	lw	$3,%lo(memory_region_gfx4)($2)
	lui	$2,%hi(memory_length_gfx4)
	lw	$2,%lo(memory_length_gfx4)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(lorom_name)
	lw	$2,%lo(lorom_name)($2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$2,%hi(bios_zip)
	lw	$5,%lo(bios_zip)($2)
	lui	$2,%hi(lorom_crc)
	lw	$3,%lo(lorom_crc)($2)
	addiu	$2,$fp,28
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	bgez	$2,$L144
	nop

	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L145
	nop

	addiu	$2,$fp,28
	move	$4,$2
	jal	error_file
	nop

	j	$L146
	nop

$L145:
	addiu	$2,$fp,28
	move	$4,$2
	jal	error_crc
	nop

$L146:
	move	$2,$0
	j	$L143
	nop

$L144:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,28
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_gfx4)
	lw	$3,%lo(memory_region_gfx4)($2)
	lui	$2,%hi(memory_length_gfx4)
	lw	$2,%lo(memory_length_gfx4)($2)
	move	$4,$3
	move	$5,$2
	jal	file_read
	nop

	jal	file_close
	nop

	jal	build_zoom_tables
	nop

$L143:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_gfx4
	.size	load_rom_gfx4, .-load_rom_gfx4
	.rdata
	.align	2
$LC15:
	.ascii	"REGION_SOUND1\000"
	.align	2
$LC16:
	.ascii	"cache/vrom\000"
	.align	2
$LC17:
	.ascii	"LOADING_DECRYPTED_SOUND1_ROM\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_sound1
	.type	load_rom_sound1, @function
load_rom_sound1:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(option_sound_enable)
	lw	$2,%lo(option_sound_enable)($2)
	bne	$2,$0,$L148
	nop

	lui	$2,%hi(memory_length_sound1)
	sw	$0,%lo(memory_length_sound1)($2)
	li	$2,1			# 0x1
	j	$L149
	nop

$L148:
	lui	$2,%hi(memory_length_sound1)
	lw	$2,%lo(memory_length_sound1)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_sound1)
	sw	$3,%lo(memory_region_sound1)($2)
	lui	$2,%hi(memory_region_sound1)
	lw	$2,%lo(memory_region_sound1)($2)
	bne	$2,$0,$L150
	nop

	lui	$2,%hi($LC15)
	addiu	$4,$2,%lo($LC15)
	jal	error_memory
	nop

	move	$2,$0
	j	$L149
	nop

$L150:
	lui	$2,%hi(disable_sound)
	sw	$0,%lo(disable_sound)($2)
	lui	$2,%hi(memory_region_sound1)
	lw	$3,%lo(memory_region_sound1)($2)
	lui	$2,%hi(memory_length_sound1)
	lw	$2,%lo(memory_length_sound1)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(encrypt_snd1)
	lw	$2,%lo(encrypt_snd1)($2)
	beq	$2,$0,$L151
	nop

	li	$4,3			# 0x3
	jal	cachefile_open
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L152
	nop

	lui	$2,%hi($LC16)
	addiu	$4,$2,%lo($LC16)
	jal	error_file
	nop

	move	$2,$0
	j	$L149
	nop

$L152:
	lui	$2,%hi($LC17)
	addiu	$4,$2,%lo($LC17)
	jal	puts
	nop

	lui	$2,%hi(memory_region_sound1)
	lw	$3,%lo(memory_region_sound1)($2)
	lui	$2,%hi(memory_length_sound1)
	lw	$2,%lo(memory_length_sound1)($2)
	move	$4,$3
	li	$5,1			# 0x1
	move	$6,$2
	lw	$7,28($fp)
	jal	fread
	nop

	lw	$4,28($fp)
	jal	fclose
	nop

	j	$L153
	nop

$L151:
	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L154
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L155
	nop

$L154:
	move	$2,$0
$L155:
	sw	$2,32($fp)
	sw	$0,24($fp)
	j	$L156
	nop

$L160:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$2,$3,$2
	addiu	$3,$fp,40
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(snd1rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(snd1rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,40
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,32($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	bgez	$2,$L157
	nop

	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L158
	nop

	addiu	$2,$fp,40
	move	$4,$2
	jal	error_file
	nop

	j	$L159
	nop

$L158:
	addiu	$2,$fp,40
	move	$4,$2
	jal	error_crc
	nop

$L159:
	move	$2,$0
	j	$L149
	nop

$L157:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,40
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_sound1)
	lw	$3,%lo(memory_region_sound1)($2)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	lui	$4,%hi(snd1rom)
	addiu	$4,$4,%lo(snd1rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L156:
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L160
	nop

$L153:
	li	$2,1			# 0x1
$L149:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_sound1
	.size	load_rom_sound1, .-load_rom_sound1
	.rdata
	.align	2
$LC18:
	.ascii	"REGION_SOUND2\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_sound2
	.type	load_rom_sound2, @function
load_rom_sound2:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_length_sound2)
	lw	$2,%lo(memory_length_sound2)($2)
	beq	$2,$0,$L162
	nop

	lui	$2,%hi(option_sound_enable)
	lw	$2,%lo(option_sound_enable)($2)
	beq	$2,$0,$L162
	nop

	lui	$2,%hi(disable_sound)
	lw	$2,%lo(disable_sound)($2)
	beq	$2,$0,$L163
	nop

$L162:
	lui	$2,%hi(memory_length_sound2)
	sw	$0,%lo(memory_length_sound2)($2)
	li	$2,1			# 0x1
	j	$L164
	nop

$L163:
	lui	$2,%hi(memory_length_sound2)
	lw	$2,%lo(memory_length_sound2)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_sound2)
	sw	$3,%lo(memory_region_sound2)($2)
	lui	$2,%hi(memory_region_sound2)
	lw	$2,%lo(memory_region_sound2)($2)
	bne	$2,$0,$L165
	nop

	lui	$2,%hi($LC18)
	addiu	$4,$2,%lo($LC18)
	jal	error_memory
	nop

	move	$2,$0
	j	$L164
	nop

$L165:
	lui	$2,%hi(memory_region_sound2)
	lw	$3,%lo(memory_region_sound2)($2)
	lui	$2,%hi(memory_length_sound2)
	lw	$2,%lo(memory_length_sound2)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L166
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L167
	nop

$L166:
	move	$2,$0
$L167:
	sw	$2,28($fp)
	sw	$0,24($fp)
	j	$L168
	nop

$L172:
	lw	$2,24($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$2,$3,$2
	addiu	$3,$fp,36
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$3,%hi(snd2rom)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(snd2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	lw	$3,12($2)
	addiu	$2,$fp,36
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,28($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L169
	nop

	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L170
	nop

	addiu	$2,$fp,36
	move	$4,$2
	jal	error_file
	nop

	j	$L171
	nop

$L170:
	addiu	$2,$fp,36
	move	$4,$2
	jal	error_crc
	nop

$L171:
	move	$2,$0
	j	$L164
	nop

$L169:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,36
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_sound2)
	lw	$3,%lo(memory_region_sound2)($2)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	lui	$4,%hi(snd2rom)
	addiu	$4,$4,%lo(snd2rom)
	move	$5,$3
	lw	$6,24($fp)
	move	$7,$2
	jal	rom_load
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L168:
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L172
	nop

	li	$2,1			# 0x1
$L164:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_sound2
	.size	load_rom_sound2, .-load_rom_sound2
	.rdata
	.align	2
$LC19:
	.ascii	"REGION_USER1\000"
	.align	2
$LC20:
	.ascii	"LOADING_BIOS %s (%s)\012\000"
	.align	2
$LC21:
	.ascii	"irrmaze\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_user1
	.type	load_rom_user1, @function
load_rom_user1:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	sw	$4,88($fp)
	sw	$0,24($fp)
	lw	$2,88($fp)
	bne	$2,$0,$L174
	nop

	lui	$2,%hi(memory_length_user1)
	lw	$2,%lo(memory_length_user1)($2)
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_user1)
	sw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_region_user1)
	lw	$2,%lo(memory_region_user1)($2)
	bne	$2,$0,$L175
	nop

	lui	$2,%hi($LC19)
	addiu	$4,$2,%lo($LC19)
	jal	error_memory
	nop

	move	$2,$0
	j	$L176
	nop

$L175:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_length_user1)
	lw	$2,%lo(memory_length_user1)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

$L174:
	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	lb	$2,0($2)
	beq	$2,$0,$L177
	nop

	lui	$2,%hi(parent_name)
	addiu	$2,$2,%lo(parent_name)
	j	$L178
	nop

$L177:
	lui	$2,%hi($LC7)
	addiu	$2,$2,%lo($LC7)
$L178:
	sw	$2,32($fp)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	bne	$2,$0,$L179
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	lui	$2,%hi(bios_patch_address)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bios_patch_address)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,24($fp)
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	lui	$2,%hi(bios_name)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bios_name)
	addu	$2,$3,$2
	lw	$2,0($2)
	addiu	$3,$fp,44
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$2,%hi(bios_zip)
	lw	$5,%lo(bios_zip)($2)
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	lui	$2,%hi(bios_crc)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bios_crc)
	addu	$2,$3,$2
	lw	$3,0($2)
	addiu	$2,$fp,44
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	bgez	$2,$L180
	nop

	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L181
	nop

	addiu	$2,$fp,44
	move	$4,$2
	jal	error_file
	nop

	j	$L182
	nop

$L181:
	addiu	$2,$fp,44
	move	$4,$2
	jal	error_crc
	nop

$L182:
	lui	$2,%hi(neogeo_bios)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(neogeo_bios)($2)
	move	$2,$0
	j	$L176
	nop

$L180:
	lw	$2,88($fp)
	bne	$2,$0,$L183
	nop

	lui	$2,%hi($LC20)
	addiu	$4,$2,%lo($LC20)
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	lui	$2,%hi(bios_name)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bios_name)
	addu	$2,$3,$2
	lw	$2,0($2)
	addiu	$3,$fp,44
	move	$5,$3
	move	$6,$2
	jal	printf
	nop

$L183:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_length_user1)
	lw	$2,%lo(memory_length_user1)($2)
	move	$4,$3
	move	$5,$2
	jal	file_read
	nop

	jal	file_close
	nop

	j	$L184
	nop

$L179:
	lw	$2,88($fp)
	bne	$2,$0,$L184
	nop

	lui	$2,%hi(game_name)
	addiu	$4,$2,%lo(game_name)
	lui	$2,%hi($LC21)
	addiu	$5,$2,%lo($LC21)
	jal	strcmp
	nop

	bne	$2,$0,$L185
	nop

	li	$2,65536			# 0x10000
	ori	$2,$2,0xd8c
	sw	$2,24($fp)
$L185:
	lui	$2,%hi(usr1rom+24)
	addiu	$2,$2,%lo(usr1rom+24)
	addiu	$3,$fp,44
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	lw	$3,12($2)
	addiu	$2,$fp,44
	lui	$4,%hi(game_name)
	addiu	$4,$4,%lo(game_name)
	lw	$5,32($fp)
	move	$6,$3
	move	$7,$2
	jal	file_open
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	bgez	$2,$L186
	nop

	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L187
	nop

	addiu	$2,$fp,44
	move	$4,$2
	jal	error_file
	nop

	j	$L188
	nop

$L187:
	addiu	$2,$fp,44
	move	$4,$2
	jal	error_crc
	nop

$L188:
	move	$2,$0
	j	$L176
	nop

$L186:
	lui	$2,%hi($LC2)
	addiu	$3,$2,%lo($LC2)
	addiu	$2,$fp,44
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_length_user1)
	lw	$2,%lo(memory_length_user1)($2)
	move	$4,$3
	move	$5,$2
	jal	file_read
	nop

	jal	file_close
	nop

	lui	$2,%hi(encrypt_usr1)
	lw	$2,%lo(encrypt_usr1)($2)
	beq	$2,$0,$L184
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,33			# 0x21
	bne	$3,$2,$L184
	nop

	jal	kf2k3pcb_sp1_decrypt
	nop

	bne	$2,$0,$L184
	nop

	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L176
	nop

$L184:
	lui	$2,%hi(memory_length_user1)
	lw	$2,%lo(memory_length_user1)($2)
	addiu	$3,$2,-1
	lui	$2,%hi(bios_amask)
	sw	$3,%lo(bios_amask)($2)
	lw	$2,24($fp)
	beq	$2,$0,$L189
	nop

	lui	$2,%hi(memory_region_user1)
	lw	$2,%lo(memory_region_user1)($2)
	sw	$2,40($fp)
	lui	$2,%hi(neogeo_region)
	lw	$2,%lo(neogeo_region)($2)
	bne	$2,$0,$L190
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1024
	lhu	$2,0($2)
	andi	$2,$2,0x3
	sh	$2,28($fp)
	j	$L191
	nop

$L190:
	lui	$2,%hi(neogeo_region)
	lw	$2,%lo(neogeo_region)($2)
	andi	$2,$2,0xffff
	addiu	$2,$2,-1
	sh	$2,28($fp)
$L191:
	lui	$2,%hi(neogeo_machine_mode)
	lw	$2,%lo(neogeo_machine_mode)($2)
	bne	$2,$0,$L192
	nop

	lw	$2,40($fp)
	addiu	$2,$2,1024
	lhu	$2,0($2)
	seh	$3,$2
	li	$2,-32768			# 0xffffffffffff8000
	and	$2,$3,$2
	seh	$3,$2
	lh	$2,28($fp)
	or	$2,$3,$2
	seh	$2,$2
	sh	$2,28($fp)
	j	$L193
	nop

$L192:
	lui	$2,%hi(neogeo_machine_mode)
	lw	$3,%lo(neogeo_machine_mode)($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L194
	nop

	li	$2,-32768			# 0xffffffffffff8000
	j	$L195
	nop

$L194:
	move	$2,$0
$L195:
	lh	$3,28($fp)
	or	$2,$2,$3
	seh	$2,$2
	sh	$2,28($fp)
$L193:
	lw	$2,40($fp)
	addiu	$2,$2,1024
	lhu	$3,28($fp)
	sh	$3,0($2)
	lw	$2,24($fp)
	srl	$2,$2,1
	sll	$2,$2,1
	lw	$3,40($fp)
	addu	$2,$3,$2
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,2
	srl	$2,$2,1
	sll	$2,$2,1
	lw	$3,40($fp)
	addu	$2,$3,$2
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
$L189:
	li	$2,1			# 0x1
$L176:
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_user1
	.size	load_rom_user1, .-load_rom_user1
	.rdata
	.align	2
$LC22:
	.ascii	"%srominfo.mvs\000"
	.align	2
$LC23:
	.ascii	"rb\000"
	.align	2
$LC24:
	.ascii	"\012\000"
	.align	2
$LC25:
	.ascii	"FILENAME(\000"
	.align	2
$LC26:
	.ascii	" \000"
	.align	2
$LC27:
	.ascii	" ,\000"
	.align	2
$LC28:
	.ascii	"pcb\000"
	.align	2
$LC29:
	.ascii	"%d\000"
	.align	2
$LC30:
	.ascii	"END\000"
	.align	2
$LC31:
	.ascii	"REGION(\000"
	.align	2
$LC32:
	.ascii	"SOUND_DISABLE\000"
	.align	2
$LC33:
	.ascii	"ENCRYPTED\000"
	.align	2
$LC34:
	.ascii	"CPU1\000"
	.align	2
$LC35:
	.ascii	"%x\000"
	.align	2
$LC36:
	.ascii	"CPU2\000"
	.align	2
$LC37:
	.ascii	"GFX2\000"
	.align	2
$LC38:
	.ascii	"GFX3\000"
	.align	2
$LC39:
	.ascii	"SOUND1\000"
	.align	2
$LC40:
	.ascii	"SOUND2\000"
	.align	2
$LC41:
	.ascii	"USER1\000"
	.align	2
$LC42:
	.ascii	"ROM(\000"
	.align	2
$LC43:
	.ascii	"ROMX(\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	load_rom_info
	.type	load_rom_info, @function
load_rom_info:
	.frame	$fp,664,$31		# vars= 632, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-664
	sw	$31,660($sp)
	sw	$fp,656($sp)
	move	$fp,$sp
	sw	$4,664($fp)
	sw	$0,28($fp)
	sw	$0,32($fp)
	lui	$2,%hi(num_cpu1rom)
	sw	$0,%lo(num_cpu1rom)($2)
	lui	$2,%hi(num_cpu2rom)
	sw	$0,%lo(num_cpu2rom)($2)
	lui	$2,%hi(num_gfx2rom)
	sw	$0,%lo(num_gfx2rom)($2)
	lui	$2,%hi(num_gfx3rom)
	sw	$0,%lo(num_gfx3rom)($2)
	lui	$2,%hi(num_snd1rom)
	sw	$0,%lo(num_snd1rom)($2)
	lui	$2,%hi(num_snd2rom)
	sw	$0,%lo(num_snd2rom)($2)
	lui	$2,%hi(num_usr1rom)
	sw	$0,%lo(num_usr1rom)($2)
	lui	$2,%hi(encrypt_cpu1)
	sw	$0,%lo(encrypt_cpu1)($2)
	lui	$2,%hi(encrypt_cpu2)
	sw	$0,%lo(encrypt_cpu2)($2)
	lui	$2,%hi(encrypt_snd1)
	sw	$0,%lo(encrypt_snd1)($2)
	lui	$2,%hi(encrypt_gfx2)
	sw	$0,%lo(encrypt_gfx2)($2)
	lui	$2,%hi(encrypt_gfx3)
	sw	$0,%lo(encrypt_gfx3)($2)
	lui	$2,%hi(encrypt_usr1)
	sw	$0,%lo(encrypt_usr1)($2)
	lui	$2,%hi(disable_sound)
	sw	$0,%lo(disable_sound)($2)
	lui	$2,%hi($LC22)
	addiu	$2,$2,%lo($LC22)
	addiu	$3,$fp,144
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	jal	sprintf
	nop

	addiu	$3,$fp,144
	lui	$2,%hi($LC23)
	addiu	$2,$2,%lo($LC23)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,48($fp)
	lw	$2,48($fp)
	beq	$2,$0,$L197
	nop

	lw	$4,48($fp)
	move	$5,$0
	li	$6,2			# 0x2
	jal	fseek
	nop

	lw	$4,48($fp)
	jal	ftell
	nop

	sw	$2,52($fp)
	lw	$4,48($fp)
	move	$5,$0
	move	$6,$0
	jal	fseek
	nop

	lw	$2,52($fp)
	move	$4,$2
	jal	malloc
	nop

	sw	$2,56($fp)
	lw	$2,56($fp)
	bne	$2,$0,$L198
	nop

	lw	$4,48($fp)
	jal	fclose
	nop

	li	$2,3			# 0x3
	j	$L199
	nop

$L198:
	lw	$2,52($fp)
	lw	$4,56($fp)
	li	$5,1			# 0x1
	move	$6,$2
	lw	$7,48($fp)
	jal	fread
	nop

	lw	$4,48($fp)
	jal	fclose
	nop

	sw	$0,24($fp)
	j	$L200
	nop

$L247:
	lw	$2,24($fp)
	lw	$3,56($fp)
	addu	$2,$3,$2
	sw	$2,60($fp)
	j	$L201
	nop

$L203:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L201:
	lw	$2,24($fp)
	lw	$3,56($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,10			# 0xa
	beq	$3,$2,$L202
	nop

	lw	$2,24($fp)
	lw	$3,56($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L203
	nop

$L202:
	lw	$2,24($fp)
	lw	$3,56($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	lw	$2,60($fp)
	addiu	$3,$fp,400
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

	addiu	$2,$fp,400
	move	$4,$2
	jal	strlen
	nop

	addiu	$3,$fp,400
	addu	$3,$3,$2
	lui	$2,%hi($LC24)
	addiu	$2,$2,%lo($LC24)
	move	$4,$3
	move	$5,$2
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lb	$3,400($fp)
	li	$2,47			# 0x2f
	bne	$3,$2,$L204
	nop

	lb	$3,401($fp)
	li	$2,47			# 0x2f
	beq	$3,$2,$L248
	nop

$L204:
	lb	$3,400($fp)
	li	$2,9			# 0x9
	beq	$3,$2,$L205
	nop

	lb	$3,400($fp)
	li	$2,13			# 0xd
	beq	$3,$2,$L249
	nop

	lb	$3,400($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L250
	nop

$L207:
	addiu	$2,$fp,400
	move	$4,$2
	lui	$2,%hi($LC25)
	addiu	$5,$2,%lo($LC25)
	li	$6,9			# 0x9
	jal	strncasecmp
	nop

	bne	$2,$0,$L208
	nop

	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	addiu	$3,$fp,400
	move	$4,$3
	move	$5,$2
	jal	strtok
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,64($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,68($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,72($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,76($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,80($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,84($fp)
	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,88($fp)
	lw	$4,64($fp)
	lw	$5,664($fp)
	jal	strcasecmp
	nop

	bne	$2,$0,$L200
	nop

	lw	$4,68($fp)
	lui	$2,%hi($LC7)
	addiu	$5,$2,%lo($LC7)
	li	$6,6			# 0x6
	jal	strncasecmp
	nop

	bne	$2,$0,$L209
	nop

	lui	$2,%hi(parent_name)
	sb	$0,%lo(parent_name)($2)
	j	$L210
	nop

$L209:
	lw	$4,68($fp)
	lui	$2,%hi($LC28)
	addiu	$5,$2,%lo($LC28)
	li	$6,3			# 0x3
	jal	strncasecmp
	nop

	bne	$2,$0,$L211
	nop

	lui	$2,%hi(parent_name)
	sb	$0,%lo(parent_name)($2)
	j	$L210
	nop

$L211:
	lw	$2,68($fp)
	lui	$3,%hi(parent_name)
	addiu	$4,$3,%lo(parent_name)
	move	$5,$2
	jal	strcpy
	nop

$L210:
	lw	$3,72($fp)
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(machine_driver_type)
	addiu	$6,$2,%lo(machine_driver_type)
	jal	__isoc99_sscanf
	nop

	lw	$3,76($fp)
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(machine_input_type)
	addiu	$6,$2,%lo(machine_input_type)
	jal	__isoc99_sscanf
	nop

	lw	$3,80($fp)
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(machine_init_type)
	addiu	$6,$2,%lo(machine_init_type)
	jal	__isoc99_sscanf
	nop

	lw	$3,84($fp)
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(machine_screen_type)
	addiu	$6,$2,%lo(machine_screen_type)
	jal	__isoc99_sscanf
	nop

	lw	$3,88($fp)
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(neo_game_w)
	addiu	$6,$2,%lo(neo_game_w)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(neo_game_w)
	li	$3,320			# 0x140
	sw	$3,%lo(neo_game_w)($2)
	li	$2,1			# 0x1
	sw	$2,28($fp)
	j	$L200
	nop

$L208:
	lw	$2,28($fp)
	beq	$2,$0,$L200
	nop

	addiu	$2,$fp,400
	move	$4,$2
	lui	$2,%hi($LC30)
	addiu	$5,$2,%lo($LC30)
	li	$6,3			# 0x3
	jal	strncasecmp
	nop

	bne	$2,$0,$L200
	nop

	lw	$4,56($fp)
	jal	free
	nop

	move	$2,$0
	j	$L199
	nop

$L205:
	lw	$2,28($fp)
	beq	$2,$0,$L200
	nop

	addiu	$2,$fp,400
	addiu	$2,$2,1
	move	$4,$2
	lui	$2,%hi($LC31)
	addiu	$5,$2,%lo($LC31)
	li	$6,7			# 0x7
	jal	strncasecmp
	nop

	bne	$2,$0,$L212
	nop

	sw	$0,36($fp)
	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	addiu	$3,$fp,400
	addiu	$3,$3,1
	move	$4,$3
	move	$5,$2
	jal	strtok
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,92($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,96($fp)
	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,100($fp)
	lw	$4,100($fp)
	lui	$2,%hi($LC32)
	addiu	$5,$2,%lo($LC32)
	jal	strstr
	nop

	beq	$2,$0,$L213
	nop

	lui	$2,%hi(disable_sound)
	li	$3,1			# 0x1
	sw	$3,%lo(disable_sound)($2)
$L213:
	lw	$4,100($fp)
	lui	$2,%hi($LC33)
	addiu	$5,$2,%lo($LC33)
	jal	strstr
	nop

	beq	$2,$0,$L214
	nop

	li	$2,1			# 0x1
	sw	$2,36($fp)
$L214:
	lw	$4,96($fp)
	lui	$2,%hi($LC34)
	addiu	$5,$2,%lo($LC34)
	jal	strcmp
	nop

	bne	$2,$0,$L215
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_cpu1)
	addiu	$6,$2,%lo(memory_length_cpu1)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_cpu1)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_cpu1)($2)
	sw	$0,32($fp)
	j	$L200
	nop

$L215:
	lw	$4,96($fp)
	lui	$2,%hi($LC36)
	addiu	$5,$2,%lo($LC36)
	jal	strcmp
	nop

	bne	$2,$0,$L216
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_cpu2)
	addiu	$6,$2,%lo(memory_length_cpu2)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_cpu2)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_cpu2)($2)
	li	$2,1			# 0x1
	sw	$2,32($fp)
	j	$L200
	nop

$L216:
	lw	$4,96($fp)
	lui	$2,%hi($LC37)
	addiu	$5,$2,%lo($LC37)
	jal	strcmp
	nop

	bne	$2,$0,$L217
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_gfx2)
	addiu	$6,$2,%lo(memory_length_gfx2)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_gfx2)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_gfx2)($2)
	li	$2,3			# 0x3
	sw	$2,32($fp)
	j	$L200
	nop

$L217:
	lw	$4,96($fp)
	lui	$2,%hi($LC38)
	addiu	$5,$2,%lo($LC38)
	jal	strcmp
	nop

	bne	$2,$0,$L218
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_gfx3)
	addiu	$6,$2,%lo(memory_length_gfx3)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_gfx3)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_gfx3)($2)
	li	$2,4			# 0x4
	sw	$2,32($fp)
	j	$L200
	nop

$L218:
	lw	$4,96($fp)
	lui	$2,%hi($LC39)
	addiu	$5,$2,%lo($LC39)
	jal	strcmp
	nop

	bne	$2,$0,$L219
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_sound1)
	addiu	$6,$2,%lo(memory_length_sound1)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_snd1)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_snd1)($2)
	li	$2,6			# 0x6
	sw	$2,32($fp)
	j	$L200
	nop

$L219:
	lw	$4,96($fp)
	lui	$2,%hi($LC40)
	addiu	$5,$2,%lo($LC40)
	jal	strcmp
	nop

	bne	$2,$0,$L220
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_sound2)
	addiu	$6,$2,%lo(memory_length_sound2)
	jal	__isoc99_sscanf
	nop

	li	$2,7			# 0x7
	sw	$2,32($fp)
	j	$L200
	nop

$L220:
	lw	$4,96($fp)
	lui	$2,%hi($LC41)
	addiu	$5,$2,%lo($LC41)
	jal	strcmp
	nop

	bne	$2,$0,$L221
	nop

	lw	$3,92($fp)
	lui	$2,%hi($LC35)
	addiu	$2,$2,%lo($LC35)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(memory_length_user1)
	addiu	$6,$2,%lo(memory_length_user1)
	jal	__isoc99_sscanf
	nop

	lui	$2,%hi(encrypt_usr1)
	lw	$3,36($fp)
	sw	$3,%lo(encrypt_usr1)($2)
	li	$2,8			# 0x8
	sw	$2,32($fp)
	j	$L200
	nop

$L221:
	li	$2,10			# 0xa
	sw	$2,32($fp)
	j	$L200
	nop

$L212:
	addiu	$2,$fp,400
	addiu	$2,$2,1
	move	$4,$2
	lui	$2,%hi($LC42)
	addiu	$5,$2,%lo($LC42)
	li	$6,4			# 0x4
	jal	strncasecmp
	nop

	bne	$2,$0,$L222
	nop

	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	addiu	$3,$fp,400
	addiu	$3,$3,1
	move	$4,$3
	move	$5,$2
	jal	strtok
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,104($fp)
	lw	$2,104($fp)
	lb	$3,0($2)
	li	$2,49			# 0x31
	beq	$3,$2,$L223
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,40($fp)
	j	$L224
	nop

$L223:
	sw	$0,40($fp)
$L224:
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,108($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,112($fp)
	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,116($fp)
	lw	$2,32($fp)
	sltu	$2,$2,9
	beq	$2,$0,$L251
	nop

	lw	$2,32($fp)
	sll	$3,$2,2
	lui	$2,%hi($L233)
	addiu	$2,$2,%lo($L233)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L233:
	.word	$L226
	.word	$L227
	.word	$L252
	.word	$L228
	.word	$L229
	.word	$L252
	.word	$L230
	.word	$L231
	.word	$L232
	.text
$L226:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L234
	nop

	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L234:
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	lui	$4,%hi(cpu1rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(cpu1rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	lui	$3,%hi(cpu1rom)
	addiu	$3,$3,%lo(cpu1rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_cpu1rom)
	sw	$3,%lo(num_cpu1rom)($2)
	j	$L200
	nop

$L227:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L235
	nop

	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(cpu2rom)
	addiu	$2,$2,%lo(cpu2rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L235:
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	lui	$4,%hi(cpu2rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(cpu2rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	lui	$3,%hi(cpu2rom)
	addiu	$3,$3,%lo(cpu2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_cpu2rom)
	lw	$2,%lo(num_cpu2rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_cpu2rom)
	sw	$3,%lo(num_cpu2rom)($2)
	j	$L200
	nop

$L228:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L236
	nop

	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(gfx2rom)
	addiu	$2,$2,%lo(gfx2rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L236:
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	lui	$4,%hi(gfx2rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(gfx2rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	lui	$3,%hi(gfx2rom)
	addiu	$3,$3,%lo(gfx2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_gfx2rom)
	lw	$2,%lo(num_gfx2rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_gfx2rom)
	sw	$3,%lo(num_gfx2rom)($2)
	j	$L200
	nop

$L229:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L237
	nop

	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L237:
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	lui	$4,%hi(gfx3rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(gfx3rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	lui	$3,%hi(gfx3rom)
	addiu	$3,$3,%lo(gfx3rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_gfx3rom)
	sw	$3,%lo(num_gfx3rom)($2)
	j	$L200
	nop

$L230:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L238
	nop

	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(snd1rom)
	addiu	$2,$2,%lo(snd1rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L238:
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	lui	$4,%hi(snd1rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(snd1rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	lui	$3,%hi(snd1rom)
	addiu	$3,$3,%lo(snd1rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_snd1rom)
	lw	$2,%lo(num_snd1rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_snd1rom)
	sw	$3,%lo(num_snd1rom)($2)
	j	$L200
	nop

$L231:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L239
	nop

	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(snd2rom)
	addiu	$2,$2,%lo(snd2rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L239:
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	lui	$4,%hi(snd2rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(snd2rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	lui	$3,%hi(snd2rom)
	addiu	$3,$3,%lo(snd2rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_snd2rom)
	lw	$2,%lo(num_snd2rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_snd2rom)
	sw	$3,%lo(num_snd2rom)($2)
	nop
	j	$L200
	nop

$L232:
	lw	$4,104($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,108($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,112($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,116($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,40($fp)
	beq	$2,$0,$L240
	nop

	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(usr1rom)
	addiu	$2,$2,%lo(usr1rom)
	addu	$3,$3,$2
	lw	$2,40($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L240:
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	lui	$4,%hi(usr1rom)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$2,$4,%lo(usr1rom)
	addu	$2,$3,$2
	sw	$0,16($2)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	lui	$3,%hi(usr1rom)
	addiu	$3,$3,%lo(usr1rom)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	addu	$2,$3,$2
	sw	$0,20($2)
	lui	$2,%hi(num_usr1rom)
	lw	$2,%lo(num_usr1rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_usr1rom)
	sw	$3,%lo(num_usr1rom)($2)
	j	$L200
	nop

$L222:
	addiu	$2,$fp,400
	addiu	$2,$2,1
	move	$4,$2
	lui	$2,%hi($LC43)
	addiu	$5,$2,%lo($LC43)
	li	$6,5			# 0x5
	jal	strncasecmp
	nop

	bne	$2,$0,$L200
	nop

	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	addiu	$3,$fp,400
	addiu	$3,$3,1
	move	$4,$3
	move	$5,$2
	jal	strtok
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,120($fp)
	lw	$2,120($fp)
	lb	$3,0($2)
	li	$2,49			# 0x31
	beq	$3,$2,$L241
	nop

	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,44($fp)
	j	$L242
	nop

$L241:
	sw	$0,44($fp)
$L242:
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,124($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,128($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,132($fp)
	lui	$2,%hi($LC27)
	addiu	$2,$2,%lo($LC27)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,136($fp)
	lui	$2,%hi($LC26)
	addiu	$2,$2,%lo($LC26)
	move	$4,$0
	move	$5,$2
	jal	strtok
	nop

	sw	$2,140($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L243
	nop

	li	$3,4			# 0x4
	beq	$2,$3,$L244
	nop

	j	$L200
	nop

$L243:
	lw	$4,120($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,124($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,128($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,132($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,136($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,16
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,140($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,16
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,44($fp)
	beq	$2,$0,$L245
	nop

	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(cpu1rom)
	addiu	$2,$2,%lo(cpu1rom)
	addu	$3,$3,$2
	lw	$2,44($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L245:
	lui	$2,%hi(num_cpu1rom)
	lw	$2,%lo(num_cpu1rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_cpu1rom)
	sw	$3,%lo(num_cpu1rom)($2)
	j	$L200
	nop

$L244:
	lw	$4,120($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,124($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,128($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,132($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,8
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,136($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,16
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$4,140($fp)
	lui	$2,%hi($LC35)
	addiu	$5,$2,%lo($LC35)
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,16
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$6,$2
	jal	__isoc99_sscanf
	nop

	lw	$2,44($fp)
	beq	$2,$0,$L246
	nop

	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$3,$3,$2
	addiu	$3,$3,24
	lui	$2,%hi(gfx3rom)
	addiu	$2,$2,%lo(gfx3rom)
	addu	$3,$3,$2
	lw	$2,44($fp)
	move	$4,$3
	move	$5,$2
	jal	strcpy
	nop

$L246:
	lui	$2,%hi(num_gfx3rom)
	lw	$2,%lo(num_gfx3rom)($2)
	addiu	$3,$2,1
	lui	$2,%hi(num_gfx3rom)
	sw	$3,%lo(num_gfx3rom)($2)
	j	$L200
	nop

$L248:
	nop
	j	$L200
	nop

$L249:
	nop
	j	$L200
	nop

$L250:
	nop
	j	$L200
	nop

$L251:
	nop
	j	$L200
	nop

$L252:
	nop
$L200:
	lw	$3,24($fp)
	lw	$2,52($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L247
	nop

	lw	$4,56($fp)
	jal	free
	nop

	li	$2,2			# 0x2
	j	$L199
	nop

$L197:
	li	$2,3			# 0x3
$L199:
	move	$sp,$fp
	lw	$31,660($sp)
	lw	$fp,656($sp)
	addiu	$sp,$sp,664
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_rom_info
	.size	load_rom_info, .-load_rom_info
	.rdata
	.align	2
$LC44:
	.ascii	"CHECKING_BIOS neogeo_bios = %d\012\000"
	.align	2
$LC45:
	.ascii	"CHECKING_ROM_INFO\000"
	.align	2
$LC46:
	.ascii	"THIS_GAME_NOT_SUPPORTED\000"
	.align	2
$LC47:
	.ascii	"ROM_NOT_FOUND\000"
	.align	2
$LC48:
	.ascii	"ROMINFO_NOT_FOUND\000"
	.align	2
$LC49:
	.ascii	"CHECKING_ROM_INFO OK\000"
	.align	2
$LC50:
	.ascii	"ROMSET_%s_PARENT_%s\012\000"
	.align	2
$LC51:
	.ascii	"ROMSET_%s\012\000"
	.align	2
$LC52:
	.ascii	"GFX_PEN_USAGE (sfix)\000"
	.align	2
$LC53:
	.ascii	"GFX_PEN_USAGE (fix)\000"
	.align	2
$LC54:
	.ascii	"GFX_PEN_USAGE (spr)\000"
	.text
	.align	2
	.globl	memory_init
	.set	nomips16
	.set	nomicromips
	.ent	memory_init
	.type	memory_init, @function
memory_init:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	sw	$0,%lo(memory_region_cpu1)($2)
	lui	$2,%hi(memory_region_cpu2)
	sw	$0,%lo(memory_region_cpu2)($2)
	lui	$2,%hi(memory_region_gfx1)
	sw	$0,%lo(memory_region_gfx1)($2)
	lui	$2,%hi(memory_region_gfx2)
	sw	$0,%lo(memory_region_gfx2)($2)
	lui	$2,%hi(memory_region_gfx3)
	sw	$0,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_region_gfx4)
	sw	$0,%lo(memory_region_gfx4)($2)
	lui	$2,%hi(memory_region_sound1)
	sw	$0,%lo(memory_region_sound1)($2)
	lui	$2,%hi(memory_region_sound2)
	sw	$0,%lo(memory_region_sound2)($2)
	lui	$2,%hi(memory_region_user1)
	sw	$0,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_region_user3)
	sw	$0,%lo(memory_region_user3)($2)
	lui	$2,%hi(memory_length_cpu1)
	sw	$0,%lo(memory_length_cpu1)($2)
	lui	$2,%hi(memory_length_cpu2)
	sw	$0,%lo(memory_length_cpu2)($2)
	lui	$2,%hi(memory_length_gfx1)
	li	$3,131072			# 0x20000
	sw	$3,%lo(memory_length_gfx1)($2)
	lui	$2,%hi(memory_length_gfx2)
	sw	$0,%lo(memory_length_gfx2)($2)
	lui	$2,%hi(memory_length_gfx3)
	sw	$0,%lo(memory_length_gfx3)($2)
	lui	$2,%hi(memory_length_gfx4)
	li	$3,131072			# 0x20000
	sw	$3,%lo(memory_length_gfx4)($2)
	lui	$2,%hi(memory_length_sound1)
	sw	$0,%lo(memory_length_sound1)($2)
	lui	$2,%hi(memory_length_sound2)
	sw	$0,%lo(memory_length_sound2)($2)
	lui	$2,%hi(memory_length_user1)
	li	$3,131072			# 0x20000
	sw	$3,%lo(memory_length_user1)($2)
	lui	$2,%hi(memory_length_user3)
	li	$3,65536			# 0x10000
	sw	$3,%lo(memory_length_user3)($2)
	lui	$2,%hi(gfx_pen_usage)
	sw	$0,%lo(gfx_pen_usage)($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	sw	$0,4($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	sw	$0,8($2)
	lui	$2,%hi(neogeo_memcard)
	addiu	$4,$2,%lo(neogeo_memcard)
	move	$5,$0
	li	$6,2048			# 0x800
	jal	memset
	nop

	lui	$2,%hi(neogeo_ram)
	addiu	$4,$2,%lo(neogeo_ram)
	move	$5,$0
	li	$6,65536			# 0x10000
	jal	memset
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$4,$2,%lo(neogeo_sram16)
	move	$5,$0
	li	$6,65536			# 0x10000
	jal	memset
	nop

	lui	$2,%hi($LC44)
	addiu	$3,$2,%lo($LC44)
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	sw	$2,24($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L254
	nop

	lui	$2,%hi(bios_zip)
	lw	$3,%lo(bios_zip)($2)
	lui	$2,%hi(neogeo_bios)
	lw	$4,%lo(neogeo_bios)($2)
	lui	$2,%hi(bios_crc)
	sll	$4,$4,2
	addiu	$2,$2,%lo(bios_crc)
	addu	$2,$4,$2
	lw	$2,0($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	move	$7,$0
	jal	file_open
	nop

	sw	$2,24($fp)
	jal	file_close
	nop

$L254:
	lw	$2,24($fp)
	bgez	$2,$L255
	nop

	jal	bios_select
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L255
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L256
	nop

$L255:
	lui	$2,%hi($LC45)
	addiu	$4,$2,%lo($LC45)
	jal	puts
	nop

	lui	$2,%hi(game_name)
	addiu	$4,$2,%lo(game_name)
	jal	load_rom_info
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L257
	nop

	lw	$2,24($fp)
	li	$3,2			# 0x2
	beq	$2,$3,$L260
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L261
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L258
	nop

$L259:
	lui	$2,%hi($LC46)
	addiu	$4,$2,%lo($LC46)
	jal	puts
	nop

	j	$L258
	nop

$L260:
	lui	$2,%hi($LC47)
	addiu	$4,$2,%lo($LC47)
	jal	puts
	nop

	j	$L258
	nop

$L261:
	lui	$2,%hi($LC48)
	addiu	$4,$2,%lo($LC48)
	jal	puts
	nop

	nop
$L258:
	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L256
	nop

$L257:
	lui	$2,%hi(neo_game_w)
	lw	$3,%lo(neo_game_w)($2)
	lui	$2,%hi(neo_game_h)
	lw	$2,%lo(neo_game_h)($2)
	move	$4,$3
	move	$5,$2
	jal	neo_game_w_h_cb
	nop

	lui	$2,%hi($LC49)
	addiu	$4,$2,%lo($LC49)
	jal	puts
	nop

	lui	$2,%hi(parent_name)
	lb	$2,%lo(parent_name)($2)
	beq	$2,$0,$L262
	nop

	sw	$0,28($fp)
	lui	$2,%hi(use_parent_crom)
	li	$3,1			# 0x1
	sw	$3,%lo(use_parent_crom)($2)
	lui	$2,%hi(use_parent_srom)
	li	$3,1			# 0x1
	sw	$3,%lo(use_parent_srom)($2)
	lui	$2,%hi(use_parent_vrom)
	li	$3,1			# 0x1
	sw	$3,%lo(use_parent_vrom)($2)
	j	$L263
	nop

$L266:
	lui	$3,%hi(MVS_cacheinfo)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(MVS_cacheinfo)
	addu	$2,$2,$3
	lw	$2,0($2)
	lui	$3,%hi(game_name)
	addiu	$4,$3,%lo(game_name)
	move	$5,$2
	jal	strcmp
	nop

	bne	$2,$0,$L264
	nop

	lui	$3,%hi(MVS_cacheinfo)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(MVS_cacheinfo)
	addu	$2,$2,$3
	lw	$2,8($2)
	sltu	$3,$2,1
	lui	$2,%hi(use_parent_crom)
	sw	$3,%lo(use_parent_crom)($2)
	lui	$3,%hi(MVS_cacheinfo)
	lw	$2,28($fp)
	addiu	$3,$3,%lo(MVS_cacheinfo)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	lw	$2,12($2)
	sltu	$3,$2,1
	lui	$2,%hi(use_parent_srom)
	sw	$3,%lo(use_parent_srom)($2)
	lui	$3,%hi(MVS_cacheinfo)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(MVS_cacheinfo)
	addu	$2,$2,$3
	lw	$2,16($2)
	sltu	$3,$2,1
	lui	$2,%hi(use_parent_vrom)
	sw	$3,%lo(use_parent_vrom)($2)
	j	$L265
	nop

$L264:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L263:
	lui	$3,%hi(MVS_cacheinfo)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(MVS_cacheinfo)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,$L266
	nop

$L265:
	lui	$2,%hi($LC50)
	addiu	$2,$2,%lo($LC50)
	move	$4,$2
	lui	$2,%hi(game_name)
	addiu	$5,$2,%lo(game_name)
	lui	$2,%hi(parent_name)
	addiu	$6,$2,%lo(parent_name)
	jal	printf
	nop

	j	$L267
	nop

$L262:
	lui	$2,%hi(use_parent_crom)
	sw	$0,%lo(use_parent_crom)($2)
	lui	$2,%hi(use_parent_srom)
	sw	$0,%lo(use_parent_srom)($2)
	lui	$2,%hi(use_parent_vrom)
	sw	$0,%lo(use_parent_vrom)($2)
	lui	$2,%hi($LC51)
	addiu	$2,$2,%lo($LC51)
	move	$4,$2
	lui	$2,%hi(game_name)
	addiu	$5,$2,%lo(game_name)
	jal	printf
	nop

$L267:
	lui	$2,%hi(memory_length_gfx1)
	lw	$2,%lo(memory_length_gfx1)($2)
	srl	$2,$2,5
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(gfx_pen_usage)
	sw	$3,%lo(gfx_pen_usage)($2)
	lui	$2,%hi(gfx_pen_usage)
	lw	$2,%lo(gfx_pen_usage)($2)
	bne	$2,$0,$L268
	nop

	lui	$2,%hi($LC52)
	addiu	$4,$2,%lo($LC52)
	jal	error_memory
	nop

	move	$2,$0
	j	$L256
	nop

$L268:
	lui	$2,%hi(memory_length_gfx2)
	lw	$2,%lo(memory_length_gfx2)($2)
	srl	$2,$2,5
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	sw	$3,4($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$2,4($2)
	bne	$2,$0,$L269
	nop

	lui	$2,%hi($LC53)
	addiu	$4,$2,%lo($LC53)
	jal	error_memory
	nop

	move	$2,$0
	j	$L256
	nop

$L269:
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	srl	$2,$2,7
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	sw	$3,8($2)
	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$2,8($2)
	bne	$2,$0,$L270
	nop

	lui	$2,%hi($LC54)
	addiu	$4,$2,%lo($LC54)
	jal	error_memory
	nop

	move	$2,$0
	j	$L256
	nop

$L270:
	jal	load_rom_cpu1
	nop

	bne	$2,$0,$L271
	nop

	move	$2,$0
	j	$L256
	nop

$L271:
	move	$4,$0
	jal	load_rom_user1
	nop

	bne	$2,$0,$L272
	nop

	move	$2,$0
	j	$L256
	nop

$L272:
	jal	load_rom_cpu2
	nop

	bne	$2,$0,$L273
	nop

	move	$2,$0
	j	$L256
	nop

$L273:
	jal	load_rom_gfx1
	nop

	bne	$2,$0,$L274
	nop

	move	$2,$0
	j	$L256
	nop

$L274:
	jal	load_rom_gfx2
	nop

	bne	$2,$0,$L275
	nop

	move	$2,$0
	j	$L256
	nop

$L275:
	jal	load_rom_gfx4
	nop

	bne	$2,$0,$L276
	nop

	move	$2,$0
	j	$L256
	nop

$L276:
	jal	load_rom_sound1
	nop

	bne	$2,$0,$L277
	nop

	move	$2,$0
	j	$L256
	nop

$L277:
	jal	load_rom_sound2
	nop

	bne	$2,$0,$L278
	nop

	move	$2,$0
	j	$L256
	nop

$L278:
	jal	load_rom_gfx3
	nop

	bne	$2,$0,$L279
	nop

	move	$2,$0
	j	$L256
	nop

$L279:
	lui	$2,%hi(disable_sound)
	lw	$2,%lo(disable_sound)($2)
	beq	$2,$0,$L280
	nop

	lui	$2,%hi(option_sound_enable)
	lw	$3,%lo(option_sound_enable)($2)
	lui	$2,%hi(neogeo_save_sound_flag)
	sw	$3,%lo(neogeo_save_sound_flag)($2)
	lui	$2,%hi(option_sound_enable)
	sw	$0,%lo(option_sound_enable)($2)
	j	$L281
	nop

$L280:
	lui	$2,%hi(neogeo_save_sound_flag)
	sw	$0,%lo(neogeo_save_sound_flag)($2)
$L281:
	lui	$2,%hi(machine_init_type)
	lw	$2,%lo(machine_init_type)($2)
	addiu	$2,$2,-6
	sltu	$3,$2,28
	beq	$3,$0,$L282
	nop

	li	$3,202768384			# 0xc160000
	ori	$3,$3,0xb0
	sll	$3,$3,$2
	bltz	$3,$L284
	nop

	li	$3,-267845632			# 0xfffffffff0090000
	ori	$3,$3,0x200
	sll	$2,$3,$2
	bgez	$2,$L282
	nop

$L283:
	lui	$2,%hi(neogeo_fix_bank_type)
	li	$3,1			# 0x1
	sw	$3,%lo(neogeo_fix_bank_type)($2)
	j	$L285
	nop

$L284:
	lui	$2,%hi(neogeo_fix_bank_type)
	li	$3,2			# 0x2
	sw	$3,%lo(neogeo_fix_bank_type)($2)
	j	$L285
	nop

$L282:
	lui	$2,%hi(neogeo_fix_bank_type)
	sw	$0,%lo(neogeo_fix_bank_type)($2)
	nop
$L285:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(neogeo_secondbank_r)
	addiu	$3,$3,%lo(neogeo_secondbank_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(neogeo_secondbank_w)
	addiu	$3,$3,%lo(neogeo_secondbank_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	lui	$2,%hi(machine_init_type)
	lw	$2,%lo(machine_init_type)($2)
	sltu	$3,$2,37
	beq	$3,$0,$L286
	nop

	sll	$3,$2,2
	lui	$2,%hi($L308)
	addiu	$2,$2,%lo($L308)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L308:
	.word	$L286
	.word	$L287
	.word	$L288
	.word	$L289
	.word	$L290
	.word	$L286
	.word	$L291
	.word	$L292
	.word	$L293
	.word	$L286
	.word	$L294
	.word	$L295
	.word	$L296
	.word	$L297
	.word	$L286
	.word	$L286
	.word	$L298
	.word	$L299
	.word	$L286
	.word	$L299
	.word	$L286
	.word	$L286
	.word	$L300
	.word	$L286
	.word	$L286
	.word	$L286
	.word	$L286
	.word	$L286
	.word	$L301
	.word	$L302
	.word	$L303
	.word	$L298
	.word	$L299
	.word	$L304
	.word	$L305
	.word	$L306
	.word	$L307
	.text
$L287:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(fatfury2_protection_r)
	addiu	$3,$3,%lo(fatfury2_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(fatfury2_protection_w)
	addiu	$3,$3,%lo(fatfury2_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L288:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(neogeo_secondbank_r)
	addiu	$3,$3,%lo(neogeo_secondbank_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(kof98_protection_w)
	addiu	$3,$3,%lo(kof98_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L289:
	jal	mslugx_install_protection
	nop

	j	$L286
	nop

$L290:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(kof99_protection_r)
	addiu	$3,$3,%lo(kof99_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(kof99_protection_w)
	addiu	$3,$3,%lo(kof99_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L291:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(garou_protection_r)
	addiu	$3,$3,%lo(garou_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(garou_protection_w)
	addiu	$3,$3,%lo(garou_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L292:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(garou_protection_r)
	addiu	$3,$3,%lo(garou_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(garouh_protection_w)
	addiu	$3,$3,%lo(garouh_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L293:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(mslug3_protection_r)
	addiu	$3,$3,%lo(mslug3_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(mslug3_protection_w)
	addiu	$3,$3,%lo(mslug3_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L294:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(kof2000_protection_r)
	addiu	$3,$3,%lo(kof2000_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(kof2000_protection_w)
	addiu	$3,$3,%lo(kof2000_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	jal	kof2000_AES_protection
	nop

	j	$L286
	nop

$L295:
	jal	kof2000_AES_protection
	nop

	j	$L286
	nop

$L298:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(pvc_protection_r)
	addiu	$3,$3,%lo(pvc_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(pvc_protection_w)
	addiu	$3,$3,%lo(pvc_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	jal	mslug5_AES_protection
	nop

	j	$L286
	nop

$L299:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(pvc_protection_r)
	addiu	$3,$3,%lo(pvc_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(pvc_protection_w)
	addiu	$3,$3,%lo(pvc_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	j	$L286
	nop

$L304:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(pvc_protection_r)
	addiu	$3,$3,%lo(pvc_protection_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(pvc_protection_w)
	addiu	$3,$3,%lo(pvc_protection_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	jal	patch_kf2k3pcb
	nop

	j	$L286
	nop

$L307:
	jal	patch_sbp
	nop

	j	$L286
	nop

$L306:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(vliner_r)
	addiu	$3,$3,%lo(vliner_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(brza_sram_w)
	addiu	$3,$3,%lo(brza_sram_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	lui	$2,%hi(neogeo_ngh)
	li	$3,4096			# 0x1000
	sh	$3,%lo(neogeo_ngh)($2)
	j	$L286
	nop

$L305:
	lui	$2,%hi(neogeo_protection_r)
	lui	$3,%hi(brza_sram_r)
	addiu	$3,$3,%lo(brza_sram_r)
	sw	$3,%lo(neogeo_protection_r)($2)
	lui	$2,%hi(neogeo_protection_w)
	lui	$3,%hi(brza_sram_w)
	addiu	$3,$3,%lo(brza_sram_w)
	sw	$3,%lo(neogeo_protection_w)($2)
	lui	$2,%hi(neogeo_ngh)
	li	$3,4097			# 0x1001
	sh	$3,%lo(neogeo_ngh)($2)
	j	$L286
	nop

$L300:
	jal	nitd_AES_protection
	nop

	j	$L286
	nop

$L296:
	jal	zupapa_AES_protection
	nop

	j	$L286
	nop

$L297:
	jal	sengoku3_AES_protection
	nop

	j	$L286
	nop

$L301:
	jal	mslug4_AES_protection
	nop

	j	$L286
	nop

$L302:
	jal	rotd_AES_protection
	nop

	j	$L286
	nop

$L303:
	jal	matrim_AES_protection
	nop

	nop
$L286:
	lui	$2,%hi(neogeo_sram16)
	addiu	$3,$2,%lo(neogeo_sram16)
	lui	$2,%hi(neogeo_sram)
	sw	$3,%lo(neogeo_sram)($2)
	li	$2,1			# 0x1
$L256:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	memory_init
	.size	memory_init, .-memory_init
	.align	2
	.globl	memory_shutdown
	.set	nomips16
	.set	nomicromips
	.ent	memory_shutdown
	.type	memory_shutdown, @function
memory_shutdown:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	jal	zyh_cache_shutdown
	nop

	sw	$0,24($fp)
	j	$L310
	nop

$L312:
	lui	$2,%hi(gfx_pen_usage)
	lw	$3,24($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(gfx_pen_usage)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,$L311
	nop

	lui	$2,%hi(gfx_pen_usage)
	lw	$3,24($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(gfx_pen_usage)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$4,$2
	jal	free
	nop

$L311:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L310:
	lw	$2,24($fp)
	slt	$2,$2,3
	bne	$2,$0,$L312
	nop

	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	beq	$2,$0,$L313
	nop

	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	move	$4,$2
	jal	free
	nop

$L313:
	lui	$2,%hi(memory_region_cpu2)
	lw	$2,%lo(memory_region_cpu2)($2)
	beq	$2,$0,$L314
	nop

	lui	$2,%hi(memory_region_cpu2)
	lw	$2,%lo(memory_region_cpu2)($2)
	move	$4,$2
	jal	free
	nop

$L314:
	lui	$2,%hi(memory_region_gfx1)
	lw	$2,%lo(memory_region_gfx1)($2)
	beq	$2,$0,$L315
	nop

	lui	$2,%hi(memory_region_gfx1)
	lw	$2,%lo(memory_region_gfx1)($2)
	move	$4,$2
	jal	free
	nop

$L315:
	lui	$2,%hi(memory_region_gfx2)
	lw	$2,%lo(memory_region_gfx2)($2)
	beq	$2,$0,$L316
	nop

	lui	$2,%hi(memory_region_gfx2)
	lw	$2,%lo(memory_region_gfx2)($2)
	move	$4,$2
	jal	free
	nop

$L316:
	lui	$2,%hi(memory_region_gfx4)
	lw	$2,%lo(memory_region_gfx4)($2)
	beq	$2,$0,$L317
	nop

	lui	$2,%hi(memory_region_gfx4)
	lw	$2,%lo(memory_region_gfx4)($2)
	move	$4,$2
	jal	free
	nop

$L317:
	lui	$2,%hi(memory_region_sound1)
	lw	$2,%lo(memory_region_sound1)($2)
	beq	$2,$0,$L318
	nop

	lui	$2,%hi(memory_region_sound1)
	lw	$2,%lo(memory_region_sound1)($2)
	move	$4,$2
	jal	free
	nop

$L318:
	lui	$2,%hi(memory_region_sound2)
	lw	$2,%lo(memory_region_sound2)($2)
	beq	$2,$0,$L319
	nop

	lui	$2,%hi(memory_region_sound2)
	lw	$2,%lo(memory_region_sound2)($2)
	move	$4,$2
	jal	free
	nop

$L319:
	lui	$2,%hi(memory_region_user1)
	lw	$2,%lo(memory_region_user1)($2)
	beq	$2,$0,$L320
	nop

	lui	$2,%hi(memory_region_user1)
	lw	$2,%lo(memory_region_user1)($2)
	move	$4,$2
	jal	free
	nop

$L320:
	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	beq	$2,$0,$L309
	nop

	lui	$2,%hi(memory_region_user3)
	lw	$2,%lo(memory_region_user3)($2)
	move	$4,$2
	jal	free
	nop

$L309:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	memory_shutdown
	.size	memory_shutdown, .-memory_shutdown
	.align	2
	.globl	m68000_read_memory_8
	.set	nomips16
	.set	nomicromips
	.ent	m68000_read_memory_8
	.type	m68000_read_memory_8, @function
m68000_read_memory_8:
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
	lw	$2,40($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L323
	nop

	li	$2,8			# 0x8
	j	$L324
	nop

$L323:
	move	$2,$0
$L324:
	sw	$2,24($fp)
	li	$3,255			# 0xff
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	nor	$2,$0,$2
	sh	$2,28($fp)
	lw	$2,40($fp)
	ext	$2,$2,0,24
	sw	$2,40($fp)
	lw	$2,40($fp)
	srl	$2,$2,20
	sltu	$3,$2,14
	beq	$3,$0,$L325
	nop

	sll	$3,$2,2
	lui	$2,%hi($L334)
	addiu	$2,$2,%lo($L334)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L334:
	.word	$L326
	.word	$L327
	.word	$L328
	.word	$L329
	.word	$L330
	.word	$L325
	.word	$L325
	.word	$L325
	.word	$L331
	.word	$L325
	.word	$L325
	.word	$L325
	.word	$L332
	.word	$L333
	.text
$L326:
	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lw	$2,40($fp)
	xori	$2,$2,0x1
	addu	$2,$3,$2
	lbu	$2,0($2)
	j	$L335
	nop

$L327:
	lw	$2,40($fp)
	andi	$2,$2,0xffff
	xori	$3,$2,0x1
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$3,$2
	lbu	$2,0($2)
	j	$L335
	nop

$L332:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(bios_amask)
	lw	$4,%lo(bios_amask)($2)
	lw	$2,40($fp)
	and	$2,$4,$2
	xori	$2,$2,0x1
	addu	$2,$3,$2
	lbu	$2,0($2)
	j	$L335
	nop

$L333:
	lui	$2,%hi(neogeo_sram)
	lw	$3,%lo(neogeo_sram)($2)
	lw	$2,40($fp)
	andi	$2,$2,0xffff
	xori	$2,$2,0x1
	addu	$2,$3,$2
	lbu	$2,0($2)
	j	$L335
	nop

$L328:
	lui	$2,%hi(neogeo_protection_r)
	lw	$2,%lo(neogeo_protection_r)($2)
	lw	$3,40($fp)
	srl	$4,$3,1
	lhu	$3,28($fp)
	move	$5,$3
	move	$25,$2
	jalr	$25
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L330:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_paletteram_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L331:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_memcard16_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L329:
	lw	$2,40($fp)
	srl	$2,$2,16
	addiu	$2,$2,-48
	sltu	$3,$2,13
	beq	$3,$0,$L343
	nop

	sll	$3,$2,2
	lui	$2,%hi($L342)
	addiu	$2,$2,%lo($L342)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L342:
	.word	$L337
	.word	$L344
	.word	$L338
	.word	$L344
	.word	$L339
	.word	$L344
	.word	$L344
	.word	$L344
	.word	$L340
	.word	$L344
	.word	$L344
	.word	$L344
	.word	$L341
	.text
$L337:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_controller1and4_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L338:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_timer_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L339:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_controller2_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L340:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_controller3_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L341:
	lw	$2,40($fp)
	srl	$3,$2,1
	lhu	$2,28($fp)
	move	$4,$3
	move	$5,$2
	jal	neogeo_video_register_r
	nop

	move	$3,$2
	lw	$2,24($fp)
	sra	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L335
	nop

$L343:
	nop
	j	$L325
	nop

$L344:
	nop
$L325:
	li	$2,255			# 0xff
$L335:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	m68000_read_memory_8
	.size	m68000_read_memory_8, .-m68000_read_memory_8
	.align	2
	.globl	m68000_read_memory_16
	.set	nomips16
	.set	nomicromips
	.ent	m68000_read_memory_16
	.type	m68000_read_memory_16, @function
m68000_read_memory_16:
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
	ext	$2,$2,0,24
	sw	$2,32($fp)
	lw	$2,32($fp)
	srl	$2,$2,20
	sltu	$3,$2,14
	beq	$3,$0,$L346
	nop

	sll	$3,$2,2
	lui	$2,%hi($L355)
	addiu	$2,$2,%lo($L355)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L355:
	.word	$L347
	.word	$L348
	.word	$L349
	.word	$L350
	.word	$L351
	.word	$L346
	.word	$L346
	.word	$L346
	.word	$L352
	.word	$L346
	.word	$L346
	.word	$L346
	.word	$L353
	.word	$L354
	.text
$L347:
	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lw	$2,32($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	seh	$3,$2
	lui	$2,%hi(memory_region_cpu1)
	lw	$4,%lo(memory_region_cpu1)($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	j	$L356
	nop

$L348:
	lw	$2,32($fp)
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$3,$2
	lbu	$2,0($2)
	seh	$3,$2
	lw	$2,32($fp)
	addiu	$2,$2,1
	andi	$4,$2,0xffff
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	j	$L356
	nop

$L353:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(bios_amask)
	lw	$4,%lo(bios_amask)($2)
	lw	$2,32($fp)
	and	$2,$4,$2
	addu	$2,$3,$2
	lbu	$2,0($2)
	seh	$3,$2
	lui	$2,%hi(memory_region_user1)
	lw	$4,%lo(memory_region_user1)($2)
	lw	$2,32($fp)
	addiu	$5,$2,1
	lui	$2,%hi(bios_amask)
	lw	$2,%lo(bios_amask)($2)
	and	$2,$5,$2
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	j	$L356
	nop

$L354:
	lui	$2,%hi(neogeo_sram)
	lw	$3,%lo(neogeo_sram)($2)
	lw	$2,32($fp)
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	lbu	$2,0($2)
	seh	$3,$2
	lui	$2,%hi(neogeo_sram)
	lw	$4,%lo(neogeo_sram)($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$4,$2
	lbu	$2,0($2)
	sll	$2,$2,8
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	j	$L356
	nop

$L349:
	lui	$2,%hi(neogeo_protection_r)
	lw	$2,%lo(neogeo_protection_r)($2)
	lw	$3,32($fp)
	srl	$3,$3,1
	move	$4,$3
	move	$5,$0
	move	$25,$2
	jalr	$25
	nop

	j	$L356
	nop

$L351:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_paletteram_r
	nop

	j	$L356
	nop

$L352:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_memcard16_r
	nop

	j	$L356
	nop

$L350:
	lw	$2,32($fp)
	srl	$2,$2,16
	addiu	$2,$2,-48
	sltu	$3,$2,13
	beq	$3,$0,$L364
	nop

	sll	$3,$2,2
	lui	$2,%hi($L363)
	addiu	$2,$2,%lo($L363)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L363:
	.word	$L358
	.word	$L365
	.word	$L359
	.word	$L365
	.word	$L360
	.word	$L365
	.word	$L365
	.word	$L365
	.word	$L361
	.word	$L365
	.word	$L365
	.word	$L365
	.word	$L362
	.text
$L358:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_controller1and4_r
	nop

	j	$L356
	nop

$L359:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_timer_r
	nop

	j	$L356
	nop

$L360:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_controller2_r
	nop

	j	$L356
	nop

$L361:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_controller3_r
	nop

	j	$L356
	nop

$L362:
	lw	$2,32($fp)
	srl	$2,$2,1
	move	$4,$2
	move	$5,$0
	jal	neogeo_video_register_r
	nop

	j	$L356
	nop

$L364:
	nop
	j	$L346
	nop

$L365:
	nop
$L346:
	li	$2,65535			# 0xffff
$L356:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	m68000_read_memory_16
	.size	m68000_read_memory_16, .-m68000_read_memory_16
	.align	2
	.globl	m68000_write_memory_8
	.set	nomips16
	.set	nomicromips
	.ent	m68000_write_memory_8
	.type	m68000_write_memory_8, @function
m68000_write_memory_8:
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
	move	$2,$5
	sb	$2,44($fp)
	lw	$2,40($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L367
	nop

	li	$2,8			# 0x8
	j	$L368
	nop

$L367:
	move	$2,$0
$L368:
	sw	$2,24($fp)
	li	$3,255			# 0xff
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	nor	$2,$0,$2
	sh	$2,28($fp)
	lw	$2,40($fp)
	ext	$2,$2,0,24
	sw	$2,40($fp)
	lw	$2,40($fp)
	srl	$2,$2,20
	sltu	$3,$2,14
	beq	$3,$0,$L366
	nop

	sll	$3,$2,2
	lui	$2,%hi($L376)
	addiu	$2,$2,%lo($L376)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L376:
	.word	$L366
	.word	$L370
	.word	$L371
	.word	$L372
	.word	$L373
	.word	$L366
	.word	$L366
	.word	$L366
	.word	$L374
	.word	$L366
	.word	$L366
	.word	$L366
	.word	$L366
	.word	$L375
	.text
$L370:
	lw	$2,40($fp)
	andi	$2,$2,0xffff
	xori	$3,$2,0x1
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$3,$2
	lbu	$3,44($fp)
	sb	$3,0($2)
	j	$L366
	nop

$L371:
	lui	$2,%hi(neogeo_protection_w)
	lw	$2,%lo(neogeo_protection_w)($2)
	lw	$3,40($fp)
	srl	$4,$3,1
	lbu	$5,44($fp)
	lw	$3,24($fp)
	sll	$3,$5,$3
	andi	$3,$3,0xffff
	move	$5,$3
	lhu	$3,28($fp)
	move	$6,$3
	move	$25,$2
	jalr	$25
	nop

	j	$L366
	nop

$L373:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_paletteram_w
	nop

	j	$L366
	nop

$L374:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_memcard16_w
	nop

	j	$L366
	nop

$L375:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_sram16_w
	nop

	j	$L366
	nop

$L372:
	lw	$2,40($fp)
	srl	$2,$2,16
	addiu	$2,$2,-48
	sltu	$3,$2,13
	beq	$3,$0,$L384
	nop

	sll	$3,$2,2
	lui	$2,%hi($L383)
	addiu	$2,$2,%lo($L383)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L383:
	.word	$L378
	.word	$L385
	.word	$L379
	.word	$L385
	.word	$L385
	.word	$L385
	.word	$L385
	.word	$L385
	.word	$L380
	.word	$L385
	.word	$L381
	.word	$L385
	.word	$L382
	.text
$L378:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	watchdog_reset_w
	nop

	j	$L366
	nop

$L379:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_z80_w
	nop

	j	$L366
	nop

$L380:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	io_control_w
	nop

	j	$L366
	nop

$L381:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	system_control_w
	nop

	j	$L366
	nop

$L382:
	lw	$2,40($fp)
	srl	$4,$2,1
	lbu	$3,44($fp)
	lw	$2,24($fp)
	sll	$2,$3,$2
	andi	$2,$2,0xffff
	move	$3,$2
	lhu	$2,28($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_video_register_w
	nop

	j	$L366
	nop

$L384:
	nop
	j	$L366
	nop

$L385:
	nop
$L366:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	m68000_write_memory_8
	.size	m68000_write_memory_8, .-m68000_write_memory_8
	.align	2
	.globl	m68000_write_memory_16
	.set	nomips16
	.set	nomicromips
	.ent	m68000_write_memory_16
	.type	m68000_write_memory_16, @function
m68000_write_memory_16:
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
	move	$2,$5
	sh	$2,36($fp)
	lw	$2,32($fp)
	ext	$2,$2,0,24
	sw	$2,32($fp)
	lw	$2,32($fp)
	srl	$2,$2,20
	sltu	$3,$2,14
	beq	$3,$0,$L386
	nop

	sll	$3,$2,2
	lui	$2,%hi($L394)
	addiu	$2,$2,%lo($L394)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L394:
	.word	$L386
	.word	$L388
	.word	$L389
	.word	$L390
	.word	$L391
	.word	$L386
	.word	$L386
	.word	$L386
	.word	$L392
	.word	$L386
	.word	$L386
	.word	$L386
	.word	$L386
	.word	$L393
	.text
$L388:
	lw	$2,32($fp)
	andi	$4,$2,0xffff
	lhu	$2,36($fp)
	andi	$3,$2,0x00ff
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$4,$2
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	andi	$4,$2,0xffff
	lhu	$2,36($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$3,$2,0x00ff
	lui	$2,%hi(neogeo_ram)
	addiu	$2,$2,%lo(neogeo_ram)
	addu	$2,$4,$2
	sb	$3,0($2)
	j	$L386
	nop

$L389:
	lui	$2,%hi(neogeo_protection_w)
	lw	$2,%lo(neogeo_protection_w)($2)
	lw	$3,32($fp)
	srl	$4,$3,1
	lhu	$3,36($fp)
	move	$5,$3
	move	$6,$0
	move	$25,$2
	jalr	$25
	nop

	j	$L386
	nop

$L391:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	neogeo_paletteram_w
	nop

	j	$L386
	nop

$L392:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	neogeo_memcard16_w
	nop

	j	$L386
	nop

$L393:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	neogeo_sram16_w
	nop

	j	$L386
	nop

$L390:
	lw	$2,32($fp)
	srl	$2,$2,16
	addiu	$2,$2,-48
	sltu	$3,$2,13
	beq	$3,$0,$L402
	nop

	sll	$3,$2,2
	lui	$2,%hi($L401)
	addiu	$2,$2,%lo($L401)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L401:
	.word	$L396
	.word	$L403
	.word	$L397
	.word	$L403
	.word	$L403
	.word	$L403
	.word	$L403
	.word	$L403
	.word	$L398
	.word	$L403
	.word	$L399
	.word	$L403
	.word	$L400
	.text
$L396:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	watchdog_reset_w
	nop

	j	$L386
	nop

$L397:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	neogeo_z80_w
	nop

	j	$L386
	nop

$L398:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	io_control_w
	nop

	j	$L386
	nop

$L399:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	system_control_w
	nop

	j	$L386
	nop

$L400:
	lw	$2,32($fp)
	srl	$3,$2,1
	lhu	$2,36($fp)
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	neogeo_video_register_w
	nop

	j	$L386
	nop

$L402:
	nop
	j	$L386
	nop

$L403:
	nop
$L386:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	m68000_write_memory_16
	.size	m68000_write_memory_16, .-m68000_write_memory_16
	.align	2
	.globl	z80_read_memory_8
	.set	nomips16
	.set	nomicromips
	.ent	z80_read_memory_8
	.type	z80_read_memory_8, @function
z80_read_memory_8:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	lw	$2,8($fp)
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	z80_read_memory_8
	.size	z80_read_memory_8, .-z80_read_memory_8
	.align	2
	.globl	z80_write_memory_8
	.set	nomips16
	.set	nomicromips
	.ent	z80_write_memory_8
	.type	z80_write_memory_8, @function
z80_write_memory_8:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sb	$2,12($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xffff
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,63488			# 0xf800
	sltu	$2,$3,$2
	bne	$2,$0,$L405
	nop

	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	lw	$2,8($fp)
	addu	$2,$3,$2
	lbu	$3,12($fp)
	sb	$3,0($2)
$L405:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	z80_write_memory_8
	.size	z80_write_memory_8, .-z80_write_memory_8
	.align	2
	.globl	state_save_memory
	.set	nomips16
	.set	nomicromips
	.ent	state_save_memory
	.type	state_save_memory, @function
state_save_memory:
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
	lui	$2,%hi(neogeo_bios)
	addiu	$5,$2,%lo(neogeo_bios)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_region)
	addiu	$5,$2,%lo(neogeo_region)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_machine_mode)
	addiu	$5,$2,%lo(neogeo_machine_mode)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_ram)
	addiu	$5,$2,%lo(neogeo_ram)
	li	$6,65536			# 0x10000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	li	$2,65536			# 0x10000
	addu	$3,$3,$2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	li	$2,63488			# 0xf800
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,2048			# 0x800
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2048
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_sram16)
	addiu	$5,$2,%lo(neogeo_sram16)
	li	$6,65536			# 0x10000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	li	$2,65536			# 0x10000
	addu	$3,$3,$2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_hard_dipsw)
	addiu	$5,$2,%lo(neogeo_hard_dipsw)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
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
	.end	state_save_memory
	.size	state_save_memory, .-state_save_memory
	.align	2
	.globl	state_load_memory
	.set	nomips16
	.set	nomicromips
	.ent	state_load_memory
	.type	state_load_memory, @function
state_load_memory:
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
	addiu	$2,$fp,24
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,48($fp)
	jal	fread
	nop

	addiu	$2,$fp,28
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,48($fp)
	jal	fread
	nop

	addiu	$2,$fp,32
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,48($fp)
	jal	fread
	nop

	lui	$2,%hi(neogeo_ram)
	addiu	$4,$2,%lo(neogeo_ram)
	li	$5,1			# 0x1
	li	$6,65536			# 0x10000
	lw	$7,48($fp)
	jal	fread
	nop

	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	li	$2,63488			# 0xf800
	addu	$2,$3,$2
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,2048			# 0x800
	lw	$7,48($fp)
	jal	fread
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$4,$2,%lo(neogeo_sram16)
	li	$5,1			# 0x1
	li	$6,65536			# 0x10000
	lw	$7,48($fp)
	jal	fread
	nop

	addiu	$2,$fp,36
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,48($fp)
	jal	fread
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L409
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	beq	$3,$2,$L409
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,33			# 0x21
	beq	$3,$2,$L409
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	lw	$2,24($fp)
	bne	$3,$2,$L410
	nop

	lui	$2,%hi(neogeo_region)
	lw	$3,%lo(neogeo_region)($2)
	lw	$2,28($fp)
	bne	$3,$2,$L410
	nop

	lui	$2,%hi(neogeo_machine_mode)
	lw	$3,%lo(neogeo_machine_mode)($2)
	lw	$2,32($fp)
	beq	$3,$2,$L409
	nop

$L410:
	lw	$3,24($fp)
	lui	$2,%hi(neogeo_bios)
	sw	$3,%lo(neogeo_bios)($2)
	lw	$3,28($fp)
	lui	$2,%hi(neogeo_region)
	sw	$3,%lo(neogeo_region)($2)
	lw	$3,32($fp)
	lui	$2,%hi(neogeo_machine_mode)
	sw	$3,%lo(neogeo_machine_mode)($2)
	lui	$2,%hi(state_reload_bios)
	li	$3,1			# 0x1
	sw	$3,%lo(state_reload_bios)($2)
$L409:
	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L411
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	beq	$3,$2,$L411
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,33			# 0x21
	bne	$3,$2,$L408
	nop

$L411:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_region_user1)
	lw	$4,%lo(memory_region_user1)($2)
	lui	$2,%hi(neogeo_hard_dipsw)
	lw	$2,%lo(neogeo_hard_dipsw)($2)
	addiu	$2,$2,1
	sll	$2,$2,17
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,131072			# 0x20000
	jal	memcpy
	nop

$L408:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_memory
	.size	state_load_memory, .-state_load_memory
	.align	2
	.globl	reload_bios
	.set	nomips16
	.set	nomicromips
	.ent	reload_bios
	.type	reload_bios, @function
reload_bios:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	li	$4,1			# 0x1
	jal	load_rom_user1
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	reload_bios
	.size	reload_bios, .-reload_bios
	.ident	"GCC: (GNU) 4.5.2"
