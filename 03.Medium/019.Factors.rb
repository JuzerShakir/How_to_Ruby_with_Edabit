########### Build on 04.12.2020
=begin
Create a function that takes a number as its argument and returns an array of all 
its factors.

factorize(12) ➞ [1, 2, 3, 4, 6, 12]

factorize(4) ➞ [1, 2, 4]

factorize(17) ➞ [1, 17]

The input integer will be positive.
=end
##########

def factors n
	# loops through 1 to n to check which numbers give 0 remainder when divided by n
	# return will be list of factors
	n_factors = (1..n).select { |i| n % i == 0}
	return n_factors
end

print 'Enter a positive num to get its factors: '
n = gets.chomp.to_i

p factors n
