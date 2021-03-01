########## Build on 05.12.2020
########## Ruby version ruby 2.7.2p137

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
