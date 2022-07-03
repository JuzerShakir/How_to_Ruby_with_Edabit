def chatroom_status(arr)
    user_count = arr.count
    case user_count
    when 0 then return "no one online"
    when 1 then return "#{arr.first} online"
    when 2 then return "#{arr.first} and #{arr[1]} online"
    else return "#{arr.first}, #{arr[1]} and #{user_count - 2} more online"
    end
end