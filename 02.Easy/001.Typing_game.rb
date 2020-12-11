########
=begin
Create a function that takes in two arrays: the array of user-typed words, 
and the array of correctly-typed words and outputs an array containing 1s 
(correctly-typed words) and -1s (incorrectly-typed words).
=end
########

def game user, correct
	a = []
	
	user.each_with_index do |element, idx| if element == correct[idx] then a << 1 else a << -1 end

	end
	
	return a
end

puts "Type any words, make sure each words are separated by comma: "
user = gets.chomp.split(',')

puts "Type correct words here, make sure each words are separated by comma: "
correct = gets.chomp.split(',')

p game user, correct

