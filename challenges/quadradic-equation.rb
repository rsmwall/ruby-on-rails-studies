class Equation
  def separate_terms(equation)

    @equation = equation
    @original_equation = equation

    # hash com o regex para a equação completa e os termos separados (ax2 = bx = c = 0)
    # Tipos de poteência aceitos (x2), (x^2) e (x**2)

    basic_equation = {
      default: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)(\s*\(*[-,+]\s*\d*x\)*)(\s*\(*[-,+]\s*\d*\)*)?(\s*=*\s*0*)/,
      a: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)/,
      b: /(\s*\(*[-,+]\s*\d*x\)*)/,
      c: /(\s*\(*[-,+]\s*\d*\)*)/
    }

    # exclui os espaços da equação recebida

    @equation = @equation.delete(" ")
    
    # separação dos termos e atribuição a variáveis próprias

    initial_term_a = basic_equation[:a].match(@equation).to_s
    @equation = @equation[initial_term_a.length..]
    initial_term_b = basic_equation[:b].match(@equation).to_s
    @equation = @equation[initial_term_b.length..]
    initial_term_c = basic_equation[:c].match(@equation).to_s

    # pegar apenas os valores (sem '()', 'x', ou outros caracteres)

    temp_term_a = get_value(initial_term_a)
    temp_term_b = get_value(initial_term_b)
    temp_term_c = get_value(initial_term_c)

    # tornar os valores em inteiros

    @term_a = to_integer(temp_term_a).to_i
    @term_b = to_integer(temp_term_b).to_i
    @term_c = temp_term_c.to_i

    return @term_a, @term_b, @term_c

  end

  def get_value(received_term)
    index = 0
    method_term = ""

    while index <= (received_term.length - 1)
      if received_term[index] == '(' || received_term[index] == ')'
      elsif received_term[index] != 'x'
        method_term = method_term + received_term[index]
      else
        break
      end
      index += 1
    end

    return method_term
  end

  def to_integer(received_term)
    term_string = ""

    # caso o termo seja ex.: -x², este código atribui à variável o valor (-1)
    # caso o termo seja ex.: x², este código atribui à variável o valor (1)
    # caso já tenha um valor, apenas retorna o mesmo

    if received_term.empty?
      term_string = '1'
    elsif received_term == '-'
      term_string = '-1'
    else
      term_string = received_term
    end

    return term_string
  end

end

