############ Created on 03-01-21
########## Ruby version ruby 2.7.2p137

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
