#  m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months


### Set up methods #########

def prompt(message)
  puts ("=> #{message}")
end

############################

# Greet the user

prompt("Welcome to the Loan Monthly Repayment Calculator!")
prompt("What is your name?")

name = gets.chomp

prompt("Hi #{name}!")

# Ask for the loan amount

prompt("What is the loan amount? E.g. 10000")

loan_amount = gets.chomp.to_f

# Ask for the Annual Percentage Rate (APR)

prompt("What is the Annual Percentage Rate? E.g. 0.10")

annual_rate = gets.chomp.to_f
monthly_rate = annual_rate / 12

# Ask for the loan duration

prompt("What is the loan duration in years?")

loan_duration_years = gets.chomp.to_f
loan_duration_months = loan_duration_years * 12


# Calculate the monthly loan repayment

monthly_repayment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_months)))

result = monthly_repayment.round


# Reture the monthly loan repayment

prompt("Your monthly loan repayment will be $#{result}.")