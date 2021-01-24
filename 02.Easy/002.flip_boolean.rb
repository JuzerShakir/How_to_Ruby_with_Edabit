########
########## Ruby version ruby 2.7.2p137
=begin
Create a function that reverses a boolean value and returns the string
"boolean expected" if another variable type is given.

reverse(true) ➞ false

reverse(false) ➞ true

reverse(0) ➞ "boolean expected"

reverse(nil) ➞ "boolean expected"

=end
########

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
