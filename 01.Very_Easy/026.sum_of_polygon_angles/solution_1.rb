############# Created at 14 Jan 2021
########## Ruby version ruby 2.7.2p137

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
