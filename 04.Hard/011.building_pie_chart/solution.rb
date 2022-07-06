def pie_chart(h)
    total = h.values.reduce(:+)
    h.transform_values { |v| ((v.to_f/total) * 360).round(1) }
end