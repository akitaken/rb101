result = [1, 2, 3].select do |num|
  num.odd?
end

p result


result = [1, 2, 3].select do |num|
  num
  puts num
end

p result # +> nil
