	.file	1 "driver.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0

	.comm	neogeo_driver_type,4,4

	.comm	neogeo_raster_enable,4,4

	.comm	neogeo_ngh,2,2

	.comm	auto_animation_speed,1,1

	.comm	auto_animation_disabled,1,1

	.comm	auto_animation_counter,1,1
	.globl	MVS_cacheinfo
	.rdata
	.align	2
$LC0:
	.ascii	"aof2a\000"
	.align	2
$LC1:
	.ascii	"aof2\000"
	.align	2
$LC2:
	.ascii	"fatfursa\000"
	.align	2
$LC3:
	.ascii	"fatfursp\000"
	.align	2
$LC4:
	.ascii	"kof95h\000"
	.align	2
$LC5:
	.ascii	"kof95\000"
	.align	2
$LC6:
	.ascii	"samsho3h\000"
	.align	2
$LC7:
	.ascii	"samsho3\000"
	.align	2
$LC8:
	.ascii	"fswords\000"
	.align	2
$LC9:
	.ascii	"aof3k\000"
	.align	2
$LC10:
	.ascii	"aof3\000"
	.align	2
$LC11:
	.ascii	"kof96ae\000"
	.align	2
$LC12:
	.ascii	"kof96\000"
	.align	2
$LC13:
	.ascii	"kof96cn\000"
	.align	2
$LC14:
	.ascii	"kof96h\000"
	.align	2
$LC15:
	.ascii	"kof96ep\000"
	.align	2
$LC16:
	.ascii	"kof96pm\000"
	.align	2
$LC17:
	.ascii	"kof96sp\000"
	.align	2
$LC18:
	.ascii	"kizuna\000"
	.align	2
$LC19:
	.ascii	"savagere\000"
	.align	2
$LC20:
	.ascii	"kof97h\000"
	.align	2
$LC21:
	.ascii	"kof97\000"
	.align	2
$LC22:
	.ascii	"kof97c\000"
	.align	2
$LC23:
	.ascii	"kof97cn\000"
	.align	2
$LC24:
	.ascii	"kof97d\000"
	.align	2
$LC25:
	.ascii	"kof97k\000"
	.align	2
$LC26:
	.ascii	"kof97pls\000"
	.align	2
$LC27:
	.ascii	"kof97pla\000"
	.align	2
$LC28:
	.ascii	"kof97prc\000"
	.align	2
$LC29:
	.ascii	"kof97ps\000"
	.align	2
$LC30:
	.ascii	"kof97yk\000"
	.align	2
$LC31:
	.ascii	"kof97xt\000"
	.align	2
$LC32:
	.ascii	"kog\000"
	.align	2
$LC33:
	.ascii	"kogd\000"
	.align	2
$LC34:
	.ascii	"kof97oro\000"
	.align	2
$LC35:
	.ascii	"lastbladh\000"
	.align	2
$LC36:
	.ascii	"lastblad\000"
	.align	2
$LC37:
	.ascii	"lastsold\000"
	.align	2
$LC38:
	.ascii	"shocktroa\000"
	.align	2
$LC39:
	.ascii	"shocktro\000"
	.align	2
$LC40:
	.ascii	"rbff2h\000"
	.align	2
$LC41:
	.ascii	"rbff2\000"
	.align	2
$LC42:
	.ascii	"rbff2k\000"
	.align	2
$LC43:
	.ascii	"kof98a\000"
	.align	2
$LC44:
	.ascii	"kof98\000"
	.align	2
$LC45:
	.ascii	"kof98c\000"
	.align	2
$LC46:
	.ascii	"kof98cn\000"
	.align	2
$LC47:
	.ascii	"kof98evo\000"
	.align	2
$LC48:
	.ascii	"kof98k\000"
	.align	2
$LC49:
	.ascii	"kof98ka\000"
	.align	2
$LC50:
	.ascii	"kof98h\000"
	.align	2
$LC51:
	.ascii	"kof98ae\000"
	.align	2
$LC52:
	.ascii	"breakrev\000"
	.align	2
$LC53:
	.ascii	"breakers\000"
	.align	2
$LC54:
	.ascii	"lans2004\000"
	.align	2
$LC55:
	.ascii	"shocktr2\000"
	.align	2
$LC56:
	.ascii	"kof99h\000"
	.align	2
$LC57:
	.ascii	"kof99\000"
	.align	2
$LC58:
	.ascii	"kof99e\000"
	.align	2
$LC59:
	.ascii	"kof99k\000"
	.align	2
$LC60:
	.ascii	"kof99p\000"
	.align	2
$LC61:
	.ascii	"kof99ae\000"
	.align	2
$LC62:
	.ascii	"garouh\000"
	.align	2
$LC63:
	.ascii	"garou\000"
	.align	2
$LC64:
	.ascii	"garoubl\000"
	.align	2
$LC65:
	.ascii	"garoup\000"
	.align	2
$LC66:
	.ascii	"mslugxc1\000"
	.align	2
$LC67:
	.ascii	"mslugx\000"
	.align	2
$LC68:
	.ascii	"mslug3h\000"
	.align	2
$LC69:
	.ascii	"mslug3\000"
	.align	2
$LC70:
	.ascii	"mslug3b6\000"
	.align	2
$LC71:
	.ascii	"kof2000n\000"
	.align	2
$LC72:
	.ascii	"kof2000\000"
	.align	2
$LC73:
	.ascii	"kof2kcn\000"
	.align	2
$LC74:
	.ascii	"kof2kps2\000"
	.align	2
$LC75:
	.ascii	"kof2001h\000"
	.align	2
$LC76:
	.ascii	"kof2001\000"
	.align	2
$LC77:
	.ascii	"kf2k1pls\000"
	.align	2
$LC78:
	.ascii	"kf2k1pa\000"
	.align	2
$LC79:
	.ascii	"kof2k1bs\000"
	.align	2
$LC80:
	.ascii	"cthd2003\000"
	.align	2
$LC81:
	.ascii	"cthd2k3a\000"
	.align	2
$LC82:
	.ascii	"ct2k3sp\000"
	.align	2
$LC83:
	.ascii	"ct2k3sa\000"
	.align	2
$LC84:
	.ascii	"mslug4h\000"
	.align	2
$LC85:
	.ascii	"mslug4\000"
	.align	2
$LC86:
	.ascii	"ms4plus\000"
	.align	2
$LC87:
	.ascii	"kof2002b\000"
	.align	2
$LC88:
	.ascii	"kof2002\000"
	.align	2
$LC89:
	.ascii	"kof2k2cn\000"
	.align	2
$LC90:
	.ascii	"kf2k2pls\000"
	.align	2
$LC91:
	.ascii	"kf2k2pla\000"
	.align	2
$LC92:
	.ascii	"kf2k2plb\000"
	.align	2
$LC93:
	.ascii	"kf2k2plc\000"
	.align	2
$LC94:
	.ascii	"kf2k2mp\000"
	.align	2
$LC95:
	.ascii	"kf2k2mp2\000"
	.align	2
$LC96:
	.ascii	"kf2k2ps2\000"
	.align	2
$LC97:
	.ascii	"kf2k2ur\000"
	.align	2
$LC98:
	.ascii	"kof2k2tg3\000"
	.align	2
$LC99:
	.ascii	"matrimbl\000"
	.align	2
$LC100:
	.ascii	"matrim\000"
	.align	2
$LC101:
	.ascii	"mslug5b\000"
	.align	2
$LC102:
	.ascii	"mslug5\000"
	.align	2
$LC103:
	.ascii	"mslug5h\000"
	.align	2
$LC104:
	.ascii	"ms5plus\000"
	.align	2
$LC105:
	.ascii	"svcpcba\000"
	.align	2
$LC106:
	.ascii	"svcpcb\000"
	.align	2
$LC107:
	.ascii	"samsho5h\000"
	.align	2
$LC108:
	.ascii	"samsho5\000"
	.align	2
$LC109:
	.ascii	"samsho5b\000"
	.align	2
$LC110:
	.ascii	"samsh5sph\000"
	.align	2
$LC111:
	.ascii	"samsh5sp\000"
	.align	2
$LC112:
	.ascii	"samsh5spho\000"
	.align	2
$LC113:
	.ascii	"kof2k4se\000"
	.align	2
$LC114:
	.ascii	"kf2k4pls\000"
	.align	2
$LC115:
	.ascii	"kf10thep\000"
	.align	2
$LC116:
	.ascii	"kof10th\000"
	.align	2
$LC117:
	.ascii	"kf2k5uni\000"
	.align	2
$LC118:
	.ascii	"svcplus\000"
	.align	2
$LC119:
	.ascii	"svcboot\000"
	.align	2
$LC120:
	.ascii	"svcplusa\000"
	.align	2
$LC121:
	.ascii	"svcsplus\000"
	.align	2
$LC122:
	.ascii	"svcps2\000"
	.align	2
$LC123:
	.ascii	"svc\000"
	.align	2
$LC124:
	.ascii	"kf2k3bla\000"
	.align	2
$LC125:
	.ascii	"kf2k3bl\000"
	.align	2
$LC126:
	.ascii	"kf2k3pl\000"
	.align	2
$LC127:
	.ascii	"kf2k3upl\000"
	.align	2
$LC128:
	.ascii	"kf2k3ps2\000"
	.align	2
$LC129:
	.ascii	"kof2003\000"
	.align	2
$LC130:
	.ascii	"ironclado\000"
	.align	2
$LC131:
	.ascii	"ironclad\000"
	.align	2
$LC132:
	.ascii	"jockeygpa\000"
	.align	2
$LC133:
	.ascii	"jockeygp\000"
	.align	2
$LC134:
	.ascii	"rbff1a\000"
	.align	2
$LC135:
	.ascii	"rbff1\000"
	.align	2
$LC136:
	.ascii	"rbffspeck\000"
	.align	2
$LC137:
	.ascii	"rbffspec\000"
	.align	2
$LC138:
	.ascii	"samsho2k\000"
	.align	2
$LC139:
	.ascii	"samsho2\000"
	.align	2
$LC140:
	.ascii	"samsho2k2\000"
	.align	2
$LC141:
	.ascii	"samsho4k\000"
	.align	2
$LC142:
	.ascii	"samsho4\000"
	.data
	.align	2
	.type	MVS_cacheinfo, @object
	.size	MVS_cacheinfo, 2120
