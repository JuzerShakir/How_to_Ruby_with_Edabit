########
######### Ruby version ruby 2.7.2p137

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
