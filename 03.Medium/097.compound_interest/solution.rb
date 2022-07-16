def compound_interest(*values)
    pr, t, r, n = *values
    (pr * (1 + r/n)**(n*t)).round(2)
end