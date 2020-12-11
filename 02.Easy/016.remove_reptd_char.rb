#########
=begin
Create a function that will remove any repeated charcter(s) in a word passed to 
the function. Not just consecutive characters, but characters repeating anywhere in 
the input.

	unrepeated("hello") ➞ "helo"

	nrepeated("aaaaa") ➞ "a"

	unrepeated("WWE!!!") ➞ "WE!"

	unrepeated("call 911") ➞ "cal 91"
	
=end
#########

def unrepeated str
	# REMOVES DUPLICATE CHAR
	str.squeeze!
end

puts "Enter a string: "
str = gets.chomp

puts unrepeated str
