########## Build on 07.12.2020
######### Ruby version ruby 2.7.2p137
=begin
Arrays can be mixed with various types. Your task for this challenge is to sum all the
number elements in the given array. Create a function that takes an array and returns
the sum of all numbers in the array.

numbers_sum([1, 2, "13", "4", "645"]) ➞ 3

numbers_sum([true, false, "123", "75"]) ➞ 0

numbers_sum([1, 2, 3, 4, 5, true]) ➞ 15

=end
##########

def sum arr
	# instead of finding just numbers or ints we find all string, floats etc
	# ...empty array for that
	unreq_arr = []
	# this will extract all the elements that we dont require or not an int from input
	unreq_arr = arr.select do |ele| ele.match(/\D/) end

	# an empty array for ints
	int_arr = []
	# now we substract the unwanted elements from input and this will give us just the ints
	# since all inputs taken from user was string, we convert array of nums to int
	int_arr = (arr - unreq_arr).map(&:to_i)

	# will return sum of all elements
	return int_arr.sum
end

puts "Enter an array :"
arr = gets.chomp.split(',')

p sum arr
