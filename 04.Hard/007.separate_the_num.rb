def separate_num(num)
  num_length = num.length
  i = num_length - 1
  new_num_l = []

  new_num_l.unshift(num[i])

  while i != 0 do
    success = false

    if num[i..].to_i - num[i-1].to_i == 1
      new_num_l.unshift(num[i-1])
      success = true
    end

    if success == false then break end
    i -= 1
  end

  if success == true then return "YES #{new_num_l[0]}" else return "NO" end
end

puts "Enter a num"
num = gets.chomp

#p num[3..]
p separate_num(num)
