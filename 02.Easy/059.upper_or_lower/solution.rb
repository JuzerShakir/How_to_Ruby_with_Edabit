def steps_to_convert(str)
    [str.scan(/[a-z]/).count, str.scan(/[A-Z]/).count].min
end