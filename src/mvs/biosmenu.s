	.file	1 "biosmenu.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	bios_name
	.rdata
	.align	2
$LC0:
	.ascii	"Europe MVS (Ver. 2)\000"
	.align	2
$LC1:
	.ascii	"Europe MVS (Ver. 1)\000"
	.align	2
$LC2:
	.ascii	"US MVS (Ver. 2)\000"
	.align	2
$LC3:
	.ascii	"US MVS (Ver. 1)\000"
	.align	2
$LC4:
	.ascii	"Asia MVS New (Ver. 3)\000"
	.align	2
$LC5:
	.ascii	"Asia MVS (Ver. 3)\000"
	.align	2
$LC6:
	.ascii	"Japan MVS (J3)\000"
	.align	2
$LC7:
	.ascii	"Japan MVS (Ver. 3)\000"
	.align	2
$LC8:
	.ascii	"Japan MVS (Ver. 2)\000"
	.align	2
$LC9:
	.ascii	"Japan MVS (Ver. 1)\000"
	.align	2
$LC10:
	.ascii	"Neo Geo Git(Ver. 1.1)\000"
	.align	2
$LC11:
	.ascii	"Asia AES\000"
	.align	2
$LC12:
	.ascii	"Japan AES\000"
	.align	2
$LC13:
	.ascii	"Unibios MVS (Hack, Ver. 3.2)\000"
	.align	2
$LC14:
	.ascii	"Unibios MVS (Hack, Ver. 3.1)\000"
	.align	2
$LC15:
	.ascii	"Unibios MVS (Hack, Ver. 3.0)\000"
	.align	2
$LC16:
	.ascii	"Unibios MVS (Hack, Ver. 2.3)\000"
	.align	2
$LC17:
	.ascii	"Unibios MVS (Hack, Ver. 2.2)\000"
	.align	2
$LC18:
	.ascii	"Unibios MVS (Hack, Ver. 2.1)\000"
	.align	2
$LC19:
	.ascii	"Unibios MVS (Hack, Ver. 2.0)\000"
	.align	2
$LC20:
	.ascii	"Unibios MVS (Hack, Ver. 1.3)\000"
	.align	2
$LC21:
	.ascii	"Unibios MVS (Hack, Ver. 1.2)\000"
	.align	2
$LC22:
	.ascii	"Unibios MVS (Hack, Ver. 1.1)\000"
	.align	2
$LC23:
	.ascii	"Unibios MVS (Hack, Ver. 1.0)\000"
	.align	2
$LC24:
	.ascii	"Debug MVS (Hack?)\000"
	.data
	.align	2
	.type	bios_name, @object
	.size	bios_name, 100
bios_name:
	.word	$LC0
	.word	$LC1
	.word	$LC2
	.word	$LC3
	.word	$LC4
	.word	$LC5
	.word	$LC6
	.word	$LC7
	.word	$LC8
	.word	$LC9
	.word	$LC10
	.word	$LC11
	.word	$LC12
	.word	$LC13
	.word	$LC14
	.word	$LC15
	.word	$LC16
	.word	$LC17
	.word	$LC18
	.word	$LC19
	.word	$LC20
	.word	$LC21
	.word	$LC22
	.word	$LC23
	.word	$LC24
	.globl	bios_crc
	.rdata
	.align	2
	.type	bios_crc, @object
	.size	bios_crc, 100
bios_crc:
	.word	-1875453831
	.word	-940377531
	.word	-416726050
	.word	656647605
	.word	63741802
	.word	-1850323997
	.word	-537471969
	.word	-253169027
	.word	-1393695332
	.word	-1615811612
	.word	372182718
	.word	-763727375
	.word	382779698
	.word	-1528251981
	.word	207096127
	.word	-1451456087
	.word	661016245
	.word	760256874
	.word	-1918109845
	.word	202556077
	.word	-1303690080
	.word	1336318185
	.word	1574571396
	.word	216290208
	.word	1770961789
	.globl	bios_patch_address
	.align	2
	.type	bios_patch_address, @object
	.size	bios_patch_address, 100
bios_patch_address:
	.word	72802
	.word	72802
	.word	72760
	.word	72760
	.word	68998
	.word	68706
	.word	68998
	.word	73098
	.word	72802
	.word	72802
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.globl	sfix_crc
	.align	2
	.type	sfix_crc, @object
	.size	sfix_crc, 4
sfix_crc:
	.word	-1024848643
	.globl	lorom_crc
	.align	2
	.type	lorom_crc, @object
	.size	lorom_crc, 4
lorom_crc:
	.word	1518784498
	.globl	bios_zip
	.align	2
$LC25:
	.ascii	"neogeo\000"
	.data
	.align	2
	.type	bios_zip, @object
	.size	bios_zip, 4
bios_zip:
	.word	$LC25
	.globl	sfix_name
	.rdata
	.align	2
$LC26:
	.ascii	"sfix.sfx\000"
	.data
	.align	2
	.type	sfix_name, @object
	.size	sfix_name, 4
sfix_name:
	.word	$LC26
	.globl	lorom_name
	.rdata
	.align	2
$LC27:
	.ascii	"000-lo.lo\000"
	.data
	.align	2
	.type	lorom_name, @object
	.size	lorom_name, 4
lorom_name:
	.word	$LC27
	.local	bios_exist
	.comm	bios_exist,25,4
	.rdata
	.align	2
