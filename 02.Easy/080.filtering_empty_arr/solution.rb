def removeEmptyArrays(arr)
    arr.reject{ |e| e.is_a?(Array) && e.empty? }
end