def word_sizes(string)
  counted_letters = {}
  counted_letters.default = 0
  string.delete!("^a-zA-Z\s")
  string.split.map do |word|
    counted_letters[word.size] += 1
  end
  p counted_letters
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 },
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 },
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 },
word_sizes('') == {}