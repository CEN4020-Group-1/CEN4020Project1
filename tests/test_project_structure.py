# tests/test_project_structure.py
import importlib
from pathlib import Path


def test_core_package_exists():
    assert Path("src").exists()
    assert Path("src/__init__.py").exists() or Path("src").is_dir()


def test_level_timer_module_exists_and_imports():
    assert Path("src/level_timer.py").exists()

    import sys
    sys.path.insert(0, str(Path("src").absolute()))
    mod = importlib.import_module("level_timer")
    assert hasattr(mod, "LevelTimer")


def test_level_timer_class_instantiation():
    import sys
    sys.path.insert(0, str(Path("src").absolute()))
    from level_timer import LevelTimer
    t = LevelTimer(time_limit_seconds=10)
    assert t.time_limit == 10