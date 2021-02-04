#include "hrt_misc.h"

int __hrt_RumbleTimer = 0;
bool __hrt_RumbleActive = false;
bool __hrt_RumbleTimerActive = false;

void hrt_RumbleInit()
{
    GPIO_PORT_DIRECTION = (1 << 3);
    GPIO_PORT_CONTROL = 1;
}

bool hrt_IsRumbleActive()
{
    return __hrt_RumbleActive;
}

void hrt_RumbleStart()
{
    GPIO_PORT_DATA |= (1 << 3);
    __hrt_RumbleActive = true;
}

void hrt_RumbleStop()
{
    GPIO_PORT_DATA &= ~(1 << 3);
    __hrt_RumbleActive = false;
    __hrt_RumbleTimerActive = false;
    __hrt_RumbleTimer = 0;
}

void hrt_RumbleToggle()
{
    if(hrt_IsRumbleActive())
    {
        hrt_RumbleStop();
    }
    else
    {
        hrt_RumbleStart();
    }
}

void hrt_SetRumbleTimer(u16 frames)
{
    hrt_RumbleStart();
    __hrt_RumbleTimer = frames;
    __hrt_RumbleTimerActive = true;
}

// Should be called every frame
void hrt_UpdateRumbleTimer()
{
    if(__hrt_RumbleTimerActive)
    {
        if(__hrt_RumbleTimer > 0)
        {
            __hrt_RumbleTimer--;
        }
        else
        {
            hrt_RumbleStop();
        }
    }
}
