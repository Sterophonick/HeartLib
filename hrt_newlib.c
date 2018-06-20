#include "libheart.h"

extern void _start(void);
void _ATTRIBUTE((__noreturn__)) _exit(__attribute__((unused)) int n)
{
	_start();
}
void _abort(void)
{
	_start();
}
int _getpid(void)
{	
	_start();
	return 1;
}
int gettimeofday(struct timeval *__restrict __p,
	void *__restrict __tz)
{
	_start();
	return 0;
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