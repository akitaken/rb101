arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

p arr2 # => ["a", "B", "c"]
p arr1 # => ["a", "B", "c"]


arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

p arr2 # => ["cba", "def"]
p arr1 # => ["cba", "def"]

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

p arr1 # => ["a", "b", "c"]
p arr2 # => ["A", "B", "C"]

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

p arr1 # => ["A", "B", "C"]
p arr2 # => ["A", "B", "C"]