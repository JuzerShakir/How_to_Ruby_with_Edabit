#########
=begin
Create a function which returns the number of true values there are in an array.

countTrue([true, false, false, true, false]) ➞ 2

countTrue([false, false, false, false]) ➞ 0

countTrue([]) ➞ 0

=end
#########

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
