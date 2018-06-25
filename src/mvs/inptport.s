	.file	1 "inptport.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	option_controller,4,4

	.comm	neogeo_port_value,6,4

	.comm	analog_sensitivity,4,4

	.comm	neogeo_dipswitch,4,4

	.comm	neogeo_input_mode,4,4

	.comm	input_analog_value,8,4
	.local	service_switch
	.comm	service_switch,4,4
	.local	poll_pad
	.comm	poll_pad,4,4
	.text
	.align	2
	.globl	check_input_mode
	.set	nomips16
	.set	nomicromips
	.ent	check_input_mode
	.type	check_input_mode, @function
check_input_mode:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L2
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	beq	$3,$2,$L2
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,33			# 0x21
	beq	$3,$2,$L2
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,34			# 0x22
	beq	$3,$2,$L2
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,10			# 0xa
	bne	$3,$2,$L3
	nop

$L2:
	lui	$2,%hi(neogeo_input_mode)
	li	$3,1			# 0x1
	sw	$3,%lo(neogeo_input_mode)($2)
	j	$L1
	nop

$L3:
	lui	$2,%hi(neogeo_machine_mode)
	lw	$2,%lo(neogeo_machine_mode)($2)
	bne	$2,$0,$L5
	nop

	lui	$2,%hi(memory_region_user1)
	lw	$2,%lo(memory_region_user1)($2)
	addiu	$2,$2,512
	lbu	$2,0($2)
	andi	$2,$2,0x8000
	beq	$2,$0,$L6
	nop

	lui	$2,%hi(neogeo_input_mode)
	sw	$0,%lo(neogeo_input_mode)($2)
	j	$L7
	nop

$L6:
	lui	$2,%hi(neogeo_input_mode)
	li	$3,1			# 0x1
	sw	$3,%lo(neogeo_input_mode)($2)
	j	$L7
	nop

$L5:
	lui	$2,%hi(neogeo_machine_mode)
	lw	$2,%lo(neogeo_machine_mode)($2)
	addiu	$3,$2,-1
	lui	$2,%hi(neogeo_input_mode)
	sw	$3,%lo(neogeo_input_mode)($2)
$L7:
	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,566			# 0x236
	beq	$3,$2,$L11
	nop

$L8:
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	sltu	$3,$2,25
	beq	$3,$0,$L1
	nop

	li	$3,1572864			# 0x180000
	ori	$3,$3,0x80
	sll	$3,$3,$2
	bltz	$3,$L9
	nop

	li	$3,458752			# 0x70000
	ori	$3,$3,0xff00
	sll	$2,$3,$2
	bgez	$2,$L1
	nop

$L10:
	lui	$2,%hi(neogeo_sram16)
	addiu	$2,$2,%lo(neogeo_sram16)
	lhu	$2,2($2)
	seh	$2,$2
	srl	$3,$2,31
	lui	$2,%hi(neogeo_input_mode)
	sw	$3,%lo(neogeo_input_mode)($2)
	j	$L1
	nop

$L9:
	lui	$2,%hi(neogeo_input_mode)
	sw	$0,%lo(neogeo_input_mode)($2)
	nop
	j	$L1
	nop

$L11:
	nop
$L1:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	check_input_mode
	.size	check_input_mode, .-check_input_mode
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport0
	.type	update_inputport0, @function
update_inputport0:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,566			# 0x236
	beq	$2,$3,$L14
	nop

	li	$3,567			# 0x237
	beq	$2,$3,$L15
	nop

	j	$L30
	nop

$L14:
	lhu	$2,24($fp)
	andi	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L16
	nop

	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
