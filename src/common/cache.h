/******************************************************************************

	cache.c

	メモリキャッシュインタフェース関数

******************************************************************************/

#ifndef MEMORY_CACHE_H
#define MEMORY_CACHE_H

#if USE_CACHE

#define GFX_MEMORY			memory_region_gfx3
#define GFX_SIZE			memory_length_gfx3
#define MAX_CACHE_BLOCKS	0x800	//支持扩容CROM，原始0x400

#if ZYH_CACHE

int zyh_cache_start(void);
void zyh_cache_shutdown(void);

#else
enum
{
	CACHE_NOTFOUND = 0,
	CACHE_ZIPFILE,
	CACHE_RAWFILE
};

extern UINT32 (*read_cache)(UINT32 offset);
extern void (*update_cache)(UINT32 offset);
extern int pcm_cache_enable;

void cache_init(void);
int cache_start(void);
void cache_shutdown(void);
#endif

#endif /* USE_CACHE */

#endif /* MEMORY_CACHE_H */
