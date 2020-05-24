# Write a method that returns one UUID when called with no parameters.

# each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.


def create_uuid

  alpha_num = ((0..9).to_a + ("a".."f").to_a)
  pattern = [8, 4, 4, 4, 12]
  uuid_array = []

  pattern.each do |num|
    new_code = []
    new_code << alpha_num.shuffle.sample(num)
    uuid_array << new_code.join
  end
  
  p uuid_array.join("-")
end

create_uuid