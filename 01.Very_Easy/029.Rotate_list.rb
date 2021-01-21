############## Build on 21 Jan 2021
=begin
Given a list, rotates the values clockwise by one (the last value
is sent to the first position).

rotate_by_one([1, 2, 3, 4, 5]) ➞ [5, 1, 2, 3, 4]

rotate_by_one([6, 5, 8, 9, 7]) ➞ [7, 6, 5, 8, 9]

rotate_by_one([20, 15, 26, 8, 4]) ➞ [4, 20, 15, 26, 8]
=end

def rotate_by_one list
  last = list.pop
  #shift = list.shift
  return list.unshift(last)
end

puts "Enter list of numbers each separated by comma:"
list = gets.chomp.split(',').map(&:to_i)

p rotate_by_one(list)
