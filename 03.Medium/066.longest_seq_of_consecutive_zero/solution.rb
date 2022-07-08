def longest_zero(str)
    str.scan(/0+/).to_a.max || ''
end