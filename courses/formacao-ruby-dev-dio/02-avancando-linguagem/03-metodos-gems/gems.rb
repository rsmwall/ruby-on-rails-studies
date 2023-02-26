# chamar gem
require 'os'

# metodo
def meu_so
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Mac"
  else
    "SO não identificado"
  end
end

puts "Meu pc é #{OS.bits} bits, possui #{OS.cpu_count} cores, e o SO é #{meu_so}"