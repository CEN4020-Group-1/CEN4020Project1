class ScoreManager:
    def __init__(self):
        self.total_points = 0

    def add_points(self, pts: int):
        self.total_points += pts

    def deduct_points(self, pts: int):
        self.total_points -= pts

    def get_score(self) -> int:
        return self.total_points