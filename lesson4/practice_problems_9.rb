def titlize(str)
  # str.split.map(&:capitalize).join(" ")

  str.split.map { |word| word.capitalize}.join(' ')
end


words = "the flintstones rock"

puts titlize(words)