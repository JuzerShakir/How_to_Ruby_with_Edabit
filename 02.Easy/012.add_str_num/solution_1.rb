########
########## Ruby version ruby 2.7.2p137

puts "Enter series of numbers each separated by comma and space: "
# each input will be separated by comma and space, converted all str num to int
# this returns an array of numbers
array = gets.chomp.split(', ').map(&:to_i)

# sum method of array adds all the numbers in it
puts array.sum()
