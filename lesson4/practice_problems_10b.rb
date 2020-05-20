# Given the munsters hash below
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior).
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Iterate through the munsters hash
#- For each name, assign an age_group
#  - if 0-17: kid
#  - if 18 - 64: adult
#  - if 65+: senior


munsters.each do |key,value|
  case munsters[key]["age"]
  when 0..18
    value["age_group"] = "kid"
  when 19..65
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
    
end

p munsters

