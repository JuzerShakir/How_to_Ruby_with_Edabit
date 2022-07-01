def filter_unique(arr)
    arr.select { | w | w.chars.uniq.length == w.length}
end