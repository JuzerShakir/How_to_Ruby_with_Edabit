#########
######### Ruby version ruby 2.7.2p137
=begin
Create a function that takes a string as its argument and returns the string in
reversed order.
=end
#########

def reverse string
	# reverses the string
	return string.reverse
end

print "Enter a string: "
string = gets.chomp

puts reverse string
