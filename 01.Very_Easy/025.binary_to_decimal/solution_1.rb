######### Build on 12 Jan 2021
########## Ruby version ruby 2.7.2p137

def binary_to_decimal(list)
  # converting list to str, since user inputs in list are str
  str = list.join

  # converts binary numbers to decimal numbers in base 2 format
  return str.to_i(2)
end

#asks user for input
puts 'Enter list of binary numbers each separated by comma: '
list = gets.chomp.split(',')

# calls function
p binary_to_decimal(list)
