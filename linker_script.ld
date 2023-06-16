MEMORY {
	RAM(wrx)	: ORIGIN = 0x2000000, LENGTH = 256K
	FLASH(rx)	: ORIGIN = 0x0, LENGTH = 1M
}

SECTIONS {
    .text :
    {
        KEEP(*(.isr_vector))
        *(.text*)
    } > FLASH

    .stack :
    {
    } > RAM
    __stack_top = .;
}
