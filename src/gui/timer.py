import pygame

class Timer:
    def __init__(self):
        self.timer_limit = 0
        self.start_ticks = 0
        self.running = False

    def start(self, seconds):
        self.timer_limit = seconds
        self.start_ticks = pygame.time.get_ticks()
        self.running = True

    def elapsed(self):
        if not self.running:
            return 0
        return (pygame.time.get_ticks() - self.start_ticks) // 1000

    def left(self):
        if not self.running:
            return self.timer_limit
        return max(self.timer_limit - self.timmer_elapsed(), 0)

    def overtime(self):
        overtime = self.timmer_elapsed() - self.timer_limit
        return max(overtime, 0)

    def calculate_score(self):
        elapsed = self.timmer_elapsed()

        if elapsed <= self.timer_limit:
            return self.timer_limit - elapsed  # 남은 시간 보너스
        else:
            return -(elapsed - self.timer_limit)  # 초과 시간 패널티

    def stop(self):
        self.running = False