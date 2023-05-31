.LC0:
        .ascii  "one\000"
.LC1:
        .ascii  "two\000"
.LC2:
        .ascii  "three\000"
.LC3:
        .ascii  "not known\000"
main:
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        movs    r3, #3
        str     r3, [r7, #4]
        ldr     r3, [r7, #4]
        cmp     r3, #3
        beq     .L2
        ldr     r3, [r7, #4]
        cmp     r3, #3
        bgt     .L3
        ldr     r3, [r7, #4]
        cmp     r3, #1
        beq     .L4
        ldr     r3, [r7, #4]
        cmp     r3, #2
        beq     .L5
        b       .L3
.L4:
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        b       .L6
.L5:
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        b       .L6
.L2:
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        b       .L6
.L3:
        movw    r0, #:lower16:.LC3
        movt    r0, #:upper16:.LC3
        bl      printf
.L6:
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
