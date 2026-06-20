.section ".text.boot"
.global _start

_start:
    ldr x0, =_start
    mov sp,x0   //Copies start of memory to stack pointer

    bl main_kernel //Calls Kernel

halt:
    wfe
    b halt