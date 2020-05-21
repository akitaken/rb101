num_arr =[2, 5, 3, 4, 1]


p num_arr.sort



alpha_arr = ['c', 'a', 'e', 'b', 'd']

p alpha_arr.sort


sorted_nums = [2, 5, 3, 4, 1].sort do |a, b|
  puts "a is #{a} and b is #{b}"
  b <=> a
end

p sorted_nums


p ['arc', 'bat', 'cape', 'ants', 'cap'].sort # => ['ants', 'arc', 'bat', 'cap', 'cape']

p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
# => [['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]


sorted_by_second_letter = ['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
p sorted_by_second_letter


people = { Kate: 27, john: 25, Mike:  18 }

sorted_people = people.sort_by do |_, age|
  puts age
  age
end

p sorted_people.to_h  # Note that sort always returns an array

sorted_names = people.sort_by do |name, _|
  name.capitalize
end

p sorted_names