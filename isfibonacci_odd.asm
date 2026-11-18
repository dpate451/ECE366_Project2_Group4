# =====================================================================
# ECE 366 Project 2 - Part (c): IsFibonacciOdd(n)
# Group 4: Diya Patel (dpate451), Daniel De La Rosa (ddela23),
#          Daniall Bader (dbade2)
#
# Top-level program that:
#   1. Reads n from memory
#   2. Computes F(n) with the iterative Fibonacci(n) subroutine
#   3. Checks whether F(n) is odd with IsOdd(m), which uses
#      division(x, y) by repeated subtraction (NO MIPS DIV instruction)
#   4. Stores 1 (True, F(n) is odd) or 0 (False, F(n) is even) in memory
#
# Calling convention used by every subroutine:
#   arguments in $a0, $a1   |   return values in $v0, $v1
#   $ra is saved on the stack by any routine that calls another routine
#
# Valid input range: 0 <= n <= 46 (F(46) = 1,836,311,903 is the largest
# Fibonacci number that fits in a signed 32-bit register).
# =====================================================================

.data
n:       .word 7        # INPUT: change this value to test other n
fib_val: .word 0        # F(n), stored so it can be checked in the Data Segment
result:  .word 0        # OUTPUT: 1 = F(n) is odd, 0 = F(n) is even

.text
.globl main

# ---------------------------------------------------------------------
# main: IsFibonacciOdd(n)
# ---------------------------------------------------------------------
main:
    lw   $a0, n              # $a0 = n  (retrieve n from memory)

    jal  fibonacci           # $v0 = F(n)
    sw   $v0, fib_val        # save F(n) for verification

    move $a0, $v0            # $a0 = m = F(n)
    jal  is_odd              # $v0 = 1 if m is odd, 0 if even

    sw   $v0, result         # store final output (1 = True, 0 = False)

    li   $v0, 10             # exit
    syscall

# ---------------------------------------------------------------------
# fibonacci(n)  -- iterative, follows Figure 1
#   input : $a0 = n
#   output: $v0 = F(n), with F(0) = 0 and F(1) = 1
#   leaf routine (calls nothing), so $ra does not need saving
# ---------------------------------------------------------------------
fibonacci:
    beq  $a0, $zero, fib_zero    # F(0) = 0

    li   $t1, 0              # a = F(0)
    li   $t2, 1              # b = F(1)
    li   $t3, 1              # i = 1

fib_loop:
    bge  $t3, $a0, fib_done  # stop once i >= n
    add  $t4, $t1, $t2       # next = a + b
    move $t1, $t2            # a = b
    move $t2, $t4            # b = next
    addi $t3, $t3, 1         # i++
    j    fib_loop

fib_zero:
    li   $v0, 0
    jr   $ra

fib_done:
    move $v0, $t2            # return F(n)
    jr   $ra

# ---------------------------------------------------------------------
# is_odd(m)  -- follows Figure 2
#   input : $a0 = m
#   output: $v0 = 1 if m mod 2 == 1, else 0
#   calls division(m, 2), so it saves $ra on the stack
# ---------------------------------------------------------------------
is_odd:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)         # save return address to main

    li   $a1, 2              # y = 2   ($a0 already holds x = m)
    jal  division            # $v0 = quotient, $v1 = remainder

    li   $t0, 1
    beq  $v1, $t0, odd_true  # remainder == 1 -> odd
    li   $v0, 0              # remainder == 0 -> even (False)
    j    is_odd_return

odd_true:
    li   $v0, 1              # odd (True)

is_odd_return:
    lw   $ra, 0($sp)         # restore return address
    addi $sp, $sp, 4
    jr   $ra

# ---------------------------------------------------------------------
# division(x, y)  -- division by repeated subtraction, follows Figure 3
#   input : $a0 = x (dividend, x >= 0), $a1 = y (divisor, y > 0)
#   output: $v0 = quotient, $v1 = remainder
#   NO MIPS DIV instruction is used
# ---------------------------------------------------------------------
division:
    move $v1, $a0            # remainder = x
    li   $v0, 0              # quotient  = 0

div_loop:
    blt  $v1, $a1, div_done  # stop when remainder < y
    sub  $v1, $v1, $a1       # remainder = remainder - y
    addi $v0, $v0, 1         # quotient++
    j    div_loop

div_done:
    jr   $ra
