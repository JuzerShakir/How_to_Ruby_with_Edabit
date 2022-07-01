def split_code(str)
    # str.partition(/\d+/)
    [str.gsub(/\d+/, ""), str.gsub(/\D+/, "")]
end