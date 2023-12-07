data
.equ s_first_name, 0
.equ s_last_name, 30
.equ s_class, 60
.equ s_grade, 64
.equ s_size, 68
.asciz "ayanle"
.asciz "hashi"
. . .
         10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
sub sp, sp,#s_size
mov r0, sp
add r0, r0, #s_first_name@ offset to first name field
@ allocate struct on the stack @ put pointer to struct in r0
   ldr r1, =sam
bl strcpy
mov r0, sp
add r0, r0, #s_last_name ldr r1, =smith
bl strcpy
mov r0, sp
mov r1, #2
strb r1, [r0, #s_class] mov r1, #88
str r1, [r0, #s_grade]
 
@ comments. . .
@ load pointer to "ayanle"
@ copy the string
@ put pointer to struct in r0 @ offset to last name field @ load pointer to "hashi"
@ copy the string
@ put pointer to struct in r0 @ load constant value of 2
@ store with offset
@ load constant value of 88 @ store with offset
