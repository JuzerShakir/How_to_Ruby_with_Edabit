######## Built on 9th March 2021
######## Ruby version ruby 2.7.2p137
# => this program rescues from invalid inputs

def showdown p1, p2
  p1_idx = p1.index("Bang!")
  p2_idx = p2.index("Bang!")

  # rescues our program from invalid user inputs
  begin
    if p1_idx < p2_idx then "p1"
    elsif p1_idx > p2_idx then "p2"
    else return "tie" end
  # => NoMethodError for if both input is invalid
  # => ArgumentError for if anyone input is invalid
  rescue NoMethodError, ArgumentError
    return "Input valid string 'Bang!'"
  end
end

puts "Enter 'Bang!': "
p1 = gets.chomp
p2 = gets.chomp

puts showdown p1, p2

