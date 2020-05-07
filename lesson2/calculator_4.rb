require 'yaml'

LANGUAGE = 'es'

MESSAGES = YAML.load_file('international_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i().to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end


def operation_to_message(op)
  word =
    case op
    when '1'
      'Adding'
    when '2'
      "Subtracting"
    when '3'
      "Multiplying"
    when '4'
      "Dividing"
    end

  word
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end

end

prompt("Hi #{name}")

loop do #main loop

  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('not_valid', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('not_valid', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiple
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('correct_operator', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} your two numbers... ")


  result = case operator
           when '1'
            number1.to_i() + number2.to_i()
           when '2'
            number1.to_i() - number2.to_i()
           when '3'
            number1.to_i() * number2.to_i()
           when '4'
            number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt(messages('recalculate', LANGUAGE))
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?'y'

end

prompt(messages('end', LANGUAGE))