########
########## Ruby version ruby 2.7.2p137

def game user, correct
	a = []

  # loops through first input with id
	user.each_with_index do |element, idx|
    # checks value of corresponding element of list is equal
    if element == correct[idx]
      # appends 1 if it is
      a << 1
    else
      # appends -1 if its unequal
      a << -1
    end
  end
  #output
	return a
end

# 1st input
puts "Type any words, make sure each words are separated by comma: "
user = gets.chomp.split(',')

#2nd input
puts "Type correct words here, make sure each words are separated by comma: "
correct = gets.chomp.split(',')

p game user, correct

