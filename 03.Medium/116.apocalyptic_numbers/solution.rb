def apocalyptic(n)
    i = (2**n).to_s.index('666')
    i ? "Repent! #{i} days until the Apocalypse!" : "Crisis averted. Resume sinning."
end