require 'time'

t = Time.now
n = 0
while n < 10 
  puts t.strftime("%H:%M:%S")
  sleep(60)
  n += 1
end

t = Time.now

puts t.strftime("%d/%m/%Y %H:%M:%S")
# strftime - formatear tiempo (stringfy time)
# %d - día (day)
# %m - mes (month)
# %Y - año (year)
# %H - hora en formato 24 horas (hour)
# %M - minuto
# %S - segundo (second)

puts t.strftime("%A")
puts t.strftime("%B")
# %A - día de la semana
# %B - mes del año

puts t.strftime("son las %H:%M %Z")
# %Z - zona horariaj

