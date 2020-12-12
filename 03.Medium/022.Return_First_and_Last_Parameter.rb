########## Build on 05.12.2020
=begin
Write two functions:

    first_arg() should return the first parameter passed in.
    last_arg() should return the last parameter passed in.
		
		first_arg(1, 2, 3) ➞ 1

		last_arg(1, 2, 3) ➞ 3

		first_arg(8) ➞ 8

		last_arg(8) ➞ 8

Return nil if the function takes no parameters.
If the function only takes in one parameter, the first_arg and last_arg functions 
should return the same value.

=end
###########
# will extract first element
def first_arg *args
	return *args[0]
end
# will extract last element
def last_arg *args
	return *args[-1]
end

# takes multiple input from user, returns an array
puts 'Enter strings or numbers each separated by comma: '
*args = gets.chomp.split(',')

# we would like to know which elements user wants to extract from given input
print "If you want to call first argument, enter 'f', if last argument enter 'l' : "
call = gets.chomp

# based on function choosen by user, it extracts elements accordingly
if call == 'f'
	puts first_arg *args
elsif call == 'l'
	puts last_arg *args
else
	puts "Invalid Input"
end
