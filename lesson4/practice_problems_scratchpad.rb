# just some practice to review exercises

result = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p result


result = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p result


hash = { a: 'ant', b: 'bear' }
p hash.shift

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

new_map = []

map_result = [1, 2, 3].map do |num|
  new_map << num if num > 1
end

p map_result
p new_map


map_result2 = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p map_result2


puts "\n==========="

result = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p result