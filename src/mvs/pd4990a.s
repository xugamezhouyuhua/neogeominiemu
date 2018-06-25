	.file	1 "pd4990a.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.globl	pd4990a
	.data
	.align	2
	.type	pd4990a, @object
	.size	pd4990a, 28
pd4990a:
	.word	0
	.word	0
	.word	0
	.word	9
	.word	9
	.word	115
	.word	1
	.local	shiftlo
	.comm	shiftlo,4,4
	.local	shifthi
	.comm	shifthi,4,4
	.local	retraces
	.comm	retraces,4,4
	.local	testwaits
	.comm	testwaits,4,4
	.align	2
	.type	maxwaits, @object
	.size	maxwaits, 4
maxwaits:
	.word	1
	.local	testbit
	.comm	testbit,4,4
	.local	outputbit
	.comm	outputbit,4,4
	.local	bitno
	.comm	bitno,4,4
	.local	reading
	.comm	reading,1,1
	.local	writting
	.comm	writting,1,1
	.local	clock_line
	.comm	clock_line,4,4
	.local	command_line
	.comm	command_line,4,4
	.text
	.align	2
	.globl	pd4990a_addretrace
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_addretrace
	.type	pd4990a_addretrace, @function
pd4990a_addretrace:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(testwaits)
	lw	$2,%lo(testwaits)($2)
	addiu	$3,$2,1
	lui	$2,%hi(testwaits)
	sw	$3,%lo(testwaits)($2)
	lui	$2,%hi(testwaits)
	lw	$3,%lo(testwaits)($2)
	lui	$2,%hi(maxwaits)
	lw	$2,%lo(maxwaits)($2)
	slt	$2,$3,$2
	bne	$2,$0,$L2
	nop

	lui	$2,%hi(testbit)
	lw	$2,%lo(testbit)($2)
	xori	$3,$2,0x1
	lui	$2,%hi(testbit)
	sw	$3,%lo(testbit)($2)
	lui	$2,%hi(testwaits)
	sw	$0,%lo(testwaits)($2)
$L2:
	lui	$2,%hi(retraces)
	lw	$2,%lo(retraces)($2)
	addiu	$3,$2,1
	lui	$2,%hi(retraces)
	sw	$3,%lo(retraces)($2)
	lui	$2,%hi(retraces)
	lw	$2,%lo(retraces)($2)
	slt	$2,$2,60
	bne	$2,$0,$L11
	nop

