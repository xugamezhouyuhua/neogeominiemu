	.file	1 "sndintrf.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.local	stream_buffer_left
	.comm	stream_buffer_left,11904,4
	.local	stream_buffer_right
	.comm	stream_buffer_right,11904,4
	.local	stream_buffer
	.comm	stream_buffer,8,4
	.local	samples_per_update
	.comm	samples_per_update,4,4
	.local	samples_left_over
	.comm	samples_left_over,4,4
	.local	samples_this_update
	.comm	samples_this_update,4,4
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	clip_stream
	.type	clip_stream, @function
clip_stream:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	lui	$2,%hi(samples_this_update)
	lw	$2,%lo(samples_this_update)($2)
	sw	$2,8($fp)
	j	$L2
	nop

$L5:
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,12($fp)
	lw	$3,12($fp)
	li	$2,32768			# 0x8000
	slt	$2,$3,$2
	bne	$2,$0,$L3
	nop

	li	$2,32767			# 0x7fff
	sw	$2,12($fp)
	j	$L4
	nop

$L3:
	lw	$2,12($fp)
	slt	$2,$2,-32768
	beq	$2,$0,$L4
	nop

	li	$2,-32768			# 0xffffffffffff8000
	sw	$2,12($fp)
$L4:
	lw	$2,24($fp)
	lw	$3,12($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
$L2:
	lw	$2,8($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	lw	$3,8($fp)
	addiu	$3,$3,-1
	sw	$3,8($fp)
	bne	$2,$0,$L5
	nop

	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	clip_stream
	.size	clip_stream, .-clip_stream
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	resample_stream
	.type	resample_stream, @function
resample_stream:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,8($fp)
	lui	$2,%hi(samples_this_update)
	lw	$2,%lo(samples_this_update)($2)
	sll	$3,$2,14
	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,12($2)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$3
	mflo	$2
	sw	$2,16($fp)
	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,12($2)
	sw	$2,12($fp)
	j	$L7
	nop

$L8:
	lw	$2,8($fp)
	srl	$2,$2,14
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	seh	$3,$2
	lw	$2,36($fp)
	sh	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,4
	sw	$2,36($fp)
	lw	$3,8($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
$L7:
	lw	$2,12($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	lw	$3,12($fp)
	addiu	$3,$3,-1
	sw	$3,12($fp)
	bne	$2,$0,$L8
	nop

	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	resample_stream
	.size	resample_stream, .-resample_stream
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	sound_update_stereo
	.type	sound_update_stereo, @function
sound_update_stereo:
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
	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,20($2)
	lui	$3,%hi(samples_this_update)
	lw	$3,%lo(samples_this_update)($3)
	lui	$4,%hi(stream_buffer)
	addiu	$4,$4,%lo(stream_buffer)
	move	$5,$3
	move	$25,$2
	jalr	$25
	nop

	lui	$2,%hi(stream_buffer)
	lw	$2,%lo(stream_buffer)($2)
	move	$4,$2
	jal	clip_stream
	nop

	lui	$2,%hi(stream_buffer)
	addiu	$2,$2,%lo(stream_buffer)
	lw	$2,4($2)
	move	$4,$2
	jal	clip_stream
	nop

	lui	$2,%hi(stream_buffer)
	lw	$2,%lo(stream_buffer)($2)
	move	$4,$2
	lw	$5,32($fp)
	jal	resample_stream
	nop

	lui	$2,%hi(stream_buffer)
	addiu	$2,$2,%lo(stream_buffer)
	lw	$3,4($2)
	lw	$2,32($fp)
	addiu	$2,$2,2
	move	$4,$3
	move	$5,$2
	jal	resample_stream
	nop

	lui	$2,%hi(samples_left_over)
	lwc1	$f1,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_per_update)
	lwc1	$f0,%lo(samples_per_update)($2)
	add.s	$f0,$f1,$f0
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_left_over)
	lwc1	$f0,%lo(samples_left_over)($2)
	lui	$2,%hi($LC0)
	lwc1	$f1,%lo($LC0)($2)
	c.le.s	$fcc0,$f1,$f0
	bc1t	$fcc0,$L10
	nop

	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	j	$L11
	nop

$L10:
	sub.s	$f0,$f0,$f1
	li	$3,-2147483648			# 0xffffffff80000000
	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	or	$2,$2,$3
$L11:
	lui	$3,%hi(samples_this_update)
	sw	$2,%lo(samples_this_update)($3)
	lui	$2,%hi(samples_left_over)
	lwc1	$f4,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_this_update)
	lw	$2,%lo(samples_this_update)($2)
	mtc1	$2,$f2
	cvt.d.w	$f0,$f2
	bgez	$2,$L12
	nop

	lui	$2,%hi($LC1)
	ldc1	$f2,%lo($LC1)($2)
	add.d	$f0,$f0,$f2
$L12:
	cvt.s.d	$f0,$f0
	sub.s	$f0,$f4,$f0
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_update_stereo
	.size	sound_update_stereo, .-sound_update_stereo
	.align	2
	.globl	sound_init
	.set	nomips16
	.set	nomicromips
	.ent	sound_init
	.type	sound_init, @function
sound_init:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	YM2610_sh_start
	nop

	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lui	$3,%hi(sound_update_stereo)
	addiu	$3,$3,%lo(sound_update_stereo)
	sw	$3,16($2)
	lui	$2,%hi(stream_buffer_left)
	addiu	$4,$2,%lo(stream_buffer_left)
	move	$5,$0
	li	$6,11904			# 0x2e80
	jal	memset
	nop

	lui	$2,%hi(stream_buffer_right)
	addiu	$4,$2,%lo(stream_buffer_right)
	move	$5,$0
	li	$6,11904			# 0x2e80
	jal	memset
	nop

	lui	$2,%hi(stream_buffer)
	lui	$3,%hi(stream_buffer_left)
	addiu	$3,$3,%lo(stream_buffer_left)
	sw	$3,%lo(stream_buffer)($2)
	lui	$2,%hi(stream_buffer)
	addiu	$2,$2,%lo(stream_buffer)
	lui	$3,%hi(stream_buffer_right)
	addiu	$3,$3,%lo(stream_buffer_right)
	sw	$3,4($2)
	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,8($2)
	mtc1	$2,$f1
	cvt.s.w	$f0,$f1
	cvt.d.s	$f2,$f0
	lui	$2,%hi($LC2)
	ldc1	$f0,%lo($LC2)($2)
	div.d	$f0,$f2,$f0
	add.d	$f0,$f0,$f0
	cvt.s.d	$f0,$f0
	lui	$2,%hi(samples_per_update)
	swc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi(samples_per_update)
	lwc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_per_update)
	lwc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi($LC0)
	lwc1	$f1,%lo($LC0)($2)
	c.le.s	$fcc0,$f1,$f0
	bc1t	$fcc0,$L14
	nop

	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	j	$L15
	nop

