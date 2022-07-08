def test_fairness(a, b)
    def calc_scores(s)
        return s.map { |a| a.reduce(1, :*) }.sum
    end
    calc_scores(a) == calc_scores(b)
end