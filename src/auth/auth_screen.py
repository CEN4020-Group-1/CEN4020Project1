#!/usr/bin/env python
"""
Authentication Screen - Story 14: User Authentication
Pygame-based login and registration interface.
"""

import pygame
import sys


class InputBox:
    """Text input field for username/password."""
    
    def __init__(self, x, y, width, height, font, placeholder="", is_password=False):
        self.rect = pygame.Rect(x, y, width, height)
        self.color_inactive = (180, 180, 180)
        self.color_active = (100, 149, 237)
        self.color = self.color_inactive
        self.font = font
        self.text = ""
        self.placeholder = placeholder
        self.is_password = is_password
        self.active = False
        
    def handle_event(self, event):
        if event.type == pygame.MOUSEBUTTONDOWN:
            self.active = self.rect.collidepoint(event.pos)
            self.color = self.color_active if self.active else self.color_inactive
            
        if event.type == pygame.KEYDOWN and self.active:
            if event.key == pygame.K_BACKSPACE:
                self.text = self.text[:-1]
            elif event.key == pygame.K_TAB or event.key == pygame.K_RETURN:
                return "next"
            elif len(self.text) < 20:
                if event.unicode.isprintable():
                    self.text += event.unicode
        return None
    
    def clear(self):
        self.text = ""
    
    def draw(self, screen):
        pygame.draw.rect(screen, (255, 255, 255), self.rect)
        pygame.draw.rect(screen, self.color, self.rect, 2, border_radius=5)
        
        if self.text:
            display_text = "*" * len(self.text) if self.is_password else self.text
        else:
            display_text = self.placeholder
            
        text_color = (0, 0, 0) if self.text else (150, 150, 150)
        text_surface = self.font.render(display_text, True, text_color)
        screen.blit(text_surface, (self.rect.x + 10, self.rect.y + 10))


class AuthButton:
    """Button for login/register actions."""
    
    def __init__(self, x, y, width, height, text, font):
        self.rect = pygame.Rect(x, y, width, height)
        self.text = text
        self.font = font
        self.is_hovered = False
        
    def draw(self, screen):
        color = (70, 130, 180) if not self.is_hovered else (100, 149, 237)
        pygame.draw.rect(screen, color, self.rect, border_radius=5)
        
        text_surface = self.font.render(self.text, True, (255, 255, 255))
        text_rect = text_surface.get_rect(center=self.rect.center)
        screen.blit(text_surface, text_rect)
        
    def check_hover(self, mouse_pos):
        self.is_hovered = self.rect.collidepoint(mouse_pos)
        
    def is_clicked(self, mouse_pos):
        return self.rect.collidepoint(mouse_pos)


