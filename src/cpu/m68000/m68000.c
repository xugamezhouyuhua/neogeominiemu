/******************************************************************************

	m68000.c

	M68000 CPUインタフェース関数

******************************************************************************/

#include "emumain.h"

/******************************************************************************
	M68000インタフェース関数
******************************************************************************/

/*--------------------------------------------------------
	CPU初期化
--------------------------------------------------------*/

void m68000_init(void)
{
	C68k_Init(&C68K);
	C68k_Set_ReadB(&C68K, m68000_read_memory_8);
	C68k_Set_ReadW(&C68K, m68000_read_memory_16);
	C68k_Set_WriteB(&C68K, m68000_write_memory_8);
	C68k_Set_WriteW(&C68K, m68000_write_memory_16);
	C68k_Set_Fetch(&C68K, 0x000000, 0x0fffff, (UINT32)memory_region_cpu1);
	C68k_Set_Fetch(&C68K, 0x100000, 0x10ffff, (UINT32)neogeo_ram);
	if (memory_length_cpu1 > 0x100000)
		C68k_Set_Fetch(&C68K, 0x200000, 0x2fffff, (UINT32)&memory_region_cpu1[0x100000]);
	else
		C68k_Set_Fetch(&C68K, 0x200000, 0x2fffff, (UINT32)memory_region_cpu1);
	C68k_Set_Fetch(&C68K, 0xc00000, 0xc00000 + (memory_length_user1 - 1), (UINT32)memory_region_user1);
}


/*--------------------------------------------------------
	CPUリセット
--------------------------------------------------------*/

void m68000_reset(void)
{
	C68k_Reset(&C68K);
}


/*--------------------------------------------------------
	CPU停止
--------------------------------------------------------*/

void m68000_exit(void)
{
}


/*--------------------------------------------------------
	CPU実行
--------------------------------------------------------*/

int m68000_execute(int cycles)
{
	return C68k_Exec(&C68K, cycles);
}

/*--------------------------------------------------------
	割り込み処理
--------------------------------------------------------*/

void m68000_set_irq_line(int irqline, int state)
{
	if (irqline == IRQ_LINE_NMI)
		irqline = 7;

	C68k_Set_IRQ(&C68K, irqline, state);
}


/*--------------------------------------------------------
	割り込みコールバック関数設定
--------------------------------------------------------*/

void m68000_set_irq_callback(int (*callback)(int line))
{
	C68k_Set_IRQ_Callback(&C68K, callback);
}


/*--------------------------------------------------------
	レジスタ取得
--------------------------------------------------------*/

UINT32 m68000_get_reg(int regnum)
{
	switch (regnum)
	{
	case M68K_PC:  return C68k_Get_Reg(&C68K, C68K_PC);
	case M68K_USP: return C68k_Get_Reg(&C68K, C68K_USP);
	case M68K_MSP: return C68k_Get_Reg(&C68K, C68K_MSP);
	case M68K_SR:  return C68k_Get_Reg(&C68K, C68K_SR);
	case M68K_D0:  return C68k_Get_Reg(&C68K, C68K_D0);
	case M68K_D1:  return C68k_Get_Reg(&C68K, C68K_D1);
	case M68K_D2:  return C68k_Get_Reg(&C68K, C68K_D2);
	case M68K_D3:  return C68k_Get_Reg(&C68K, C68K_D3);
	case M68K_D4:  return C68k_Get_Reg(&C68K, C68K_D4);
	case M68K_D5:  return C68k_Get_Reg(&C68K, C68K_D5);
	case M68K_D6:  return C68k_Get_Reg(&C68K, C68K_D6);
	case M68K_D7:  return C68k_Get_Reg(&C68K, C68K_D7);
	case M68K_A0:  return C68k_Get_Reg(&C68K, C68K_A0);
	case M68K_A1:  return C68k_Get_Reg(&C68K, C68K_A1);
	case M68K_A2:  return C68k_Get_Reg(&C68K, C68K_A2);
	case M68K_A3:  return C68k_Get_Reg(&C68K, C68K_A3);
	case M68K_A4:  return C68k_Get_Reg(&C68K, C68K_A4);
	case M68K_A5:  return C68k_Get_Reg(&C68K, C68K_A5);
	case M68K_A6:  return C68k_Get_Reg(&C68K, C68K_A6);
	case M68K_A7:  return C68k_Get_Reg(&C68K, C68K_A7);
	default: return 0;
	}
}


