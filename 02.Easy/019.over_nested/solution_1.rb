##########
######### Ruby version ruby 2.7.2p137

def ext arr
	# using reg exp we extract all the alphabets and numbers user have entered
	# scan returns an array of words or element that have been extracted
	n_arr = arr.scan(/\w+/)
	return n_arr
end

puts "Enter a nested array defining 1 element: "
arr = gets.chomp

puts ext arr
