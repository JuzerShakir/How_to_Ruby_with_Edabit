########## Build on 05.12.2020
########## Ruby version ruby 2.7.2p137
=begin

Your job is to create a function, that takes 3 numbers: a, b, c and returns true
if the last digit of a * b = the last digit of c. Check the examples below for an
explanation.


last_dig(55, 226, 5190) ➞ true
# The last digit of 55 is 5, the last digit of 226 is 6, and the last
# digit of 5190 is 0, and the last digit of 5*6 = 30 is 0, which is
# equal to the last digit of 5190(0).

last_dig(12, 215, 2142) ➞ false
# The last digit of 12 is 2, the last digit of 215 is 5, and the last
# digit of 2142 is 2, and the last digit of 2*5 = 10 is 0, which is
# not equal to the last digit of 2142(2).

=end
##########

def last_dig a, b, c
	# after we have taken last char from str we convert to int for multiply except for c
	la = a[-1].to_i
	lb = b[-1].to_i
	lc = c[-1]

	# multiplies a and b converts to str
	lalb = (la * lb).to_s

	#checks if last char is same as last char of c
	if lalb[-1] == lc then true else false end
end

puts 'Enter 3 numbers each separated by comma: '
# will inputs as str
a,b,c = gets.chomp.split(',')

p last_dig a, b, c
