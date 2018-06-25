	.file	1 "mvs.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	neogeo_bios
	.data
	.align	2
	.type	neogeo_bios, @object
	.size	neogeo_bios, 4
neogeo_bios:
	.word	-1

	.comm	neogeo_region,4,4

	.comm	neogeo_save_sound_flag,4,4
	.rdata
	.align	2
$LC0:
	.ascii	"%smemcard/%s.bin\000"
	.align	2
$LC1:
	.ascii	"rb\000"
	.align	2
$LC2:
	.ascii	"%snvram/%s.nv\000"
	.align	2
$LC3:
	.ascii	"ERROR:Open %s fail...\012\000"
	.align	2
$LC4:
	.ascii	"DONE2\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_init
	.type	neogeo_init, @function
neogeo_init:
	.frame	$fp,296,$31		# vars= 264, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-296
	sw	$31,292($sp)
	sw	$fp,288($sp)
	move	$fp,$sp
	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L2
	nop

	lui	$2,%hi(neogeo_memcard)
	addiu	$4,$2,%lo(neogeo_memcard)
	li	$5,1			# 0x1
	li	$6,2048			# 0x800
	lw	$7,24($fp)
	jal	fread
	nop

	lw	$4,24($fp)
	jal	fclose
	nop

$L2:
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L3
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$4,$2,%lo(neogeo_sram16)
	li	$5,1			# 0x1
	li	$6,8192			# 0x2000
	lw	$7,24($fp)
	jal	fread
	nop

	lw	$4,24($fp)
	jal	fclose
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$3,$2,%lo(neogeo_sram16)
	lui	$2,%hi(neogeo_sram16)
	addiu	$2,$2,%lo(neogeo_sram16)
	move	$4,$3
	move	$5,$2
	li	$6,8192			# 0x2000
	jal	swab
	nop

	j	$L4
	nop

$L3:
	lui	$2,%hi($LC3)
	addiu	$3,$2,%lo($LC3)
	addiu	$2,$fp,28
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

$L4:
	jal	neogeo_driver_init
	nop

	jal	neogeo_video_init
	nop

	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

	jal	video_clear_buffer
	nop

	li	$2,1			# 0x1
	move	$sp,$fp
	lw	$31,292($sp)
	lw	$fp,288($sp)
	addiu	$sp,$sp,296
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_init
	.size	neogeo_init, .-neogeo_init
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_reset
	.type	neogeo_reset, @function
neogeo_reset:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	video_clear_buffer
	nop

	jal	timer_reset
	nop

	jal	input_reset
	nop

	jal	neogeo_driver_reset
	nop

	jal	neogeo_video_reset
	nop

	jal	sound_reset
	nop

	lui	$2,%hi(Loop)
	li	$3,3			# 0x3
	sw	$3,%lo(Loop)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_reset
	.size	neogeo_reset, .-neogeo_reset
	.rdata
	.align	2
$LC5:
	.ascii	"PLEASE_WAIT2\000"
	.align	2
$LC6:
	.ascii	"wb\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_exit
	.type	neogeo_exit, @function
neogeo_exit:
	.frame	$fp,296,$31		# vars= 264, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-296
	sw	$31,292($sp)
	sw	$fp,288($sp)
	move	$fp,$sp
	jal	video_clear_buffer
	nop

	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	jal	puts
	nop

	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L7
	nop

	lui	$2,%hi(neogeo_memcard)
	addiu	$4,$2,%lo(neogeo_memcard)
	li	$5,1			# 0x1
	li	$6,2048			# 0x800
	lw	$7,24($fp)
	jal	fwrite
	nop

	lw	$4,24($fp)
	jal	fclose
	nop

$L7:
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L8
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$3,$2,%lo(neogeo_sram16)
	lui	$2,%hi(neogeo_sram16)
	addiu	$2,$2,%lo(neogeo_sram16)
	move	$4,$3
	move	$5,$2
	li	$6,8192			# 0x2000
	jal	swab
	nop

	lui	$2,%hi(neogeo_sram16)
	addiu	$4,$2,%lo(neogeo_sram16)
	li	$5,1			# 0x1
	li	$6,8192			# 0x2000
	lw	$7,24($fp)
	jal	fwrite
	nop

	lw	$4,24($fp)
	jal	fclose
	nop

$L8:
	lui	$2,%hi(neogeo_save_sound_flag)
	lw	$2,%lo(neogeo_save_sound_flag)($2)
	beq	$2,$0,$L9
	nop

	lui	$2,%hi(option_sound_enable)
	li	$3,1			# 0x1
	sw	$3,%lo(option_sound_enable)($2)
$L9:
	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

	move	$sp,$fp
	lw	$31,292($sp)
	lw	$fp,288($sp)
	addiu	$sp,$sp,296
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_exit
	.size	neogeo_exit, .-neogeo_exit
	.rdata
	.align	2
$LC7:
	.ascii	"Real = %d Virtual = %d\012\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_run
	.type	neogeo_run, @function
neogeo_run:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	j	$L11
	nop

