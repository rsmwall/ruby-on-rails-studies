def talk(first_name, last_name)
  puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = 'Rafael'
last_name = 'Silva'

talk(first_name, last_name)

# valor padrao do parametro

def signal(color = 'vermelho')
  puts "O sinal é da cor #{color}"
end

signal

color = 'verde'
signal(color)
