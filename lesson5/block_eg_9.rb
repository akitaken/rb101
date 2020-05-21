result = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
    element1.partition do |element3|
      element3.size > 0
    end

end

p result

# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

