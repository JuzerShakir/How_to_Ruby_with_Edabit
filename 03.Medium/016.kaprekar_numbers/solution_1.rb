########### Build on 03.12.2020
########### Ruby version ruby 2.7.2p137

def is_kaprekar n
	# Square of n and converts to str
	nsqr = (n.pow(2)).to_s

	# since we want to know length thats why we convert to int to str
	s_nsqr = nsqr.size

	# initilaizing sides
	right = 0
	left = 0

	# half of string length gives us a middle index value of string
	half = s_nsqr / 2

	# if we have a single digit, then that digit will be go to right side
	if s_nsqr == 1
		# converts back to int for calculation
		right = nsqr.to_i

	#will execute for any length of string
	else
		# left side range will 1 less of half since index value starts at 0, converts str to int
		left = nsqr[0..half-1].to_i
		right = nsqr[half..-1].to_i
	end

	# both sides values are totalled and checked if its equal to users input
	if left + right == n then true else false end
end

puts "Enter any integer: "
n = gets.chomp.to_i

p is_kaprekar n
