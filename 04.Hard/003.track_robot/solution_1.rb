########### Build on 24 Jan 2021
########### Ruby version ruby 2.7.2p137

def track_robot str
  # initializing starting position of robot
  co_ordinates = [0,0]

  # list of direction east, north, west, south respectively
  dirs = ["e", "n", "w", "s"]
  # this will keep track of turns it will take
  i = 0

  # looping through each
  str.each_char do | char |
    # checks what the input is
    case char
    when "."
      # this will make robot move forward or backward depending..
      # ..on which direction he faces, to know which direction he is on..
      # ..we run case to check and based on that we move robot accordignly
      case dirs[i]
        #east
      when "e"
        #moves x axis by 1
        co_ordinates[0] += 1
        # north
      when "n"
        # moves y axis by 1
        co_ordinates[1] += 1
        # west
      when "w"
        # moves x axis backwards
        co_ordinates[0] -= 1
        # south
      when "s"
        # moves y axis backwards
        co_ordinates[1] -= 1
      end

    # 90 degrees clockwise meaning we move from east(starting pos) to south
    #  ..south to west and west to north and so on
    when ">"
      i -= 1

    # 90 degrees anti-clockwise meaning we move from east(starting pos) to north
    #  ..north to west and west to south and so on
    when "<"
      i += 1
    end

    # since dir list has only 4 elements, undefined index values will give error
    # avoiding error by re-assigning valid value with same position
    if i == 4
      i = 0
    elsif i == -5
      i = -1
    end

  end
  # output
  return co_ordinates
end

# asks user for input
puts "Enter a string:"
str = gets.chomp

# loops through each char in str to delete unrequired chars
str.each_char do | char |
  if char != "." && char != ">" && char != "<"
    str.delete! char
  end
end

# calls function
p track_robot str
