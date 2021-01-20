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

  matrices.each do | matrix |
    if matrix[0] == matrix[1]
      abort 0
    end
  end

  return matrices
end

i = 0
matrices = []
puts "Enter value of 2 dices, each separated by comma: "

while i != 3 do
  matrix = gets.chomp.split(',').map(&:to_i)
  if matrix.length != 2 then abort "Please enter desired input." end

  matrices << matrix

  i += 1
end

p dice_game(matrices)
