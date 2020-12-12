########## Build on 02.12.2020
=begin
Write a function that takes an array of elements and returns only the integers.

	return_only_integer([9, 2, "space", "car", "lion", 16]) ➞ 		[9, 2, 16]

	return_only_integer(["hello", 81, "basketball", 123, "fox"]) ➞ 	[81, 123]

	return_only_integer([10, "121", 56, 20, "car", 3, "lion"]) ➞ 	[10, 56, 20, 3]

	return_only_integer(["String",  true,  3.3,  1]) ➞ 				[1]
=end
#########

def intOnly arr
	#\D extracts element which is not a whole number, such as str, float
	# select loops through each element of array
	#returns an array of elements which are not int
	unreq = arr.select { |ele| ele.match(/\D/)}
	
	#now we have an array of element which we dont require,....
	#..we substract this from original array returning elements that are int we need
	# new_arr have all element as whole num
	new_arr = arr - unreq
	
	# since all elements are str we convert to int
	return new_arr.map(&:to_i)
end

puts "Enter an array of elements each separated by comma without the braces: "
arr = gets.chomp.split(',')

p intOnly arr
