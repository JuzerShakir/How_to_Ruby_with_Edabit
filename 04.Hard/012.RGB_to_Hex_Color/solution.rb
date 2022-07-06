def rgb_to_hex(str)
    hex_codes = (10..15).zip(("a".."f")).to_h
    str.scan(/\d+/).map { |e|
        q, r = *e.to_i.divmod(16)
        [hex_codes[r] || r, hex_codes[q] || q]
    }.join.prepend("#")         # OR .inject(["#"], :push).join
end