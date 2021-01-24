#########
######### Ruby version ruby 2.7.2p137
=begin

A salesman has a number of cities to visit. They want to calculate the total
number of possible paths they could take, visiting each city once before returning home.
Return the total number of possible paths a salesman can travel, given n cities.

If we have cities A, B and C, possible paths would be:
	A -> B -> C
	A -> C -> B
	B -> A -> C
	B -> C -> A
	C -> B -> A
	C -> A -> B
... which gives us 6 as the possible number of paths.

This challenge is describing a factorial.
=end
##########

def fact n
	# since there's no separate func for factorial gamma function with n+1 gives factorial of n
	return Math.gamma(n+1)
	# OR 2nd method where gamma of n * n gives factorial of n
	# return Math.gamma(n) * n
end

puts "Enter a num: "
n = gets.chomp.to_i

puts fact n
