def count_all(s)
    Hash["LETTERS" => s.scan(/[a-z]/i).count, "DIGITS" => s.scan(/\d/).count ]
end