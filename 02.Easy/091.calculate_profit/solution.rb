def profit(h)
    ((h["sell_price"] - h["cost_price"]) * h["inventory"]).round
end