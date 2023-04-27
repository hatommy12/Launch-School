MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hour = time[0..1].to_i
  minute = time[-2..-1].to_i
  ((hour * MINUTES_PER_HOUR) + minute) % MINUTES_PER_DAY
end

def before_midnight(time)
  minutes_after_midnight = after_midnight(time)
  return 0 if minutes_after_midnight.zero?
  MINUTES_PER_DAY - minutes_after_midnight
end


puts after_midnight('00:00') == 0,
before_midnight('00:00') == 0,
after_midnight('12:34') == 754,
before_midnight('12:34') == 686,
after_midnight('24:00') == 0,
before_midnight('24:00') == 0