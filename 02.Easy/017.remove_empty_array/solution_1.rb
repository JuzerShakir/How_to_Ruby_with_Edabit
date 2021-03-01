########
######### Ruby version ruby 2.7.2p137

arr = ["a", "b", [], [], [1, 2, 3]]
# empty eliminates empty arrays and empty elements but not nil values
arr.reject!(&:empty?)
# below takes care for nil values
#arr.compact!
p arr
