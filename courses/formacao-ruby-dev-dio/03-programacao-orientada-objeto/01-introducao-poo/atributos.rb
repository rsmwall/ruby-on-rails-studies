# class Aluno
#   def nome
#     @nome
#   end

#   def nome= nome
#     @nome = nome
#   end
# end

# aluno = Aluno.new
# aluno.nome = 'Rafael'
# puts aluno.nome

# attr_accessor

class Aluno
  attr_accessor :nome, :idade
end


aluno = Aluno.new
aluno.nome = 'Rafael'
aluno.idade = 20
puts aluno.nome
puts aluno.idade