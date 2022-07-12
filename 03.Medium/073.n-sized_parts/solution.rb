def partition(s, n)
    # s.chars.each_slice(n).each_with_object([]) { |e, a| a << e.join }
    s.chars.each_slice(n).map { |e| e.join }
end