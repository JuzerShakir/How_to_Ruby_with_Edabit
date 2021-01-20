######### Build on 20 Jan 2021
=begin
John is playing a dice game. The rules are as follows.

  -Roll two dice.
  -Add the numbers on the dice together.
  -Add the total to your overall score.
  -Repeat this for three rounds.

But if you roll DOUBLES, your score is instantly wiped to
0 and your game ends immediately!

Create a function which takes in a matrix as input,
and return John's score after his game has ended.

dice_game([[1, 2], [3, 4], [5, 6]]) ➞ 21

dice_game([[1, 1], [5, 6], [6, 4]]) ➞ 0

dice_game([[4, 5], [4, 5], [4, 5]]) ➞ 27

John only has two dice and will always give you outcomes
for three rounds.
=end

def dice_game matrices
  # will hold total of all value of dices aka answer
  total = 0

  # loops through the nested array matrices
  matrices.each do | matrix |
    # checks for DOUBLES
    if matrix[0] == matrix[1]
      abort "0"
    end
    # sums the value up
    total += matrix[0] + matrix[1]
  end

  #answer
  return total
end

# ask user for input
puts "Enter value of 2 dices, each separated by comma: "

# since we want value of 2 dices on 3 dice rolls..
# .. we will ask user for value of 2 dices of each roll separately
#
# emppty array to store user input
matrices = []
# iteration value
i = 0
while i != 3 do
  # input to array by converting str to integer
  matrix = gets.chomp.split(',').map(&:to_i)

  # checks if input is exactly of 2 dices
  if matrix.length != 2 then abort "Please enter desired input." end

  # appends input to existing array, contatining nested array
  matrices << matrix

  #increaments iteration
  i += 1
end

# calls the function
p dice_game(matrices)
