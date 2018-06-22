#include "libheart.h"
u8 *aP_d_output;
u8 *aP_d_input;
u8 aP_d_tagbyte;
u32 aP_d_tagpos;
extern gba_system __hrt_system;

u32 aP_d_getbit()
{
    if (__hrt_system.hrt_start == 1) {
        u32 tmp;
        if (!aP_d_tagpos--) {
            aP_d_tagpos = 7;
            aP_d_tagbyte = *aP_d_input;
            aP_d_input++;
        }
        tmp = (aP_d_tagbyte >> 7) & 0x01;
        aP_d_tagbyte <<= 1;
        return (tmp);
    }
	return 0;
}

u32 aP_d_getgamma()
{
    if (__hrt_system.hrt_start == 1) {
        u32 result = 1;
        do {
            result = (result << 1) + aP_d_getbit();
        }
        while (aP_d_getbit());
        return (result);
    }
	return 0;
}

u32 hrt_aPlibUnpack(u8 *source, u8 *destination)
{
    if (__hrt_system.hrt_start == 1) {
		#pragma GCC diagnostic ignored "-Wmaybe-uninitialized"
        u32 offs, len, R0, LWM;
        s32 done;
        s32 i;
        aP_d_input = source;
        aP_d_output = destination;
        LWM = 0;
        aP_d_tagpos = 0;
        *aP_d_output = *aP_d_input;
        aP_d_output++;
        aP_d_input++;
        done = 0;
        while (!done) {
            if (aP_d_getbit()) {
                if (aP_d_getbit()) {
                    if (aP_d_getbit()) {
                        offs = 0;
                        for (i = 4; i; i--) {
                            offs = (offs << 1) + aP_d_getbit();
                        }
                        if (offs) {
                            *aP_d_output = *(aP_d_output - offs);
                            aP_d_output++;
                        }
                        else {
                            *aP_d_output = 0x00;
                            aP_d_output++;
                        }
                        LWM = 0;
                    }
                    else {
                        offs = *aP_d_input;
                        aP_d_input++;
                        len = 2 + (offs & 0x0001);
                        offs >>= 1;
                        if (offs) {
                            for (; len; len--) {
                                *aP_d_output = *(aP_d_output - offs);
                                aP_d_output++;
                            }
                        }
                        else {
                            done = 1;
                        }
                        R0 = offs;
                        LWM = 1;
                    }
                }
                else {
                    offs = aP_d_getgamma();
                    if ((LWM == 0) && (offs == 2)) {
                        offs = R0;
                        len = aP_d_getgamma();
                        for (; len; len--) {
                            *aP_d_output = *(aP_d_output - offs);
                            aP_d_output++;
                        }
                    }
                    else {
                        if (LWM == 0) {
                            offs -= 3;
                        }
                        else {
                            offs -= 2;
                        }
                        offs <<= 8;
                        offs += *aP_d_input;
                        aP_d_input++;
                        len = aP_d_getgamma();
                        if (offs >= 32000) {
                            len++;
                        }
                        if (offs >= 1280) {
                            len++;
                        }
                        if (offs < 128) {
                            len += 2;
                        }
                        for (; len; len--) {
                            *aP_d_output = *(aP_d_output - offs);
                            aP_d_output++;
                        }
                        R0 = offs;
                    }
                    LWM = 1;
                }
            }
            else {
                *aP_d_output = *aP_d_input;
                aP_d_output++;
                aP_d_input++;
                LWM = 0;
            }
        }
        return (aP_d_output - destination);
    }
	return 0;
}