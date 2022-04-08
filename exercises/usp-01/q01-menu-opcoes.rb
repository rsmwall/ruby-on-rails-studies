=begin
  
     Faça um programa que mostre o menu de opções a seguir, receba a opção
     do usuário e os dados necessários em cada operação.

        Menu opções:
        1. Verifique se um número é par ou ímpar
        2. Multiplicar dois números
        3. Dividir dois números
        4. Raiz quadrada de um número
        5. Elevar um número a uma potência
  
=end

menu = <<STR
Escolha uma das opções:

1. Verifique se um número é par ou ímpar
2. Multiplicar dois números
3. Dividir dois números
4. Raiz quadrada de um número
5. Elevar um número a uma potência\n
STR

def receber_um_numero
  puts "\nEscolha um número: "
  STDOUT.flush
  num1 = gets.chomp.to_i

  return num1
end

def receber_dois_numeros
  puts "\nEscolha um número: "
  STDOUT.flush
  num1 = gets.chomp.to_i

  puts "\nEscolha outro número: "
  STDOUT.flush
  num2 = gets.chomp.to_i

  return num1, num2
end

puts menu
STDOUT.flush
opcao = gets.chomp.to_i

case opcao
when 1 then

  num = receber_um_numero
  puts num%2 == 0 ? "\nÉ par" : "\nÉ ímpar"

when 2 then

  num1, num2 = receber_dois_numeros
  puts "\nA multiplicação é #{num1 * num2}"

when 3 then

  num1, num2 = receber_dois_numeros
  puts "\nA divisão é #{num1 / num2}"

when 4 then

  num = receber_um_numero
  puts "\nA Raiz quadrada é #{Math.sqrt(num)}"

when 5 then

  num1, num2 = receber_dois_numeros
  puts "\nO resultado da exponenciação é #{num1**num2}"

else puts 'Opção inválida'
end
