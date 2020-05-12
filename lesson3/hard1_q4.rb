def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.length == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
      return true
    end
  end
  false
end

def is_an_ip_number?(word)
  word
end

is_an_ip = "10.4.5.11"
too_short = "10.4.5"
too_long = "10.4.5.9.10"

puts dot_separated_ip_address?(is_an_ip)
puts dot_separated_ip_address?(too_long)
puts dot_separated_ip_address?(too_short)


# Alternatively 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

is_an_ip = "10.4.5.11"
too_short = "10.4.5"
too_long = "10.4.5.9.10"

puts dot_separated_ip_address?(is_an_ip)
puts dot_separated_ip_address?(too_long)
puts dot_separated_ip_address?(too_short)




