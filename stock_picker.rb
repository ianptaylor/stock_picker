a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [9, 8, 7, 6, 5, 4, 3, 2, 1]
c = [3, 4, 2, 6, 7, 4, 9, 8, 5]
d = [8, 6, 9, 2, 7, 4, 1, 5 ,1]
e = [10, 11, 2, 9, 4, 3, 5, 6]
f = [17, 3, 6, 9, 15, 8, 6, 1, 10]


def stock_picker(prices)
	profits = []
  prices.each do |price|
    profits.push(prices[prices.index(price)..-1].max - price)
  end
  buy_day = profits.index(profits.max)
  sell_day = prices.index(prices[buy_day..-1].max)
  puts "Buy on day #{buy_day} and sell on day #{sell_day}"
end


stock_picker(a)
stock_picker(b)
stock_picker(c)
stock_picker(d)
stock_picker(e)
stock_picker(f)
