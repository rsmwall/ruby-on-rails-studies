# frozen_string_literal: true

system('clear')
puts '===== ACERTE O NUMERO ====='

Random.rand(0..100)

$player = {
  player1: '',
  tentativas1: 1,
  player2: '',
  tentativas2: 1
}

print "\nJogador 01: "
$player[:player1] = gets.chomp

print 'Jogador 02: '
$player[:player2] = gets.chomp

def jogar
  player_one
end

def player_one
  system('clear')
  puts '===== ACERTE O NUMERO ====='
  print "\nVez de #{$player[:player1]}"
  number = Random.rand(0..100)
  tentativas = 1
  choice = 0

  while choice != number
    print "\nChute um numero: "
    choice = gets.chomp.to_i

    if choice == number
      puts "\n\e[32mAcertou\e[0m"
      puts "Numero de tentativas: #{tentativas}"
      $player[:tentativas1] = tentativas
      sleep(2)
      player_two
    elsif choice > number
      print "\nO numero eh menor que #{choice}"
      tentativas += 1
    else
      print "\nO numero eh maior que #{choice}"
      tentativas += 1
    end
  end
end

def player_two
  system('clear')
  puts '===== ACERTE O NUMERO ====='
  print "\nVez de #{$player[:player2]}"
  number = Random.rand(0..100)
  tentativas = 1
  choice = 0

  while choice != number
    print "\nChute um numero: "
    choice = gets.chomp.to_i

    if choice == number
      puts "\n\e[32mAcertou\e[0m"
      puts "Numero de tentativas: #{tentativas}"
      $player[:tentativas2] = tentativas
      sleep(2)
      final
    elsif choice > number
      print "\nO numero eh menor que #{choice}"
      tentativas += 1
    else
      print "\nO numero eh maior que #{choice}"
      tentativas += 1
    end
  end
end

def final
  system('clear')
  puts '===== ACERTE O NUMERO ====='
  if $player[:tentativas1] > $player[:tentativas2]
    puts "\n\e[32mVENCEDOR: #{$player[:player2]}\e[0m\n"
  elsif $player[:tentativas1] == $player[:tentativas2]
    puts "\n\e[33mEMPATE\e[0m\n"
  else
    puts "\n\e[32mVENCEDOR: #{$player[:player1]}\e[0m\n"
  end

  puts "\nResultados Finais"
  puts "#{$player[:player1]} - #{$player[:tentativas1]} tentativas"
  puts "#{$player[:player2]} - #{$player[:tentativas2]} tentativas\n"
end

jogar
