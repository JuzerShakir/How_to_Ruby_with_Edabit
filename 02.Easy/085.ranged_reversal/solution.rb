def ranged_reversal(arr, s, e)
    arr.insert(s, *arr.slice!(s..e).reverse)
end