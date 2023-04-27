MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def time_of_day(time)
  time = (time + MINUTES_PER_DAY) % MINUTES_PER_DAY
  hour, minute = time.divmod(MINUTES_PER_HOUR)
  "#{format("%.2d",hour)}:#{format("%.2d",minute)}"
end



puts time_of_day(0) == "00:00",
time_of_day(-3) == "23:57",
time_of_day(35) == "00:35",
time_of_day(-1437) == "00:03",
time_of_day(3000) == "02:00",
time_of_day(800) == "13:20",
time_of_day(-4231) == "01:29"