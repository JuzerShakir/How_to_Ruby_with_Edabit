def no_yelling(str)
    str.gsub(/\?+\z/, '?').gsub(/!+\z/, '!')
end