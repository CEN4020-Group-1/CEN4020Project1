# completion_logger.py
from __future__ import annotations

from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import List, Dict, Tuple, Optional


def iso_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def format_datetime(iso_str: str) -> str:
    """Convert ISO timestamp to human-readable format."""
    dt = datetime.fromisoformat(iso_str)
    return dt.strftime("%Y-%m-%d %H:%M:%S UTC")


@dataclass(frozen=True)
class CompletionRecord:
    player_name: str
    timestamp_iso: str
    level: int
    points: int
    board: List[List[int]]  # 2D board (5x5)
    outer_ring: Optional[Dict[Tuple[int, int], int]] = None  # For Level 2


class CompletionLogger:
    """
    US7: Append a completion record when a level is completed successfully.
    Outputs human-readable text format with ASCII board visualization.
    """
    def __init__(self, filepath: str = "game_log.txt") -> None:
        self.path = Path(filepath)

    def _format_board_ascii(self, board: List[List[int]]) -> str:
        """Format 5x5 board as ASCII art."""
        separator = "+----+----+----+----+----+"
        lines = [separator]
        for row in board:
            row_str = "|"
            for val in row:
                row_str += f" {val:2d} |"
            lines.append(row_str)
            lines.append(separator)
        return "\n".join(lines)

    def _format_level2_ascii(self, board: List[List[int]], outer_ring: Dict[Tuple[int, int], int]) -> str:
        """Format 7x7 board (inner 5x5 + outer ring) as ASCII art."""
        separator = "+----+----+----+----+----+----+----+"
        lines = [separator]
        
        for r in range(7):
            row_str = "|"
            for c in range(7):
                # Check if this is an outer ring cell
                if (r, c) in outer_ring:
                    val = outer_ring[(r, c)]
                    if val == 0:
                        row_str += "    |"  # Empty outer cell
                    else:
                        row_str += f" {val:2d} |"
                # Check if this is an inner board cell (rows 1-5, cols 1-5)
                elif 1 <= r <= 5 and 1 <= c <= 5:
                    val = board[r - 1][c - 1]
                    row_str += f" {val:2d} |"
                else:
                    row_str += "    |"  # Should not happen
            lines.append(row_str)
            lines.append(separator)
        return "\n".join(lines)

    def append_record(self, record: CompletionRecord) -> None:
        
        divider = "-" * 80
        
        # Format the board visualization
        if record.level == 1:
            board_visual = self._format_board_ascii(record.board)
        else:
            board_visual = self._format_level2_ascii(record.board, record.outer_ring or {})
        
        # Build the log entry
        entry = f"""
{divider}
GAME LOG
{divider}
Player: {record.player_name}
Date/Time: {format_datetime(record.timestamp_iso)}
Level: {record.level}
Points: {record.points}

Board:
{board_visual}

"""
        
        with self.path.open("a", encoding="utf-8") as f:
            f.write(entry)
