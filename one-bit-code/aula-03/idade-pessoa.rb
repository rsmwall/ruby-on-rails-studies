resultado = ""

loop do
    puts resultado
    puts "Selecione uma das seguintes opções ===>"
    puts "1. Para saber a idade de alguém."
    puts "0. Sair"
    print "Opção: "

    opcao = gets.chomp.to_i

    if opcao == 1
        print "Digite o ano de nascimento da pessoa: "
        ano_nasc = gets.chomp.to_i
        print "Digite o ano atual: "
        ano_atual = gets.chomp.to_i
        idade = ano_atual - ano_nasc
        resultado = "A pessoa que nasceu em #{ano_nasc}, tem #{idade} anos em #{ano_atual}!"
    elsif opcao == 0
        break
    else
        resultado = "Opção inválida!"
    end

    # limpar o terminal
    system "clear"
end