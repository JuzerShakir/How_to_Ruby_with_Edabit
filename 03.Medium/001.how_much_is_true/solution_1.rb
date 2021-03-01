#########
######### Ruby version ruby 2.7.2p137

def count arr
	# gives us the count of true in an array
	c = arr.count('true')
	return c
end

puts "Enter an array of boolean values: "
arr = gets.chomp.split(',')

# in case user types in uppeercase or mixed, we downcase all chars
arr = arr.map(&:downcase)

p count arr
