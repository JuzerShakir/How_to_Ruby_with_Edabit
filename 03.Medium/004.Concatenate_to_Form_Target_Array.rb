######### Built on 30.11.2020
######### Ruby version ruby 2.7.2p137
=begin
Create a function that returns true if smaller arrays can concatenate to
form the target array and false otherwise.

	can_concatenate([[1, 2, 3, 4], [5, 6], [7]], [1, 2, 3, 4, 5, 6, 7]) ➞ true

	can_concatenate([[2, 1, 3], [5, 4, 7, 6]], [7, 6, 5, 4, 3, 2, 1]) ➞ true

	can_concatenate([[2, 1, 3], [5, 4, 7, 6, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
	# Duplicate 7s not found in target array.

	can_concatenate([[2, 1, 3], [5, 4, 7]], [1, 2, 3, 4, 5, 6, 7]) ➞ false
	# Missing 6 from target array.

Arrays do not have to be sorted (see example #2).
Arrays should concatenate to create the final array exactly (see examples #3 and #4).
=end
#########

def concatenate outer_a, target
	# since this array is nested we flatten it to give 1 dimensional array, unnested array
	outer_a.flatten!

	# == operator check if both arrays have similar lengths and each element is....
	#...equal to corresponding element of other array.
	# since the input by user will not always be sorted to compare corresponding...
	# ...elements, we give sort method to both arrays and retruns a boolean value
	return outer_a.sort == target.sort
end

# we ask user how many arrays he will enter, based on that we ask that many times for input
print "How many arrays you want to enter?"
# convert str to int
i = gets.chomp.to_i

# defining an empty array which will hold all the arrays of user input, a nested array
outer_a =  []

# each array inputted by user will append to empty array defined above
i.times do
	puts "Enter an array: "
	# , separates each element from array and converts those to int
	inner_a = gets.chomp.split(',').map(&:to_i)
	# the input array appends to existing array
	outer_a << inner_a
end

# this will take an array to which we have to compare the user input array
puts "Enter the target array, each element separated by comma: "
target = gets.chomp.split(',').map(&:to_i)

#calls the func
p concatenate outer_a, target

