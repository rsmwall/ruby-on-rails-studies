# # regex para equacao quadradica padrao (ax^2 + bx + c = 0)

basic_equation = {
  default: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)(\s*\(*[-,+]\s*\d*x\)*)(\s*\(*[-,+]\s*\d*\)*)?(\s*=*\s*0*)/,
  a: /(\(*\s*\-*\d*x((\^2)|(2)|(\*\*2))\)*)/,
  b: /(\s*\(*[-,+]\s*\d*x\)*)/,
  c: /(\s*\(*[-,+]\s*\d*\)*)/
}

print 'Digite a equação: '
STDOUT.flush
user_equation = gets.chomp

# excluir espaços

final_equation = user_equation.delete(" ")

puts final_equation

initial_term_a = basic_equation[:a].match(final_equation).to_s
final_equation = final_equation[initial_term_a.length..]
initial_term_b = basic_equation[:b].match(final_equation).to_s
final_equation = final_equation[initial_term_b.length..]
initial_term_c = basic_equation[:c].match(final_equation).to_s

puts ""

puts initial_term_a
puts initial_term_b
puts initial_term_c

# remover x e potencia de a

index_a = 0
temporary_term_a = ""

while index_a <= (initial_term_a.length - 1)

  if initial_term_a[index_a] == '(' || initial_term_a[index_a] == ')'  
  elsif initial_term_a[index_a] != 'x'
    temporary_term_a = temporary_term_a + initial_term_a[index_a]
  else
    break
  end
  index_a += 1
end

# verificar valor de a

term_a_string = ""
term_a = 0

if temporary_term_a.empty?
  term_a_string = 1
elsif temporary_term_a == '-'
  term_a_string = -1
else
  term_a_string = temporary_term_a
end

# remover x de b

index_b = 0
temporary_term_b = ""

while index_b <= (initial_term_b.length - 1)

  if initial_term_b[index_b] == '(' || initial_term_b[index_b] == ')'  
  elsif initial_term_b[index_b] != 'x'
    temporary_term_b = temporary_term_b + initial_term_b[index_b]
  else
    break
  end
  index_b += 1
end

# verificar valor de b

term_b_string = ""
term_b = 0

if temporary_term_b.empty?
  term_b_string = 1
elsif temporary_term_b == '-'
  term_b_string = -1
else
  term_b_string = temporary_term_b
end

# remover parenteses de c

index_c = 0
temporary_term_c = ""

while index_c <= (initial_term_c.length - 1)

  if initial_term_c[index_c] == '(' || initial_term_c[index_c] == ')'  
  elsif initial_term_c[index_c] != 'x'
    temporary_term_c = temporary_term_c + initial_term_c[index_c]
  else
    break
  end
  index_c += 1
end

# passando os valores para inteiro

term_a = term_a_string.to_i
term_b = term_b_string.to_i
term_c = temporary_term_c.to_i

# ===========================================================

term_b_exp = term_b ** 2
first_mult = term_a * term_c
second_mult = first_mult * 4
delta = term_b_exp - second_mult

term_string_a = term_a.to_s
if term_a < 0
  term_string_a = term_string_a.insert(0, '(')
  term_string_a = term_string_a.insert(term_string_a.length,')')
end

term_string_b = term_b.to_s
if term_b < 0
  term_string_b = term_string_b.insert(0, '(')
  term_string_b = term_string_b.insert(term_string_b.length,')')
end

term_string_c = term_c.to_s
if term_c < 0
  term_string_c = term_string_c.insert(0, '(')
  term_string_c = term_string_c.insert(term_string_c.length,')')
end

first_string = first_mult.to_s
if first_mult < 0
  first_string = first_string.insert(0, '(')
  first_string = first_string.insert(first_string.length,')')
end

delta_text = <<DELTA
Δ = b² - 4 * a * c
Δ = #{term_string_b}² - 4 * #{term_string_a} * #{term_string_c}
Δ = #{term_b_exp} - 4 * #{first_string}
DELTA

(second_mult > 0) ? 
delta_text << "Δ = #{term_b_exp} - #{second_mult}" : 
delta_text << "Δ = #{term_b_exp} + #{second_mult * -1}"
delta_text << "\nΔ = #{delta}"


puts delta_text