$LC28:
	.ascii	"CRC32_NOT_CORRECT:%s\000"
	.align	2
$LC29:
	.ascii	"FILE_NOT_FOUND:%s\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	bios_error
	.type	bios_error, @function
bios_error:
	.frame	$fp,160,$31		# vars= 128, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-160
	sw	$31,156($sp)
	sw	$fp,152($sp)
	move	$fp,$sp
	sw	$4,160($fp)
	sw	$5,164($fp)
	jal	zip_close
	nop

	lw	$3,164($fp)
	li	$2,-2			# 0xfffffffffffffffe
	bne	$3,$2,$L2
	nop

	lui	$2,%hi($LC28)
	addiu	$2,$2,%lo($LC28)
	addiu	$3,$fp,24
	move	$4,$3
	move	$5,$2
	lw	$6,160($fp)
	jal	sprintf
	nop

	j	$L3
	nop

$L2:
	lui	$2,%hi($LC29)
	addiu	$2,$2,%lo($LC29)
	addiu	$3,$fp,24
	move	$4,$3
	move	$5,$2
	lw	$6,160($fp)
	jal	sprintf
	nop

$L3:
	addiu	$2,$fp,24
	move	$4,$2
	jal	puts
	nop

	move	$sp,$fp
	lw	$31,156($sp)
	lw	$fp,152($sp)
	addiu	$sp,$sp,160
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bios_error
	.size	bios_error, .-bios_error
	.rdata
	.align	2
$LC30:
	.ascii	"BIOS_NOT_FOUND err = %d\012\000"
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	bios_check
	.type	bios_check, @function
bios_check:
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
	sw	$0,24($fp)
	li	$2,24			# 0x18
	sw	$2,28($fp)
	lui	$2,%hi(bios_zip)
	lw	$3,%lo(bios_zip)($2)
	lui	$2,%hi(bios_crc)
	lw	$4,48($fp)
	sll	$4,$4,2
	addiu	$2,$2,%lo(bios_crc)
	addu	$2,$4,$2
	lw	$2,0($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	move	$7,$0
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bltz	$2,$L5
	nop

	jal	file_close
	nop

	lui	$2,%hi(sfix_name)
	lw	$2,%lo(sfix_name)($2)
	sw	$2,36($fp)
	lui	$2,%hi(bios_zip)
	lw	$3,%lo(bios_zip)($2)
	lui	$2,%hi(sfix_crc)
	lw	$2,%lo(sfix_crc)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	move	$7,$0
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L6
	nop

	j	$L11
	nop

$L5:
	lui	$2,%hi($LC30)
	addiu	$2,$2,%lo($LC30)
	move	$4,$2
	lw	$5,32($fp)
	jal	printf
	nop

	move	$2,$0
	j	$L8
	nop

$L6:
	jal	file_close
	nop

	lui	$2,%hi(lorom_name)
	lw	$2,%lo(lorom_name)($2)
	sw	$2,36($fp)
	lui	$2,%hi(bios_zip)
	lw	$3,%lo(bios_zip)($2)
	lui	$2,%hi(lorom_crc)
	lw	$2,%lo(lorom_crc)($2)
	move	$4,$3
	move	$5,$0
	move	$6,$2
	move	$7,$0
	jal	file_open
	nop

	sw	$2,32($fp)
	lw	$2,32($fp)
	bgez	$2,$L9
	nop

	j	$L12
	nop

$L11:
	lui	$2,%hi(sfix_name)
	lw	$2,%lo(sfix_name)($2)
	move	$4,$2
	lw	$5,32($fp)
	jal	bios_error
	nop

	move	$2,$0
	j	$L8
	nop

$L9:
	jal	file_close
	nop

	li	$2,1			# 0x1
	j	$L8
	nop

$L12:
	lui	$2,%hi(lorom_name)
	lw	$2,%lo(lorom_name)($2)
	move	$4,$2
	lw	$5,32($fp)
	jal	bios_error
	nop

	move	$2,$0
$L8:
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bios_check
	.size	bios_check, .-bios_check
	.rdata
	.align	2
$LC31:
	.ascii	"neogeo_bios = %d\012\000"
	.align	2
$LC32:
	.ascii	"ALL_NVRAM_FILES_ARE_REMOVED\000"
	.text
	.align	2
	.globl	bios_select
	.set	nomips16
	.set	nomicromips
	.ent	bios_select
	.type	bios_select, @function
bios_select:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	sw	$2,24($fp)
	lui	$2,%hi(neogeo_bios)
	li	$3,12			# 0xc
	sw	$3,%lo(neogeo_bios)($2)
	lui	$2,%hi($LC31)
	addiu	$3,$2,%lo($LC31)
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	move	$4,$3
	move	$5,$2
	jal	printf
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	move	$4,$2
	jal	bios_check
	nop

	bne	$2,$0,$L14
	nop

	lui	$2,%hi(neogeo_bios)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(neogeo_bios)($2)
	j	$L13
	nop

$L14:
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	lw	$3,24($fp)
	beq	$3,$2,$L13
	nop

	lui	$2,%hi($LC32)
	addiu	$4,$2,%lo($LC32)
	jal	puts
	nop

$L13:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bios_select
	.size	bios_select, .-bios_select
	.ident	"GCC: (GNU) 4.5.2"
