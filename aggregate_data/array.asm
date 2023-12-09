@ the equivalent source code in c
/*
#include <stdio.h>
int main(int argc , char ** argv)
{
    int arr[10] = {2 , 5 , 4 , 7 , 1 , 0 , 6 , 8 , 9 , 3};
    int i;
    for(i = 0;i < 10;++i)
    {
        printf("%d" , &arr[i]);
    }
    return 0;
}
*/




string:
        .string "%d"
main:
        stp     x29, x30, [sp, -80]!
        mov     x29, sp
        str     w0, [sp, 28]
        str     x1, [sp, 16]
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        add     x0, sp, 32
        ldp     q0, q1, [x1]
        stp     q0, q1, [x0]
        ldr     x1, [x1, 32]
        str     x1, [x0, 32]
        str     wzr, [sp, 76]
        b       .L2
loop3:
        add     x1, sp, 32
        ldrsw   x0, [sp, 76]
        lsl     x0, x0, 2
        add     x0, x1, x0
        mov     x1, x0
        adrp    x0, .LC1
        add     x0, x0, :lo12:.LC1
        bl      printf
        ldr     w0, [sp, 76]
        add     w0, w0, 1
        str     w0, [sp, 76]
loop2:
        ldr     w0, [sp, 76]
        cmp     w0, 9
        ble     .L3
        mov     w0, 0
        ldp     x29, x30, [sp], 80
        ret
array:
        .word   2
        .word   5
        .word   4
        .word   7
        .word   1
        .word   0
        .word   6
        .word   8
        .word   9
        .word   3
