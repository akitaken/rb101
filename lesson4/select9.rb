def select_letter(sentence, character)
  selected_characters = ''
  counter = 0

  loop do
    current_char = sentence[counter]

    if current_char == character
      selected_characters << current_char
    end

    counter += 1
    break if counter == sentence.size
  end

  selected_characters
end



question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a').size # => "aaaaaaaa"
p select_letter(question, 't').size # => "ttttt"
p select_letter(question, 'z').size # => ""
