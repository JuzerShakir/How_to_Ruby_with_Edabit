def function_name(a)
    # color, number, shade, shape = *(a.map { |o| o.values }.transpose)
    h = {}
    # color.tally(h)
    # number.tally(h)
    # shade.tally(h)
    # shape.tally(h)
    # !h.value?(2)
    properties = a.map { |o| o.values }
                .transpose.each { |p| p.tally(h) }
    !h.value?(2)
end