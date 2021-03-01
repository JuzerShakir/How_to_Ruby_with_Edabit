##########
########## Ruby version ruby 2.7.2p137

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
