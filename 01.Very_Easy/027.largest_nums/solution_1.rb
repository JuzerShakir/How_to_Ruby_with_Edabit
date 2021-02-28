############ Created at 14 Jan 2021
########## Ruby version ruby 2.7.2p137

def largest_numbers(n, arr)
  # empty array for holding largest numbers
  arr_max = []

  #will loop through array to find largest nums as many..
  #..as defined by user
  while n > 0
    # appends highest num in array
    arr_max << arr.max
    # deletes high num and its duplicate values from
    # .. user defined array
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

# if n is negative, program will not run and will
# display following message
if n > 0 then p largest_numbers(n, arr)
else puts "Please enter a positive constant." end
