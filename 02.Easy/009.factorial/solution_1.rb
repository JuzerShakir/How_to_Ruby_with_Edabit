#########
######### Ruby version ruby 2.7.2p137

def fact n
	# since there's no separate func for factorial gamma function with n+1 gives factorial of n
	return Math.gamma(n+1)
	# OR 2nd method where gamma of n * n gives factorial of n
	# return Math.gamma(n) * n
end

puts "Enter a num: "
n = gets.chomp.to_i

puts fact n
