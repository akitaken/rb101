# practising variable scope and passing by value/reference


def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name


def cap(str)
  str.capitalize
end

name = 'jim'
cap(name)
puts name

def add_name(arr, name)
  arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect

puts "=========="

def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect
