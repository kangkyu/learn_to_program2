# Happy birthday! Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.

puts "what is your birth year"
year = gets.chomp
puts "what is your birth month"
month = gets.chomp
puts "what is your birth day"
day = gets.chomp
num = Time.new - Time.local(year,month,day)
puts "SPANK!\n" * (num/60/60/24/365).to_i