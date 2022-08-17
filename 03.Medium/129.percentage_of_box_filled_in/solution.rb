def percent_filled(arr)
    box_content = arr.slice(1...-1).join
    total_spaces = box_content.count " o"
    filled = box_content.count "o"
    (filled.fdiv(total_spaces) * 100).round.to_s + "%"
end
