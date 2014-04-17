time = Time.new
time2 = time + 60 # one minute later.

puts time
puts time2

puts Time.local(2000,1,1)
puts Time.local(1975,3,2,4,16)
# parentheses are to group the parameters
# to local together, otherwise,
# puts might start thinking those are its parameters.

puts Time.gm(1955,11,5)

puts time2-time