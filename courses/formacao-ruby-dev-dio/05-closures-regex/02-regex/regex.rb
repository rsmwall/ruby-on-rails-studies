# criar regex
# 1
/abcdef/

# 2
%r{abcdef}

# 3
Regexp.new('expressao')

# comparacao =~
/by/ =~ 'ruby'
'ruby' =~ /by/
puts 'ruby' =~ /rails/

# metodo match
phrase = 'Olá, como você vai?'

match_data = /como/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match

puts /\?/.match('Tudo bem?')