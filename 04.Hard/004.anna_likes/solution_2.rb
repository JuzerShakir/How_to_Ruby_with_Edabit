########## Build on 26 Jan 2021
########## Ruby version ruby 2.7.2p137

# refer 'formula.txt' file to understand the solution

def anna_likes name
  # saves value of length of name
  name_l = name.length

  # checks if length of name is even
  if name_l % 2 == 0
    # extracts all the vowels using RegEx
    vowels = name.scan(/[aeiou]/i)
    # since it will be list, counting each element means number of vowels in name
    vowels_l = vowels.length

    # applying formula
    if vowels_l * 2 == name_l then return true else false end

  else
    return false
  end

end

# asks user for input
puts "Enter a name:"
name = gets.chomp

# calls function
p anna_likes name
