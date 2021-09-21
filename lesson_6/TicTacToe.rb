=begin

1. Display the initial empty 3x3 board
2. Ask the user to mark square
3. computer mark square
4. Display the updated board state
5. If winner, display winner
6. If board is full, display tie
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end

require 'pry'
require 'pry-byebug'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"


def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts ""

  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}" 
  puts "-----+-----+-----"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "-----+-----+-----"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def empty_squares?(brd, square)
  empty_squares(brd).include?(square)
end

def player_place_piece(brd)
  square = ""
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(", ")}):"
    square = gets.chomp.to_i

    if empty_squares?(brd, square)
      brd[square] = PLAYER_MARKER
      break
    else
      prompt "Invalid choice"
    end    
  end
end

board = initialize_board
display_board(board)

player_place_piece(board)
display_board(board)

player_place_piece(board)
display_board(board)