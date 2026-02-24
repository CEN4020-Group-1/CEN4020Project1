#!/usr/bin/env python
"""
User Manager - Story 14: Authentication System
Handles user registration, login, and credential storage.
"""

import json
import hashlib
from pathlib import Path


class UserManager:
    """Manages user registration and authentication with JSON file storage."""
    
    def __init__(self, filepath="users.json"):
        self.filepath = Path(filepath)
        self.users = self._load_users()
    
    def _hash_password(self, password: str) -> str:
        """Hash password using SHA-256."""
        return hashlib.sha256(password.encode()).hexdigest()
    
    def _load_users(self) -> dict:
        """Load users from JSON file."""
        if self.filepath.exists():
            try:
                return json.loads(self.filepath.read_text())
            except json.JSONDecodeError:
                return {}
        return {}
    
    def _save_users(self):
        """Save users to JSON file."""
        self.filepath.write_text(json.dumps(self.users, indent=2))
    
    def register(self, username: str, password: str) -> tuple:
        """
        Register a new user.
        Returns (success: bool, message: str)
        """
        username = username.strip()
        
        if not username:
            return False, "Username is required"
        if not password:
            return False, "Password is required"
        if len(username) < 3:
            return False, "Username must be at least 3 characters"
        if len(password) < 4:
            return False, "Password must be at least 4 characters"
        if username in self.users:
            return False, "Username already exists"
        
        self.users[username] = self._hash_password(password)
        self._save_users()
        return True, "Registration successful!"
    
    def login(self, username: str, password: str) -> tuple:
        """
        Authenticate a user.
        Returns (success: bool, message: str)
        """
        username = username.strip()
        
        if not username:
            return False, "Username is required"
        if not password:
            return False, "Password is required"
        if username not in self.users:
            return False, "User not found"
        if self.users[username] != self._hash_password(password):
            return False, "Invalid password"
        
        return True, f"Welcome back, {username}!"
    
    def user_exists(self, username: str) -> bool:
        """Check if a username is already registered."""
        return username.strip() in self.users
