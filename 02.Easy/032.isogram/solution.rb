def is_isogram(w)
    return w.downcase.chars.uniq.length == w.length
end