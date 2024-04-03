# frozen_string_literal: true

# Chess module
module Chess
  RANKS = (1..8).freeze
  FILES = ('A'..'H').freeze

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_name[..1].upcase + last_name[-2..].upcase
  end

  def self.move_message(first_name, last_name, square)
    nickname = nick_name(first_name, last_name)

    return "#{nickname} moved to #{square}" if valid_square?(square[-1].to_i, square[0])

    "#{nickname} attempted to move to #{square}, but that is not a valid square"
  end
end

puts Chess.move_message('John', 'Doe', 'A9')
