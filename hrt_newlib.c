#include "libheart.h"

void _start(void);
void _exit(__attribute__((unused)) int n)
{
	_start();
}
void _abort(void)
{
	_start();
}
int _getpid(void)
{
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
}
int system(const char *__string)
{
	_start();
}