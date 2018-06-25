	.file	1 "loadrom.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.data
	.align	2
	.type	rom_fd, @object
	.size	rom_fd, 4
rom_fd:
	.word	-1
	.rdata
	.align	2
$LC0:
	.ascii	"%s/%s.zip\000"
	.align	2
$LC1:
	.ascii	"%sroms/%s.zip\000"
	.text
	.align	2
	.globl	file_open
	.set	nomips16
	.set	nomicromips
	.ent	file_open
	.type	file_open, @function
file_open:
	.frame	$fp,568,$31		# vars= 536, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-568
	sw	$31,564($sp)
	sw	$fp,560($sp)
	move	$fp,$sp
	sw	$4,568($fp)
	sw	$5,572($fp)
	sw	$6,576($fp)
	sw	$7,580($fp)
	sw	$0,28($fp)
	sw	$0,24($fp)
	j	$L2
	nop

$L14:
	lw	$2,24($fp)
	li	$3,1			# 0x1
	beq	$2,$3,$L5
	nop

	li	$3,2			# 0x2
	beq	$2,$3,$L6
	nop

	bne	$2,$0,$L3
	nop

$L4:
	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
	addiu	$3,$fp,300
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(game_dir)
	addiu	$6,$2,%lo(game_dir)
	lw	$7,568($fp)
	jal	sprintf
	nop

	j	$L3
	nop

$L5:
	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
	addiu	$3,$fp,300
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(game_dir)
	addiu	$6,$2,%lo(game_dir)
	lw	$7,572($fp)
	jal	sprintf
	nop

	j	$L3
	nop

$L6:
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	addiu	$3,$fp,300
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(launchDir)
	addiu	$6,$2,%lo(launchDir)
	lw	$7,572($fp)
	jal	sprintf
	nop

	nop
$L3:
	addiu	$2,$fp,300
	move	$4,$2
	jal	zip_open
	nop

	move	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L7
	nop

	addiu	$2,$fp,36
	move	$4,$2
	jal	zip_findfirst
	nop

	beq	$2,$0,$L8
	nop

	lw	$3,296($fp)
	lw	$2,576($fp)
	bne	$3,$2,$L9
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
	j	$L8
	nop

$L9:
	lw	$2,28($fp)
	bne	$2,$0,$L8
	nop

	j	$L10
	nop

$L11:
	lw	$3,296($fp)
	lw	$2,576($fp)
	bne	$3,$2,$L10
	nop

	li	$2,1			# 0x1
	sw	$2,28($fp)
	j	$L8
	nop

$L10:
	addiu	$2,$fp,36
	move	$4,$2
	jal	zip_findnext
	nop

	bne	$2,$0,$L11
	nop

$L8:
	lw	$2,28($fp)
	bne	$2,$0,$L7
	nop

	lw	$2,580($fp)
	beq	$2,$0,$L12
	nop

	lw	$4,580($fp)
	jal	zopen
	nop

	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L12
	nop

	lw	$4,32($fp)
	jal	zclose
	nop

	li	$2,2			# 0x2
	sw	$2,28($fp)
$L12:
	jal	zip_close
	nop

$L7:
	lw	$2,28($fp)
	bne	$2,$0,$L13
	nop

	lw	$2,572($fp)
	beq	$2,$0,$L13
	nop

	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$2,24($fp)
	slt	$2,$2,3
	bne	$2,$0,$L14
	nop

