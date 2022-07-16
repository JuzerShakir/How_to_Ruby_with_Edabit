def is_palindrome(str)
    str_m = str.gsub(/[^A-Za-z0-9]/, '').downcase
    str_m == str_m.reverse
end