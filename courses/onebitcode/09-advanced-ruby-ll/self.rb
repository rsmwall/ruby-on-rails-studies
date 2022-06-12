# class Foo
#   attr_accessor :teste
#   def bar
#     puts self
#   end
# end

# foo = Foo.new
# puts foo
# foo.bar

# exemplo dois

# class Foo
#   def self.bar
#     puts self
#   end
# end

# Foo.bar

# exemplo tres

class Pen
  attr_accessor :color
  def pen_color
    puts "This color is " + self.color
  end
end

pen = Pen.new
pen.color = 'blue'
pen.pen_color