
add(int, int): @ add subroutine performs basic addition arithmetic on two variable x & y
        push    {r7}
        sub     sp, sp, #12
        add     r7, sp, #0
        str     r0, [r7, #4]
        str     r1, [r7]
        ldr     r2, [r7, #4]
        ldr     r3, [r7]
        add     r3, r3, r2
        mov     r0, r3
        adds    r7, r7, #12
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
main:
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        movs    r3, #9
        str     r3, [r7, #4]
        movs    r3, #4
        str     r3, [r7]
        ldr     r1, [r7]
        ldr     r0, [r7, #4]
        bl      add(int, int)
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
