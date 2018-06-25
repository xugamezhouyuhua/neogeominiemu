/******************************************************************************

	zfile.c

	ZIPƒtƒ@ƒCƒ‹‘€ìŠÖ”

******************************************************************************/

#ifndef ZFILE_H
#define ZFILE_H

#include "include/osd_cpu.h"

struct zip_find_t
{
	char name[MAX_PATH];
	UINT32  length;
	UINT32  crc32;
};

int zip_open(const char *path);
void zip_close(void);

int zip_findfirst(struct zip_find_t *file);
int zip_findnext(struct zip_find_t *file);

int zopen(const char *filename);
int zread(int fd, void *buf, unsigned size);
int zgetc(int fd);
int zclose(int fd);
int zsize(int fd);
int zlength(const char *filename);

#endif /* ZFILE_H */
