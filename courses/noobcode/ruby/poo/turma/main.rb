require_relative 'aluno'
require_relative 'professor'
require_relative 'turma'

a1 = Aluno.new('Rafael', 21, 123)
a2 = Aluno.new('Ana', 53, 343)
p1 = Professor.new('Mateus', 42, 9090)

t1 = Turma.new([a1, a2], p1)

t1.dados_turma