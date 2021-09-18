function setGame()
  deck = returnDeck();
  shuffleDeck(deck);
  board = []

  # Build a board with 12 cards here
  for x in 1:12
    c = deck[x]
    push!(board,c)
  end
  lenDeck = length(deck)
  deck = deck[13:lenDeck]
  return deck, board
end
