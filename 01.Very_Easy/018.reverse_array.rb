#######
=begin
Write a function to reverse an array.
=end
#######

def reverse arr
	#reverses array
	return arr.reverse
end

puts "Enter an array of numbers each separated by commas: "
arr = gets.chomp.split(',').map(&:to_i)

p reverse arr
