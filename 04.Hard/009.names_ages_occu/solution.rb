def organize(str)
    # persons = str.split(', ')
    # person_1, person_2 = persons.slice!(...3), persons.slice!(...3)
    # person_1_h = {name: person_1[0], age: person_1[1], occupation: person_1[2]}
    # person_2_h = {name: person_2[0], age: person_2[1], occupation: person_2[2]}
    # [person_1_h, person_2_h]

    str.split(', ')
        .each_slice(3).to_a
        .map { |arr| Hash[name: arr[0], age: arr[1], occupation: arr[2]]}
end
