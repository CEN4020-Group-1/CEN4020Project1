#!/usr/bin/env python

import random


class GameState:
    def __init__(self):
        self.level = 1                                      #current level (1 or 2)
        self.board = [[0 for _ in range(5)] for _ in range(5)]  #5x5 inner board
        self.outer_ring = {}                                #outer ring cells for level 2 (dict with (row, col) keys)
        self.current_num = 1                                #next number to place
        self.score = 0                                      #player score
        self.last_pos = None                                #position of last placed number
        self.game_over = False                              #game over flag
        self.win = False
        self.move_history = History()
    
    def reset_level1(self):   #reset for a new level 1 game
        self.level = 1
        self.board = [[0 for _ in range(5)] for _ in range(5)]
        self.outer_ring = {}
        self.current_num = 1
        self.score = 0
        self.last_pos = None
        self.game_over = False
        self.win = False
        self.move_history.clear_history()
        
    def start_level1_with_random_one(self):   #place number 1 randomly for level 1 start (story 1 requirement)
        self.reset_level1()
        row = random.randint(0, 4)
        col = random.randint(0, 4)
        self.board[row][col] = 1
        self.last_pos = (row, col)
        self.record(row, col, False)
        self.current_num = 2
        
    def start_level2(self, completed_board):   #initialize level 2 with completed level 1 board
        self.level = 2
        self.board = [row[:] for row in completed_board]    #copy the completed board
        self.outer_ring = self._create_empty_ring()         #create empty outer ring
        self.current_num = 2                                #start placing from 2 in outer ring
        self.last_pos = self._find_number_position(1)       #find where 1 is on inner board
        self.game_over = False
        self.win = False
        self.move_history = []                              #reset move history for level 2
        self.record(self.last_pos[0], self.last_pos[1], -1)
        
    def _create_empty_ring(self):   #create empty outer ring dictionary
        ring = {}
        #top row (7 cells: col 0-6, row 0)
        for col in range(7):
            ring[(0, col)] = 0
        #bottom row (7 cells: col 0-6, row 6)
        for col in range(7):
            ring[(6, col)] = 0
        #left column excluding corners (rows 1-5, col 0)
        for row in range(1, 6):
            ring[(row, 0)] = 0
        #right column excluding corners (rows 1-5, col 6)
        for row in range(1, 6):
            ring[(row, 6)] = 0
        return ring
    
    def _find_number_position(self, num):   #find position of a number on the inner board
        for row in range(5):
            for col in range(5):
                if self.board[row][col] == num:
                    return (row, col)
        return None
    
    def get_state_dict(self):   #get state as dictionary for saving
        return {
            'level': self.level,
            'board': self.board,
            'outer_ring': self.outer_ring,
            'current_num': self.current_num,
            'score': self.score,
            'last_pos': self.last_pos,
            'move_history': self.move_history
        }
    
    def set_state_dict(self, state):   #restore state from dictionary
        self.level = state.get('level', 1)
        self.board = state['board']
        self.outer_ring = state.get('outer_ring', {})
        self.current_num = state['current_num']
        self.score = state['score']
        self.last_pos = state['last_pos']
        self.move_history = state['board_history']
        self.game_over = False
        self.win = False
        
    def record(self, x, y, other):
        if self.level == 1:
            self.move_history.record_action_lv1(x, y, other)
        else:
            self.move_history.record_action_lv2(x, y, other)
    
    def undo(self):
        #In lv 1 I can just pop from the array
        if self.level == 1:
            last_action = self.move_history.undo_history()
            penult_action = self.move_history.move_history[-1]
            self.board[last_action.inner_pos_x][last_action.inner_pos_y] = 0
            self.current_num -= 1
            self.last_pos = (penult_action.inner_pos_x, penult_action.inner_pos_y)
            
            if last_action.scored:
                self.score -= 1
            
        
        #In lv 2 I gotta pay attention to current num

class History:
    def _init_(self):
        self.move_history = []
    
    #I should give move_history it's own class - Jose
    def record_action_lv1(self, x, y, scored):
        new_action = Action()
        new_action.record_lv1(x, y, scored)
        self.move_history.append(new_action)
        self.print_history()
    
    def record_action_lv2(self, x, y, outer):
        new_action = Action()
        new_action.record_lv2(x, y, outer)
        self.move_history.append(new_action)
        self.print_history()
    
    def record_outer_action(self, index, outer):
        self.move_history[index].edit_outer_pos(outer)

    def undo_history(self):
        return self.move_history.pop()        

    def undo_to_first_history(self):
        self.move_history = [self.move_history[0]]
        self.print_history()

    def clear_history(self):
        self.move_history = []
        self.print_history()
    
    def print_history(self):
        print("------------------------------")
        for i in range(len(self.move_history)):
            print(i, ": ", self.move_history[i].action_log())
        print("------------------------------")
    
#Action will come along with history if I seperate them from game state - Jose
class Action:
    def __init__(self):
        self.inner_pos_x = -1
        self.inner_pos_y = -1
        self.outer_pos = -1
        self.scored = False

    def record_lv1(self, x, y, scored = False):
        self.inner_pos_x = x
        self.inner_pos_y = y
        self.scored = scored

    def record_lv2(self, x, y, outer = -1):
        self.inner_pos_x = x
        self.inner_pos_y = y
        self.outer_pos = outer
    
    def edit_outer_pos(self, outer):
        self.outer_pos = outer

    def action_log(self):
        text = "".join(str("Position (%d, %d)" % (self.inner_pos_x, self.inner_pos_y)))
        
        if self.scored:
            text += " Scored a point!"
        if self.outer_pos != -1:
            text += str(" Outer Ring Position: %d" % (self.outer_pos))
        
        return text
