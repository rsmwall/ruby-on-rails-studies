# Leia uma data (dia, mes e ano), verifique e escreva se a data e ou nao valida

print "Digite o dia: "
dia = gets.chomp.to_i

print "Digite o mês: "
mes = gets.chomp.to_i

print "Digite o ano: "
ano = gets.chomp.to_i

ano_bis = false, mes_val = false, dia_val = false

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

# validade dia e mes

if dia < 32 && dia > 0 && mes < 13 && mes > 0

    mes_val = true

    if ano_bis == true && mes == 2 && dia <= 29
        dia_val = true
    elsif ano_bis == false && mes == 2 && dia <= 28
        dia_val = true
    else 
        dia_val = false
    end

    if mes != 2 
        if dia <= 31 && mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12
            dia_val = true
        elsif dia <= 30 && mes == 4 || mes == 6 || mes == 9 || mes == 11
            dia_val = true
        else
            dia_val = false
        end
    end
else
    dia_val = false
    mes_val = false
end

# verificacao final

if dia_val == true && mes_val == true
    puts "A data inserida é válida!"
else
    puts "A data inserida não é válida!"
end