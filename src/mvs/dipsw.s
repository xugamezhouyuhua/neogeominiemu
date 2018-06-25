	.file	1 "dipsw.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	neogeo_hard_dipsw,4,4
	.rdata
	.align	2
$LC0:
	.ascii	"Test Switch\000"
	.align	2
$LC1:
	.ascii	"Off\000"
	.align	2
$LC2:
	.ascii	"On\000"
	.align	2
$LC3:
	.ascii	"Coin Chutes\000"
	.align	2
$LC4:
	.ascii	"1\000"
	.align	2
$LC5:
	.ascii	"2\000"
	.align	2
$LC6:
	.ascii	"Autofire (in some games)\000"
	.align	2
$LC7:
	.ascii	"COMM Settings\000"
	.align	2
$LC8:
	.ascii	"3\000"
	.align	2
$LC9:
	.ascii	"4\000"
	.align	2
$LC10:
	.ascii	"Free Play\000"
	.align	2
$LC11:
	.ascii	"Freeze\000"
	.align	2
$LC12:
	.ascii	"\012\000"
	.align	2
$LC13:
	.ascii	"Return to main menu\000"
	.align	2
$LC14:
	.ascii	"\000\000"
	.data
	.align	2
	.type	dipswitch_default, @object
	.size	dipswitch_default, 396
dipswitch_default:
	.word	$LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	$LC4
	.word	$LC5
	.space	28
	.word	$LC6
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	$LC1
	.word	$LC4
	.word	$LC5
	.word	$LC8
	.word	$LC9
	.space	16
	.word	$LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.rdata
	.align	2
$LC15:
	.ascii	"Hard Dip 3 (Region)\000"
	.align	2
$LC16:
	.ascii	"Asia\000"
	.align	2
$LC17:
	.ascii	"Japan\000"
	.data
	.align	2
	.type	dipswitch_pcb, @object
	.size	dipswitch_pcb, 440
dipswitch_pcb:
	.word	$LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	$LC4
	.word	$LC5
	.space	28
	.word	$LC6
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	$LC1
	.word	$LC4
	.word	$LC5
	.word	$LC8
	.word	$LC9
	.space	16
	.word	$LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC15
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	$LC16
	.word	$LC17
	.space	28
	.word	$LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.rdata
	.align	2
$LC18:
	.ascii	"Mahjong Control Panel\000"
	.data
	.align	2
	.type	dipswitch_mjneogeo, @object
	.size	dipswitch_mjneogeo, 396
dipswitch_mjneogeo:
	.word	$LC0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC3
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.word	$LC4
	.word	$LC5
	.space	28
	.word	$LC18
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC7
	.byte	1
	.byte	56
	.byte	0
	.byte	4
	.word	$LC1
	.word	$LC4
	.word	$LC5
	.word	$LC8
	.word	$LC9
	.space	16
	.word	$LC10
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC11
	.byte	1
	.byte	-128
	.byte	0
	.byte	1
	.word	$LC1
	.word	$LC2
	.space	28
	.word	$LC12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC13
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.word	$LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.space	32
	.text
	.align	2
	.globl	load_dipswitch
	.set	nomips16
	.set	nomicromips
	.ent	load_dipswitch
	.type	load_dipswitch, @function
