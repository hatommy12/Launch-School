if false
  greeting = "hello world"
end

greeting

# should return an error because greeting is never initialized due to the if 
# statement being false

# I was wrong; even if the statement never goes through, variable is still initialized 
# with a nil value

