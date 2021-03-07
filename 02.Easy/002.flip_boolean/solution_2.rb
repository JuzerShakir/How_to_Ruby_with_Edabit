########## Ruby version ruby 2.7.2p137

def reverse b
  case b
  when 'true'
    return false
  when 'false'
    return true
  else
    return "boolean expected"
  end
end

# FORCES user input to lowercase
print "Enter a boolean to flip: "
b = gets.chomp.downcase

p reverse b
