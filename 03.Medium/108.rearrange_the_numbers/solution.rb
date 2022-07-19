def rearranged_difference(n)
    arr_n = n.digits
    max = arr_n.max(arr_n.length).inject(0) { |a, c| (a * 10) + c}
    min = arr_n.min(arr_n.length).inject(0) { |a, c| c.zero? ? a : (a * 10) + c}
    max - min
end