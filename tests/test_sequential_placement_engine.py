from sequential_placement_engine import SequentialPlacementEngine

def test_new_game_places_one_random_1():
    engine = SequentialPlacementEngine(size=5)
    engine.start_new_level1()

    board = engine.get_board_snapshot()
    assert len(board) == 25
    assert board.count(1) == 1
    assert engine.get_next_number() == 2

def test_place_on_empty_cell_places_next_number_and_increments():
    engine = SequentialPlacementEngine(size=5)
    engine.start_new_level1()

    # Find an empty cell
    board = engine.get_board_snapshot()
    empty_idx = board.index(0)

    res = engine.place_on_cell(empty_idx)
    assert res.success is True
    assert res.placed_number == 2
    assert engine.get_next_number() == 3
    assert engine.get_board_snapshot()[empty_idx] == 2

def test_cannot_place_on_filled_cell():
    engine = SequentialPlacementEngine(size=5)
    engine.start_new_level1()

    # The cell containing 1 is filled
    one_idx = engine.get_board_snapshot().index(1)
    res = engine.place_on_cell(one_idx)

    assert res.success is False
    assert "filled" in res.message.lower()

def test_completion_after_25_is_complete():
    engine = SequentialPlacementEngine(size=5)
    engine.start_new_level1()

    # Fill all remaining cells sequentially
    for i in range(25):
        if engine.is_complete():
            break
        board = engine.get_board_snapshot()
        empty_idx = board.index(0)
        engine.place_on_cell(empty_idx)

    assert engine.is_complete() is True
    assert engine.get_next_number() == 26