class AuthScreen:
    """Main authentication screen with login and registration."""
    
    def __init__(self, user_manager):
        self.user_manager = user_manager
        self.width = 400
        self.height = 400
        self.screen = None
        self.clock = None
        self.running = True
        self.mode = "login"
        self.message = ""
        self.message_color = (0, 0, 0)
        self.authenticated_user = None
        
    def _init_pygame(self):
        pygame.init()
        self.screen = pygame.display.set_mode((self.width, self.height))
        pygame.display.set_caption("Matrix Game - Login")
        self.clock = pygame.time.Clock()
        
        self.title_font = pygame.font.Font(None, 48)
        self.font = pygame.font.Font(None, 28)
        self.small_font = pygame.font.Font(None, 24)
        self.link_font = pygame.font.Font(None, 22)
        
        input_width = 280
        input_height = 40
        self.start_x = (self.width - input_width) // 2
        
        self.username_input = InputBox(self.start_x, 140, input_width, input_height, 
                                        self.font, placeholder="Username")
        self.password_input = InputBox(self.start_x, 210, input_width, input_height, 
                                        self.font, placeholder="Password", is_password=True)
        self.inputs = [self.username_input, self.password_input]
        
        btn_width = 280
        btn_height = 45
        self.action_btn = AuthButton(self.start_x, 280, btn_width, btn_height, "Login", self.font)
        
        self.toggle_link_rect = pygame.Rect(0, 340, self.width, 30)
        
    def _switch_mode(self):
        """Switch between login and register modes."""
        if self.mode == "login":
            self.mode = "register"
            self.action_btn.text = "Create Account"
            pygame.display.set_caption("Matrix Game - Register")
        else:
            self.mode = "login"
            self.action_btn.text = "Login"
            pygame.display.set_caption("Matrix Game - Login")
        
        for inp in self.inputs:
            inp.clear()
        self.message = ""
        
    def _handle_events(self):
        mouse_pos = pygame.mouse.get_pos()
        self.action_btn.check_hover(mouse_pos)
            
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                self.running = False
                self.authenticated_user = None
                
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    self.running = False
                    self.authenticated_user = None
                elif event.key == pygame.K_RETURN:
                    self._handle_submit()
                    
            elif event.type == pygame.MOUSEBUTTONDOWN:
                if event.button == 1:
                    self._handle_click(mouse_pos)
                    
            for inp in self.inputs:
                result = inp.handle_event(event)
                if result == "next":
                    current_idx = self.inputs.index(inp)
                    if current_idx < len(self.inputs) - 1:
                        self.inputs[current_idx].active = False
                        self.inputs[current_idx].color = self.inputs[current_idx].color_inactive
                        self.inputs[current_idx + 1].active = True
                        self.inputs[current_idx + 1].color = self.inputs[current_idx + 1].color_active
                    else:
                        self._handle_submit()
                        
    def _handle_click(self, mouse_pos):
        if self.action_btn.is_clicked(mouse_pos):
            self._handle_submit()
        elif self.toggle_link_rect.collidepoint(mouse_pos):
            self._switch_mode()
            
    def _handle_submit(self):
        username = self.username_input.text
        password = self.password_input.text
        
        if self.mode == "login":
            success, message = self.user_manager.login(username, password)
            if success:
                self.authenticated_user = username
                self.running = False
            else:
                self.message = message
                self.message_color = (200, 50, 50)
        else:
            success, message = self.user_manager.register(username, password)
            if success:
                self.message = "Account created! Please login."
                self.message_color = (50, 150, 50)
                self.mode = "login"
                self.action_btn.text = "Login"
                pygame.display.set_caption("Matrix Game - Login")
                for inp in self.inputs:
                    inp.clear()
            else:
                self.message = message
                self.message_color = (200, 50, 50)
                
    def _draw(self):
        self.screen.fill((240, 245, 250))
        
        title = self.title_font.render("Matrix Game", True, (50, 50, 80))
        title_rect = title.get_rect(center=(self.width // 2, 50))
        self.screen.blit(title, title_rect)
        
        subtitle_text = "Login to play" if self.mode == "login" else "Create an account"
        subtitle = self.small_font.render(subtitle_text, True, (100, 100, 100))
        subtitle_rect = subtitle.get_rect(center=(self.width // 2, 90))
        self.screen.blit(subtitle, subtitle_rect)
        
        username_label = self.small_font.render("Username:", True, (60, 60, 60))
        self.screen.blit(username_label, (self.username_input.rect.x, self.username_input.rect.y - 22))
        
        password_label = self.small_font.render("Password:", True, (60, 60, 60))
        self.screen.blit(password_label, (self.password_input.rect.x, self.password_input.rect.y - 22))
        
        for inp in self.inputs:
            inp.draw(self.screen)
            
        self.action_btn.draw(self.screen)
        
        if self.message:
            msg_surface = self.small_font.render(self.message, True, self.message_color)
            msg_rect = msg_surface.get_rect(center=(self.width // 2, 340))
            self.screen.blit(msg_surface, msg_rect)
            link_y = 365
        else:
            link_y = 345
            
        if self.mode == "login":
            link_text = "Don't have an account? Register"
        else:
            link_text = "Already have an account? Login"
            
        link_surface = self.link_font.render(link_text, True, (70, 130, 180))
        link_rect = link_surface.get_rect(center=(self.width // 2, link_y))
        self.screen.blit(link_surface, link_rect)
        self.toggle_link_rect = link_rect
        
        pygame.display.flip()
        
    def run(self):
        """Run the authentication screen. Returns username on success, None on cancel."""
        self._init_pygame()
        
        while self.running:
            self._handle_events()
            self._draw()
            self.clock.tick(60)
            
        pygame.quit()
        return self.authenticated_user
