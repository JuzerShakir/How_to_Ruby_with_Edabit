########### Built on 01.12.2020
=begin
https://edabit-challenges.s3.amazonaws.com/matchstick_houses.png 

Create a function that takes a number (step) as an argument and returns the number 
of matchsticks in that step. See step 1, 2 and 3 in the image link above.

	match_houses(1) ➞ 6

	match_houses(4) ➞ 21

	match_houses(87) ➞ 436
=end
############

def match_houses n
	#formula 
	# six sticks are required to make 1 house (n*6)
	# for 2 houses, since houses are joint from the sides, we require 1 stick less
	# for 3 houses, we require 2 stick less because they're joint.
	# for 4 houses, we require 3 stick less and so on.. hence (n - 1)
	houses = (n * 6)-(n - 1)
	return "Possible no. of houses you can make with #{n} matchsticks is #{houses}."
end

puts "Enter number of matchsticks you have: "
n = gets.chomp.to_i

puts match_houses n
