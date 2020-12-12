######### Build on 03.12.2020
=begin
Create a function that converts a string of letters to their respective number 
in the alphabet.

A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U...	
0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20..

alph_num("XYZ") ➞ "23 24 25"

alph_num("ABCDEF") ➞ "0 1 2 3 4 5"

alph_num("JAVASCRIPT") ➞ "9 0 21 0 18 2 17 8 15 19"

Make sure the numbers are spaced.
All letters will be UPPERCASE.
=end
#########

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
