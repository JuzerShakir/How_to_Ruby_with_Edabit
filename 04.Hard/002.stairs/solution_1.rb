########### Build on 21 jan 2021
########### Ruby version ruby 2.7.2p137

def stair num
  # (exception)
  if num == 0
    puts '___'
    exit
  end

  # as observed above we see that theres difference of spaces in each steps
  # initializing space
  spaces = 0
  # (obsrv) whatever num is, space will be double of it
  spaces = 2 * num

  # (obsrv) top most step has different logic
  prefix = " " * spaces
  str = "#{prefix}_\n"
  # after giving 1 step we substract 2 spaces (obsrv)
  spaces -= 2

  # (obsrv) after first (top step) we see "base" as common string
  # so instead of defining at each step we assign a var to it
  base = "_|\n"
  # looping through spaces as we define each step until theres no more 'spaces'
  while spaces != 0 do
    # defines 2nd step, 3rd step and so on
    str = str + (" " * spaces) + base
    # substracting 2 spaces as we execute each step
    spaces -= 2
  end

  # adds common suffix at end of string
  puts "#{str}_|"
end

# asks user for input
puts "Enter the String:"
num = gets.chomp.to_i

# terminates program on negative numbers (exception)
if num < 0
  abort "Cant perform program on negative numbers."
else
  # calls function
  stair(num)
end
