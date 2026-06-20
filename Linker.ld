ENTRY(_start)
SECTIONS
{
    . = 0x80000; /* Memory Start */
    .text : { *(.text.boot) *(.text) } /*Put boot.S "text" section in 0x80000, and then execute Kernel*/
    .data : { *(.data) } /*section for Global variables*/
    .bss  : { *(.bss) } /*section for NULL variables*/
}