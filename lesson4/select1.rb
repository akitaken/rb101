alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_characters = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_characters << current_char
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_characters