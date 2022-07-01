def complete_binary(b)
    b.prepend('0') until b.length % 8 == 0
    b
end