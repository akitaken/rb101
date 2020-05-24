# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]



arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


new_arr = arr.sort_by do |arr|

  arr.select do |num|

    num % 2 != 0  # can replace this with num.odd?
    
  end
  
end

p new_arr