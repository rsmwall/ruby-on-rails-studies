# Escreva um algoritmo que, tendo como dados de entrada 2 pontos quaisquer no plano, ponto1 (x1,y1) e
# ponto2 (x2,y2), escreva a distância entre eles, conforme fórmula abaixo.

print 'Posicao 1 (n,n): '
pos1 = gets.chomp

print 'Posicao 2 (n/n): '
pos2 = gets.chomp

x1 = pos1[0].to_i
y1 = pos1[2].to_i
x2 = pos2[0].to_i
y2 = pos2[2].to_i

distancia = Math.sqrt(((x2 - x1)**2) + ((y2 - y1)**2))

puts distancia
