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
        #include <stdio.h>
        #include <stdlib.h>
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
#ifdef __cplusplus
}
#endif
#endif
