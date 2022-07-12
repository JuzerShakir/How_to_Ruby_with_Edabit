def solve(str)
    operations = {"+" => :-, "-" => :+}
    _, operand, y, total = str.split.grep_v("=")
    total.to_i.send(operations[operand], y.to_i)
end