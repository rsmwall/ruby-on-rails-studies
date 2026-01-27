# frozen_string_literal: true

LINES = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9],
  [1, 4, 7], [2, 5, 8], [3, 6, 9],
  [1, 5, 9], [3, 5, 7]
].freeze

# game class
class Game
  def initialize(player1, player2)
    @board = Array.new(9)

    @current_player = 0
    @players = [player1.new(self, 'X'), player2.new(self, 'O')]
  end

  def play
    loop do
      puts "Vez do Player #{@current_player + 1}"
      set_positions
      @players[@current_player].select_position

      set_positions
      break if tie? || won?(@players[@current_player].marker)

      change_player
    end
  end

  def tie?
    result = @board.all? { !it.nil? }

    puts 'Jogo empatado: Velha!' if result

    result
  end

  def won?(marker)
    result = LINES.any? do
      it.all? { @board[it - 1] == marker }
    end

    puts "Player #{@current_player + 1} ganhou!" if result

    result
  end

  def change_player
    @current_player = @current_player.zero? ? 1 : 0
  end

  def select_position(marker, position)
    unless available? position
      puts 'Posicao ja preenchida, selecione outra'
      return false
    end

    @board[position] = marker
    true
  end

  def available?(position)
    @board[position].nil?
  end

  def set_positions
    positions = (0..8).map { @board[it] || it + 1 }
    show positions
  end

  def show(positions)
    puts ''
    puts " #{positions[0]} | #{positions[1]} | #{positions[2]}"
    puts '---+---+---'
    puts " #{positions[3]} | #{positions[4]} | #{positions[5]}"
    puts '---+---+---'
    puts " #{positions[6]} | #{positions[7]} | #{positions[8]}"
    puts ''
  end
end

# player class
class Player
  attr_reader :marker

  def initialize(game, marker)
    @game = game
    @marker = marker
  end

  def select_position
    loop do
      print "Escolha onde colocar o #{@marker} -> "
      selection = gets.to_i

      if (1..9).include? selection
        break if @game.select_position(@marker, selection - 1)
      else
        puts 'Numero invalido, escolha novamente!'
      end
    end
  end
end

Game.new(Player, Player).play
