def letter_check(str1, str2)
    str2.downcase.chars.all? { |c| str1.include?(c) }
end