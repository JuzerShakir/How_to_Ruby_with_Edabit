def reverse_image(arrs)
    # arrs.map { |arr| arr.map { |e| if e.zero? then 1 else 0 end } }
    arrs.map { |arr| arr.join.tr("10", "01").chars.map(&:to_i) }
end