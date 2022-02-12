def prompt(msg)
  puts "=> #{msg}"
end

WINNING_TOTAL = 21
DEALER_HIT_LIMIT = 17

full_deck = [['H', 2], ['H', 3], ['H', 4], ['H', 5], ['H', 6],
             ['H', 7], ['H', 8], ['H', 9], ['H', 10], ['H', 'J'],
             ['H', 'Q'], ['H', 'K'], ['H', 'A'],
             ['D', 2], ['D', 3], ['D', 4], ['D', 5], ['D', 6],
             ['D', 7], ['D', 8], ['D', 9], ['D', 10], ['D', 'J'],
             ['D', 'Q'], ['D', 'K'], ['D', 'A'],
             ['C', 2], ['C', 3], ['C', 4], ['C', 5], ['C', 6],
             ['C', 7], ['C', 8], ['C', 9], ['C', 10], ['C', 'J'],
             ['C', 'Q'], ['C', 'K'], ['C', 'A'],
             ['S', 2], ['S', 3], ['S', 4], ['S', 5], ['S', 6],
             ['S', 7], ['S', 8], ['S', 9], ['S', 10], ['S', 'J'],
             ['S', 'Q'], ['S', 'K'], ['S', 'A']]

def deal_starting_hand(deck)
  deck.shuffle!.pop(2)
end

def calculate_hand(hand)
  total = []
  hand.each do |card|
    if card[1].class == String && card[1] != 'A'
      total << 10
    elsif card[1].class == String && card[1] == 'A'
      total << ace_value(total)
    else
      total << card[1]
    end
  end
  total.sum
end

def ace_value(total)
  card_value = nil
  if total.sum + 11 < WINNING_TOTAL
    card_value = 11
  else
    card_value = 1
  end
  card_value
end

def display_hand(user, hand, total)
  prompt "#{user} has: #{hand}, Total = #{total}"
end

def dealer_turn
  # dealer hits until at least 17
  # if total >= 17 ---> STAY
  # else HIT
end

def player_turn
  # display your current score
  # ask if you want to hit (prompt, chomp)
  # if HIT, shuffle-pop card to hand
  # display new score
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

### TEST CASE ###
# player_hand = calculate_hand(full_deck)
# player_total = calculate_hand(player_hand)
# display_hand('player', player_hand, player_total)