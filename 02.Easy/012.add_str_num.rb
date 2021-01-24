########
########## Ruby version ruby 2.7.2p137
=begin
Given a string of numbers separated by a comma and space,
return the total of all the numbers.

add_nums("2, 5, 1, 8, 4") ➞ 20

add_nums("1, 2, 3, 4, 5, 6, 7") ➞ 28

=end
########

puts "Enter series of numbers each separated by comma and space: "
# each input will be separated by comma and space, converted all str num to int
# this returns an array of numbers
array = gets.chomp.split(', ').map(&:to_i)

# sum method of array adds all the numbers in it
puts array.sum()
