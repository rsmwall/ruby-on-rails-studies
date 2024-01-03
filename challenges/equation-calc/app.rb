basic_equation = {
      default: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)(\s*\(*[-,+]\s*\d*x\)*)(\s*\(*[-,+]\s*\d*\)*)?(\s*=*\s*0*)/,
      a: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)/,
      b: /(\s*\(*[-,+]\s*\d*x\)*)/,
      c: /(\s*\(*[-,+]\s*\d*\)*)/
    }

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
    
    # exclui os espaços da equação recebida
    @equation = '2x2-4x=0'
    @equation = @equation.delete(" ")
    
    # separação dos termos e atribuição a variáveis próprias

    initial_term_a = basic_equation[:a].match(@equation)
    @equation = @equation[initial_term_a.length..]
    initial_term_b = basic_equation[:b].match(@equation).to_s
    @equation = @equation[initial_term_b.length..]
    initial_term_c = basic_equation[:c].match(@equation).to_s
    
    puts get_value(initial_term_a)
    puts get_value(initial_term_b)
    puts get_value(initial_term_c)