using Random
function shuffleDeck(deck)
  len = length(deck)
  s = randperm(len)
  shuffledDeck = deck
  for x in 1:len
    shuffledDeck[x] = deck[s[x]]
    end
  shuffledDeck
end  
