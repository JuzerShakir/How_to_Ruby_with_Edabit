#######
########## Ruby version ruby 2.7.2p137
=begin
Create a function that takes an array of numbers and returns a new array,
sorted in ascending order (smallest to biggest).

    Sort numbers array in ascending order.
    If the function's argument is nil or an empty array; return an empty array.
    Return a new array of sorted numbers.

=end
#######

def asc_arr a
	# sorts array in ascending order and saves to original array
	return a.sort!
end

puts "Enter numbers each separated by comma: "
a = gets.chomp.split(',').map(&:to_i)

p asc_arr a
