######
########## Ruby version ruby 2.7.2p137

def divide a, b
	# if remainder of division is 0 then its fully divisible hence true
	if a % b == 0 then true else false end
end

print "Enter 2 numbers for division, separated by commas: "
a, b = gets.chomp.split(',').map(&:to_i)

p divide a, b
