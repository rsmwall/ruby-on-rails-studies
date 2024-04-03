# frozen_string_literal: true

# Port module
module Port
  IDENTIFIER = :PALE

  def self.get_identifier(name)
    name[0..3].upcase.to_sym
  end

  def self.get_terminal(identifier)
    cargo = identifier.to_s.downcase[0..2]
    cargo == 'gas' || cargo == 'oil' ? :A : :B
  end
end

puts Port.get_terminal(:OIL123)
