######### Build on 07.12.2020
######### Ruby version ruby 2.7.2p137

def combination arr
	#mulitplies each element in an array
	combinations = arr.inject(:*)
	return combinations
end

puts "Enter any amount of numbers to know its combinations, each num separated by comma: "
arr = gets.chomp.split(',').map(&:to_i)
# we delete all elements that contain 0
arr.delete(0)

p combination arr
