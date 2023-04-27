def word_sizes(string)
  counted_letters = {}
  counted_letters.default = 0
  return counted_letters if string.empty?
  string.split.map do |word|
    counted_letters[word.count("^\s")] += 1
  end
  counted_letters
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 },
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 },
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 },
word_sizes('') == {}