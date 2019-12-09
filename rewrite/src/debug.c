#include "hrt_debug.h"
#include "hrt_bios.h"
const char hrt_lang_assert[]="Assertion failed!";
const char hrt_lang_assert_file[]="File: %s";
const char hrt_lang_assert_line[]="Line: %d";
const char hrt_lang_assert_key[]="Press any key to ignore,";
const char hrt_lang_assert_vram[]="but be aware that VRAM";
const char hrt_lang_assert_vram2[]="recovery is unlikely.";

void AssertImplementation(bool expression, char* error, char* file, u32 line)
{
	if(!expression)
	{
		hrt_InitTextEngine(0);
		hrt_DSPSetMode(DSP_MODE(0) | ENABLE_BG(0));
		//hrt_PrintOnBitmap(0, 0, hrt_lang_assert);
		//hrt_PrintOnBitmap(0, 8, hrt_lang_assert_file, file);
		//hrt_PrintOnBitmap(0, 16, hrt_lang_assert_line, line);
		//hrt_PrintOnBitmap(0, 24, hrt_lang_assert_key);
		//hrt_PrintOnBitmap(0, 32, hrt_lang_assert_vram);
		//hrt_PrintOnBitmap(0, 40, hrt_lang_assert_vram2);
		//hrt_PrintOnBitmap(0, 48, error);
		//while(!KEY_ANY_PRESSED)
		while(1)
		{
			hrt_VblankIntrWait();
		}
	}
}