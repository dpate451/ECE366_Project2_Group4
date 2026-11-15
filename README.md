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
- To run the MIPS program and verify if m is odd, first open MARS, load IsOdd.asm file, and click Assemble to compile the code into machine instructions. You enter your test dividend value like 3 or 4 directly into the Data Segment memory cell for m, and then click Run to execute the repeated subtraction loop. Once execution completes, you check the memory cell for result, where a value of 1 indicates the number is odd and 0 indicates it is even.

### Final Report (Due: November 19, 2026)

- **Daniel:** Integrate `Fibonacci(n)` and `IsOdd(m)` into the unified top-level `IsFibonacciOdd(n)` MIPS program.
- **Daniel:** Manage repository organization, pull request reviews, and code synchronization between local environments and GitHub.
- **Daniel:** Perform end-to-end simulation, boundary testing, and register and memory auditing across diverse values of `n`.










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


---

**ECE 366 - Computer Organization | Fall 2026**
