# def numbers_sum(arr)
#     arr.select{ |n| n.is_a?(Numeric)}.reduce(0) { |acc, e| acc += e }
# end

def numbers_sum(arr)
    arr.grep(Integer).reduce(0, :+)
end