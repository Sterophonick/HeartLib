There are demos. Look at their source code after installing DevKitPro.
You will find functions that are specifically designed for this console.
Some functions don't work yet so be patient!
These functions give you access to:
   **ALL** the GBA Register Definitions -- Including some undocumented ones
	Screen Wipes (Mode 3 at the moment)
	Sprites
	Affine Transformation - BG and OBJ
	Sound
	DMA
	Palettes
	Scrolling
	Compression
	SRAM
	Text (Mode 3 only at the moment)
	Interrupts
	Blending
	BIOS Calls
	AGBPrint
	GBFS (kudos to Damian Yerrick)
	Access To Undocumented Functions and Registers (Special Greetz to GBATek)
	Color Conversion
	Timers
	Bitmaps
	Keys
	PCX Decoding (Shoutouts to libGBA)
	Random Number Generation (Uses Merssene Twister method)
	MaxMod (Kudos to LibGBA)
	FatFs (Shoutouts to elm-chan and EZ-Team)

You can find some documentation on the GBACrusherCL, GBFS, gfx2gba and other tools inside the TOOLS folder.

You can look at the libheart.h file to find what all the Registers, Types and Functions do.
You probably won't need to include many of the C Standard Library headers, since at least most of them are included in libheart.h for easier access.