def like_or_dislike(arr)
    state = arr.shift
    arr.each { |e| if state == e then state = nil else state = e end }
    state || "Nothing"
end