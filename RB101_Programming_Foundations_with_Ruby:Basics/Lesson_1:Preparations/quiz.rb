def string_lengths(sentence)

  strings = sentence.split

  strings.map { |chars| chars.length }
end

# works, checks out to me


def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end
# returns a list of words? I thought it would be integers
# it's because it's implicitly returning strings!!


def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end
# solid solution


def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end
# until counter == strings.size prevents it from getting the last number because counter started from 1
# and not 0

p string_lengths("Hello there stranger")