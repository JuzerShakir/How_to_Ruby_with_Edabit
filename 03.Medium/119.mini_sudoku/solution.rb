def is_mini_sudoku(arrs)
    flat_arr = arrs.flatten
    !flat_arr.uniq! && flat_arr.all? { |n| (1..9) === n }
end