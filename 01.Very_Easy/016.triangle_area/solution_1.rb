########
########## Ruby version ruby 2.7.2p137

def area_triangle b, h
	return 0.5 * b * h
end

print "Enter the base and height of the triangle repectively, separated by comma: "
b, h = gets.chomp.split(',').map(&:to_i)

puts area_triangle b, h
