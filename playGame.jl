function playGame(deck,board,result)
  set = findAllSet(board)
  set,deck,board = selectOrAdd(set,deck,board)


  if (isempty(set) && (length(deck)==0)) 
    return result
  end
  playGame(deck,board,result)
end
