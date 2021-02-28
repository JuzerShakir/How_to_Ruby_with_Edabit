##########
########## Ruby version ruby 2.7.2p137

def amazing input
	# capitalizing first character for easier matching.
	input.capitalize!

	# converts users input to array from string
	a_input = input.split()

	# checking first element in array
	if a_input[0] == "Juzer"
		# user has entered desired input
		puts input
	else
		# user has entered undesired input
		puts "#{a_input[0]} is not amazing."
	end
end

# asks user to enter a string
puts "Enter the string: "
input = gets.chop

# calling func and output
puts amazing input
