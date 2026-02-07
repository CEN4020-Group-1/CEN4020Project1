# completion_logger.py
from __future__ import annotations

import csv
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path


def iso_now() -> str:
    return datetime.now(timezone.utc).isoformat()


@dataclass(frozen=True)
class CompletionRecord:
    player_name: str
    timestamp_iso: str
    level: int
    points: int
    board_flat: str


class CompletionLogger:
    """
    US7: Append a completion record when a level is completed successfully.
    Intended to be called by GUI/controller when engine.is_complete() becomes True.
    """
    def __init__(self, filepath: str = "game_log.csv") -> None:
        self.path = Path(filepath)

    def append_record(self, record: CompletionRecord) -> None:
        fieldnames = ["player_name", "timestamp_iso", "level", "points", "board_flat"]

        needs_header = not self.path.exists() or self.path.stat().st_size == 0

        with self.path.open("a", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            if needs_header:
                writer.writeheader()
            writer.writerow({
                "player_name": record.player_name,
                "timestamp_iso": record.timestamp_iso,
                "level": record.level,
                "points": record.points,
                "board_flat": record.board_flat,
            })