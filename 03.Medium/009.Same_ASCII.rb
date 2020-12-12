########## Build on 01.12.2020
=begin
Return true if the sum of ASCII values of the first string is same as the sum of ASCII 
values of the second string, otherwise return false.

	same_ascii("a", "a") ➞ true

	same_ascii("AA", "B@") ➞ true

	same_ascii("EdAbIt", "EDABIT") ➞ false
=end
##########

def ascii x, y
	# bytes gives an array of values where each element of is an ascii value of the char
	ascii_x = x.bytes
	ascii_y = y.bytes
	
	# we now sum all the elements of each array and see if the total is equal
	if ascii_x.sum == ascii_y.sum then true else false end
end

puts "Enter 2 values each separated by comma: "
x, y = gets.chomp.split(',')

p ascii x, y
