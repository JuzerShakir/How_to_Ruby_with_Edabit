######### Build on 03.12.2020
######### Ruby version ruby 2.7.2p137

def numAlpha str
	# this generates an array of alphabets from a-z
	alphabets = ('A'..'Z').to_a
	# this generates an array of alphabets from 0-25
	num = (0..25).to_a

	# zip returns array of arrays where it joins 2 arrays where first element of..
	# both arrays become 1st array of an array.

	#to.h converts array of an array to hash ...
	# ..where first element of first array will be key and second its value, and so for all arrays
	alpha_num_h = alphabets.zip(num).to_h

	# an output string
	output = String.new

	# loops through each char of users input
	str.each_char do |char|
		# fetch will find key of that char in the hash, converts to string and space
		output << (alpha_num_h.fetch(char)).to_s + " "

	end
	# we remove last space as its not needed
	return output.delete_suffix(' ')
end

print 'Enter any letters in UPPERCASE: '
str = gets.chomp
# incase input was not in UPPERCASE
str.upcase!

p numAlpha str
