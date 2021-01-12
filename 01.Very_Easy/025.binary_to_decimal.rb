######### Build on 12 Jan 2021
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
  str = list.join
  return str.to_i(2)
end

puts 'Enter list of binary numbers each separated by comma: '
list = gets.chomp.split(',')

p binary_to_decimal(list)
