########### Build on 21 jan 2021
=begin
Write a function which takes an integer steps and returns a string
representing an upward stair with steps representing the number
of the steps in the stair. Each step will be represented by
combinations of underscore(s), newline(s), and vertical line(s).

So, if you print the result for a stair with three steps,
it will look something like this:
      _
    _|
  _|
_|

Examples:
stair(1)  ➞ "  _\n_|"
# 2 spaces, 1 underscore, 1 newline, 1 underscore, 1 vertical line

stair(2)  ➞ "    _\n  _|\n_|"
# 4 spaces, 1 undescore, 1 newline, 2 spaces, 1 underscore,
# 1 vertical line, 1 newline, 1 underscore, 1 vertical line

stair(3) ➞ "      _\n    _|\n  _|\n_|"
# 6 spaces, 1 undescore, 1 newline, 4 spaces, 1 underscore,
# 1 vertical line, 1 newline, 2 spaces, ...

stair(4) ➞ "        _\n      _|\n    _|\n  _|\n_|"
# 8 spaces, 1 undescore, 1 newline, 6 spaces, 1 underscore,
# 1 vertical line,  ...

Notes:
- Since the stair is upward, the beginning of the code is the top of
  the stair.
- All numbers are positive.
- For zero, return ___ (three underscores).
=end

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
