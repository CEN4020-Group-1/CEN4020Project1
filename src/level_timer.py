# level_timer.py
import time


class LevelTimer:
    def __init__(self, time_limit_seconds: int):
        if time_limit_seconds < 0:
            raise ValueError("time_limit_seconds must be non-negative")
        self.time_limit = time_limit_seconds
        self.start_time = None
        self.end_time = None

    def start(self):
        self.start_time = time.time()

    def stop(self):
        if self.start_time is None:
            raise RuntimeError("Cannot stop timer that hasn't been started")
        self.end_time = time.time()

    def elapsed_seconds(self) -> int:
        if self.start_time is None:
            return 0
        end = self.end_time if self.end_time else time.time()
        return int(end - self.start_time)

    def compute_time_score_delta(self) -> int:
        elapsed = self.elapsed_seconds()
        remaining = self.time_limit - elapsed

        if remaining >= 0:
            return remaining  # bonus points
        else:
            return remaining  # negative penalty