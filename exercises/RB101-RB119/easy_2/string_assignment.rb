# String Assignment
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# BOB
# BOB
# this is due to the fact that they're both pointing to the same reference 'bob'. 
# when upcase! gets called, that reference gets mutated, so both changes. 
# in the earlier example, name gets reassigned to a difference reference, therefore they're different