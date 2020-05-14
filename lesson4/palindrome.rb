
# Algorithm:
# - initialise a result variable to an empty array
# - create an array named substring_arr that contains all of the substrings of the input string that are at least 2 characters long.
# - loop through the words in the substring_arr array.
# - if the word is a palindrome, append it to the result array
# - return the result array

# substrings Method
# ======================
# - create and empty array called 'result' that will contain all the required substrings
# - initialise variable start_substring_idx and assign 0 to it.
# - initialise variable end_substring_idx and assign value of start_substring_idx +1 to it. 
# - Enter loop which will break when start_substring_idx is equal to str.size
# - Withn that loop enter another loop that will break if end_substring_idx is equal to str.size
#  - append to the result array part of the string from start_substring_idx to end_substring_idx
#  - increment 'end_substring_idx' by 1.
#  - end the inner loop
#  - increment 'start_substring_idx' by 1.
#  - reassign 'end_substring_idx' to 'start_substring_idx += 1'
# - end outer loop
# return 'result' array

# is_palindrome? method
# ======================
# - inside the "is_palindrome?" method, check whether the string value is equal to its reversed value. You can use the String#reverse method

# palindrome_substrings method
# ============================
# - initialise a result variable to an empty array
# - create an array named 'substring_arr' that contains substrings of the input string that are at least 2 characters long
# - loop through the words in the substring_arr array:
#  - if the word is a palindrome, append it to the results array
# - return the results array 

def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == str.size
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end

p substrings("hel lo")

def is_palindrome?(substring)
  substring == substring.reverse
end

p is_palindrome?("helleh")
p is_palindrome?("no")

# palindrome_substrings method
# ============================
# - initialise a result variable to an empty array
# - create an array named 'substring_arr' that contains substrings of the input string that are at least 2 characters long
# - loop through the words in the substring_arr array:
#  - if the word is a palindrome, append it to the results array
# - return the results array 

def palindrome_substrings(array)
  result = []
  substring_arr = array.select {|n| n.size > 1}
  counter = 0
  loop do
    break if counter == substring_arr.size
    if is_palindrome?(substring_arr[counter])
      result << substring_arr[counter]
    end
    counter += 1
  end
  result
end

test_arr = ["helleh", "no", "mum"]

p palindrome_substrings(test_arr)

def find_palindromes(str)
  palindrome_substrings(substrings(str)).uniq
end

p find_palindromes("hello world helleh")




