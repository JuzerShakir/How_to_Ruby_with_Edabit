########
########## Ruby version ruby 2.7.2p137
=begin
Create a function that takes two numbers as arguments and return their sum.
=end

# sums up the values
def sum a, b
	return a + b
end

puts "Enter 2 numbers to you want to add up:"
a = gets.chop.to_i
b = gets.chop.to_i

#calls the func for the output
puts sum a, b
