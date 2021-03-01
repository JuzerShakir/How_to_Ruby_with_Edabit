########## Build on 02.12.2020
########## Ruby version ruby 2.7.2p137

def discounts prc, d
	# since d is float, return value will be float too
	# will be multiplied by the price to get discount
	d = d/100
	# new arr to hold discount values
	d_a = []

	# loops through each number and returns array of discount float values
	# percentage might have more than 1 decimal place, so we round it off to 1
	d_a = prc.map do |num| (num*d).round(1) end

	# we check if array contains float value other than .5 that can be converted to int
	d_a.length.times do |i|
		#getting array value at that iteration
		num = d_a[i]
		# and converting to string for using regex on it
		num = num.to_s
		#p num

		# using regex to extract any values after decimal places, returns Matchdata
		deci = num.match(/(\d)\z/)
		# calling the value, converting to int
		deci = deci[1].to_i
		#p deci

		# checking if value is other than 5, since we want .5 shown in final output...
		#... we round any other num like 1.2 or 3.4 to int
		if deci != 5
			# replacing that float value to int
			d_a[i] = num.to_i
		end
	end
	# returning array of ints except for .5 decimal floats
	return d_a
end

puts 'Enter a num or nums each separated by commas: '
prc = gets.chomp.split(',').map(&:to_i)

print 'Enter the discount rate as x% or x: '
# d is specified a float so it can give value in decimals when divided by 100
d = gets.chomp.to_f

p discounts prc, d

