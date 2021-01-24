##########
######### Ruby version ruby 2.7.2p137
=begin
A group of friends have decided to start a secret society.
The name will be the first letter of each of their names, sorted in alphabetical order.

Create a function that takes in an array of names and returns the name of
the secret society.
=end
##########

def society_name names
	# defining empty string
	acronym = String.new
	# loops through each element "name" and extracts 1st char from string and appends to str
	names.select{ |name| acronym << name[0]}

	return acronym.upcase
end

puts "Enter names each separated by comma: "
names = gets.chomp.split(',')

puts society_name names
