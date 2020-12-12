########## Build on 03.12.2020
=begin
Create a function that takes two numbers and a mathematical operator + - / * 
and will perform a calculation with the given numbers.

calculator(2, "+", 2) ➞ 4

calculator(2, "*", 2) ➞ 4

calculator(4, "/", 2) ➞ 2

If the input tries to divide by 0, return: "Can't divide by 0!"

=end
###########

def calc a, operator, b
	# checks the user input for operations to be performed on numbers
	case operator
		# add
		when '+'
			total = a + b
		# subs
		when '-'
			total = a - b
		# multiply
		when '*'
			total = a * b
		# division
		when '/'
			# since division by 0 raises an error...
			begin
				total = a / b
			rescue ZeroDivisionError
				# prints this message out instead of raising an error
				"Can't divide by 0!"
			end
	end
end

puts "Enter any 2 numbers that you want to perform calculations with, separated by comma: "
a, b = gets.chomp.split(',').map(&:to_i)

puts "Choose which calculation to perform on those nums '+,-,/ or *': " 
operator = gets.chomp

puts calc a, operator, b
