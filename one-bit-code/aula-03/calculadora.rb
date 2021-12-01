resultado = ""

loop do
    puts "#{resultado}\n"

    puts "Seleciona abaixo a operação que deseja:"
    puts "1. Soma"
    puts "2. Subtração"
    puts "3. Multiplicação"
    puts "4. Divisão"
    puts "0. SAIR"
    print "Opção: "

    opcao = gets.chomp.to_i

    case opcao
    when 1..4
        print "Digite o primeiro valor: "
        num1 = gets.chomp.to_i
        print "Digite o segundo valor: "
        num2 = gets.chomp.to_i

        case opcao
        when 1
            resultado = "\nO resultado da soma é #{num1 + num2}!\n"
        when 2
            resultado = "\nO resultado da subtração é #{num1 - num2}!\n"
        when 3
            resultado = "\nO resultado da multiplicação é #{num1 * num2}!\n"
        when 4
            resultado = "\nO resultado da divisão é #{num1 / num2}!\n"
        end
    when 0
        break
    else
        resultado = "\nOpção inválida!\n"
    end

    system "clear"
end