#!/usr/bin/env python


import json
from pathlib import Path


class UserManager:
    #manages user registration and authentication with JSON file storage
    
    def __init__(self, filepath="users.json"):
        self.filepath = Path(filepath)
        self.users = self._load_users()
    
    def _load_users(self) -> dict:
        #load users from JSON file
        if self.filepath.exists():
            try:
                return json.loads(self.filepath.read_text())
            except json.JSONDecodeError:
                return {}
        return {}
    
    def _save_users(self):
        #save users to JSON file
        self.filepath.write_text(json.dumps(self.users, indent=2))
    
    def register(self, username: str, password: str) -> tuple:
        #register a new user
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
        
        self.users[username] = password
        self._save_users()
        return True, "Registration successful!"
    
    def login(self, username: str, password: str) -> tuple:
        #authenticate a user
        username = username.strip()
        
        if not username:
            return False, "Username is required"
        if not password:
            return False, "Password is required"
        if username not in self.users:
            return False, "User not found"
        if self.users[username] != password:
            return False, "Invalid password"
        
        return True, f"Welcome back, {username}!"
    
    def user_exists(self, username: str) -> bool:
        #check if a username is already registered
        return username.strip() in self.users
