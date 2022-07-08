def is_valid_phone_number(num)
    num.match?(/\(\d+\) \d+-\d+/)
end