#########
########## Ruby version ruby 2.7.2p137
=begin
Create a function that returns the mean of all digits.

	mean(42) ➞ 3

	mean(12345) ➞ 3

	mean(666) ➞ 6

The mean of all digits is the sum of digits / how many digits there are
(e.g. mean of digits in 512 is (5+1+2)/3(number of digits) = 8/3=2).
=end
#########

def mean num
	#length of number
	itr = num.length
	total = 0

	itr.times do |n|
		total += num[n]
	end
	# mean
	return total/itr
end

puts "Enter any 1 number: "
# this will give an array where each element is a single num converted to int
num = gets.chomp.split('').map(&:to_i)

p mean num
