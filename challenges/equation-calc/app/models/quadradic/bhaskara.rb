# frozen_string_literal: true

require_relative 'quadradic'

# class Bhaskara
class Bhaskara < Quadradic
  def initialize(equation)
    super()
    puts separate_terms(equation)
  end
end

eq = Bhaskara.new('2x2-4x+3=0')
