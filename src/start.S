.section .text.boot

.global _start
_start:
    // Stop all cores where id != 0
    mrs x1, mpidr_el1
    and x1, x1, #0b11
    cbz x1, 2f

1:  // Infinite loop
    wfe
    b 1b

2:  // Set stack to _start (0x80000)
    ldr x1, =_start
    mov sp, x1

    ldr x1, =__bss_start
    ldr x2, =__bss_size
    cbz x2, 4f

3:  str xzr, [x1], #8
    sub x2, x2, #1
    cbnz x2, 3b

4:  bl main
    b 1b