require "date"
def current_streak(curr_day_str, arr)
    curr_day = Date.parse(curr_day_str)
    streak = arr.map { |o| Date.parse(o["date"])}
                .reverse
                .slice_when { |a, b| a != b.succ }
                .to_a.first
    case streak.first
    when curr_day then streak.count
    when curr_day.succ then streak.count + 1
    else 0
    end
end