=begin

puts "the value of 40 + 2 is " + (40 + 2)

# throws an error because the integers (40 + 2) need to be converted to a string to be able to be concatenated

=end

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{(40 + 2)}"
