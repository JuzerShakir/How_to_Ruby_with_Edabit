#######
########## Ruby version ruby 2.7.2p137
=begin
Create a function that converts two arrays of x- and y- coordinates into an array
of (x, y) coordinates.

	convert_cartesian([1, 5, 3, 3, 4], [5, 8, 9, 1, 0])
			➞ [[1, 5], [5, 8], [3, 9], [3, 1], [4, 0]]

=end
#######

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
