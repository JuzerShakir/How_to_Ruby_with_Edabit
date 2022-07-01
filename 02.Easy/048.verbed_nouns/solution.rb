def verbify(str)
    return str if str.split[0].end_with?("ed")
    w = str.split

    if w[0].end_with?("e") then w[0].concat("d") else w[0].concat("ed") end
    w.join(' ')
end