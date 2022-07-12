def index_of_caps(str)
    str.chars.map.with_index { |c, i| if c.upcase == c then i else nil end }.compact
end