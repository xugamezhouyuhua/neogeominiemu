/******************************************************************************

	emucfg.h

	エミュレーション設定

******************************************************************************/

#ifndef EMUCONFIG_H
#define EMUCONFIG_H

#include <stdio.h>

#ifndef EMUSYS_VALUE
#define EMUSYS_VALUE
#define MVS		2
#endif

#define ALIGN_PSPDATA			__attribute__((aligned(16)))
#define ALIGN_DATA				__attribute__((aligned(4)))
#define MEM_ALIGN				4

/******************************************************************************
	PSPの定数
******************************************************************************/

#define PSP_REFRESH_RATE		(59.940059)		// (9000000Hz * 1) / (525 * 286)
#define PSP_TICKS_PER_FRAME		(16683.333333)

/******************************************************************************
	MVSPSPの設定
******************************************************************************/

#define APPNAME_STR				"NEOGEO Emulator for PSP"
#define machine_main			neogeo_main

#define EMU_SYSTEM				MVS
#define SYSTEM_NAME				"NEO·GEO"
#define FPS						59.185606
#define TICKS_PER_FRAME			16896.0
#define USE_CACHE				1
#define ZYH_CACHE				1
#define CACHE_VERSION			"V23"
#define GULIST_SIZE				300*1024	// 300KB

#endif /* EMUCONFIG_H */
