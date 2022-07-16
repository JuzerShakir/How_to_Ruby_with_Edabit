def superheroes(arr)
    arr.reject { |n| n.match?(/woman\z/i) }.select { |n| n.end_with?("man") }
end