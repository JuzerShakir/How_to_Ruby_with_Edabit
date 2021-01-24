######### Build on 12 Jan 2021
########## Ruby version ruby 2.7.2p137
=begin
In mathematics and digital electronics, a binary number
is a number expressed in the base-2 numeral system or
binary numeral system. Given an array of ones and zeroes
of a binary number, return the equivalent decimal value.

  binary_to_decimal([0, 0, 0, 1]) ➞ 1

  binary_to_decimal([0, 0, 1, 0]) ➞ 2

  binary_to_decimal([1, 1, 1, 1, 1, 0, 1, 1, 0, 1]) ➞ 1005
=end

def binary_to_decimal(list)
  # converting list to str, since user inputs in list are str
  str = list.join

  # converts binary numbers to decimal numbers in base 2 format
  return str.to_i(2)
end

#asks user for input
puts 'Enter list of binary numbers each separated by comma: '
list = gets.chomp.split(',')

# calls function
p binary_to_decimal(list)
