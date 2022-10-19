def prompt(msg)
  puts "=> #{msg}"
end

def deal_starting_hand(deck)
  deck.shuffle!.pop(2)
end

def calculate_hand(hand)
  values = hand.map { |card| card[1] }

  total = 0
  values.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    total -= 10 if total > WINNING_SCORE
  end

  total
end

def display_hand(user, hand, total)
  if user == 'Dealer'
    prompt "#{user} has: #{hand[0]} and unknown card(s)"
  else
    prompt "#{user} have: #{hand}, Total = #{total}"
  end
end

def dealer_winning_hand(user, hand, total) # display dealers hand if they win
  prompt "#{user} had: #{hand}, Total = #{total}"
end

def busted?(total)
  total > WINNING_SCORE
end

def who_won?(player_total, dealer_total)
  if (player_total > dealer_total) && !busted?(player_total)
    'Player'
  elsif (dealer_total > player_total) && !busted?(dealer_total)
    'Dealer'
  elsif busted?(player_total)
    'Player Busted'
  elsif busted?(dealer_total)
    'Dealer Busted'
  else
    'Tie'
  end
end

loop do
  # Refresh the deck with each game
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

  # Keep track of winning rounds
  player_score = 0
  dealer_score = 0

  # Set custom winning score'
  prompt "Please set the target winning total (e.g., 21):"
  WINNING_SCORE = gets.chomp.to_i
  DEALER_HIT_LIMIT = WINNING_SCORE - 4

  loop do # main loop
    system 'clear'
    prompt "Welcome to the game, you have chose to play to #{WINNING_SCORE}"
    prompt "First to 5 wins!"
    prompt "Player: #{player_score} | Dealer: #{dealer_score}"

    player_hand = deal_starting_hand(full_deck)
    dealer_hand = deal_starting_hand(full_deck)

    player_total = calculate_hand(player_hand)
    dealer_total = calculate_hand(dealer_hand)

    display_hand('You', player_hand, player_total)
    display_hand('Dealer', dealer_hand, dealer_total)

    prompt "Player will start:"
    loop do
      loop do # Player Turn
        prompt 'Would you like to hit or stay?'
        answer = gets.chomp
        break unless answer.downcase.start_with?('h')
        player_hand << full_deck.shuffle!.pop
        player_total = calculate_hand(player_hand)
        display_hand('You', player_hand, player_total)
        break if busted?(player_total)
      end

      break if busted?(player_total)
      prompt "You chose to stay."
      display_hand('You', player_hand, player_total)

      prompt "It is now the dealer's turn"

      loop do # Dealer Turn
        break if dealer_total >= DEALER_HIT_LIMIT
        break if busted?(dealer_total)
        dealer_hand << full_deck.shuffle!.pop
        prompt "Dealer hit"
        dealer_total = calculate_hand(dealer_hand)
      end

      if busted?(dealer_total)
        break
      else
        prompt "Dealer chose to stay."
        break
      end
    end

    case who_won?(player_total, dealer_total)
    when 'Player'
      prompt "Player wins!"
      player_score += 1
    when 'Dealer'
      prompt "Dealer wins!"
      dealer_score += 1
    when 'Player Busted'
      prompt "You busted, dealer wins!"
      dealer_score += 1
    when 'Dealer Busted'
      prompt "Dealer busted, you win!"
      player_score += 1
    else
      prompt "It's a tie!"
    end

    dealer_winning_hand('Dealer', dealer_hand, dealer_total)

    if player_score == 5
      prompt "Player: #{player_score} | Dealer: #{dealer_score}"
      prompt "You win the game!"
      break
    elsif dealer_score == 5
      prompt "Player: #{player_score} | Dealer: #{dealer_score}"
      prompt "Dealer won the game!"
      break
    end

    prompt "Hit any key to start next round"
    gets
  end
  prompt "Would you like to play another game of #{WINNING_SCORE}? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Thanks for playing #{WINNING_SCORE}!"
