objects = ['hello', :key, 10, []]
counter = 0

loop do
  break if counter >= objects.size
  puts objects[counter].class
  counter += 1
end