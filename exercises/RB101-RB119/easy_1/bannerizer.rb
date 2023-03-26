# Bannerizer
def print_in_box(message)
  width = message.length
  
  num_of_parts = (message.length / 76) + 1
  if width >= 76
    width = 76
    message += ' ' * (76 - (message.length % 76))
  end 
  
  top_bottom_line = '+-' + ('-' * width) + '-+'
  middle_line = '| ' + (' ' * width) + ' |'    
  
  puts top_bottom_line
  puts middle_line
  # wraps the message 
  num_of_parts.times do |index|
    index += 1
    puts '| ' + message[(76*(index-1))...(76*index)] + ' |'
  end
  puts middle_line
  puts top_bottom_line
end 

print_in_box('Taking responsibility - practicing 100 percent responsibility every day - is about seeing ourselves not as right or wrong, but as an agent, chooser, problem solver, and learner in the complex interrelationships of our lives so that we can better integrate with the people and world around us. When we do this, we enjoy a better and more productive way to live and lead.')
print_in_box("Over the years, mostly in retrospect, I learned a variety of lessons, and one of the most important is this: You can't hit a target you can’t see. You can't accomplish wonderful things with your life if you have no idea of what they are. You must first become absolutely clear about what you want if you are serious about unlocking the extraordinary power that lies within you.")