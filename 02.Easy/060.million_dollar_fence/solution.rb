def construct_fence(c)
    'H' * (1000000 / c.gsub(/\D+/, '').to_i)
    # Array.new(i, 'H').join
end