def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

result = string_lengths 'To be or not to be'

p result