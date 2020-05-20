p [1, 2, 3].include?(1)

p result = { a: "ant", b: "bear", c: "cat" }.include?("ant") # only checks keys as same as Hash#key? or Hash#has_key?

p result = { a: "ant", b: "bear", c: "cat" }.include?(:a)

p result = { a: "ant", b: "bear", c: "cat" }.values.include?("ant")

p result = { a: "ant", b: "bear", c: "cat" }.has_value?("ant")

p result = { a: "ant", b: "bear", c: "cat" }.value?("ant")