MVS_cacheinfo:
	.word	$LC0
	.word	$LC1
	.word	0
	.word	0
	.word	0
	.word	$LC2
	.word	$LC3
	.word	0
	.word	0
	.word	0
	.word	$LC4
	.word	$LC5
	.word	0
	.word	0
	.word	0
	.word	$LC6
	.word	$LC7
	.word	0
	.word	0
	.word	0
	.word	$LC8
	.word	$LC7
	.word	0
	.word	0
	.word	0
	.word	$LC9
	.word	$LC10
	.word	0
	.word	0
	.word	0
	.word	$LC11
	.word	$LC12
	.word	1
	.word	1
	.word	1
	.word	$LC13
	.word	$LC12
	.word	1
	.word	1
	.word	0
	.word	$LC14
	.word	$LC12
	.word	0
	.word	0
	.word	0
	.word	$LC15
	.word	$LC12
	.word	0
	.word	0
	.word	0
	.word	$LC16
	.word	$LC12
	.word	0
	.word	0
	.word	0
	.word	$LC17
	.word	$LC12
	.word	1
	.word	1
	.word	0
	.word	$LC18
	.word	$LC19
	.word	1
	.word	1
	.word	1
	.word	$LC20
	.word	$LC21
	.word	0
	.word	0
	.word	0
	.word	$LC22
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC23
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC24
	.word	$LC21
	.word	0
	.word	0
	.word	0
	.word	$LC25
	.word	$LC21
	.word	0
	.word	0
	.word	0
	.word	$LC26
	.word	$LC21
	.word	0
	.word	0
	.word	0
	.word	$LC27
	.word	$LC21
	.word	0
	.word	1
	.word	0
	.word	$LC28
	.word	$LC21
	.word	0
	.word	0
	.word	0
	.word	$LC29
	.word	$LC21
	.word	1
	.word	0
	.word	0
	.word	$LC30
	.word	$LC21
	.word	1
	.word	1
	.word	1
	.word	$LC31
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC32
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC33
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC34
	.word	$LC21
	.word	1
	.word	1
	.word	0
	.word	$LC35
	.word	$LC36
	.word	0
	.word	0
	.word	0
	.word	$LC37
	.word	$LC36
	.word	0
	.word	0
	.word	0
	.word	$LC38
	.word	$LC39
	.word	0
	.word	0
	.word	0
	.word	$LC40
	.word	$LC41
	.word	0
	.word	0
	.word	0
	.word	$LC42
	.word	$LC41
	.word	0
	.word	0
	.word	0
	.word	$LC43
	.word	$LC44
	.word	0
	.word	0
	.word	0
	.word	$LC45
	.word	$LC44
	.word	1
	.word	1
	.word	0
	.word	$LC46
	.word	$LC44
	.word	1
	.word	1
	.word	0
	.word	$LC47
	.word	$LC44
	.word	1
	.word	0
	.word	0
	.word	$LC48
	.word	$LC44
	.word	0
	.word	0
	.word	0
	.word	$LC49
	.word	$LC44
	.word	0
	.word	0
	.word	0
	.word	$LC50
	.word	$LC44
	.word	0
	.word	0
	.word	0
	.word	$LC51
	.word	$LC44
	.word	1
	.word	1
	.word	1
	.word	$LC52
	.word	$LC53
	.word	1
	.word	1
	.word	1
	.word	$LC54
	.word	$LC55
	.word	1
	.word	1
	.word	1
	.word	$LC56
	.word	$LC57
	.word	0
	.word	0
	.word	0
	.word	$LC58
	.word	$LC57
	.word	0
	.word	0
	.word	0
	.word	$LC59
	.word	$LC57
	.word	0
	.word	0
	.word	0
	.word	$LC60
	.word	$LC57
	.word	1
	.word	1
	.word	0
	.word	$LC61
	.word	$LC57
	.word	1
	.word	1
	.word	1
	.word	$LC62
	.word	$LC63
	.word	0
	.word	0
	.word	0
	.word	$LC64
	.word	$LC65
	.word	0
	.word	1
	.word	1
	.word	$LC66
	.word	$LC67
	.word	0
	.word	0
	.word	0
	.word	$LC68
	.word	$LC69
	.word	0
	.word	0
	.word	0
	.word	$LC70
	.word	$LC69
	.word	0
	.word	1
	.word	0
	.word	$LC71
	.word	$LC72
	.word	0
	.word	0
	.word	0
	.word	$LC73
	.word	$LC72
	.word	1
	.word	1
	.word	0
	.word	$LC74
	.word	$LC72
	.word	1
	.word	1
	.word	0
	.word	$LC75
	.word	$LC76
	.word	0
	.word	0
	.word	0
	.word	$LC77
	.word	$LC76
	.word	0
	.word	0
	.word	0
	.word	$LC78
	.word	$LC76
	.word	0
	.word	0
	.word	0
	.word	$LC79
	.word	$LC76
	.word	1
	.word	1
	.word	0
	.word	$LC80
	.word	$LC76
	.word	1
	.word	1
	.word	0
	.word	$LC81
	.word	$LC76
	.word	1
	.word	1
	.word	1
	.word	$LC82
	.word	$LC76
	.word	1
	.word	1
	.word	0
	.word	$LC83
	.word	$LC76
	.word	1
	.word	1
	.word	0
	.word	$LC84
	.word	$LC85
	.word	0
	.word	0
	.word	0
	.word	$LC86
	.word	$LC85
	.word	0
	.word	0
	.word	0
	.word	$LC87
	.word	$LC88
	.word	1
	.word	0
	.word	0
	.word	$LC89
	.word	$LC88
	.word	1
	.word	1
	.word	0
	.word	$LC90
	.word	$LC88
	.word	0
	.word	0
	.word	0
	.word	$LC91
	.word	$LC88
	.word	0
	.word	0
	.word	0
	.word	$LC92
	.word	$LC88
	.word	0
	.word	0
	.word	0
	.word	$LC93
	.word	$LC88
	.word	0
	.word	1
	.word	0
	.word	$LC94
	.word	$LC88
	.word	0
	.word	1
	.word	0
	.word	$LC95
	.word	$LC88
	.word	0
	.word	1
	.word	0
	.word	$LC96
	.word	$LC88
	.word	1
	.word	1
	.word	1
	.word	$LC97
	.word	$LC88
	.word	1
	.word	1
	.word	1
	.word	$LC98
	.word	$LC88
	.word	1
	.word	1
	.word	1
	.word	$LC99
	.word	$LC100
	.word	0
	.word	0
	.word	1
	.word	$LC101
	.word	$LC102
	.word	0
	.word	0
	.word	0
	.word	$LC103
	.word	$LC102
	.word	0
	.word	0
	.word	0
	.word	$LC104
	.word	$LC102
	.word	0
	.word	1
	.word	0
	.word	$LC105
	.word	$LC106
	.word	0
	.word	0
	.word	0
	.word	$LC107
	.word	$LC108
	.word	0
	.word	0
	.word	0
	.word	$LC109
	.word	$LC108
	.word	1
	.word	1
	.word	1
	.word	$LC110
	.word	$LC111
	.word	0
	.word	0
	.word	0
	.word	$LC112
	.word	$LC111
	.word	0
	.word	0
	.word	0
	.word	$LC113
	.word	$LC88
	.word	1
	.word	1
	.word	1
	.word	$LC114
	.word	$LC113
	.word	0
	.word	1
	.word	0
	.word	$LC115
	.word	$LC116
	.word	1
	.word	1
	.word	0
	.word	$LC117
	.word	$LC116
	.word	0
	.word	0
	.word	0
	.word	$LC118
	.word	$LC119
	.word	0
	.word	1
	.word	0
	.word	$LC120
	.word	$LC119
	.word	0
	.word	0
	.word	0
	.word	$LC121
	.word	$LC119
	.word	0
	.word	1
	.word	0
	.word	$LC122
	.word	$LC123
	.word	1
	.word	1
	.word	1
	.word	$LC124
	.word	$LC125
	.word	0
	.word	0
	.word	0
	.word	$LC126
	.word	$LC125
	.word	0
	.word	1
	.word	0
	.word	$LC127
	.word	$LC125
	.word	0
	.word	1
	.word	0
	.word	$LC128
	.word	$LC129
	.word	1
	.word	1
	.word	1
	.word	$LC130
	.word	$LC131
	.word	0
	.word	0
	.word	0
	.word	$LC132
	.word	$LC133
	.word	0
	.word	0
	.word	0
	.word	$LC134
	.word	$LC135
	.word	0
	.word	0
	.word	0
	.word	$LC136
	.word	$LC137
	.word	0
	.word	0
	.word	0
	.word	$LC138
	.word	$LC139
	.word	0
	.word	0
	.word	0
	.word	$LC140
	.word	$LC139
	.word	0
	.word	0
	.word	0
	.word	$LC141
	.word	$LC142
	.word	0
	.word	0
	.word	0
	.word	$LC38
	.word	$LC39
	.word	0
	.word	0
	.word	0
	.word	0
	.space	16
	.local	raster_enable
	.comm	raster_enable,4,4
	.local	raster_counter
	.comm	raster_counter,2,2
	.local	scanline_read
	.comm	scanline_read,4,4
	.local	busy
	.comm	busy,4,4
	.local	display_position_interrupt_counter
	.comm	display_position_interrupt_counter,4,4
	.local	display_position_interrupt_control
	.comm	display_position_interrupt_control,4,4
	.local	display_counter
	.comm	display_counter,4,4
	.local	display_position_interrupt_pending
	.comm	display_position_interrupt_pending,4,4
	.local	vblank_interrupt_pending
	.comm	vblank_interrupt_pending,4,4
	.local	auto_animation_frame_counter
	.comm	auto_animation_frame_counter,1,1
	.local	sound_code
	.comm	sound_code,4,4
	.local	result_code
	.comm	result_code,4,4
	.local	pending_command
	.comm	pending_command,4,4
	.local	main_cpu_vector_table_source
	.comm	main_cpu_vector_table_source,1,1
	.local	controller_select
	.comm	controller_select,1,1
	.local	save_ram_unlocked
	.comm	save_ram_unlocked,1,1
	.local	m68k_second_bank
	.comm	m68k_second_bank,4,4
	.local	z80_bank
	.comm	z80_bank,16,4
	.local	neogeo_cpu1_second_bank
	.comm	neogeo_cpu1_second_bank,4,4
	.local	neogeo_game_vectors
	.comm	neogeo_game_vectors,128,4
	.local	neogeo_vectors
	.comm	neogeo_vectors,8,4
	.align	1
	.type	neogeo_rng, @object
	.size	neogeo_rng, 2
neogeo_rng:
	.half	9029
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_cpu1_second_bank
	.type	neogeo_set_cpu1_second_bank, @function
neogeo_set_cpu1_second_bank:
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
	lui	$2,%hi(m68k_second_bank)
	lw	$3,%lo(m68k_second_bank)($2)
	lw	$2,32($fp)
	beq	$3,$2,$L1
	nop

	lui	$2,%hi(m68k_second_bank)
	lw	$3,32($fp)
	sw	$3,%lo(m68k_second_bank)($2)
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	move	$3,$2
	lw	$2,32($fp)
	addu	$3,$3,$2
	li	$2,-2097152			# 0xffffffffffe00000
	addu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(neogeo_cpu1_second_bank)
	sw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lw	$2,32($fp)
	addu	$2,$3,$2
	lui	$3,%hi(C68K)
	addiu	$4,$3,%lo(C68K)
	li	$5,2097152			# 0x200000
	li	$3,3080192			# 0x2f0000
	ori	$6,$3,0xffff
	move	$7,$2
	jal	C68k_Set_Fetch
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
	.end	neogeo_set_cpu1_second_bank
	.size	neogeo_set_cpu1_second_bank, .-neogeo_set_cpu1_second_bank
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_cpu2_bank
	.type	neogeo_set_cpu2_bank, @function
