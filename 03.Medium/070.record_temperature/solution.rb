record_temps = {sun: [[34, 82], [44, 72]],
                mon: [[24, 82], [19, 70]],
                tues: [[20, 89], [40,69]],
                wed: [[5, 88], [39, 68]],
                thur: [[9, 88], [26, 89]],
                fri: [[26, 89], [36, 70]],
                sat: [[27, 83], [38, 69]]}

p record_temps.map { |k, v| v.flatten.minmax }
]