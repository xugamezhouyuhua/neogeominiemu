	.file	1 "sound.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.local	sound_buffer
	.comm	sound_buffer,5888,4
	.local	sound_info
	.comm	sound_info,24,4
	.globl	sound
	.data
	.align	2
	.type	sound, @object
	.size	sound, 4
sound:
	.word	sound_info
	.align	2
	.type	gSoundThread, @object
	.size	gSoundThread, 4
gSoundThread:
	.word	-1

	.comm	gAudioMutex,24,4
	.globl	gAudioBuffer
	.section	.bss,"aw",@nobits
	.align	2
	.type	gAudioBuffer, @object
	.size	gAudioBuffer, 4
gAudioBuffer:
	.space	4

	.comm	gAudioBlockLen,4,4
	.globl	gReadIDX
	.align	2
	.type	gReadIDX, @object
	.size	gReadIDX, 4
gReadIDX:
	.space	4
	.globl	gWriteIDX
	.align	2
	.type	gWriteIDX, @object
	.size	gWriteIDX, 4
gWriteIDX:
	.space	4

	.comm	gExitSoundThread,4,4
	.data
	.align	2
	.type	dspfd, @object
	.size	dspfd, 4
dspfd:
	.word	-1
	.globl	pcmfd
	.section	.bss
	.align	2
	.type	pcmfd, @object
	.size	pcmfd, 4
pcmfd:
	.space	4
	.globl	lidx
	.align	2
	.type	lidx, @object
	.size	lidx, 4
lidx:
	.space	4
	.rdata
	.align	2
$LC0:
	.ascii	"Maybe Error...\000"
	.align	2
$LC1:
	.ascii	"Audio data too fast,discard...\000"
	.text
	.align	2
	.globl	SndFillAudioData
	.set	nomips16
	.set	nomicromips
	.ent	SndFillAudioData
	.type	SndFillAudioData, @function
SndFillAudioData:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(sound)
	lw	$2,%lo(sound)($2)
	lw	$2,16($2)
	lui	$3,%hi(sound_buffer)
	addiu	$4,$3,%lo(sound_buffer)
	move	$25,$2
	jalr	$25
	nop

	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_lock
	nop

	lui	$2,%hi(gAudioBuffer)
	lw	$2,%lo(gAudioBuffer)($2)
	beq	$2,$0,$L2
	nop

	lui	$2,%hi(gWriteIDX)
	lw	$3,%lo(gWriteIDX)($2)
	lui	$2,%hi(gReadIDX)
	lw	$2,%lo(gReadIDX)($2)
	slt	$2,$3,$2
	beq	$2,$0,$L3
	nop

	lui	$2,%hi(gReadIDX)
	sw	$0,%lo(gReadIDX)($2)
	lui	$2,%hi(gReadIDX)
	lw	$3,%lo(gReadIDX)($2)
	lui	$2,%hi(gWriteIDX)
	sw	$3,%lo(gWriteIDX)($2)
	lui	$2,%hi(gAudioBuffer)
	lw	$3,%lo(gAudioBuffer)($2)
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	sll	$2,$2,3
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	puts
	nop

$L3:
	lui	$2,%hi(gReadIDX)
	lw	$2,%lo(gReadIDX)($2)
	addiu	$3,$2,8
	lui	$2,%hi(gWriteIDX)
	lw	$2,%lo(gWriteIDX)($2)
	bne	$3,$2,$L4
	nop

	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	puts
	nop

	j	$L2
	nop

$L4:
	lui	$2,%hi(gAudioBuffer)
	lw	$3,%lo(gAudioBuffer)($2)
	lui	$2,%hi(gWriteIDX)
	lw	$4,%lo(gWriteIDX)($2)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x7
	and	$2,$4,$2
	bgez	$2,$L5
	nop

	addiu	$2,$2,-1
	li	$4,-8			# 0xfffffffffffffff8
	or	$2,$2,$4
	addiu	$2,$2,1
$L5:
	move	$4,$2
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	mul	$2,$4,$2
	addu	$3,$3,$2
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	move	$4,$3
	lui	$3,%hi(sound_buffer)
	addiu	$5,$3,%lo(sound_buffer)
	move	$6,$2
	jal	memcpy
	nop

	lui	$2,%hi(gWriteIDX)
	lw	$2,%lo(gWriteIDX)($2)
	addiu	$3,$2,1
	lui	$2,%hi(gWriteIDX)
	sw	$3,%lo(gWriteIDX)($2)
$L2:
	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_unlock
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	SndFillAudioData
	.size	SndFillAudioData, .-SndFillAudioData
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	SndReadAudioData
	.type	SndReadAudioData, @function
SndReadAudioData:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_lock
	nop

	lui	$2,%hi(gAudioBuffer)
	lw	$2,%lo(gAudioBuffer)($2)
	beq	$2,$0,$L7
	nop

	lui	$2,%hi(gWriteIDX)
	lw	$3,%lo(gWriteIDX)($2)
	lui	$2,%hi(gReadIDX)
	lw	$2,%lo(gReadIDX)($2)
	slt	$2,$3,$2
	beq	$2,$0,$L8
	nop

	lui	$2,%hi(gReadIDX)
	sw	$0,%lo(gReadIDX)($2)
	lui	$2,%hi(gReadIDX)
	lw	$3,%lo(gReadIDX)($2)
	lui	$2,%hi(gWriteIDX)
	sw	$3,%lo(gWriteIDX)($2)
	lui	$2,%hi(gAudioBuffer)
	lw	$3,%lo(gAudioBuffer)($2)
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	sll	$2,$2,3
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	puts
	nop

