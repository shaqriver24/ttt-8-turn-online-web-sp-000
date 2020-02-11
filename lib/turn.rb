def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, idx)
  !(board[idx] == " " || board[idx] == "" || board[idx] == nil)
end

def valid_move?(board, idx)
  !position_taken?(board, idx) && idx.between?(0, 8)
end

def move(board, idx, char = "X")
  board[idx] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  idx = input_to_index(user_input)
  if valid_move?(board, idx)
    move(board, idx)
    display_board(board)
  else
    puts "Invalid move. Please pick a valid space on the board."
    turn(board)
  end
end
