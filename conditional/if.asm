.LC0:
        .ascii  "%d is greater than 7 \000"
.LC1:
        .ascii  "%d is not greater than 7 \000"
main:
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        movs    r3, #9
        str     r3, [r7, #4]
        ldr     r3, [r7, #4]
        cmp     r3, #7
        ble     .L2
        ldr     r1, [r7, #4]
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
.L2:
        ldr     r1, [r7, #4]
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
