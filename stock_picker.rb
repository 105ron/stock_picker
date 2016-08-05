def stock_picker stock_prices
  for buy in 0..stock_prices.length
    p stock_prices[buy]
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
