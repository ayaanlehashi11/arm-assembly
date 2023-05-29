
        
        
.fmt:
        .ascii  "%d\000"
main:
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        movs    r3, #0
        str     r3, [r7, #4]
.loop:
        ldr     r1, [r7, #4]
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        ldr     r3, [r7, #4]
        adds    r3, r3, #1
        str     r3, [r7, #4]
        ldr     r3, [r7, #4]
        cmp     r3, #99
        ble     .L2
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
