#######
########## Ruby version ruby 2.7.2p137

def first array
	#extracts first element and outputs
	return array[0]
end

print "Enter the numbers separated by ',': "
array = gets.chomp.split(',').map(&:to_i)

puts first array
