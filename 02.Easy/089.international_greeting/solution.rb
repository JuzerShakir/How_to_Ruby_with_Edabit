def greeting(name)
    guest_list = {
        "Randy" => "Germany",
        "Karla" => "France",
        "Wendy" => "Japan",
        "Norman" => "England",
        "Sam" => "Argentina"
        }
    if guest_list.key?(name) then return "Hi! I'm #{name}, and I'm from #{guest_list[name]}"
    else return "Hi I'm a guest."
    end
end