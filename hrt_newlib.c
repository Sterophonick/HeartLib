#include "libheart.h"

void _start(void);
void _exit(__attribute__((unused)) int n)
{
	_start();
}
void _abort(void)
{
	for (;;);
}
int _getpid(void)
{
	return 1;
}
int my_gettimeofday(struct timeval *__restrict __p, void *__restrict __tz)
{
	return 1;
}
int my_kill(void)
{
	return 1;
}
int my_system(const char *car)
{
	return 1;
}