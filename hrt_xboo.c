#include "libheart.h"
extern u8 hrt_start;
extern int	hrt_offsetOAMData;
extern int hrt_offsetOAMPal;
extern int hrt_offsetBGMap;
extern int hrt_offsetBGTile;
extern int hrt_offsetBGPal;
u32 xcomms_recv(void)
{
	if (hrt_start == 1)
	{
		REG_SIOCNT = SIO_32BIT;
		REG_SIOCNT = SIO_32BIT | SIO_SO_HIGH | SIO_START;
		while (REG_SIOCNT & SIO_START);
		return REG_SIODATA32;
	}
	return 0;
}
void xcomms_send(u32 data)
{
	if (hrt_start == 1)
	{
		REG_SIODATA32 = data;
		REG_SIOCNT = SIO_32BIT;
		REG_SIOCNT = SIO_32BIT | SIO_SO_HIGH | SIO_START;
		while (REG_SIOCNT & SIO_START);
	}
}
void xcomms_init()
{
	if (hrt_start == 1)
	{
		REG_RCNT = 0;
		REG_SIOCNT = SIO_32BIT | SIO_SO_HIGH;
	}
}
u32 xcomms_exchange(u32 data)
{
	if (hrt_start == 1)
	{
		REG_SIODATA32 = data;
		REG_SIOCNT = SIO_32BIT;
		REG_SIOCNT = SIO_32BIT | SIO_SO_HIGH | SIO_START;
		while (REG_SIOCNT & SIO_START);
		return REG_SIODATA32;
	}
	return 0;
}
void xcomms_dputchar(int c)
{
	if (hrt_start == 1)
	{
		xcomms_send(DPUTC_CMD | (c & 0xff));
	}
}
void xcomms_sendblock(const void *block, u32 len)
{
	if (hrt_start == 1)
	{
		u32 data, i;
		u8 *ptr = (u8 *)block;
		for (i = 0; i < len; i++) {
			((unsigned char*)(&data))[i & 3] = *(ptr++);
			if ((i & 3) == 3) {
				xcomms_send(data);
			}
		}
		if (len & 3) {
			xcomms_send(data);
		}
	}
}
void xcomms_readblock(void *block, u32 len)
{
	if (hrt_start == 1)
	{
		u32 data, i;
		u8 *ptr = (u8 *)block;
		for (i = 0; i < ((len)); i++) {
			if ((i & 3) == 0) {
				data = xcomms_recv();
			}
			*(ptr++) = ((unsigned char*)(&data))[i & 3];
		}
	}
}
int	xcomms_dfopen(const char *file, const char *type)
{
	if (hrt_start == 1)
	{
		int len = strlen(file);
		xcomms_send(FOPEN_CMD | (len & 0x0ff));
		xcomms_sendblock(file, len);
		xcomms_sendblock(type, 2);
		return(xcomms_recv());
	}
	return 0;
}
void xcomms_dfclose(int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FCLOSE_CMD | (handle & 0x0ff));
	}
}
void xcomms_fseek(int handle, u32 offset, int origin)
{
	if (hrt_start == 1)
	{
		xcomms_send(FSEEK_CMD | (handle & 0x0ff));
		xcomms_send(offset);
		xcomms_send(origin);
	}
}
u32 xcomms_ftell(int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FTELL_CMD | (handle & 0x0ff));
		return(xcomms_recv());
	}
	return 0;
}
u8 xcomms_dfgetc(int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FGETC_CMD | (handle & 0x0ff));
		return(xcomms_recv());
	}
	return 0;
}
void xcomms_dfputc(int ch, int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FPUTC_CMD | (handle & 0x0ff));
		xcomms_send(ch);
	}
}
void xcomms_fread(void *buffer, u32 size, u32 count, int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FREAD_CMD | (handle & 0x0ff));
		xcomms_send(size);
		xcomms_send(count);
		xcomms_readblock(buffer, size*count);
	}
}
void xcomms_fwrite(void *buffer, u32 size, u32 count, int handle)
{
	if (hrt_start == 1)
	{
		xcomms_send(FWRITE_CMD | (handle & 0x0ff));
		xcomms_send(size);
		xcomms_send(count);
		xcomms_sendblock(buffer, size*count);
	}
}
int xcomms_getch(void)
{
	if (hrt_start == 1)
	{
		xcomms_send(GETCH_CMD);
		return(xcomms_recv());
	}
	return 0;
}
int xcomms_kbhit(void)
{
	if (hrt_start == 1)
	{
		xcomms_send(KBHIT_CMD);
		return(xcomms_recv());
	}
	return 0;
}
#define __DOUTBUFSIZE 256
char __outstr[__DOUTBUFSIZE];
void xcomms_dprintf(char *str, ...)
{
	if (hrt_start == 1)
	{
		va_list args;
		int len;
		va_start(args, str);
		len = vsnprintf(__outstr, __DOUTBUFSIZE, str, args);
		va_end(args);
		u32 data = PRINT_CMD | len;
		xcomms_send(data);
		xcomms_sendblock(__outstr, len);
	}
}