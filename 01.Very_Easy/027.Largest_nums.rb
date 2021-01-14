############ Created at 14 Jan 2021
=begin
Create a function that takes two arguments of an
array of numbers arr and a constant number n and
returns the n largest numbers from the given array.

  largest_numbers(2, [4, 3, 2, 1]) ➞ [3, 4]

  largest_numbers(1, [7, 19, 4, 2]) ➞ [19]

  largest_numbers(3, [14, 12, 57, 11, 18, 16]) ➞ [16, 18, 57]

  largest_numbers(0, [1, 3, 4, 2]) ➞ []

The returned array must be sorted in ascending order.
=end

def largest_numbers(n, arr)
  # empty array for holding largest numbers
  arr_max = []

  #will loop through array to find largest nums as many..
  #..as defined by user
  while n > 0
    # appends highest num in array
    arr_max << arr.max
    # deletes high num from user defined array
    arr.delete(arr.max)
    # decreamenting count
    n-=1
  end

  # since values of arrays are sorted in descending order..
  # .. we give sort method to sort in ascending order
  return arr_max.sort!
end

# asks user for an array
puts 'Enter an array of numbers, each separated by comma: '
arr = gets.chomp.split(',').map(&:to_i)

# asks user for number of largest numbers
print 'How many largest no.s you want? '
n = gets.chomp.to_i

if n > 0 then p largest_numbers(n, arr) else puts "Please enter a positive constant." end
