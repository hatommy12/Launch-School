# Find the highest value in a collection

# Pseudo Code
=begin
initialize max variable as 0
1. Iterate over the collection
  - if current value is greater than max, set max as current value
2. print max


Given a collection of integers

Iterate through the collection one by one.
  - save the first value as the starting value
  - for each iteration, compare the saved value with the current value
  - if current value is greater than saved value, 
    - saved value is reassigned to current value
  - other current value is less than saved value
    - move onto the next iteration
  
return the max value after the interations


# formal pseudo code
START

# Given a collection of integers called 'numbers'

SET iterator = 1
SET saved_number = value within numbers array at space 1

while iterator <= length of numbers
  SET current_number = value of numbers at space 1
  IF saved_number <= current_number
    saved_number = current_number
  
  iterator += 1

PRINT saved_number