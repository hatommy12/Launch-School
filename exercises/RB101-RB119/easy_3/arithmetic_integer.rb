# Arithmetic Integer
num_hash = {
  first: nil,
  second: nil
}

num_hash.keys.each do |key|
  puts "==> Enter the #{key} number:"
  num_hash[key] = gets.chomp.to_i
end

addition = num_hash[:first] + num_hash[:second]
subtraction = num_hash[:first] - num_hash[:second]
product = num_hash[:first] * num_hash[:second]
quotient = num_hash[:first] / num_hash[:second]
remainder = num_hash[:first] % num_hash[:second]
power = num_hash[:first] ** num_hash[:second]

puts '==> ' + num_hash[:first].to_s + ' + ' + num_hash[:second].to_s + ' = ' + addition.to_s
puts '==> ' + num_hash[:first].to_s + ' - ' + num_hash[:second].to_s + ' = ' + subtraction.to_s
puts '==> ' + num_hash[:first].to_s + ' * ' + num_hash[:second].to_s + ' = ' + product.to_s
puts '==> ' + num_hash[:first].to_s + ' / ' + num_hash[:second].to_s + ' = ' + quotient.to_s
puts '==> ' + num_hash[:first].to_s + ' % ' + num_hash[:second].to_s + ' = ' + remainder.to_s
puts '==> ' + num_hash[:first].to_s + ' ** ' + num_hash[:second].to_s + ' = ' + power.to_s