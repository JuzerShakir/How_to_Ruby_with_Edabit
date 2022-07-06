def get_name_and_top_note(arr)
    arr.map { |o| Hash[name: o["name"], top_note: o["notes"].max || 0]}
end