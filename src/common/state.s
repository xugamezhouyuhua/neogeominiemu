	.file	1 "state.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	date_str,16,4

	.comm	time_str,16,4

	.comm	stver_str,16,4

	.comm	state_version,4,4

	.comm	state_buffer,4,4

	.comm	current_state_version,4,4

	.comm	state_reload_bios,4,4
	.rdata
	.align	2
$LC0:
	.ascii	"MVS_SV23\000"
	.data
	.align	2
	.type	current_version_str, @object
	.size	current_version_str, 4
current_version_str:
	.word	$LC0
	.rdata
	.align	2
$LC1:
	.ascii	"%sstate/%s.sv%d\000"
	.align	2
$LC2:
	.ascii	"STATE_SAVING %s.sv%d\000"
	.align	2
$LC3:
	.ascii	"wb\000"
	.align	2
$LC4:
	.ascii	"COULD_NOT_ALLOCATE_STATE_BUFFER\000"
	.text
	.align	2
	.globl	state_save
	.set	nomips16
	.set	nomicromips
	.ent	state_save
	.type	state_save, @function
state_save:
	.frame	$fp,312,$31		# vars= 272, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$fp,304($sp)
	move	$fp,$sp
	sw	$4,312($fp)
	sw	$0,32($fp)
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	addiu	$3,$fp,44
	lw	$4,312($fp)
	sw	$4,16($sp)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$2,$fp,44
	move	$4,$2
	jal	remove
	nop

	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	move	$4,$2
	lui	$2,%hi(game_name)
	addiu	$5,$2,%lo(game_name)
	lw	$6,312($fp)
	jal	printf
	nop

	addiu	$3,$fp,44
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,32($fp)
	li	$4,327680			# 0x50000
	jal	malloc
	nop

	sw	$2,36($fp)
	lui	$2,%hi(state_buffer)
	lw	$3,36($fp)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	bne	$2,$0,$L2
	nop

	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

	nop
$L3 = .
	lw	$2,32($fp)
	beq	$2,$0,$L5
	nop

	j	$L6
	nop

$L2:
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	move	$5,$0
	li	$6,327680			# 0x50000
	jal	memset
	nop

	lui	$2,%hi(state_buffer)
	lw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(current_version_str)
	lw	$2,%lo(current_version_str)($2)
	move	$4,$3
	move	$5,$2
	li	$6,8			# 0x8
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,8
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	jal	state_save_memory
	nop

	jal	state_save_m68000
	nop

	jal	state_save_z80
	nop

	jal	state_save_input
	nop

	jal	state_save_timer
	nop

	jal	state_save_driver
	nop

	jal	state_save_video
	nop

	jal	state_save_ym2610
	nop

	jal	state_save_pd4990a
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$3,$2
	lw	$2,36($fp)
	subu	$2,$3,$2
	sw	$2,40($fp)
	lw	$4,36($fp)
	li	$5,1			# 0x1
	lw	$6,40($fp)
	lw	$7,32($fp)
	jal	fwrite
	nop

	lw	$4,32($fp)
	jal	fclose
	nop

	lw	$4,36($fp)
	jal	free
	nop

	li	$2,1			# 0x1
	j	$L4
	nop

$L6:
	lw	$4,32($fp)
	jal	fclose
	nop

	addiu	$2,$fp,44
	move	$4,$2
	jal	remove
	nop

$L5:
	move	$2,$0
$L4:
	move	$sp,$fp
	lw	$31,308($sp)
	lw	$fp,304($sp)
	addiu	$sp,$sp,312
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_save
	.size	state_save, .-state_save
	.rdata
	.align	2
$LC5:
	.ascii	"STATE_LOADING %s.sv%d\012\000"
	.align	2
$LC6:
	.ascii	"rb\000"
	.align	2
$LC7:
	.ascii	"COULD_NOT_RELOAD_BIOS\000"
	.align	2
$LC8:
	.ascii	"COULD_NOT_OPEN_STATE_FILE %s.sv%d\012\000"
	.text
	.align	2
	.globl	state_load
	.set	nomips16
	.set	nomicromips
	.ent	state_load
	.type	state_load, @function
state_load:
	.frame	$fp,304,$31		# vars= 264, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-304
	sw	$31,300($sp)
	sw	$fp,296($sp)
	move	$fp,$sp
	sw	$4,304($fp)
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	addiu	$3,$fp,36
	lw	$4,304($fp)
	sw	$4,16($sp)
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	lui	$2,%hi(state_reload_bios)
	sw	$0,%lo(state_reload_bios)($2)
	lui	$2,%hi($LC5)
	addiu	$2,$2,%lo($LC5)
	move	$4,$2
	lui	$2,%hi(game_name)
	addiu	$5,$2,%lo(game_name)
	lw	$6,304($fp)
	jal	printf
	nop

	addiu	$3,$fp,36
	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	beq	$2,$0,$L8
	nop

	lw	$4,32($fp)
	li	$5,8			# 0x8
	li	$6,1			# 0x1
	jal	fseek
	nop

	lw	$4,32($fp)
	jal	state_load_memory
	nop

	lw	$4,32($fp)
	jal	state_load_m68000
	nop

	lw	$4,32($fp)
	jal	state_load_z80
	nop

	lw	$4,32($fp)
	jal	state_load_input
	nop

	lw	$4,32($fp)
	jal	state_load_timer
	nop

	lw	$4,32($fp)
	jal	state_load_driver
	nop

	lw	$4,32($fp)
	jal	state_load_video
	nop

	lw	$4,32($fp)
	jal	state_load_ym2610
	nop

	lw	$4,32($fp)
	jal	state_load_pd4990a
	nop

	lw	$4,32($fp)
	jal	fclose
	nop

	lui	$2,%hi(state_reload_bios)
	lw	$2,%lo(state_reload_bios)($2)
	beq	$2,$0,$L9
	nop

	lui	$2,%hi(state_reload_bios)
	sw	$0,%lo(state_reload_bios)($2)
	jal	reload_bios
	nop

	bne	$2,$0,$L9
	nop

	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	jal	puts
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$2,$0
	j	$L10
	nop

$L9:
	li	$2,1			# 0x1
	j	$L10
	nop

$L8:
	lui	$2,%hi($LC8)
	addiu	$2,$2,%lo($LC8)
	move	$4,$2
	lui	$2,%hi(game_name)
	addiu	$5,$2,%lo(game_name)
	lw	$6,304($fp)
	jal	printf
	nop

	move	$2,$0
$L10:
	move	$sp,$fp
	lw	$31,300($sp)
	lw	$fp,296($sp)
	addiu	$sp,$sp,304
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load
	.size	state_load, .-state_load
	.ident	"GCC: (GNU) 4.5.2"
