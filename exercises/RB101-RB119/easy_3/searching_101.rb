# Searching 101

num_list = []
%w(1st 2nd 3rd 4th 5th last).each do |num|
  puts "==> Enter the #{num} number: "
  user_num = gets.chomp.to_i
  num_list.push(user_num)
end

last_num = num_list.pop
if num_list.include?(last_num)
  puts "The number #{last_num} appears in #{num_list}."
else
  puts "The number #{last_num} does not appear in #{num_list}."
end