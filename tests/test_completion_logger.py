from completion_logger import CompletionLogger, CompletionRecord
from pathlib import Path

def test_logger_writes_csv_row(tmp_path):
    log_path = tmp_path / "game_log.csv"
    logger = CompletionLogger(str(log_path))

    record = CompletionRecord(
        player_name="Alice",
        timestamp_iso="2026-02-07T00:00:00+00:00",
        level=1,
        points=0,
        board_flat=";".join(str(i) for i in range(1, 26))
    )

    logger.append_record(record)

    text = log_path.read_text(encoding="utf-8").strip().splitlines()
    assert len(text) == 2  # header + 1 row
    assert text[0].startswith("player_name,timestamp_iso,level,points,board_flat")
    assert "Alice" in text[1]
    assert "2026-02-07T00:00:00+00:00" in text[1]