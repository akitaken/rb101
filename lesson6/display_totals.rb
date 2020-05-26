OPTIONS = ['player', 'computer', nil]

winner = 'yo'

player_wins = 1
computer_wins = 1


def roll_for_winner(arr=OPTIONS, winner)
  winner = arr.sample
end

roll_for_winner(OPTIONS, winner)
p winner


# def find_winner(arr, player_wins, computer_wins)
#   winner = roll_for_winner(arr)
#   case winner
#   when 'player'
#     player_wins += 1
#   when 'computer'
#     computer_wins += 1
#   end
# end

# def display_totals(player_wins, computer_wins)
#   puts "Score is: Player: #{player_wins} | Computer: #{computer_wins}" 
# end

# results = ['player', 'computer', nil]
# find_winner(results, player_wins, computer_wins)

# find_winner(results, player_wins, computer_wins)

# find_winner(results, player_wins, computer_wins)


# display_totals(player_wins, computer_wins)