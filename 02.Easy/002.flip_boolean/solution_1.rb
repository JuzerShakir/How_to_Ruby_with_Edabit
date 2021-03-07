########
########## Ruby version ruby 2.7.2p137

def reverse b
	# casecmp checks if string is true regardless of upper and lower character given by user
	# true, if 'true'
	if b.casecmp?("true")
		# boolean will be flipped!
		return false
	# true, if 'false',
	elsif b.casecmp?('false')
		# boolean will then be flipped!
		return true
	# if string doesn't matches to users input
	else
		return "boolean expected"
	end
end

print "Enter a boolean to flip: "
b = gets.chomp

p reverse b
