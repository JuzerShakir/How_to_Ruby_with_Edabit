###########
########## Ruby version ruby 2.7.2p137

# this function increament the user input by 1
def next_num num
	#will return ans on call on the func
	return num + 1
end

# asks user to enter a number
print "Enter a number you want to increament by 1: "

# num var takes the user input, '.chop' clears the 'enter' key user presses while submitting the value and '.to_i; converts input to int
num = gets.chop.to_i

# calls function and gives output
puts next_num num
