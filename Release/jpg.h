#ifndef GBA_JPEG_H
#define GBA_JPEG_H
#ifdef __cplusplus
extern "C" {
#endif
#ifndef JPEG_DEBUG
#define JPEG_DEBUG 0
#endif
#ifndef JPEG_HANDLE_ANY_FACTORS
#define JPEG_HANDLE_ANY_FACTORS 1
#endif
#ifndef JPEG_FASTER_M211
#define JPEG_FASTER_M211 1
#endif
#ifndef JPEG_USE_IWRAM
#define JPEG_USE_IWRAM 1
#endif
#define JPEG_DCTSIZE 8
#define JPEG_DCTSIZE2 (JPEG_DCTSIZE * JPEG_DCTSIZE)
#ifndef JPEG_MAXIMUM_COMPONENTS
#define JPEG_MAXIMUM_COMPONENTS 4
#endif
#ifndef JPEG_FIXSHIFT
#define JPEG_FIXSHIFT 8
#endif
#ifndef JPEG_MAXIMUM_SCAN_COMPONENT_FACTORS
#define JPEG_MAXIMUM_SCAN_COMPONENT_FACTORS 10
#endif
#ifndef JPEG_FIXED_TYPE
#define JPEG_FIXED_TYPE long int
#endif
#if JPEG_OUTPUT_RGB8
    #define JPEG_OUTPUT_TYPE unsigned int
    
    #define JPEG_Convert_Limit(VALUE) ((VALUE) < 0 ? 0 : (VALUE) > 255 ? 255 : (VALUE))
    
    #define JPEG_Convert(OUT, Y, Cb, Cr) \
        do { \
            int eY = (Y) + 63; \
            int R = ((eY) + ((Cr) * 359 >> 8)) * 2; \
            int G = ((eY) - ((Cb) * 88 >> 8) - ((Cr) * 183 >> 8)) * 2; \
            int B = ((eY) + ((Cb) * 454 >> 8)) * 2; \
            \
            R = JPEG_Convert_Limit (R); \
            G = JPEG_Convert_Limit (G) << 8; \
            B = JPEG_Convert_Limit (B) << 16; \
            (OUT) = R | G | B; \
        } while (0)
        
    #define JPEG_Convert_From(IN, Y, Cb, Cr) \
        do { \
            int R = IN & 255; \
            int G = (IN >> 8) & 255; \
            int B = (IN >> 16) & 255; \
            \
            Y = (((R * 66 >> 8) + (G * 129 >> 8) + (B * 25 >> 8)) >> 1) - 63; \
            Cb = ((R * -38 >> 8) + (G * -74 >> 8) + (B * 112 >> 8)) >> 1; \
            Cr = ((R * 112 >> 8) + (G * -94 >> 8) + (B * 18 >> 8)) >> 1; \
        } while (0)
#endif
#ifndef JPEG_OUTPUT_TYPE
#define JPEG_OUTPUT_TYPE unsigned short
#endif
#ifndef JPEG_Convert
#define JPEG_Convert(OUT, Y, Cb, Cr) \
    do { \
        int eY = (Y) + 63; \
        int R = (eY) + ((Cr) * 359 >> 8); \
        int G = (eY) - ((Cb) * 88 >> 8) - ((Cr) * 183 >> 8); \
        int B = (eY) + ((Cb) * 454 >> 8); \
        \
        R = ComponentRange [R >> 2]; \
        G = ComponentRange [G >> 2] << 5; \
        B = ComponentRange [B >> 2] << 10; \
        (OUT) = R | G | B; \
    } while (0)
    
#endif
#ifndef JPEG_Assert
    #if JPEG_DEBUG
        #define JPEG_Assert(TEST) \
            do { \
                if (TEST) \
                    break; \
                fprintf (stderr, __FILE__ "(%d): " #TEST "\n", __LINE__); \
                return 0; \
            } while (0)
    #else
        #define JPEG_Assert(TEST) do { } while (0)
    #endif
#endif
enum JPEG_Marker
{
    JPEG_Marker_APP0 = 0xFFE0,
    JPEG_Marker_APP1 = 0xFFE1,
    JPEG_Marker_APP2 = 0xFFE2,
    JPEG_Marker_APP3 = 0xFFE3,
    JPEG_Marker_APP4 = 0xFFE4,
    JPEG_Marker_APP5 = 0xFFE5,
    JPEG_Marker_APP6 = 0xFFE6,
    JPEG_Marker_APP7 = 0xFFE7,
    JPEG_Marker_APP8 = 0xFFE8,
    JPEG_Marker_APP9 = 0xFFE9,
    JPEG_Marker_APP10 = 0xFFEA,
    JPEG_Marker_APP11 = 0xFFEB,
    JPEG_Marker_APP12 = 0xFFEC,
    JPEG_Marker_APP13 = 0xFFED,
    JPEG_Marker_APP14 = 0xFFEE,
    JPEG_Marker_APP15 = 0xFFEF,
    JPEG_Marker_COM = 0xFFFE,
    JPEG_Marker_DHT = 0xFFC4,
    JPEG_Marker_DQT = 0xFFDB,
    JPEG_Marker_DRI = 0xFFDD,
    JPEG_Marker_EOI = 0xFFD9,
    JPEG_Marker_SOF0 = 0xFFC0,
    JPEG_Marker_SOI = 0xFFD8,
    JPEG_Marker_SOS = 0xFFDA
};
typedef enum JPEG_Marker JPEG_Marker;
typedef JPEG_FIXED_TYPE JPEG_QuantizationTable [JPEG_DCTSIZE2];
#define JPEG_FIXMUL(A, B) ((A) * (B) >> JPEG_FIXSHIFT)
#define JPEG_FIXTOI(A) ((A) >> JPEG_FIXSHIFT)
#define JPEG_ITOFIX(A) ((A) << JPEG_FIXSHIFT)
#define JPEG_FTOFIX(A) ((int) ((A) * JPEG_ITOFIX (1)))
#define JPEG_FIXTOF(A) ((A) / (float) JPEG_ITOFIX (1))
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
void JPEG_IDCT (JPEG_FIXED_TYPE *zz, signed char *chunk, int chunkStride);






int JPEG_DecompressImage (const unsigned char *data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);

#ifdef __cplusplus
}
#endif
#endif
