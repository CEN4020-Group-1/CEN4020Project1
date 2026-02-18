#!/usr/bin/env python

class Level3Logic:
    def __init__(self, game_state):
        self.state = game_state
    
    def _outer_to_inner_coords(self, outer_row, outer_col):   #convert outer board coords back to inner 5x5
        return (outer_row - 1, outer_col - 1)
    
    def _is_on_diagonal(self, row, col):   #check if position is on main diagonal (top-left to bottom-right)
        return row == col
    
    def _is_on_anti_diagonal(self, row, col):   #check if position is on anti-diagonal (top-right to bottom-left)
        return row + col == 6
    
    def _is_orthoginal_cell(self, rowcol): #Check if a cell is in the same col or row as the 5x5 grid
        return rowcol > 0 and rowcol < 6
    
    def _is_valid_move(self, row, col):
        #check bounds
        if row < 1 or row > 5 or col < 1 or col > 5:
            return (False, "out_of_bounds")
        #check if cell is empty
        if self.state.board[row][col] != 0:
            return (False, "cell_occupied")
        #first move can be anywhere (but in GUI, 1 is pre-placed)
        if self.state.current_num == 1:
            return (True, None)
        #check if one step away from last position
        last_row, last_col = self.state.last_pos
        row_diff = abs(row - last_row)
        col_diff = abs(col - last_col)
        if row_diff <= 1 and col_diff <= 1 and (row_diff + col_diff) > 0:
            return (True, None)
        return (False, "not_adjacent") 
    
    
    def _get_valid_cells(self):   #get list of all valid cells for current move
        valid = []
        outer_cell = self.state.find_outer_position(self.state.current_num)
        
        #Check which row/col can be skipped over with current outer ring position
        if self._is_orthoginal_cell(outer_cell[0]): #Check if outer cell is horizontal
            current_col = outer_cell[1]
            for row in range(5):
                is_valid, _ = self._is_valid_move(row, current_col)
                if is_valid:
                    valid.append((row,current_col))
        
        elif self._is_orthoginal_cell(outer_cell[1]): #Check if outer cel is vertical
            current_row = outer_cell[0]
            for col in range(5):
                is_valid, _ = self._is_valid_move(current_row, col)
                if is_valid:
                    valid.append((current_row,col))
        
        elif self._is_on_diagonal(outer_cell[0], outer_cell[1]):#Check if outer ring pos is diagonal
            for offset in range(5):
                is_valid, _ = self._is_valid_move(offset, offset)
                if is_valid(offset, offset):
                    valid.append((offset, offset))
                
        elif self._is_on_anti_diagonal(outer_cell[0], outer_cell[1]): #Check if it's anti diagonal
            for row in range(5):
                current_col = 4 - offset
                is_valid, _ = self._is_valid_move(row, current_col)
                if is_valid(row, current_col):
                    valid.append((row, current_col)) 
        
        return valid
    
    def is_diagonal_move(self, row, col):   #check if move is diagonal from last position
        if self.state.last_pos is None:
            return False
        last_row, last_col = self.state.last_pos
        row_diff = abs(row - last_row)
        col_diff = abs(col - last_col)
        return row_diff == 1 and col_diff == 1
    
    def place_number(self, row, col):   #place the current number at the given position
        valid, error = self._is_valid_move(row, col)
        if not valid:
            return (False, error)
        
        scored = self.is_diagonal_move(row, col)
        #add score for diagonal moves
        if scored:
            self.state.score += 1
        
        #place the number
        self.state.board[row][col] = self.state.current_num
        
        #update state
        self.state.last_pos = (row, col)
        self.state.current_num += 1
        self.state.move_history.record_action_lv3((row, col), scored)
        
        #check win condition
        if self.state.current_num > 25:
            self.state.win = True
            
        return (True, None)
    
    def has_valid_moves(self):   #check if there are any valid moves left
        return len(self.get_valid_cells()) > 0
