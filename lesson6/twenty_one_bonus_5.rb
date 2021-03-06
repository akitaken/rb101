# Twenty One
# Notes for Next Steps: 
# - Make the presentation of the cards more readable (e.g. Hearts Queen, maybe even get some ASCII art in it... ?)
# - Improve the repeated update text so it looks better (there are a lot of == and ---)

require 'pry'

SUITS = ['H', 'D', 'C', 'S']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
WINNING_TOTAL = 21
DEALER_MAX = 17
MATCH_WINNING_SCORE = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WINNING_TOTAL
  end

  sum
end

def busted?(total_cards)
  total_cards > WINNING_TOTAL
end

def match_won?(score)
  score[:player] == MATCH_WINNING_SCORE || score[:dealer] == MATCH_WINNING_SCORE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)
  if player_total > WINNING_TOTAL
    :player_busted
  elsif dealer_total > WINNING_TOTAL
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total, dealer_cards, player_cards, score)
  result = detect_result(dealer_total, player_total)

  puts "================="
  prompt "Player has #{player_cards}, for a total of : #{player_total}"
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  puts "================="

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end

  puts "================="
  prompt "Player Total Wins: #{score[:player]} | Dealer Total Wins: #{score[:dealer]}"
  puts "================="
end

def display_match_score(score)
  puts "+++++++++++++++++++"
  prompt "END OF MATCH SCORE"
  prompt "Player Total Wins: #{score[:player]} | Dealer Total Wins: #{score[:dealer]}"
  puts "+++++++++++++++++++"
end

def update_wins!(score, dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

  if result == :player_busted || result == :dealer
    score[:dealer] += 1
  elsif result == :dealer_busted || result == :player
    score[:player] += 1
  end
end

def play_again?
  puts "--------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

score = {player: 0, dealer: 0}

loop do
  prompt "Welcome to Twenty-One!"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initalize deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'"
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt "You choose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  if busted?(player_total)
    update_wins!(score, dealer_total, player_total)
    display_result(dealer_total, player_total, dealer_cards, player_cards, score)
    break if match_won?(score)
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_MAX

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    update_wins!(score, dealer_total, player_total)
    display_result(dealer_total, player_total, dealer_cards, player_cards, score)
    break if match_won?(score)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_cards}"
  end

  # both player and dealer stays - compare cards!
  update_wins!(score, dealer_total, player_total)
  display_result(dealer_total, player_total, dealer_cards, player_cards, score)
  break if match_won?(score)
  break unless play_again?
end
## Display Match Score
prompt "GAME OVER"
display_match_score(score)
prompt "Thank you for playing Twenty-One! Good bye!"
