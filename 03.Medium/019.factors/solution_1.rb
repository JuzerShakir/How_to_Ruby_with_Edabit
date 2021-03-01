########### Build on 04.12.2020
########### Ruby version ruby 2.7.2p137

def factors n
	# loops through 1 to n to check which numbers give 0 remainder when divided by n
	# return will be list of factors
	n_factors = (1..n).select { |i| n % i == 0}
	return n_factors
end

print 'Enter a positive num to get its factors: '
n = gets.chomp.to_i

p factors n
