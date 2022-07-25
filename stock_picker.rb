def stock_picker(prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0

    prices.each_with_index do |price, day|
        prices_two = prices[day..-1]
        prices_two.each_with_index do |price_two, day_two|
            current_profit = price_two - price
            if current_profit > max_profit
                max_profit = price_two - price
                buy_day = day
                sell_day = day_two + day
            end
        end
    end

    [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12