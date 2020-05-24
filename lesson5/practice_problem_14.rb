# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = []


hsh.each_pair do |_, sub_hsh|

  if sub_hsh[:type] == 'fruit'
      new_fruit = sub_hsh[:colors].map {|color| color.capitalize}
      new_arr << new_fruit
  else
    new_arr << sub_hsh[:size].upcase
  end
  
end

p new_arr