neogeo_set_cpu2_bank:
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
	lui	$2,%hi(z80_bank)
	lw	$3,32($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(z80_bank)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,36($fp)
	beq	$3,$2,$L3
	nop

	lui	$2,%hi(z80_bank)
	lw	$3,32($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(z80_bank)
	addu	$2,$3,$2
	lw	$3,36($fp)
	sw	$3,0($2)
	lw	$2,32($fp)
	li	$3,1			# 0x1
	beq	$2,$3,$L6
	nop

	slt	$3,$2,2
	beq	$3,$0,$L9
	nop

	beq	$2,$0,$L5
	nop

	j	$L3
	nop

$L9:
	li	$3,2			# 0x2
	beq	$2,$3,$L7
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L8
	nop

	j	$L3
	nop

$L5:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	li	$2,32768			# 0x8000
	addu	$3,$3,$2
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	lw	$5,36($fp)
	li	$2,65536			# 0x10000
	addu	$2,$5,$2
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,16384			# 0x4000
	jal	memcpy
	nop

	j	$L3
	nop

$L6:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	li	$2,49152			# 0xc000
	addu	$3,$3,$2
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	lw	$5,36($fp)
	li	$2,65536			# 0x10000
	addu	$2,$5,$2
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,8192			# 0x2000
	jal	memcpy
	nop

	j	$L3
	nop

$L7:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	li	$2,57344			# 0xe000
	addu	$3,$3,$2
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	lw	$5,36($fp)
	li	$2,65536			# 0x10000
	addu	$2,$5,$2
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,4096			# 0x1000
	jal	memcpy
	nop

	j	$L3
	nop

$L8:
	lui	$2,%hi(memory_region_cpu2)
	lw	$3,%lo(memory_region_cpu2)($2)
	li	$2,61440			# 0xf000
	addu	$3,$3,$2
	lui	$2,%hi(memory_region_cpu2)
	lw	$4,%lo(memory_region_cpu2)($2)
	lw	$5,36($fp)
	li	$2,65536			# 0x10000
	addu	$2,$5,$2
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,2048			# 0x800
	jal	memcpy
	nop

	nop
$L3:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_set_cpu2_bank
	.size	neogeo_set_cpu2_bank, .-neogeo_set_cpu2_bank
	.align	2
	.globl	neogeo_driver_init
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_driver_init
	.type	neogeo_driver_init, @function
neogeo_driver_init:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	lui	$3,%hi(neogeo_game_vectors)
	addiu	$4,$3,%lo(neogeo_game_vectors)
	move	$5,$2
	li	$6,128			# 0x80
	jal	memcpy
	nop

	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(neogeo_vectors)
	sw	$3,%lo(neogeo_vectors)($2)
	lui	$2,%hi(neogeo_vectors)
	addiu	$2,$2,%lo(neogeo_vectors)
	lui	$3,%hi(neogeo_game_vectors)
	addiu	$3,$3,%lo(neogeo_game_vectors)
	sw	$3,4($2)
	lui	$2,%hi(m68k_second_bank)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(m68k_second_bank)($2)
	lui	$2,%hi(z80_bank)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%lo(z80_bank)($2)
	lui	$2,%hi(z80_bank)
	addiu	$2,$2,%lo(z80_bank)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,4($2)
	lui	$2,%hi(z80_bank)
	addiu	$2,$2,%lo(z80_bank)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,8($2)
	lui	$2,%hi(z80_bank)
	addiu	$2,$2,%lo(z80_bank)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,12($2)
	lui	$2,%hi(memory_length_cpu1)
	lw	$3,%lo(memory_length_cpu1)($2)
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L11
	nop

	li	$4,1048576			# 0x100000
	jal	neogeo_set_cpu1_second_bank
	nop

	j	$L12
	nop

$L11:
	move	$4,$0
	jal	neogeo_set_cpu1_second_bank
	nop

$L12:
	move	$4,$0
	li	$5,32768			# 0x8000
	jal	neogeo_set_cpu2_bank
	nop

	li	$4,1			# 0x1
	li	$5,49152			# 0xc000
	jal	neogeo_set_cpu2_bank
	nop

	li	$4,2			# 0x2
	li	$5,57344			# 0xe000
	jal	neogeo_set_cpu2_bank
	nop

	li	$4,3			# 0x3
	li	$5,61440			# 0xf000
	jal	neogeo_set_cpu2_bank
	nop

	jal	m68000_init
	nop

	jal	z80_init
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_driver_init
	.size	neogeo_driver_init, .-neogeo_driver_init
	.align	2
	.globl	neogeo_driver_reset
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_driver_reset
	.type	neogeo_driver_reset, @function
neogeo_driver_reset:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	move	$4,$0
	jal	time
	nop

	sw	$2,28($fp)
	addiu	$2,$fp,28
	move	$4,$2
	jal	localtime
	nop

	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,0($2)
	lui	$2,%hi(pd4990a)
	sw	$3,%lo(pd4990a)($2)
	lw	$2,24($fp)
	lw	$3,4($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,4($2)
	lw	$2,24($fp)
	lw	$3,8($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,8($2)
	lw	$2,24($fp)
	lw	$3,12($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,12($2)
	lw	$2,24($fp)
	lw	$3,24($2)
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,24($2)
	lw	$2,24($fp)
	lw	$2,16($2)
	addiu	$3,$2,1
	lui	$2,%hi(pd4990a)
	addiu	$2,$2,%lo(pd4990a)
	sw	$3,16($2)
	lw	$2,24($fp)
	lw	$3,20($2)
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
	lui	$3,%hi(pd4990a)
	addiu	$3,$3,%lo(pd4990a)
	sw	$2,20($3)
	lui	$2,%hi(neogeo_ram)
	addiu	$4,$2,%lo(neogeo_ram)
	move	$5,$0
	li	$6,65536			# 0x10000
	jal	memset
	nop

	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lui	$2,%hi(neogeo_vectors)
	lw	$2,%lo(neogeo_vectors)($2)
	move	$4,$3
	move	$5,$2
	li	$6,128			# 0x80
	jal	memcpy
	nop

	lui	$2,%hi(main_cpu_vector_table_source)
	sb	$0,%lo(main_cpu_vector_table_source)($2)
	move	$4,$0
	move	$5,$0
	move	$6,$0
	jal	watchdog_reset_w
	nop

	lui	$2,%hi(raster_counter)
	li	$3,496			# 0x1f0
	sh	$3,%lo(raster_counter)($2)
	lui	$2,%hi(scanline_read)
	sw	$0,%lo(scanline_read)($2)
	lui	$2,%hi(display_position_interrupt_counter)
	sw	$0,%lo(display_position_interrupt_counter)($2)
	lui	$2,%hi(display_position_interrupt_control)
	sw	$0,%lo(display_position_interrupt_control)($2)
	lui	$2,%hi(display_counter)
	sw	$0,%lo(display_counter)($2)
	lui	$2,%hi(vblank_interrupt_pending)
	sw	$0,%lo(vblank_interrupt_pending)($2)
	lui	$2,%hi(display_position_interrupt_pending)
	sw	$0,%lo(display_position_interrupt_pending)($2)
	lui	$2,%hi(sound_code)
	sw	$0,%lo(sound_code)($2)
	lui	$2,%hi(result_code)
	sw	$0,%lo(result_code)($2)
	lui	$2,%hi(pending_command)
	sw	$0,%lo(pending_command)($2)
	lui	$2,%hi(auto_animation_frame_counter)
	sb	$0,%lo(auto_animation_frame_counter)($2)
	lui	$2,%hi(auto_animation_speed)
	sb	$0,%lo(auto_animation_speed)($2)
	lui	$2,%hi(auto_animation_disabled)
	sb	$0,%lo(auto_animation_disabled)($2)
	lui	$2,%hi(auto_animation_counter)
	sb	$0,%lo(auto_animation_counter)($2)
	lui	$2,%hi(neogeo_rng)
	li	$3,9029			# 0x2345
	sh	$3,%lo(neogeo_rng)($2)
	lui	$2,%hi(save_ram_unlocked)
	sb	$0,%lo(save_ram_unlocked)($2)
	lui	$2,%hi(controller_select)
	sb	$0,%lo(controller_select)($2)
	jal	neogeo_reset_driver_type
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,31			# 0x1f
	beq	$3,$2,$L14
	nop

	lui	$2,%hi(machine_init_type)
	lw	$3,%lo(machine_init_type)($2)
	li	$2,32			# 0x20
	bne	$3,$2,$L15
	nop

$L14:
	lui	$2,%hi(memory_region_user1)
	lw	$3,%lo(memory_region_user1)($2)
	lui	$2,%hi(memory_region_user1)
	lw	$4,%lo(memory_region_user1)($2)
	lui	$2,%hi(neogeo_hard_dipsw)
	lw	$2,%lo(neogeo_hard_dipsw)($2)
	addiu	$2,$2,1
	sll	$2,$2,17
	addu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	li	$6,131072			# 0x20000
	jal	memcpy
	nop

$L15:
	jal	m68000_reset
	nop

	jal	z80_reset
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_driver_reset
	.size	neogeo_driver_reset, .-neogeo_driver_reset
	.align	2
	.globl	neogeo_reset_driver_type
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_reset_driver_type
	.type	neogeo_reset_driver_type, @function
neogeo_reset_driver_type:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(busy)
	sw	$0,%lo(busy)($2)
	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,3			# 0x3
	beq	$3,$2,$L17
	nop

	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,56			# 0x38
	beq	$3,$2,$L17
	nop

	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,98			# 0x62
	beq	$3,$2,$L17
	nop

	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,531			# 0x213
	bne	$3,$2,$L18
	nop

$L17:
	lui	$2,%hi(neogeo_raster_enable)
	li	$3,1			# 0x1
	sw	$3,%lo(neogeo_raster_enable)($2)
$L18:
	lui	$2,%hi(neogeo_raster_enable)
	lw	$3,%lo(neogeo_raster_enable)($2)
	lui	$2,%hi(raster_enable)
	sw	$3,%lo(raster_enable)($2)
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,13
	bne	$2,$0,$L19
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,24
	beq	$2,$0,$L19
	nop

	lui	$2,%hi(raster_enable)
	li	$3,1			# 0x1
	sw	$3,%lo(raster_enable)($2)
$L19:
	lui	$2,%hi(raster_enable)
	lw	$2,%lo(raster_enable)($2)
	beq	$2,$0,$L20
	nop

	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,515			# 0x203
	bne	$3,$2,$L21
	nop

	lui	$2,%hi(busy)
	li	$3,1			# 0x1
	sw	$3,%lo(busy)($2)
$L21:
	lui	$2,%hi(neogeo_driver_type)
	sw	$0,%lo(neogeo_driver_type)($2)
	j	$L22
	nop

$L20:
	lui	$2,%hi(neogeo_driver_type)
	li	$3,1			# 0x1
	sw	$3,%lo(neogeo_driver_type)($2)
$L22:
	jal	timer_set_update_handler
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_reset_driver_type
	.size	neogeo_reset_driver_type, .-neogeo_reset_driver_type
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	adjust_display_position_interrupt
	.type	adjust_display_position_interrupt, @function
adjust_display_position_interrupt:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(display_counter)
	lw	$3,%lo(display_counter)($2)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L23
	nop

	lui	$2,%hi(display_counter)
	lw	$2,%lo(display_counter)($2)
	addiu	$3,$2,1
	li	$2,-1431699456			# 0xffffffffaaaa0000
	ori	$2,$2,0xaaab
	multu	$3,$2
	mfhi	$2
	srl	$2,$2,8
	move	$3,$2
	lui	$2,%hi(display_position_interrupt_counter)
	sw	$3,%lo(display_position_interrupt_counter)($2)
$L23:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	adjust_display_position_interrupt
	.size	adjust_display_position_interrupt, .-adjust_display_position_interrupt
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	update_interrupts
	.type	update_interrupts, @function
update_interrupts:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$0,24($fp)
	lui	$2,%hi(vblank_interrupt_pending)
	lw	$2,%lo(vblank_interrupt_pending)($2)
	beq	$2,$0,$L26
	nop

	li	$2,1			# 0x1
	sw	$2,24($fp)
$L26:
	lui	$2,%hi(display_position_interrupt_pending)
	lw	$2,%lo(display_position_interrupt_pending)($2)
	beq	$2,$0,$L27
	nop

	li	$2,2			# 0x2
	sw	$2,24($fp)
$L27:
	lw	$2,24($fp)
	beq	$2,$0,$L28
	nop

	lw	$4,24($fp)
	li	$5,1			# 0x1
	jal	m68000_set_irq_line
	nop

	j	$L25
	nop

$L28:
	li	$4,7			# 0x7
	move	$5,$0
	jal	m68000_set_irq_line
	nop

$L25:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	update_interrupts
	.size	update_interrupts, .-update_interrupts
	.align	2
	.globl	neogeo_vblank_interrupt
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_vblank_interrupt
	.type	neogeo_vblank_interrupt, @function
neogeo_vblank_interrupt:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$2,%hi(raster_counter)
	li	$3,496			# 0x1f0
	sh	$3,%lo(raster_counter)($2)
	jal	pd4990a_addretrace
	nop

	lui	$2,%hi(auto_animation_disabled)
	lbu	$2,%lo(auto_animation_disabled)($2)
	bne	$2,$0,$L31
	nop

	lui	$2,%hi(auto_animation_frame_counter)
	lbu	$2,%lo(auto_animation_frame_counter)($2)
	bne	$2,$0,$L32
	nop

	lui	$2,%hi(auto_animation_speed)
	lbu	$3,%lo(auto_animation_speed)($2)
	lui	$2,%hi(auto_animation_frame_counter)
	sb	$3,%lo(auto_animation_frame_counter)($2)
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	addiu	$2,$2,1
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_counter)
	sb	$3,%lo(auto_animation_counter)($2)
	j	$L31
	nop

$L32:
	lui	$2,%hi(auto_animation_frame_counter)
	lbu	$2,%lo(auto_animation_frame_counter)($2)
	addiu	$2,$2,-1
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_frame_counter)
	sb	$3,%lo(auto_animation_frame_counter)($2)
$L31:
	lui	$2,%hi(vblank_interrupt_pending)
	li	$3,1			# 0x1
	sw	$3,%lo(vblank_interrupt_pending)($2)
	jal	update_interrupts
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_vblank_interrupt
	.size	neogeo_vblank_interrupt, .-neogeo_vblank_interrupt
	.align	2
	.globl	neogeo_raster_interrupt
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_raster_interrupt
	.type	neogeo_raster_interrupt, @function
neogeo_raster_interrupt:
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
	sw	$0,24($fp)
	lw	$2,40($fp)
	sh	$2,28($fp)
	lhu	$3,28($fp)
	li	$2,264			# 0x108
	bne	$3,$2,$L34
	nop

	sh	$0,28($fp)
$L34:
	lhu	$2,28($fp)
	sltu	$2,$2,16
	beq	$2,$0,$L35
	nop

	lhu	$2,28($fp)
	addiu	$2,$2,496
	andi	$3,$2,0xffff
	lui	$2,%hi(raster_counter)
	sh	$3,%lo(raster_counter)($2)
	j	$L36
	nop

$L35:
	lhu	$2,28($fp)
	addiu	$2,$2,232
	andi	$3,$2,0xffff
	lui	$2,%hi(raster_counter)
	sh	$3,%lo(raster_counter)($2)
$L36:
	lui	$2,%hi(busy)
	lw	$2,%lo(busy)($2)
	beq	$2,$0,$L37
	nop

	lui	$2,%hi(scanline_read)
	lw	$2,%lo(scanline_read)($2)
	beq	$2,$0,$L37
	nop

	lui	$2,%hi(neogeo_raster_enable)
	lw	$2,%lo(neogeo_raster_enable)($2)
	sw	$2,24($fp)
	lui	$2,%hi(scanline_read)
	sw	$0,%lo(scanline_read)($2)
$L37:
	lui	$2,%hi(display_position_interrupt_counter)
	lw	$2,%lo(display_position_interrupt_counter)($2)
	blez	$2,$L38
	nop

	lui	$2,%hi(display_position_interrupt_counter)
	lw	$2,%lo(display_position_interrupt_counter)($2)
	addiu	$3,$2,-1
	lui	$2,%hi(display_position_interrupt_counter)
	sw	$3,%lo(display_position_interrupt_counter)($2)
	lui	$2,%hi(display_position_interrupt_counter)
	lw	$2,%lo(display_position_interrupt_counter)($2)
	bne	$2,$0,$L38
	nop

	lui	$2,%hi(display_position_interrupt_control)
	lw	$2,%lo(display_position_interrupt_control)($2)
	andi	$2,$2,0x10
	beq	$2,$0,$L39
	nop

	lui	$2,%hi(busy)
	lw	$2,%lo(busy)($2)
	bne	$2,$0,$L40
	nop

	lui	$2,%hi(neogeo_raster_enable)
	lw	$2,%lo(neogeo_raster_enable)($2)
	sw	$2,24($fp)
$L40:
	lui	$2,%hi(display_position_interrupt_pending)
	li	$3,1			# 0x1
	sw	$3,%lo(display_position_interrupt_pending)($2)
$L39:
	lui	$2,%hi(display_position_interrupt_control)
	lw	$2,%lo(display_position_interrupt_control)($2)
	andi	$2,$2,0x80
	beq	$2,$0,$L38
	nop

	jal	adjust_display_position_interrupt
	nop

$L38:
	lw	$3,40($fp)
	li	$2,264			# 0x108
	bne	$3,$2,$L41
	nop

	lui	$2,%hi(display_position_interrupt_control)
	lw	$2,%lo(display_position_interrupt_control)($2)
	andi	$2,$2,0x40
	beq	$2,$0,$L42
	nop

	jal	adjust_display_position_interrupt
	nop

$L42:
	jal	pd4990a_addretrace
	nop

	lui	$2,%hi(auto_animation_disabled)
	lbu	$2,%lo(auto_animation_disabled)($2)
	bne	$2,$0,$L43
	nop

	lui	$2,%hi(auto_animation_frame_counter)
	lbu	$2,%lo(auto_animation_frame_counter)($2)
	bne	$2,$0,$L44
	nop

	lui	$2,%hi(auto_animation_speed)
	lbu	$3,%lo(auto_animation_speed)($2)
	lui	$2,%hi(auto_animation_frame_counter)
	sb	$3,%lo(auto_animation_frame_counter)($2)
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	addiu	$2,$2,1
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_counter)
	sb	$3,%lo(auto_animation_counter)($2)
	j	$L43
	nop

$L44:
	lui	$2,%hi(auto_animation_frame_counter)
	lbu	$2,%lo(auto_animation_frame_counter)($2)
	addiu	$2,$2,-1
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_frame_counter)
	sb	$3,%lo(auto_animation_frame_counter)($2)
$L43:
	lui	$2,%hi(vblank_interrupt_pending)
	li	$3,1			# 0x1
	sw	$3,%lo(vblank_interrupt_pending)($2)
$L41:
	lw	$2,24($fp)
	beq	$2,$0,$L45
	nop

	lw	$2,44($fp)
	bne	$2,$0,$L45
	nop

	lui	$2,%hi(raster_counter)
	lhu	$2,%lo(raster_counter)($2)
	addiu	$2,$2,-257
	move	$4,$2
	jal	neogeo_partial_screenrefresh
	nop

$L45:
	jal	update_interrupts
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_raster_interrupt
	.size	neogeo_raster_interrupt, .-neogeo_raster_interrupt
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	set_main_cpu_vector_table_source
	.type	set_main_cpu_vector_table_source, @function
set_main_cpu_vector_table_source:
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
	lui	$2,%hi(memory_region_cpu1)
	lw	$3,%lo(memory_region_cpu1)($2)
	lbu	$4,32($fp)
	lui	$2,%hi(neogeo_vectors)
	sll	$4,$4,2
	addiu	$2,$2,%lo(neogeo_vectors)
	addu	$2,$4,$2
	lw	$2,0($2)
	move	$4,$3
	move	$5,$2
	li	$6,128			# 0x80
	jal	memcpy
	nop

	lui	$2,%hi(main_cpu_vector_table_source)
	lbu	$3,32($fp)
	sb	$3,%lo(main_cpu_vector_table_source)($2)
	lui	$2,%hi(display_position_interrupt_counter)
	sw	$0,%lo(display_position_interrupt_counter)($2)
	lbu	$2,32($fp)
	beq	$2,$0,$L47
	nop

	lui	$2,%hi(max_sprite_number)
	li	$3,381			# 0x17d
	sh	$3,%lo(max_sprite_number)($2)
	j	$L46
	nop

$L47:
	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,13
	bne	$2,$0,$L49
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$2,%lo(neogeo_bios)($2)
	slt	$2,$2,24
	beq	$2,$0,$L49
	nop

	lui	$2,%hi(max_sprite_number)
	li	$3,32			# 0x20
	sh	$3,%lo(max_sprite_number)($2)
	j	$L46
	nop

$L49:
	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,11			# 0xb
	beq	$3,$2,$L50
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,12			# 0xc
	beq	$3,$2,$L50
	nop

	lui	$2,%hi(neogeo_bios)
	lw	$3,%lo(neogeo_bios)($2)
	li	$2,24			# 0x18
	bne	$3,$2,$L51
	nop

$L50:
	lui	$2,%hi(max_sprite_number)
	li	$3,381			# 0x17d
	sh	$3,%lo(max_sprite_number)($2)
	j	$L46
	nop

$L51:
	lui	$2,%hi(max_sprite_number)
	sh	$0,%lo(max_sprite_number)($2)
$L46:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	set_main_cpu_vector_table_source
	.size	set_main_cpu_vector_table_source, .-set_main_cpu_vector_table_source
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_palette_bank
	.type	neogeo_set_palette_bank, @function
neogeo_set_palette_bank:
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
	lui	$2,%hi(palette_bank)
	lbu	$2,%lo(palette_bank)($2)
	lbu	$3,8($fp)
	beq	$3,$2,$L52
	nop

	lui	$2,%hi(palette_bank)
	lbu	$3,8($fp)
	sb	$3,%lo(palette_bank)($2)
	lui	$2,%hi(video_palettebank)
	addiu	$3,$2,%lo(video_palettebank)
	lbu	$2,8($fp)
	sll	$2,$2,13
	addu	$3,$3,$2
	lui	$2,%hi(video_palette)
	sw	$3,%lo(video_palette)($2)
$L52:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_set_palette_bank
	.size	neogeo_set_palette_bank, .-neogeo_set_palette_bank
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	set_videoram_offset
	.type	set_videoram_offset, @function
set_videoram_offset:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	lui	$2,%hi(videoram_offset)
	lhu	$3,8($fp)
	sh	$3,%lo(videoram_offset)($2)
	lui	$2,%hi(videoram_offset)
	lhu	$2,%lo(videoram_offset)($2)
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lui	$2,%hi(videoram_read_buffer)
	sh	$3,%lo(videoram_read_buffer)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	set_videoram_offset
	.size	set_videoram_offset, .-set_videoram_offset
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	get_videoram_data
	.type	get_videoram_data, @function
get_videoram_data:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(videoram_read_buffer)
	lhu	$2,%lo(videoram_read_buffer)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	get_videoram_data
	.size	get_videoram_data, .-get_videoram_data
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	set_videoram_data
	.type	set_videoram_data, @function
set_videoram_data:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	lui	$2,%hi(videoram_offset)
	lhu	$2,%lo(videoram_offset)($2)
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$3,8($fp)
	sh	$3,0($2)
	lui	$2,%hi(videoram_offset)
	lhu	$2,%lo(videoram_offset)($2)
	seh	$3,$2
	li	$2,-32768			# 0xffffffffffff8000
	and	$2,$3,$2
	seh	$3,$2
	lui	$2,%hi(videoram_offset)
	lhu	$4,%lo(videoram_offset)($2)
	lui	$2,%hi(videoram_modulo)
	lhu	$2,%lo(videoram_modulo)($2)
	addu	$2,$4,$2
	andi	$2,$2,0xffff
	seh	$2,$2
	andi	$2,$2,0x7fff
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(videoram_offset)
	sh	$3,%lo(videoram_offset)($2)
	lui	$2,%hi(videoram_offset)
	lhu	$2,%lo(videoram_offset)($2)
	move	$3,$2
	lui	$2,%hi(neogeo_videoram)
	sll	$3,$3,1
	addiu	$2,$2,%lo(neogeo_videoram)
	addu	$2,$3,$2
	lhu	$3,0($2)
	lui	$2,%hi(videoram_read_buffer)
	sh	$3,%lo(videoram_read_buffer)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	set_videoram_data
	.size	set_videoram_data, .-set_videoram_data
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	get_videoram_modulo
	.type	get_videoram_modulo, @function
get_videoram_modulo:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	lui	$2,%hi(videoram_modulo)
	lhu	$2,%lo(videoram_modulo)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	get_videoram_modulo
	.size	get_videoram_modulo, .-get_videoram_modulo
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	set_videoram_modulo
	.type	set_videoram_modulo, @function
set_videoram_modulo:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	lui	$2,%hi(videoram_modulo)
	lhu	$3,8($fp)
	sh	$3,%lo(videoram_modulo)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	set_videoram_modulo
	.size	set_videoram_modulo, .-set_videoram_modulo
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	get_video_control
	.type	get_video_control, @function
get_video_control:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(scanline_read)
	li	$3,1			# 0x1
	sw	$3,%lo(scanline_read)($2)
	lui	$2,%hi(neogeo_driver_type)
	lw	$3,%lo(neogeo_driver_type)($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L60
	nop

	jal	timer_getscanline
	nop

	sh	$2,24($fp)
	lhu	$3,24($fp)
	li	$2,264			# 0x108
	bne	$3,$2,$L61
	nop

	sh	$0,24($fp)
$L61:
	lhu	$2,24($fp)
	sltu	$2,$2,16
	beq	$2,$0,$L62
	nop

	lhu	$2,24($fp)
	addiu	$2,$2,496
	andi	$3,$2,0xffff
	lui	$2,%hi(raster_counter)
	sh	$3,%lo(raster_counter)($2)
	j	$L60
	nop

$L62:
	lhu	$2,24($fp)
	addiu	$2,$2,232
	andi	$3,$2,0xffff
	lui	$2,%hi(raster_counter)
	sh	$3,%lo(raster_counter)($2)
$L60:
	lui	$2,%hi(raster_counter)
	lhu	$2,%lo(raster_counter)($2)
	sll	$2,$2,7
	seh	$3,$2
	lui	$2,%hi(auto_animation_counter)
	lbu	$2,%lo(auto_animation_counter)($2)
	seh	$2,$2
	andi	$2,$2,0x7
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	get_video_control
	.size	get_video_control, .-get_video_control
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	set_video_control
	.type	set_video_control, @function
set_video_control:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	lhu	$2,8($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_speed)
	sb	$3,%lo(auto_animation_speed)($2)
	lhu	$2,8($fp)
	andi	$2,$2,0x00ff
	andi	$2,$2,0x8
	andi	$3,$2,0x00ff
	lui	$2,%hi(auto_animation_disabled)
	sb	$3,%lo(auto_animation_disabled)($2)
	lhu	$2,8($fp)
	andi	$3,$2,0xf0
	lui	$2,%hi(display_position_interrupt_control)
	sw	$3,%lo(display_position_interrupt_control)($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	set_video_control
	.size	set_video_control, .-set_video_control
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_display_counter_msb
	.type	neogeo_set_display_counter_msb, @function
neogeo_set_display_counter_msb:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	move	$2,$4
	sh	$2,8($fp)
	lui	$2,%hi(neogeo_driver_type)
	lw	$3,%lo(neogeo_driver_type)($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L67
	nop

$L65:
	lui	$2,%hi(display_counter)
	lw	$2,%lo(display_counter)($2)
	andi	$3,$2,0xffff
	lhu	$2,8($fp)
	sll	$2,$2,16
	or	$3,$3,$2
	lui	$2,%hi(display_counter)
	sw	$3,%lo(display_counter)($2)
	j	$L64
	nop

$L67:
	nop
$L64:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_set_display_counter_msb
	.size	neogeo_set_display_counter_msb, .-neogeo_set_display_counter_msb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_set_display_counter_lsb
	.type	neogeo_set_display_counter_lsb, @function
neogeo_set_display_counter_lsb:
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
	sh	$2,32($fp)
	lui	$2,%hi(neogeo_driver_type)
	lw	$3,%lo(neogeo_driver_type)($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L71
	nop

$L69:
	lui	$2,%hi(display_counter)
	lw	$3,%lo(display_counter)($2)
	li	$2,-65536			# 0xffffffffffff0000
	and	$3,$3,$2
	lhu	$2,32($fp)
	or	$3,$3,$2
	lui	$2,%hi(display_counter)
	sw	$3,%lo(display_counter)($2)
	lui	$2,%hi(display_position_interrupt_control)
	lw	$2,%lo(display_position_interrupt_control)($2)
	andi	$2,$2,0x20
	beq	$2,$0,$L68
	nop

	jal	adjust_display_position_interrupt
	nop

	j	$L68
	nop

$L71:
	nop
$L68:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_set_display_counter_lsb
	.size	neogeo_set_display_counter_lsb, .-neogeo_set_display_counter_lsb
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_acknowledge_interrupt
	.type	neogeo_acknowledge_interrupt, @function
neogeo_acknowledge_interrupt:
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
	sh	$2,32($fp)
	lhu	$2,32($fp)
	andi	$2,$2,0x2
	beq	$2,$0,$L73
	nop

	lui	$2,%hi(display_position_interrupt_pending)
	sw	$0,%lo(display_position_interrupt_pending)($2)
$L73:
	lhu	$2,32($fp)
	andi	$2,$2,0x4
	beq	$2,$0,$L74
	nop

	lui	$2,%hi(vblank_interrupt_pending)
	sw	$0,%lo(vblank_interrupt_pending)($2)
$L74:
	jal	update_interrupts
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_acknowledge_interrupt
	.size	neogeo_acknowledge_interrupt, .-neogeo_acknowledge_interrupt
	.align	2
	.globl	neogeo_bankswitch_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_bankswitch_w
	.type	neogeo_bankswitch_w, @function
neogeo_bankswitch_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xfff8
	and	$3,$3,$2
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xfff8
	bne	$3,$2,$L75
	nop

	lui	$2,%hi(memory_length_cpu1)
	lw	$3,%lo(memory_length_cpu1)($2)
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x1
	sltu	$2,$3,$2
	bne	$2,$0,$L79
	nop

$L77:
	lhu	$2,44($fp)
	andi	$2,$2,0x7
	sh	$2,44($fp)
	lhu	$2,44($fp)
	addiu	$2,$2,1
	sll	$2,$2,20
	sw	$2,24($fp)
	lui	$2,%hi(memory_length_cpu1)
	lw	$2,%lo(memory_length_cpu1)($2)
	lw	$3,24($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L78
	nop

	li	$2,1048576			# 0x100000
	sw	$2,24($fp)
$L78:
	lw	$4,24($fp)
	jal	neogeo_set_cpu1_second_bank
	nop

	j	$L75
	nop

$L79:
	nop
$L75:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_bankswitch_w
	.size	neogeo_bankswitch_w, .-neogeo_bankswitch_w
	.align	2
	.globl	watchdog_callback
	.set	nomips16
	.set	nomicromips
	.ent	watchdog_callback
	.type	watchdog_callback, @function
watchdog_callback:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	lui	$2,%hi(Loop)
	lw	$3,%lo(Loop)($2)
	li	$2,3			# 0x3
	bne	$3,$2,$L80
	nop

	lui	$2,%hi(Loop)
	li	$3,2			# 0x2
	sw	$3,%lo(Loop)($2)
$L80:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	watchdog_callback
	.size	watchdog_callback, .-watchdog_callback
	.align	2
	.globl	watchdog_reset_w
	.set	nomips16
	.set	nomicromips
	.ent	watchdog_reset_w
	.type	watchdog_reset_w, @function
watchdog_reset_w:
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
	li	$4,5			# 0x5
	li	$2,65536			# 0x10000
	ori	$5,$2,0xf6fa
	move	$6,$0
	lui	$2,%hi(watchdog_callback)
	addiu	$7,$2,%lo(watchdog_callback)
	jal	timer_set
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	watchdog_reset_w
	.size	watchdog_reset_w, .-watchdog_reset_w
	.align	2
	.globl	neogeo_controller2_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_controller2_r
	.type	neogeo_controller2_r, @function
neogeo_controller2_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,567			# 0x237
	bne	$3,$2,$L84
	nop

	lui	$2,%hi(controller_select)
	lbu	$2,%lo(controller_select)($2)
	bne	$2,$0,$L84
	nop

	lui	$2,%hi(input_analog_value)
	addiu	$2,$2,%lo(input_analog_value)
	lw	$2,4($2)
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$2,$2,0xffff
	j	$L85
	nop

$L84:
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,1($2)
	sll	$2,$2,8
	andi	$2,$2,0xffff
$L85:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_controller2_r
	.size	neogeo_controller2_r, .-neogeo_controller2_r
	.align	2
	.globl	neogeo_controller3_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_controller3_r
	.type	neogeo_controller3_r, @function
neogeo_controller3_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,2($2)
	sll	$2,$2,8
	andi	$3,$2,0xffff
	li	$2,-28673			# 0xffffffffffff8fff
	and	$2,$3,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_controller3_r
	.size	neogeo_controller3_r, .-neogeo_controller3_r
	.align	2
	.globl	neogeo_controller1and4_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_controller1and4_r
	.type	neogeo_controller1and4_r, @function
neogeo_controller1and4_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$2,8($fp)
	andi	$2,$2,0x40
	beq	$2,$0,$L88
	nop

	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,5($2)
	j	$L89
	nop

$L88:
	lui	$2,%hi(neogeo_ngh)
	lhu	$2,%lo(neogeo_ngh)($2)
	li	$3,566			# 0x236
	beq	$2,$3,$L91
	nop

	li	$3,567			# 0x237
	beq	$2,$3,$L92
	nop

	j	$L90
	nop

$L91:
	lui	$2,%hi(controller_select)
	lbu	$2,%lo(controller_select)($2)
	beq	$2,$0,$L93
	nop

	lui	$2,%hi(input_analog_value)
	addiu	$2,$2,%lo(input_analog_value)
	lw	$2,4($2)
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,3($2)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	j	$L89
	nop

$L93:
	lui	$2,%hi(input_analog_value)
	lw	$2,%lo(input_analog_value)($2)
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,3($2)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	j	$L89
	nop

$L92:
	lui	$2,%hi(controller_select)
	lbu	$2,%lo(controller_select)($2)
	bne	$2,$0,$L95
	nop

	lui	$2,%hi(input_analog_value)
	lw	$2,%lo(input_analog_value)($2)
	andi	$2,$2,0xffff
	sll	$2,$2,8
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,3($2)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
	j	$L89
	nop

$L95:
	nop
$L90:
	lui	$2,%hi(neogeo_port_value)
	lbu	$2,%lo(neogeo_port_value)($2)
	sll	$2,$2,8
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,3($2)
	addu	$2,$3,$2
	andi	$2,$2,0xffff
$L89:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_controller1and4_r
	.size	neogeo_controller1and4_r, .-neogeo_controller1and4_r
	.align	2
	.globl	neogeo_timer_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_timer_r
	.type	neogeo_timer_r, @function
neogeo_timer_r:
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
	move	$2,$5
	sh	$2,52($fp)
	move	$4,$0
	jal	pd4990a_testbit_r
	nop

	sw	$2,28($fp)
	move	$4,$0
	jal	pd4990a_databit_r
	nop

	sw	$2,32($fp)
	lui	$2,%hi(neogeo_ngh)
	lhu	$3,%lo(neogeo_ngh)($2)
	li	$2,4096			# 0x1000
	beq	$3,$2,$L97
	nop

	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,4($2)
	j	$L98
	nop

$L97:
	li	$2,63			# 0x3f
$L98:
	sh	$2,24($fp)
	lw	$2,28($fp)
	sll	$2,$2,6
	seh	$3,$2
	lw	$2,32($fp)
	sll	$2,$2,7
	seh	$2,$2
	xor	$2,$3,$2
	seh	$3,$2
	lh	$2,24($fp)
	xor	$2,$3,$2
	seh	$2,$2
	sh	$2,24($fp)
	lui	$2,%hi(result_code)
	lw	$2,%lo(result_code)($2)
	sll	$2,$2,8
	seh	$3,$2
	lh	$2,24($fp)
	or	$2,$3,$2
	seh	$2,$2
	sh	$2,24($fp)
	lui	$2,%hi(pending_command)
	lw	$2,%lo(pending_command)($2)
	beq	$2,$0,$L99
	nop

	lhu	$2,24($fp)
	andi	$2,$2,0x7fff
	sh	$2,24($fp)
$L99:
	lhu	$2,24($fp)
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_timer_r
	.size	neogeo_timer_r, .-neogeo_timer_r
	.align	2
	.globl	neogeo_sound_write
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_sound_write
	.type	neogeo_sound_write, @function
neogeo_sound_write:
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
	lui	$2,%hi(sound_code)
	lw	$3,32($fp)
	sw	$3,%lo(sound_code)($2)
	li	$4,127			# 0x7f
	li	$5,3			# 0x3
	jal	z80_set_irq_line
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_sound_write
	.size	neogeo_sound_write, .-neogeo_sound_write
	.align	2
	.globl	neogeo_z80_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_z80_w
	.type	neogeo_z80_w, @function
neogeo_z80_w:
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
	lui	$2,%hi(pending_command)
	li	$3,1			# 0x1
	sw	$3,%lo(pending_command)($2)
	lhu	$2,36($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$2,$2,0xff
	li	$4,2			# 0x2
	move	$5,$0
	move	$6,$2
	lui	$2,%hi(neogeo_sound_write)
	addiu	$7,$2,%lo(neogeo_sound_write)
	jal	timer_set
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_z80_w
	.size	neogeo_z80_w, .-neogeo_z80_w
	.align	2
	.globl	io_control_w
	.set	nomips16
	.set	nomicromips
	.ent	io_control_w
	.type	io_control_w, @function
io_control_w:
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
	lw	$2,32($fp)
	andi	$2,$2,0x7f
	beq	$2,$0,$L104
	nop

	li	$3,40			# 0x28
	beq	$2,$3,$L105
	nop

	j	$L102
	nop

$L104:
	lhu	$2,36($fp)
	andi	$2,$2,0x00ff
	andi	$2,$2,0x1
	andi	$3,$2,0x00ff
	lui	$2,%hi(controller_select)
	sb	$3,%lo(controller_select)($2)
	j	$L102
	nop

$L105:
	lhu	$3,36($fp)
	lhu	$2,40($fp)
	move	$4,$0
	move	$5,$3
	move	$6,$2
	jal	pd4990a_control_w
	nop

	nop
$L102:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	io_control_w
	.size	io_control_w, .-io_control_w
	.align	2
	.globl	system_control_w
	.set	nomips16
	.set	nomicromips
	.ent	system_control_w
	.type	system_control_w, @function
system_control_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lhu	$2,48($fp)
	andi	$3,$2,0xff
	li	$2,255			# 0xff
	beq	$3,$2,$L106
	nop

	lw	$2,40($fp)
	srl	$2,$2,3
	andi	$2,$2,0x00ff
	andi	$2,$2,0x1
	sb	$2,24($fp)
	lw	$2,40($fp)
	andi	$2,$2,0x7
	li	$3,5			# 0x5
	beq	$2,$3,$L109
	nop

	sltu	$3,$2,6
	beq	$3,$0,$L112
	nop

	li	$3,1			# 0x1
	beq	$2,$3,$L108
	nop

	j	$L106
	nop

$L112:
	li	$3,6			# 0x6
	beq	$2,$3,$L110
	nop

	li	$3,7			# 0x7
	beq	$2,$3,$L111
	nop

	j	$L106
	nop

$L108:
	lbu	$2,24($fp)
	move	$4,$2
	jal	set_main_cpu_vector_table_source
	nop

	j	$L106
	nop

$L109:
	lbu	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_fixed_layer_source
	nop

	j	$L106
	nop

$L110:
	lui	$2,%hi(save_ram_unlocked)
	lbu	$3,24($fp)
	sb	$3,%lo(save_ram_unlocked)($2)
	j	$L106
	nop

$L111:
	lbu	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_palette_bank
	nop

	nop
$L106:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	system_control_w
	.size	system_control_w, .-system_control_w
	.align	2
	.globl	neogeo_video_register_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_video_register_r
	.type	neogeo_video_register_r, @function
neogeo_video_register_r:
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
	sh	$2,36($fp)
	lhu	$3,36($fp)
	li	$2,65280			# 0xff00
	bne	$3,$2,$L114
	nop

	li	$2,255			# 0xff
	j	$L115
	nop

$L114:
	lw	$2,32($fp)
	andi	$2,$2,0x3
	li	$3,2			# 0x2
	beq	$2,$3,$L118
	nop

	sltu	$3,$2,2
	bne	$3,$0,$L117
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L119
	nop

	j	$L120
	nop

$L117:
	jal	get_videoram_data
	nop

	j	$L115
	nop

$L118:
	jal	get_videoram_modulo
	nop

	j	$L115
	nop

$L119:
	jal	get_video_control
	nop

	j	$L115
	nop

$L120:
	li	$2,65535			# 0xffff
$L115:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_video_register_r
	.size	neogeo_video_register_r, .-neogeo_video_register_r
	.align	2
	.globl	neogeo_video_register_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_video_register_w
	.type	neogeo_video_register_w, @function
neogeo_video_register_w:
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
	lhu	$3,40($fp)
	li	$2,65280			# 0xff00
	beq	$3,$2,$L121
	nop

	lhu	$3,40($fp)
	li	$2,255			# 0xff
	bne	$3,$2,$L123
	nop

	lh	$3,36($fp)
	li	$2,-256			# 0xffffffffffffff00
	and	$2,$3,$2
	seh	$3,$2
	lhu	$2,36($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	sh	$2,36($fp)
$L123:
	lw	$2,32($fp)
	andi	$2,$2,0x7
	sltu	$3,$2,8
	beq	$3,$0,$L121
	nop

	sll	$3,$2,2
	lui	$2,%hi($L132)
	addiu	$2,$2,%lo($L132)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L132:
	.word	$L124
	.word	$L125
	.word	$L126
	.word	$L127
	.word	$L128
	.word	$L129
	.word	$L130
	.word	$L133
	.text
$L124:
	lhu	$2,36($fp)
	move	$4,$2
	jal	set_videoram_offset
	nop

	j	$L121
	nop

$L125:
	lhu	$2,36($fp)
	move	$4,$2
	jal	set_videoram_data
	nop

	j	$L121
	nop

$L126:
	lhu	$2,36($fp)
	move	$4,$2
	jal	set_videoram_modulo
	nop

	j	$L121
	nop

$L127:
	lhu	$2,36($fp)
	move	$4,$2
	jal	set_video_control
	nop

	j	$L121
	nop

$L128:
	lhu	$2,36($fp)
	move	$4,$2
	jal	neogeo_set_display_counter_msb
	nop

	j	$L121
	nop

$L129:
	lhu	$2,36($fp)
	move	$4,$2
	jal	neogeo_set_display_counter_lsb
	nop

	j	$L121
	nop

$L130:
	lhu	$2,36($fp)
	move	$4,$2
	jal	neogeo_acknowledge_interrupt
	nop

	j	$L121
	nop

$L133:
	nop
$L121:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_video_register_w
	.size	neogeo_video_register_w, .-neogeo_video_register_w
	.align	2
	.globl	neogeo_paletteram_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_paletteram_r
	.type	neogeo_paletteram_r, @function
neogeo_paletteram_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xfff
	sw	$2,8($fp)
	lui	$2,%hi(palette_bank)
	lbu	$2,%lo(palette_bank)($2)
	move	$3,$2
	lui	$2,%hi(palettes)
	sll	$4,$3,12
	lw	$3,8($fp)
	addu	$3,$4,$3
	sll	$3,$3,1
	addiu	$2,$2,%lo(palettes)
	addu	$2,$3,$2
	lhu	$2,0($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_paletteram_r
	.size	neogeo_paletteram_r, .-neogeo_paletteram_r
	.align	2
	.globl	neogeo_paletteram_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_paletteram_w
	.type	neogeo_paletteram_w, @function
neogeo_paletteram_w:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	move	$3,$5
	move	$2,$6
	sh	$3,28($fp)
	sh	$2,32($fp)
	lw	$2,24($fp)
	andi	$2,$2,0xfff
	sw	$2,24($fp)
	lui	$2,%hi(palettes)
	addiu	$3,$2,%lo(palettes)
	lui	$2,%hi(palette_bank)
	lbu	$2,%lo(palette_bank)($2)
	sll	$4,$2,12
	lw	$2,24($fp)
	addu	$2,$4,$2
	sll	$2,$2,1
	addu	$2,$3,$2
	lui	$3,%hi(palettes)
	addiu	$4,$3,%lo(palettes)
	lui	$3,%hi(palette_bank)
	lbu	$3,%lo(palette_bank)($3)
	sll	$5,$3,12
	lw	$3,24($fp)
	addu	$3,$5,$3
	sll	$3,$3,1
	addu	$3,$4,$3
	lhu	$4,0($3)
	lhu	$3,32($fp)
	and	$3,$4,$3
	andi	$3,$3,0xffff
	seh	$4,$3
	lhu	$3,32($fp)
	nor	$3,$0,$3
	andi	$3,$3,0xffff
	seh	$5,$3
	lh	$3,28($fp)
	and	$3,$5,$3
	seh	$3,$3
	or	$3,$4,$3
	seh	$3,$3
	andi	$3,$3,0xffff
	sh	$3,0($2)
	lhu	$2,0($2)
	sh	$2,8($fp)
	lw	$2,24($fp)
	andi	$2,$2,0xf
	beq	$2,$0,$L135
	nop

	lui	$2,%hi(video_palette)
	lw	$3,%lo(video_palette)($2)
	lw	$2,24($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$3,8($fp)
	andi	$4,$3,0x7fff
	lui	$3,%hi(video_clut16)
	sll	$4,$4,1
	addiu	$3,$3,%lo(video_clut16)
	addu	$3,$4,$3
	lhu	$3,0($3)
	sh	$3,0($2)
$L135:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_paletteram_w
	.size	neogeo_paletteram_w, .-neogeo_paletteram_w
	.align	2
	.globl	neogeo_memcard16_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_memcard16_r
	.type	neogeo_memcard16_r, @function
neogeo_memcard16_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$2,8($fp)
	andi	$3,$2,0x7ff
	lui	$2,%hi(neogeo_memcard)
	addiu	$2,$2,%lo(neogeo_memcard)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	li	$2,-256			# 0xffffffffffffff00
	or	$2,$3,$2
	andi	$2,$2,0xffff
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_memcard16_r
	.size	neogeo_memcard16_r, .-neogeo_memcard16_r
	.align	2
	.globl	neogeo_memcard16_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_memcard16_w
	.type	neogeo_memcard16_w, @function
neogeo_memcard16_w:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$3,$5
	move	$2,$6
	sh	$3,12($fp)
	sh	$2,16($fp)
	lhu	$2,16($fp)
	andi	$2,$2,0xff
	bne	$2,$0,$L138
	nop

	lw	$2,8($fp)
	andi	$4,$2,0x7ff
	lhu	$2,12($fp)
	andi	$3,$2,0x00ff
	lui	$2,%hi(neogeo_memcard)
	addiu	$2,$2,%lo(neogeo_memcard)
	addu	$2,$4,$2
	sb	$3,0($2)
$L138:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_memcard16_w
	.size	neogeo_memcard16_w, .-neogeo_memcard16_w
	.align	2
	.globl	neogeo_sram16_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_sram16_w
	.type	neogeo_sram16_w, @function
neogeo_sram16_w:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$3,$5
	move	$2,$6
	sh	$3,12($fp)
	sh	$2,16($fp)
	lui	$2,%hi(save_ram_unlocked)
	lbu	$2,%lo(save_ram_unlocked)($2)
	beq	$2,$0,$L140
	nop

	lw	$2,8($fp)
	andi	$2,$2,0x7fff
	sll	$3,$2,1
	lui	$2,%hi(neogeo_sram16)
	addiu	$2,$2,%lo(neogeo_sram16)
	addu	$2,$3,$2
	lw	$3,8($fp)
	andi	$3,$3,0x7fff
	sll	$4,$3,1
	lui	$3,%hi(neogeo_sram16)
	addiu	$3,$3,%lo(neogeo_sram16)
	addu	$3,$4,$3
	lhu	$4,0($3)
	lhu	$3,16($fp)
	and	$3,$4,$3
	andi	$3,$3,0xffff
	seh	$4,$3
	lhu	$3,16($fp)
	nor	$3,$0,$3
	andi	$3,$3,0xffff
	seh	$5,$3
	lh	$3,12($fp)
	and	$3,$5,$3
	seh	$3,$3
	or	$3,$4,$3
	seh	$3,$3
	andi	$3,$3,0xffff
	sh	$3,0($2)
$L140:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_sram16_w
	.size	neogeo_sram16_w, .-neogeo_sram16_w
	.align	2
	.globl	neogeo_z80_port_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_z80_port_r
	.type	neogeo_z80_port_r, @function
neogeo_z80_port_r:
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
	sh	$2,32($fp)
	lhu	$2,32($fp)
	andi	$2,$2,0xff
	sltu	$3,$2,12
	beq	$3,$0,$L143
	nop

	sll	$3,$2,2
	lui	$2,%hi($L152)
	addiu	$2,$2,%lo($L152)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L152:
	.word	$L144
	.word	$L143
	.word	$L143
	.word	$L143
	.word	$L145
	.word	$L146
	.word	$L147
	.word	$L143
	.word	$L148
	.word	$L149
	.word	$L150
	.word	$L151
	.text
$L144:
	lui	$2,%hi(pending_command)
	sw	$0,%lo(pending_command)($2)
	lui	$2,%hi(sound_code)
	lw	$2,%lo(sound_code)($2)
	andi	$2,$2,0x00ff
	j	$L153
	nop

$L145:
	move	$4,$0
	jal	YM2610_status_port_A_r
	nop

	j	$L153
	nop

$L146:
	move	$4,$0
	jal	YM2610_read_port_r
	nop

	j	$L153
	nop

$L147:
	move	$4,$0
	jal	YM2610_status_port_B_r
	nop

	j	$L153
	nop

$L148:
	lhu	$2,32($fp)
	andi	$2,$2,0x7f00
	sll	$2,$2,3
	li	$4,3			# 0x3
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	j	$L143
	nop

$L149:
	lhu	$2,32($fp)
	andi	$2,$2,0x3f00
	sll	$2,$2,4
	li	$4,2			# 0x2
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	j	$L143
	nop

$L150:
	lhu	$2,32($fp)
	andi	$2,$2,0x1f00
	sll	$2,$2,5
	li	$4,1			# 0x1
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	j	$L143
	nop

$L151:
	lhu	$2,32($fp)
	andi	$2,$2,0xf00
	sll	$2,$2,6
	move	$4,$0
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	nop
$L143:
	move	$2,$0
$L153:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_z80_port_r
	.size	neogeo_z80_port_r, .-neogeo_z80_port_r
	.align	2
	.globl	neogeo_z80_port_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_z80_port_w
	.type	neogeo_z80_port_w, @function
neogeo_z80_port_w:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	move	$3,$4
	move	$2,$5
	sh	$3,32($fp)
	sb	$2,36($fp)
	lhu	$2,32($fp)
	andi	$2,$2,0xff
	addiu	$2,$2,-4
	sltu	$3,$2,9
	beq	$3,$0,$L154
	nop

	sll	$3,$2,2
	lui	$2,%hi($L161)
	addiu	$2,$2,%lo($L161)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L161:
	.word	$L156
	.word	$L157
	.word	$L158
	.word	$L159
	.word	$L154
	.word	$L154
	.word	$L154
	.word	$L154
	.word	$L160
	.text
$L156:
	lbu	$2,36($fp)
	move	$4,$0
	move	$5,$2
	jal	YM2610_control_port_A_w
	nop

	j	$L154
	nop

$L157:
	lbu	$2,36($fp)
	move	$4,$0
	move	$5,$2
	jal	YM2610_data_port_A_w
	nop

	j	$L154
	nop

$L158:
	lbu	$2,36($fp)
	move	$4,$0
	move	$5,$2
	jal	YM2610_control_port_B_w
	nop

	j	$L154
	nop

$L159:
	lbu	$2,36($fp)
	move	$4,$0
	move	$5,$2
	jal	YM2610_data_port_B_w
	nop

	j	$L154
	nop

$L160:
	lbu	$3,36($fp)
	lui	$2,%hi(result_code)
	sw	$3,%lo(result_code)($2)
	nop
$L154:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_z80_port_w
	.size	neogeo_z80_port_w, .-neogeo_z80_port_w
	.align	2
	.globl	neogeo_sound_irq
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_sound_irq
	.type	neogeo_sound_irq, @function
neogeo_sound_irq:
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
	lw	$2,32($fp)
	sltu	$2,$0,$2
	move	$4,$0
	move	$5,$2
	jal	z80_set_irq_line
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_sound_irq
	.size	neogeo_sound_irq, .-neogeo_sound_irq
	.align	2
	.globl	mslugx_install_protection
	.set	nomips16
	.set	nomicromips
	.ent	mslugx_install_protection
	.type	mslugx_install_protection, @function
mslugx_install_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,12($fp)
	sw	$0,8($fp)
	j	$L164
	nop

$L166:
	lw	$2,8($fp)
	sll	$2,$2,1
	lw	$3,12($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	li	$2,579			# 0x243
	bne	$3,$2,$L165
	nop

	lw	$2,8($fp)
	addiu	$2,$2,1
	sll	$2,$2,1
	lw	$3,12($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	li	$2,1			# 0x1
	bne	$3,$2,$L165
	nop

	lw	$2,8($fp)
	addiu	$2,$2,2
	sll	$2,$2,1
	lw	$3,12($fp)
	addu	$2,$3,$2
	lhu	$3,0($2)
	li	$2,26112			# 0x6600
	bne	$3,$2,$L165
	nop

	lw	$2,8($fp)
	addiu	$2,$2,2
	sll	$2,$2,1
	lw	$3,12($fp)
	addu	$2,$3,$2
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,3
	sll	$2,$2,1
	lw	$3,12($fp)
	addu	$2,$3,$2
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
$L165:
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L164:
	lw	$3,8($fp)
	li	$2,458752			# 0x70000
	ori	$2,$2,0xfffc
	slt	$2,$3,$2
	bne	$2,$0,$L166
	nop

	lw	$2,12($fp)
	addiu	$2,$2,15324
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15326
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15328
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15372
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15374
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15376
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15414
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,15416
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mslugx_install_protection
	.size	mslugx_install_protection, .-mslugx_install_protection
	.align	2
	.globl	neogeo_secondbank_r
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_secondbank_r
	.type	neogeo_secondbank_r, @function
neogeo_secondbank_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,8($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_secondbank_r
	.size	neogeo_secondbank_r, .-neogeo_secondbank_r
	.align	2
	.globl	neogeo_secondbank_w
	.set	nomips16
	.set	nomicromips
	.ent	neogeo_secondbank_w
	.type	neogeo_secondbank_w, @function
neogeo_secondbank_w:
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
	lhu	$3,36($fp)
	lhu	$2,40($fp)
	lw	$4,32($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_bankswitch_w
	nop

	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	neogeo_secondbank_w
	.size	neogeo_secondbank_w, .-neogeo_secondbank_w
	.local	neogeo_prot_data
	.comm	neogeo_prot_data,4,4
	.align	2
	.globl	fatfury2_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	fatfury2_protection_r
	.type	fatfury2_protection_r, @function
fatfury2_protection_r:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	move	$2,$5
	sh	$2,28($fp)
	lui	$2,%hi(neogeo_prot_data)
	lw	$2,%lo(neogeo_prot_data)($2)
	srl	$2,$2,24
	sh	$2,8($fp)
	lw	$2,24($fp)
	ext	$2,$2,0,19
	li	$3,65536			# 0x10000
	ori	$3,$3,0xb004
	beq	$2,$3,$L171
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb005
	sltu	$3,$2,$3
	beq	$3,$0,$L173
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb000
	beq	$2,$3,$L171
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb002
	beq	$2,$3,$L172
	nop

	beq	$2,$0,$L171
	nop

	j	$L170
	nop

$L173:
	li	$3,131072			# 0x20000
	ori	$3,$3,0xaaa8
	beq	$2,$3,$L171
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0xaaa9
	sltu	$3,$2,$3
	beq	$3,$0,$L174
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb006
	beq	$2,$3,$L172
	nop

	j	$L170
	nop

$L174:
	li	$3,458752			# 0x70000
	ori	$3,$3,0xf800
	beq	$2,$3,$L171
	nop

	li	$3,458752			# 0x70000
	ori	$3,$3,0xfff8
	bne	$2,$3,$L170
	nop

$L171:
	lhu	$2,8($fp)
	j	$L175
	nop

$L172:
	lhu	$2,8($fp)
	andi	$2,$2,0xf0
	sra	$2,$2,4
	seh	$3,$2
	lhu	$2,8($fp)
	sll	$2,$2,4
	seh	$2,$2
	andi	$2,$2,0xff
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$2,$2,0xffff
	j	$L175
	nop

$L170:
	move	$2,$0
$L175:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	fatfury2_protection_r
	.size	fatfury2_protection_r, .-fatfury2_protection_r
	.align	2
	.globl	fatfury2_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	fatfury2_protection_w
	.type	fatfury2_protection_w, @function
fatfury2_protection_w:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$3,$5
	move	$2,$6
	sh	$3,12($fp)
	sh	$2,16($fp)
	lw	$2,8($fp)
	ext	$2,$2,0,19
	li	$3,131072			# 0x20000
	ori	$3,$3,0x1409
	beq	$2,$3,$L181
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0x140a
	sltu	$3,$2,$3
	beq	$3,$0,$L185
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb000
	beq	$2,$3,$L180
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb001
	sltu	$3,$2,$3
	beq	$3,$0,$L186
	nop

	li	$3,34953			# 0x8889
	beq	$2,$3,$L178
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0x9999
	beq	$2,$3,$L179
	nop

	j	$L176
	nop

$L186:
	li	$3,65536			# 0x10000
	ori	$3,$3,0xb004
	beq	$2,$3,$L180
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb006
	beq	$2,$3,$L180
	nop

	li	$3,65536			# 0x10000
	ori	$3,$3,0xb002
	beq	$2,$3,$L180
	nop

	j	$L176
	nop

$L185:
	li	$3,131072			# 0x20000
	ori	$3,$3,0xaaa9
	beq	$2,$3,$L183
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0xaaaa
	sltu	$3,$2,$3
	beq	$3,$0,$L187
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0x2221
	beq	$2,$3,$L182
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0xaaa8
	beq	$2,$3,$L180
	nop

	j	$L176
	nop

$L187:
	li	$3,458752			# 0x70000
	ori	$3,$3,0xf800
	beq	$2,$3,$L180
	nop

	li	$3,458752			# 0x70000
	ori	$3,$3,0xfff8
	beq	$2,$3,$L180
	nop

	li	$3,131072			# 0x20000
	ori	$3,$3,0xb3c1
	beq	$2,$3,$L184
	nop

	j	$L176
	nop

$L178:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,-16777216			# 0xffffffffff000000
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L179:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,65535			# 0xffff
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L182:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,16711680			# 0xff0000
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L183:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,-16777216			# 0xffffffffff000000
	ori	$3,$3,0xff00
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L184:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,-262537216			# 0xfffffffff05a0000
	ori	$3,$3,0x3601
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L181:
	lui	$2,%hi(neogeo_prot_data)
	li	$3,-2126381056			# 0xffffffff81420000
	ori	$3,$3,0x2418
	sw	$3,%lo(neogeo_prot_data)($2)
	j	$L176
	nop

$L180:
	lui	$2,%hi(neogeo_prot_data)
	lw	$2,%lo(neogeo_prot_data)($2)
	sll	$3,$2,8
	lui	$2,%hi(neogeo_prot_data)
	sw	$3,%lo(neogeo_prot_data)($2)
	nop
$L176:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	fatfury2_protection_w
	.size	fatfury2_protection_w, .-fatfury2_protection_w
	.align	2
	.globl	kof98_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	kof98_protection_w
	.type	kof98_protection_w, @function
kof98_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x5555
	bne	$3,$2,$L189
	nop

	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,24($fp)
	lhu	$2,44($fp)
	li	$3,144			# 0x90
	beq	$2,$3,$L191
	nop

	li	$3,240			# 0xf0
	beq	$2,$3,$L192
	nop

	j	$L188
	nop

$L191:
	lw	$2,24($fp)
	addiu	$2,$2,256
	li	$3,194			# 0xc2
	sh	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,258
	li	$3,253			# 0xfd
	sh	$3,0($2)
	nop
	j	$L188
	nop

$L192:
	lw	$2,24($fp)
	addiu	$2,$2,256
	li	$3,20037			# 0x4e45
	sh	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,258
	li	$3,20269			# 0x4f2d
	sh	$3,0($2)
	j	$L188
	nop

$L189:
	lhu	$3,44($fp)
	lhu	$2,48($fp)
	lw	$4,40($fp)
	move	$5,$3
	move	$6,$2
	jal	neogeo_bankswitch_w
	nop

$L188:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof98_protection_w
	.size	kof98_protection_w, .-kof98_protection_w
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	sma_random_r
	.type	sma_random_r, @function
sma_random_r:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	sh	$2,8($fp)
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,3
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,5
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,6
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,11
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,12
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	srl	$2,$2,15
	andi	$2,$2,0xffff
	xor	$2,$3,$2
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	sh	$2,10($fp)
	lui	$2,%hi(neogeo_rng)
	lhu	$2,%lo(neogeo_rng)($2)
	sll	$2,$2,1
	seh	$3,$2
	lh	$2,10($fp)
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(neogeo_rng)
	sh	$3,%lo(neogeo_rng)($2)
	lhu	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sma_random_r
	.size	sma_random_r, .-sma_random_r
	.align	2
	.globl	kof99_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	kof99_protection_r
	.type	kof99_protection_r, @function
kof99_protection_r:
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
	sh	$2,36($fp)
	lw	$2,32($fp)
	li	$3,1507328			# 0x170000
	ori	$3,$3,0xfffc
	beq	$2,$3,$L198
	nop

	li	$3,1507328			# 0x170000
	ori	$3,$3,0xfffd
	beq	$2,$3,$L199
	nop

	li	$3,1507328			# 0x170000
	ori	$3,$3,0xf223
	bne	$2,$3,$L201
	nop

$L197:
	li	$2,39479			# 0x9a37
	j	$L200
	nop

$L198:
	jal	sma_random_r
	nop

	j	$L200
	nop

$L199:
	jal	sma_random_r
	nop

	j	$L200
	nop

$L201:
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,32($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
$L200:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof99_protection_r
	.size	kof99_protection_r, .-kof99_protection_r
	.align	2
	.globl	kof99_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	kof99_protection_w
	.type	kof99_protection_w, @function
kof99_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xfff8
	bne	$3,$2,$L202
	nop

	lhu	$2,44($fp)
	srl	$2,$2,14
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,6
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,2
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,10
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,3
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,12
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	andi	$2,$2,0x20
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,44($fp)
	lhu	$3,44($fp)
	lui	$2,%hi(bankoffset.4945)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bankoffset.4945)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

$L202:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof99_protection_w
	.size	kof99_protection_w, .-kof99_protection_w
	.align	2
	.globl	garou_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	garou_protection_r
	.type	garou_protection_r, @function
garou_protection_r:
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
	sh	$2,36($fp)
	lw	$2,32($fp)
	li	$3,1507328			# 0x170000
	ori	$3,$3,0xffe6
	beq	$2,$3,$L207
	nop

	li	$3,1507328			# 0x170000
	ori	$3,$3,0xfff8
	beq	$2,$3,$L207
	nop

	li	$3,1507328			# 0x170000
	ori	$3,$3,0xf223
	bne	$2,$3,$L209
	nop

$L206:
	li	$2,39479			# 0x9a37
	j	$L208
	nop

$L207:
	jal	sma_random_r
	nop

	j	$L208
	nop

$L209:
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,32($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
$L208:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	garou_protection_r
	.size	garou_protection_r, .-garou_protection_r
	.align	2
	.globl	garou_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	garou_protection_w
	.type	garou_protection_w, @function
garou_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xffe0
	bne	$3,$2,$L210
	nop

	lhu	$2,44($fp)
	srl	$2,$2,5
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,9
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,2
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,6
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,3
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,14
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,12
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,5
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,44($fp)
	lhu	$3,44($fp)
	lui	$2,%hi(bankoffset.4959)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bankoffset.4959)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

$L210:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	garou_protection_w
	.size	garou_protection_w, .-garou_protection_w
	.align	2
	.globl	garouh_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	garouh_protection_w
	.type	garouh_protection_w, @function
garouh_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xffe0
	bne	$3,$2,$L212
	nop

	lhu	$2,44($fp)
	srl	$2,$2,4
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,14
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,2
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,2
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,3
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,11
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,13
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,5
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,44($fp)
	lhu	$3,44($fp)
	lui	$2,%hi(bankoffset.4966)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bankoffset.4966)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

$L212:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	garouh_protection_w
	.size	garouh_protection_w, .-garouh_protection_w
	.align	2
	.globl	mslug3_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	mslug3_protection_r
	.type	mslug3_protection_r, @function
mslug3_protection_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$3,8($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xf233
	bne	$3,$2,$L215
	nop

	li	$2,39479			# 0x9a37
	j	$L216
	nop

$L215:
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,8($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
$L216:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mslug3_protection_r
	.size	mslug3_protection_r, .-mslug3_protection_r
	.align	2
	.globl	mslug3_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	mslug3_protection_w
	.type	mslug3_protection_w, @function
mslug3_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xfff2
	bne	$3,$2,$L217
	nop

	lhu	$2,44($fp)
	srl	$2,$2,14
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,12
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,15
	andi	$2,$2,0xffff
	sll	$2,$2,2
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,6
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,3
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,3
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,9
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,5
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,44($fp)
	lhu	$3,44($fp)
	lui	$2,%hi(bankoffset.4977)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bankoffset.4977)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

$L217:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mslug3_protection_w
	.size	mslug3_protection_w, .-mslug3_protection_w
	.align	2
	.globl	kof2000_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	kof2000_protection_r
	.type	kof2000_protection_r, @function
kof2000_protection_r:
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
	sh	$2,36($fp)
	lw	$2,32($fp)
	li	$3,1507328			# 0x170000
	ori	$3,$3,0xf223
	beq	$2,$3,$L221
	nop

	li	$3,1507328			# 0x170000
	ori	$3,$3,0xf223
	sltu	$3,$2,$3
	bne	$3,$0,$L220
	nop

	li	$3,-1572864			# 0xffffffffffe80000
	ori	$3,$3,0x14
	addu	$2,$2,$3
	sltu	$2,$2,2
	beq	$2,$0,$L220
	nop

	j	$L224
	nop

$L221:
	li	$2,39479			# 0x9a37
	j	$L223
	nop

$L224:
	jal	sma_random_r
	nop

	j	$L223
	nop

$L220:
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,32($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
$L223:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof2000_protection_r
	.size	kof2000_protection_r, .-kof2000_protection_r
	.align	2
	.globl	kof2000_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	kof2000_protection_w
	.type	kof2000_protection_w, @function
kof2000_protection_w:
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
	move	$3,$5
	move	$2,$6
	sh	$3,44($fp)
	sh	$2,48($fp)
	lw	$3,40($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xfff6
	bne	$3,$2,$L225
	nop

	lhu	$2,44($fp)
	srl	$2,$2,15
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,14
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,1
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,7
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,2
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	andi	$2,$2,0x8
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	srl	$2,$2,10
	andi	$2,$2,0xffff
	andi	$2,$2,0x1
	andi	$2,$2,0xffff
	sll	$2,$2,4
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	andi	$3,$2,0xffff
	lhu	$2,44($fp)
	andi	$2,$2,0x20
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	sh	$2,44($fp)
	lhu	$3,44($fp)
	lui	$2,%hi(bankoffset.4991)
	sll	$3,$3,2
	addiu	$2,$2,%lo(bankoffset.4991)
	addu	$2,$3,$2
	lw	$3,0($2)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	sw	$2,24($fp)
	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

$L225:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof2000_protection_w
	.size	kof2000_protection_w, .-kof2000_protection_w
	.local	CartRAM
	.comm	CartRAM,8192,4
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pvc_write_unpack_color
	.type	pvc_write_unpack_color, @function
pvc_write_unpack_color:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8160($2)
	sh	$2,8($fp)
	lhu	$2,8($fp)
	andi	$2,$2,0xf
	sll	$2,$2,1
	seb	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x1000
	sra	$2,$2,12
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,10($fp)
	lhu	$2,8($fp)
	andi	$2,$2,0xf0
	sra	$2,$2,3
	seb	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x2000
	sra	$2,$2,13
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,11($fp)
	lhu	$2,8($fp)
	andi	$2,$2,0xf00
	sra	$2,$2,7
	seb	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x4000
	sra	$2,$2,14
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,12($fp)
	lhu	$2,8($fp)
	srl	$2,$2,15
	andi	$2,$2,0xffff
	sb	$2,13($fp)
	lbu	$2,11($fp)
	sll	$2,$2,8
	seh	$3,$2
	lbu	$2,10($fp)
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	sh	$3,8162($2)
	lbu	$2,13($fp)
	sll	$2,$2,8
	seh	$3,$2
	lbu	$2,12($fp)
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	sh	$3,8164($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pvc_write_unpack_color
	.size	pvc_write_unpack_color, .-pvc_write_unpack_color
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pvc_write_pack_color
	.type	pvc_write_pack_color, @function
pvc_write_pack_color:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8168($2)
	sh	$2,8($fp)
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8170($2)
	sh	$2,10($fp)
	lhu	$2,8($fp)
	andi	$2,$2,0x1e
	sra	$2,$2,1
	seh	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x1e00
	sra	$2,$2,5
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lhu	$2,10($fp)
	andi	$2,$2,0x1e
	sll	$2,$2,7
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x1
	sll	$2,$2,12
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lhu	$2,8($fp)
	andi	$2,$2,0x100
	sll	$2,$2,5
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lhu	$2,10($fp)
	andi	$2,$2,0x1
	sll	$2,$2,14
	seh	$2,$2
	or	$2,$3,$2
	seh	$3,$2
	lhu	$2,10($fp)
	andi	$2,$2,0x100
	sll	$2,$2,7
	seh	$2,$2
	or	$2,$3,$2
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	sh	$3,8172($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pvc_write_pack_color
	.size	pvc_write_pack_color, .-pvc_write_pack_color
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	pvc_write_bankswitch
	.type	pvc_write_bankswitch, @function
pvc_write_bankswitch:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8176($2)
	srl	$2,$2,8
	andi	$2,$2,0xffff
	move	$3,$2
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8178($2)
	sll	$2,$2,8
	or	$2,$3,$2
	sw	$2,24($fp)
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8176($2)
	seh	$3,$2
	li	$2,-512			# 0xfffffffffffffe00
	and	$2,$3,$2
	seh	$2,$2
	ori	$2,$2,0xa0
	seh	$2,$2
	andi	$3,$2,0xffff
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	sh	$3,8176($2)
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	lhu	$2,8178($2)
	andi	$2,$2,0x7fff
	andi	$3,$2,0xffff
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	sh	$3,8178($2)
	lw	$3,24($fp)
	li	$2,1048576			# 0x100000
	addu	$2,$3,$2
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pvc_write_bankswitch
	.size	pvc_write_bankswitch, .-pvc_write_bankswitch
	.align	2
	.globl	pvc_protection_r
	.set	nomips16
	.set	nomicromips
	.ent	pvc_protection_r
	.type	pvc_protection_r, @function
pvc_protection_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$3,8($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xf000
	sltu	$2,$3,$2
	bne	$2,$0,$L231
	nop

	lw	$3,8($fp)
	li	$2,-1572864			# 0xffffffffffe80000
	ori	$2,$2,0x1000
	addu	$2,$3,$2
	sw	$2,8($fp)
	lui	$2,%hi(CartRAM)
	lw	$3,8($fp)
	sll	$3,$3,1
	addiu	$2,$2,%lo(CartRAM)
	addu	$2,$3,$2
	lhu	$2,0($2)
	j	$L232
	nop

$L231:
	lui	$2,%hi(neogeo_cpu1_second_bank)
	lw	$3,%lo(neogeo_cpu1_second_bank)($2)
	lw	$2,8($fp)
	sll	$2,$2,1
	addu	$2,$3,$2
	lhu	$2,0($2)
$L232:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pvc_protection_r
	.size	pvc_protection_r, .-pvc_protection_r
	.align	2
	.globl	pvc_protection_w
	.set	nomips16
	.set	nomicromips
	.ent	pvc_protection_w
	.type	pvc_protection_w, @function
pvc_protection_w:
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
	lw	$3,32($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0xf000
	sltu	$2,$3,$2
	bne	$2,$0,$L233
	nop

	lw	$3,32($fp)
	li	$2,-1572864			# 0xffffffffffe80000
	ori	$2,$2,0x1000
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,32($fp)
	sll	$3,$2,1
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	addu	$2,$3,$2
	lw	$3,32($fp)
	sll	$4,$3,1
	lui	$3,%hi(CartRAM)
	addiu	$3,$3,%lo(CartRAM)
	addu	$3,$4,$3
	lhu	$4,0($3)
	lhu	$3,40($fp)
	and	$3,$4,$3
	andi	$3,$3,0xffff
	seh	$4,$3
	lhu	$3,40($fp)
	nor	$3,$0,$3
	andi	$3,$3,0xffff
	seh	$5,$3
	lh	$3,36($fp)
	and	$3,$5,$3
	seh	$3,$3
	or	$3,$4,$3
	seh	$3,$3
	andi	$3,$3,0xffff
	sh	$3,0($2)
	lw	$3,32($fp)
	li	$2,4080			# 0xff0
	bne	$3,$2,$L235
	nop

	jal	pvc_write_unpack_color
	nop

	j	$L233
	nop

$L235:
	lw	$2,32($fp)
	sltu	$2,$2,4084
	bne	$2,$0,$L236
	nop

	lw	$2,32($fp)
	sltu	$2,$2,4086
	beq	$2,$0,$L236
	nop

	jal	pvc_write_pack_color
	nop

	j	$L233
	nop

$L236:
	lw	$2,32($fp)
	sltu	$2,$2,4088
	bne	$2,$0,$L233
	nop

	jal	pvc_write_bankswitch
	nop

$L233:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	pvc_protection_w
	.size	pvc_protection_w, .-pvc_protection_w
	.align	2
	.globl	brza_sram_r
	.set	nomips16
	.set	nomicromips
	.ent	brza_sram_r
	.type	brza_sram_r, @function
brza_sram_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$3,8($fp)
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x8000
	sltu	$2,$3,$2
	beq	$2,$0,$L238
	nop

	lw	$3,8($fp)
	li	$2,-1048576			# 0xfffffffffff00000
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$3,$2,0xfff
	lui	$2,%hi(CartRAM)
	sll	$3,$3,1
	addiu	$2,$2,%lo(CartRAM)
	addu	$2,$3,$2
	lhu	$2,0($2)
	j	$L239
	nop

$L238:
	li	$2,65535			# 0xffff
$L239:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	brza_sram_r
	.size	brza_sram_r, .-brza_sram_r
	.align	2
	.globl	brza_sram_w
	.set	nomips16
	.set	nomicromips
	.ent	brza_sram_w
	.type	brza_sram_w, @function
brza_sram_w:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$3,$5
	move	$2,$6
	sh	$3,12($fp)
	sh	$2,16($fp)
	lw	$3,8($fp)
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x8000
	sltu	$2,$3,$2
	beq	$2,$0,$L240
	nop

	lw	$3,8($fp)
	li	$2,-1048576			# 0xfffffffffff00000
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,8($fp)
	andi	$2,$2,0xfff
	sll	$3,$2,1
	lui	$2,%hi(CartRAM)
	addiu	$2,$2,%lo(CartRAM)
	addu	$2,$3,$2
	lw	$3,8($fp)
	andi	$3,$3,0xfff
	sll	$4,$3,1
	lui	$3,%hi(CartRAM)
	addiu	$3,$3,%lo(CartRAM)
	addu	$3,$4,$3
	lhu	$4,0($3)
	lhu	$3,16($fp)
	and	$3,$4,$3
	andi	$3,$3,0xffff
	seh	$4,$3
	lhu	$3,16($fp)
	nor	$3,$0,$3
	andi	$3,$3,0xffff
	seh	$5,$3
	lh	$3,12($fp)
	and	$3,$5,$3
	seh	$3,$3
	or	$3,$4,$3
	seh	$3,$3
	andi	$3,$3,0xffff
	sh	$3,0($2)
$L240:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	brza_sram_w
	.size	brza_sram_w, .-brza_sram_w
	.align	2
	.globl	vliner_r
	.set	nomips16
	.set	nomicromips
	.ent	vliner_r
	.type	vliner_r, @function
vliner_r:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	move	$2,$5
	sh	$2,12($fp)
	lw	$3,8($fp)
	li	$2,1507328			# 0x170000
	ori	$2,$2,0x8000
	and	$2,$3,$2
	li	$3,1310720			# 0x140000
	beq	$2,$3,$L245
	nop

	li	$3,1441792			# 0x160000
	beq	$2,$3,$L246
	nop

	li	$3,1048576			# 0x100000
	bne	$2,$3,$L248
	nop

$L244:
	lw	$2,8($fp)
	andi	$3,$2,0xfff
	lui	$2,%hi(CartRAM)
	sll	$3,$3,1
	addiu	$2,$2,%lo(CartRAM)
	addu	$2,$3,$2
	lhu	$2,0($2)
	j	$L247
	nop

$L245:
	lui	$2,%hi(neogeo_port_value)
	addiu	$2,$2,%lo(neogeo_port_value)
	lbu	$2,4($2)
	j	$L247
	nop

$L246:
	li	$2,3			# 0x3
	j	$L247
	nop

$L248:
	li	$2,65535			# 0xffff
$L247:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	vliner_r
	.size	vliner_r, .-vliner_r
	.align	2
	.globl	kof2000_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	kof2000_AES_protection
	.type	kof2000_AES_protection, @function
kof2000_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,655360			# 0xa0000
	ori	$2,$2,0x226e
	addu	$2,$3,$2
	li	$3,20085			# 0x4e75
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	kof2000_AES_protection
	.size	kof2000_AES_protection, .-kof2000_AES_protection
	.align	2
	.globl	mslug5_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	mslug5_AES_protection
	.type	mslug5_AES_protection, @function
mslug5_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	addiu	$2,$2,4650
	li	$3,20085			# 0x4e75
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mslug5_AES_protection
	.size	mslug5_AES_protection, .-mslug5_AES_protection
	.align	2
	.globl	nitd_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	nitd_AES_protection
	.type	nitd_AES_protection, @function
nitd_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0x9978
	addu	$2,$3,$2
	li	$3,20085			# 0x4e75
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	nitd_AES_protection
	.size	nitd_AES_protection, .-nitd_AES_protection
	.align	2
	.globl	zupapa_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	zupapa_AES_protection
	.type	zupapa_AES_protection, @function
zupapa_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,524288			# 0x80000
	ori	$2,$2,0x290
	addu	$2,$3,$2
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	zupapa_AES_protection
	.size	zupapa_AES_protection, .-zupapa_AES_protection
	.align	2
	.globl	sengoku3_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	sengoku3_AES_protection
	.type	sengoku3_AES_protection, @function
sengoku3_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	addiu	$2,$2,3332
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sengoku3_AES_protection
	.size	sengoku3_AES_protection, .-sengoku3_AES_protection
	.align	2
	.globl	mslug4_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	mslug4_AES_protection
	.type	mslug4_AES_protection, @function
mslug4_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$3,8($fp)
	li	$2,44428			# 0xad8c
	addu	$2,$3,$2
	li	$3,20085			# 0x4e75
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mslug4_AES_protection
	.size	mslug4_AES_protection, .-mslug4_AES_protection
	.align	2
	.globl	rotd_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	rotd_AES_protection
	.type	rotd_AES_protection, @function
rotd_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	addiu	$2,$2,4128
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,9216
	li	$3,20081			# 0x4e71
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	rotd_AES_protection
	.size	rotd_AES_protection, .-rotd_AES_protection
	.align	2
	.globl	matrim_AES_protection
	.set	nomips16
	.set	nomicromips
	.ent	matrim_AES_protection
	.type	matrim_AES_protection, @function
matrim_AES_protection:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	lui	$2,%hi(memory_region_cpu1)
	lw	$2,%lo(memory_region_cpu1)($2)
	sw	$2,8($fp)
	lw	$2,8($fp)
	addiu	$2,$2,4176
	li	$3,20085			# 0x4e75
	sh	$3,0($2)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	matrim_AES_protection
	.size	matrim_AES_protection, .-matrim_AES_protection
	.align	2
	.globl	state_save_driver
	.set	nomips16
	.set	nomicromips
	.ent	state_save_driver
	.type	state_save_driver, @function
state_save_driver:
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
	lui	$2,%hi(neogeo_driver_type)
	addiu	$5,$2,%lo(neogeo_driver_type)
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
	lui	$2,%hi(raster_enable)
	addiu	$5,$2,%lo(raster_enable)
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
	lui	$2,%hi(scanline_read)
	addiu	$5,$2,%lo(scanline_read)
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
	lui	$2,%hi(raster_counter)
	addiu	$5,$2,%lo(raster_counter)
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(display_counter)
	addiu	$5,$2,%lo(display_counter)
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
	lui	$2,%hi(display_position_interrupt_counter)
	addiu	$5,$2,%lo(display_position_interrupt_counter)
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
	lui	$2,%hi(display_position_interrupt_control)
	addiu	$5,$2,%lo(display_position_interrupt_control)
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
	lui	$2,%hi(display_position_interrupt_pending)
	addiu	$5,$2,%lo(display_position_interrupt_pending)
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
	lui	$2,%hi(vblank_interrupt_pending)
	addiu	$5,$2,%lo(vblank_interrupt_pending)
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
	lui	$2,%hi(sound_code)
	addiu	$5,$2,%lo(sound_code)
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
	lui	$2,%hi(result_code)
	addiu	$5,$2,%lo(result_code)
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
	lui	$2,%hi(pending_command)
	addiu	$5,$2,%lo(pending_command)
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
	lui	$2,%hi(auto_animation_speed)
	addiu	$5,$2,%lo(auto_animation_speed)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(auto_animation_disabled)
	addiu	$5,$2,%lo(auto_animation_disabled)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(auto_animation_counter)
	addiu	$5,$2,%lo(auto_animation_counter)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(auto_animation_frame_counter)
	addiu	$5,$2,%lo(auto_animation_frame_counter)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(main_cpu_vector_table_source)
	addiu	$5,$2,%lo(main_cpu_vector_table_source)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(controller_select)
	addiu	$5,$2,%lo(controller_select)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(save_ram_unlocked)
	addiu	$5,$2,%lo(save_ram_unlocked)
	li	$6,1			# 0x1
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,1
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(m68k_second_bank)
	addiu	$5,$2,%lo(m68k_second_bank)
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
	lui	$2,%hi(z80_bank)
	addiu	$5,$2,%lo(z80_bank)
	li	$6,16			# 0x10
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,16
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(neogeo_prot_data)
	addiu	$5,$2,%lo(neogeo_prot_data)
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
	lui	$2,%hi(neogeo_rng)
	addiu	$5,$2,%lo(neogeo_rng)
	li	$6,2			# 0x2
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,2
	lui	$2,%hi(state_buffer)
	sw	$3,%lo(state_buffer)($2)
	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	move	$4,$2
	lui	$2,%hi(CartRAM)
	addiu	$5,$2,%lo(CartRAM)
	li	$6,8192			# 0x2000
	jal	memcpy
	nop

	lui	$2,%hi(state_buffer)
	lw	$2,%lo(state_buffer)($2)
	addiu	$3,$2,8192
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
	.end	state_save_driver
	.size	state_save_driver, .-state_save_driver
	.align	2
	.globl	state_load_driver
	.set	nomips16
	.set	nomicromips
	.ent	state_load_driver
	.type	state_load_driver, @function
state_load_driver:
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
	lui	$2,%hi(neogeo_driver_type)
	addiu	$4,$2,%lo(neogeo_driver_type)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(raster_enable)
	addiu	$4,$2,%lo(raster_enable)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(scanline_read)
	addiu	$4,$2,%lo(scanline_read)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(raster_counter)
	addiu	$4,$2,%lo(raster_counter)
	li	$5,1			# 0x1
	li	$6,2			# 0x2
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(display_counter)
	addiu	$4,$2,%lo(display_counter)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(display_position_interrupt_counter)
	addiu	$4,$2,%lo(display_position_interrupt_counter)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(display_position_interrupt_control)
	addiu	$4,$2,%lo(display_position_interrupt_control)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(display_position_interrupt_pending)
	addiu	$4,$2,%lo(display_position_interrupt_pending)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(vblank_interrupt_pending)
	addiu	$4,$2,%lo(vblank_interrupt_pending)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(sound_code)
	addiu	$4,$2,%lo(sound_code)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(result_code)
	addiu	$4,$2,%lo(result_code)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(pending_command)
	addiu	$4,$2,%lo(pending_command)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(auto_animation_counter)
	addiu	$4,$2,%lo(auto_animation_counter)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(auto_animation_speed)
	addiu	$4,$2,%lo(auto_animation_speed)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(auto_animation_disabled)
	addiu	$4,$2,%lo(auto_animation_disabled)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(auto_animation_frame_counter)
	addiu	$4,$2,%lo(auto_animation_frame_counter)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(main_cpu_vector_table_source)
	addiu	$4,$2,%lo(main_cpu_vector_table_source)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(controller_select)
	addiu	$4,$2,%lo(controller_select)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(save_ram_unlocked)
	addiu	$4,$2,%lo(save_ram_unlocked)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	lw	$7,56($fp)
	jal	fread
	nop

	addiu	$2,$fp,24
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	addiu	$2,$fp,28
	move	$4,$2
	li	$5,1			# 0x1
	li	$6,16			# 0x10
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(neogeo_prot_data)
	addiu	$4,$2,%lo(neogeo_prot_data)
	li	$5,1			# 0x1
	li	$6,4			# 0x4
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(neogeo_rng)
	addiu	$4,$2,%lo(neogeo_rng)
	li	$5,1			# 0x1
	li	$6,2			# 0x2
	lw	$7,56($fp)
	jal	fread
	nop

	lui	$2,%hi(CartRAM)
	addiu	$4,$2,%lo(CartRAM)
	li	$5,1			# 0x1
	li	$6,8192			# 0x2000
	lw	$7,56($fp)
	jal	fread
	nop

	lw	$2,24($fp)
	move	$4,$2
	jal	neogeo_set_cpu1_second_bank
	nop

	lw	$2,28($fp)
	move	$4,$0
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	lw	$2,32($fp)
	li	$4,1			# 0x1
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	lw	$2,36($fp)
	li	$4,2			# 0x2
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	lw	$2,40($fp)
	li	$4,3			# 0x3
	move	$5,$2
	jal	neogeo_set_cpu2_bank
	nop

	lui	$2,%hi(main_cpu_vector_table_source)
	lbu	$2,%lo(main_cpu_vector_table_source)($2)
	move	$4,$2
	jal	set_main_cpu_vector_table_source
	nop

	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	state_load_driver
	.size	state_load_driver, .-state_load_driver
	.data
	.align	2
	.type	bankoffset.4991, @object
	.size	bankoffset.4991, 256
bankoffset.4991:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	4159488
	.word	5208064
	.word	4192256
	.word	5240832
	.word	4225024
	.word	5273600
	.word	4257792
	.word	5306368
	.word	4286464
	.word	5335040
	.word	4315136
	.word	5363712
	.word	4341760
	.word	5390336
	.word	5388288
	.word	6436864
	.word	5398528
	.word	6447104
	.word	5406720
	.word	6455296
	.word	5414912
	.word	6463488
	.word	5421056
	.word	6469632
	.word	5427200
	.word	6475776
	.word	5433344
	.word	6481920
	.word	6389760
	.word	6393856
	.word	6397952
	.word	6400000
	.space	112
	.align	2
	.type	bankoffset.4977, @object
	.size	bankoffset.4977, 256
bankoffset.4977:
	.word	0
	.word	131072
	.word	262144
	.word	393216
	.word	458752
	.word	589824
	.word	720896
	.word	851968
	.word	917504
	.word	983040
	.word	1179648
	.word	1245184
	.word	1310720
	.word	1376256
	.word	1572864
	.word	1638400
	.word	1703936
	.word	1769472
	.word	1966080
	.word	2031616
	.word	2097152
	.word	2162688
	.word	2359296
	.word	2424832
	.word	2490368
	.word	2555904
	.word	2752512
	.word	2818048
	.word	2883584
	.word	2949120
	.word	3145728
	.word	3211264
	.word	3276800
	.word	3342336
	.word	3538944
	.word	3604480
	.word	3670016
	.word	3735552
	.word	3932160
	.word	3997696
	.word	4194304
	.word	4259840
	.word	4456448
	.word	4521984
	.word	4587520
	.word	4653056
	.word	4849664
	.word	4915200
	.word	4980736
	.space	60
	.align	2
	.type	bankoffset.4966, @object
	.size	bankoffset.4966, 256
bankoffset.4966:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	2916352
	.word	3964928
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	5865472
	.word	6914048
	.word	5898240
	.word	6946816
	.word	5931008
	.word	6979584
	.word	5963776
	.word	7012352
	.word	5996544
	.word	7045120
	.word	6029312
	.word	7077888
	.word	6062080
	.word	7110656
	.word	6094848
	.word	7143424
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6127616
	.word	7176192
	.word	6160384
	.word	7208960
	.word	6193152
	.word	7241728
	.word	7241728
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align	2
	.type	bankoffset.4959, @object
	.size	bankoffset.4959, 256
bankoffset.4959:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	3080192
	.word	4128768
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	4816896
	.word	5865472
	.word	4849664
	.word	5898240
	.word	4882432
	.word	5931008
	.word	4915200
	.word	5963776
	.word	4947968
	.word	5996544
	.word	4980736
	.word	6029312
	.word	5013504
	.word	6062080
	.word	5046272
	.word	6094848
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6094848
	.word	6127616
	.word	6160384
	.word	6193152
	.word	6225920
	.word	6258688
	.word	6291456
	.space	36
	.align	2
	.type	bankoffset.4945, @object
	.size	bankoffset.4945, 256
bankoffset.4945:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	3981312
	.word	5029888
	.word	4136960
	.word	5185536
	.word	4225024
	.word	5273600
	.word	4247552
	.word	5296128
	.word	4290560
	.word	5339136
	.word	4327424
	.word	5376000
	.word	4343808
	.word	5392384
	.word	4362240
	.word	5410816
	.word	4384768
	.word	5433344
	.word	4397056
	.word	5445632
	.word	5558272
	.word	5574656
	.word	5664768
	.word	5842944
	.word	5801984
	.word	5773312
	.word	5871616
	.word	5851136
	.word	5865472
	.space	124
	.ident	"GCC: (GNU) 4.5.2"
