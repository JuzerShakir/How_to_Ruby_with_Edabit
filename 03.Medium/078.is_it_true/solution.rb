def is_it_true(str)
    n1, n2 = str.scan(/\d+/).map(&:to_i)
    opr = str[/\W/]
    if opr == "=" then opr = :== else opr.to_sym end
    n1.send(opr, n2)
end