# Madlibs
words = [:noun, :verb, :adjective, :adverb]
user_words = {}
words.each do |word|
  print "Enter a #{word}: "
  user_words[word] = gets.chomp
end 

puts "Do you #{user_words[words[1]]} your #{user_words[words[2]]} #{user_words[words[0]]} #{user_words[words[3]]}? That's hilarious!"