$L13:
	lw	$3,28($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L15
	nop

	lw	$2,580($fp)
	beq	$2,$0,$L16
	nop

	addiu	$2,$fp,36
	lw	$4,580($fp)
	move	$5,$2
	jal	strcpy
	nop

$L16:
	addiu	$2,$fp,36
	move	$4,$2
	jal	zopen
	nop

	move	$3,$2
	lui	$2,%hi(rom_fd)
	sw	$3,%lo(rom_fd)($2)
	li	$2,1			# 0x1
	j	$L17
	nop

$L15:
	lw	$3,28($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L18
	nop

	li	$2,-2			# 0xfffffffffffffffe
	j	$L17
	nop

$L18:
	li	$2,-1			# 0xffffffffffffffff
$L17:
	move	$sp,$fp
	lw	$31,564($sp)
	lw	$fp,560($sp)
	addiu	$sp,$sp,568
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	file_open
	.size	file_open, .-file_open
	.align	2
	.globl	file_close
	.set	nomips16
	.set	nomicromips
	.ent	file_close
	.type	file_close, @function
file_close:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(rom_fd)
	lw	$3,%lo(rom_fd)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L19
	nop

	lui	$2,%hi(rom_fd)
	lw	$2,%lo(rom_fd)($2)
	move	$4,$2
	jal	zclose
	nop

	jal	zip_close
	nop

	lui	$2,%hi(rom_fd)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(rom_fd)($2)
$L19:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	file_close
	.size	file_close, .-file_close
	.align	2
	.globl	file_read
	.set	nomips16
	.set	nomicromips
	.ent	file_read
	.type	file_read, @function
file_read:
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
	lui	$2,%hi(rom_fd)
	lw	$3,%lo(rom_fd)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L22
	nop

	lui	$2,%hi(rom_fd)
	lw	$2,%lo(rom_fd)($2)
	move	$4,$2
	lw	$5,32($fp)
	lw	$6,36($fp)
	jal	zread
	nop

	j	$L23
	nop

$L22:
	li	$2,-1			# 0xffffffffffffffff
$L23:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	file_read
	.size	file_read, .-file_read
	.align	2
	.globl	file_getc
	.set	nomips16
	.set	nomicromips
	.ent	file_getc
	.type	file_getc, @function
file_getc:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(rom_fd)
	lw	$3,%lo(rom_fd)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L25
	nop

	lui	$2,%hi(rom_fd)
	lw	$2,%lo(rom_fd)($2)
	move	$4,$2
	jal	zgetc
	nop

	j	$L26
	nop

$L25:
	li	$2,-1			# 0xffffffffffffffff
$L26:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	file_getc
	.size	file_getc, .-file_getc
	.rdata
	.align	2
$LC2:
	.ascii	"%s/%s_cache/cache_info\000"
	.align	2
$LC3:
	.ascii	"rb\000"
	.align	2
$LC4:
	.ascii	"%s/%s_cache/crom\000"
	.align	2
$LC5:
	.ascii	"%s/%s_cache/srom\000"
	.align	2
$LC6:
	.ascii	"%s/%s_cache/vrom\000"
	.text
	.align	2
	.globl	cachefile_open
	.set	nomips16
	.set	nomicromips
	.ent	cachefile_open
	.type	cachefile_open, @function
cachefile_open:
	.frame	$fp,296,$31		# vars= 264, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-296
	sw	$31,292($sp)
	sw	$fp,288($sp)
	move	$fp,$sp
	sw	$4,296($fp)
	sw	$0,24($fp)
	lw	$2,296($fp)
	li	$3,1			# 0x1
	beq	$2,$3,$L30
	nop

	slt	$3,$2,2
	beq	$3,$0,$L33
	nop

	beq	$2,$0,$L29
	nop

	j	$L28
	nop

$L33:
	li	$3,2			# 0x2
	beq	$2,$3,$L31
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L32
	nop

	j	$L28
	nop

$L29:
	lui	$2,%hi(use_parent_crom)
	lw	$2,%lo(use_parent_crom)($2)
	beq	$2,$0,$L34
	nop

	lui	$2,%hi(use_parent_srom)
	lw	$2,%lo(use_parent_srom)($2)
	beq	$2,$0,$L34
	nop

	lui	$2,%hi(use_parent_vrom)
	lw	$2,%lo(use_parent_vrom)($2)
	beq	$2,$0,$L34
	nop

	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(parent_name)
	addiu	$7,$2,%lo(parent_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	j	$L28
	nop

$L34:
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	j	$L28
	nop

$L30:
	lui	$2,%hi(use_parent_crom)
	lw	$2,%lo(use_parent_crom)($2)
	beq	$2,$0,$L36
	nop

	lui	$2,%hi($LC4)
	addiu	$2,$2,%lo($LC4)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(parent_name)
	addiu	$7,$2,%lo(parent_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
$L36:
	lw	$2,24($fp)
	bne	$2,$0,$L42
	nop

	lui	$2,%hi($LC4)
	addiu	$2,$2,%lo($LC4)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	j	$L28
	nop

$L31:
	lui	$2,%hi(use_parent_srom)
	lw	$2,%lo(use_parent_srom)($2)
	beq	$2,$0,$L38
	nop

	lui	$2,%hi($LC5)
	addiu	$2,$2,%lo($LC5)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(parent_name)
	addiu	$7,$2,%lo(parent_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
$L38:
	lw	$2,24($fp)
	bne	$2,$0,$L43
	nop

	lui	$2,%hi($LC5)
	addiu	$2,$2,%lo($LC5)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	j	$L28
	nop

$L32:
	lui	$2,%hi(use_parent_vrom)
	lw	$2,%lo(use_parent_vrom)($2)
	beq	$2,$0,$L40
	nop

	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(parent_name)
	addiu	$7,$2,%lo(parent_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
$L40:
	lw	$2,24($fp)
	bne	$2,$0,$L44
	nop

	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	addiu	$3,$fp,28
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$3,$fp,28
	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$3
	move	$5,$2
	jal	fopen
	nop

	sw	$2,24($fp)
	j	$L28
	nop

$L42:
	nop
	j	$L28
	nop

$L43:
	nop
	j	$L28
	nop

$L44:
	nop
$L28:
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,292($sp)
	lw	$fp,288($sp)
	addiu	$sp,$sp,296
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	cachefile_open
	.size	cachefile_open, .-cachefile_open
	.rdata
	.align	2
$LC7:
	.ascii	"ERROR:read rom length error...\000"
	.text
	.align	2
	.globl	rom_load
	.set	nomips16
	.set	nomicromips
	.ent	rom_load
	.type	rom_load, @function
rom_load:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	j	$L46
	nop

$L66:
	nop
$L46:
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$2,4($2)
	sw	$2,24($fp)
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$2,20($2)
	bne	$2,$0,$L47
	nop

	lw	$3,60($fp)
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	lw	$4,56($fp)
	addu	$2,$4,$2
	lw	$2,8($2)
	move	$4,$3
	move	$5,$2
	jal	file_read
	nop

	sw	$2,32($fp)
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,8($2)
	lw	$2,32($fp)
	beq	$3,$2,$L48
	nop

	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	jal	puts
	nop

$L48:
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,2			# 0x2
	bne	$3,$2,$L49
	nop

	lw	$3,60($fp)
	lw	$2,24($fp)
	addu	$4,$3,$2
	lw	$3,60($fp)
	lw	$2,24($fp)
	addu	$3,$3,$2
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$5,$2,3
	subu	$2,$5,$2
	lw	$5,56($fp)
	addu	$2,$5,$2
	lw	$2,8($2)
	move	$5,$3
	move	$6,$2
	jal	swab
	nop

	j	$L49
	nop

$L47:
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,20($2)
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$4,$2,3
	subu	$2,$4,$2
	lw	$4,56($fp)
	addu	$2,$4,$2
	lw	$2,16($2)
	addu	$2,$3,$2
	sw	$2,36($fp)
	sw	$0,28($fp)
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,16($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L61
	nop

	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,2			# 0x2
	bne	$3,$2,$L62
	nop

	lw	$2,24($fp)
	xori	$2,$2,0x1
	sw	$2,24($fp)
	j	$L52
	nop

$L55:
	jal	file_getc
	nop

	sw	$2,40($fp)
	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L63
	nop

$L53:
	lw	$3,60($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	lw	$3,40($fp)
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,36($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	j	$L52
	nop

$L62:
	nop
$L52:
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,8($2)
	lw	$2,28($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L55
	nop

	j	$L49
	nop

$L59:
	jal	file_getc
	nop

	sw	$2,40($fp)
	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L64
	nop

$L57:
	lw	$3,60($fp)
	lw	$2,24($fp)
	addu	$2,$3,$2
	lw	$3,40($fp)
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	jal	file_getc
	nop

	sw	$2,40($fp)
	lw	$3,40($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L65
	nop

$L58:
	lw	$2,24($fp)
	addiu	$2,$2,1
	lw	$3,60($fp)
	addu	$2,$3,$2
	lw	$3,40($fp)
	andi	$3,$3,0x00ff
	sb	$3,0($2)
	lw	$2,36($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,28($fp)
	addiu	$2,$2,2
	sw	$2,28($fp)
	j	$L56
	nop

$L61:
	nop
$L56:
	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,8($2)
	lw	$2,28($fp)
	sltu	$2,$2,$3
	bne	$2,$0,$L59
	nop

	j	$L49
	nop

$L63:
	nop
	j	$L49
	nop

$L64:
	nop
	j	$L49
	nop

$L65:
	nop
$L49:
	lw	$2,64($fp)
	addiu	$2,$2,1
	sw	$2,64($fp)
	lw	$3,64($fp)
	lw	$2,68($fp)
	beq	$3,$2,$L60
	nop

	lw	$2,64($fp)
	sll	$2,$2,3
	sll	$3,$2,3
	subu	$2,$3,$2
	lw	$3,56($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L66
	nop

$L60:
	lw	$2,64($fp)
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	rom_load
	.size	rom_load, .-rom_load
	.rdata
	.align	2
$LC8:
	.ascii	"COULD_NOT_ALLOCATE_%s_MEMORY\012\000"
	.text
	.align	2
	.globl	error_memory
	.set	nomips16
	.set	nomicromips
	.ent	error_memory
	.type	error_memory, @function
error_memory:
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
	jal	zip_close
	nop

	lui	$2,%hi($LC8)
	addiu	$2,$2,%lo($LC8)
	move	$4,$2
	lw	$5,32($fp)
	jal	printf
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	error_memory
	.size	error_memory, .-error_memory
	.rdata
	.align	2
$LC9:
	.ascii	"CRC32_NOT_CORRECT_%s\012\000"
	.text
	.align	2
	.globl	error_crc
	.set	nomips16
	.set	nomicromips
	.ent	error_crc
	.type	error_crc, @function
error_crc:
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
	jal	zip_close
	nop

	lui	$2,%hi($LC9)
	addiu	$2,$2,%lo($LC9)
	move	$4,$2
	lw	$5,32($fp)
	jal	printf
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	error_crc
	.size	error_crc, .-error_crc
	.rdata
	.align	2
$LC10:
	.ascii	"FILE_NOT_FOUND_%s\012\000"
	.text
	.align	2
	.globl	error_file
	.set	nomips16
	.set	nomicromips
	.ent	error_file
	.type	error_file, @function
error_file:
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
	jal	zip_close
	nop

	lui	$2,%hi($LC10)
	addiu	$2,$2,%lo($LC10)
	move	$4,$2
	lw	$5,32($fp)
	jal	printf
	nop

	lui	$2,%hi(Loop)
	sw	$0,%lo(Loop)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	error_file
	.size	error_file, .-error_file
	.ident	"GCC: (GNU) 4.5.2"
