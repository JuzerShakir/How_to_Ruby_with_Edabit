#########
######### Ruby version ruby 2.7.2p137

# Pre-defined class
require 'prime'

def is_prime n
	# returns a boolean value
	return n.prime?
end

print "Enter any no.: "
n = gets.chomp.to_i

puts is_prime n
