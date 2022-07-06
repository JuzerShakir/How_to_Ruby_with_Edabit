def expensive_orders(h, c)
    h.select { |k, v| v>c }
end