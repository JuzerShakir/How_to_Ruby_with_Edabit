def add_letters(arr)
    alpha_digi = ('a'..'z').zip(1..26).to_h
    n = arr.reduce(0) { |c, a| c+=alpha_digi[a] }
    alpha_digi.key(n % 26) || 'z'
end