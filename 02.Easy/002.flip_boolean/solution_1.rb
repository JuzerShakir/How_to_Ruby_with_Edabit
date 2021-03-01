########
########## Ruby version ruby 2.7.2p137

def reverse b
	# casecmp checks if string is true regardless of upper and lower character given by user
	# returns boolean value, if true, boolean will then be flipped!
	if b.casecmp?("true")
		return false
	#returns boolean value, if false, boolean will then be flipped!
	elsif b.casecmp?('false')
		return true
	# if string doesn't matches to users input
	else
		return "boolean expected"
	end
end

print "Enter a boolean to flip: "
b = gets.chomp

p reverse b
