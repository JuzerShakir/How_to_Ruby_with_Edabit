########
########## Ruby version ruby 2.7.2p137

def max_edge b, h
	max = (b + h) - 1
	puts "The max edge of third edge can be #{max}."
end

puts "Enter the base and height of the triangle repectively, separated by comma: "
b, h = gets.chomp.split(',').map(&:to_i)

puts max_edge b, h
