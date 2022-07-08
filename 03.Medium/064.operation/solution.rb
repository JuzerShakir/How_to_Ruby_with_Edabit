def operation(*nums, opr)
    n1, n2 = *nums.map(&:to_i)
    operations = { "add" => :+, "subtract" => :-, "multiply" => :*, "divide" => :/ }
    begin
        n1.send(operations[opr], n2).to_s
    rescue ZeroDivisionError
        "undefined"
    end
end