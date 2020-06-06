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

def initialize_deck

  new_deck = SUITES.map do |suite|
    CARDS.map { |card| [suite] + [card]  }
  end
  new_deck.flatten(1)
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

def busted?
  #
end

def close_to_21?
  #
end


def draw_card(dck)
  dck.sample  
end


deck = initialize_deck
player_cards = []
computer_cards = []


answer = nil
loop do
  puts "hit or stay?"
  answer = gets.chomp
  break if answer == 'stay' || busted?
end

if busted?
  # game ends/replay?
else
  puts "You choose to stay!"
end

# Dealer turn
loop do
  break if close_to_21? || busted?
  # hit
end

if busted?
  # game ends/replay?
else
  # stay
end





draw = [["H", "A"], ["D", "A"], ["S", "A"]]

p draw

p total(draw)