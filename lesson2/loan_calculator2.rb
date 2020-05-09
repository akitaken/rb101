require 'yaml'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

### Set up methods #########
def messages(message, lang=LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
end

############################

# Greet the user
prompt(messages('welcome'))

name = ''

loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt("#{messages('greeting')} #{name}!")

# main calculation loop
loop do
  # Ask for the loan amount
  loan_amount = ''
  loop do
    prompt(messages('loan_amount'))
    loan_amount = gets.chomp

    if loan_amount.to_f <= 0 || loan_amount.empty?
      prompt(messages('not_valid_float'))
    else
      break
    end
  end

  # Ask for the Annual Percentage Rate (APR)
  annual_rate = ''
  loop do
    prompt(messages('annual_rate'))
    annual_rate = gets.chomp

    if annual_rate.empty? || annual_rate.to_f <= 0
      prompt(messages('not_valid_float'))
    else
      break
    end
  end

  # Ask for the loan duration
  loan_duration_years = ''
  loop do
    prompt(messages('loan_duration_years'))
    loan_duration_years = gets.chomp

    if loan_duration_years.empty? || loan_duration_years.to_i <= 0
      prompt(messages('not_valid_integer'))
    else
      break
    end
  end

  # Calculate the monthly loan repayment
  monthly_rate = annual_rate.to_f / 100 / 12
  loan_duration_months = loan_duration_years.to_i * 12

  monthly_repayment = loan_amount.to_f * (monthly_rate /
                      (1 - (1 + monthly_rate)**(-loan_duration_months)))

  # Return the monthly loan repayment
  repay_msg = "#{messages('currency')}#{format('%02.2f', monthly_repayment)}"
  prompt("#{messages('give_repayment')} #{repay_msg}")

  # Ask if the user wants to calculate another loan repayment
  prompt(messages('recalculate'))
  answer = gets.chomp

  break unless answer.downcase.start_with?(messages('recalculate_letter'))
end

prompt(messages('end'))
