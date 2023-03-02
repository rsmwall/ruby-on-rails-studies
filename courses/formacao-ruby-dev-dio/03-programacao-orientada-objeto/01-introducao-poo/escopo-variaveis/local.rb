class Teste
  def local
    local = 'é acessada somente neste metodo local'
    print local
  end
end

# print local
teste = Teste.new
teste.local

# puts local - erro
puts local