class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end 

  def conferencia
    puts 'Instancia de classe iniciada com os valores'
    puts "Nome: #{@nome}"
    puts "Idade: #{@idade}"
  end
end

pessoa = Pessoa.new('Rafael', 20)
pessoa.conferencia

pessoa_1 = Pessoa.new('Ana', 54)
pessoa_1.conferencia