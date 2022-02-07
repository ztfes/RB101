# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.


def prompt(msg)
  puts "=> #{msg}"
end


full_deck = [['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'],
             ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'],
             ['H', 'Q'], ['H', 'K'], ['H', 'A'],
             ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'],
             ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'],
             ['D', 'Q'], ['D', 'K'], ['D', 'A'],
             ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'],
             ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'],
             ['C', 'Q'], ['C', 'K'], ['C', 'A'],
             ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'],
             ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'],
             ['S', 'Q'], ['S', 'K'], ['S', 'A']]

def deal_cards(player_hand, dealer_hand)
  player_hand = 
end

def display_hand
end

def dealer_turn
end

def player_turn
end

def hit_or_stay
  loop do
end

def bust?
end

def winner?
end

player_hand = []
dealer_hand = []
loop do #main loop
