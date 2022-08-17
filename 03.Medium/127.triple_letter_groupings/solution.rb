def three_letter_collection(str)
    output = []
    str.chars.each_cons(3) { |e| output << e.join }
    output.sort
end