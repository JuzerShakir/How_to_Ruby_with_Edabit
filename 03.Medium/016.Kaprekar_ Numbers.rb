########### Build on 03.12.2020
=begin

is_kaprekar(3) ➞ false
# n² = "9"
# Left + Right = 0 + 9 = 9 ➞ 9 != 3

is_kaprekar(5) ➞ false
# n² = "25"
# Left + Right = 2 + 5 = 7 ➞ 7 != 5

is_kaprekar(297) ➞ true
# n² = "88209"
# Left + Right = 88 + 209 = 297 ➞ 297 == 297

A Kaprekar Number is a positive integer that, after being squared and split into two 
lexicographical parts, is equal to the sum of the two new numbers obtained:

	If the quantity of digits of the squared number is even, 
		the left and right parts will have the same length.
		
    If the quantity of digits of the squared number is odd, 
		then the right part will be the longer half, with the left part being 
		the shorter or equal to zero if the quantity of digits is equal to 1.

Given a positive integer n implement a function that returns true if it's a 
Kaprekar number, and false if it's not.
=end
############

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
