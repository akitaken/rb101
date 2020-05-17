puts "\nUsing a simple loop "
puts "======================= "

numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

puts "\nUsing the 'each' method "
puts "======================= "


[1, 2, 3].each do |num|
  puts num
end

puts "\nUsing the 'each' method with a hash "
puts "=================================== "

hash = { a: 1, b: 2, c: 3}

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end
