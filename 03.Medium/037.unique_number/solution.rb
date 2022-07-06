def unique(arr)
    u_arr = arr.uniq
    u_arr.select{ |n| arr.one?(n) }
end