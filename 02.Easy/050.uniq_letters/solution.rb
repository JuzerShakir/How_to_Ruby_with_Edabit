def find_letters(w)
    w.chars.delete_if { |c| w.count(c) > 1 }
end