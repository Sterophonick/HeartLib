/*******************************************************************\
*             8   8                    8  8     8 8
*             8   8                    8  8       8
*             8   8  888   888  8 888 888 8     8 8 88
*             88888 8   8     8 88     8  8     8 88  8
*             8   8 88888  8888 8      8  8     8 8   8
*             8   8 8     8   8 8      8  8     8 8   8
*             8   8  8888  8888 8       8 88888 8 8888
*                             HeartLib
*A comprehensive game/app engine for the Nintendo® Game Boy Advance™
*                  Licensed under the GNU GPL v3.0
*                 View the LICENSE file for details
*                      2017-2019 Sterophonick
*                          For Tubooboo
\*******************************************************************/

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