$L14:
	sub.s	$f0,$f0,$f1
	li	$3,-2147483648			# 0xffffffff80000000
	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	or	$2,$2,$3
$L15:
	lui	$3,%hi(samples_this_update)
	sw	$2,%lo(samples_this_update)($3)
	lui	$2,%hi(samples_left_over)
	lwc1	$f4,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_this_update)
	lw	$2,%lo(samples_this_update)($2)
	mtc1	$2,$f2
	cvt.d.w	$f0,$f2
	bgez	$2,$L16
	nop

	lui	$2,%hi($LC1)
	ldc1	$f2,%lo($LC1)($2)
	add.d	$f0,$f0,$f2
$L16:
	cvt.s.d	$f0,$f0
	sub.s	$f0,$f4,$f0
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	jal	sound_thread_start
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_init
	.size	sound_init, .-sound_init
	.align	2
	.globl	sound_exit
	.set	nomips16
	.set	nomicromips
	.ent	sound_exit
	.type	sound_exit, @function
sound_exit:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	YM2610_sh_stop
	nop

	jal	sound_thread_stop
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_exit
	.size	sound_exit, .-sound_exit
	.align	2
	.globl	sound_reset
	.set	nomips16
	.set	nomicromips
	.ent	sound_reset
	.type	sound_reset, @function
sound_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	YM2610_sh_reset
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_reset
	.size	sound_reset, .-sound_reset
	.align	2
	.globl	sound_set_samplerate
	.set	nomips16
	.set	nomicromips
	.ent	sound_set_samplerate
	.type	sound_set_samplerate, @function
sound_set_samplerate:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	YM2610_set_samplerate
	nop

	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,8($2)
	mtc1	$2,$f1
	cvt.s.w	$f0,$f1
	cvt.d.s	$f2,$f0
	lui	$2,%hi($LC2)
	ldc1	$f0,%lo($LC2)($2)
	div.d	$f0,$f2,$f0
	add.d	$f0,$f0,$f0
	cvt.s.d	$f0,$f0
	lui	$2,%hi(samples_per_update)
	swc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi(samples_per_update)
	lwc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_per_update)
	lwc1	$f0,%lo(samples_per_update)($2)
	lui	$2,%hi($LC0)
	lwc1	$f1,%lo($LC0)($2)
	c.le.s	$fcc0,$f1,$f0
	bc1t	$fcc0,$L20
	nop

	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	j	$L21
	nop

$L20:
	sub.s	$f0,$f0,$f1
	li	$3,-2147483648			# 0xffffffff80000000
	trunc.w.s $f0,$f0
	mfc1	$2,$f0
	or	$2,$2,$3
$L21:
	lui	$3,%hi(samples_this_update)
	sw	$2,%lo(samples_this_update)($3)
	lui	$2,%hi(samples_left_over)
	lwc1	$f4,%lo(samples_left_over)($2)
	lui	$2,%hi(samples_this_update)
	lw	$2,%lo(samples_this_update)($2)
	mtc1	$2,$f2
	cvt.d.w	$f0,$f2
	bgez	$2,$L22
	nop

	lui	$2,%hi($LC1)
	ldc1	$f2,%lo($LC1)($2)
	add.d	$f0,$f0,$f2
$L22:
	cvt.s.d	$f0,$f0
	sub.s	$f0,$f4,$f0
	lui	$2,%hi(samples_left_over)
	swc1	$f0,%lo(samples_left_over)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_set_samplerate
	.size	sound_set_samplerate, .-sound_set_samplerate
	.rdata
	.align	2
$LC0:
	.word	1325400064
	.align	3
$LC1:
	.word	0
	.word	1106247680
	.align	3
$LC2:
	.word	-268830593
	.word	1078826945
	.ident	"GCC: (GNU) 4.5.2"
