def sum_two_smallest_nums(arr)
    arr.select { |n| n > 0 }.sort.slice(0, 2).sum
end