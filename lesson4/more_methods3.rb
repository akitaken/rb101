result = [1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end

p result

result2 = { a: "ant", b: "bear", c: "cat"}.each_with_object({}) do |(key, value), hash|
  hash[value] = key
  
end

p result2
