# Right Triangles

def triangle(height)
  height.times do |idx|
    print ' ' * (height - idx)
    puts '*' * (idx + 1)
  end
end 

triangle(5)
triangle(9)