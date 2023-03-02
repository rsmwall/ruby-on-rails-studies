class Usuario
  def add(nome)
    @nome = nome
    puts 'Usuario adicionado'
    ola
  end

  def ola
    puts "Seja bem-vindo #{@nome}"
  end
end

usuario = Usuario.new
usuario.add('Rafael')