$L22:
	jal	neogeo_reset
	nop

	li	$2,16892			# 0x41fc
	sw	$2,56($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	jal	ZYH_GetTicks
	nop

	sw	$2,28($fp)
	lw	$2,28($fp)
	sw	$2,24($fp)
	j	$L12
	nop

$L21:
	jal	update_inputport
	nop

	jal	ZYH_GetTicks
	nop

	sw	$2,60($fp)
	lw	$3,60($fp)
	lw	$2,24($fp)
	subu	$3,$3,$2
	li	$2,983040			# 0xf0000
	ori	$2,$2,0x4241
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	lui	$2,%hi($LC7)
	addiu	$2,$2,%lo($LC7)
	move	$4,$2
	lw	$5,32($fp)
	lw	$6,36($fp)
	jal	printf
	nop

	sw	$0,32($fp)
	sw	$0,36($fp)
	lw	$2,60($fp)
	sw	$2,24($fp)
$L13:
	jal	ZYH_GetTicks
	nop

	sw	$2,64($fp)
	lw	$3,64($fp)
	lw	$2,28($fp)
	subu	$2,$3,$2
	lw	$4,48($fp)
	lw	$3,56($fp)
	mul	$3,$4,$3
	subu	$2,$2,$3
	sw	$2,40($fp)
	lw	$3,64($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	lw	$3,48($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0x1941
	slt	$2,$3,$2
	bne	$2,$0,$L15
	nop

$L14:
	jal	ZYH_StartTicks
	nop

	jal	ZYH_GetTicks
	nop

	sw	$2,64($fp)
	lw	$2,64($fp)
	sw	$2,28($fp)
	sw	$0,48($fp)
	sw	$0,44($fp)
	sw	$0,40($fp)
$L15:
	lw	$2,48($fp)
	addiu	$2,$2,1
	sw	$2,48($fp)
	lw	$2,40($fp)
	blez	$2,$L16
	nop

	lw	$2,44($fp)
	slt	$2,$2,3
	beq	$2,$0,$L16
	nop

	lui	$2,%hi(timer_update_cpu)
	lw	$2,%lo(timer_update_cpu)($2)
	li	$4,1			# 0x1
	move	$25,$2
	jalr	$25
	nop

	li	$4,1			# 0x1
	jal	update_screen
	nop

	jal	SndFillAudioData
	nop

	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	j	$L17
	nop

$L16:
	jal	ZYH_GetTicks
	nop

	sw	$2,52($fp)
	lui	$2,%hi(timer_update_cpu)
	lw	$2,%lo(timer_update_cpu)($2)
	move	$4,$0
	move	$25,$2
	jalr	$25
	nop

	move	$4,$0
	jal	update_screen
	nop

	jal	SndFillAudioData
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	lw	$2,44($fp)
	slt	$2,$2,3
	beq	$2,$0,$L18
	nop

	jal	ZYH_GetTicks
	nop

	sw	$2,68($fp)
	lw	$3,68($fp)
	lw	$2,52($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L19
	nop

	lw	$2,68($fp)
	sw	$2,52($fp)
$L19:
	lw	$3,52($fp)
	lw	$2,68($fp)
	subu	$3,$3,$2
	lw	$2,56($fp)
	addu	$3,$3,$2
	lw	$2,40($fp)
	subu	$3,$3,$2
	lw	$2,56($fp)
	srl	$4,$2,31
	addu	$2,$4,$2
	sra	$2,$2,1
	subu	$2,$3,$2
	sw	$2,72($fp)
	lw	$2,72($fp)
	slt	$2,$2,1001
	bne	$2,$0,$L20
	nop

	lw	$2,72($fp)
	move	$4,$2
	jal	usleep
	nop

	j	$L20
	nop

$L18:
	sw	$0,48($fp)
	jal	ZYH_StartTicks
	nop

	jal	ZYH_GetTicks
	nop

	sw	$2,64($fp)
	lw	$2,64($fp)
	sw	$2,28($fp)
$L20:
	sw	$0,44($fp)
$L17:
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L12:
	lui	$2,%hi(Loop)
	lw	$3,%lo(Loop)($2)
	li	$2,3			# 0x3
	beq	$3,$2,$L21
	nop

	jal	video_clear_buffer
	nop

$L11:
	lui	$2,%hi(Loop)
	lw	$2,%lo(Loop)($2)
	slt	$2,$2,2
	beq	$2,$0,$L22
	nop

	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_run
	.size	neogeo_run, .-neogeo_run
	.align	2
	.globl	neogeo_main
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_main
	.type	neogeo_main, @function
neogeo_main:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(Loop)
	li	$3,2			# 0x2
	sw	$3,%lo(Loop)($2)
	j	$L24
	nop

$L29:
	lui	$2,%hi(Loop)
	li	$3,3			# 0x3
	sw	$3,%lo(Loop)($2)
	jal	memory_init
	nop

	beq	$2,$0,$L25
	nop

	jal	sound_init
	nop

	beq	$2,$0,$L26
	nop

	jal	input_init
	nop

	beq	$2,$0,$L27
	nop

	jal	neogeo_init
	nop

	beq	$2,$0,$L28
	nop

	jal	neogeo_run
	nop

$L28:
	jal	neogeo_exit
	nop

$L27:
	jal	input_shutdown
	nop

$L26:
	jal	sound_exit
	nop

$L25:
	jal	memory_shutdown
	nop

$L24:
	lui	$2,%hi(Loop)
	lw	$2,%lo(Loop)($2)
	bgtz	$2,$L29
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_main
	.size	neogeo_main, .-neogeo_main
	.align	2
	.globl	neogeo_emulator_exit
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_emulator_exit
	.type	neogeo_emulator_exit, @function
neogeo_emulator_exit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_emulator_exit
	.size	neogeo_emulator_exit, .-neogeo_emulator_exit
	.ident	"GCC: (GNU) 4.5.2"
