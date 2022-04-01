=begin
    
    **          exponenciação

    ! ~ + -     não, complemento, mais e menos

    * / %       multiplicação, divisão, módulo

    >> <<       deslocamento para direita ou esquerda

    &           "E" (bitwise par inteiros)

    ^           "OU" exclusivo e "ou" comum (bitwise par inteiros)

    <= < > >=   operadores de comparação

    &&          "E" lógico

    ||          "OU" lógico

    .. ...      intervalos inclusivo e exclusivo

    ? :         operador ternário (if-then-else)

    = %= /= -=  operadores de atribuição
    += &= >>=
    <<= &&= *=

    defined?    checar se um símbolo foi definido

    not         negação lógica

    or and      composição lógica

    if unless   modificadores de expressão
    while until

    begin/end   expressão de blocos
    
=end

# operaodor (%) módulo

puts (5 % 3)
puts (-5 % 3)
puts (5 % -3)
puts (-5 % -3)

# or, ||

=begin

    ambos vão retornar o primeiro argumento ao menos
    que este retorne false, nesse caso retornam
    o segundo argumento

=end

puts nil || 2008
puts false || 2008
puts "ruby" || 2008

=begin

    a diferença entre or, || é a precedência,
    || tem precedência mais alta que or

    || é comumente usado para atribuir
    valor em caso de nenhum valor ter sido atribuído

=end

@variavel ||= "valor padrão"
puts @variavel