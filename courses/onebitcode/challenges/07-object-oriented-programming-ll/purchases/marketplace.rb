class Marketplace
  def initialize(product)
    @product = product
  end

  def purchase
    puts "Você comprou o produto #{@product.name} no valor de R$ #{@product.price}"
  end
end