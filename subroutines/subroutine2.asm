.LC0:
        .ascii  "%s\000"
repeat_name(char*):
        push    {r7, lr}
        sub     sp, sp, #16
        add     r7, sp, #0
        str     r0, [r7, #4]
        movs    r3, #0
        str     r3, [r7, #12]
        b       .L2
.L3:
        ldr     r1, [r7, #4]
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        ldr     r3, [r7, #12]
        adds    r3, r3, #1
        str     r3, [r7, #12]
.L2:
        ldr     r3, [r7, #12]
        cmp     r3, #99
        ble     .L3
        nop
        nop
        adds    r7, r7, #16
        mov     sp, r7
        pop     {r7, pc}
.LC1:
        .ascii  "ayaanle\000"
main:
        push    {r7, lr}
        add     r7, sp, #0
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      repeat_name(char*)
        movs    r3, #0
        mov     r0, r3
        pop     {r7, pc}
