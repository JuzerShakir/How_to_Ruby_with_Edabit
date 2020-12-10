########
=begin
Given two arguments, return an array which contains these two arguments.
=end
########

# asks user to enter numbers
puts "Enter 2 number of integer arguments separated by comma: "

# splits gives us an array where each input is divided by comma as an element of an array
arrays = gets.chomp.split(',').map(&:to_i)

p arrays

# YOu can actually give unlimited number of arguments or numbers as an input to form an array
# for the solving this question and simpilicity I have asked for 2 numbers or arguments.
