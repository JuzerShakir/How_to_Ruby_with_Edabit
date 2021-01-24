########
########## Ruby version ruby 2.7.2p137
=begin
Mary wants to run a 25-mile marathon. When she attempts to sign up for the marathon,
she notices the sign-up sheet doesn't directly state the marathon's length.
Instead, the marathon's length is listed in small, different portions.
Help Mary find out how long the marathon actually is.

Return true if the marathon is 25 miles long, otherwise, return false.

Items in the array may be negative or positive, but since negative distance
isn't possible, find a way to convert negative integers into positive integers.

Return false if the arguments are empty or not provided.
=end
########

def distance len
	len.map! {|n| n.abs}

	total_len = len.sum()

	if total_len == 25 then true else false end
end

puts "Enter the lengths each separated by commas: "
len = gets.chomp.split(',').map(&:to_i)

puts distance len
