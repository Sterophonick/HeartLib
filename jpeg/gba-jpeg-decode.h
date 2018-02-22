# 1 "gba-jpeg-decode.h"
#ifndef GBA_JPEG_DECODE_H
#define GBA_IMAGE_JPEG_H 
#include "gba-jpeg.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef struct JPEG_HuffmanTable JPEG_HuffmanTable;
typedef struct JPEG_Decoder JPEG_Decoder;
typedef struct JPEG_FrameHeader JPEG_FrameHeader;
typedef struct JPEG_FrameHeader_Component JPEG_FrameHeader_Component;
typedef struct JPEG_ScanHeader JPEG_ScanHeader;
typedef struct JPEG_ScanHeader_Component JPEG_ScanHeader_Component;
struct JPEG_HuffmanTable
{
    const unsigned char *huffval;
    int maxcode [16];
    const unsigned char *valptr [16];

    unsigned char look_nbits [256];
    unsigned char look_sym [256];
};
struct JPEG_FrameHeader_Component
{
    unsigned char selector;
    unsigned char horzFactor;
 unsigned char vertFactor;
    unsigned char quantTable;
};
struct JPEG_FrameHeader
{
    JPEG_Marker marker;
    int encoding;
    char differential;

    unsigned char precision;
    unsigned short height;
    unsigned short width;
 JPEG_FrameHeader_Component componentList[JPEG_MAXIMUM_COMPONENTS];
    int componentCount;
};
struct JPEG_ScanHeader_Component
{
    unsigned char selector;
    unsigned char dcTable;
    unsigned char acTable;
};
struct JPEG_ScanHeader
{
    JPEG_ScanHeader_Component componentList [JPEG_MAXIMUM_COMPONENTS];
    int componentCount;
    unsigned char spectralStart;
    unsigned char spectralEnd;
    unsigned char successiveApproximationBitPositionHigh;
    unsigned char successiveApproximationBitPositionLow;
};


struct JPEG_Decoder
{
    const unsigned char *acTables [4];
    const unsigned char *dcTables [4];
    JPEG_QuantizationTable quantTables [4];
    unsigned int restartInterval;
    JPEG_FrameHeader frame;
    JPEG_ScanHeader scan;
};


#define JPEG_BITS_START() \
    unsigned int bits_left = 0; \
    unsigned long int bits_data = 0


#define JPEG_BITS_REWIND() \
    do { \
        int count = bits_left >> 3; \
        \
        while (count --) \
        { \
            data --; \
            if (data [-1] == 0xFF) \
                data --; \
        } \
        \
        bits_left = 0; \
        bits_data = 0; \
    } while (0)


#define JPEG_BITS_CHECK() \
    do { \
        while (bits_left < 32 - 7) \
        { \
            bits_data = (bits_data << 8) | (*data ++); \
            if (data [-1] == 0xFF) \
                data ++; \
            bits_left += 8; \
        } \
    } while (0)


#define JPEG_BITS_GET(COUNT) \
    ((bits_data >> (bits_left -= (COUNT))) & ((1 << (COUNT)) - 1))


#define JPEG_BITS_PEEK(COUNT) \
    ((bits_data >> (bits_left - (COUNT))) & ((1 << (COUNT)) - 1))


#define JPEG_BITS_DROP(COUNT) \
    (bits_left -= (COUNT))


#define JPEG_HuffmanTable_Decode(TABLE,OUT) \
    do { \
        int bitcount, result; \
        \
        result = JPEG_BITS_PEEK (8); \
        \
        if ((bitcount = (TABLE)->look_nbits [result]) != 0) \
        { \
            JPEG_BITS_DROP (bitcount); \
            result = (TABLE)->look_sym [result]; \
        } \
        else \
        { \
            int i = 7; \
            \
            JPEG_BITS_DROP (8); \
            do result = (result << 1) | JPEG_BITS_GET (1); \
            while (result > (TABLE)->maxcode [++ i]); \
            \
            result = (TABLE)->valptr [i] [result]; \
        } \
        \
        (OUT) = result; \
    } while (0)

extern const unsigned char JPEG_ToZigZag [JPEG_DCTSIZE2];
extern const unsigned char JPEG_FromZigZag [JPEG_DCTSIZE2];
extern const JPEG_FIXED_TYPE JPEG_AANScaleFactor [JPEG_DCTSIZE2];
extern const unsigned char JPEG_ComponentRange [32 * 3];





int JPEG_Match (const unsigned char *data, int length);






int JPEG_FrameHeader_Read (JPEG_FrameHeader *frame, const unsigned char **data, JPEG_Marker marker);






int JPEG_HuffmanTable_Read (JPEG_HuffmanTable *table, const unsigned char **data);






int JPEG_HuffmanTable_Skip (const unsigned char **data);






int JPEG_ScanHeader_Read (JPEG_ScanHeader *scan, const unsigned char **data);






int JPEG_Decoder_ReadHeaders (JPEG_Decoder *decoder, const unsigned char **data);






int JPEG_Decoder_ReadImage (JPEG_Decoder *decoder, const unsigned char **data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);
# 201 "gba-jpeg-decode.h"
void JPEG_IDCT (JPEG_FIXED_TYPE *zz, signed char *chunk, int chunkStride);






int JPEG_DecompressImage (const unsigned char *data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);

#ifdef __cplusplus
}
#endif

#endif
