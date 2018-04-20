#include "libheart.h"

unsigned char __finstr[__FINBUFSIZE];
unsigned char __kinstr[__KINBUFSIZE];
int finptr = 0;
int foutptr = 0;
int kinptr = 0;
int koutptr = 0;

int __dputchar(int c)
{
	int rcv;
	static int LastChar = 0;
	static int KbdCharNext = 0;

	// Set non-general purpose comms mode
	REG_RCNT = 0;

	// Init normal comms, 8 bit transfer, receive clocking
	//REG_SIOCNT = 0x00;
	REG_SIODATA8 = c;
	REG_SIOCNT = SIO_START;

	// Wait until transfer is complete
	while (REG_SIOCNT & SIO_START) {}
	// Wait until SC is low
	while (REG_RCNT & 1) {}

	// Force SD high
	REG_RCNT = 0x8022;

	// Wait until SC is high
	while ((REG_RCNT & 1) == 0) {}

	rcv = REG_SIODATA8;

	if (KbdCharNext)
	{
		// Put into keyboard buffer
		__kinstr[kinptr++] = rcv;
		kinptr &= (__KINBUFSIZE - 1);

		KbdCharNext = 0;

		// Make received char look like a NADA character
		// so that it won't be buffered elsewhere.
		LastChar = __ESCCHR;
		rcv = __ESC_NADA;
	}

	if (LastChar == __ESCCHR)
	{
		// Process escape character
		switch (rcv)
		{
		case __ESC_ESCCHR:
			__finstr[finptr++] = __ESCCHR;
			finptr &= (__FINBUFSIZE - 1);
			break;
		case __ESC_KBDCHR:
			KbdCharNext = 1;
			break;
		}
		LastChar = 0;
	}
	else
	{
		if (rcv == __ESCCHR)
			LastChar = __ESCCHR;
		else
		{
			// If char received from PC then save in receive FIFO
			__finstr[finptr++] = rcv;
			finptr &= (__FINBUFSIZE - 1);
		}
	}
	return(1);
}
int mbv2_dputchar(int c)
{
	(void)__dputchar(c);
	if (c == __ESCCHR)
		(void) __dputchar(__ESC_ESCCHR);

	return (1);
}
int mbv2_dgetch(void)
{
	int c;

	// If no character is in FIFO then wait for one.
	while (kinptr == koutptr)
	{
		__dputchar(__ESCCHR);
		__dputchar(__ESC_NADA);
	}

	c = __kinstr[koutptr++];
	koutptr &= (__KINBUFSIZE - 1);

	return (c);
}
int mbv2_dfgetch(void)
{
	int c;

	// If no character is in FIFO then wait for one.
	while (finptr == foutptr)
	{
		__dputchar(__ESCCHR);
		__dputchar(__ESC_NADA);
	}

	c = __finstr[foutptr++];
	foutptr &= (__FINBUFSIZE - 1);

	return (c);
}
int mbv2_dkbhit(void)
{
	return(kinptr != koutptr);
}
int mbv2_dfopen(const char *file, const char *type)
{
	__dputchar(__ESCCHR);
	__dputchar(__ESC_FOPEN);

	while (*file)
		mbv2_dputchar(*file++);

	mbv2_dputchar(0);

	while (*type)
		mbv2_dputchar(*type++);

	mbv2_dputchar(0);

	return(1);
}
int mbv2_dfclose(int fp)
{
	__dputchar(__ESCCHR);
	__dputchar(__ESC_FCLOSE);

	return(1);
}
int mbv2_dfgetc(int fp)
{
	__dputchar(__ESCCHR);
	__dputchar(__ESC_FGETC);

	return(mbv2_dfgetch());
}
int mbv2_dfputc(int ch, int fp)
{
	__dputchar(__ESCCHR);
	__dputchar(__ESC_FPUTC);

	mbv2_dputchar(ch);

	return(1);
}

void mbv2_drewind(int fp)
{
	__dputchar(__ESCCHR);
	__dputchar(__ESC_REWIND);
}


