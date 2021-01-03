############ Created on 03-01-21
=begin
Create a function which takes an argument of string str and
returns an array of two-paired characters. If the string has
odd number of characters, add an asterisk * in final pair.

See the below examples for a better understanding:

  string_pairs("mubashir") ➞ ["mu", "ba", "sh", "ir"]

  string_pairs("edabit") ➞ ["ed", "ab", "it"]

  string_pairs("airforces") ➞ ["ai", "rf", "or", "ce", "s*"]

Return [] if the given string is empty.
=end


def pairs(str)
  # a string method which extracts 2 letters, hence 2 dots
  # ...return an array where each element is 2 letters of str
  str.scan(/../)
end

# ask user for input
print "Enter any word: "
str = gets.chomp

# calculates length of str and then checks if its remainder by 2
str_len = str.length % 2
#p str_len

# if str length is even then remainder would be 0
# ...if its odd then 1
if str_len != 0
  # if str_len is 1 then we add * to make the length of str even
  str << '*'
end
#p str

p pairs(str)