class Bhaskara < Equation
  def initialize(equation)

    # envia a equação para a classe pai e recebe os termos separados

    @term_a, @term_b, @term_c = separate_terms(equation)

    calc_delta
  end

  def calc_delta

    # variaveis para guardar valores usados apenas na impressão final

    exponential_b = @term_b ** 2
    first_multiply = @term_a * @term_c
    second_multiply = first_multiply * 4

    # calculo do delta

    @delta = exponential_b - second_multiply

    # retornar os termos para string para impressão com '()' caso negativos

    term_a = parenteses_for_negative(@term_a)
    term_b = parenteses_for_negative(@term_b)
    term_c = parenteses_for_negative(@term_c)
    first_multiply = parenteses_for_negative(first_multiply)
    delta = parenteses_for_negative(@delta)

    # formatação para impressão (delta) -------------------------------------------------------------------------
    # Nota: o simbolo de vezes usado é (×) e não (x)

    @delta_text = "Δ = b² - 4 × a × c" \
    "\nΔ = #{term_b}² - 4 × #{term_a} × #{term_c}" \
    "\nΔ = #{exponential_b} - 4 × #{first_multiply}" \
    "\nΔ = #{exponential_b} "

    (second_multiply > 0) ? @delta_text << "- #{second_multiply}" : @delta_text << "+ #{second_multiply * -1}"

    @delta_text << "\nΔ = #{@delta}"

    # -----------------------------------------------------------------------------------------------------------

    # verificar se o delta possui solução real

    verify_delta
    if @delta_verify == 1 || @delta_verify == 2
      bhaskara_formule(term_a, term_b, delta)
    else
      print_results
    end
  end

  def verify_delta
    if @delta > 0
      @delta_verify = 1
    elsif @delta == 0
      @delta_verify = 2
    else
      @delta_verify = 0    
    end
  end

  def bhaskara_formule(term_a, term_b, delta)

    @delta_root = Math.sqrt(@delta)

    # formatação para impressão (formula bhaskara) ---------------------------------------------------------

    @formule_bhask_text = "\s\s\s\s\-b ± √Δ\nx = -------\n\s\s\s\s\s2 × a" \
    "\n" \
    "\n\s\s\s\s-#{term_b} ± √#{delta}\nx = -----------\n\s\s\s\s\s\s2 × #{term_a}" \
    "\n" \
    "\n\s\s\s\s#{-1 * @term_b} ± #{@delta_root.round(2)}\nx = -----------\n\s\s\s\s\s\s\s\s#{2 * @term_a}" 

    # -------------------------------------------------------------------------------------------------------

    get_roots
  end

  def get_roots

    # retornar os termos para string para impressão com '()' caso negativos
    sign_inverted_b = @term_b * -1
    term_a_multiplied = @term_a * 2

    if @delta_verify == 1

      # raizes

      @root_one = (sign_inverted_b + @delta_root) / term_a_multiplied
      @root_two = (sign_inverted_b - @delta_root) / term_a_multiplied

      # formatação para impressão (raizes) -----------------------------------

      @roots = "\s\s\s\s\s#{sign_inverted_b} + #{@delta_root.round(2)}\s\s\s\s\s\s\s\s\s#{(sign_inverted_b + @delta_root).round(2)}" \
      "\nx₁ = -----------\s= ----------\s= #{@root_one.round(2)}" \
      "\n\s\s\s\s\s\s\s\s\s#{term_a_multiplied}\s\s\s\s\s\s\s\s\s\s\s#{term_a_multiplied}" \
      "\n" \
      "\n\s\s\s\s\s#{sign_inverted_b} - #{@delta_root.round(2)}\s\s\s\s\s\s\s\s#{(sign_inverted_b - @delta_root).round(2)}" \
      "\nx₂ = -----------\s= ----------\s= #{@root_two.round(2)}" \
      "\n\s\s\s\s\s\s\s\s\s#{term_a_multiplied}\s\s\s\s\s\s\s\s\s\s\s\s#{term_a_multiplied}" 

      # ----------------------------------------------------------------------
    elsif @delta_verify == 2

      # raiz

      @root_one = sign_inverted_b.to_f / term_a_multiplied.to_f

      # formatação para impressão (raizes) ---------------------------------------

      @roots = "\s\s\s\s\s#{sign_inverted_b} ± 0\s\s\s\s\s#{sign_inverted_b}" \
      "\nx = --------\s= -----\s= #{@root_one.round(2)}" \
      "\n\s\s\s\s\s\s\s#{term_a_multiplied}\s\s\s\s\s\s\s\s#{term_a_multiplied}"

      # --------------------------------------------------------------------------
    end

    print_results
  end

  def parenteses_for_negative(value)
    value_string = value.to_s
    if value < 0
      value_string = value_string.insert(0, '(')
      value_string = value_string.insert(value_string.length, ')')
    end

    return value_string
  end

  def print_results
    system 'clear'

    puts 'EQUAÇÃO QUADRÁDICA USANDO BHASKARA'

    puts "\nEquação: #{@original_equation}"
    puts "\n* Termos"
    puts "\nTermo A: #{@term_a}\nTermo B: #{@term_b}\nTermo C: #{@term_c}"
    puts "\n* Procurar o valor do Delta"
    puts ""
    puts @delta_text
    
    if @delta_verify == 0
      puts "\nO valor de Delta (#{@delta}) é menor que 0, logo não há solução real."
    elsif @delta_verify == 1
      puts "\nO valor de Delta (#{@delta}) é maior que 0, logo há duas soluções reais."
      puts "\n* Fórmula de x"
      puts ""
      puts @formule_bhask_text
      puts "\n* Raízes"
      puts ""
      puts @roots
      puts "\n* Resultado"
      puts "\nx₁ = #{@root_one}"
      puts "x₂ = #{@root_two}"
    elsif @delta_verify == 2
      puts "\nO valor de Delta (#{@delta}) é igual a 0, logo há uma solução real."
      puts "\n* Fórmula de x"
      puts ""
      puts @formule_bhask_text
      puts "\n* Raíz"
      puts ""
      puts @roots
      puts "\n* Resultado"
      puts "\nx = #{@root_one}"
    end
  end
end

print 'Digite a equação: '
STDOUT.flush
user_equation = gets.chomp

equation = Bhaskara.new(user_equation)