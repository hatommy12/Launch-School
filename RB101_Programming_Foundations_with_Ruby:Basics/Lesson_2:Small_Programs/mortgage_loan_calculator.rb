# Mortgage Loan Calculator
require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

MONTHS_IN_YEAR = 12
PERCENT_TO_DECIMAL = 100

def prompt(message)
  puts "=> #{message}"
end

def float?(num)
  /^\d+\.?\d*%?/.match(num)
end

def check_input(input, invalid_message)
  if /^[a-zA-Z]+/.match(input)
    prompt(MESSAGES['no_letters_allowed'])
  elsif input.to_f.zero?
    prompt(MESSAGES['no_zero_loan'])
  elsif float?(input)
    return input
  else
    prompt(MESSAGES[invalid_message])
  end
end

def get_loan_amount
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    loan_amount.delete! ','
    return loan_amount if check_input(loan_amount, 'invalid_loan_amount')
  end
end

def get_apr
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    apr.delete! ','
    return apr if float?(apr)
    prompt(MESSAGES['invalid_apr'])
  end
end

def get_loan_duration
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration = gets.chomp
    loan_duration.delete! ','
    return loan_duration if check_input(loan_duration, 'invalid_duration')
  end
end

def calculate_monthly_loan_duration(yearly_loan_duration)
  yearly_loan_duration.to_f * MONTHS_IN_YEAR
end

def calculate_monthly_interest_rate(apr)
  (apr.to_f / 12.0) / PERCENT_TO_DECIMAL
end

def calculate_monthly_payment(loan_amount, monthly_interest_rate,
                        monthly_loan_duration)
  if monthly_interest_rate.zero?
    loan_amount.to_f / monthly_loan_duration.to_f
  else
    loan_amount.to_f * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate)**(-monthly_loan_duration.to_f)))
  end
end

def format_number_with_commas(number)
  decimal = format('%.02f', number)[-3..] if float?(number)
  reversed_number = number.to_i.to_s.chars.reverse
  reversed_array = reversed_number.each_slice(3).map {|num| num.push(',')}
  reversed_array.join.reverse[1..] + decimal
end

def display_summary(monthly_loan_duration, monthly_interest_rate, 
                    monthly_payment, loan_amount)
  paid_monthly_interest = ((monthly_payment * monthly_loan_duration) - 
                          loan_amount.to_f) / monthly_loan_duration
  puts '------------------------------------------------------------------'
  prompt("Loan Summary:")
  prompt("Loan Amount: $#{format_number_with_commas(loan_amount)}")
  prompt("Loan Duration: #{monthly_loan_duration.to_i} months")
  prompt("Monthly APR: #{format('%.04f', monthly_interest_rate)}%")
  prompt("Monthly Interest Paid: $#{format('%.02f', paid_monthly_interest)}")
  puts "------------------------------------------------------------------"
  prompt("Your Monthly Payment is $#{format('%.02f', monthly_payment)}")
end

def play_again?
  prompt(MESSAGES['again?'])
  answer = gets.chomp.downcase
  /^y[e]?[as]?[h]?$/.match(answer)  
end

prompt(MESSAGES['welcome'])

loop do
  system('clear')
  loan_amount = get_loan_amount
  apr = get_apr
  yearly_loan_duration = get_loan_duration

  monthly_loan_duration = calculate_monthly_loan_duration(yearly_loan_duration)
  monthly_interest_rate = calculate_monthly_interest_rate(apr)
  monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate,
                                              monthly_loan_duration)
  system('clear')
  display_summary(monthly_loan_duration, monthly_interest_rate, monthly_payment,
  loan_amount)
  break unless play_again?
end

prompt(MESSAGES['ending_message'])
