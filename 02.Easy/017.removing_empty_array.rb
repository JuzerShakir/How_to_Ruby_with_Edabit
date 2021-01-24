########
######### Ruby version ruby 2.7.2p137
=begin
I am trying to filter out empty arrays from an array. In other words,
I want to transform something that looks like this:
["a", "b", [], [], [1, 2, 3]] to look like ["a", "b", [1, 2, 3]].

=end
########

arr = ["a", "b", [], [], [1, 2, 3]]
# empty eliminates empty arrays and empty elements but not nil values
arr.reject!(&:empty?)
# below takes care for nil values
#arr.compact!
p arr
