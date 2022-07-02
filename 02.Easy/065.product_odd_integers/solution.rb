def odd_products(arr)
    arr.select { |num| num.odd? }.reduce(:*)
end