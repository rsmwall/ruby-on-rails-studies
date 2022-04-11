=begin

    Faça um programa que monte os n primeiros termos da sequência de Fibonacci.

=end

def fibonacci(n)
  sequencia = ""
  soma = 0
  anterior = 0
  proximo = 1

  0.upto(n-1) do |num, i|
    if num == 0 || num == 1
      sequencia += num.to_s + " "
    else
      soma = anterior + proximo
      anterior = proximo
      proximo = soma
      sequencia += soma.to_s + " "
    end
  end

  puts sequencia
end

print "Digite o número de casas da sequência: "
STDOUT.flush
n = gets.chomp.to_i

fibonacci(n)