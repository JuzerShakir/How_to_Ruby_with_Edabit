#######
########## Ruby version ruby 2.7.2p137

def asc_arr a
	# sorts array in ascending order and saves to original array
	return a.sort!
end

puts "Enter numbers each separated by comma: "
a = gets.chomp.split(',').map(&:to_i)

p asc_arr a
