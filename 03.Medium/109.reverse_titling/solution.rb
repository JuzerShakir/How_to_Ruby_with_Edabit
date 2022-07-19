def reverse_titling(str)
    str.split.map { |w| w.capitalize.swapcase }.join(" ")
end