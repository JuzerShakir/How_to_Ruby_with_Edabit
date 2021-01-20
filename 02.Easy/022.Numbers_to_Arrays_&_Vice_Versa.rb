########## Build on 20 Jan 2021
=begin
Write 2 functions
to_array(), which converts a number to an array of its digits.
to_number(), which converts an array of digits back to its number.
=end

def to_array num
  return num.split('').map(&:to_i)
end

def to_numbers num
  return (num.join()).to_i
end

print "Enter nums"
num = gets.chomp

if num.include? ","
  num = num.split(',')
  p to_numbers(num)
else
  p to_array(num)
end
