def find_odd(arr)
    arr.uniq.find {|n| arr.count(n).odd? }
end