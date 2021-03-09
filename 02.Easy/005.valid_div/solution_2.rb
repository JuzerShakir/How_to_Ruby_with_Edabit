########## Built on 09th March 2021
########## Ruby version ruby 2.7.2p137

def div n, m
  # rescues function from 0 division
  begin
    if n % m == 0 then true else false end
  rescue ZeroDivisionError
    return "invalid"
  end
end


puts "Enter division in a form of 'x/y': "
n, m = gets.chomp.split('/').map(&:to_i)

puts div n, m
