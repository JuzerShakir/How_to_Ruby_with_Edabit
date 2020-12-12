######### Build on 07.12.2020
=begin
Create a function that takes a variable number of arguments, each argument representing 
the number of items in a group, and returns the number of permutations (combinations) 
of items that you could get by taking one item from each group.

combinations(2, 3) ➞ 6

combinations(3, 7, 4) ➞ 84

combinations(2, 3, 4, 5) ➞ 120

Input may include the number zero.
=end
##########

def combination arr
	#mulitplies each element in an array
	combinations = arr.inject(:*)
	return combinations
end

puts "Enter any amount of numbers to know its combinations, each num separated by comma: "
arr = gets.chomp.split(',').map(&:to_i)
# we delete all elements that contain 0
arr.delete(0)

p combination arr
