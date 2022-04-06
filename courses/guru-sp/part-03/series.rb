=begin

    Séries (Ranges)

    Geralmente usadas para sequências

    operaodores:

    ..    cria uma série inclusiva
    ...   cria um série que exclui o valor mais alto especificaado

=end

# pode-se converter uma série em um array

a = (1..10) .to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

=begin
  
    Sequências têm um ponto de início, de término e um modo
    de produzir valores sucessivos.
  
=end

digitos = -1..9
puts digitos.include?(5)          # true
puts digitos.min                  # -1
puts digitos.max                  # 9
puts digitos.reject {|i| i < 5}   # [5, 6, 7, 8, 9]

# verificar se um valor está dentro de um intervalo representado pela série

(1..10) === 5         # true
(1..10) === 15        # false
(1..10) === 3.14159   # true
('a'..'j') === 'c'    # true
('a'..'j') === 'z'    # false