=begin

Describe the difference between ! and ? in Ruby. 

! is used to indicate that the method has a dangerous effect like it mutates the object

? indicates that it returns a boolean


And explain what would happen in the following scenarios:

what is != and where should you use it?
This means not equal to and it should be used in a conditional that evaluates to a boolean

put ! before something, like !user_name
It forces the object into a boolean which is the opposite of what it is

put ! after something, like words.uniq!
This is a label that indicates the method modifies the object

put ? before something
A ternary operator for if/else

put ? after something
This is a label that indicates that the method returns a boolean

put !! before something, like !!user_name
It forces the object into a boolean object of itself

=end


