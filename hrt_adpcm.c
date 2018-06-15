/*
** Adpcm - Sources\Commun\Adpcm\Decoder\Adpcm.c
** Nicolas ROBERT [NRX] - Hong Kong 2005
*/

////////////////
// Inclusions //
////////////////
#include "libheart.h"
extern gba_system __hrt_system;

static const signed char ima9_step_indices[16] =
{
  -1, -1, -1, -1, 2, 4, 7, 12,
  -1, -1, -1, -1, 2, 4, 7, 12
};

const unsigned short ima_step_table[89] =
{
      7,    8,    9,   10,   11,   12,   13,   14,   16,   17,
     19,   21,   23,   25,   28,   31,   34,   37,   41,   45,
     50,   55,   60,   66,   73,   80,   88,   97,  107,  118,
    130,  143,  157,  173,  190,  209,  230,  253,  279,  307,
    337,  371,  408,  449,  494,  544,  598,  658,  724,  796,
    876,  963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066,
   2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358,
   5894, 6484, 7132, 7845, 8630, 9493,10442,11487,12635,13899,
  15289,16818,18500,20350,22385,24623,27086,29794,32767
};

static inline int ima9_rescale(int step, unsigned int code)
{
  /* 0,1,2,3,4,5,6,9 */
  int diff = step >> 3;
  if(code & 1)
    diff += step >> 2;
  if(code & 2)
    diff += step >> 1;
  if(code & 4)
    diff += step;
  if((code & 7) == 7)
    diff += step >> 1;
  if(code & 8)
    diff = -diff;
  return diff;
}

void hrt_ADPCMDecode(signed char *dst, const unsigned char *src, unsigned int len, ADGlobals* data)
{
	if (__hrt_system.hrt_start == 1) {
		int last_sample = data->last_sample;
		int index = data->last_index;
		unsigned int by = 0;

		while (len > 0)
		{
			int step, diff;
			unsigned int code;

			if (index < 0)
				index = 0;
			if (index > 88)
				index = 88;
			step = ima_step_table[index];

			if (len & 1)
				code = by >> 4;
			else
			{
				by = *src++;
				code = by & 0x0f;
			}

			diff = ima9_rescale(step, code);
			index += ima9_step_indices[code & 0x07];

			last_sample += diff;
			if (last_sample < -32768)
				last_sample = -32768;
			if (last_sample > 32767)
				last_sample = 32767;
			*dst++ = last_sample >> 8;

			len--;
		}

		data->last_index = index;
		data->last_sample = last_sample;
	}
}
