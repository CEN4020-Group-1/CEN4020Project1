Ass1 - 5x5 Matrix Game (one-person, one-week mini project)

Files:
- ass1.py        : Source code (Python 3). Defines 3 objects:
                   1) CLI (command-line UI): displays board/menu, reads input, shows points immediately.
                   2) GameLogic (application logic): adjacency rules, points rule, win/lose handling.
                   3) Storage (text file I/O): save/load incomplete games.
- Ass1           : Executable launcher (runs ass1.py with python3).
- sample_save.txt: Sample saved incomplete game you can load and continue.
- ReadMe.txt     : This file.

OS:
- Tested on Linux/macOS with Python 3 installed.
- Should also work on Windows in WSL or Git Bash if python3 is available.

How to build / "compile":
- No compilation required (Python).
- Ensure executable bit is set:
    chmod +x Ass1 ass1.py

How to run:
- From inside the Ass1 folder:
    ./Ass1
  Or:
    python3 ass1.py

How to load the sample save:
- Run ./Ass1
- Choose option 3 (Load game)
- Enter: sample_save.txt

Game rules implemented:
- Place 1 anywhere.
- Place 2..25 consecutively, each next placement must be 1 step away from predecessor,
  including diagonals.
- Points: +1 only when a placement is diagonally adjacent to its predecessor; otherwise +0.
  Points are updated and printed immediately after each placement.
- No undo.
- If an invalid cell is entered for the next number (out of bounds / occupied / not adjacent),
  the game ends automatically.
