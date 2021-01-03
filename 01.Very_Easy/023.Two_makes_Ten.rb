############ Created on 03-01-21
=begin
Create a function that takes two arguments. Both arguments
are integers, a and b. Return true if one of them is 10 or if
their sum is 10.


makes10(9, 10) ➞ true

makes10(9, 9) ➞ false

makes10(1, 9) ➞ true

=end

def makes10(num1, num2)

  total = num1 + num2

  if num1 == 10 || num2 == 10 || total == 10 then true else false end


end

puts "Enter any 2 numbers, each separated by comma:"
num1, num2 = gets.chomp.split(',')

#p num1.to_i
#p num2.to_i

p makes10(num1.to_i, num2.to_i)
