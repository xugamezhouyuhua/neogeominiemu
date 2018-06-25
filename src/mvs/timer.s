	.file	1 "timer.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.local	timer
	.comm	timer,96,4
	.local	cpu
	.comm	cpu,40,4
	.local	global_offset
	.comm	global_offset,4,4
	.local	base_time
	.comm	base_time,4,4
	.local	frame_base
	.comm	frame_base,4,4
	.local	timer_ticks
	.comm	timer_ticks,4,4
	.local	timer_left
	.comm	timer_left,4,4
	.local	active_cpu
	.comm	active_cpu,4,4
	.local	scanline
	.comm	scanline,4,4

	.comm	timer_update_cpu,4,4
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	cpu_execute
	.type	cpu_execute, @function
cpu_execute:
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
	lui	$3,%hi(cpu)
	lw	$2,32($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$2,16($2)
	bne	$2,$0,$L1
	nop

	lui	$2,%hi(active_cpu)
	lw	$3,32($fp)
	sw	$3,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	lw	$2,32($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$3,8($2)
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	mul	$5,$3,$2
	lui	$3,%hi(cpu)
	lw	$2,32($fp)
	addiu	$3,$3,%lo(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	sw	$5,12($2)
	lui	$3,%hi(cpu)
	lw	$2,32($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$3,0($2)
	lui	$4,%hi(cpu)
	lw	$2,32($fp)
	addiu	$4,$4,%lo(cpu)
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$4,$2
	lw	$2,12($2)
	move	$4,$2
	move	$25,$3
	jalr	$25
	nop

	lui	$2,%hi(active_cpu)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(active_cpu)($2)
$L1:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	cpu_execute
	.size	cpu_execute, .-cpu_execute
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	cpu_spin_trigger
	.type	cpu_spin_trigger, @function
cpu_spin_trigger:
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
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	jal	timer_suspend_cpu
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	cpu_spin_trigger
	.size	cpu_spin_trigger, .-cpu_spin_trigger
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	getabsolutetime
	.type	getabsolutetime, @function
getabsolutetime:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	lui	$2,%hi(frame_base)
	lw	$2,%lo(frame_base)($2)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lui	$2,%hi(active_cpu)
	lw	$3,%lo(active_cpu)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L5
	nop

	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	addiu	$3,$3,%lo(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	lw	$3,12($2)
	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$4,%hi(cpu)
	addiu	$4,$4,%lo(cpu)
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$4,$2
	lw	$2,4($2)
	lw	$2,0($2)
	subu	$5,$3,$2
	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$2,8($2)
	teq	$2,$0,7
	div	$0,$5,$2
	mfhi	$3
	mflo	$2
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
$L5:
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	getabsolutetime
	.size	getabsolutetime, .-getabsolutetime
	.align	2
	.globl	timer_reset
	.set	nomips16
	.set	nomicromips
	.ent	timer_reset
	.type	timer_reset, @function
timer_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(global_offset)
	sw	$0,%lo(global_offset)($2)
	lui	$2,%hi(base_time)
	sw	$0,%lo(base_time)($2)
	lui	$2,%hi(frame_base)
	sw	$0,%lo(frame_base)($2)
	lui	$2,%hi(active_cpu)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(active_cpu)($2)
	lui	$2,%hi(timer)
	addiu	$4,$2,%lo(timer)
	move	$5,$0
	li	$6,96			# 0x60
	jal	memset
	nop

	lui	$2,%hi(cpu)
	lui	$3,%hi(m68000_execute)
	addiu	$3,$3,%lo(m68000_execute)
	sw	$3,%lo(cpu)($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	lui	$3,%hi(C68K+112)
	addiu	$3,$3,%lo(C68K+112)
	sw	$3,4($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	sw	$0,12($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	sw	$0,16($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	li	$3,12			# 0xc
	sw	$3,8($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	lui	$3,%hi(z80_execute)
	addiu	$3,$3,%lo(z80_execute)
	sw	$3,20($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	lui	$3,%hi(CZ80+44)
	addiu	$3,$3,%lo(CZ80+44)
	sw	$3,24($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	sw	$0,32($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	sw	$0,36($2)
	lui	$2,%hi(cpu)
	addiu	$2,$2,%lo(cpu)
	li	$3,4			# 0x4
	sw	$3,28($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_reset
	.size	timer_reset, .-timer_reset
	.align	2
	.globl	timer_set_update_handler
	.set	nomips16
	.set	nomicromips
	.ent	timer_set_update_handler
	.type	timer_set_update_handler, @function
timer_set_update_handler:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_driver_type)
	lw	$3,%lo(neogeo_driver_type)($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L8
	nop

	lui	$2,%hi(timer_update_cpu)
	lui	$3,%hi(timer_update_cpu_normal)
	addiu	$3,$3,%lo(timer_update_cpu_normal)
	sw	$3,%lo(timer_update_cpu)($2)
	j	$L7
	nop

$L8:
	lui	$2,%hi(timer_update_cpu)
	lui	$3,%hi(timer_update_cpu_raster)
	addiu	$3,$3,%lo(timer_update_cpu_raster)
	sw	$3,%lo(timer_update_cpu)($2)
$L7:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_set_update_handler
	.size	timer_set_update_handler, .-timer_set_update_handler
	.align	2
	.globl	timer_suspend_cpu
	.set	nomips16
	.set	nomicromips
	.ent	timer_suspend_cpu
	.type	timer_suspend_cpu, @function
timer_suspend_cpu:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	lw	$2,12($fp)
	bne	$2,$0,$L11
	nop

	lui	$3,%hi(cpu)
	lw	$2,8($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$3,16($2)
	lw	$2,16($fp)
	or	$3,$3,$2
	lui	$4,%hi(cpu)
	lw	$2,8($fp)
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addiu	$4,$4,%lo(cpu)
	addu	$2,$2,$4
	sw	$3,16($2)
	j	$L10
	nop

$L11:
	lui	$3,%hi(cpu)
	lw	$2,8($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$3,16($2)
	lw	$2,16($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lui	$4,%hi(cpu)
	lw	$2,8($fp)
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addiu	$4,$4,%lo(cpu)
	addu	$2,$2,$4
	sw	$3,16($2)
$L10:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_suspend_cpu
	.size	timer_suspend_cpu, .-timer_suspend_cpu
	.align	2
	.globl	timer_enable
	.set	nomips16
	.set	nomicromips
	.ent	timer_enable
	.type	timer_enable, @function
timer_enable:
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
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	sw	$2,8($fp)
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$3,28($fp)
	sw	$3,4($2)
	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_enable
	.size	timer_enable, .-timer_enable
	.align	2
	.globl	timer_adjust
	.set	nomips16
	.set	nomicromips
	.ent	timer_adjust
	.type	timer_adjust, @function
timer_adjust:
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
	sw	$6,56($fp)
	sw	$7,60($fp)
	jal	getabsolutetime
	nop

	sw	$2,24($fp)
	lw	$3,24($fp)
	lw	$2,52($fp)
	addu	$3,$3,$2
	lui	$2,%hi(timer)
	lw	$4,48($fp)
	sll	$4,$4,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
	sw	$3,0($2)
	lui	$2,%hi(timer)
	lw	$3,48($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,56($fp)
	sw	$3,8($2)
	lui	$3,%hi(timer)
	lw	$2,48($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$3,60($fp)
	sw	$3,12($2)
	lui	$2,%hi(active_cpu)
	lw	$3,%lo(active_cpu)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L14
	nop

	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	addiu	$3,$3,%lo(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	lw	$2,4($2)
	lw	$2,0($2)
	sw	$2,28($fp)
	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(cpu)
	addu	$2,$2,$3
	lw	$2,8($2)
	lw	$3,28($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$3
	mflo	$2
	sw	$2,32($fp)
	lui	$2,%hi(timer_left)
	lw	$2,%lo(timer_left)($2)
	lw	$3,52($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L14
	nop

	lui	$2,%hi(timer_ticks)
	lw	$3,%lo(timer_ticks)($2)
	lw	$2,32($fp)
	subu	$3,$3,$2
	lui	$2,%hi(timer_ticks)
	sw	$3,%lo(timer_ticks)($2)
	lui	$2,%hi(active_cpu)
	lw	$5,%lo(active_cpu)($2)
	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	addiu	$3,$3,%lo(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	lw	$3,12($2)
	lw	$2,28($fp)
	subu	$3,$3,$2
	lui	$2,%hi(cpu)
	addiu	$4,$2,%lo(cpu)
	move	$2,$5
	sll	$2,$2,2
	sll	$5,$2,2
	addu	$2,$2,$5
	addu	$2,$4,$2
	sw	$3,12($2)
	lui	$2,%hi(active_cpu)
	lw	$2,%lo(active_cpu)($2)
	lui	$3,%hi(cpu)
	addiu	$3,$3,%lo(cpu)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addu	$2,$3,$2
	lw	$2,4($2)
	sw	$0,0($2)
	lui	$2,%hi(active_cpu)
	lw	$3,%lo(active_cpu)($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L14
	nop

	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lw	$2,68($2)
	bne	$2,$0,$L14
	nop

	move	$4,$0
	move	$5,$0
	li	$6,4			# 0x4
	jal	timer_suspend_cpu
	nop

	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	li	$3,1			# 0x1
	sw	$3,68($2)
	lw	$3,24($fp)
	lw	$2,32($fp)
	addu	$3,$3,$2
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	sw	$3,64($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	sw	$0,72($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(cpu_spin_trigger)
	addiu	$3,$3,%lo(cpu_spin_trigger)
	sw	$3,76($2)
$L14:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_adjust
	.size	timer_adjust, .-timer_adjust
	.align	2
	.globl	timer_set
	.set	nomips16
	.set	nomicromips
	.ent	timer_set
	.type	timer_set, @function
timer_set:
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
	sw	$6,40($fp)
	sw	$7,44($fp)
	lui	$3,%hi(timer)
	lw	$2,32($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	li	$3,1			# 0x1
	sw	$3,4($2)
	lw	$4,32($fp)
	lw	$5,36($fp)
	lw	$6,40($fp)
	lw	$7,44($fp)
	jal	timer_adjust
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_set
	.size	timer_set, .-timer_set
	.align	2
	.globl	timer_get_time
	.set	nomips16
	.set	nomicromips
	.ent	timer_get_time
	.type	timer_get_time, @function
timer_get_time:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	jal	getabsolutetime
	nop

	sw	$2,24($fp)
	lui	$2,%hi(global_offset)
	lw	$2,%lo(global_offset)($2)
	mtc1	$2,$f1
	cvt.s.w	$f0,$f1
	cvt.d.s	$f2,$f0
	lw	$2,24($fp)
	mtc1	$2,$f1
	cvt.s.w	$f0,$f1
	cvt.d.s	$f4,$f0
	lui	$2,%hi($LC0)
	ldc1	$f0,%lo($LC0)($2)
	div.d	$f0,$f4,$f0
	add.d	$f0,$f2,$f0
	cvt.s.d	$f0,$f0
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_get_time
	.size	timer_get_time, .-timer_get_time
	.align	2
	.globl	timer_getscanline
	.set	nomips16
	.set	nomicromips
	.ent	timer_getscanline
	.type	timer_getscanline, @function
timer_getscanline:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_driver_type)
	lw	$2,%lo(neogeo_driver_type)($2)
	bne	$2,$0,$L19
	nop

	lui	$2,%hi(scanline)
	lw	$2,%lo(scanline)($2)
	j	$L20
	nop

$L19:
	lui	$2,%hi(frame_base)
	lw	$2,%lo(frame_base)($2)
	sra	$2,$2,6
	addiu	$2,$2,1
$L20:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_getscanline
	.size	timer_getscanline, .-timer_getscanline
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	timer_update_cpu_normal
	.type	timer_update_cpu_normal, @function
timer_update_cpu_normal:
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
	lui	$2,%hi(frame_base)
	sw	$0,%lo(frame_base)($2)
	lui	$2,%hi(timer_left)
	li	$3,16896			# 0x4200
	sw	$3,%lo(timer_left)($2)
	j	$L22
	nop

$L29:
	lui	$2,%hi(timer_left)
	lw	$3,%lo(timer_left)($2)
	lui	$2,%hi(timer_ticks)
	sw	$3,%lo(timer_ticks)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	lui	$2,%hi(frame_base)
	lw	$2,%lo(frame_base)($2)
	addu	$2,$3,$2
	sw	$2,28($fp)
	sw	$0,24($fp)
	j	$L23
	nop

$L26:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L24
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$2,$3,$2
	bgtz	$2,$L24
	nop

	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$0,4($2)
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,12($2)
	lui	$3,%hi(timer)
	lw	$4,24($fp)
	sll	$4,$4,4
	addiu	$3,$3,%lo(timer)
	addu	$3,$4,$3
	lw	$3,8($3)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

$L24:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L25
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$3,$3,$2
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	slt	$2,$3,$2
	beq	$2,$0,$L25
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$3,$3,$2
	lui	$2,%hi(timer_ticks)
	sw	$3,%lo(timer_ticks)($2)
$L25:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L23:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L26
	nop

	lui	$2,%hi(Loop)
	lw	$3,%lo(Loop)($2)
	li	$2,3			# 0x3
	bne	$3,$2,$L35
	nop

$L27:
	move	$4,$0
	jal	cpu_execute
	nop

	li	$4,1			# 0x1
	jal	cpu_execute
	nop

	lui	$2,%hi(frame_base)
	lw	$3,%lo(frame_base)($2)
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	addu	$3,$3,$2
	lui	$2,%hi(frame_base)
	sw	$3,%lo(frame_base)($2)
	lui	$2,%hi(timer_left)
	lw	$3,%lo(timer_left)($2)
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	subu	$3,$3,$2
	lui	$2,%hi(timer_left)
	sw	$3,%lo(timer_left)($2)
$L22:
	lui	$2,%hi(timer_left)
	lw	$2,%lo(timer_left)($2)
	bgtz	$2,$L29
	nop

	jal	neogeo_vblank_interrupt
	nop

	lui	$2,%hi(base_time)
	lw	$2,%lo(base_time)($2)
	mtc1	$2,$f0
	cvt.d.w	$f2,$f0
	lui	$2,%hi($LC1)
	ldc1	$f0,%lo($LC1)($2)
	add.d	$f0,$f2,$f0
	trunc.w.d $f2,$f0
	mfc1	$3,$f2
	lui	$2,%hi(base_time)
	sw	$3,%lo(base_time)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	li	$2,983040			# 0xf0000
	ori	$2,$2,0x4240
	slt	$2,$3,$2
	bne	$2,$0,$L30
	nop

	lui	$2,%hi(global_offset)
	lw	$2,%lo(global_offset)($2)
	addiu	$3,$2,1
	lui	$2,%hi(global_offset)
	sw	$3,%lo(global_offset)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	addu	$3,$3,$2
	lui	$2,%hi(base_time)
	sw	$3,%lo(base_time)($2)
	sw	$0,24($fp)
	j	$L31
	nop

$L33:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L32
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	addu	$3,$3,$2
	lui	$2,%hi(timer)
	lw	$4,24($fp)
	sll	$4,$4,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
	sw	$3,0($2)
$L32:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L31:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L33
	nop

$L30:
	lw	$2,40($fp)
	bne	$2,$0,$L34
	nop

	jal	neogeo_screenrefresh
	nop

$L34:
	lui	$2,%hi(gFramesEmulated)
	lw	$2,%lo(gFramesEmulated)($2)
	addiu	$3,$2,1
	lui	$2,%hi(gFramesEmulated)
	sw	$3,%lo(gFramesEmulated)($2)
	j	$L21
	nop

$L35:
	nop
$L21:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_update_cpu_normal
	.size	timer_update_cpu_normal, .-timer_update_cpu_normal
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	timer_update_cpu_raster
	.type	timer_update_cpu_raster, @function
timer_update_cpu_raster:
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
	lui	$2,%hi(frame_base)
	sw	$0,%lo(frame_base)($2)
	lui	$2,%hi(timer_left)
	sw	$0,%lo(timer_left)($2)
	lui	$2,%hi(scanline)
	li	$3,1			# 0x1
	sw	$3,%lo(scanline)($2)
	j	$L37
	nop

$L46:
	lui	$2,%hi(timer_left)
	lw	$2,%lo(timer_left)($2)
	addiu	$3,$2,64
	lui	$2,%hi(timer_left)
	sw	$3,%lo(timer_left)($2)
	j	$L38
	nop

$L45:
	lui	$2,%hi(timer_left)
	lw	$3,%lo(timer_left)($2)
	lui	$2,%hi(timer_ticks)
	sw	$3,%lo(timer_ticks)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	lui	$2,%hi(frame_base)
	lw	$2,%lo(frame_base)($2)
	addu	$2,$3,$2
	sw	$2,28($fp)
	sw	$0,24($fp)
	j	$L39
	nop

$L42:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L40
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$2,$3,$2
	bgtz	$2,$L40
	nop

	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	sw	$0,4($2)
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,12($2)
	lui	$3,%hi(timer)
	lw	$4,24($fp)
	sll	$4,$4,4
	addiu	$3,$3,%lo(timer)
	addu	$3,$4,$3
	lw	$3,8($3)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

$L40:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L41
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$3,$3,$2
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	slt	$2,$3,$2
	beq	$2,$0,$L41
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,28($fp)
	subu	$3,$3,$2
	lui	$2,%hi(timer_ticks)
	sw	$3,%lo(timer_ticks)($2)
$L41:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L39:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L42
	nop

	lui	$2,%hi(Loop)
	lw	$3,%lo(Loop)($2)
	li	$2,3			# 0x3
	bne	$3,$2,$L52
	nop

$L43:
	move	$4,$0
	jal	cpu_execute
	nop

	li	$4,1			# 0x1
	jal	cpu_execute
	nop

	lui	$2,%hi(frame_base)
	lw	$3,%lo(frame_base)($2)
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	addu	$3,$3,$2
	lui	$2,%hi(frame_base)
	sw	$3,%lo(frame_base)($2)
	lui	$2,%hi(timer_left)
	lw	$3,%lo(timer_left)($2)
	lui	$2,%hi(timer_ticks)
	lw	$2,%lo(timer_ticks)($2)
	subu	$3,$3,$2
	lui	$2,%hi(timer_left)
	sw	$3,%lo(timer_left)($2)
$L38:
	lui	$2,%hi(timer_left)
	lw	$2,%lo(timer_left)($2)
	bgtz	$2,$L45
	nop

	lui	$2,%hi(scanline)
	lw	$2,%lo(scanline)($2)
	move	$4,$2
	lw	$5,40($fp)
	jal	neogeo_raster_interrupt
	nop

	lui	$2,%hi(scanline)
	lw	$2,%lo(scanline)($2)
	addiu	$3,$2,1
	lui	$2,%hi(scanline)
	sw	$3,%lo(scanline)($2)
$L37:
	lui	$2,%hi(scanline)
	lw	$2,%lo(scanline)($2)
	slt	$2,$2,265
	bne	$2,$0,$L46
	nop

	lui	$2,%hi(base_time)
	lw	$2,%lo(base_time)($2)
	mtc1	$2,$f0
	cvt.d.w	$f2,$f0
	lui	$2,%hi($LC1)
	ldc1	$f0,%lo($LC1)($2)
	add.d	$f0,$f2,$f0
	trunc.w.d $f2,$f0
	mfc1	$3,$f2
	lui	$2,%hi(base_time)
	sw	$3,%lo(base_time)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	li	$2,983040			# 0xf0000
	ori	$2,$2,0x4240
	slt	$2,$3,$2
	bne	$2,$0,$L47
	nop

	lui	$2,%hi(global_offset)
	lw	$2,%lo(global_offset)($2)
	addiu	$3,$2,1
	lui	$2,%hi(global_offset)
	sw	$3,%lo(global_offset)($2)
	lui	$2,%hi(base_time)
	lw	$3,%lo(base_time)($2)
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	addu	$3,$3,$2
	lui	$2,%hi(base_time)
	sw	$3,%lo(base_time)($2)
	sw	$0,24($fp)
	j	$L48
	nop

$L50:
	lui	$3,%hi(timer)
	lw	$2,24($fp)
	addiu	$3,$3,%lo(timer)
	sll	$2,$2,4
	addu	$2,$3,$2
	lw	$2,4($2)
	beq	$2,$0,$L49
	nop

	lui	$2,%hi(timer)
	lw	$3,24($fp)
	sll	$3,$3,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,-1048576			# 0xfffffffffff00000
	ori	$2,$2,0xbdc0
	addu	$3,$3,$2
	lui	$2,%hi(timer)
	lw	$4,24($fp)
	sll	$4,$4,4
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
	sw	$3,0($2)
$L49:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L48:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L50
	nop

$L47:
	lw	$2,40($fp)
	bne	$2,$0,$L51
	nop

	jal	neogeo_screenrefresh
	nop

$L51:
	lui	$2,%hi(gFramesEmulated)
	lw	$2,%lo(gFramesEmulated)($2)
	addiu	$3,$2,1
	lui	$2,%hi(gFramesEmulated)
	sw	$3,%lo(gFramesEmulated)($2)
	j	$L36
	nop

$L52:
	nop
$L36:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	timer_update_cpu_raster
	.size	timer_update_cpu_raster, .-timer_update_cpu_raster
	.align	2
	.globl	state_save_timer
	.set	nomips16
	.set	nomicromips
	.ent	state_save_timer
	.type	state_save_timer, @function
state_save_timer:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(global_offset)
	addiu	$5,$2,%lo(global_offset)
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
	lui	$2,%hi(base_time)
	addiu	$5,$2,%lo(base_time)
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
	lui	$2,%hi(cpu+16)
	addiu	$5,$2,%lo(cpu+16)
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
	lui	$2,%hi(cpu+36)
	addiu	$5,$2,%lo(cpu+36)
	li	$6,4			# 0x4
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,4
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	sw	$0,24($fp)
	j	$L54
	nop

$L55:
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lw	$2,24($fp)
	sll	$4,$2,4
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
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
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lw	$2,24($fp)
	sll	$4,$2,4
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
	addiu	$2,$2,4
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
	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lw	$2,24($fp)
	sll	$2,$2,4
	addiu	$4,$2,8
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$4,$2
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
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L54:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L55
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_save_timer
	.size	state_save_timer, .-state_save_timer
	.align	2
	.globl	state_load_timer
	.set	nomips16
	.set	nomicromips
	.ent	state_load_timer
	.type	state_load_timer, @function
state_load_timer:
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
	lui	$2,%hi(global_offset)
	addiu	$4,$2,%lo(global_offset)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(base_time)
	addiu	$4,$2,%lo(base_time)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(cpu+16)
	addiu	$4,$2,%lo(cpu+16)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lui	$2,%hi(cpu+36)
	addiu	$4,$2,%lo(cpu+36)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	sw	$0,24($fp)
	j	$L57
	nop

$L58:
	lw	$2,24($fp)
	sll	$3,$2,4
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lw	$2,24($fp)
	sll	$3,$2,4
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	addiu	$2,$2,4
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lw	$2,24($fp)
	sll	$2,$2,4
	addiu	$3,$2,8
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	addu	$2,$3,$2
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,40($fp)
	jal	fread
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L57:
	lw	$2,24($fp)
	slt	$2,$2,6
	bne	$2,$0,$L58
	nop

	lui	$2,%hi(timer_left)
	sw	$0,%lo(timer_left)($2)
	lui	$2,%hi(timer_ticks)
	sw	$0,%lo(timer_ticks)($2)
	lui	$2,%hi(frame_base)
	sw	$0,%lo(frame_base)($2)
	lui	$2,%hi(active_cpu)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(active_cpu)($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(timer_callback_2610)
	addiu	$3,$3,%lo(timer_callback_2610)
	sw	$3,12($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(timer_callback_2610)
	addiu	$3,$3,%lo(timer_callback_2610)
	sw	$3,28($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(neogeo_sound_write)
	addiu	$3,$3,%lo(neogeo_sound_write)
	sw	$3,44($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(cpu_spin_trigger)
	addiu	$3,$3,%lo(cpu_spin_trigger)
	sw	$3,76($2)
	lui	$2,%hi(timer)
	addiu	$2,$2,%lo(timer)
	lui	$3,%hi(watchdog_callback)
	addiu	$3,$3,%lo(watchdog_callback)
	sw	$3,92($2)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_timer
	.size	state_load_timer, .-state_load_timer
	.rdata
	.align	3
$LC0:
	.word	0
	.word	1093567616
	.align	3
$LC1:
	.word	0
	.word	1087406080
	.ident	"GCC: (GNU) 4.5.2"
