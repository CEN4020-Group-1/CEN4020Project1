#include <iostream>
#include <fstream>
using namespace std;

#define DIMENTION 5

//With a 1D array, diagonals should have a row difference of 1
//intiger division shows the rows of any position
int is_valid_diagonal(int x, int y){
    int x_row = x / DIMENTION;
    int y_row = y / DIMENTION;

    return abs(x_row - y_row) == 1;
}

int is_valid_horizontal(int x, int y){
    int x_row = x / DIMENTION;
    int y_row = y / DIMENTION;

    return abs(x_row - y_row) == 0;
}

class Cell{
    public:
        int num = 0;

        Cell(){
            num = 0;
        }

        Cell(int n){
            num = n;
        }

        void print(){
            cout << "|";
            if (num < 10)
                cout << 0;
            cout << num;
        }

        bool is_free(){
            return num == 0;
        }
};

class Board{
    private:
        Cell board[DIMENTION * DIMENTION];

        int points = 0; // How many points have been earned so far
        int current = 1; // Which number will the user place next
        int position = 0; // where the user currently is in the array

        bool lost = false;

        bool is_diagonal(){
            int down_left = position + DIMENTION - 1;
            int up_left = position - DIMENTION - 1; 
            int up_right = position + DIMENTION + 1;
            int down_right = position - DIMENTION + 1;

            //cout << "Checking diagonals for " << current << " at position " << position + 1 << endl;
            //cout << down_left << " " << up_left << " " << up_right << " " << down_right << endl;

            //Diagonals should have a difference of when intiger divided
            if (down_left > 0 && is_valid_diagonal(position, down_left)){
                if (board[down_left].num == current - 1)
                    return true;
            }

            if (up_left > 0 && is_valid_diagonal(position, up_left)){
                if (board[up_left].num == current - 1)
                    return true;
            }

            if (up_right > 0 && is_valid_diagonal(position, up_right)){
                if (board[up_right].num == current - 1)
                    return true;
            }

            if (down_right > 0 && is_valid_diagonal(position, down_right)){
                if (board[down_right].num == current - 1)
                    return true;
            }

            return false;
        }

        void check_point(){
            if (is_diagonal()){
                points++;
            }
        }

    public:
        Board(){
            points = 0;
            current = 1;
            position = 0;

            for (int i = 0; i < DIMENTION * DIMENTION; i++){
                board[i] = Cell();
            }
        }
    
        Board(fstream *file){
            int num;
            int index = 0;
            //save file is formatted with board data first then cell data values on it's own line
            if (*file >> num){
                points = num;
            }
            if (*file >> num){
                current = num;
            }
            if (*file >> num){
                position = num;
            }
            
            while (*file >> num){ //https://cplusplus.com/forum/general/273300/
                board[index] = Cell(num);
                cout << num << '\n';
                index++;
            }            
        }
        
        void print(){
            for (int i = 0; i < DIMENTION * DIMENTION; i++){
                board[i].print();
                if (i % DIMENTION == DIMENTION - 1){
                    cout << "|\n";
                }
            }
        }
        
        void print_pos(){
            for (int i = 0; i < DIMENTION * DIMENTION; i++){
                cout << "|";
                if (i < 9)
                    cout << 0;
                cout << i + 1;
                if (i % DIMENTION == DIMENTION - 1){
                    cout << "|\n";
                }
            }
        }

        void print_status(){
            cout << "POINTS: " << points << "\n";
            cout << "BOARD" << endl;
            cout << "-----" << endl;

            print();

        }

        int get_pos(){
            return position;
        }

        int get_points(){
            return points;
        }

        bool started(){
            return current == 1;
        }

        bool win_con(){
            return current > DIMENTION * DIMENTION;
        }
        
        bool lose_con(){
            return lost;
        }
        
        void next_turn(){
            check_point();
            
            current++;
        }
        
        void input(int pos){
            if (!board[pos].is_free()){
                lost = true;
            }

            board[pos].num = current;
            position = pos;
        }
       
        void save_data(string filename = "save.txt"){
            ofstream file;
            file.open(filename);

            file << points << " " << current << " " << position << endl;

            for (int i = 0; i < DIMENTION * DIMENTION; i++){
                file << board[i].num << "\n";
            }
            
            file.close();
        }
};

// Responsible for simple text file I/O related to the saved game.   
class FileManager{
    public:
        static bool exists(const string &filename){
            ifstream f(filename);
            return f.good();
        }

        static Board load(const string &filename){
            fstream f;
            f.open(filename);
            Board b(&f);
            f.close();
            return b;
        }

