#########
=begin
Create a function that takes two numbers as arguments and return the LCM of the 2 numbers.
		lcm(3, 5) ➞ 15
		lcm(14, 28) ➞ 28
=end
#########

def lcm num1, num2
	# int has a func of lcm which does the job!
	return num1.lcm(num2)
end

puts "Enter 2 numbers separated by comma: "
num1, num2 = gets.chomp.split(',').map(&:to_i)

puts lcm num1, num2
