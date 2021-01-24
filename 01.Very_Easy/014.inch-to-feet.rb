#########
######### Ruby version ruby 2.7.2p137
=begin
Create a function that accepts a measurement value in inches and returns
the equivalent of the measurement value in feet.
=end
#########


def inch2feet inch
	# 12 inches = 1 foot
	feet = inch / 12
	return feet
end

print "Enter no. of inches: "
inch = gets.chop.to_i

puts inch2feet inch
