# trying out coding tips

names = ['kim', 'joe', 'sam']

names.each { |_| puts "got a name"}

names.each_with_index do |_, idx|
  puts "#{idx+1}. got a name!"
end

for i in 1..10 do
  puts "Hello Number #{i}!"
end
