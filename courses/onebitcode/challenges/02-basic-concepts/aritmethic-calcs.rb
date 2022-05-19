# receba dois numeros inteiros e exiba a soma, subtracao, muliplicacao e divisao deles

print "Digite um numero: "
STDOUT.flush
numero1 = gets.chomp.to_i

print "Digite outro numero: "
STDOUT.flush
numero2 = gets.chomp.to_i

soma = numero1 + numero2
subtracao = numero1 - numero2
multiplicacao = numero1 * numero2
divisao = numero1 / numero2

print "Os dois números digitados foram #{numero1} e #{numero2}
Soma = #{soma}, Subtração = #{subtracao},
MUltiplicação = #{multiplicacao}, Divisão = #{divisao}."
