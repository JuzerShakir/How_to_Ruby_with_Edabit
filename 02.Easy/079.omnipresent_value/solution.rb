def is_omnipresent(o_arr, v)
    o_arr.count{ |i_arr| i_arr.include?(v) } == o_arr.count
end