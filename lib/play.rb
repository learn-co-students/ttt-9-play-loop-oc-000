# Helper Methods
def display_board(board)
  display = ""
  board.each_with_index do |value,i|
    display += " #{value} "
    display += (i+1) % 3 == 0 ? "\n-----------\n" : "|"
  end
  puts display
end

def play(board)
  turn = 0
  while turn < 9
    turn(board)
    turn += 1
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  move(board,position)
  display_board(board)
end

def move(board, location, current_player = "X")
  if valid_move?(board, location)
    board[position.to_i - 1] = player
  else
    puts "Invalid move."
    turn(board)
  end
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, location)
  ["X","O"].include?(board[position])
end
# Define your play method below
