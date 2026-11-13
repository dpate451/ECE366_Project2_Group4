.data
m: .word 3       # Input number to test changed this to test even and odd
result: .word 0  # Stores 1 if odd and 0 if even

.text
.globl main

main:
 # Load input m from memory
   lw $t0, m  # $t0 = m
   li $t1, 2  # $t1 = divisor 2

div_loop:
   blt $t0, $t1, div_done  # If m < 2 loop is done remainder is in $t0
   sub $t0, $t0, $t1       # m = m - 2
   j div_loop

div_done:
                      # $t0 contains the remainder 0 or 1
   sw $t0, result     # Saves result (0 or 1) to memory

exit:
   li $v0, 10
   syscall
