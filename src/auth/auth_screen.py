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
    
    def draw(self, screen):
        #draw box background
        pygame.draw.rect(screen, (255, 255, 255), self.rect)
        pygame.draw.rect(screen, self.color, self.rect, 2, border_radius=5)
        
        #draw text or placeholder
        if self.text:
            display_text = "*" * len(self.text) if self.is_password else self.text
        else:
            display_text = self.placeholder
            
        text_color = (0, 0, 0) if self.text else (150, 150, 150)
        text_surface = self.font.render(display_text, True, text_color)
        screen.blit(text_surface, (self.rect.x + 10, self.rect.y + 10))


class AuthButton:
    """Button for login/register actions."""
    
    def __init__(self, x, y, width, height, text, font, primary=True):
        self.rect = pygame.Rect(x, y, width, height)
        self.text = text
        self.font = font
        self.primary = primary
        self.is_hovered = False
        
    def draw(self, screen):
        if self.primary:
            color = (70, 130, 180) if not self.is_hovered else (100, 149, 237)
        else:
            color = (200, 200, 200) if not self.is_hovered else (220, 220, 220)
            
        pygame.draw.rect(screen, color, self.rect, border_radius=5)
        
        text_color = (255, 255, 255) if self.primary else (60, 60, 60)
        text_surface = self.font.render(self.text, True, text_color)
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
        self.height = 450
        self.screen = None
        self.clock = None
        self.running = True
        self.mode = "login"  #"login" or "register"
        self.message = ""
        self.message_color = (0, 0, 0)
        self.authenticated_user = None
        
    def _init_pygame(self):
        pygame.init()
        self.screen = pygame.display.set_mode((self.width, self.height))
        pygame.display.set_caption("Matrix Game - Login")
        self.clock = pygame.time.Clock()
        
        #fonts
        self.title_font = pygame.font.Font(None, 48)
        self.font = pygame.font.Font(None, 28)
        self.small_font = pygame.font.Font(None, 24)
        
        #create input boxes
        input_width = 280
        input_height = 40
        start_x = (self.width - input_width) // 2
        
        self.username_input = InputBox(start_x, 150, input_width, input_height, 
                                        self.font, placeholder="Username")
        self.password_input = InputBox(start_x, 220, input_width, input_height, 
                                        self.font, placeholder="Password", is_password=True)
        self.inputs = [self.username_input, self.password_input]
        
        #create buttons
        btn_width = 130
        btn_height = 40
        btn_y = 300
        
        self.login_btn = AuthButton(start_x, btn_y, btn_width, btn_height, "Login", self.font)
        self.register_btn = AuthButton(start_x + btn_width + 20, btn_y, btn_width, btn_height, 
                                       "Register", self.font, primary=False)
        self.buttons = [self.login_btn, self.register_btn]
        
    def _handle_events(self):
        mouse_pos = pygame.mouse.get_pos()
        
        for btn in self.buttons:
            btn.check_hover(mouse_pos)
            
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
                    
            #handle input box events
            for inp in self.inputs:
                result = inp.handle_event(event)
                if result == "next":
                    #move to next input or submit
                    current_idx = self.inputs.index(inp)
                    if current_idx < len(self.inputs) - 1:
                        self.inputs[current_idx].active = False
                        self.inputs[current_idx].color = self.inputs[current_idx].color_inactive
                        self.inputs[current_idx + 1].active = True
                        self.inputs[current_idx + 1].color = self.inputs[current_idx + 1].color_active
                    else:
                        self._handle_submit()
                        
    def _handle_click(self, mouse_pos):
        if self.login_btn.is_clicked(mouse_pos):
            self.mode = "login"
            self._handle_submit()
        elif self.register_btn.is_clicked(mouse_pos):
            self.mode = "register"
            self._handle_submit()
            
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
                self.message = message + " Please login."
                self.message_color = (50, 150, 50)
                self.mode = "login"
            else:
                self.message = message
                self.message_color = (200, 50, 50)
                
    def _draw(self):
        self.screen.fill((240, 245, 250))
        
        #title
        title = self.title_font.render("Matrix Game", True, (50, 50, 80))
        title_rect = title.get_rect(center=(self.width // 2, 60))
        self.screen.blit(title, title_rect)
        
        #subtitle
        subtitle = self.small_font.render("Login or Register to play", True, (100, 100, 100))
        subtitle_rect = subtitle.get_rect(center=(self.width // 2, 100))
        self.screen.blit(subtitle, subtitle_rect)
        
        #labels
        username_label = self.small_font.render("Username:", True, (60, 60, 60))
        self.screen.blit(username_label, (self.username_input.rect.x, self.username_input.rect.y - 22))
        
        password_label = self.small_font.render("Password:", True, (60, 60, 60))
        self.screen.blit(password_label, (self.password_input.rect.x, self.password_input.rect.y - 22))
        
        #input boxes
        for inp in self.inputs:
            inp.draw(self.screen)
            
        #buttons
        for btn in self.buttons:
            btn.draw(self.screen)
            
        #message
        if self.message:
            msg_surface = self.small_font.render(self.message, True, self.message_color)
            msg_rect = msg_surface.get_rect(center=(self.width // 2, 360))
            self.screen.blit(msg_surface, msg_rect)
            
        #hint
        hint = self.small_font.render("Press Enter to submit, Tab to switch fields", True, (150, 150, 150))
        hint_rect = hint.get_rect(center=(self.width // 2, 420))
        self.screen.blit(hint, hint_rect)
        
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
