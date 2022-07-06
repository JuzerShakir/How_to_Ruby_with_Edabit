def get_best_student(h)
    h.max_by { |k, v| (v.sum / v.length)}.first
end