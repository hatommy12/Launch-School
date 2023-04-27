def swap(string)
  word_arr = string.split.map do |word|
    word.size == 1 ? word : word[-1] + word[1..-2] + word[0]
  end
  word_arr.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si',
swap('Abcde') == 'ebcdA',
swap('a') == 'a'