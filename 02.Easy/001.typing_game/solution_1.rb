########
########## Ruby version ruby 2.7.2p137

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

