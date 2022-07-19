def delete_occurences(arr, c)
    o = []
    arr.each { |e| o << e if o.count(e) < c }
    o
end