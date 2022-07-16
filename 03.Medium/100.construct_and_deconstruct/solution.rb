## ? Solution 1
# def construct_deconstruct(str)
#     output = str.chars.map.with_index { |c, i| str[0..i] }
#     output.push(*output.reverse[1..])
# end

## ? Solution 2
def construct_deconstruct(str)
    r = (1..str.length).to_a
    r.push(*r.reverse[1..]).map { |i| str[0, i]}
end