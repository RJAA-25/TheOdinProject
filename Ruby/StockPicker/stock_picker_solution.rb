def stock_picker(prices)
    ideal_pairs = []
    for i in 0...(prices.length - 1)  
        best_buy = prices[i]
        best_sell = prices[i + 1]
        optimal = best_sell - best_buy
        for j in (i + 2)...prices.length
            sell_now = prices[j]
            if  (sell_now - best_buy) > optimal
                optimal = sell_now - best_buy
                best_sell = sell_now
            end
        end
        ideal_pairs.push([best_buy,best_sell])
    end
    ideal_totals = ideal_pairs.map{ |pair| pair[1] - pair[0] }
    best_pair = ideal_pairs[ideal_totals.index(ideal_totals.max)]
    best_days = [prices.index(best_pair[0]), prices.index(best_pair[1])]
end

p stock_picker([17,3,6,9,15,8,6,1,10])