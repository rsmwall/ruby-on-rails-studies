# frozen_string_literal: true

# Blackjack module
module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'two' then 2
    when 'three' then 3
    when 'four' then 4
    when 'five' then 5
    when 'six' then 6
    when 'seven' then 7
    when 'eight' then 8
    when 'nine' then 9
    when 'ten', 'jack', 'queen', 'king' then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    range = parse_card(card1) + parse_card(card2)

    case range
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    when 21 then 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer)
    range = card_range(card1, card2)

    case
    when card1 == card2 && card1 == 'ace' then 'P'
    when range == 'blackjack'
      if [10, 11].include?(parse_card(dealer)) then 'S'
      else
        'W'
      end
    when range == 'high' then 'S'
    when range == 'mid'
      if parse_card(dealer) >= 7 then 'H'
      else
        'S'
      end
    when range == 'low' then 'H'
    end
  end
end
