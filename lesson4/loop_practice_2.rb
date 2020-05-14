# Loop 2 practice

puts "Loop 1\n======"

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  elsif count.even?
    puts "#{count} is even!"
  end

  count += 1
  break if count > 5
end

puts "\nLoop 2\n======"

loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <=10
end


puts "\nLoop 3\n======"

loop do
  number = rand(100)
  puts number

  break if number.between?(0, 10)
end

puts "\nLoop 4\n======"

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

puts "\nLoop 5\n======"

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

puts "\nLoop 6\n======"


5.times do |index|
  puts index
  break if index == 2
end

puts "\nLoop 7\n======"

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

puts "\nLoop 8\n======"

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end


puts "\nLoop 9\n======"

def greeting
  puts 'Hello'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1  
end















