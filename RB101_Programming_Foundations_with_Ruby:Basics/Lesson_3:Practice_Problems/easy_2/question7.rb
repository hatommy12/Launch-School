flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

p flintstones.push("Dino", "Hoppy")
p flintstones.concat([%w(Dino Hoppy)]).flatten