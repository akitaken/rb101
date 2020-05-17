result = [1, 2, 3].any? do |num|
  num > 2
end

p result

hsh = { a: "ant", b: "bear", c: "cat"}


another_result = hsh.any? do |key
