#######
=begin
Create a function that will put the first argument, a character, 
between every word in the second argument, a string.
=end
#######

def add c, str
	# c replaces space character in str, '!' makes sure that changes are saved in original str 
	str.gsub!(' ', c)
	return str
end

puts "Enter a character a-z and then a string, separated by commas: "
c, str = gets.chomp.split(',')

p add c, str
