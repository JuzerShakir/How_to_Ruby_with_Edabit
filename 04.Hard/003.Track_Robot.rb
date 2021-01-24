########### Build on 24 Jan 2021
########### Ruby version ruby 2.7.2p137
=begin
A robot moves around a 2D grid. At the start, it is at [0, 0], facing
east. It is controlled by a sequence of instructions:
    . means take one step forwards in the current direction.
    < means turn 90 degrees anticlockwise.
    > means turn 90 degrees clockwise.

Your job is to process the instructions and return the final position
of the robot.

For example, if the robot is given the sequence of instructions ..<.<., then:

    Step 1: . It still faces east, and is at [1, 0].
    Step 2: . It still faces east, and is at [2, 0].
    Step 3: < It now faces north, and is still at [2, 0].
    Step 4: . It still faces north, and is at [2, 1].
    Step 5: < It now faces west, and is still at [2, 1].
    Step 6: . It still faces west, and is now at [1, 1].

So, track_robot("..<.<.") returns [1, 1].

  - The instruction strings will only contain the three valid
      characters ., < or >.
  - You will always be passed a string (but the string might be empty).
=end

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
