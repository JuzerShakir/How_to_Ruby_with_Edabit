#######
######### Ruby version ruby 2.7.2p137

def add c, str
	# c replaces space character in str, '!' makes sure that changes are saved in original str
	str.gsub!(' ', c)
	return str
end

puts "Enter a character a-z and then a string, separated by commas: "
c, str = gets.chomp.split(',')

p add c, str
