# NEW FEATURES #

# 1) Add 'lizard' and 'spock' to VALID_CHOICES
# 1a) Add additional game logic for inclusion of 'lizard' and 'spock'
# 2) Simplify user-input for 'choice': Allow for abbreviated input
# 3) Make game logiic a 'first of three' to win
# 3a) Need a counter to track Player_wins and computer_wins
# 3b) Exit when player_wins OR computer_wins reaches 3
# 3c) Add prompt to state who won
# 4) Ask user if they'd like to play again

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

WINNERS = { 'rock': ['scissors', 'lizard'], 'paper': ['rock', 'spock'],
            'scissors': ['paper', 'lizard'], 'lizard': ['spock', 'paper'],
            'spock': ['rock', 'scissors'] }

def prompt(message)
  Kernel.puts("\n => #{message}")
end

def win?(first, second)
  WINNERS[first.to_sym][0] == second || WINNERS[first.to_sym][1] == second
end

def display_score(score1, score2)
  prompt("Your score is #{score1}, computer score is #{score2}")
end

def game_over?(my_score_tally, computer_score_tally)
  my_score_tally == 3 || computer_score_tally == 3
end

choice = ''
player_score = 0
computer_score = 0
counter = 1

loop do
  loop do
    prompt("Round #{counter}! Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    case choice
    when 'r'
      choice << 'ock'
    when 'p'
      choice << 'aper'
    when 'sc'
      choice << 'issors'
    when 'l'
      choice << 'izard'
    when 'sp'
      choice << 'ock'
    end

    if VALID_CHOICES.include?(choice)
      counter += 1
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("you chose: #{choice}; Computer chose: #{computer_choice}")

  if win?(choice, computer_choice)
    prompt("You won this round!")
    player_score += 1
  elsif win?(computer_choice, choice)
    prompt("Computer won this round!")
    computer_score += 1
  else
    prompt("This round is a tie!")
  end

  display_score(player_score, computer_score)

  if game_over?(player_score, computer_score) && player_score == 3
    prompt("Congratulations! You won!")
    computer_score = 0
    player_score = 0
    counter = 1
    prompt("Do you want to play again?")
    answer = gets.chomp
    break if answer.downcase.start_with?('n')
    promtp("REMATCH!")
  elsif game_over?(player_score, computer_score) && computer_score == 3
    prompt("The computer won!")
    computer_score = 0
    player_score = 0
    counter = 1
    prompt("Do you want to play again?")
    answer = gets.chomp
    prompt("REMATCH!")
    break if answer.downcase.start_with?('n')
  end
end

prompt("Thank you for playing. Good bye!")
