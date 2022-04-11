=begin
  
    Faça um programa que leia um vetor com quinze posições para números
    inteiros. Crie, a seguir, um vetor resultante que contenha todos os números 
    primos do vetor digitado. Escreva o vetor resultante.
  
=end

vetor_original = []
vetor_primos = []

def saber_primos(num)
  num = case
  when num == 0 || num == 1 then false
  when num != 2 && num % 2 == 0 then false
  when num != 3 && num % 3 == 0 then false
  when num != 5 && num % 5 == 0 then false
  when num != 7 && num % 7 == 0 then false
  else true
  end
end


15.times do |vez|
  print "Digite o número #{vez+1}: "
  STDOUT.flush
  num = gets.chomp.to_i

  vetor_primos[vez] = num if saber_primos(num) == true
  vetor_primos.delete(nil)
end

print "Primos: #{vetor_primos}!"