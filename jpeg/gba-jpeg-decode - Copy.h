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
    JPEG_ScanHeader_Component componentList [JPEG_MAXIMUM_COMPONENTS]; /**< Components involved in this scan. */
    int componentCount; /**< Number of components involved in this scan. */
    unsigned char spectralStart; /**< In DCT modes of operation, the first DCT coefficient in each block in zig-zag order which shall be coded in the scan (Ss).  For sequential DCT this is zero. */
    unsigned char spectralEnd; /**< Specify the last DCT coefficient in each block in zig-zag order which shall be coded in the scan. */
    unsigned char successiveApproximationBitPositionHigh; /**< (Ah). */
    unsigned char successiveApproximationBitPositionLow; /**< (Al). */
};

/** The complete decoder state. */
struct JPEG_Decoder
{
    const unsigned char *acTables [4]; /**< The AC huffman table slots. */
    const unsigned char *dcTables [4]; /**< The DC huffman table slots. */
    JPEG_QuantizationTable quantTables [4]; /**< The quantization table slots. */
    unsigned int restartInterval; /**< Number of MCU in the restart interval (Ri). */
    JPEG_FrameHeader frame; /**< Current frame. */
    JPEG_ScanHeader scan; /**< Current scan. */
};

/** Start reading bits. */
#define JPEG_BITS_START() \
    unsigned int bits_left = 0; \
    unsigned long int bits_data = 0
    
/** Rewind any bytes that have not been read from and reset the state. */
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
    
/** Fill the buffer. */
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
   
/** Return and consume a number of bits. */
#define JPEG_BITS_GET(COUNT) \
    ((bits_data >> (bits_left -= (COUNT))) & ((1 << (COUNT)) - 1))
    
/** Return a number of bits without consuming them. */
#define JPEG_BITS_PEEK(COUNT) \
    ((bits_data >> (bits_left - (COUNT))) & ((1 << (COUNT)) - 1))
    
/** Drop a number of bits from the stream. */
#define JPEG_BITS_DROP(COUNT) \
    (bits_left -= (COUNT))

/** Read a single unsigned char from the current bit-stream by using the provided table. */
#define JPEG_HuffmanTable_Decode(TABLE, OUT) \
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

extern const unsigned char JPEG_ToZigZag [JPEG_DCTSIZE2]; /* Converts row-major indices to zig-zagged order. */
extern const unsigned char JPEG_FromZigZag [JPEG_DCTSIZE2]; /* Converts zig-zagged indices to row-major order. */
extern const JPEG_FIXED_TYPE JPEG_AANScaleFactor [JPEG_DCTSIZE2]; /* AA&N scaling factors for quantisation in fixed point. */
extern const unsigned char JPEG_ComponentRange [32 * 3]; /* A limited component clamp that keeps values in the 0..31 range if incremented by 32. */

/** Return whether this data matches as a JPEG input stream.  You only need
  * to read four bytes.
  */
  
int JPEG_Match (const unsigned char *data, int length);

/** Read a FrameHeader segment (SOFn) and store the new data pointer in
  * *data.  Returns true on success and false on failure (failure isn't
  * possible if JPEG_DEBUG is reset).
  */

int JPEG_FrameHeader_Read (JPEG_FrameHeader *frame, const unsigned char **data, JPEG_Marker marker);

/** Read a HuffmanTable segment (DHT) and store the new data pointer in
  * *data.  Returns true on success and false on failure (failure isn't
  * possible if JPEG_DEBUG is reset).
  */
  
int JPEG_HuffmanTable_Read (JPEG_HuffmanTable *table, const unsigned char **data);

/** Skip a HuffmanTable segment (DHT) and store the new data pointer in
  * *data on success.  Returns true on success and false on failure (failure
  * isn't possible if JPEG_DEBUG is reset).
  */
  
int JPEG_HuffmanTable_Skip (const unsigned char **data);

/** Read a ScanHeader segment (SOS) and store the new data pointer in
  * *data.  Returns true on success and false on failure (failure isn't
  * possible if JPEG_DEBUG is reset).
  */
  
int JPEG_ScanHeader_Read (JPEG_ScanHeader *scan, const unsigned char **data);

/** Read all headers up to the start of the image and store the new data
  * pointer in *data.  Returns true on success and false on failure (failure
  * isn't possible if JPEG_DEBUG is reset).
  */
  
int JPEG_Decoder_ReadHeaders (JPEG_Decoder *decoder, const unsigned char **data);

/** Read the entire image from the *data value and then store the new data pointer.
  * Returns true on success and false on failure (failure isn't possible if
  * JPEG_DEBUG is reset).
  */
  
int JPEG_Decoder_ReadImage (JPEG_Decoder *decoder, const unsigned char **data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);

/** Perform a 2D inverse DCT computation on the input.
  *
  * @param zz The coefficients to process, JPEG_DCTSIZE2 in length.  The
  *     contents will be destroyed in the computations.
  * @param chunk The chunk to store the results in, nominally from -64 to 63,
  *     although some error is expected.
  * @param chunkStride The number of values in a row for the chunk array.
  */

void JPEG_IDCT (JPEG_FIXED_TYPE *zz, signed char *chunk, int chunkStride);

/** Create a decompressor, read the headers from the provided data, and then
  * read the image into the buffer given.  Returns true on success and false on
  * failure (failure isn't possible if JPEG_DEBUG is reset).
  */
  
int JPEG_DecompressImage (const unsigned char *data, volatile JPEG_OUTPUT_TYPE *out, int outWidth, int outHeight);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* GBA_IMAGE_JPEG_H */
