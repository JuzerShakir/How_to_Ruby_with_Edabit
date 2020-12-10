#######
=begin
Create a function that takes an array and returns the first element.
=end
#######

def first array
	#extracts first element and outputs
	return array[0]
end

print "Enter the numbers separated by ',': "
array = gets.chomp.split(',').map(&:to_i)

puts first array
