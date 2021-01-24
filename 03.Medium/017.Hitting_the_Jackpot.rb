########## Build on 03.12.2020
######### Ruby version ruby 2.7.2p137
=begin
Create a function that takes an array (slot machine outcome) and returns true if
all elements in the array are identical, and false otherwise. The array will contain
4 elements.

test_jackpot(["abc", "abc", "abc", "abc"]) ➞ true

test_jackpot(["SS", "SS", "SS", "SS"]) ➞ true

test_jackpot(["&&", "&", "&&&", "&&&&"]) ➞ false

test_jackpot(["SS", "SS", "SS", "Ss"]) ➞ false

The elements must be exactly identical for there to be a jackpot.

=end
##########

def jackpot a
	# uniq method returns 1 element of its all other identical elements
	# since we want to know if all elements are same, we give uniq, it will return..
	#..1 element if all elements are identical of an array
	jack = a.uniq

	if jack.length == 1 then true else false end
end

puts "Enter an array, each element separated by comma: "
a = gets.chomp.split(',')

p jackpot a
