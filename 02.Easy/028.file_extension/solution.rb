def get_extension(file_names)
    return file_names.map { | name | name.gsub(/(\w+)[.]/, '') }
end