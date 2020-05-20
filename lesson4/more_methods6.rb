# Enumberable#partition

result = [1, 2, 3].partition do |num|
  num.odd?
end

p result


odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd
p even

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end

p long.to_h
p short.to_h
