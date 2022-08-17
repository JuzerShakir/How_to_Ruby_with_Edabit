require 'date'

def first_tuesday_of_the_month(y, m)
    d = Date.new(y, m)
    d = d.next until d.tuesday?
    d.to_s
end