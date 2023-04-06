# Method that returns the sum of two integers
=begin

define a method that accepts two arguments
  - sum the two integers 
  - return the value
  
START

Def sum(int1, int2)
  SET result = int1 + int2
  return sum

GET int1 as integer
GET int2 as integer
READ sum(int1, int2)

END

# Method that takes an array of strings and return a string that is all those things concatenated together

define a method with one arguement for strings
  - intialize a variable for the concatenated string
  - use a loop to iterate the array of strings
    - for each value, concatenate the current value to the concatenated string
  -return concatenated string value
  
get an array of strings 
cal the method and insert this array as an arguement

# formal
START

Def concat_strings(array_of_strings)
  -SET concat_string = ''
  -FOR string in array_of_strings
    -concat_string += string
  -return concat_string
  
GET array_of_strings
PRINT concat_strings(array_of_strings)

END

# a method that takes an array of integers; returns a new array with every other element from original array

define a method that takes an array of integers 
  - initialize new array
  - iterate through each value of array
    - starting with the first value of array; add it to the new array
    - every iteration should be added to the new array 
    - increase iterator by 2 instead of the usual 1
  -return new array

#formal
START

Given a collection of integers called int_array

def other_element(int_array)
  SET new_array = []
  SET iterator = 0
  WHILE iterator <= length of int_array
    new_array.push(int_array[iterator])
    iterator += 2
  return new_array
  
END

# a method that determines the index of the 3rd occurrence of a given character in a string. For instance 
if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). 
If the given character does not occur at least 3 times, return nil.


define a method that takes a string and character as an arguement
  - intiialize a count variable
  - iterate through the string for each character
    - if the current character is equal to the provided character, increase count by 1
    - if count is equal to 3; return the index (break out of method)
  - return nil because count isn't >= to 3
  
# formal
START

def third_occurence(string, character)
  SET count = 0
  SET index = 0
  FOR char in string
    IF character == char
      count += 1
    IF count == 3
      return index
    index += 1
  return nil
  
# a method that takes two arrays of numbers and returns the result of merging the arrays. 
The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. 
For instance:
merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

define a method that takes two arrays as arguements
  - initialize index at 0
  - initialize an array for the result
  - make a loop for one array
    - array one at index, append to new array
    - array two at index, append to new array
    - increase value of index by one
  return result array
  
# formal 
START

def merge(first_array, second_array)
  SET index = 0
  SET merged_array = []
  while index < length of first array
    append first_array at index to merged_array
    append second_array at index to merged_array
    index += 1
  return merged_array
  
=end
  