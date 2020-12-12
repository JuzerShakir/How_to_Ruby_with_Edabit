########## Build on 04.12.2020
=begin
Given a hash containing the names and ages of a group of people, 
return the name of the oldest person.

	oldest({
	  "Emma" => 71,
	  "Jack" => 45,
	  "Amy" => 15,
	  "Ben" => 29
			}) ➞ "Emma"
			
		oldest({
		  "Max" => 9,
		  "Josh" => 13,
		  "Sam" => 48,
		  "Anne" => 33
			}) ➞ "Sam"
			
=end
###########

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
