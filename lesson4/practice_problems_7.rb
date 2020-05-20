# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

frequency = {}

statement.each_char do |letter|
  if frequency.include?(letter)
    frequency[letter] += 1
  else
    frequency[letter] = 1
  end
end

p frequency