# Loop 1 practice

puts "Loop 1\n======"

loop do
  puts 'Just keep printing...'
  break
end

puts "\nLoop 2\n======"

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop'
    break
  end

  break
end

puts 'This is outside all loops.'

puts "\nLoop 3\n======"

iterations = 1

loop do
  puts "Number of interations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

puts "\nLoop 4\n======"

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end

puts "\nLoop 5\n======"

5.times do
  puts 'Hello!'
end


puts "\nLoop 6\n======"

numbers = []

while numbers.size < 6
  numbers << rand(100)
end

puts numbers

puts "\nLoop 7\n======"

count = 1

until count > 10
  puts count
  count += 1
end

puts "\nLoop 8\n======"

numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1  
end

puts "\nLoop 9\n======"


for i in 1..15
  puts i if i.odd?
end

puts "\nLoop 10\n======"

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in (0...friends.size)
  puts "Hello #{friends[i]}!"
end

puts "\nLoop 11\n======"

for friend in friends
  puts "Hello #{friend}!"
end

