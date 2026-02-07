# sequential_placement_engine.py
from __future__ import annotations

import random
from dataclasses import dataclass, field
from typing import Optional, Tuple, List


@dataclass
class PlacementResult:
    success: bool
    message: str
    placed_number: Optional[int] = None
    next_number: Optional[int] = None


@dataclass
class SequentialPlacementEngine:
    """
    US3: Maintains the 'next number' and enforces sequential placement.
    GUI should call:
      - start_new_level1()
      - get_next_number()
      - place_on_cell(cell_index)
      - is_complete()
      - get_board_snapshot()
    """
    size: int = 5
    board: List[int] = field(default_factory=list)
    next_number: int = 2
    one_pos: int = 0
    level: int = 1

    def start_new_level1(self) -> None:
        n = self.size * self.size
        self.level = 1
        self.board = [0] * n
        self.one_pos = random.randint(0, n - 1)
        self.board[self.one_pos] = 1
        self.next_number = 2

    def get_next_number(self) -> int:
        return self.next_number

    def place_on_cell(self, idx: int) -> PlacementResult:
        n = self.size * self.size
        if idx < 0 or idx >= n:
            return PlacementResult(False, "Invalid cell index.")

        if self.is_complete():
            return PlacementResult(False, "Game already complete.")

        if self.board[idx] != 0:
            return PlacementResult(False, "Cell already filled.")

        placed = self.next_number
        self.board[idx] = placed
        self.next_number += 1

        return PlacementResult(
            True,
            f"Placed {placed}.",
            placed_number=placed,
            next_number=self.next_number
        )

    def is_complete(self) -> bool:
        # Level 1 complete when we have placed 1..25 => next_number becomes 26
        return self.level == 1 and self.next_number == (self.size * self.size + 1)

    def get_board_snapshot(self) -> List[int]:
        # Return a copy so GUI can’t mutate internal state accidentally
        return list(self.board)

    def flatten_board(self, sep: str = ";") -> str:
        return sep.join(str(x) for x in self.board)