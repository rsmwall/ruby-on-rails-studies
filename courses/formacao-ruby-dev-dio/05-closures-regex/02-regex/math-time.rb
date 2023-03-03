# math - matematica
puts Math.sqrt(16)

puts Math.log10(100)
puts radian = 30 * (Math::PI / 180)
puts Math::E
puts Math::PI

# time - data e hora
# hora local

time = Time.now
puts time
puts time.year

# metodo strftime - formatacao de datas
puts time.strftime('%d/%m/%y')

# verificar se o dia da semana é...
puts time.friday?

# comparando datas
time2 = Time.now
puts time == time2