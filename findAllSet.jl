# Finding all set
# board here should be an array of Cards
function findAllSet(board)
  set = []
  afterboard,beforeboard,tempset = findHelper(board)
  if tempset != []
    push!(set,tempset)
  end
  while afterboard != beforeboard
    afterboard,beforeboard,tempset = findHelper(afterboard)
    if tempset!=[]
      push!(set,tempset)
    end
  end
  set
end

function findHelper(board)
  len = length(board)
  for m in 1:length(board)
    for n in m+1:length(board)
      for l in n+1:length(board)
        if formSetOrNot(board[m],board[n],board[l])
          tempset = [board[m],board[n],board[l]]
          afterboard = board[setdiff(1:end, (m,n,l))]
          return afterboard, board, tempset
        end
      end
    end
  end
  return board, board,[]
end
