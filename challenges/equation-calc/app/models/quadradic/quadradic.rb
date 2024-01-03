# frozen_string_literal: true

require '../equation'

# class Quadradic
class Quadradic < Equation
  @basic_equation = {
    default: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)(\s*\(*[-,+]\s*\d*x\)*)(\s*\(*[-,+]\s*\d*\)*)?(\s*=*\s*0*)/,
    a: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)/,
    b: /(\s*\(*[-,+]\s*\d*x\)*)/,
    c: /(\s*\(*[-,+]\s*\d*\)*)/
  }

  def separate_terms(equation)
    @equation = equation.delete(' ')
    @original_equation = @equation

    puts set_terms
  end

  def set_terms
    term_a = @equation.match(@basic_equation[:a]).to_s
    @equation = @equation[term_a.length..]
    term_b = @equation.match(@basic_equation[:b]).to_s
    @equation = @equation[term_b.length..]
    term_c = @equation.match(@basic_equation[:c]).to_s

    @terms = []
    @terms.insert(0, term_a, term_b, term_c)
  end
end

qu = Quadradic.new
qu.separate_terms('2x2-4x+3=0')