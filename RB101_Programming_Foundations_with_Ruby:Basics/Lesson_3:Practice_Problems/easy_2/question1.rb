ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.fetch("Spot", "Spot not present")
puts ages["Herman"]
puts ages.has_key?("Spot")