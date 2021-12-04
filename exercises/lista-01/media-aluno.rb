# Leia duas notas de um aluno e escreva na tela a palavra “Aprovado” se a média das duas notas for maior ou igual a 7,0. Caso a média seja inferior a 7,0, escreva “O Aluno deve fazer a prova final!” e o programa deve ler a nota da prova final e calcule a média final. Se a média final for maior ou igual a 6,0, o programa deve escrever “Aprovado!”, caso contrário deve escrever “Reprovado!”

print "Digite a primeira nota: "
nota1 = gets.chomp.to_f

print "Digite a segunda nota: "
nota2 = gets.chomp.to_f

media = (nota1 + nota2) / 2

if media >= 7
    puts "Aprovado!"
else
    puts "\nO aluno debe fazer a prova final!"

    print "\nDigite a nota da prova final: "
    prova_final = gets.chomp.to_f

    media_final = (media + prova_final) / 2

    if media_final >= 6
        puts "Aprovado!"
    else
        puts "Reprovado!"
    end
end