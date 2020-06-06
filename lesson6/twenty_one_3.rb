# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# Twenty One - working out how to calculate an ace

require 'pry'

SUITES = ['H', 'D', 'C', 'S']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  new_deck = SUITES.map do |suite|
    CARDS.map { |card| [suite] + [card]  }
  end
  new_deck.flatten(1)
end

def deal_cards(dck, num=1)
  dck.sample(num)
end

def remove_cards!(dck, cards)
  cards.each do |card|
      dck.delete(card)
  end
end

def total(cards)
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

  values.select { |value| value == "A"}.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def calculate_results
end

def display_results
end


# INITIALIZE DECK
system 'clear'
deck = initialize_deck

# DEAL CARDS TO PLAYER AND DEALER
player_cards = deal_cards(deck, 2)
remove_cards!(deck, player_cards)
prompt "Player Hand: #{player_cards}"
computer_cards = deal_cards(deck, 2)
remove_cards!(deck, computer_cards)
prompt "Computer Hand: #{computer_cards}"

# GAME LOOP
loop do
  
  # PLAYER TURN - HIT OR STAY?
  # repeat until bust or "stay"
  answer = nil
  loop do
    prompt "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay' || busted?(player_cards)
    new_card = deal_cards(deck)
    remove_cards!(deck, new_card)
    player_cards << new_card
    prompt "Card Dealt to you is #{new_card}"
    prompt "Your Hand is #{player_cards}"
  end

  if busted?(player_cards)
    prompt "You've busted!"
  else
    prompt "You choose to stay!"
  end

  # DEALER TURN - HIT OR STAY?
  # repeat until total >= 17
  loop do
    break if (total(computer_cards) >= 17) || busted?(computer_cards)
    new_card = deal_cards(deck)
    remove_cards!(deck, new_card)
    computer_cards << new_card
    prompt "Card Dealt to Computer is #{new_card}"
    prompt "Computer Hand is #{computer_cards}"

    p deck
  end

  if busted?(computer_cards)
    prompt "Computer has busted!"
  else
    prompt "Computer is done. Let's see what happens."
  end

end

prompt "Final Player Hand is #{player_cards}"
prompt "Final Computer Hand is #{computer_cards}"

prompt "Game has ended!"

