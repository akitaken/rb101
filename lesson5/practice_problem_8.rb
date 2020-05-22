# Using the each method, write some code to output all of the vowels from the strings.


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# create an empty vowel array
# iterate through the hash
# - iterate through the values for each key
#  - iterate through letters for each value
#   - check if the letter is included in the "aeiou" set
#     - if yes, add to the vowel_array
# print the vowel array

vowels = "aeiou"
vowels_present = []

hsh.each do |_,value|

  value.each do |word|

    word.chars.each do |letter|
      vowels_present << letter if vowels.include?(letter)
      
    end
    
  end
  
end

p vowels_present

# Create a hash of the vowel and its frequency

vowel_count = {}

for vowel in vowels_present
  if vowel_count[vowel]
    vowel_count[vowel] += 1
  else
    vowel_count[vowel] = 1
  end  
end

# Print out the frequency for each vowel

vowel_count.each do |k, v|

  puts "#{k}: #{v}"
  
end

