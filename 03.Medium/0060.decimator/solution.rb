def decimator(str)
    str.slice(...-(str.length * 0.1).ceil)
end