$L16:
	lhu	$2,24($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L17
	nop

	lbu	$3,8($fp)
	li	$2,-3			# 0xfffffffffffffffd
	and	$2,$3,$2
	sb	$2,8($fp)
$L17:
	lhu	$2,24($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L18
	nop

	lbu	$3,8($fp)
	li	$2,-5			# 0xfffffffffffffffb
	and	$2,$3,$2
	sb	$2,8($fp)
$L18:
	lhu	$2,24($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L19
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L19:
	lhu	$2,24($fp)
	andi	$2,$2,0x10
	beq	$2,$0,$L20
	nop

	lbu	$3,8($fp)
	li	$2,-17			# 0xffffffffffffffef
	and	$2,$3,$2
	sb	$2,8($fp)
$L20:
	lhu	$2,24($fp)
	andi	$2,$2,0x20
	beq	$2,$0,$L31
	nop

	lbu	$3,8($fp)
	li	$2,-33			# 0xffffffffffffffdf
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L22
	nop

$L15:
	lhu	$2,24($fp)
	andi	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L23
	nop

	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
$L23:
	lhu	$2,24($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L24
	nop

	lbu	$3,8($fp)
	li	$2,-3			# 0xfffffffffffffffd
	and	$2,$3,$2
	sb	$2,8($fp)
$L24:
	lhu	$2,24($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L25
	nop

	lbu	$3,8($fp)
	li	$2,-5			# 0xfffffffffffffffb
	and	$2,$3,$2
	sb	$2,8($fp)
$L25:
	lhu	$2,24($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L26
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L26:
	lhu	$2,24($fp)
	andi	$2,$2,0x10
	beq	$2,$0,$L27
	nop

	lbu	$2,8($fp)
	andi	$2,$2,0x6f
	sb	$2,8($fp)
$L27:
	lhu	$2,24($fp)
	andi	$2,$2,0x20
	beq	$2,$0,$L28
	nop

	lbu	$3,8($fp)
	li	$2,-33			# 0xffffffffffffffdf
	and	$2,$3,$2
	sb	$2,8($fp)
$L28:
	lhu	$2,24($fp)
	andi	$2,$2,0x40
	beq	$2,$0,$L32
	nop

	lbu	$3,8($fp)
	li	$2,-65			# 0xffffffffffffffbf
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L22
	nop

$L30:
	lhu	$2,24($fp)
	seb	$2,$2
	nor	$2,$0,$2
	seb	$3,$2
	lb	$2,8($fp)
	and	$2,$3,$2
	seb	$2,$2
	sb	$2,8($fp)
	j	$L22
	nop

$L31:
	nop
	j	$L22
	nop

$L32:
	nop
$L22:
	lui	$2,%hi(neogeo_port_value)
	lbu	$3,8($fp)
	sb	$3,%lo(neogeo_port_value)($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport0
	.size	update_inputport0, .-update_inputport0
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport1
	.type	update_inputport1, @function
update_inputport1:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,566			# 0x236
	beq	$2,$3,$L35
	nop

	li	$3,567			# 0x237
	beq	$2,$3,$L36
	nop

	j	$L51
	nop

$L35:
	lhu	$2,24($fp)
	andi	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L37
	nop

	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
$L37:
	lhu	$2,24($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L38
	nop

	lbu	$3,8($fp)
	li	$2,-3			# 0xfffffffffffffffd
	and	$2,$3,$2
	sb	$2,8($fp)
$L38:
	lhu	$2,24($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L39
	nop

	lbu	$3,8($fp)
	li	$2,-5			# 0xfffffffffffffffb
	and	$2,$3,$2
	sb	$2,8($fp)
$L39:
	lhu	$2,24($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L40
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L40:
	lhu	$2,24($fp)
	andi	$2,$2,0x10
	beq	$2,$0,$L41
	nop

	lbu	$3,8($fp)
	li	$2,-17			# 0xffffffffffffffef
	and	$2,$3,$2
	sb	$2,8($fp)
$L41:
	lhu	$2,24($fp)
	andi	$2,$2,0x20
	beq	$2,$0,$L52
	nop

	lbu	$3,8($fp)
	li	$2,-33			# 0xffffffffffffffdf
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L43
	nop

$L36:
	lhu	$2,24($fp)
	andi	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L44
	nop

	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
$L44:
	lhu	$2,24($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L45
	nop

	lbu	$3,8($fp)
	li	$2,-3			# 0xfffffffffffffffd
	and	$2,$3,$2
	sb	$2,8($fp)
$L45:
	lhu	$2,24($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L46
	nop

	lbu	$3,8($fp)
	li	$2,-5			# 0xfffffffffffffffb
	and	$2,$3,$2
	sb	$2,8($fp)
$L46:
	lhu	$2,24($fp)
	andi	$2,$2,0x8
	beq	$2,$0,$L47
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L47:
	lhu	$2,24($fp)
	andi	$2,$2,0x10
	beq	$2,$0,$L48
	nop

	lbu	$2,8($fp)
	andi	$2,$2,0x6f
	sb	$2,8($fp)
$L48:
	lhu	$2,24($fp)
	andi	$2,$2,0x20
	beq	$2,$0,$L49
	nop

	lbu	$3,8($fp)
	li	$2,-33			# 0xffffffffffffffdf
	and	$2,$3,$2
	sb	$2,8($fp)
$L49:
	lhu	$2,24($fp)
	andi	$2,$2,0x40
	beq	$2,$0,$L53
	nop

	lbu	$3,8($fp)
	li	$2,-65			# 0xffffffffffffffbf
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L43
	nop

$L51:
	lhu	$2,24($fp)
	seb	$2,$2
	nor	$2,$0,$2
	seb	$3,$2
	lb	$2,8($fp)
	and	$2,$3,$2
	seb	$2,$2
	sb	$2,8($fp)
	j	$L43
	nop

$L52:
	nop
	j	$L43
	nop

$L53:
	nop
$L43:
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$3,8($fp)
	sb	$3,1($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport1
	.size	update_inputport1, .-update_inputport1
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport2
	.type	update_inputport2, @function
update_inputport2:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sh	$3,24($fp)
	sh	$2,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,4096			# 0x1000
	beq	$2,$3,$L56
	nop

	li	$3,4097			# 0x1001
	beq	$2,$3,$L66
	nop

	j	$L65
	nop

$L56:
	lhu	$2,24($fp)
	andi	$2,$2,0x100
	bne	$2,$0,$L58
	nop

	lhu	$2,28($fp)
	andi	$2,$2,0x100
	beq	$2,$0,$L67
	nop

$L58:
	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L60
	nop

$L65:
	lhu	$2,28($fp)
	andi	$2,$2,0x100
	beq	$2,$0,$L61
	nop

	lbu	$3,8($fp)
	li	$2,-5			# 0xfffffffffffffffb
	and	$2,$3,$2
	sb	$2,8($fp)
$L61:
	lui	$2,%hi(neogeo_input_mode)
	lw	$2,%lo(neogeo_input_mode)($2)
	bne	$2,$0,$L62
	nop

	lhu	$2,28($fp)
	andi	$2,$2,0x200
	beq	$2,$0,$L62
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L62:
	lhu	$2,24($fp)
	andi	$2,$2,0x100
	beq	$2,$0,$L63
	nop

	lbu	$3,8($fp)
	li	$2,-2			# 0xfffffffffffffffe
	and	$2,$3,$2
	sb	$2,8($fp)
$L63:
	lui	$2,%hi(neogeo_input_mode)
	lw	$2,%lo(neogeo_input_mode)($2)
	bne	$2,$0,$L68
	nop

	lhu	$2,24($fp)
	andi	$2,$2,0x200
	beq	$2,$0,$L69
	nop

	lbu	$3,8($fp)
	li	$2,-3			# 0xfffffffffffffffd
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L60
	nop

$L66:
	nop
	j	$L60
	nop

$L67:
	nop
	j	$L60
	nop

$L68:
	nop
	j	$L60
	nop

$L69:
	nop
$L60:
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$3,8($fp)
	sb	$3,2($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport2
	.size	update_inputport2, .-update_inputport2
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport4
	.type	update_inputport4, @function
update_inputport4:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sh	$3,24($fp)
	sh	$2,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	move	$3,$2
	li	$2,4096			# 0x1000
	beq	$3,$2,$L76
	nop

	li	$2,63			# 0x3f
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_input_mode)
	lw	$2,%lo(neogeo_input_mode)($2)
	beq	$2,$0,$L77
	nop

	lhu	$2,28($fp)
	andi	$2,$2,0x200
	beq	$2,$0,$L75
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
$L75:
	lhu	$2,24($fp)
	andi	$2,$2,0x200
	beq	$2,$0,$L78
	nop

	lbu	$3,8($fp)
	li	$2,-9			# 0xfffffffffffffff7
	and	$2,$3,$2
	sb	$2,8($fp)
	j	$L73
	nop

$L76:
	nop
	j	$L73
	nop

$L77:
	nop
	j	$L73
	nop

$L78:
	nop
$L73:
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$3,8($fp)
	sb	$3,4($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport4
	.size	update_inputport4, .-update_inputport4
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport5
	.type	update_inputport5, @function
update_inputport5:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	li	$2,-64			# 0xffffffffffffffc0
	sb	$2,8($fp)
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$3,8($fp)
	sb	$3,5($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport5
	.size	update_inputport5, .-update_inputport5
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	irrmaze_update_analog_port
	.type	irrmaze_update_analog_port, @function
irrmaze_update_analog_port:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	irrmaze_update_analog_port
	.size	irrmaze_update_analog_port, .-irrmaze_update_analog_port
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	popbounc_update_analog_port
	.type	popbounc_update_analog_port, @function
popbounc_update_analog_port:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	popbounc_update_analog_port
	.size	popbounc_update_analog_port, .-popbounc_update_analog_port
	.align	2
	.globl	input_init
	.set	nomips16
	.set	nomicromips
	.ent	input_init
	.type	input_init, @function
input_init:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(service_switch)
	sw	$0,%lo(service_switch)($2)
	lui	$2,%hi(neogeo_port_value)
	addiu	$4,$2,%lo(neogeo_port_value)
	li	$5,255			# 0xff
	li	$6,6			# 0x6
	jal	memset
	nop

	lui	$2,%hi(input_analog_value)
	li	$3,127			# 0x7f
	sw	$3,%lo(input_analog_value)($2)
	lui	$2,%hi(input_analog_value)
	addiu	$2,$2,%lo(input_analog_value)
	li	$3,127			# 0x7f
	sw	$3,4($2)
	lui	$2,%hi(neogeo_dipswitch)
	li	$3,255			# 0xff
	sw	$3,%lo(neogeo_dipswitch)($2)
	lui	$2,%hi(poll_pad)
	lui	$3,%hi(poll_gamepad)
	addiu	$3,$3,%lo(poll_gamepad)
	sw	$3,%lo(poll_pad)($2)
	li	$2,1			# 0x1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	input_init
	.size	input_init, .-input_init
	.align	2
	.globl	input_shutdown
	.set	nomips16
	.set	nomicromips
	.ent	input_shutdown
	.type	input_shutdown, @function
input_shutdown:
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
	.end	input_shutdown
	.size	input_shutdown, .-input_shutdown
	.align	2
	.globl	input_reset
	.set	nomips16
	.set	nomicromips
	.ent	input_reset
	.type	input_reset, @function
input_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_port_value)
	addiu	$4,$2,%lo(neogeo_port_value)
	li	$5,255			# 0xff
	li	$6,6			# 0x6
	jal	memset
	nop

	lui	$2,%hi(input_analog_value)
	li	$3,127			# 0x7f
	sw	$3,%lo(input_analog_value)($2)
	lui	$2,%hi(input_analog_value)
	addiu	$2,$2,%lo(input_analog_value)
	li	$3,127			# 0x7f
	sw	$3,4($2)
	lui	$2,%hi(service_switch)
	sw	$0,%lo(service_switch)($2)
	jal	check_input_mode
	nop

	lui	$2,%hi(neogeo_input_mode)
	lw	$2,%lo(neogeo_input_mode)($2)
	beq	$2,$0,$L84
	nop

	lui	$2,%hi(neogeo_dipswitch)
	lw	$2,%lo(neogeo_dipswitch)($2)
	andi	$3,$2,0x00ff
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	sb	$3,3($2)
$L84:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	input_reset
	.size	input_reset, .-input_reset
	.align	2
	.globl	update_inputport
	.set	nomips16
	.set	nomicromips
	.ent	update_inputport
	.type	update_inputport, @function
update_inputport:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$0,28($fp)
	sh	$0,24($fp)
	sh	$0,26($fp)
	lui	$2,%hi(service_switch)
	sw	$0,%lo(service_switch)($2)
	lui	$2,%hi(poll_pad)
	lw	$2,%lo(poll_pad)($2)
	beq	$2,$0,$L87
	nop

	lui	$2,%hi(poll_pad)
	lw	$2,%lo(poll_pad)($2)
	move	$25,$2
	jalr	$25
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	sh	$2,24($fp)
	lw	$2,28($fp)
	srl	$2,$2,16
	sh	$2,26($fp)
$L87:
	lhu	$2,24($fp)
	move	$4,$2
	jal	update_inputport0
	nop

	lhu	$2,26($fp)
	move	$4,$2
	jal	update_inputport1
	nop

	lhu	$3,24($fp)
	lhu	$2,26($fp)
	move	$4,$3
	move	$5,$2
	jal	update_inputport2
	nop

	lhu	$3,24($fp)
	lhu	$2,26($fp)
	move	$4,$3
	move	$5,$2
	jal	update_inputport4
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_inputport
	.size	update_inputport, .-update_inputport
	.align	2
	.globl	state_save_input
	.set	nomips16
	.set	nomicromips
	.ent	state_save_input
	.type	state_save_input, @function
state_save_input:
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
	lui	$2,%hi(option_controller)
	addiu	$5,$2,%lo(option_controller)
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
	lui	$2,%hi(neogeo_dipswitch)
	addiu	$5,$2,%lo(neogeo_dipswitch)
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
	lui	$2,%hi(input_analog_value)
	addiu	$5,$2,%lo(input_analog_value)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(input_analog_value+4)
	addiu	$2,$2,%lo(input_analog_value+4)
	move	$4,$3
	move	$5,$2
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
	.end	state_save_input
	.size	state_save_input, .-state_save_input
	.align	2
	.globl	state_load_input
	.set	nomips16
	.set	nomicromips
	.ent	state_load_input
	.type	state_load_input, @function
state_load_input:
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
	lui	$2,%hi(option_controller)
	addiu	$4,$2,%lo(option_controller)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(neogeo_dipswitch)
	addiu	$4,$2,%lo(neogeo_dipswitch)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(input_analog_value)
	addiu	$4,$2,%lo(input_analog_value)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(input_analog_value+4)
	addiu	$2,$2,%lo(input_analog_value+4)
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	jal	check_input_mode
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_input
	.size	state_load_input, .-state_load_input
	.ident	"GCC: (GNU) 4.5.2"
