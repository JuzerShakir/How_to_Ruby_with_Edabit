require 'date'

def has_friday_13(m, y)
    (Date.new(y, m) + 12).friday?
end