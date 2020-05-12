def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # pumpkins
puts "My array looks like this now: #{my_array}"    # ["pumpkins", "rutabaga"]

p not_so_tricky_method(my_string, my_array)
