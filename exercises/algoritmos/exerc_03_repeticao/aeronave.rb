# Calcule a quantidade de combustível que pode ser colocada em uma aeronave e verifique se a aeronave
# pode levantar vôo ou não. Considere os seguintes critérios:
# · O peso de decolagem da aeronave é sempre igual a 500.000 kg;
# · O peso de decolagem é composto pela soma do peso do combustível, do peso da carga, do peso dos
# passageiros;
# · O peso do combustível é a quantidade do combustível (em litros) multiplicada pelo fator 1.5kg/l;
# · A quantidade mínima de combustível para que a aeronave decole é de 10000 l;
# · O peso da carga é o somatório do peso dos “containers” de cargas em quilogramas.
# · O peso dos passageiros é o somatório do peso de cada passageiro e de todos os volumes da sua
# bagagem; cada passageiro tem o peso estimado de 70kg e cada volume de bagagem tem o peso
# estimado de 10kg.
# O algoritmo deve ler o números de containers e a seguir ler o peso de cada container. A seguir devem
# ser lidos os dados dos passageiros (número do bilhete, quantidade de bagagens) até que o número do
# bilhete seja igual a 0. Devem ser mostrados, a quantidade de passageiros, a quantidade total de volume
# de bagagem, o peso dos passageiros, o peso da carga, a quantidade possível de combustível, e uma
# mensagem indicando a liberação da decolagem ou não.

print 'Digite a quantidade de containers: '
qtd_containers = gets.chomp.to_i

pesos_containers = []
contador = 1
passageiros = {
  bilhete: [],
  bagagens: []
}

qtd_containers.times do
  print "Digite o peso do container #{contador}: "
  pesos_containers << gets.chomp.to_f
  contador += 1
end

loop do
  print 'Digite o numero do bilhete: '
  bilhete = gets.chomp.to_i
  break if bilhete.zero?

  print 'Quantidade de bagagens: '
  bagagens = gets.chomp.to_i
  passageiros[:bilhete] << bilhete
  passageiros[:bagagens] << bagagens
end

PESO_AERONAVE = 500_000
PESO_MIN_COMBUSTIVEL = 10_000 * 1.5
volume_bagagens = passageiros[:bagagens].reduce { |soma, bagagem| soma + bagagem } * 10
peso_passageiros = (passageiros[:bilhete].length * 70) + volume_bagagens
peso_carga = pesos_containers.reduce { |soma, container| soma + container }

sobra_combustivel = PESO_AERONAVE - (peso_carga + peso_passageiros)
permissao_decolar = sobra_combustivel >= PESO_MIN_COMBUSTIVEL

puts "
Qtd de passageiros: #{passageiros[:bilhete].length}
Volume de bagagens: #{volume_bagagens} Kg
Peso dos passageiros: #{peso_passageiros} Kg
Peso da carga: #{peso_carga} Kg
Qtd possivel de combustivel: #{sobra_combustivel.to_f / 1.5}
Permissao para decolar: #{permissao_decolar ? 'APROVADO' : 'NEGADO'}"
