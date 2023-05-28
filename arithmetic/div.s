x:
        .word   14
y:
        .word   7
.LC0:
        .string "The difference is %d\n"
main:
        stp     x29, x30, [sp, -32]!
        mov     x29, sp
        adrp    x0, x
        add     x0, x0, :lo12:x
        ldr     w1, [x0]
        adrp    x0, y
        add     x0, x0, :lo12:y
        ldr     w0, [x0]
        sdiv    w0, w1, w0
        str     w0, [sp, 28]
        ldr     w1, [sp, 28]
        adrp    x0, .LC0
        add     x0, x0, :lo12:.LC0
        bl      printf
        mov     w0, 0
        ldp     x29, x30, [sp], 32
        ret
