def letter_at_position(i)
    a = (1..26).zip('a'..'z').assoc(i)
    (a && a.last) || "imvalid"
end