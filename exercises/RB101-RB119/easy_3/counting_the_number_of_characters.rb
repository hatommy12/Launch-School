# Counting the Number of Characters

print "Please write a word or multiple words: "
words = gets.chomp
words_list = words.split

characters = 0
words_list.each do |word|
  characters += word.length
end

puts "There are #{characters} characters in \"#{words}\"."