load_dipswitch:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_dipswitch)
	lw	$2,%lo(neogeo_dipswitch)($2)
	andi	$2,$2,0x00ff
	nor	$2,$0,$2
	sb	$2,12($fp)
	sw	$0,8($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,54			# 0x36
	beq	$2,$3,$L3
	nop

	slt	$3,$2,55
	beq	$3,$0,$L4
	nop

	li	$3,4			# 0x4
	beq	$2,$3,$L3
	nop

	li	$3,39			# 0x27
	beq	$2,$3,$L3
	nop

	j	$L2
	nop

$L4:
	li	$3,72			# 0x48
	beq	$2,$3,$L3
	nop

	li	$3,152			# 0x98
	bne	$2,$3,$L2
	nop

$L3:
	lui	$2,%hi(dipswitch_mjneogeo)
	addiu	$2,$2,%lo(dipswitch_mjneogeo)
	sw	$2,8($fp)
	j	$L5
	nop

$L2:
	lui	$2,%hi(dipswitch_default)
	addiu	$2,$2,%lo(dipswitch_default)
	sw	$2,8($fp)
	nop
$L5:
	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L6
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	bne	$3,$2,$L7
	nop

$L6:
	lui	$2,%hi(dipswitch_pcb)
	addiu	$2,$2,%lo(dipswitch_pcb)
	sw	$2,8($fp)
	lw	$2,8($fp)
	addiu	$2,$2,264
	lui	$3,%hi(neogeo_hard_dipsw)
	lw	$3,%lo(neogeo_hard_dipsw)($3)
	andi	$3,$3,0x00ff
	sb	$3,6($2)
$L7:
	lbu	$2,12($fp)
	andi	$2,$2,0x1
	andi	$3,$2,0x00ff
	lw	$2,8($fp)
	sb	$3,6($2)
	lw	$2,8($fp)
	addiu	$2,$2,44
	lbu	$3,12($fp)
	andi	$3,$3,0x2
	sltu	$3,$0,$3
	andi	$3,$3,0x00ff
	sb	$3,6($2)
	lw	$2,8($fp)
	addiu	$2,$2,88
	lbu	$3,12($fp)
	andi	$3,$3,0x4
	sltu	$3,$0,$3
	andi	$3,$3,0x00ff
	sb	$3,6($2)
	lw	$2,8($fp)
	addiu	$2,$2,176
	lbu	$3,12($fp)
	andi	$3,$3,0x40
	sltu	$3,$0,$3
	andi	$3,$3,0x00ff
	sb	$3,6($2)
	lw	$2,8($fp)
	addiu	$2,$2,220
	lb	$3,12($fp)
	andi	$3,$3,0x00ff
	srl	$3,$3,7
	andi	$3,$3,0x00ff
	sb	$3,6($2)
	lui	$2,%hi(neogeo_dipswitch)
	lw	$2,%lo(neogeo_dipswitch)($2)
	andi	$2,$2,0x38
	li	$3,32			# 0x20
	beq	$2,$3,$L11
	nop

	slt	$3,$2,33
	beq	$3,$0,$L14
	nop

	beq	$2,$0,$L9
	nop

	li	$3,16			# 0x10
	beq	$2,$3,$L10
	nop

	j	$L8
	nop

$L14:
	li	$3,48			# 0x30
	beq	$2,$3,$L12
	nop

	li	$3,56			# 0x38
	beq	$2,$3,$L13
	nop

	j	$L8
	nop

$L9:
	lw	$2,8($fp)
	addiu	$2,$2,132
	li	$3,4			# 0x4
	sb	$3,6($2)
	j	$L8
	nop

$L10:
	lw	$2,8($fp)
	addiu	$2,$2,132
	li	$3,3			# 0x3
	sb	$3,6($2)
	j	$L8
	nop

$L11:
	lw	$2,8($fp)
	addiu	$2,$2,132
	li	$3,2			# 0x2
	sb	$3,6($2)
	j	$L8
	nop

$L12:
	lw	$2,8($fp)
	addiu	$2,$2,132
	li	$3,1			# 0x1
	sb	$3,6($2)
	j	$L8
	nop

$L13:
	lw	$2,8($fp)
	addiu	$2,$2,132
	sb	$0,6($2)
	nop
$L8:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	load_dipswitch
	.size	load_dipswitch, .-load_dipswitch
	.align	2
	.globl	save_dipswitch
	.set	nomips16
	.set	nomicromips
	.ent	save_dipswitch
	.type	save_dipswitch, @function
save_dipswitch:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$0,12($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,54			# 0x36
	beq	$2,$3,$L17
	nop

	slt	$3,$2,55
	beq	$3,$0,$L18
	nop

	li	$3,4			# 0x4
	beq	$2,$3,$L17
	nop

	li	$3,39			# 0x27
	beq	$2,$3,$L17
	nop

	j	$L16
	nop

$L18:
	li	$3,72			# 0x48
	beq	$2,$3,$L17
	nop

	li	$3,152			# 0x98
	bne	$2,$3,$L16
	nop

$L17:
	lui	$2,%hi(dipswitch_mjneogeo)
	addiu	$2,$2,%lo(dipswitch_mjneogeo)
	sw	$2,12($fp)
	j	$L19
	nop

$L16:
	lui	$2,%hi(dipswitch_default)
	addiu	$2,$2,%lo(dipswitch_default)
	sw	$2,12($fp)
	nop
$L19:
	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L20
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	bne	$3,$2,$L21
	nop

$L20:
	lui	$2,%hi(dipswitch_pcb)
	addiu	$2,$2,%lo(dipswitch_pcb)
	sw	$2,12($fp)
	lw	$2,12($fp)
	addiu	$2,$2,264
	lbu	$2,6($2)
	move	$3,$2
	lui	$2,%hi(neogeo_hard_dipsw)
	sw	$3,%lo(neogeo_hard_dipsw)($2)
$L21:
	sb	$0,8($fp)
	lw	$2,12($fp)
	lbu	$2,6($2)
	sltu	$2,$2,1
	seb	$3,$2
	lb	$2,8($fp)
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,44
	lbu	$2,6($2)
	beq	$2,$0,$L22
	nop

	move	$2,$0
	j	$L23
	nop

$L22:
	li	$2,2			# 0x2
$L23:
	lb	$3,8($fp)
	or	$2,$2,$3
	seb	$2,$2
	sb	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,88
	lbu	$2,6($2)
	beq	$2,$0,$L24
	nop

	move	$2,$0
	j	$L25
	nop

$L24:
	li	$2,4			# 0x4
$L25:
	lb	$3,8($fp)
	or	$2,$2,$3
	seb	$2,$2
	sb	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,176
	lbu	$2,6($2)
	beq	$2,$0,$L26
	nop

	move	$2,$0
	j	$L27
	nop

$L26:
	li	$2,64			# 0x40
$L27:
	lb	$3,8($fp)
	or	$2,$2,$3
	seb	$2,$2
	sb	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,220
	lbu	$2,6($2)
	beq	$2,$0,$L28
	nop

	move	$2,$0
	j	$L29
	nop

$L28:
	li	$2,-128			# 0xffffffffffffff80
$L29:
	lb	$3,8($fp)
	or	$2,$2,$3
	seb	$2,$2
	sb	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,132
	lbu	$2,6($2)
	sltu	$3,$2,5
	beq	$3,$0,$L30
	nop

	sll	$3,$2,2
	lui	$2,%hi($L36)
	addiu	$2,$2,%lo($L36)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L36:
	.word	$L31
	.word	$L32
	.word	$L33
	.word	$L34
	.word	$L37
	.text
$L31:
	lbu	$2,8($fp)
	ori	$2,$2,0x38
	sb	$2,8($fp)
	j	$L30
	nop

$L32:
	lbu	$2,8($fp)
	ori	$2,$2,0x30
	sb	$2,8($fp)
	j	$L30
	nop

$L33:
	lbu	$2,8($fp)
	ori	$2,$2,0x20
	sb	$2,8($fp)
	j	$L30
	nop

$L34:
	lbu	$2,8($fp)
	ori	$2,$2,0x10
	sb	$2,8($fp)
	j	$L30
	nop

$L37:
	nop
$L30:
	lbu	$3,8($fp)
	lui	$2,%hi(neogeo_dipswitch)
	sw	$3,%lo(neogeo_dipswitch)($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	save_dipswitch
	.size	save_dipswitch, .-save_dipswitch
	.ident	"GCC: (GNU) 4.5.2"
