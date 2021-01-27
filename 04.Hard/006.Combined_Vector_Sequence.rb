####### Build on 27 Jan 2021
####### Ruby ver ruby 2.7.2p137
=begin
The goal is to test if a consecutive sequence is formed.
A consecutive sequence is defined as sequence of incrementing
numbers (e.g. 1, 2, 3 or 5, 6, 7, 8). The twist is that you have
to consider the combination of vectors as shown:

# => [3 5 1 -5 ] => [3+4  5+3  1+8  15-5] = [7 8 9 10]  =>  true
# => [4 3 8 15]

Also important is that the vectors can be of different sizes,
where excess numbers on the larger one will be paired with 0s
from the other ones.

# => [2 2 2  ] => [2+5  2+6  2+7  10+0]  = [ 7 8 9 10]  =>  true
# => [5 6 7 10]

Notes
# => Each array has at least two elements.

=end

def vector list1, list2
  # add corresponding element of both list
  total = list1.zip(list2).map(&:sum)
  # now we need to know if its a consecutive sequence list
  first = total[0]
  last = total[-1]

  # we give another list of same start and end number as total..
  # this list will have a consecutive sequence
  test_list = (first..last).to_a
  # now we test whether our total is consecutive sequence list
  if total == test_list then return true else false end
end

#asks user to input 2 vectors, str is converted to int
puts "Enter a vector:"
list1 = gets.chomp.split(' ').map(&:to_i)
puts "Enter another vector:"
list2 = gets.chomp.split(' ').map(&:to_i)

# (EXCPT) if both vectors length is less then 2 then abort
if list1.length < 2 && list2.length < 2 then abort "lenght of atleast 1 vector should be 2." end

# if length of vectors is uneven we need to make it equal
if list1.length != list2.length
  # we need to know which vector has lesser length
  if list1.length < list2.length
    # if length of list1 is less, we need to know by how much
    i = list2.length - list1.length
    # and thats how many times we need to add 0 to the list to have an equal length
    while i != 0 do
      list1 << 0
      i -= 1
    end
  # else list2 has smaller length
  else
    i = list1.length - list2.length
    while i != 0 do
      list2 << 0
      i -= 1
    end
  end
end

# calls function
p vector(list1, list2)
