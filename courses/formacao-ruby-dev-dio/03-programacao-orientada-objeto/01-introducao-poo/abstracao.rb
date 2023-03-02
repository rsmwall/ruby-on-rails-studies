class Televisao
  def turn_on
    'Televisao ligada'
  end

  def shutdown
    'Televisao desligada'
  end
end

televisao = Televisao.new

puts televisao.shutdown