        static void save(const string &filename, Board &b){
            b.save_data(filename);
        }
};

// Handles command-line user interaction: printing menus and getting inputs.
class GameUI{
    public:
        static int translate_input(int direction, int pos){
            switch (direction){
                case 1:
                    return pos + DIMENTION - 1;
                case 2:
                    return pos + DIMENTION;
                case 3:
                    return pos + DIMENTION + 1;
                case 4:
                    return pos - 1;
                case 6:
                    return pos + 1;
                case 7:
                    return pos - DIMENTION - 1;
                case 8:
                    return pos - DIMENTION;
                case 9:
                    return pos - DIMENTION + 1;
                default:
                    return -2;
            }
        }

        static bool validate_input(int x, int old_pos, int new_pos){
            if (new_pos < 0 || new_pos > DIMENTION * DIMENTION - 1)
                return false;
            if (x % 2 == 1)
                return is_valid_diagonal(new_pos, old_pos);
            if (x == 4 || x == 6)
                return is_valid_horizontal(new_pos, old_pos);
            return true;
        }

        static int get_first_input(){
            int x = 0;

            while (x < 1 || x > DIMENTION * DIMENTION){
                cout << "Type in your first position with a value from 1 - " << DIMENTION * DIMENTION << ": ";
                cin >> x;

                if (x < 1 || x > DIMENTION * DIMENTION)
                    cout << "Invalid position\n";
            }

            return x;
        }

        static int get_next_input(int pos){
            int x = 0;
            int new_pos = -1;
            while (new_pos < 0 || new_pos > DIMENTION * DIMENTION - 1){
                //Commands based on numpad notation
                cout << "Type in which direction to go next\n";
                cout << "COMMANDS\n";
                cout << "1) DownLeft\n";
                cout << "2) Down\n";
                cout << "3) DownRight\n";
                cout << "4) Left\n";
                cout << "6) Right\n";
                cout << "7) UpLeft\n";
                cout << "8) Up\n";
                cout << "9) UpRight\n";
                cout << "(You may type -1 to save and quit)\n";

                cin >> x;
                if (x == -1)
                    return x;
                if (x == 5 || x > 9 || x < 1){
                    cout << x << " is not a direction";
                    continue;
                }

                new_pos = GameUI::translate_input(x, pos);
                //Invalid cells are either outside the array or a diagonal movement that goes past a border
                cout << new_pos << "\n" << pos <<"\n" << x % 2 << endl;

                if (!GameUI::validate_input(x, pos, new_pos)){
                    cout << new_pos << " is an invalid location";
                    return -2;
                    //new_pos = -1;
                }
            }

            return new_pos;
        }

        static char prompt_remove_save(){
            char remove_save;
            cout << "Remove current save? (Y for Yes, anything else for no)";
            cin >> remove_save;
            return remove_save;
        }

        static void wait_for_exit(){
            char close;
            cout << "Enter anything to exit this game";
            cin >> close;
        }
};

int main(){
    Board cur_board;

    //If file does not exist, make a new board
    if (!FileManager::exists("save.txt")){
        cur_board = Board();
    }
    //If file exists, use the data stored within
    else{
        cur_board = FileManager::load("save.txt");

        cur_board.print_status();
        char remove_save = GameUI::prompt_remove_save();
        
        if (remove_save == 'Y'){
            remove("save.txt");
            cur_board = Board();
        }
    }  

    if (cur_board.started()){
        cur_board.print_pos();
        int first = GameUI::get_first_input();

        cur_board.input(first - 1);
        if(!cur_board.lose_con()){
            cur_board.next_turn();
        }
    }

    while (!cur_board.lose_con()){
        cur_board.print_status();

        int next = GameUI::get_next_input(cur_board.get_pos());

        if (next == -1){
            FileManager::save("save.txt", cur_board);
            cout << "Saved game" << endl;
            break;
        }
        if (next == -2){
            cout << ", you lose" << endl;
            remove("save.txt"); // No need for the current board
            break;
        }
        
        cur_board.input(next);
        cur_board.next_turn();

        if (cur_board.lose_con()){ //Check if they moved to an invalid space
            cur_board.print();
            cout << "Invalid position, you lose" << endl;
            remove("save.txt"); // No need for the current board
            break;
        }
        else if (cur_board.win_con()){ // Only check this if the user isn't going to lose
            cur_board.print();
            cout << "You win with " << cur_board.get_points() << " points!" << endl;
            remove("save.txt"); // No need for the current board
            break;
        }
    }
    
    GameUI::wait_for_exit();

    return 0;
}