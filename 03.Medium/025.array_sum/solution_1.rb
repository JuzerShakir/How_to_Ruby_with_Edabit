########## Build on 07.12.2020
########## Ruby version ruby 2.7.2p137

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