/*--------------------------------------------------------
	レジスタ設定
--------------------------------------------------------*/

void m68000_set_reg(int regnum, UINT32 val)
{
	switch (regnum)
	{
	case M68K_PC:  C68k_Set_Reg(&C68K, C68K_PC, val); break;
	case M68K_USP: C68k_Set_Reg(&C68K, C68K_USP, val); break;
	case M68K_MSP: C68k_Set_Reg(&C68K, C68K_MSP, val); break;
	case M68K_SR:  C68k_Set_Reg(&C68K, C68K_SR, val); break;
	case M68K_D0:  C68k_Set_Reg(&C68K, C68K_D0, val); break;
	case M68K_D1:  C68k_Set_Reg(&C68K, C68K_D1, val); break;
	case M68K_D2:  C68k_Set_Reg(&C68K, C68K_D2, val); break;
	case M68K_D3:  C68k_Set_Reg(&C68K, C68K_D3, val); break;
	case M68K_D4:  C68k_Set_Reg(&C68K, C68K_D4, val); break;
	case M68K_D5:  C68k_Set_Reg(&C68K, C68K_D5, val); break;
	case M68K_D6:  C68k_Set_Reg(&C68K, C68K_D6, val); break;
	case M68K_D7:  C68k_Set_Reg(&C68K, C68K_D7, val); break;
	case M68K_A0:  C68k_Set_Reg(&C68K, C68K_A0, val); break;
	case M68K_A1:  C68k_Set_Reg(&C68K, C68K_A1, val); break;
	case M68K_A2:  C68k_Set_Reg(&C68K, C68K_A2, val); break;
	case M68K_A3:  C68k_Set_Reg(&C68K, C68K_A3, val); break;
	case M68K_A4:  C68k_Set_Reg(&C68K, C68K_A4, val); break;
	case M68K_A5:  C68k_Set_Reg(&C68K, C68K_A5, val); break;
	case M68K_A6:  C68k_Set_Reg(&C68K, C68K_A6, val); break;
	case M68K_A7:  C68k_Set_Reg(&C68K, C68K_A7, val); break;
	default: break;
	}
}


/*------------------------------------------------------
	セーブ/ロード ステート
------------------------------------------------------*/

#ifdef SAVE_STATE

STATE_SAVE( m68000 )
{
	int i;
	UINT32 pc = C68k_Get_Reg(&C68K, C68K_PC);

	for (i = 0; i < 8; i++)
		state_save_long(&C68K.D[i], 1);
	for (i = 0; i < 8; i++)
		state_save_long(&C68K.A[i], 1);

	state_save_long(&C68K.flag_C, 1);
	state_save_long(&C68K.flag_V, 1);
	state_save_long(&C68K.flag_Z, 1);
	state_save_long(&C68K.flag_N, 1);
	state_save_long(&C68K.flag_X, 1);
	state_save_long(&C68K.flag_I, 1);
	state_save_long(&C68K.flag_S, 1);
	state_save_long(&C68K.USP, 1);
	state_save_long(&pc, 1);
	state_save_long(&C68K.HaltState, 1);
	state_save_long(&C68K.IRQLine, 1);
	state_save_long(&C68K.IRQState, 1);
}

STATE_LOAD( m68000 )
{
	int i;
	UINT32 pc;

	for (i = 0; i < 8; i++)
		state_load_long(&C68K.D[i], 1);
	for (i = 0; i < 8; i++)
		state_load_long(&C68K.A[i], 1);

	state_load_long(&C68K.flag_C, 1);
	state_load_long(&C68K.flag_V, 1);
	state_load_long(&C68K.flag_Z, 1);
	state_load_long(&C68K.flag_N, 1);
	state_load_long(&C68K.flag_X, 1);
	state_load_long(&C68K.flag_I, 1);
	state_load_long(&C68K.flag_S, 1);
	state_load_long(&C68K.USP, 1);
	state_load_long(&pc, 1);
	state_load_long(&C68K.HaltState, 1);
	state_load_long(&C68K.IRQLine, 1);
	state_load_long(&C68K.IRQState, 1);

	C68k_Set_Reg(&C68K, C68K_PC, pc);
}

#endif /* SAVE_STATE */
