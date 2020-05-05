if true
  puts 'hi'
else
  puts 'goodbye'
end

puts "--------------\n"

if false
  puts 'hi'
else
  puts 'goodbye'
end

puts "--------------\n"

num = 5

if (num < 10)
  puts "small number"
else
  puts "large number"
end


puts "--------------\n"

def some_method_call
  num = 5
  num < 10
end

puts "it's true!" if some_method_call


puts "--------------\n"

num = 5

if num
  puts "valid number!"
else
  puts "error!"
end


puts num == true


puts "--------------\n"

if name = some_method_call
  puts "got a name"
else 
  puts "couldn't find a name"
end


puts "--------------\n"

name = nil

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end


puts "--------------\n"