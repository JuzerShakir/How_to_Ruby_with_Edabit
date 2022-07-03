def is_special_array(arr)
    arr.select.with_index{ |e, i| (i.even? && e.even?) || (i.odd? && e.odd?) }.count == arr.count
end