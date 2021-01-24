#########
######### Ruby version ruby 2.7.2p137
=begin
Create a function that returns true if a number is prime, and false otherwise.
A prime number is any positive integer that is evenly divisible by only two divisors:
1 and itself.
=end
#########

# Pre-defined class
require 'prime'

def is_prime n
	# returns a boolean value
	return n.prime?
end

print "Enter any no.: "
n = gets.chomp.to_i

puts is_prime n
