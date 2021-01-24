########## Build on 20 Jan 2021
######### Ruby version ruby 2.7.2p137
=begin
Write 2 functions
to_array(), which converts a number to an array of its digits.
to_number(), which converts an array of digits back to its number.
=end

# giving 2 funcs
#
# will convert num input to an array
def to_array num
  # returns an array, each element being a num, converts str to int
  return num.split('').map(&:to_i)
end

# converts an array of input to str of num and then convert to int
def to_numbers num
  return (num.join()).to_i
end

# asks user for input
puts "Enter nums"
num = gets.chomp

# we want to know whether user has entered an array or str of nums
# if user input has ',' that means user has entered an array..
# .. but we will have to convert to an array
if num.include? ","
  # now we convert the input str to an array
  num = num.split(',')
  # and call the appropriate func
  p to_numbers(num)
else
  # else the user has input a str and calls an array func
  p to_array(num)
end
