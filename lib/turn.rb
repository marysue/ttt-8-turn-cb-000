def display_board(board)
  #puts("     #{board[]} | #{board[]} | #{board[]}")
  puts(" #{board[0]} | #{board[1]} | #{board[2]}  ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]}  ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]}  ")
  #puts(" ")
  #puts(" ")
end

def input_to_index(input)
  #returns 0 if not a float or int
  index = input.to_i
  if index.between(1,9)
    return (index - 1)
  else
    return -1
  end
end

def position_taken?(board, index)
  if (board[index] == 'X' || board[index] == 'O')
    return true
  else
    return false
  end
end
def valid_move?(board, index)
  if index.between(0,8) && !position_taken?
    return true
  else
    return false
  end
end

def move(board, index, token='X')
  board[index] = token
end
