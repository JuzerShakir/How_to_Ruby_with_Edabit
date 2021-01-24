#########
######### Ruby version ruby 2.7.2p137
=begin
Create a function that finds each number in the given array that is greater
than every number that comes after it. Your solution should return an array
of the number(s) that meet these criteria.

leader([2, 3, 20, 15, 8, 3]) ➞ [20, 15, 8, 3]
# Note that 20 is greater than all the elements to it's
# right side, similarly 15 and so on.

leader([8, 7, 1, 2, 10, 3, 5]) ➞ [10, 5]
# 10 is greater than all items to the right of it, so include.
# 3 is not greater than all items to the right of it, so exclude.
# 5 is greater than the remaining items, so include.
=end
########

def leader arr
	# let max num be 0 and its index an INTEGER undefined value
	max_num = 0
	max_idx = Integer

	#defining empty array for the highest num in list
	highest_nums = []

	# here the loop will continue until array is not empty
	while arr.length != 0
		# we take max func and it gives highest num from the array
		max_num = arr.max
		# index gives index of max num
		max_idx = arr.index(max_num)
		# we append max num to highest num array
		highest_nums << max_num

		# since we already have found the highest num and its index ....
		# ...and anything to the left of highest num we found is useless...
		#.. we delete that specific range of elements from array, done by slice
		# since we already have max num from the array we dont need it..
		# .. hence we delete all elements from start till max_idx
		arr.slice!(0..max_idx)
	end

	# return an array of highest numbers
	return highest_nums

end

puts "Enter numbers each separated by a comma: "
arr = gets.chomp.split(',').map(&:to_i)

p leader arr
