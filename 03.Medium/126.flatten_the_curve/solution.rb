def flatten_the_curve(arr)
    Array.new(arr.length, (arr.reduce(:+).to_f / arr.length).round(1))
end