# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.start_with?("B")
    puts index
    break
  end
end


p flintstones.index { |name| name[0, 2] == "Be" }
