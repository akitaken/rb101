loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp

  if answer == "4"
    puts "Correct answer!"
    break
  end
  puts "Wrong answer, try again!"

end