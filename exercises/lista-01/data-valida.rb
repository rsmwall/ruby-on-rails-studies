# Leia uma data (dia, mês e ano), verifique e escreva se a data é ou não válida

print "Digite o dia: "
dia = gets.chomp.to_i

print "Digite o mes: "
mes = gets.chomp.to_i

print "Digite o ano: "
ano = gets.chomp.to_i

ano_bis = false, mes_val = true, dia_val = true

# saber se o ano é bissexto

if ano % 4 == 0
    if ano % 100 == 0
        if ano % 400 == 0
            ano_bis = true
        else
            ano_bis = false
        end
    else
        ano_bis = true
    end
else 
    ano_bis = false
end

# validade mês

if mes <= 12
    mes_val = true
else
    mes_val = false
end

# validade dia

if mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12
    if dia <= 31
        dia_val = true
    else
        dia_val = false
    end
elsif mes == 2
    if ano_bis == true
        if dia <= 29
            dia_val = true
        else
            dia_val = false
        end
    elsif ano_bis == false
        if dia <= 28
            dia_val = true
        else
            dia_val = false
        end
    end
elsif mes == 4 || mes == 6 || mes == 9 || mes == 11
    if dia <= 30
        dia_val = true
    else
        dia_val = false
    end
end

# validação final

if dia_val == true && mes_val == true
    puts "A data inserida é válida!"
else
    puts "A data inserida não é válida!"
end
