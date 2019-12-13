/****************************************************************************
 *                                                          __              *
 *                ____ ___  ____ __  ______ ___  ____  ____/ /              *
 *               / __ `__ \/ __ `/ |/ / __ `__ \/ __ \/ __  /               *
 *              / / / / / / /_/ />  </ / / / / / /_/ / /_/ /                *
 *             /_/ /_/ /_/\__,_/_/|_/_/ /_/ /_/\____/\__,_/                 *
 *                                                                          *
 *                             GBA Definitions                              *
 *                                                                          *
 *         Copyright (c) 2008, Mukunda Johnson (mukunda@maxmod.org)         *
 *                                                                          *
 * Permission to use, copy, modify, and/or distribute this software for any *
 * purpose with or without fee is hereby granted, provided that the above   *
 * copyright notice and this permission notice appear in all copies.        *
 *                                                                          *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES *
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF         *
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR  *
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   *
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN    *
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF  *
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.           *
 ****************************************************************************/

#ifndef MAXMOD_H
#define MAXMOD_H

#ifdef __cplusplus
extern "C" {
#endif
	typedef unsigned int	mm_word;	// 32 bits
	typedef unsigned short	mm_hword;	// 16 bits
	typedef unsigned char	mm_byte;	// 8 bits

	typedef unsigned short	mm_sfxhand;	// sound effect handle

	typedef unsigned char	mm_bool;	// boolean value

	typedef void*			mm_addr;	// pointer
	typedef void*			mm_reg;		// hardware register

	typedef enum
	{
		MM_MODE_A,
		MM_MODE_B,
		MM_MODE_C
	} mm_mode_enum;

	typedef enum
	{
		MM_STREAM_8BIT_MONO = 0x0,	// 000b
		MM_STREAM_8BIT_STEREO = 0x1,	// 001b

		MM_STREAM_16BIT_MONO = 0x2,	// 010b
		MM_STREAM_16BIT_STEREO = 0x3,	// 011b

										//	MM_STREAM_ADPCM_MONO				= 0x4,	// 100b
										//	MM_STREAM_ADPCM_STEREO				= 0x5,	// 101b

										//	adpcm streaming is not supported by the ds hardware
										//	(the loop point data gets recorded so ring buffers are not possible)

										//-----------------------------------------------------------------------------
	} mm_stream_formats;
	//-----------------------------------------------------------------------------

	typedef mm_word(*mm_callback)(mm_word msg, mm_word param);
	typedef mm_word(*mm_stream_func)(mm_word length, mm_addr dest, mm_stream_formats format);

	typedef enum
	{
		MMRF_MEMORY = 0x01,
		MMRF_DELAY = 0x02,
		MMRF_RATE = 0x04,
		MMRF_FEEDBACK = 0x08,
		MMRF_PANNING = 0x10,
		MMRF_LEFT = 0x20,
		MMRF_RIGHT = 0x40,
		MMRF_BOTH = 0x60,

		MMRF_INVERSEPAN = 0x80,
		MMRF_NODRYLEFT = 0x100,
		MMRF_NODRYRIGHT = 0x200,
		MMRF_8BITLEFT = 0x400,
		MMRF_16BITLEFT = 0x800,
		MMRF_8BITRIGHT = 0x1000,
		MMRF_16BITRIGHT = 0x2000,
		MMRF_DRYLEFT = 0x4000,
		MMRF_DRYRIGHT = 0x8000
		//-----------------------------------------------------------------------------
	} mm_reverbflags;
	//-----------------------------------------------------------------------------

	typedef enum
	{
		MMRC_LEFT = 1,
		MMRC_RIGHT = 2,
		MMRC_BOTH = 3
		//-----------------------------------------------------------------------------
	} mm_reverbch;
	//-----------------------------------------------------------------------------


	typedef struct mmreverbcfg
	{
		mm_word				flags;
		mm_addr				memory;
		mm_hword			delay;
		mm_hword			rate;
		mm_hword			feedback;
		mm_byte				panning;
		//-----------------------------------------------------------------------------
	} mm_reverb_cfg;
	//-----------------------------------------------------------------------------

	typedef enum
	{
		MM_PLAY_LOOP,
		MM_PLAY_ONCE
		//-----------------------------------------------------------------------------
	} mm_pmode;
	//-----------------------------------------------------------------------------

	typedef enum
	{
		MM_MIX_8KHZ,
		MM_MIX_10KHZ,
		MM_MIX_13KHZ,
		MM_MIX_16KHZ,
		MM_MIX_18KHZ,
		MM_MIX_21KHZ,
		MM_MIX_27KHZ,
		MM_MIX_31KHZ
		//-----------------------------------------------------------------------------
	} mm_mixmode;
	//-----------------------------------------------------------------------------

	typedef enum
	{
		MM_TIMER0,	// hardware timer 0
		MM_TIMER1,	// hardware timer 1
		MM_TIMER2,	// hardware timer 2
		MM_TIMER3	// hardware timer 3

					//-----------------------------------------------------------------------------
	} mm_stream_timer;
	//-----------------------------------------------------------------------------

	typedef struct t_mmdssample
	{
		mm_word		loop_start;
		union {
			mm_word		loop_length;
			mm_word		length;
		};
		mm_byte		format;
		mm_byte		repeat_mode;
		mm_hword	base_rate;
		mm_addr		data;
		//-----------------------------------------------------------------------------
	} mm_ds_sample;
	//-----------------------------------------------------------------------------

	typedef struct t_mmsoundeffect
	{
		union {
			// sample ID (defined in soundbank header)
			mm_word id;

			// external sample address, not valid on GBA system
			mm_ds_sample* sample;
		};

		// playback rate
		mm_hword rate;

		// sound handle
		mm_sfxhand handle;

		// volume, 0..255
		mm_byte	volume;

		// panning, 0..255
		mm_byte	panning;

		//-----------------------------------------------------------------------------
	} mm_sound_effect;
	//-----------------------------------------------------------------------------

	typedef struct t_mmgbasystem
	{
		mm_mixmode	mixing_mode;
		mm_word		mod_channel_count;
		mm_word		mix_channel_count;
		mm_addr		module_channels;
		mm_addr		active_channels;
		mm_addr		mixing_channels;
		mm_addr		mixing_memory;
		mm_addr		wave_memory;
		mm_addr		soundbank;
		//-----------------------------------------------------------------------------
	} mm_gba_system;
	//-----------------------------------------------------------------------------

	typedef struct t_mmdssystem
	{

		// give MSL_NSONGS
		mm_word		mod_count;

		// pass MSL_NSAMPS
		mm_word		samp_count;

		// pass pointer to memory buffer
		// (mm_word mem_bank[MSL_BANKSIZE])
		mm_word*	mem_bank;

		// fifo channel to use (usually 7)
		mm_word		fifo_channel;

		//-----------------------------------------------------------------------------	
	} mm_ds_system;
	//-----------------------------------------------------------------------------

	typedef struct t_mmstream
	{
		// sampling rate. 1024->32768 (HZ)
		mm_word sampling_rate;

		// number of samples to buffer
		mm_word buffer_length;

		// pointer to filling routine
		mm_stream_func callback;

		// stream format (mm_stream_formats)
		mm_word format;

		// hardware timer selection (mm_stream_timers)
		mm_word timer;

		// if set, user must call mmStreamUpdate manually
		mm_bool manual;

		//-----------------------------------------------------------------------------
	} mm_stream;
	//-----------------------------------------------------------------------------

	typedef struct t_mmlayer
	{

		// current tick count
		mm_byte	tick;

		// current row being played
		mm_byte	row;

		// module sequence position
		mm_byte	position;

		// number of rows in current pattern
		mm_byte	nrows;

		// global volume multiplier
		mm_byte	global_volume;

		// speed of module (ticks/row)
		mm_byte	speed;

		// module is active
		mm_byte	active;

		// tempo of module
		mm_byte	bpm;

		//-----------------------------------------------------------------------------
	} mm_modlayer;
	//-----------------------------------------------------------------------------

	typedef struct tmm_voice
	{

		// data source information
		mm_addr		source;		// address to sample data
		mm_word		length;		// length of sample data OR loop length (expressed in WORDS)
		mm_hword	loop_start;	// loop start position (expressed in WORDS)

								// frequency divider
		mm_hword	timer;

		// update flags
		mm_byte		flags;

		// source format
		mm_byte		format;		// 0: 8-bit
								// 1: 16-bit
								// 2: adpcm
								// repeat mode
		mm_byte		repeat;		// 0: manual
								// 1: forward loop
								// 2: one shot

								// volume + divider setting
		mm_byte		volume;		// 0->127
		mm_byte		divider;	// 0->3 = /1, /2, /4, /16

								// panning setting
		mm_byte		panning;	// 0->127

								// index of voice
		mm_byte		index;		// 0->15

								// pad to 20 bytes
		mm_byte		reserved[1];

		//-----------------------------------------------------------------------------
	} mm_voice;
	//-----------------------------------------------------------------------------

	enum {
		MMVF_FREQ = 2,		// update frequency when this flag is set
		MMVF_VOLUME = 4,		// update volume
		MMVF_PANNING = 8,		// update panning
		MMVF_SOURCE = 16,	// update source and start note
		MMVF_STOP = 32		// stop voice (cut sound)
	};
// precalculated mix buffer lengths (in bytes)
#define MM_MIXLEN_8KHZ		544		// (8121 hz)
#define MM_MIXLEN_10KHZ		704		// (10512 hz)	
#define MM_MIXLEN_13KHZ		896		// (13379 hz)	
#define MM_MIXLEN_16KHZ		1056	// (15768 hz)
#define MM_MIXLEN_18KHZ 	1216	// (18157 hz)
#define MM_MIXLEN_21KHZ 	1408	// (21024 hz)
#define MM_MIXLEN_27KHZ		1792	// (26758 hz)
#define MM_MIXLEN_31KHZ		2112	// (31536 hz)

// measurements of channel types (bytes)
#define MM_SIZEOF_MODCH		40
#define MM_SIZEOF_ACTCH		28
#define MM_SIZEOF_MIXCH		24

/****************************************************************************
 * mmInitDefault( mm_addr soundbank, mm_word number_of_channels )
 *
 * Initialize Maxmod with default settings.
 ****************************************************************************/
 
void mmInitDefault( mm_addr soundbank, mm_word number_of_channels );

/****************************************************************************
 * mmInit( mm_gba_system* setup )
 *
 * Initialize system. Call once at startup.
 ****************************************************************************/
 
void mmInit( mm_gba_system* setup );

/****************************************************************************
 * mmVBlank()
 *
 * Must be linked to the VBlank IRQ.
 ****************************************************************************/
 
void mmVBlank( void );

/****************************************************************************
 * mmSetVBlankHandler( void* function )
 *
 * Install user vblank handler
 *
 * function : Pointer to your VBlank handler.
 ****************************************************************************/

void mmSetVBlankHandler( void* function );

/****************************************************************************
 * mmSetEventHandler( mm_callback handler )
 *
 * Install handler to receive song events.
 ****************************************************************************/

void mmSetEventHandler( mm_callback handler );

/****************************************************************************
 * mmFrame()
 *
 * Work routine. _Must_ be called every frame.
 ****************************************************************************/
 
void mmFrame( void ) __attribute((long_call));



/****************************************************************************
 *
 * Module Playback
 *
 ****************************************************************************/



/****************************************************************************
 * mmStart( mm_word id, mm_pmode mode )
 *
 * Start module playback.
 *
 * id : ID of module to play.
 * mode : Playback mode (loop/once)
 ****************************************************************************/

void mmStart( mm_word id, mm_pmode mode );

/****************************************************************************
 * mmPause()
 *
 * Pause module playback, resume with mmResume().
 ****************************************************************************/
 
void mmPause( void );

/****************************************************************************
 * mmResume()
 *
 * Resume module playback, pause with mmPause().
 ****************************************************************************/
 
void mmResume( void );

/****************************************************************************
 * mmStop()
 *
 * Stop module playback. start again with mmStart().
 ****************************************************************************/

void mmStop( void );

/****************************************************************************
 * mmPosition()
 *
 * Set playback position.
 *
 * position: New position in the module sequence.
 ****************************************************************************/

void mmPosition( mm_word position );

/****************************************************************************
 * mmActive()
 *
 * Returns nonzero if module is playing.
 ****************************************************************************/

int  mmActive( void );

/****************************************************************************
 * mmJingle( mm_word module_ID )
 *
 * Play module as jingle. Jingles are limited to 4 channels only.
 *
 * module_ID : ID of moudle (defined in soundbank header)
 ****************************************************************************/
 
void mmJingle( mm_word module_ID );

/****************************************************************************
 * mmActiveSub()
 *
 * Returns nonzero if a jingle is actively playing.
 ****************************************************************************/

int  mmActiveSub( void );

/****************************************************************************
 * mmSetModuleVolume( mm_word volume )
 * mmSetJingleVolume( mm_word volume )
 *
 * Set volume scaler for music/jingles.
 *
 * volume : 0->1024 = silent..normal
 ****************************************************************************/

void mmSetModuleVolume( mm_word volume );
void mmSetJingleVolume( mm_word volume );

/*****************************************************************
 * mmSetModuleTempo( mm_word tempo )
 *
 * Set tempo of playback.
 *
 * tempo : Fixed point (Q10) value representing tempo.
 *         Range = 0x200 -> 0x800 = 0.5 -> 2.0
 *****************************************************************/

void mmSetModuleTempo( mm_word tempo );

/*****************************************************************
 * mmSetModulePitch( mm_word pitch )
 *
 * Set pitch of playback.
 *
 * pitch : Range = 0x200 -> 0x800 = 0.5 -> 2.0
 *****************************************************************/
 
void mmSetModulePitch( mm_word pitch );

/****************************************************************************
 * mmPlayModule( mm_word address, mm_word mode, mm_word layer )
 *
 * Play direct MAS file
 ****************************************************************************/
 
void mmPlayModule( mm_word address, mm_word mode, mm_word layer );



/****************************************************************************
 *
 * Sound Effects
 *
 ****************************************************************************/



/****************************************************************************
 * mmEffect( mm_word sample_ID )
 *
 * Play a sound effect at its default frequency with full volume and
 * centered panning.
 *
 * sample_ID : Sound effect ID. (defined in soundbank header)
 ****************************************************************************/

mm_sfxhand mmEffect( mm_word sample_ID );

/****************************************************************************
 * mmEffectEx( mm_sound_effect* sound )
 *
 * Play a sound effect with all parameters.
 *
 * sound : Sound effect attributes.
 ****************************************************************************/

mm_sfxhand mmEffectEx( mm_sound_effect* sound );

/****************************************************************************
 * mmEffectVolume( mm_sfxhand handle, mm_word volume )
 *
 * Set the volume of a sound effect.
 *
 * handle : Sound effect handle.
 * volume : 0->65535
 ****************************************************************************/
 
void mmEffectVolume( mm_sfxhand handle, mm_word volume );

/****************************************************************************
 * mmEffectPanning( mm_sfxhand handle, mm_word panning )
 *
 * Set the panning of a sound effect.
 *
 * handle : Sound effect handle.
 * panning : 0->255 = left..right
 ****************************************************************************/
 
void mmEffectPanning( mm_sfxhand handle, mm_byte panning );

/****************************************************************************
 * mmEffectRate( mm_sfxhand handle, mm_word rate )
 *
 * Set the playback rate of an effect.
 *
 * handle : Sound effect handle.
 * rate: 6.10 factor
 ****************************************************************************/
 
void mmEffectRate( mm_sfxhand handle, mm_word rate );

/****************************************************************************
 * mmEffectScaleRate( mm_sfxhand handle, mm_word factor )
 *
 * Scale the playback rate of an effect.
 *
 * handle : Sound effect handle.
 * factor : 6.10 fixed point factor.
 ****************************************************************************/
 
void mmEffectScaleRate( mm_sfxhand handle, mm_word factor );

/****************************************************************************
 * mmEffectCancel( mm_sfxhand handle )
 *
 * Stop sound effect.
 *
 * handle : Sound effect handle.
 ****************************************************************************/

void mmEffectCancel( mm_sfxhand handle );

/****************************************************************************
 * mmEffectRelease( mm_sfxhand handle )
 *
 * Release sound effect (invalidate handle and allow interruption)
 *
 * handle : Sound effect handle.
 ****************************************************************************/
 
void mmEffectRelease( mm_sfxhand handle );

/****************************************************************************
 * mmSetEffectsVolume( mm_word volume )
 *
 * Set master volume scale for effect playback.
 *
 * volume : 0->1024 representing 0%->100% volume
 ****************************************************************************/

void mmSetEffectsVolume( mm_word volume );

/****************************************************************************
 * mmEffectCancelAll()
 *
 * Stop all sound effects
 ****************************************************************************/
 
void mmEffectCancelAll();



#ifdef __cplusplus
}
#endif

/****************************************************************************
 * Playback events
 ****************************************************************************/

//---------------------------------------------------------------------------
// This happens when Maxmod reads a SFx (or mod/xm EFx) effect from a module
// It will store 'x' in param_b
//---------------------------------------------------------------------------
#define MMCB_SONGMESSAGE	0x2A
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// A module has finished playing
// param == 0 if main module, ==1 otherwise
//---------------------------------------------------------------------------
#define MMCB_SONGFINISHED	0x2B
//---------------------------------------------------------------------------

/****************************************************************************
 * etc...
 ****************************************************************************/

extern mm_byte	mp_mix_seg;			// current mixing segment
extern mm_word	mp_writepos;		// mixer's write position

#endif
