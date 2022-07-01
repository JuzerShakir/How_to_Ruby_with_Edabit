def count_smileys(emotions)
    emotions.count{ |e|
        (e.include?(':') || e.include?(';')) && (e.include?(')') || e.include?('D') )
    }
end