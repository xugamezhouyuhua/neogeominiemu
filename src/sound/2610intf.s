	.file	1 "2610intf.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	YM2610_sh_start
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_sh_start
	.type	YM2610_sh_start, @function
YM2610_sh_start:
	.frame	$fp,64,$31		# vars= 16, regs= 2/0, args= 32, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_sound1)
	lw	$2,%lo(memory_region_sound1)($2)
	sw	$2,48($fp)
	lui	$2,%hi(memory_length_sound1)
	lw	$2,%lo(memory_length_sound1)($2)
	sw	$2,52($fp)
	lui	$2,%hi(memory_length_sound2)
	lw	$2,%lo(memory_length_sound2)($2)
	beq	$2,$0,$L2
	nop

	lui	$2,%hi(memory_region_sound2)
	lw	$2,%lo(memory_region_sound2)($2)
	sw	$2,40($fp)
	lui	$2,%hi(memory_length_sound2)
	lw	$2,%lo(memory_length_sound2)($2)
	sw	$2,44($fp)
	j	$L3
	nop

$L2:
	lui	$2,%hi(memory_region_sound1)
	lw	$2,%lo(memory_region_sound1)($2)
	sw	$2,40($fp)
	lui	$2,%hi(memory_length_sound1)
	lw	$2,%lo(memory_length_sound1)($2)
	sw	$2,44($fp)
$L3:
	lw	$2,44($fp)
	sw	$2,16($sp)
	lui	$2,%hi(TimerHandler)
	addiu	$2,$2,%lo(TimerHandler)
	sw	$2,20($sp)
	lui	$2,%hi(neogeo_sound_irq)
	addiu	$2,$2,%lo(neogeo_sound_irq)
	sw	$2,24($sp)
	li	$2,7995392			# 0x7a0000
	ori	$4,$2,0x1200
	lw	$5,48($fp)
	lw	$6,52($fp)
	lw	$7,40($fp)
	jal	YM2610Init
	nop

	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_sh_start
	.size	YM2610_sh_start, .-YM2610_sh_start
	.align	2
	.globl	YM2610_sh_stop
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_sh_stop
	.type	YM2610_sh_stop, @function
YM2610_sh_stop:
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
	.end	YM2610_sh_stop
	.size	YM2610_sh_stop, .-YM2610_sh_stop
	.align	2
	.globl	YM2610_sh_reset
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_sh_reset
	.type	YM2610_sh_reset, @function
YM2610_sh_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	YM2610Reset
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_sh_reset
	.size	YM2610_sh_reset, .-YM2610_sh_reset
	.align	2
	.globl	YM2610_status_port_A_r
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_status_port_A_r
	.type	YM2610_status_port_A_r, @function
YM2610_status_port_A_r:
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
	move	$4,$0
	jal	YM2610Read
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_status_port_A_r
	.size	YM2610_status_port_A_r, .-YM2610_status_port_A_r
	.align	2
	.globl	YM2610_status_port_B_r
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_status_port_B_r
	.type	YM2610_status_port_B_r, @function
YM2610_status_port_B_r:
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
	li	$4,2			# 0x2
	jal	YM2610Read
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_status_port_B_r
	.size	YM2610_status_port_B_r, .-YM2610_status_port_B_r
	.align	2
	.globl	YM2610_read_port_r
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_read_port_r
	.type	YM2610_read_port_r, @function
YM2610_read_port_r:
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
	li	$4,1			# 0x1
	jal	YM2610Read
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_read_port_r
	.size	YM2610_read_port_r, .-YM2610_read_port_r
	.align	2
	.globl	YM2610_control_port_A_w
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_control_port_A_w
	.type	YM2610_control_port_A_w, @function
YM2610_control_port_A_w:
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
	sb	$2,36($fp)
	lbu	$2,36($fp)
	move	$4,$0
	move	$5,$2
	jal	YM2610Write
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_control_port_A_w
	.size	YM2610_control_port_A_w, .-YM2610_control_port_A_w
	.align	2
	.globl	YM2610_control_port_B_w
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_control_port_B_w
	.type	YM2610_control_port_B_w, @function
YM2610_control_port_B_w:
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
	sb	$2,36($fp)
	lbu	$2,36($fp)
	li	$4,2			# 0x2
	move	$5,$2
	jal	YM2610Write
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_control_port_B_w
	.size	YM2610_control_port_B_w, .-YM2610_control_port_B_w
	.align	2
	.globl	YM2610_data_port_A_w
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_data_port_A_w
	.type	YM2610_data_port_A_w, @function
YM2610_data_port_A_w:
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
	sb	$2,36($fp)
	lbu	$2,36($fp)
	li	$4,1			# 0x1
	move	$5,$2
	jal	YM2610Write
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_data_port_A_w
	.size	YM2610_data_port_A_w, .-YM2610_data_port_A_w
	.align	2
	.globl	YM2610_data_port_B_w
	.set	nomips16
	.set	nomicromips
	.ent	YM2610_data_port_B_w
	.type	YM2610_data_port_B_w, @function
YM2610_data_port_B_w:
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
	sb	$2,36($fp)
	lbu	$2,36($fp)
	li	$4,3			# 0x3
	move	$5,$2
	jal	YM2610Write
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	YM2610_data_port_B_w
	.size	YM2610_data_port_B_w, .-YM2610_data_port_B_w
	.align	2
	.globl	timer_callback_2610
	.set	nomips16
	.set	nomicromips
	.ent	timer_callback_2610
	.type	timer_callback_2610, @function
timer_callback_2610:
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
	lw	$4,32($fp)
	jal	YM2610TimerOver
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_callback_2610
	.size	timer_callback_2610, .-timer_callback_2610
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	TimerHandler
	.type	TimerHandler, @function
TimerHandler:
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
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	lw	$2,44($fp)
	bne	$2,$0,$L15
	nop

	lw	$4,40($fp)
	move	$5,$0
	jal	timer_enable
	nop

	j	$L14
	nop

$L15:
	ldc1	$f0,48($fp)
	cvt.s.d	$f0,$f0
	cvt.d.s	$f2,$f0
	lui	$2,%hi($LC0)
	ldc1	$f0,%lo($LC0)($2)
	mul.d	$f0,$f2,$f0
	trunc.w.d $f0,$f0
	lw	$2,44($fp)
	mfc1	$3,$f0
	mul	$2,$3,$2
	sw	$2,24($fp)
	lw	$4,40($fp)
	li	$5,1			# 0x1
	jal	timer_enable
	nop

	bne	$2,$0,$L14
	nop

	lw	$4,40($fp)
	lw	$5,24($fp)
	lw	$6,40($fp)
	lui	$2,%hi(timer_callback_2610)
	addiu	$7,$2,%lo(timer_callback_2610)
	jal	timer_adjust
	nop

$L14:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	TimerHandler
	.size	TimerHandler, .-TimerHandler
	.rdata
	.align	3
$LC0:
	.word	0
	.word	1093567616
	.ident	"GCC: (GNU) 4.5.2"
