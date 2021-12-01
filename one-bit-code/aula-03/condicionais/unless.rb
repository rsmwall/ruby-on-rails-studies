status_produto = "fechado"

# também pode ser usado 'if not'
unless status_produto == "aberto"
    mudar = "pode"
else
    mudar = "não pode"
end

puts "Você #{mudar} mudar o produto!"