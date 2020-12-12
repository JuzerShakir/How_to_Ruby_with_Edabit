########## Build on 07.12.2020
=begin
Return the total number of arrays inside a given array.

num_of_subarrays([[1, 2, 3]]) ➞ 1

num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 3

num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 4

num_of_subarrays([1, 2, 3]) ➞ 0
=end
###########

def count arr
	# Since every array starts with '[' brackets, we count these, and thats how we get
	#...nested arrays in an array!
	return str.count('[')
end

puts "Enter in form of an array :"
# we are not converting to an array and taking input as string...
str = gets.chomp

puts count str
