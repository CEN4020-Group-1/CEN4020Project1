import pygame
import os

#User Story 15
pygame.mixer.init(44100, -16, 2, 2048)

BASE_PATH = os.path.dirname(__file__)


_valid_sound = pygame.mixer.Sound("Sprint1Story2.wav")
_invalid_sound = pygame.mixer.Sound("Sprint1Story6.wav")

_valid_sound.set_volume(0.5)
_invalid_sound.set_volume(0.7)

sound_on = True  

# 사운드 재생 함수
def valid_sound(sound_on=True):
    if sound_on:
        _valid_sound.play()

def invalid_sound(sound_on=True):
    if sound_on:
        _invalid_sound.play()