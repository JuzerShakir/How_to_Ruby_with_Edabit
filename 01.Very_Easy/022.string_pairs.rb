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
  str.scan(/../)
end

print "Enter any word: "
str = gets.chomp

str_len = str.length % 2
#p str_len

if str_len != 0
  str << '*'
end
#p str

p pairs(str)
