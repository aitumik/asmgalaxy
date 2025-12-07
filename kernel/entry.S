.section .text
.globl _start

# Start of execution
_start:
    li sp,0x80400000

    call main

# loop on interrupt
halt:
    wfi 
    j halt

