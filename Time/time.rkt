require 'time'

t = Time.now
while true
  puts t.strftime("%H:%M:%S")
  sleep 1
end

