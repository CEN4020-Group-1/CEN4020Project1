from score_manager import ScoreManager


def test_score_initializes_to_zero():
    s = ScoreManager()
    assert s.get_score() == 0


def test_add_points_increases_score():
    s = ScoreManager()
    s.add_points(5)
    assert s.get_score() == 5


def test_deduct_points_decreases_score():
    s = ScoreManager()
    s.add_points(10)
    s.deduct_points(3)
    assert s.get_score() == 7


def test_multiple_operations_accumulate_correctly():
    s = ScoreManager()
    s.add_points(10)
    s.add_points(5)
    s.deduct_points(4)
    s.add_points(3)
    assert s.get_score() == 14  # 10 + 5 - 4 + 3


def test_negative_add_points():
    """
    If your design allows negative additions,
    this ensures behavior is consistent.
    """
    s = ScoreManager()
    s.add_points(-2)
    assert s.get_score() == -2


def test_deduct_points_from_zero():
    s = ScoreManager()
    s.deduct_points(5)
    assert s.get_score() == -5