
# ECE 366 Project 2: Fibonacci Odd-Number Detection in MIPS Assembly

**Course:** ECE 366 - Computer Organization  
**Instructor:** Debjit Pal (DP)  
**Term:** Fall 2026

## 👥 Team Members & NetIDs

- **Diya** (NetID: `dpate451`)
- **Daniel** (NetID: `ddela23`)
- **Daniall** (NetID: `dbade2`)

## 🔗 GitHub Repository

**Repository Link:** https://github.com/dpate451/ECE366_Project2_Group4

## 📌 Project Overview

This project implements a MIPS assembly program (`IsFibonacciOdd`) that determines whether the nth Fibonacci number is odd.

The software architecture consists of three modular components:

1. **`Fibonacci(n)` Subroutine:** Computes the nth Fibonacci number iteratively from a non-negative integer input `n` loaded from memory.
2. **`IsOdd(m)` Subroutine:** Checks whether an integer `m` is odd (`m % 2 == 1`). To comply with project constraints, division and modulo are implemented using **Division by Repeated Subtraction (DRS)** rather than the native MIPS `DIV` instruction.
3. **`IsFibonacciOdd(n)` Top-Level Program:** Integrates the Fibonacci calculation and oddness check, reading input `n` from memory and writing the final output (`1` for True, `0` for False) back to memory.

## 🤝 Individual Team Contributions

### Progress Report 1 (Due: November 11, 2026)

- **Diya Patel:** Lead developer for Part (a). Translated the iterative Python algorithm into optimized MIPS assembly logic for `Fibonacci(n)`.
- **Diya Patel:** Configured the initial team GitHub repository structure, branching strategy, and version control guidelines.
- **Diya Patel:** Constructed initial test cases in MARS to verify base cases (`n = 0` and `n = 1`) and boundary values for `Fibonacci(n)`.

### Progress Report 2 (Due: November 14, 2026)

- **Daniall:** Lead developer for Part (b). Implemented the Division by Repeated Subtraction (DRS) logic (`division(x, y)`) and the `IsOdd(m)` routine without hardware `DIV` instructions.
- **Daniall:** Optimized register usage and function call conventions across the division subroutines.
- **Daniall:** Executed comparative test cases for odd, even, and zero inputs to validate remainder accuracy.

### Final Report (Due: November 19, 2026)

- **Daniel:** Integrate `Fibonacci(n)` and `IsOdd(m)` into the unified top-level `IsFibonacciOdd(n)` MIPS program.
- **Daniel:** Manage repository organization, pull request reviews, and code synchronization between local environments and GitHub.
- **Daniel:** Perform end-to-end simulation, boundary testing, and register and memory auditing across diverse values of `n`.

## ▶️ How to Run Each Part in MARS

### Part (a): Fibonacci(n)

To find the nth Fibonacci number for a given `n`, open MARS and load the `Fibonacci.asm` file. Click **Run → Assemble** to assemble the program. Once the program assembles successfully, locate the input variable `n` in the Data Segment and enter the desired non-negative integer. Click **Run → Go** to execute the program. The program will calculate the Fibonacci sequence up to the nth position and store the resulting Fibonacci number in memory. Check the output variable in the Data Segment to see the calculated result.

### Part (b): IsOdd(m)

To determine whether a given number `m` is odd, open MARS and load the `IsOdd.asm` file. Click **Run → Assemble** to assemble the program. Once assembled, locate the input variable `m` in the Data Segment and enter the integer you want to test, such as 3 or 4. Click **Run → Go** to execute the program. The program uses Division by Repeated Subtraction to check the remainder when dividing the number by 2. After execution, check the result variable in the Data Segment. A value of `1` indicates that the number is odd, while `0` indicates that it is even.

### Part (c): IsFibonacciOdd(n)

To determine whether the nth Fibonacci number is odd, open MARS and load the `IsFibonacciOdd.asm` file. Click **Run → Assemble** to assemble the program. Once assembled, locate the input variable `n` in the Data Segment and enter the desired non-negative integer. Click **Run → Go** to execute the program. The program first calculates the nth Fibonacci number using the Fibonacci subroutine. It then passes that result to the odd-number checking subroutine, which determines whether the Fibonacci number is odd or even. After execution, check the final output variable in the Data Segment. A value of `1` means the nth Fibonacci number is odd, while `0` means it is even.

## 🧪 Testing and Validation

The program should be tested with several input values to verify the Fibonacci calculation and odd-number detection.

| Input `n` | Fibonacci Number | Expected Output |
|---:|---:|---:|
| 0 | 0 | 0 |
| 1 | 1 | 1 |
| 2 | 1 | 1 |
| 3 | 2 | 0 |
| 4 | 3 | 1 |
| 5 | 5 | 1 |
| 6 | 8 | 0 |
| 7 | 13 | 1 |
| 8 | 21 | 1 |
| 9 | 34 | 0 |

**Note:** These expected results assume the standard Fibonacci sequence, where `F(0) = 0` and `F(1) = 1`.

## 📁 Project Files

- `Fibonacci.asm` – Part (a): Calculates the nth Fibonacci number.
- `IsOdd.asm` – Part (b): Determines whether a given integer is odd or even.
- `IsFibonacciOdd.asm` – Part (c): Determines whether the nth Fibonacci number is odd or even.
- `README.md` – Project description, team contributions, and instructions for running each program.

---

**ECE 366 - Computer Organization | Fall 2026**
