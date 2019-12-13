# 25 "maxmod.h"
#ifndef MAXMOD_H
#define MAXMOD_H

#ifdef __cplusplus
extern "C" {
#endif
typedef unsigned int mm_word;
typedef unsigned short mm_hword;
typedef unsigned char mm_byte;

typedef unsigned short mm_sfxhand;

typedef unsigned char mm_bool;

typedef void* mm_addr;
typedef void* mm_reg;
typedef enum {
    MM_MODE_A,
    MM_MODE_B,
    MM_MODE_C
} mm_mode_enum;
typedef enum {
    MM_STREAM_8BIT_MONO = 0x0,
    MM_STREAM_8BIT_STEREO = 0x1,
    MM_STREAM_16BIT_MONO = 0x2,
    MM_STREAM_16BIT_STEREO = 0x3,
} mm_stream_formats;


typedef mm_word(*mm_callback)(mm_word msg, mm_word param);
typedef mm_word(*mm_stream_func)(mm_word length, mm_addr dest, mm_stream_formats format);

typedef enum {
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

} mm_reverbflags;


typedef enum {
    MMRC_LEFT = 1,
    MMRC_RIGHT = 2,
    MMRC_BOTH = 3

} mm_reverbch;



typedef struct mmreverbcfg {
    mm_word flags;
    mm_addr memory;
    mm_hword delay;
    mm_hword rate;
    mm_hword feedback;
    mm_byte panning;

} mm_reverb_cfg;


typedef enum {
    MM_PLAY_LOOP,
    MM_PLAY_ONCE

} mm_pmode;


typedef enum {
    MM_MIX_8KHZ,
    MM_MIX_10KHZ,
    MM_MIX_13KHZ,
    MM_MIX_16KHZ,
    MM_MIX_18KHZ,
    MM_MIX_21KHZ,
    MM_MIX_27KHZ,
    MM_MIX_31KHZ

} mm_mixmode;


typedef enum {
    MM_TIMER0,
    MM_TIMER1,
    MM_TIMER2,
    MM_TIMER3


} mm_stream_timer;


typedef struct t_mmdssample {
    mm_word loop_start;
    union {
        mm_word loop_length;
        mm_word length;
    };
    mm_byte format;
    mm_byte repeat_mode;
    mm_hword base_rate;
    mm_addr data;

} mm_ds_sample;


typedef struct t_mmsoundeffect {
    union {
        mm_word id;
        mm_ds_sample* sample;
    };
    mm_hword rate;
    mm_sfxhand handle;
    mm_byte volume;
    mm_byte panning;
} mm_sound_effect;

typedef struct t_mmgbasystem {
    mm_mixmode mixing_mode;
    mm_word mod_channel_count;
    mm_word mix_channel_count;
    mm_addr module_channels;
    mm_addr active_channels;
    mm_addr mixing_channels;
    mm_addr mixing_memory;
    mm_addr wave_memory;
    mm_addr soundbank;
} mm_gba_system;


typedef struct t_mmdssystem {
    mm_word mod_count;
    mm_word samp_count;
    mm_word* mem_bank;
    mm_word fifo_channel;
} mm_ds_system;
typedef struct t_mmstream {

    mm_word sampling_rate;


    mm_word buffer_length;


    mm_stream_func callback;


    mm_word format;


    mm_word timer;


    mm_bool manual;


} mm_stream;


typedef struct t_mmlayer {


    mm_byte tick;


    mm_byte row;


    mm_byte position;


    mm_byte nrows;


    mm_byte global_volume;


    mm_byte speed;


    mm_byte active;


    mm_byte bpm;


} mm_modlayer;


typedef struct tmm_voice {


    mm_addr source;
    mm_word length;
    mm_hword loop_start;


    mm_hword timer;


    mm_byte flags;


    mm_byte format;



    mm_byte repeat;




    mm_byte volume;
    mm_byte divider;


    mm_byte panning;


    mm_byte index;


    mm_byte reserved[1];


} mm_voice;


enum {
    MMVF_FREQ = 2,
    MMVF_VOLUME = 4,
    MMVF_PANNING = 8,
    MMVF_SOURCE = 16,
    MMVF_STOP = 32
};

#define MM_MIXLEN_8KHZ 544
#define MM_MIXLEN_10KHZ 704
#define MM_MIXLEN_13KHZ 896
#define MM_MIXLEN_16KHZ 1056
#define MM_MIXLEN_18KHZ 1216
#define MM_MIXLEN_21KHZ 1408
#define MM_MIXLEN_27KHZ 1792
#define MM_MIXLEN_31KHZ 2112


#define MM_SIZEOF_MODCH 40
#define MM_SIZEOF_ACTCH 28
#define MM_SIZEOF_MIXCH 24

void mmInitDefault( mm_addr soundbank, mm_word number_of_channels );
void mmInit( mm_gba_system* setup );
void mmVBlank( void );
void mmSetVBlankHandler( void* function );
void mmSetEventHandler( mm_callback handler );
void mmFrame( void ) __attribute((long_call));
void mmStart( mm_word id, mm_pmode mode );
void mmPause( void );
void mmResume( void );
void mmStop( void );
void mmPosition( mm_word position );
int mmActive( void );
void mmJingle( mm_word module_ID );
int mmActiveSub( void );
void mmSetModuleVolume( mm_word volume );
void mmSetJingleVolume( mm_word volume );
void mmSetModuleTempo( mm_word tempo );
void mmSetModulePitch( mm_word pitch );
void mmPlayModule( mm_word address, mm_word mode, mm_word layer );
mm_sfxhand mmEffect( mm_word sample_ID );
mm_sfxhand mmEffectEx( mm_sound_effect* sound );
void mmEffectVolume( mm_sfxhand handle, mm_word volume );
void mmEffectPanning( mm_sfxhand handle, mm_byte panning );
void mmEffectRate( mm_sfxhand handle, mm_word rate );
void mmEffectScaleRate( mm_sfxhand handle, mm_word factor );
void mmEffectCancel( mm_sfxhand handle );
void mmEffectRelease( mm_sfxhand handle );
void mmSetEffectsVolume( mm_word volume );
void mmEffectCancelAll();
#define MMCB_SONGMESSAGE 0x2A






#define MMCB_SONGFINISHED 0x2B
extern mm_byte mp_mix_seg;
extern mm_word mp_writepos;

#endif
