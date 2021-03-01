########## Build on 05.12.2020
########## Ruby version ruby 2.7.2p137

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
