# Sprint 1 Demo Script

**Video Name:** sprint1_demo  
**Duration:** 5-10 minutes  
**Purpose:** Demonstrate all 8 user stories for TA verification

---

## Recording Setup

- **Tool:** QuickTime Player (File → New Screen Recording)
- **Select microphone** from dropdown before recording
- **Have game_log.txt open** in text editor, minimized
- **Delete old game_log.txt** before recording for fresh demo

---

## Demo Script

### Intro (~30 sec)

> "This is the Sprint 1 demo for CEN4020 Group 1. We'll demonstrate all 8 user stories implemented in our Matrix Game. Let me start the game."

*Launch the game*

---

### Story 1: GUI Display (~1 min)

> "Story 1 - GUI Display. The game opens in a Pygame window instead of terminal. Notice the number 1 is already placed randomly on the board - this happens automatically at game start. I can click on cells to place numbers. The interface shows the score, the next number to place, and the current level in the header bar."

*Click a few cells to show interaction*

---

### Story 3: Next Number Display (~30 sec)

> "Story 3 - Next Number Auto-Generation. Look at the header bar - it shows 'NEXT' with the upcoming number. As I place each number, it automatically increments. This helps players know what number comes next."

*Place 2-3 numbers, point to NEXT updating*

---

### Story 2: Valid Placement Sound (~30 sec)

> "Story 2 - Valid Placement Sound. Listen for the sound when I place a valid number."

*Place a valid number - let the sound play*

> "You can hear the confirmation sound."

---

### Story 6: Invalid Placement Sound (~30 sec)

> "Story 6 - Invalid Placement Sound. Now I'll click on an invalid cell - one that's not adjacent to my last number."

*Click an invalid cell*

> "You hear a different error sound, and the message tells me why it's invalid."

---

### Story 5: Undo Functionality (~30 sec)

> "Story 5 - Undo. I can click the Undo button to remove the last placed number and try a different path."

*Click Undo a couple times*

> "The numbers are removed in reverse order."

---

### Story 4: Clear Board (~30 sec)

> "Story 4 - Clear Board. The Clear button resets the board, but importantly, the original number 1 stays in its same position."

*Click Clear*

> "Notice the 1 remained where it was randomly placed at game start."

---

### Story 8: Level 2 (~2 min)

> "Story 8 - Level 2. Let me complete Level 1 to show Level 2."

*Complete Level 1 (place numbers 2-25) - you can speed through this*

> "Level 1 complete. Now Level 2 begins - notice the outer ring of 24 cells surrounding the inner board. The inner 5x5 board is now locked. I place numbers 2-25 in the outer ring based on where each number is located on the inner board."

*Place a few numbers in the outer ring*

> "The same features work in Level 2 - sounds, undo, clear only affects the outer ring."

---

### Story 7: Game Logging (~1 min)

> "Story 7 - Game Completion Logging. When I complete a level, it's logged to a file."

*Open game_log.txt in a text editor (have it ready)*

> "Here's the log file. It records the player name, timestamp, level completed, points earned, and a visual ASCII representation of the board. This lets judges compare different games."

---

### Outro (~15 sec)

> "That concludes our Sprint 1 demo showing all 8 user stories. Thank you."

---

## Pro Tips

1. **Practice once** before recording - just to know the flow
2. **Have game_log.txt already open** in a text editor, minimized
3. **Delete old game_log.txt** before recording so you show a fresh log
4. **Don't worry about mistakes** - small stumbles are fine for a class demo
5. **Speak slowly and clearly** - easier to understand than rushed speech

---

## Time Breakdown

| Story | Duration |
|-------|----------|
| Intro | 30 sec |
| Story 1 - GUI | 1 min |
| Story 3 - Next Number | 30 sec |
| Story 2 - Valid Sound | 30 sec |
| Story 6 - Invalid Sound | 30 sec |
| Story 5 - Undo | 30 sec |
| Story 4 - Clear | 30 sec |
| Story 8 - Level 2 | 2 min |
| Story 7 - Logging | 1 min |
| Outro | 15 sec |
| **Total** | **~7-8 min** |
