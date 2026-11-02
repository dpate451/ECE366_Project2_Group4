.data
n:       .word 7	# input n value we want to find
result:  .word 0	# where we'll save the final answer

.text
.globl main

main:
    # grab n from memory
    lw $t0, n

    # handle edge case if n = 0
    beq $t0, $zero, zero_case

    # set up initial fib values
    li $t1, 0          # First Fibonacci number: F(0)
    li $t2, 1          # Second Fibonacci number: F(1)
    li $t3, 1          # Counter i = 1

loop:
    # stop looping once i >= n
    bge $t3, $t0, done

    # calculate next fib number: a + b
    add $t4, $t1, $t2

    # Shift values forward
    move $t1, $t2
    move $t2, $t4

    # increment our loop counter
    addi $t3, $t3, 1

    j loop

zero_case:
    sw $zero, result
    j exit

done:
    # store the final nth fib number in memory
    sw $t2, result

exit:
    li $v0, 10
    syscall

