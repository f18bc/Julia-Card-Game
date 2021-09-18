include("cardBulder.jl")
include("dealCard.jl")
include("findAllSet.jl")
include("formSetOrNot.jl")
include("returnDeck.jl")
include("selectOrAdd.jl")
include("setGame.jl")
include("shuffleDeck.jl")

deck,board = setGame()
function playGame(deck,board)
  set = findAllSet(board)
  set,deck,board = selectOrAdd(set,deck,board)
  if (length(board)==0)
    print("You Win!")
    return result
  end
  if (length(deck)==0)
    print("You Lose!")
    return result
  end
  playGame(deck,board)
end
