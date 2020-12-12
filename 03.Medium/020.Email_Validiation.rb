########## Build on 05.12.2020
=begin
Create a function that accepts a string, checks if it's a valid email address and 
returns either true or false, depending on the evaluation.

    The string must contain an @ character.
    The string must contain a . character.
    The @ must have at least one character in front of it.
        e.g. "e@edabit.com" is valid while "@edabit.com" is invalid.
    The . and the @ must be in the appropriate places.
        e.g. "hello.email@com" is invalid while "john.smith@email.com" is valid.

If the string passes these tests, it's considered a valid email address.
=end
##########

def email id
	# first we check whether input contains both . and @ chars
	if id.include? '@' and id.include? '.'
		# now we take their indexes
		i_at = id.index('@')
		# since email can have multiple dots, we take index of last dot in id
		i_dot = id.rindex('.')
		
		# checks if id is valid
		# its not valid if id starts with @
		# for correct id, . will always be later than @
		if i_at != 0 and i_dot > i_at then true else false end
	
	else
		return false
	end
end

puts 'Enter an email address: '
id = gets.chomp

p email id
