########## Build on 07.12.2020
########## Ruby version ruby 2.7.2p137

def count arr
	# Since every array starts with '[' brackets, we count these, and thats how we get
	#...nested arrays in an array!
	return str.count('[')
end

puts "Enter in form of an array :"
# we are not converting to an array and taking input as string...
str = gets.chomp

puts count str
