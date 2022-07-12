def cap_space(str)
    str.scan(/[A-Z]/).each { |c| str.sub!(c, " #{c.downcase}") }
    str
end