#########
######### Ruby version ruby 2.7.2p137

def inch2feet inch
	# 12 inches = 1 foot
	feet = inch / 12
	return feet
end

print "Enter no. of inches: "
inch = gets.chop.to_i

puts inch2feet inch
