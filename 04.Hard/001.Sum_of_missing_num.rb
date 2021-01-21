######### Build on 21 Jan 2021
=begin
Create a function that returns the sum of missing numbers
from the given array.

missing_numbers([4, 3, 8, 1, 2]) ➞ 18
# 5 + 6 + 7 = 18

sum_missing_numbers([17, 16, 15, 10, 11, 12]) ➞ 27
# 13 + 14 = 27

sum_missing_numbers([1, 2, 3, 4, 5]) ➞ 0
# No Missing Numbers (i.e. all numbers in [1, 5] are present in
the list)

The numerical range to consider when searching for the missing
numbers in the array is the sequence of consecutive numbers
between the minimum and maximum of the numbers (inclusive).
=end

def sum_missing_nums(list)
  seq_list = (list.min..list.max).to_a

  missing_list = seq_list - list

  total = 0
  missing_list.each do | num | total += num end

  if total == 0 then "No Missing Numbers (i.e. all numbers in [#{list.min}, #{list.max}] are present in the list"
                  else return total end
end

puts "Enter list of numbers each separated by comma:"
list = gets.chomp.split(',').map(&:to_i)

puts sum_missing_nums(list)
