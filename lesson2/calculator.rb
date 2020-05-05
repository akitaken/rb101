# asks for two numbers

Kernel.puts("What is your first number?")
first_num = Kernel.gets().chomp().to_i

Kernel.puts("What is your second number?")
second_num = Kernel.gets().chomp().to_i

# asks for the type of operation to perform: add, subtract, multiply or divide

Kernel.puts("What operation shall I perform?")
Kernel.puts("add, subtract, multiply or divide")
action = Kernel.gets().chomp()

#  displays the result

case action
when "add"
  Kernel.puts(first_num + second_num)
when "subtract"
  Kernel.puts(first_num + second_num)
when "multiply"
  Kernel.puts(first_num + second_num)
when "divide"
  if second_num == 0
    Kernel.puts("Can't divide by 0")
  else
    Kernel.puts(first_num + second_num) 
  end

else
  Kernel.puts("that's the wrong thing!")
end
