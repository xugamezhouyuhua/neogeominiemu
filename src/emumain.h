/******************************************************************************

	emumain.c

	エミュレーションコア

******************************************************************************/

#ifndef EMUMAIN_H
#define EMUMAIN_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
#include <sys/types.h>
#include <pthread.h>
#include "include/cpuintrf.h"
#include "include/memory.h"
#include "zip/zfile.h"
#include "common/loadrom.h"
#include "common/state.h"
#include "emucfg.h"
#if USE_CACHE
#include "common/cache.h"
#endif

#include "elinux/video.h"
#include "elinux/sound.h"
#include "mvs/mvs.h"

enum
{
    LOOP_EXIT = 0,
    LOOP_RESTART,
    LOOP_RESET,
    LOOP_EXEC
};

extern volatile int Loop;

extern char launchDir[MAX_PATH];
extern char game_name[16];
extern char parent_name[16];
extern char game_dir[MAX_PATH];

#if USE_CACHE
extern char cache_parent_name[16];
extern char cache_dir[MAX_PATH];
#endif

extern int option_sound_enable;

extern int machine_driver_type;
extern int machine_input_type;
extern int machine_init_type;
extern int machine_screen_type;
extern int neo_game_w;
extern int neo_game_h;

void init_screen();
void update_screen(int);


void ZYH_StartTicks(void);
unsigned int ZYH_GetTicks(void);

#endif /* EMUMAIN_H */
