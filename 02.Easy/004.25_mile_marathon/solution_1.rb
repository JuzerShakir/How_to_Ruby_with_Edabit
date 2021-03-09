########
########## Ruby version ruby 2.7.2p137

def distance len
  # updates list by taking absolute value of each element
	len.map! {|n| n.abs}
  # gives total of all elements
	total_len = len.sum()

  # check condition
	if total_len == 25 then true else false end
end

puts "Enter the lengths each separated by commas: "
len = gets.chomp.split(',').map(&:to_i)

puts distance len
