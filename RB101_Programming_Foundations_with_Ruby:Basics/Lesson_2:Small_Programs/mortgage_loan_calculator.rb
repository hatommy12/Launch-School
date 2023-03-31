# Mortgage Loan Calculator
require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

MONTHS_IN_YEAR = 12
PERCENT_TO_DECIMAL = 100

def prompt(message)
  puts "=> #{message}"
end

def float?(num)
  /^-?\d+\.?\d*%?/.match(num)
end

def get_loan_amount
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    return loan_amount if float?(loan_amount)
    prompt(MESSAGES['invalid_loan_amount'])
  end
end

def get_apr
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    return apr if float?(apr)
    prompt(MESSAGES['invalid_apr'])
  end
end

def get_loan_duration
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration = gets.chomp
    if /^[a-zA-Z]+/.match(loan_duration)
      prompt(MESSAGES['invalid_number'])
    elsif loan_duration.to_f.zero?
      prompt(MESSAGES['zero_loan_duration'])
    elsif float?(loan_duration)
      return loan_duration
    else
      prompt(MESSAGES['invalid_duration'])
    end
  end
end

def get_monthly_loan_duration(yearly_loan_duration)
  yearly_loan_duration.to_f * MONTHS_IN_YEAR
end

def get_monthly_interest_rate(apr)
  (apr.to_f / 12.0) / PERCENT_TO_DECIMAL
end

def get_monthly_payment(loan_amount, monthly_interest_rate,
                        monthly_loan_duration)
  if monthly_interest_rate.zero?
    loan_amount.to_f / monthly_loan_duration.to_f
  else
    loan_amount.to_f * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate)**(-monthly_loan_duration.to_f)))
  end
end

prompt(MESSAGES['welcome'])

loop do
  system('clear')
  loan_amount = get_loan_amount
  apr = get_apr
  yearly_loan_duration = get_loan_duration

  monthly_loan_duration = get_monthly_loan_duration(yearly_loan_duration)
  monthly_interest_rate = get_monthly_interest_rate(apr)
  monthly_payment = get_monthly_payment(loan_amount, monthly_interest_rate,
                                        monthly_loan_duration)

  prompt("Your monthly payment is $#{format('%.02f', monthly_payment)}")
  prompt(MESSAGES['again?'])
  answer = gets.chomp
  break unless /^y[e]?[as]?[h]?$/.match(answer)
end

prompt(MESSAGES['ending_message'])
