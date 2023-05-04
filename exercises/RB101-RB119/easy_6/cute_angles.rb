def dms(num)
  return %(0°00'00") if num.zero?
  minutes = (num % 1) * 60
  seconds = (minutes % 1) * 60
  %(#{num.floor}°#{format("%02d",minutes)}\'#{format("%02d",seconds)}\")
end


puts dms(30) == %(30°00'00"),
dms(76.73) == %(76°43'48"),
dms(254.6) == %(254°36'00"),
dms(93.034773) == %(93°02'05"),
dms(0) == %(0°00'00"),
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")