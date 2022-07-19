def palindromic_dates(str)
    d, m, y = str.scan(/\d+/)
    d == m && (d+m).reverse == y
end