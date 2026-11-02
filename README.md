# ECE 366 Project 2: Fibonacci Odd-Number Detection in MIPS Assembly

**Course:** ECE 366 - Computer Organization  
**Instructor:** Debjit Pal (DP)  
**Term:** Fall 2026

## 👥 Team Members & NetIDs

- **Diya Patel** (NetID: `dpate451`)
- **Daniel** (NetID: `[Insert NetID]`)
- **Brice** (NetID: `bbrid5`)
- **Daniall** (NetID: `[Insert NetID]`)

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
- **Daniel:** Configured the initial team GitHub repository structure, branching strategy, and version control guidelines.
- **Brice:** Authored the initial `README.md` documentation and structured the `.tar` archive packaging workflow.
- **Daniall:** Constructed initial test cases in MARS to verify base cases (`n = 0` and `n = 1`) and boundary values for `Fibonacci(n)`.

### Progress Report 2 (Due: November 14, 2026)

- **Daniel:** Lead developer for Part (b). Implemented the Division by Repeated Subtraction (DRS) logic (`division(x, y)`) and the `IsOdd(m)` routine without hardware `DIV` instructions.
- **Diya Patel:** Optimized register usage and function call conventions across the division subroutines.
- **Brice:** Updated documentation to reflect Division by Repeated Subtraction implementation details and test cases.
- **Daniall:** Executed comparative test cases for odd, even, and zero inputs to validate remainder accuracy.

### Final Report (Due: November 19, 2026)

- **Diya Patel:** Integrated `Fibonacci(n)` and `IsOdd(m)` into the unified top-level `IsFibonacciOdd(n)` MIPS program.
- **Daniel:** Managed repository organization, pull request reviews, and code synchronization between local environments and GitHub.
- **Daniall:** Performed end-to-end simulation, boundary testing, and register and memory auditing across diverse values of `n`.
- **Brice:** Finalized the comprehensive project report, verified repository alignment, generated the release `.tar` bundle, and performed final Canvas submission checks.

## 🚀 How to Run the MIPS Program in MARS

### Prerequisites

- MARS MIPS Simulator (version 4.5 recommended)
- Java JDK (version 8 or higher)

### Configuration Steps

1. Launch the **MARS 4.5** simulator.
2. Open the program file (`isfibonacci_odd.asm`, `fibonacci.asm`, or `is_odd.asm`) through **File > Open**.
3. Open **Settings** in the top menu and ensure the following options are checked:
   - `Initialize Program Counter to global 'main' if defined`
   - `Permit extended (pseudo) instructions and formats`
   - `Addresses displayed in hexadecimal` (optional)

### Assembling and Executing

1. Press **F3** or click the Wrench and Screwdriver icon to assemble the program.
2. Ensure the input value `n` is defined in the `.data` memory segment. For example:

   ```asm
   n: .word 7
   ```

3. Press **F5** or click the green **Play** button to run the program.
4. To debug the program line by line, use **F7** to step through instructions. Inspect the **Registers** pane and the **Data Segment** tab to monitor execution.
5. After execution finishes, check the output:
   - `1` indicates True: the nth Fibonacci number is odd.
   - `0` indicates False: the nth Fibonacci number is even.
   - The result should be stored in the target memory location defined in `.data`. Register `$v0` may also be used to inspect the result if the implementation follows that convention.

## 📦 Tarball Packaging Instructions

To create the required submission archive for Canvas, run the following command in your terminal from the project directory:

```bash
tar -cvzf progress_report_1.tar.gz fibonacci.asm README.md
```

Replace `progress_report_1.tar.gz` and the filenames with those required for the appropriate milestone. Ensure that all required source files and documentation are included in the archive.

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

The project may contain the following files, depending on the implementation and milestone requirements:

- `fibonacci.asm` - Iterative Fibonacci calculation subroutine.
- `is_odd.asm` - Odd-number detection and repeated-subtraction division logic.
- `isfibonacci_odd.asm` - Integrated program combining Fibonacci calculation and oddness detection.
- `README.md` - Project documentation and execution instructions.
- `progress_report_1.tar.gz` - Example submission archive for Progress Report 1.

## 📚 Tools and Technologies

- **MIPS Assembly Language**
- **MARS MIPS Simulator**
- **Git and GitHub**
- **Java Development Kit (JDK)**

---

**ECE 366 - Computer Organization | Fall 2026**
