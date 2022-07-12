def can_concatenate(a, ta)
    a.flatten!.count == ta.count && a == a.intersection(ta)
end