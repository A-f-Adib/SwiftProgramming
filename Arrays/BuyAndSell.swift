func maxProfit(_ prices:[Int]) -> Int {
    var buyingPrice : Int = prices[0]

    var profit : Int = 0

    for i in 1..<prices.count {
        if prices[i] < buyingPrice {
            buyingPrice = prices[i]
        } 
        else {
            let currentProfit = prices[i] - buyingPrice
            profit = max(currentProfit, profit)
        }
    } 
    return profit
}