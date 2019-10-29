#include "libheart.h"

extern void _start(void);
void _abort(void)
{
	_start();
}
int _getpid(void)
{	
	_start();
	return 1;
}

int kill(pid_t i, int i2)
{
	_start();
	return 0;
}
int system(const char *__string)
{
	_start();
	return 0;
}