# Leia uma data (dia, mês e ano), verifique e escreva se a data é ou não válida

puts 'Digite uma data (dd/mm/aaaa): '
STDOUT.flush
data = gets.chomp

dia = data[0..1].to_i
mes = data[3..4].to_i
ano = data[6..].to_i

# verifica se o ano é bissexto

bissexto = case
when ano % 400 == 0 then true
when ano % 100 == 0 then false
else ano % 4 == 0
end

# verifica a validade do mês

(1...13).include?(mes) ? mes_val = true : mes_val = false

# verifica a validade do dia

if mes_val == true
  if mes == 2
    dia_val = case
    when bissexto == true && dia <= 29 then true
    when bissexto == false && dia <= 28 then true
    else dia_val = false
    end
  elsif [ 1, 3, 5, 7, 8, 10, 12 ].include?(mes)
    dia_val = case
    when dia <= 31 then true
    else dia_val = false
    end
  else
    dia_val = case
    when dia <= 30 then true
    else dia_val = false
    end
  end
else
  dia_val = false
end

# verificação final

if mes_val == true && dia_val == true
  puts "A data inserida: #{data} é válida!"
else
  puts "A data inserida: #{data} não é válida!"
end
