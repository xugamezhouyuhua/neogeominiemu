	.file	1 "cache.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	zyh_cache_fd
	.data
	.align	2
	.type	zyh_cache_fd, @object
	.size	zyh_cache_fd, 4
zyh_cache_fd:
	.word	-1
	.rdata
	.align	2
$LC0:
	.ascii	"LOADING_CACHE_INFORMATION_DATA\000"
	.align	2
$LC1:
	.ascii	"MVS_V23\000"
	.align	2
$LC2:
	.ascii	"UNSUPPORTED_VERSION_OF_CACHE_FILE:V%c%c\012\000"
	.align	2
$LC3:
	.ascii	"CURRENT_REQUIRED_VERSION_IS_%s\012\000"
	.align	2
$LC4:
	.ascii	"V23\000"
	.align	2
$LC5:
	.ascii	"PLEASE_REBUILD_CACHE_FILE\000"
	.align	2
$LC6:
	.ascii	"COULD_NOT_OPEN_CACHE_FILE(CACHE_INFO)\000"
	.align	2
$LC7:
	.ascii	"%s/%s_cache/crom\000"
	.align	2
$LC8:
	.ascii	"COULD_NOT_OPEN_CACHE_FILE(CACHE_CROM)\000"
	.align	2
$LC9:
	.ascii	"COULD_NOT_MMAP_CACHE_FILE(CACHE_CROM)\000"
	.align	2
$LC10:
	.ascii	"%dKB_CACHE_FILE(ZYH)\012\000"
	.text
	.align	2
	.globl	zyh_cache_start
	.set	nomips16
	.set	nomicromips
	.ent	zyh_cache_start
	.type	zyh_cache_start, @function
zyh_cache_start:
	.frame	$fp,312,$31		# vars= 272, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$fp,304($sp)
	move	$fp,$sp
	jal	zip_close
	nop

	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	puts
	nop

	sw	$0,32($fp)
	move	$4,$0
	jal	cachefile_open
	nop

	sw	$2,36($fp)
	lw	$2,36($fp)
	beq	$2,$0,$L2
	nop

	addiu	$2,$fp,40
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,8			# 0x8
	lw	$7,36($fp)
	jal	fread
	nop

	addiu	$2,$fp,40
	move	$4,$2
	lui	$2,%hi($LC1)
	addiu	$5,$2,%lo($LC1)
	jal	strcmp
	nop

	bne	$2,$0,$L3
	nop

	lui	$2,%hi(gfx_pen_usage)
	addiu	$2,$2,%lo(gfx_pen_usage)
	lw	$3,8($2)
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	srl	$2,$2,7
	move	$4,$3
	li	$5,1			# 0x1
	move	$6,$2
	lw	$7,36($fp)
	jal	fread
	nop

	li	$2,1			# 0x1
	sw	$2,32($fp)
$L3:
	lw	$4,36($fp)
	jal	fclose
	nop

	lw	$2,32($fp)
	bne	$2,$0,$L4
	nop

	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lb	$2,45($fp)
	move	$3,$2
	lb	$2,46($fp)
	move	$5,$3
	move	$6,$2
	jal	printf
	nop

	lui	$2,%hi($LC3)
	addiu	$2,$2,%lo($LC3)
	move	$4,$2
	lui	$2,%hi($LC4)
	addiu	$5,$2,%lo($LC4)
	jal	printf
	nop

	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	jal	puts
	nop

	move	$2,$0
	j	$L5
	nop

$L2:
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	jal	puts
	nop

	move	$2,$0
	j	$L5
	nop

$L4:
	lui	$2,%hi(use_parent_crom)
	lw	$2,%lo(use_parent_crom)($2)
	beq	$2,$0,$L6
	nop

	lui	$2,%hi($LC7)
	addiu	$2,$2,%lo($LC7)
	addiu	$3,$fp,48
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(parent_name)
	addiu	$7,$2,%lo(parent_name)
	jal	sprintf
	nop

	addiu	$2,$fp,48
	move	$4,$2
	move	$5,$0
	jal	open
	nop

	move	$3,$2
	lui	$2,%hi(zyh_cache_fd)
	sw	$3,%lo(zyh_cache_fd)($2)
