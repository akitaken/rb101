alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet_with_spaces = alphabet.split('').join(" ")

p alphabet_with_spaces


counter = 0

loop do
  break if counter >= alphabet_with_spaces.size
  if alphabet_with_spaces[counter] != " "
    puts alphabet_with_spaces[counter]
  end
  counter += 1
end