# frozen_string_literal: true

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diags

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def who_goes_first
  prompt 'Please select whether PLAYER or COMPUTER chooses who goes first'
  who_chooses = gets.chomp
  if who_chooses.downcase.start_with?('p')
    prompt 'Please select whether PLAYER or COMPUTER goes first:'
    choice = gets.chomp
    choice
  elsif who_chooses.downcase.start_with?('c')
    choice = ['Player', 'Computer'].sample
    prompt "Computer chooses #{choice} to go first"
    choice
  else
    ['Player', 'Computer'].sample
  end
end

def alternate_player(current_player)
  if current_player.downcase.start_with?('p')
    current_player = 'Computer'
  elsif current_player.downcase.start_with?('c')
    current_player = 'Player'
  end
end

def joinor(brd, delim1 = ', ', delim2 = 'or')
  squares = empty_squares(brd).join(delim1)
  squares.insert(squares.length - 1, delim2)
  squares.insert(squares.length - 1, ' ')
  if empty_squares(brd).length == 2
    squares.slice!(1)
  elsif empty_squares(brd).length == 1
    squares.slice!(0..2)
  end
  squares
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(brd, ', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line| # offfense
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square # defense
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if brd[5] == INITIAL_MARKER
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  if current_player.downcase.start_with?('p')
    player_places_piece!(brd)
  elsif current_player.downcase.start_with?('c')
    computer_places_piece!(brd)
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0
  current_player = who_goes_first
  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won this round!"
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
    else
      prompt "This round is a tie!"
    end

    prompt "First to 5 wins!"
    prompt "Player: #{player_score} | Computer: #{computer_score}"
    if player_score == 5
      prompt "You win the game!"
      break
    elsif computer_score == 5
      prompt "Computer won the game!"
      break
    end

    prompt "Hit any key to start next round"
    gets
  end

  prompt 'Would you like to play another game (best of 5)? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing Tic Tac Toe! Good Bye!'