$L6:
	lui	$2,%hi(zyh_cache_fd)
	lw	$2,%lo(zyh_cache_fd)($2)
	bgez	$2,$L7
	nop

	lui	$2,%hi($LC7)
	addiu	$2,$2,%lo($LC7)
	addiu	$3,$fp,48
	move	$4,$3
	move	$5,$2
	lui	$2,%hi(cache_dir)
	addiu	$6,$2,%lo(cache_dir)
	lui	$2,%hi(game_name)
	addiu	$7,$2,%lo(game_name)
	jal	sprintf
	nop

	addiu	$2,$fp,48
	move	$4,$2
	move	$5,$0
	jal	open
	nop

	move	$3,$2
	lui	$2,%hi(zyh_cache_fd)
	sw	$3,%lo(zyh_cache_fd)($2)
$L7:
	lui	$2,%hi(zyh_cache_fd)
	lw	$2,%lo(zyh_cache_fd)($2)
	bgez	$2,$L8
	nop

	lui	$2,%hi($LC8)
	addiu	$4,$2,%lo($LC8)
	jal	puts
	nop

	move	$2,$0
	j	$L5
	nop

$L8:
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	lui	$3,%hi(zyh_cache_fd)
	lw	$3,%lo(zyh_cache_fd)($3)
	sw	$3,16($sp)
	sw	$0,20($sp)
	move	$4,$0
	move	$5,$2
	li	$6,1			# 0x1
	li	$7,2			# 0x2
	jal	mmap
	nop

	move	$3,$2
	lui	$2,%hi(memory_region_gfx3)
	sw	$3,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_region_gfx3)
	lw	$3,%lo(memory_region_gfx3)($2)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L9
	nop

	lui	$2,%hi($LC9)
	addiu	$4,$2,%lo($LC9)
	jal	puts
	nop

	lui	$2,%hi(memory_region_gfx3)
	sw	$0,%lo(memory_region_gfx3)($2)
	move	$2,$0
	j	$L5
	nop

$L9:
	lui	$2,%hi($LC10)
	addiu	$3,$2,%lo($LC10)
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	srl	$2,$2,10
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	li	$2,1			# 0x1
$L5:
	move	$sp,$fp
	lw	$31,308($sp)
	lw	$fp,304($sp)
	addiu	$sp,$sp,312
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	zyh_cache_start
	.size	zyh_cache_start, .-zyh_cache_start
	.align	2
	.globl	zyh_cache_shutdown
	.set	nomips16
	.set	nomicromips
	.ent	zyh_cache_shutdown
	.type	zyh_cache_shutdown, @function
zyh_cache_shutdown:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_gfx3)
	lw	$2,%lo(memory_region_gfx3)($2)
	beq	$2,$0,$L11
	nop

	lui	$2,%hi(memory_region_gfx3)
	lw	$3,%lo(memory_region_gfx3)($2)
	lui	$2,%hi(memory_length_gfx3)
	lw	$2,%lo(memory_length_gfx3)($2)
	move	$4,$3
	move	$5,$2
	jal	munmap
	nop

	lui	$2,%hi(memory_region_gfx3)
	sw	$0,%lo(memory_region_gfx3)($2)
$L11:
	lui	$2,%hi(zyh_cache_fd)
	lw	$2,%lo(zyh_cache_fd)($2)
	blez	$2,$L10
	nop

	lui	$2,%hi(zyh_cache_fd)
	lw	$2,%lo(zyh_cache_fd)($2)
	move	$4,$2
	jal	close
	nop

	lui	$2,%hi(zyh_cache_fd)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(zyh_cache_fd)($2)
$L10:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	zyh_cache_shutdown
	.size	zyh_cache_shutdown, .-zyh_cache_shutdown
	.ident	"GCC: (GNU) 4.5.2"
