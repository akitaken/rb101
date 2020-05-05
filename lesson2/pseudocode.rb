=begin

# EX1: a method that returns the sum of two integers

## casual pseudocode

Given two integers

Add the first integer to the second integer 

Return the value

----

## formal pseudocode

START

# Give two integers: "num1" and "num2"

SET result = num1 + num2

PRINT result

END

****

# EX2: a method that takes an array of strings, and returns a string that is all those strings concatenated together

## casual pseudocode

Given a collection of strings

Create a new empty string to save the concatenated string

Iterate through the collection one by one:
- save the first string as the starting concatenated string
- for each iteration, add the current string to the concatenated string
- reassign the result to the concatenated string
- move to the next string in the collection

After iterating through the collection, return the concatenated string

----

## formal pseudocode

START

# Given a collection of strings "strings"

SET iterator = 1
SET concatenated_string = ""

WHILE iterator <= length of strings
  SET current_string = value within "strings" at space "iterator"

  result = concatenated_string + current_string

  concatenated_string = result

  iterator = iterator + 1


PRINT concatenated_string 


END

----

# EX3: a method that takes an array of integers, and returns a new array with every other element

# Given a collection of integers

Create a new empty collection of integers 

Iterate through the collection of integers:
- if the position of the integer in the collection is an even number
  - add the integer to the new collection
- otherwise
  - ignore it

After iterating through the collection return the new collection of integers

----

START

# Given a collection of integers called "numbers"

SET iterator = 1
SET new_array = []

WHILE iterator <= length of numbers
  SET current_number = value within the numbers collection at iterator place 1
  IF iterator / 2 == 0 (it's an even number)
    new_array << current_number
  ELSE
    go to the next iteration

  iterator = iterator + 1

PRINT new_array

END


=end