$L3:
	lui	$2,%hi(retraces)
	sw	$0,%lo(retraces)($2)
	lui	$2,%hi(pd4990a)
	lw	$2,%lo(pd4990a)($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	sw	$3,%lo(pd4990a)($2)
	lui	$2,%hi(pd4990a)
	lw	$2,%lo(pd4990a)($2)
	andi	$2,$2,0xf
	slt	$2,$2,10
	bne	$2,$0,$L12
	nop

$L5:
	lui	$2,%hi(pd4990a)
	lw	$2,%lo(pd4990a)($2)
	andi	$3,$2,0xf0
	lui	$2,%hi(pd4990a)
	sw	$3,%lo(pd4990a)($2)
	lui	$2,%hi(pd4990a)
	lw	$2,%lo(pd4990a)($2)
	addiu	$3,$2,16
	lui	$2,%hi(pd4990a)
	sw	$3,%lo(pd4990a)($2)
	lui	$2,%hi(pd4990a)
	lw	$2,%lo(pd4990a)($2)
	slt	$2,$2,96
	bne	$2,$0,$L13
	nop

$L6:
	lui	$2,%hi(pd4990a)
	sw	$0,%lo(pd4990a)($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,4($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,4($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,4($2)
	andi	$2,$2,0xf
	slt	$2,$2,10
	bne	$2,$0,$L14
	nop

$L7:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,4($2)
	andi	$3,$2,0xf0
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,4($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,4($2)
	addiu	$3,$2,16
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,4($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,4($2)
	slt	$2,$2,96
	bne	$2,$0,$L15
	nop

$L8:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$0,4($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,8($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,8($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,8($2)
	andi	$2,$2,0xf
	slt	$2,$2,10
	bne	$2,$0,$L16
	nop

$L9:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,8($2)
	andi	$3,$2,0xf0
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,8($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,8($2)
	addiu	$3,$2,16
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,8($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,8($2)
	slt	$2,$2,36
	bne	$2,$0,$L17
	nop

$L10:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$0,8($2)
	jal	pd4990a_increment_day
	nop

	j	$L1
	nop

$L11:
	nop
	j	$L1
	nop

$L12:
	nop
	j	$L1
	nop

$L13:
	nop
	j	$L1
	nop

$L14:
	nop
	j	$L1
	nop

$L15:
	nop
	j	$L1
	nop

$L16:
	nop
	j	$L1
	nop

$L17:
	nop
$L1:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_addretrace
	.size	pd4990a_addretrace, .-pd4990a_addretrace
	.align	2
	.globl	pd4990a_increment_day
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_increment_day
	.type	pd4990a_increment_day, @function
pd4990a_increment_day:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,12($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,12($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,12($2)
	andi	$2,$2,0xf
	slt	$2,$2,10
	bne	$2,$0,$L19
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,12($2)
	andi	$3,$2,0xf0
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,12($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,12($2)
	addiu	$3,$2,16
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,12($2)
$L19:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,24($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,24($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,24($2)
	li	$2,7			# 0x7
	bne	$3,$2,$L20
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$0,24($2)
$L20:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,16($2)
	sltu	$3,$2,13
	beq	$3,$0,$L18
	nop

	li	$3,1437073408			# 0x55a80000
	sll	$3,$3,$2
	bltz	$3,$L22
	nop

	li	$3,173015040			# 0xa500000
	sll	$3,$3,$2
	bltz	$3,$L24
	nop

	li	$3,536870912			# 0x20000000
	sll	$2,$3,$2
	bgez	$2,$L18
	nop

	j	$L23
	nop

$L22:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,12($2)
	li	$2,50			# 0x32
	bne	$3,$2,$L31
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	li	$3,1			# 0x1
	sw	$3,12($2)
	jal	pd4990a_increment_month
	nop

	j	$L18
	nop

$L23:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	sra	$2,$2,4
	sll	$2,$2,1
	sll	$3,$2,2
	addu	$3,$2,$3
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	andi	$2,$2,0xf
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	andi	$2,$2,0x3
	beq	$2,$0,$L26
	nop

	lw	$3,24($fp)
	li	$2,1374355456			# 0x51eb0000
	ori	$2,$2,0x851f
	mult	$3,$2
	mfhi	$2
	sra	$4,$2,5
	sra	$2,$3,31
	subu	$2,$4,$2
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	sll	$4,$2,2
	addu	$2,$2,$4
	subu	$2,$3,$2
	beq	$2,$0,$L27
	nop

	lw	$3,24($fp)
	li	$2,1374355456			# 0x51eb0000
	ori	$2,$2,0x851f
	mult	$3,$2
	mfhi	$2
	sra	$4,$2,7
	sra	$2,$3,31
	subu	$2,$4,$2
	sll	$2,$2,4
	sll	$4,$2,2
	addu	$2,$2,$4
	sll	$4,$2,2
	addu	$2,$2,$4
	subu	$2,$3,$2
	beq	$2,$0,$L26
	nop

$L27:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,12($2)
	li	$2,41			# 0x29
	bne	$3,$2,$L28
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	li	$3,1			# 0x1
	sw	$3,12($2)
	jal	pd4990a_increment_month
	nop

$L28:
	nop
	j	$L18
	nop

$L26:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,12($2)
	li	$2,48			# 0x30
	bne	$3,$2,$L32
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	li	$3,1			# 0x1
	sw	$3,12($2)
	jal	pd4990a_increment_month
	nop

	j	$L18
	nop

$L24:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,12($2)
	li	$2,49			# 0x31
	bne	$3,$2,$L33
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	li	$3,1			# 0x1
	sw	$3,12($2)
	jal	pd4990a_increment_month
	nop

	j	$L18
	nop

$L31:
	nop
	j	$L18
	nop

$L32:
	nop
	j	$L18
	nop

$L33:
	nop
$L18:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_increment_day
	.size	pd4990a_increment_day, .-pd4990a_increment_day
	.align	2
	.globl	pd4990a_increment_month
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_increment_month
	.type	pd4990a_increment_month, @function
pd4990a_increment_month:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,16($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,16($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,16($2)
	li	$2,13			# 0xd
	bne	$3,$2,$L34
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	li	$3,1			# 0x1
	sw	$3,16($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,20($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	andi	$2,$2,0xf
	slt	$2,$2,10
	bne	$2,$0,$L36
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	andi	$3,$2,0xf0
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,20($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$2,20($2)
	addiu	$3,$2,16
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,20($2)
$L36:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,20($2)
	li	$2,160			# 0xa0
	bne	$3,$2,$L34
	nop

	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$0,20($2)
$L34:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_increment_month
	.size	pd4990a_increment_month, .-pd4990a_increment_month
	.align	2
	.globl	pd4990a_testbit_r
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_testbit_r
	.type	pd4990a_testbit_r, @function
pd4990a_testbit_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lui	$2,%hi(testbit)
	lw	$2,%lo(testbit)($2)
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_testbit_r
	.size	pd4990a_testbit_r, .-pd4990a_testbit_r
	.align	2
	.globl	pd4990a_databit_r
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_databit_r
	.type	pd4990a_databit_r, @function
pd4990a_databit_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lui	$2,%hi(outputbit)
	lw	$2,%lo(outputbit)($2)
	andi	$2,$2,0x00ff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_databit_r
	.size	pd4990a_databit_r, .-pd4990a_databit_r
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_readbit
	.type	pd4990a_readbit, @function
pd4990a_readbit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	sltu	$3,$2,52
	beq	$3,$0,$L39
	nop

	sll	$3,$2,2
	lui	$2,%hi($L49)
	addiu	$2,$2,%lo($L49)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L49:
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L41
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L42
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L43
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L44
	.word	$L45
	.word	$L45
	.word	$L45
	.word	$L45
	.word	$L46
	.word	$L46
	.word	$L46
	.word	$L46
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L47
	.word	$L50
	.word	$L50
	.word	$L50
	.word	$L50
	.text
$L41:
	lui	$2,%hi(pd4990a)
	lw	$3,%lo(pd4990a)($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L42:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,4($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-8
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L43:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,8($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-16
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L44:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,12($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-24
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L45:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,24($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-32
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L46:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,16($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-36
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L47:
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	lw	$3,20($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-40
	sra	$2,$3,$2
	andi	$3,$2,0x1
	lui	$2,%hi(outputbit)
	sw	$3,%lo(outputbit)($2)
	j	$L39
	nop

$L50:
	nop
$L39:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_readbit
	.size	pd4990a_readbit, .-pd4990a_readbit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_resetbitstream
	.type	pd4990a_resetbitstream, @function
pd4990a_resetbitstream:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(shiftlo)
	sw	$0,%lo(shiftlo)($2)
	lui	$2,%hi(shifthi)
	sw	$0,%lo(shifthi)($2)
	lui	$2,%hi(bitno)
	sw	$0,%lo(bitno)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_resetbitstream
	.size	pd4990a_resetbitstream, .-pd4990a_resetbitstream
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_writebit
	.type	pd4990a_writebit, @function
pd4990a_writebit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,8($fp)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	slt	$2,$2,32
	beq	$2,$0,$L53
	nop

	lbu	$3,8($fp)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	sll	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(shiftlo)
	lw	$2,%lo(shiftlo)($2)
	or	$3,$3,$2
	lui	$2,%hi(shiftlo)
	sw	$3,%lo(shiftlo)($2)
	j	$L52
	nop

$L53:
	lbu	$3,8($fp)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-32
	sll	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(shifthi)
	lw	$2,%lo(shifthi)($2)
	or	$3,$3,$2
	lui	$2,%hi(shifthi)
	sw	$3,%lo(shifthi)($2)
$L52:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_writebit
	.size	pd4990a_writebit, .-pd4990a_writebit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_nextbit
	.type	pd4990a_nextbit, @function
pd4990a_nextbit:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$3,$2,1
	lui	$2,%hi(bitno)
	sw	$3,%lo(bitno)($2)
	lui	$2,%hi(reading)
	lb	$2,%lo(reading)($2)
	beq	$2,$0,$L56
	nop

	jal	pd4990a_readbit
	nop

$L56:
	lui	$2,%hi(reading)
	lb	$2,%lo(reading)($2)
	beq	$2,$0,$L55
	nop

	lui	$2,%hi(bitno)
	lw	$3,%lo(bitno)($2)
	li	$2,52			# 0x34
	bne	$3,$2,$L55
	nop

	lui	$2,%hi(reading)
	sb	$0,%lo(reading)($2)
	jal	pd4990a_resetbitstream
	nop

$L55:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_nextbit
	.size	pd4990a_nextbit, .-pd4990a_nextbit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_getcommand
	.type	pd4990a_getcommand, @function
pd4990a_getcommand:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	slt	$2,$2,32
	beq	$2,$0,$L59
	nop

	lui	$2,%hi(shiftlo)
	lw	$3,%lo(shiftlo)($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-4
	srl	$2,$3,$2
	andi	$2,$2,0x00ff
	j	$L60
	nop

$L59:
	lui	$2,%hi(shifthi)
	lw	$3,%lo(shifthi)($2)
	lui	$2,%hi(bitno)
	lw	$2,%lo(bitno)($2)
	addiu	$2,$2,-36
	srl	$2,$3,$2
	andi	$2,$2,0x00ff
$L60:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_getcommand
	.size	pd4990a_getcommand, .-pd4990a_getcommand
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_update_date
	.type	pd4990a_update_date, @function
pd4990a_update_date:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(shiftlo)
	lw	$2,%lo(shiftlo)($2)
	andi	$3,$2,0xff
	lui	$2,%hi(pd4990a)
	sw	$3,%lo(pd4990a)($2)
	lui	$2,%hi(shiftlo)
	lw	$2,%lo(shiftlo)($2)
	srl	$2,$2,8
	andi	$3,$2,0xff
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,4($2)
	lui	$2,%hi(shiftlo)
	lw	$2,%lo(shiftlo)($2)
	srl	$2,$2,16
	andi	$3,$2,0xff
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,8($2)
	lui	$2,%hi(shiftlo)
	lw	$2,%lo(shiftlo)($2)
	srl	$2,$2,24
	move	$3,$2
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,12($2)
	lui	$2,%hi(shifthi)
	lw	$2,%lo(shifthi)($2)
	andi	$3,$2,0xf
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,24($2)
	lui	$2,%hi(shifthi)
	lw	$2,%lo(shifthi)($2)
	srl	$2,$2,4
	andi	$3,$2,0xf
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,16($2)
	lui	$2,%hi(shifthi)
	lw	$2,%lo(shifthi)($2)
	srl	$2,$2,8
	andi	$3,$2,0xff
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,20($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_update_date
	.size	pd4990a_update_date, .-pd4990a_update_date
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_process_command
	.type	pd4990a_process_command, @function
pd4990a_process_command:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	pd4990a_getcommand
	nop

	sltu	$3,$2,9
	beq	$3,$0,$L62
	nop

	sll	$3,$2,2
	lui	$2,%hi($L69)
	addiu	$2,$2,%lo($L69)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L69:
	.word	$L62
	.word	$L64
	.word	$L65
	.word	$L66
	.word	$L62
	.word	$L62
	.word	$L62
	.word	$L67
	.word	$L68
	.text
$L64:
	lui	$2,%hi(bitno)
	sw	$0,%lo(bitno)($2)
	lui	$2,%hi(reading)
	lb	$2,%lo(reading)($2)
	beq	$2,$0,$L70
	nop

	jal	pd4990a_readbit
	nop

$L70:
	lui	$2,%hi(shiftlo)
	sw	$0,%lo(shiftlo)($2)
	lui	$2,%hi(shifthi)
	sw	$0,%lo(shifthi)($2)
	j	$L62
	nop

$L65:
	lui	$2,%hi(writting)
	sb	$0,%lo(writting)($2)
	jal	pd4990a_update_date
	nop

	j	$L62
	nop

$L66:
	lui	$2,%hi(reading)
	li	$3,1			# 0x1
	sb	$3,%lo(reading)($2)
	j	$L62
	nop

$L67:
	lui	$2,%hi(maxwaits)
	li	$3,1			# 0x1
	sw	$3,%lo(maxwaits)($2)
	j	$L62
	nop

$L68:
	lui	$2,%hi(maxwaits)
	li	$3,30			# 0x1e
	sw	$3,%lo(maxwaits)($2)
	nop
$L62:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_process_command
	.size	pd4990a_process_command, .-pd4990a_process_command
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_serial_control
	.type	pd4990a_serial_control, @function
pd4990a_serial_control:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	move	$2,$4
	sb	$2,32($fp)
	lui	$2,%hi(command_line)
	lw	$2,%lo(command_line)($2)
	beq	$2,$0,$L72
	nop

	lbu	$2,32($fp)
	andi	$2,$2,0x4
	bne	$2,$0,$L72
	nop

	jal	pd4990a_process_command
	nop

	jal	pd4990a_resetbitstream
	nop

$L72:
	lbu	$2,32($fp)
	andi	$3,$2,0x4
	lui	$2,%hi(command_line)
	sw	$3,%lo(command_line)($2)
	lui	$2,%hi(clock_line)
	lw	$2,%lo(clock_line)($2)
	beq	$2,$0,$L73
	nop

	lbu	$2,32($fp)
	andi	$2,$2,0x2
	bne	$2,$0,$L73
	nop

	lbu	$2,32($fp)
	andi	$2,$2,0x1
	move	$4,$2
	jal	pd4990a_writebit
	nop

	jal	pd4990a_nextbit
	nop

$L73:
	lbu	$2,32($fp)
	andi	$3,$2,0x2
	lui	$2,%hi(clock_line)
	sw	$3,%lo(clock_line)($2)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_serial_control
	.size	pd4990a_serial_control, .-pd4990a_serial_control
	.align	2
	.globl	pd4990a_control_w
	.set	nomips16
	.set	nomicromips
	.ent	pd4990a_control_w
	.type	pd4990a_control_w, @function
pd4990a_control_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,36($fp)
	sh	$2,40($fp)
	lhu	$2,36($fp)
	andi	$2,$2,0x00ff
	andi	$2,$2,0x7
	move	$4,$2
	jal	pd4990a_serial_control
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pd4990a_control_w
	.size	pd4990a_control_w, .-pd4990a_control_w
	.align	2
	.globl	state_save_pd4990a
	.set	nomips16
	.set	nomicromips
	.ent	state_save_pd4990a
	.type	state_save_pd4990a, @function
state_save_pd4990a:
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
	lui	$2,%hi(pd4990a)
	addiu	$5,$2,%lo(pd4990a)
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
	lui	$2,%hi(pd4990a+4)
	addiu	$5,$2,%lo(pd4990a+4)
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
	lui	$2,%hi(pd4990a+8)
	addiu	$5,$2,%lo(pd4990a+8)
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
	lui	$2,%hi(pd4990a+12)
	addiu	$5,$2,%lo(pd4990a+12)
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
	lui	$2,%hi(pd4990a+16)
	addiu	$5,$2,%lo(pd4990a+16)
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
	lui	$2,%hi(pd4990a+20)
	addiu	$5,$2,%lo(pd4990a+20)
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
	lui	$2,%hi(pd4990a+24)
	addiu	$5,$2,%lo(pd4990a+24)
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
	lui	$2,%hi(shiftlo)
	addiu	$5,$2,%lo(shiftlo)
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
	lui	$2,%hi(shifthi)
	addiu	$5,$2,%lo(shifthi)
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
	lui	$2,%hi(retraces)
	addiu	$5,$2,%lo(retraces)
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
	lui	$2,%hi(testwaits)
	addiu	$5,$2,%lo(testwaits)
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
	lui	$2,%hi(maxwaits)
	addiu	$5,$2,%lo(maxwaits)
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
	lui	$2,%hi(testbit)
	addiu	$5,$2,%lo(testbit)
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
	lui	$2,%hi(outputbit)
	addiu	$5,$2,%lo(outputbit)
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
	lui	$2,%hi(bitno)
	addiu	$5,$2,%lo(bitno)
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
	lui	$2,%hi(reading)
	addiu	$5,$2,%lo(reading)
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
	lui	$2,%hi(writting)
	addiu	$5,$2,%lo(writting)
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
	lui	$2,%hi(clock_line)
	addiu	$5,$2,%lo(clock_line)
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
	lui	$2,%hi(command_line)
	addiu	$5,$2,%lo(command_line)
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
	.end	state_save_pd4990a
	.size	state_save_pd4990a, .-state_save_pd4990a
	.align	2
	.globl	state_load_pd4990a
	.set	nomips16
	.set	nomicromips
	.ent	state_load_pd4990a
	.type	state_load_pd4990a, @function
state_load_pd4990a:
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
	lui	$2,%hi(pd4990a)
	addiu	$4,$2,%lo(pd4990a)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+4)
	addiu	$4,$2,%lo(pd4990a+4)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+8)
	addiu	$4,$2,%lo(pd4990a+8)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+12)
	addiu	$4,$2,%lo(pd4990a+12)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+16)
	addiu	$4,$2,%lo(pd4990a+16)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+20)
	addiu	$4,$2,%lo(pd4990a+20)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(pd4990a+24)
	addiu	$4,$2,%lo(pd4990a+24)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(shiftlo)
	addiu	$4,$2,%lo(shiftlo)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(shifthi)
	addiu	$4,$2,%lo(shifthi)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(retraces)
	addiu	$4,$2,%lo(retraces)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(testwaits)
	addiu	$4,$2,%lo(testwaits)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(maxwaits)
	addiu	$4,$2,%lo(maxwaits)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(testbit)
	addiu	$4,$2,%lo(testbit)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(outputbit)
	addiu	$4,$2,%lo(outputbit)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(bitno)
	addiu	$4,$2,%lo(bitno)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(reading)
	addiu	$4,$2,%lo(reading)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(writting)
	addiu	$4,$2,%lo(writting)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(clock_line)
	addiu	$4,$2,%lo(clock_line)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	lui	$2,%hi(command_line)
	addiu	$4,$2,%lo(command_line)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,32($fp)
	jal	fread
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_pd4990a
	.size	state_load_pd4990a, .-state_load_pd4990a
	.ident	"GCC: (GNU) 4.5.2"
