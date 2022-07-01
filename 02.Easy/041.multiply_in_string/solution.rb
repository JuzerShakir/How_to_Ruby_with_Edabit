def multiply_nums(str)
    str.scan(/\d+/).map(&:to_i).reduce(:*)
end