def is_valid_PIN(str)
    str.match?(/\A\d{4}\z/)
end