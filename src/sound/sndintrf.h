/******************************************************************************

	sndintrf.c

	サウンドインタフェース

******************************************************************************/

#ifndef SOUND_INTERFACE_H
#define SOUND_INTERFACE_H

int sound_init(void);
void sound_exit(void);
void sound_reset(void);
void sound_set_samplerate(void);

#endif /* SOUND_INTERFACE_H */
