########## Build on 05.12.2020
=begin
Write a function that takes a string of one or more words as an argument and returns 
the same string, but with all five or more letter words reversed. Strings passed in
will consist of only letters and spaces. Spaces will be included only when more than 
one word is present.

reverse("Reverse") ➞ "esreveR"

reverse("This is a typical sentence.") ➞ "This is a lacipyt .ecnetnes"

reverse("The dog is big.") ➞ "The dog is big."

=end
##########

def reverse arr
	# defining empty str for result
	output = ""
	
	# looping through array, where each element is a a word
	arr.each do |word|
		# if no. of chars in an element or word is more than or equal to 5
		if word.length >= 5
			# we reverse that word, add space and append to output
			output << word.reverse + " "\
		# if no. of chars in a word is less than 5..
		else
			# appends the word as is with space
			output << word + " "
		end 
	end
	# since each word was appended to str with space, we delete last char ' ' by chop
	return output.chop
end

# gets user input as str
puts 'Enter a string: '
str = gets.chomp

# since we dont want any numbers, we extract numbers and replace them with nothing hence deleting them
# returns string with only letters and spaces
str.gsub!(/\d/, "")

# convert str to array by spaces in str, this will also delete any double space we have between words in str
arr = str.split(' ')

p reverse arr
