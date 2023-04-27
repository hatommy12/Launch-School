=begin
def crunch(string)
  result = ""
  string.split.map do |word|
    temp_word = []
    word.chars.map do |char|
      temp_word.push(char) if temp_word[-1] != char
    end
    result += temp_word.join + ' '
  end
  result[0..-2]
end
=end

=begin
def crunch(string)
  index = 0
  crunch_text = ''
  while index < string.size
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end
=end

def crunch(string)
  p string.match(/\w+/)[0..-1]  
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double',
crunch('4444abcabccba') == '4abcabcba',
crunch('ggggggggggggggg') == 'g',
crunch('a') == 'a',
crunch('') == ''