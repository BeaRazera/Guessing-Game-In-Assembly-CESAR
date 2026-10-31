[ Português ](README.pt-BR.md) | **English**

# Guessing Game in Assembly (CESAR)

A low-level Assembly application developed for the hypothetical CESAR computer using the Daedalus assembler. The program implements an interactive guessing game where the player must identify 4 different objects based on sequential hints.

![Assembly](https://img.shields.io/badge/Assembly-Low--Level-blue?style=flat-square)
![Architecture](https://img.shields.io/badge/Architecture-CESAR-orange?style=flat-square)
![Simulator](https://img.shields.io/badge/Simulator-Daedalus-green?style=flat-square)

## Features

- **Interactive Keyboard Input:** Reads characters directly from the CESAR keyboard registers, allowing real-time typing.
- **Input Editing:** Supports `Enter` to submit answers and `Backspace` to delete characters.
- **Sequential Hint System:** Displays up to 4 hints per object (Banana, Elephant, Clock, and Penguin), progressing automatically on incorrect answers.
- **Answer Validation:** Compares the player's input with the correct answer character-by-character using memory addressing.
- **Dynamic Scoring System:** Awards points based on the hint level used (+4, +3, +2, +1) and deducts 1 point for an incorrect answer after all hints are exhausted.
- **Final Score Display:** Computes and displays the total score, supporting negative values.

## I/O & Memory Mapping

| Resource | Address | Description |
| :--- | :--- | :--- |
| **Keyboard Status** | `65498` | Checks keyboard input availability |
| **Keyboard Data** | `65499` | Reads the input character |
| **Display Memory** | `65500` | Starting address of the display |
| **User Answer** | `40000` | Stores the player's typed answer |
| **Banana Hints** | `5000–5300` | Stores the 4 hints for Banana |
| **Elephant Hints** | `6000–6300` | Stores the 4 hints for Elephant |
| **Clock Hints** | `7000–7300` | Stores the 4 hints for Clock |
| **Penguin Hints** | `8000–8300` | Stores the 4 hints for Penguin |
| **Final Score Message** | `9000` | Stores the final score message |
| **Answers (Banana, Elephant, Clock, Penguin)** | `10000`, `10100`, `10200`, `10300` | Stores the correct answers |

## Low-Level Concepts Applied

- Register manipulation (`R0`–`R5`) for score tracking, character handling, and memory pointers.
- Indirect memory addressing to read hints, user inputs, and correct answers.
- Memory-mapped I/O for handling keyboard input and screen output.
- ASCII character manipulation for string comparison and rendering.
- Conditional branching (`BEQ`, `BNE`, `BGE`) for game flow logic.
- 16-bit word addressing, incrementing memory pointers to access consecutive characters.
- Two's complement operations (`NOT`, `ADD`) to handle negative score calculations.
- Arithmetic operations and repeated subtraction for decimal digit conversion.
- Linear control flow implementation.

## How to Run

1. Open the **Daedalus** assembler and simulator environment.
2. Load the Assembly source code into the editor.
3. Assemble the program using Daedalus.
4. Load and execute the assembled machine code in the CESAR simulator.
5. Use the simulator's virtual keyboard to type your answers.

## Project Structure

```text
.
├── guessing_game.asm   # Main Assembly source code
├── README.md           # English documentation
└── README.pt-BR.md     # Portuguese documentation
