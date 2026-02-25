# tests/test_level_timer.py
import time
import pytest
 
from level_timer import LevelTimer


def test_timer_not_started_elapsed_is_zero():
    t = LevelTimer(time_limit_seconds=60)
    assert t.elapsed_seconds() == 0


def test_elapsed_seconds_after_start(monkeypatch):
    # Fake time without sleeping
    fake_now = {"t": 1000.0}

    def fake_time():
        return fake_now["t"]

    monkeypatch.setattr(time, "time", fake_time)

    t = LevelTimer(time_limit_seconds=60)
    t.start()

    fake_now["t"] = 1007.9
    assert t.elapsed_seconds() == 7  # int() floors


def test_stop_freezes_elapsed(monkeypatch):
    fake_now = {"t": 2000.0}

    def fake_time():
        return fake_now["t"]

    monkeypatch.setattr(time, "time", fake_time)

    t = LevelTimer(time_limit_seconds=60)
    t.start()

    fake_now["t"] = 2012.0
    t.stop()

    # Even if time advances, elapsed stays frozen after stop()
    fake_now["t"] = 2099.0
    assert t.elapsed_seconds() == 12


@pytest.mark.parametrize(
    "limit, elapsed, expected_delta",
    [
        (60, 40, 20),    # 20 seconds unused => +20
        (60, 60, 0),     # exactly on time => 0
        (60, 70, -10),   # 10 seconds over => -10
        (30, 0, 30),     # all time unused => +30
    ],
)
def test_compute_time_score_delta(monkeypatch, limit, elapsed, expected_delta):
    fake_now = {"t": 3000.0}

    def fake_time():
        return fake_now["t"]

    monkeypatch.setattr(time, "time", fake_time)

    t = LevelTimer(time_limit_seconds=limit)
    t.start()

    fake_now["t"] = 3000.0 + float(elapsed)
    t.stop()

    assert t.compute_time_score_delta() == expected_delta


def test_stop_without_start_raises():
    t = LevelTimer(time_limit_seconds=10)
    with pytest.raises(RuntimeError):
        t.stop()


def test_negative_limit_raises():
    with pytest.raises(ValueError):
        LevelTimer(time_limit_seconds=-1)
