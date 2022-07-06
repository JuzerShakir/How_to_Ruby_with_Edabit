def get_student_top_notes(arr)
    arr.map { |o| o[:notes].max || 0}
end