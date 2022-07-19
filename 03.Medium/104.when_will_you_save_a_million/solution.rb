def million_in_month(first_month, m)
    income = [first_month]
    until income.push(income.last * m).reduce(:+) > 1000000 end
    income.count
end