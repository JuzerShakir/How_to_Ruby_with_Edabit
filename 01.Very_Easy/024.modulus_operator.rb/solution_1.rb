############ Build on 12 Jan 2021
########## Ruby version ruby 2.7.2p137

def mod(n1, n2)
  #returns modulus or remainder of the division
  return n1 % n2
end

# asks for user input
puts "Enter 2 valid numbers each separated by comma: "
n1, n2 = gets.chomp.split(',')

# calling func by giving arguments converting to an int form
p mod(n1.to_i, n2.to_i)
