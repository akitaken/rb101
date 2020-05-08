require 'yaml'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')


### Set up methods #########


def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts ("=> #{message}")
end

def valid_number(input)

end


puts MESSAGES['en']['welcome']