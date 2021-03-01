########
######## Ruby version ruby 2.7.2p137

def ink_levels inks
	#sorts hash in ascending order with respect to value
	# then .first gives us the least valued color and its value
	# the return is an array where 1st element is name of color and 2nd element is its value
	least_ink = inks.sort_by{ |key, value| value}.first
	return "Maximum no. of pages you can print is #{least_ink[1]}."
end

puts "Enter ink level for cyan, magenta and yellow respectively each separated by comma: "
c, m, y = gets.chomp.split(',').map(&:to_i)

#declaring hash with default value 0, in case users skips typing value of a color, 0 value is given to it by default
inks= Hash.new 0
# declaring values to it taken from the user
inks = {'Cyan' => c, 'Magenta' => m, 'yellow' => y}

puts ink_levels inks
