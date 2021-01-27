########## Build on 26 Jan 2021
########## Ruby version ruby 2.7.2p137
=begin
Anna is a strange girl. She likes certain boys, but not others.
You have to figure out why she likes some, and not the others.
Examples
- anna_likes("David") ➞ false

- anna_likes("Samuel") ➞ true

- anna_likes("Gary") ➞ false

Notes:
    All names / inputs are valid.
    Anna likes her own name.
    Check the Tests tab for all 100 examples.
    Try to solve this one using RegEx. (check out main2.rb)
            (I have solved this using string methood)
=end

# Check out the names.txt file for similarities that I have explained
#  between test that that give True and False. I ahve also given
#  formula for it.
#  Formula  is : number of vowels in name * 2 == length of name
#  where length of name should be even in the first place

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
