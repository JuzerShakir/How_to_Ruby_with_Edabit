def get_discounts(prices, d)
    prices.map{ |p|
        d_p = (p/100.0) * d.to_i
        if d_p == d_p.to_i then d_p.to_i else d_p end
    }
end