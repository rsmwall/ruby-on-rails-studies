hello_proc = Proc.new do
  puts 'Hello world'
end

hello_proc.call

# outra forma

hello_proc = proc do
  puts 'hello world'
end

hello_proc.call