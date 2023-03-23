# implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. it should return a pair of days representing the best day to buy and the best day to sell. days start at 0.
# you need to buy before you can sell
# pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(prices)
  days = Array.new(2)
  highest_profit = 0
  prices.each_with_index do |buy, day1|
    prices[day1..-1].each_with_index do |sell, day2|
      profit = sell - buy
      if profit > highest_profit
        highest_profit = profit
        days = [day1, day2 + 1]
      end
    end
  end
  days
end



# p stock_picker([17,3,6,9,6,8,15,1,10])
# p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,10,8,6,1,15])

# [1,4]  for a profit of $15 - $3 == $12