#########
######### Ruby version ruby 2.7.2p137

def unrepeated str
	# REMOVES DUPLICATE CHAR
	str.squeeze!
end

puts "Enter a string: "
str = gets.chomp

puts unrepeated str
