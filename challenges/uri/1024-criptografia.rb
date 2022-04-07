=begin
  
  CRIPTOGRAFIA - URI 1024

  exibir mensagens criptografadas, passadas por três regras:

  1. somente letras (maiúsculas e minúsculas) devem ser deslocadas
     3 posições para a direita segundo a tabela ascii. ex.: 'a' -> 'd'
    
  2. a linha deverá ser invertida

  3. todo e qualquer caractere a partir da metade da linha em diante 
     deve ser deslocado 1 casa para a esquerda, segundo a tabela ascii,
     ex.: 'b' -> 'a'
  
=end

def to_ascii(char)
  char.ord
end

def to_char(char_code)
  char_code.chr
end

# first_step

def is_letter(char)
  char_code = to_ascii(char)
  if (char_code >= 65 && char_code <= 90) || (char_code >= 97 && char_code <= 122)
    return true
  else
    return false
  end
end

def replace_letters(text)
  new_text = ''
  new_char = ''
  char = ''
  index = 0

  while index <= (text.length - 1)
    char = text[index]
    if is_letter(char)
      new_char_code = to_ascii(char) + 3
      new_char = to_char(new_char_code)
      new_text = new_text + new_char
    else
      new_text = new_text + char
    end
    index += 1
  end
  new_text
end

# second step

def invert_line(text)
  text.reverse
end

# third step

def replace_character(text)
  new_text = ''
  new_char = ''
  char = ''
  index = 0
  half = text.length / 2
  new_text = text[half..]
  final_text = text[..half-1]

  while index <= (new_text.length - 1)
    char = new_text[index]
    new_char_code = to_ascii(char) - 1
    new_char = to_char(new_char_code)
    final_text = final_text + new_char
    index += 1
  end
  final_text
end

# main

def cryptography
  print 'Enter the text to be encrypted: '
  STDOUT.flush
  text = gets.chomp

  first_step = replace_letters(text)
  second_step = invert_line(first_step)
  third_step = replace_character(second_step)

  encrypted_text = third_step

  puts "The text: #{text} , becomes: #{encrypted_text} !"
end

cryptography()
