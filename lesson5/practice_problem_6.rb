# Given this previously seen family hash, print out the name, age and gender of each family member like this:
# (Name) is a (age)-year-old (male or female).




munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |k,v|
  puts "#{k} is a #{v["age"]}-year-old #{v["gender"]}."
  
end


puts "\n==== Launch School Solution ===="

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}."
  
end

# Note from stackoverflow: each_pair may be a clearer name, since it strongly suggests that two-element arrays containing key-value pairs are passed to the block. They are aliases for each other: they share the same source code.