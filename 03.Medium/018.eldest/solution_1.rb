########## Build on 04.12.2020
########## Ruby version ruby 2.7.2p137

def older ages
	# gets max num with respect to age, returns both age and names, [0] will return key
	oldest = ages.max_by { |k,v| v}[0]
	# below is another way
	# hash.key(hash.values.max)

	return oldest
end
# will take input of names and store in a list
puts "Enter names of persons whos age you want to enter, each separated by comma: "
names = gets.chomp.split(',')

# a list that will have ages of names list respectively
puts "Enter their ages respectively, each separated by comma: "
nums = gets.chomp.split(',').map(&:to_i)

# zip joins both arrays and converts to hash
ages = names.zip(nums).to_h

puts older ages
