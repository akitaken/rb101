
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter > strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    puts strings[counter - 1] + " " + counter.to_s
    counter += 1
  end

  lengths
end


result = string_lengths 'To be or not to be'

p result