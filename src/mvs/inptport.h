/******************************************************************************

	inptport.c

	MVS »Î¡¶•›©`•»•®•ﬂ•Â•Ï©`•∑•Á•Û

******************************************************************************/

#ifndef MVS_INPTPORT_H
#define MVS_INPTPORT_H

#define MVS_PORT_MAX	6

enum
{
	MVS_A = 0,
	MVS_B,
	MVS_C,
	MVS_D,
	MVS_BUTTON_MAX,
};

enum
{
	INPUT_PLAYER1 = 0,
	INPUT_PLAYER2
};

enum
{
	INPUT_AES = 0,
	INPUT_MVS
};

#define P_KEY_UP        0x0001
#define P_KEY_DOWN      0x0002
#define P_KEY_LEFT      0x0004
#define P_KEY_RIGHT     0x0008
#define P_KEY_BUTTONA   0x0010
#define P_KEY_BUTTONB   0x0020
#define P_KEY_BUTTONC   0x0040
#define P_KEY_BUTTOND   0x0080
#define P_KEY_START     0x0100
#define P_SELECT_COIN   0x0200

extern int option_controller;
extern int neogeo_dipswitch;
extern int analog_sensitivity;

extern UINT8 neogeo_port_value[MVS_PORT_MAX];
extern int input_analog_value[2];

void check_input_mode(void);

int input_init(void);
void input_shutdown(void);
void input_reset(void);
void update_inputport(void);

#ifdef SAVE_STATE
STATE_SAVE( input );
STATE_LOAD( input );
#endif

#endif /* MVS_INPTPORT_H */
