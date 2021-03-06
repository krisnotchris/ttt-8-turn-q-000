def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
     if valid_move?(board, position)
      move(board, position)
    else
      puts "Please enter 1-9:"
      position = gets.strip
    end
display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && !position_taken?(board, position)
    return true
  else
    return false
  end
end

def position_taken?(board, location)
  if board[location.to_i-1] == " "
    return false
  else
    return true
  end
end

def move(board, position, character="X")
  board["#{position}".to_i-1] = "#{character}"
  return 
end
