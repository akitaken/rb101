one = [['a'], ['b'], ['c']]
two = [['1'], ['2'], ['3'], ['4']]

three = one.map do |letter|
  two.map do |num|
    (letter + num)
  end
end

p three.flatten(1)

apple = 2
pear = 3


loop do
  happy = 1
  apple = 5
  break
end

p apple

def method(pear)
  pear[:player] += 1 
end


score = {player: 0, dealer: 0}

method(score)

p score