def right_triangle(*arr)
    Math.hypot(*arr.min(2)) == arr.max
end