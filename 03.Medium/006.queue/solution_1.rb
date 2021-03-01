########### Built on 01.12.2020
########### Ruby version ruby 2.7.2p137

def next_in_line a, n
	# appends n to the last element of a array
	a << n
	# removes first element by default
	a.shift
	# output
	return a
end

# each element separated by comma and coverted to int from str, returns array of int
puts "Enter an array where each element is a number separated by comma: "
a = gets.chomp.split(',').map(&:to_i)

# if no input was given or a is empty, abort the program with error message
if a.empty? then abort "No array has been selected!" end

puts "Add a num to add in the array: "
n = gets.chomp.to_i

p next_in_line a, n
