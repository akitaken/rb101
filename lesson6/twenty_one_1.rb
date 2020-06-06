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

def initialize_deck
  suites = ['H', 'D', 'C', 'S']
  cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  new_deck = suites.map do |suite|
    cards.map { |card| [suite] + [card]  }
  end
  new_deck.flatten(1)
end

def draw_card(dck)
  dck.sample  
end

def calculate_hand(cards)
  total_value_of_hand = 0
  cards.each do |card|
    case card[1]
    when '2'..'9'
      total_value_of_hand += card[1].to_i
    when 'J', 'Q', 'K'
      total_value_of_hand += 10
    when 'A'
      if (total_value_of_hand + 11) > 21
        total_value_of_hand += 1
      else
        total_value_of_hand +=11
      end  
    end
  end
  total_value_of_hand
end



player_cards = []
computer_cards = []


deck = initialize_deck

draw = [["H", "1"], ["D", "A"], ["S", "A"]]

p draw

p calculate_hand(draw)