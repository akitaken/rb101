munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum_ages_from_loop = 0

munsters.each do |k,_|
  if munsters[k]["gender"] == 'male'
    sum_ages_from_loop += munsters[k]["age"]
  end
end

p sum_ages_from_loop

puts "\n====trying using select method===="

sum_from_selection = munsters.select {|k,_| munsters[k]["gender"] == 'male'}.sum do |k,_|
  munsters[k]["age"]
end

p sum_from_selection

puts "\n====launch school solution===="

total_male_age = 0

munsters.each_value do |details|
  puts details # I added this to make things clearer
  total_male_age += details['age'] if details['gender'] == 'male'
end

puts total_male_age



