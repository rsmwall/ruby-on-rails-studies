=begin

    -----------------------------------

    VARIÁVEIS


    local - (declarada dentro de um objeto) consistem 
            em uma letra minuscula ou underscore (_)
    
    instância - (declarada dentro de um objeto) começa 
                com um (@) arroba, seguido por um nome

    classe - (declarada dentro de uma classe) começa com
              duas arrobas (@@) seguidas por um nome

    global - começam com um cifrão ($)

    ------------------------------------

    CONSTANTES


    começa com uma letra maiúscula, também usada para nomes
    de classes e módulos

    -----------------------------------

    MÉTODOS


    começam com letra minúscula ou underscore
    '?', '!' e '=' também podem começar nomes de métodos

=end

# teste da tipagem dinâmica do Ruby

x = 7       # inteiro
x = "casa"  # string
x = 7.5     # float

# verificar classe

s = "olá"
s.class # string