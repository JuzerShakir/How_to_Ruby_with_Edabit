def count_all(s)
    Hash["LETTERS" => s.scan(/[a-z]/i).count, "DIGITS" => s.scan(/\d/).count ]
end

# --------------------------------------------------------------- #

def count_all(str)
    def s_count(str, reg)
        str.scan(reg).count
    end
   {"LETTERS" => s_count(str, /[a-z]/i), "DIGITS" => s_count(str, /\d/) }
end