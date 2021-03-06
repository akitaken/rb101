# Tic Tac Toe
# Creating a prompt to choose who starts first


require 'pry'

STARTING_PLAYER = 'Choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonal
INITIAL_SCORE = 0
WINNING_SCORE = 5


def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter=', ', conjunction='or')
  joined_arr = ""
  arr.each_with_index do | digit, idx |
    if idx == (arr.size - 1)
      joined_arr << "#{arr[idx]}"
    elsif idx == (arr.size - 2)
      joined_arr << "#{arr[idx]} #{conjunction} "
    else
      joined_arr << "#{arr[idx]}#{delimiter}"
    end
  end
  joined_arr
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts " You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
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

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def place_piece!(brd, player)

  if player == 'Player'
    player_places_piece!(brd)
  elsif player == 'Computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'Player'
    'Computer'
  else 'Player'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # offence first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defence next
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  # pick square 5 if available
  
  if brd[5] == INITIAL_MARKER
    square = 5
  end
  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end


# rubocop:disable Metrics/MethodLength
def detect_winner(brd)
  WINNING_LINES.each do |line|

    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end
# rubocop:enable Metrics/MethodLength

player_score = INITIAL_SCORE
computer_score = INITIAL_SCORE
current_player = STARTING_PLAYER

if STARTING_PLAYER == 'Choose'
  prompt "Choose starting player"
  selected_starting_player = gets.chomp
end

loop do
  current_player = selected_starting_player
  board = initialize_board
  display_board(board)

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_score += 1
    else
      computer_score += 1
    end
  else
    prompt "It's a tie!"
  end
  puts "Score is: Player: #{player_score} | Computer: #{computer_score}"

  break if player_score == WINNING_SCORE || computer_score == WINNING_SCORE
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') 
end

if player_score == WINNING_SCORE
  prompt "Player wins the game!"
elsif computer_score == WINNING_SCORE
  prompt "Computer wins the game!"
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
