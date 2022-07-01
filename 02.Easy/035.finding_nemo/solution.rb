def find_nemo(str)
    nemo_i = str.split(' ').index("Nemo")

    nemo_i ? "I found Nemo at #{nemo_i + 1}!" : "I can't find Nemo :("
end