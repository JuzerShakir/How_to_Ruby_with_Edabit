def normalize(str)
    str.match?(/^[A-Z ]+$/) ? str.capitalize << '!' : str
end