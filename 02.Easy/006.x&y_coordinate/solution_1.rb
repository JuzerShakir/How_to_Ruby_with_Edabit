#######
########## Ruby version ruby 2.7.2p137

def convert_cartesian x, y
	# declaring an empty array for storing user input arrays
	trans = []
	# first element contains an array so does second element
	trans << x
	trans << y

	# transposes
	return trans.transpose
end

puts "Enter 2 arrays with similar number of elements and each elements divided by a comma: "
x = gets.chomp.split(',').map(&:to_i)
y = gets.chomp.split(',').map(&:to_i)

p convert_cartesian x, y
