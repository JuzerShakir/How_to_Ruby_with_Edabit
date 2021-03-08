def showdown p1, p2
  # since we know user has typed Bang, we capture the index of only 'Bang!' str
  # user could also type "BBBBBang!" so from this str we capture index of 'Bang!'
  p1_idx = p1.index("Bang!")
  #p p1_idx
  p2_idx = p2.index("Bang!")
  #p p2_idx

  # lower the index, faster the gun was drawn and shot, hence lower number wins
  if p1_idx < p2_idx
    return "p1"
  elsif p1_idx > p2_idx
    return "p2"
  else
    return "tie"
  end
end

puts "Enter 'Bang!': "
p1 = gets.chomp
p2 = gets.chomp

# checks if the input contains 'Bang!',
if p1.include?("Bang!") && p2.include?("Bang!")
  # then calls func
  puts showdown p1, p2
end
