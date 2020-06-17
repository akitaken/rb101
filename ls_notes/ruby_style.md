# 00 Ruby Style

Text editor tab should be set to 2 spaces.

Indenting should be set to use spaces.

Comments are marked by `#` 

Use snake\_case to define a method, variable or file name. You format snake\_case is by using all lower case letters and separating words with the underscore character. For example:

```ruby
this_is_a_snake_cased_file.rb

forty_two = 42

def this_is_a_great_method

  # do stuff

end
```

A Constant is a variable that will not change in your program. Use all uppercase letters for constants.

```ruby
FOUR = 'four'
FIVE = 5
```

When working with `do...end` blocks, prefer `{}` when the entire code fits on one line.

```ruby
[1, 2, 3].each { |i| # do stuff }
```

Use CamelCase to format a class name

```ruby
class MyFirstClass

end

class MySecondClass

end
```


