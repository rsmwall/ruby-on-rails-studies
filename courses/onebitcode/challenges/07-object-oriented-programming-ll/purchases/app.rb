require_relative 'product'
require_relative 'marketplace'

apple = Product.new
apple.name = 'Maça'
apple.price = '0,50'

market = Marketplace.new(apple)
market.purchase
