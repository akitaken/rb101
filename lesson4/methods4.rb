result = [1, 2, 3].map do |num|
  num * 2
end

p result


result = [1, 2, 3].map do |num|
  num.odd?
end

p result

result = [1, 2, 3].map do |num|
  'hi'
end

p result
