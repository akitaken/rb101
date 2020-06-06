one = [['a'], ['b'], ['c']]
two = [['1'], ['2'], ['3'], ['4']]

three = one.map do |letter|
  two.map do |num|
    (letter + num)
  end
end

# p three.flatten(1)

