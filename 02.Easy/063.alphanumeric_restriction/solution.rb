def alphanumeric_restriction(str)
    str.match?(/\A\w+\z/)
end

p alphanumeric_restriction("Bold")
p alphanumeric_restriction("123456")
p alphanumeric_restriction("ed@bit")