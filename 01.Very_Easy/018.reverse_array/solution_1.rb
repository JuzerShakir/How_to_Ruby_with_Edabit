#######
########## Ruby version ruby 2.7.2p137
#
def reverse arr
	#reverses array
	return arr.reverse
end

puts "Enter an array of numbers each separated by commas: "
arr = gets.chomp.split(',').map(&:to_i)

p reverse arr
