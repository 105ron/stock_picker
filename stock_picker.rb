def stock_picker stock_prices
  max_profit = 0
  for buy in 0..stock_prices.length
    i = buy + 1
	for sell in i..stock_prices.length
	  profit = stock_prices[sell].to_i - stock_prices[buy].to_i
	  if profit > max_profit
		max_profit = profit
		trading_days = [buy, sell]
	  end
	end
  end
  puts "Buy on day #{trading_days[0]}, sell on day #{trading_days[1]} for a profit of $#{max_profit}"
  "[#{trading_days[0]},#{trading_days[1]}]"
end

puts "Enter your stock prices on each hypothetical day, seperated by commas(,):"
user_prices = gets.chomp.split(',').map { |price| price.to_i }
puts stock_picker(user_prices)


