########## Build on 26 Jan 2021
########## Ruby version ruby 2.7.2p137

# refer 'formula.txt' file to understand the solution
def anna_likes name
  # saves value of length of name
  name_l = name.length

  # checks if length of name is even
  if name_l % 2 == 0
    # return number of counts of vowels in name
    vowels = name.count("aeiouAEIOU")

    # now we use our formula to return ans
    if vowels * 2 == name_l then return true else false end

  # if length of name is odd return false
  else
    return false
  end

end

# asks user for input
puts "Enter a name:"
name = gets.chomp

# calls function
p anna_likes name
