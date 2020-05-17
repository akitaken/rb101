result = [1, 2, 3].any? do |num|
  num > 2
end

p result

hsh = { a: "ant", b: "bear", c: "catee"}


another_result = hsh.any? do |key, value|
  value.size > 4
end

p another_result
