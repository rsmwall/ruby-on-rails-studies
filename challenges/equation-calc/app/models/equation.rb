# frozen_string_literal: true

# class Equation
class Equation
  def get_value(received_term)
    index = 0
    method_term = ''

    while index <= received_term.length - 1
      break unless !(received_term[index] == '(' || received_term[index] == ')') && received_term[index] != 'x'

      method_term += received_term[index]
      index += 1
    end

    method_term
  end
end
