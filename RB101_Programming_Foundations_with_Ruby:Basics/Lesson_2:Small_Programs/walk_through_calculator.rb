# Walk-Through Calculator

# ask the user for two numbers
# ask the user for an operation to perform
# perform the opertion on the two numbers
# output the results

# answer = Kernel.gets()
# Kernel.puts(answer)
require 'yaml'
configuration_file = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

def number?(num)
  valid_number?(num) || valid_float?(num) 
end

def operation_to_message(operator)
  operation = case operator
              when '1'
                'adding'
              when '2'
                'subtracting'
              when '3'
                'multiplying'
              when '4'
                'dividing'
              end
  operation
end

def display_message(message, language='english')
  configuration_file[language][message]
end 

prompt(configuration_file[:welcome])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name.capitalize}!")

loop do
  number1 = nil
  loop do
    prompt(configuration_file['first_number'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(configuration_file['invalid_number'])
    end
  end

  number2 = nil
  loop do
    prompt(configuration_file['second_number'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(configuration_file['invalid_number'])
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(configuration_file['operator'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

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

  prompt(configuration_file['another_operation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(configuration_file['end_message'])
