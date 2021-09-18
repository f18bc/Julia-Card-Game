# random select or adding card
function selectOrAdd(set,deck,board)
  temp = []
  if isempty(set)
    shuffleDeck(deck)
    c1 = deck[1]
    c2 = deck[2]
    c3 = deck[3]
    push!(board,c1)
    push!(board,c2)
    push!(board,c3)
    lenDeck = length(deck)
    deck = deck[4:lenDeck]
  else 
    len = length(set)
    r = rand(1:len)
    temp = set[1]
    set[r] = set[1]
    set[1] = temp
    if len == 1
      set = []
    else
      set = set[2:len]
    end
    board = board[setdiff(1:end, (findfirst(isequal(temp[1]),board)))]
    board = board[setdiff(1:end, (findfirst(isequal(temp[2]),board)))]
    board = board[setdiff(1:end, (findfirst(isequal(temp[3]),board)))]
  end
  set, deck, board
end
