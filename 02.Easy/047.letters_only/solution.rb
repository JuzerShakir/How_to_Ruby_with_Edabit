def letters_only(str)
    unless str.empty? then !(str.match?(/\d/) || str.match?(/[A-Z]/)) else false end
end