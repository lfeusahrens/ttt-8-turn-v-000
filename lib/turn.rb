def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  
 if valid_move?(board,input_to_index) 
   puts "Please enter 1-9:"
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
 end 
 
def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || "" || nil
    false
  end
end  

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end 