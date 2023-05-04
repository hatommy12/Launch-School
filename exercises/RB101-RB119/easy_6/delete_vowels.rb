def remove_vowels(arr_of_str)
  arr_of_str.map do |word|
    word.delete("aeiouAEIOU")
  end
end


puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz),
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht),
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
