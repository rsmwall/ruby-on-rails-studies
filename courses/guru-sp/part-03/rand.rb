=begin
  
    rand

    chamando o rand será apresentado um float maior ou igual a 0.0 e 
    menor que 1.0

    se der a ele um parâmetro inteiro ex.: rand(5), ele apresntará 
    um inteiro maior ou igual a o e menor que 5.
  
=end

# o programa abaixo faz três listas de palavras e então escolhe
# aleatoriamente uma palavra para cada uma das listas e imprime o resultado

lista_um = ['24/7', 'multicamada', '30.000 pés', 'B2B', 'win-win',
           'front-end', 'web-based', 'pervasivo', 'inteligente',
           'seis-sigma', 'caminho-critico', 'dinâmico']

lista_dois = ['empowered', 'sticky', 'value-added', 'orientado', 'centrado',
             'distribuído', 'agrupado', 'branded', 'fora de casa', 'posicionado',
             'em rede', 'focado', 'alavancado', 'alinhado', 'targeted',
             'compartilhado', 'cooperativo', 'acelerado']

lista_tres = ['processo', 'tipping-point', 'solução', 'arquitetura', 
             'competência central', 'estratégia', 'mindshare', 'portal', 'espaço',
             'visão', 'paradigma', 'missão']

tamanho_um = lista_um.length
tamanho_dois = lista_dois.length
tamanho_tres = lista_tres.length

rand1 = rand(tamanho_um)
rand2 = rand(tamanho_dois)
rand3 = rand(tamanho_tres)

frase = lista_um[rand1] + ' ' + lista_dois[rand2] + ' ' + lista_tres[rand3]

puts frase