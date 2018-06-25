/*****************************************************************************

	emumain.c

	エミュレーションコア

******************************************************************************/

#include "emumain.h"
#include <stdarg.h>


/******************************************************************************
	グローバル変数
******************************************************************************/

char game_name[16];
char parent_name[16];

char game_dir[MAX_PATH];
#if USE_CACHE
char cache_dir[MAX_PATH];
char cache_parent_name[16];
#endif

int option_sound_enable = 1;

int machine_driver_type;
int machine_init_type;
int machine_input_type;
int machine_screen_type;
int neo_game_w;
int neo_game_h;

volatile int Loop;
char launchDir[MAX_PATH];


int main(int argc, char** argv)
{
    if(argc != 2){
        printf("usage %s gamename\n",argv[0]);
        return 0;
    }

	getcwd(launchDir, MAX_PATH - 1);
    strcat(launchDir, "/");
    sprintf(game_dir,"%sroms",launchDir);
    sprintf(cache_dir,"%scache",launchDir);
    sprintf(game_name,"%s",argv[1]);

	printf("launchDir = %s\n",launchDir);
    printf("cache_dir = %s\n",cache_dir);
    printf("game_dir = %s\n",game_dir);
    printf("game_name = %s\n",game_name);

	neo_game_w = 320;
	neo_game_h = 224;

	machine_main();

    return 0;
}

static struct timeval start;
void ZYH_StartTicks(void)
{
	gettimeofday(&start, NULL);
}

unsigned int ZYH_GetTicks(void)
{
	unsigned int ticks;
	struct timeval now;
	gettimeofday(&now, NULL);
	ticks=(now.tv_sec-start.tv_sec)*1000000+now.tv_usec-start.tv_usec;
	return ticks;
}


