def image_url_parser(url)
    url_trim = url.split('/', 4).pop
    if url_trim.include?('/')
        type, id = url_trim.split('/')
    else
        type = "image"
        id = url_trim[/\A(\w+)/]
    end
    Hash[id: id, type: type]
end