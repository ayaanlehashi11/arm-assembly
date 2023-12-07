x:
        .word   14
y:
        .word   7
.sub:
        .ascii  "The difference is %d\012\000"
main:
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        movw    r3, #:lower16:x
        movt    r3, #:upper16:x
        ldr     r2, [r3]
        movw    r3, #:lower16:y
        movt    r3, #:upper16:y
        ldr     r3, [r3]
        subs    r3, r2, r3
        str     r3, [r7, #4]
        ldr     r1, [r7, #4]
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
