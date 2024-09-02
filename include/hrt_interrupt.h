#ifdef __cplusplus
extern "C" {
#endif

#ifndef HRT_INTERRUPT
#define HRT_INTERRUPT

//Includes
#include "hrt_memmap.h"

//Structs and Enums
struct IntTable{IntFn handler; u32 mask;};

enum LCDC_IRQ {
	LCDC_VBL_FLAG	=	(1<<0),
	LCDC_HBL_FLAG	=	(1<<1),
	LCDC_VCNT_FLAG	=	(1<<2),
	LCDC_VBL		=	(1<<3),
	LCDC_HBL		=	(1<<4),
	LCDC_VCNT		=	(1<<5)
};

typedef enum irqMASKS {
	IRQ_VBLANK	=	(1<<0),		/*!< vertical blank interrupt mask */
	IRQ_HBLANK	=	(1<<1),		/*!< horizontal blank interrupt mask */
	IRQ_VCOUNT	=	(1<<2),		/*!< vcount match interrupt mask */
	IRQ_TIMER0	=	(1<<3),		/*!< timer 0 interrupt mask */
	IRQ_TIMER1	=	(1<<4),		/*!< timer 1 interrupt mask */
	IRQ_TIMER2	=	(1<<5),		/*!< timer 2 interrupt mask */
	IRQ_TIMER3	=	(1<<6),		/*!< timer 3 interrupt mask */
	IRQ_SERIAL	=	(1<<7),		/*!< serial interrupt mask */
	IRQ_DMA0	=	(1<<8),		/*!< DMA 0 interrupt mask */
	IRQ_DMA1	=	(1<<9),		/*!< DMA 1 interrupt mask */
	IRQ_DMA2	=	(1<<10),	/*!< DMA 2 interrupt mask */
	IRQ_DMA3	=	(1<<11),	/*!< DMA 3 interrupt mask */
	IRQ_KEYPAD	=	(1<<12),	/*!< Keypad interrupt mask */
	IRQ_GAMEPAK	=	(1<<13)		/*!< horizontal blank interrupt mask */
} irqMASK;

extern struct IntTable IntrTable[];

//Functions
HEART_API void hrt_InitIRQ(); //Initializes the IRQ table
HEART_API IntFn *hrt_SetIRQ(irqMASK mask, IntFn function); //Assigns a function to a specific IRQ
HEART_API void hrt_EnableIRQ(int mask); //Enables an IRQ
HEART_API void hrt_DisableIRQ(int mask); //Disables an IRQ
HEART_API void hrt_ToggleIRQ(int mask); //Toggles an IRQ

//Inlines
static inline u8 hrt_IsIRQEnabled(int mask) // Checks if an IRQ is enabled
{
	return REG_IE & mask;
}

#endif //HRT_INTERRUPT

#ifdef __cplusplus
}
#endif
