NUMBER_TO_WORD = %w(zero one two three four five six seven eight nine ten
                    eleven twelve thirteen fourteen fiftheen sixteen seventeen
                    eighteen nineteen twenty) 

def alphabetic_number_sort(arr)
  arr.map { |index| NUMBER_TO_WORD[index] }.sort.map do |word|
    NUMBER_TO_WORD.index(word)
  end
end


puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]