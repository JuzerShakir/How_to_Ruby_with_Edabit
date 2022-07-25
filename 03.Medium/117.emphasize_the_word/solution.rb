def emphasise(str)
    str.split.map(&:capitalize).join(" ")
end