$L8:
	lui	$2,%hi(gReadIDX)
	lw	$3,%lo(gReadIDX)($2)
	lui	$2,%hi(gWriteIDX)
	lw	$2,%lo(gWriteIDX)($2)
	bne	$3,$2,$L9
	nop

	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_unlock
	nop

	li	$4,1000			# 0x3e8
	jal	usleep
	nop

	j	$L6
	nop

$L9:
	lui	$2,%hi(gReadIDX)
	lw	$2,%lo(gReadIDX)($2)
	addiu	$3,$2,1
	lui	$2,%hi(gReadIDX)
	sw	$3,%lo(gReadIDX)($2)
$L7:
	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_unlock
	nop

$L6:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	SndReadAudioData
	.size	SndReadAudioData, .-SndReadAudioData
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	sound_update_thread
	.type	sound_update_thread, @function
sound_update_thread:
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
	lui	$2,%hi(gExitSoundThread)
	sw	$0,%lo(gExitSoundThread)($2)
	j	$L12
	nop

$L13:
	jal	SndReadAudioData
	nop

$L12:
	lui	$2,%hi(gExitSoundThread)
	lw	$2,%lo(gExitSoundThread)($2)
	beq	$2,$0,$L13
	nop

	lui	$2,%hi(gAudioBuffer)
	lw	$2,%lo(gAudioBuffer)($2)
	beq	$2,$0,$L14
	nop

	lui	$2,%hi(gAudioBuffer)
	lw	$2,%lo(gAudioBuffer)($2)
	move	$4,$2
	jal	free
	nop

	lui	$2,%hi(gAudioBuffer)
	sw	$0,%lo(gAudioBuffer)($2)
$L14:
	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	jal	pthread_mutex_destroy
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_update_thread
	.size	sound_update_thread, .-sound_update_thread
	.align	2
	.globl	sound_thread_enable
	.set	nomips16
	.set	nomicromips
	.ent	sound_thread_enable
	.type	sound_thread_enable, @function
sound_thread_enable:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_thread_enable
	.size	sound_thread_enable, .-sound_thread_enable
	.align	2
	.globl	sound_thread_set_volume
	.set	nomips16
	.set	nomicromips
	.ent	sound_thread_set_volume
	.type	sound_thread_set_volume, @function
sound_thread_set_volume:
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
	.end	sound_thread_set_volume
	.size	sound_thread_set_volume, .-sound_thread_set_volume
	.align	2
	.globl	sound_thread_start
	.set	nomips16
	.set	nomicromips
	.ent	sound_thread_start
	.type	sound_thread_start, @function
sound_thread_start:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(gAudioBlockLen)
	li	$3,2944			# 0xb80
	sw	$3,%lo(gAudioBlockLen)($2)
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	sll	$2,$2,3
	move	$4,$2
	jal	malloc
	nop

	move	$3,$2
	lui	$2,%hi(gAudioBuffer)
	sw	$3,%lo(gAudioBuffer)($2)
	lui	$2,%hi(gAudioBuffer)
	lw	$3,%lo(gAudioBuffer)($2)
	lui	$2,%hi(gAudioBlockLen)
	lw	$2,%lo(gAudioBlockLen)($2)
	sll	$2,$2,3
	move	$4,$3
	move	$5,$0
	move	$6,$2
	jal	memset
	nop

	lui	$2,%hi(gReadIDX)
	sw	$0,%lo(gReadIDX)($2)
	lui	$2,%hi(gWriteIDX)
	sw	$0,%lo(gWriteIDX)($2)
	lui	$2,%hi(sound_buffer)
	addiu	$4,$2,%lo(sound_buffer)
	move	$5,$0
	li	$6,5888			# 0x1700
	jal	memset
	nop

	lui	$2,%hi(gAudioMutex)
	addiu	$4,$2,%lo(gAudioMutex)
	move	$5,$0
	jal	pthread_mutex_init
	nop

	lui	$2,%hi(gSoundThread)
	addiu	$4,$2,%lo(gSoundThread)
	move	$5,$0
	lui	$2,%hi(sound_update_thread)
	addiu	$6,$2,%lo(sound_update_thread)
	move	$7,$0
	jal	pthread_create
	nop

	li	$2,1			# 0x1
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_thread_start
	.size	sound_thread_start, .-sound_thread_start
	.align	2
	.globl	sound_thread_stop
	.set	nomips16
	.set	nomicromips
	.ent	sound_thread_stop
	.type	sound_thread_stop, @function
sound_thread_stop:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(gExitSoundThread)
	li	$3,1			# 0x1
	sw	$3,%lo(gExitSoundThread)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sound_thread_stop
	.size	sound_thread_stop, .-sound_thread_stop
	.ident	"GCC: (GNU) 4.5.2"
