# frozen_string_literal: true

def stock_picker(prices)
  buy = 0
  sell = 0
  difference = 0

  prices.each do |price|
    for i in prices.index(price)..(prices.length - 1)
      if prices[i] - price > difference
        buy = price
        sell = prices[i]
        difference = sell - buy
      end
    end
  end

  p [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])