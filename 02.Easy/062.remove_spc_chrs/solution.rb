def remove_special_characters(str)
    str.gsub(/[.!@#$%^&*()]/, '')
end