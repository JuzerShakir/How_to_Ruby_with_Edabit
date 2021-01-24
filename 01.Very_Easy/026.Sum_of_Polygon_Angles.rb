############# Created at 14 Jan 2021
########## Ruby version ruby 2.7.2p137
=begin
Given an n-sided regular polygon n, return the total
sum of internal angles (in degrees).

  sum_polygon(3) ➞ 180

  sum_polygon(4) ➞ 360

  sum_polygon(6) ➞ 720

Notes:
  n will always be greater than 2.
  The formula (n - 2) x 180 gives the sum of all the
  measures of the angles of an n-sided polygon.
=end

def sum_polygon(n)
  # formula already given in problem
  ans = (n - 2) * 180
  return ans
end

# asks user for input
print 'Enter no. of sides of polygons: '
n = gets.chomp.to_i

# calls function
p sum_polygon(n)
