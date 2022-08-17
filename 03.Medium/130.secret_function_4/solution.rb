def secret(str)
    elements = str.split('.')
    tag = elements.shift
    "<#{tag} class='#{elements.join(' ')}'></#{tag}>"
end