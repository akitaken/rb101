result = [1, 2, 3].any? do |num|
  num > 2
end

p result

hsh = { a: "ant", b: "bear", c: "catee"}


another_result = hsh.any? do |key, value|
  value.size > 4
end

p another_result

all_result = [1, 2, 3].all? do |num|
  num > 2
end

p all_result


all_result_on_hash = { a: "ant", b: "bear", c: "cat"}.all? do |key, value|
  value.length >=3
end

p all_result_on_hash