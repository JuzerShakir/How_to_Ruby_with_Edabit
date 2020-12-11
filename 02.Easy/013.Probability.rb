########
=begin
Given an array of numbers and a value n, write a function that returns the 
probability of choosing a number greater than or equal to n from the array. 
The probability should be expressed as a percentage, rounded to one decimal place.

probability([5, 1, 8, 9], 6) ➞ 50.0

probability([7, 4, 17, 14, 12, 3], 16) ➞ 16.7

Precent probability of event = 
		100 * (num of favourable outcomes) / (total num of possible outcomes)
=end
########

# counting probability 
def prob nums, n
	# empty array for boolean values to see how many times is an element of nums array greater than n
	b = []
	# loops length of an array, where i is the index of an array
	nums.length.times do |i|
		# if n is greater than that element then 1 is appended to b array, else 0
		if n <= nums[i] then b << 1 else b << 0 end
	end
	
	# probability formula
	# we take sum of boolean array by sum method where we want float value to be returned
	# divided by length of nums array which is the possible of outcomes
	probability = ((100 * b.sum())).to_f / nums.length
	
	# rounding the float value 1 decimal place
	return probability.round(1)
end

puts "Enter series of nums each separated comma: "
nums = gets.chomp.split(',').map(&:to_i)
print "Enter a num whose probability will be counted in the above array:"
n = gets.chomp.to_i

puts prob nums, n
