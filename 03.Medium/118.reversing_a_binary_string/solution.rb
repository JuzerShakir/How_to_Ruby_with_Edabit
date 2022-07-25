def reversed_binary_integer(n)
    ("%b" % n).reverse.to_i(2)          # * works for positive numbers
    # n.to_s(2).reverse.to_i(2)         # * works for any integer values
end