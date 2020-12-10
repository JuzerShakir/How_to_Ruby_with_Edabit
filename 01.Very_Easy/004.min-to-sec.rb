#######
=begin
Write a function that takes an integer minutes and converts it to seconds.
=end
#######

# func for conversion
def min2sec min
	#since each min has 60 sec
	sec = min * 60
	
	return sec
end

# asks user for the num
print "Enter number of minutes to convert to secs: "
# gets the number, eliminates enter key press and converts input num to int
min = gets.chop.to_i

# calls function and outputs result
puts min2sec min
